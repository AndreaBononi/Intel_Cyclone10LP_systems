-- AvalonMM_to_SSRAM_testbench.vhd -----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
library std;
use std.textio.all;

-- testbench file for Avalon_to_SSRAM
-- only the driver (input application) and the monitor (output storage) are implemented in this file
-- the sequencer (input generation) and the scoreboard (output verification) are implemented outside the VHDL testbench
-- an external memory is employed to provide a load to the DUT
--
-- the driver can read an input file containing the commands (operations to be executed) and send them to the DUT
-- however, the draver cannot start to send the commands immediately
-- at first, the DUT automatically initialize the configuration registers (config0 and config1) with their default values
-- during the initialization, the DUT cannot execute any operation ("avs_s0_waitrequest" = 1, "preliminary_check" = 1, "init" = 1)
-- when the initialization is terminated ("avs_s0_waitrequest" = 0), we want to test its effectiveness before proceeding to send the commands
-- this test cannot be performed sending special commands to the DUT, since we can only read/write its internal virtual configuration register
-- indeed, this test has to be performed directly on the external memory and it is implemented in this file (called main testbench from now on)
--
-- at first, the main testbench set "preliminary_check" to stop the driver from sending new commands
-- when the initialization is terminated, "avs_s0_waitrequest" is reset to zero by the DUT
-- the driver detects "avs_s0_waitrequest" low, therefore it notify the end of the initialization by resetting "init" to zero
-- the main testbench detects "init" low, therefore it reads the configuration registers of the external memory (without passing through the DUT)
-- after a certain delay the external memory provides the result and sets "ssram_validout"
-- the DUT detects "ssram_validout" high and sets "ssram_busy" in order to propagates the read value to the Avalon side
-- the read value is detected by the monitor and the result is stored in the same file of all the other reading results
-- after reading the content of the configuration registers, the main testbench reset "preliminary_check" to zero
-- the driver detects "preliminary_check" low and starts sending new commands to the DUT
--
-- after the initialization verification, the driver commands a set of write/read operations
-- the commanded operations can be related to the memory space or to the configuration registers
-- it is possible that some operations require to enter/exit the dpd mode
--
-- at the end, it may be useful to verify again the value of config0 (config1 cannot be modified) without passing through the DUT
-- the final reading of config0 is implemented in this file and the result is is stored in the same file of all the other reading results

----------------------------------------------------------------------------------------------------------------------

entity AvalonMM_to_SSRAM_testbench is
end AvalonMM_to_SSRAM_testbench;

----------------------------------------------------------------------------------------------------------------------

architecture behavior of AvalonMM_to_SSRAM_testbench is

	-- outout file -----------------------------------------------------------------------------------------------------
	file output_file: text;

	-- constants -------------------------------------------------------------------------------------------------------
	constant clock_period										: time := 10 ns;
	constant reset_time											: time := 15 ns;
	constant ssram_valid_time								: time := 25 ns;
	constant burst_lenght										: std_logic_vector(1 downto 0) := "11";
	constant hybrid_burst_enable						: std_logic := '1';
	constant initial_latency								: std_logic_vector(3 downto 0) := "1111";
	constant drive_strength									: std_logic_vector(2 downto 0) := "000";
	constant distributed_refresh_interval		: std_logic_vector(1 downto 0) := "10";
	constant config0_addr										: std_logic_vector(31 downto 0) := "00000000000000000000100000000000";
	constant config1_addr										: std_logic_vector(31 downto 0) := "00000000000000000000100000000001";

	-- clock and reset signals -----------------------------------------------------------------------------------------
	signal clk		          			: std_logic;
	signal rst_n			        		: std_logic;

	-- DUT-SSRAM signals -----------------------------------------------------------------------------------------------
	signal avs_s0_address     		: std_logic_vector(31 downto 0);
	signal ssram_address_space		: std_logic;
	signal avs_s0_read        		: std_logic;
	signal avs_s0_write       		: std_logic;
	signal avs_s0_writedata   		: std_logic_vector(15 downto 0);
	signal avs_s0_readdata    		: std_logic_vector(15 downto 0);
	signal avs_s0_readdatavalid		: std_logic;
	signal avs_s0_waitrequest  		: std_logic;
	signal ssram_out             	: std_logic_vector(15 downto 0);
	signal ssram_in             	: std_logic_vector(15 downto 0);
	signal ssram_address         	: std_logic_vector(31 downto 0);
	signal ssram_OE								: std_logic;
	signal ssram_WE								: std_logic;
	signal ssram_validout					: std_logic;
	signal ssram_busy							: std_logic;
	signal ssram_clear_n					: std_logic;

	-- simulation signals ---------------------------------------------------------------------------------------------
	signal start_sim		        			: std_logic;
	signal stop_sim		        				: std_logic := '0';
	signal driver_stop        				: std_logic;
	signal init			          				: std_logic;
	signal preliminary_check					: std_logic := '1';
	signal force_read									: std_logic := '0';
	signal force_config_space					: std_logic := '0';
	signal controlled_ssram_OE				: std_logic;
	signal controlled_ssram_spacing		: std_logic;
	signal controlled_ssram_address		: std_logic_vector(31 downto 0);
	signal custom_address							: std_logic_vector(31 downto 0);

	-- DUT ------------------------------------------------------------------------------------------------------------
	component AvalonMM_to_SSRAM is
	port
	(
		-- AvalonMM signals
		avs_s0_address     		: in    	std_logic_vector(31 downto 0);
		avs_s0_read        		: in    	std_logic;
		avs_s0_write       		: in    	std_logic;
		avs_s0_writedata   		: in    	std_logic_vector(15 downto 0);
		avs_s0_readdata    		: out   	std_logic_vector(15 downto 0);
		avs_s0_readdatavalid	: out   	std_logic;
		avs_s0_waitrequest  	: out   	std_logic;
		-- SSRAM signals
		ssram_out             : in		std_logic_vector(15 downto 0);
		ssram_in             	: out		std_logic_vector(15 downto 0);
		ssram_address         : out		std_logic_vector(31 downto 0);
		ssram_address_space		: out 	std_logic;
		ssram_OE							: out		std_logic;
		ssram_WE							: out		std_logic;
		ssram_validout				: in		std_logic;
		ssram_busy						: in		std_logic;
		ssram_clear_n					: out		std_logic;
		-- clock and reset
		clk		          			: in    	std_logic;
		rst_n			        		: in    	std_logic
	);
	end component;

	-- SSRAM (external memory) ----------------------------------------------------------------------------------------
	component ssram32 is
	generic
	(
		N 								: integer := 32;
		valid_time				: time := 5 ns;
		config0_addr			: std_logic_vector(31 downto 0) := "00000000000000000000100000000000";
		config1_addr			: std_logic_vector(31 downto 0) := "00000000000000000000100000000001"
	);
	port
	(
		ssram32_clk							: in 	std_logic;
		ssram32_clear_n					: in 	std_logic;
		ssram32_OE							: in 	std_logic;
		ssram32_WE							: in 	std_logic;
		ssram32_CS							: in 	std_logic;
		ssram32_address_space		: in 	std_logic;
		ssram32_address					: in 	std_logic_vector(31 downto 0);
		ssram32_in							: in 	std_logic_vector(N-1 downto 0);
		ssram32_out							: out std_logic_vector(N-1 downto 0);
		ssram32_validout				: out std_logic;
		ssram32_busy						: out std_logic
	);
	end component;

	-- clock and reset generator --------------------------------------------------------------------------------------
	component clk_rst_generator is
	generic
	(
		clockperiod	: time	:= 10 ns;			-- clock period
		resetStop		: time	:= 15 ns			-- initial time interval during which the reset signal is set
	);
	port
	(
		clk 				: out std_logic;
		rstN	 			: out std_logic;
		start_sim		: in 	std_logic;
		stop_sim		: in	std_logic
	);
	end component;

	-- monitor ------------------------------------------------------------------------------------------------------
	component AvalonMM_to_SSRAM_monitor is
	port
	(
		clk											: in		std_logic;
		rst_n										: in  	std_logic;
		avs_s0_readdatavalid		: in		std_logic;
		avs_s0_readdata	 				: in 		std_logic_vector(15 downto 0);
		start_sim								: in		std_logic;
		stop_sim								: in		std_logic
	);
	end component;

	-- driver --------------------------------------------------------------------------------------------------------
	component AvalonMM_to_SSRAM_driver is
	port
	(
		clk										: in		std_logic;
		rst_n									: in  	std_logic;
		avs_s0_waitrequest 		: in		std_logic;
		avs_s0_readdatavalid	: in		std_logic;
		preliminary_check			: in		std_logic;
		avs_s0_readdata	 			: in 		std_logic_vector(15 downto 0);
		avs_s0_address				: out		std_logic_vector(31 downto 0);
		avs_s0_read       		: out 	std_logic;
		avs_s0_write      		: out 	std_logic;
		avs_s0_writedata  		: out 	std_logic_vector(15 downto 0);
		start_sim							:	out		std_logic := '0';
		driver_stop						: out		std_logic := '0';
		init									: out		std_logic := '1'
	);
	end component;

	-- multiplexer 2 inputs -----------------------------------------------------------------------------------------
	component mux_2to1 is
		generic
		(
			N : integer := 1
		);
		port
		(
			mux_in_0		: in		std_logic_vector((N-1) downto 0);
			mux_in_1		: in		std_logic_vector((N-1) downto 0);
			sel					: in 		std_logic;
			out_mux			: out 	std_logic_vector((N-1) downto 0)
		);
	end component;

	begin
		-- clock and reset generator instance --------------------------------------------------------------------------
		clock_reset: clk_rst_generator
		generic map
		(
			clock_period,
			reset_time
		)
		port map
		(
			clk,
			rst_n,
			'1',
			stop_sim
		);

		-- DUT instance ------------------------------------------------------------------------------------------------
		DUT: AvalonMM_to_SSRAM
		generic map
		(
			burst_lenght,
			hybrid_burst_enable,
			initial_latency,
			drive_strength,
			distributed_refresh_interval
		)
		port map
		(
			avs_s0_address,
			avs_s0_read,
			avs_s0_write,
			avs_s0_writedata,
			avs_s0_readdata,
			avs_s0_readdatavalid,
			avs_s0_waitrequest,
			ssram_out,
			ssram_in,
			ssram_address,
			ssram_address_space,
			ssram_OE,
			ssram_WE,
			ssram_validout,
			ssram_busy,
			ssram_clear_n,
			clk,
			rst_n
		);

		verification_mux: mux_2to1 generic map (32) port map (ssram_address, custom_address, force_config_space, controlled_ssram_address);

		controlled_ssram_OE <= ssram_OE or force_read;
		controlled_ssram_spacing <= ssram_address_space or force_config_space;

		-- SSRAM instance ----------------------------------------------------------------------------------------------
		mem: ssram32
		generic map
		(
			16,
			ssram_valid_time,
			config0_addr,
			config1_addr
		)
		port map
		(
			clk,
			rst_n,
			controlled_ssram_OE,
			ssram_WE,
			'1',
			controlled_ssram_spacing,
			controlled_ssram_address,
			ssram_in,
			ssram_out,
			ssram_validout,
			ssram_busy
		);

		-- driver instance ---------------------------------------------------------------------------------------------
		driver: AvalonMM_to_SSRAM_driver
		port map
		(
			clk,
			rst_n,
			avs_s0_waitrequest,
			avs_s0_readdatavalid,
			preliminary_check,
			avs_s0_readdata,
			avs_s0_address,
			avs_s0_read,
			avs_s0_write,
			avs_s0_writedata,
			start_sim,
			driver_stop,
			init
		);

		-- monitor instance --------------------------------------------------------------------------------------------
		monitor: AvalonMM_to_SSRAM_monitor
		port map
		(
			clk,
			rst_n,
			avs_s0_readdatavalid,
			avs_s0_readdata,
			start_sim,
			stop_sim
		);

		-- initial and final readings of the configuration registers ---------------------------------------------------
		config_regs_init_verification		: process (clk, init, preliminary_check, ssram_busy, avs_s0_readdatavalid, driver_stop)
		variable count									: std_logic := '0';
		variable final_read							: std_logic := '0';
		variable busy_delay							: std_logic := '0';
		begin
			if (rising_edge(clk)) then
				if (init = '0' and preliminary_check = '1' and ssram_busy = '0' and busy_delay = '0') then
					-- initial configuration registers reading (first config0, then config1)
					force_read <= '1';
					force_config_space <= '1';
					if (count = '0') then
						custom_address <= config0_addr;
						count := '1';
						busy_delay := '1';
					else
						custom_address <= config1_addr;
						count := '0';
						preliminary_check <= '0';
						busy_delay := '1';
					end if;
				elsif (driver_stop = '1' and final_read = '0') then
					-- final configuration register reading (config0 only)
					force_read <= '1';
					force_config_space <= '1';
					custom_address <= config0_addr;
					final_read := '1';
				elsif (final_read = '1' and avs_s0_readdatavalid = '1') then
					-- the final configuration register reading has already been commanded (final_read = '1')
					-- we just have to wait for its completion before terminating the simulation
					-- when avs_s0_readdatavalid goes high, the operation is completed
					stop_sim <= '1';
				else
					force_read <= '0';
					force_config_space <= '0';
					busy_delay := '0';
				end if;
			end if;
		end process config_regs_init_verification;

end behavior;

----------------------------------------------------------------------------------------------------------------------
