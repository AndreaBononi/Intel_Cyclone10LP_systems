-- BRIEF DESCRIPTION: testbench file for the synchronizer
-- COMMENTS:
-- driver (input driving) and monitor (output storage) are created locally
-- sequencer (input generation) and scoreboard (output verification) are created externally (using a Python script)
-- the driver is able to send the input data (read from a file) to the DUT together with their strobe (center-aligned)
-- the strobe is sent to the DUT with a configurable shift with respect to the rising edge of the clock

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;
use 			ieee.std_logic_unsigned.all;
use 			ieee.std_logic_textio.all;

library 	std;
use 			std.textio.all;

entity synchronizer_testbench is
end synchronizer_testbench;

architecture tb of synchronizer_testbench is

	-- constants ------------------------------------------------------------------------------------------------------
	constant burstcount 					: std_logic_vector(10 downto 0) := "00000001000";
	constant clock_period					: time	:= 10 ns;
	constant reset_interval				: time	:= 15 ns;
	constant strobe_shift					: time	:= 3 ns;
	-------------------------------------------------------------------------------------------------------------------

	-- SIGNALS --------------------------------------------------------------------------------------------------------
	-- clock and reset signals
	signal clk		          			: std_logic;
	signal rst_n			        		: std_logic;
	-- DUT signals 
	signal synch_enable           :	std_logic;
	signal synch_clear_n          :	std_logic;
	signal synch_strobe           :	std_logic;
	signal synch_din              :	std_logic_vector(15 downto 0);
	signal synch_dout             :	std_logic_vector(15 downto 0);
	signal synch_validout         :	std_logic;
	signal synch_busy             :	std_logic;
	signal counter_out						: std_logic_vector(10 downto 0);
	-- simulation signals 
	signal start_sim							: std_logic;
	signal stop_sim								: std_logic;
	signal clk_enable							: std_logic;
	-------------------------------------------------------------------------------------------------------------------

	-- COMPONENT: synchronizer (DUT) ----------------------------------------------------------------------------------
	component synchronizer is
	port
	(
		clk                       : in    std_logic;
		rst_n											: in    std_logic;
		synch_enable              : in		std_logic;
		synch_clear_n             : in		std_logic;
		synch_strobe              : in		std_logic;
		synch_validout            : out		std_logic;
		synch_busy                : out		std_logic;
		synch_din                 : in		std_logic_vector(15 downto 0);
		synch_dout                : out		std_logic_vector(15 downto 0);
		burstcount                : in		std_logic_vector(10 downto 0);
		counter_enable						: in    std_logic;
		counter_clear_n						: in    std_logic;
		counter_up_downN					: in    std_logic;
		counter_out								: out		std_logic_vector(10 downto 0)
	);
	end component; ----------------------------------------------------------------------------------------------------

	-- COMPONENT: clock and reset generator ---------------------------------------------------------------------------
	component clk_rst_generator is
	generic	
	(
		clock_period    : time	:= 10 ns;		-- clock period
		reset_interval  : time	:= 15 ns		-- initial time interval during which reset_n is set
	);		
	port 	
	(
		reset_n	 			: out std_logic;
		clock 				: out std_logic;
		clock_enable	: in	std_logic
	);
	end component; ---------------------------------------------------------------------------------------------------

	-- COMPONENT: monitor --------------------------------------------------------------------------------------------
	component synchronizer_monitor is
	port
	(
		clk								: in		std_logic;
		synch_dout				: in		std_logic_vector(15 downto 0);
		synch_validout		: in		std_logic;
		start_sim					: in		std_logic;
		stop_sim					: in		std_logic
	);
	end component; ---------------------------------------------------------------------------------------------------

	-- COMPONENT: driver ---------------------------------------------------------------------------------------------
	component synchronizer_driver is
	generic
	(
		strobe_shift : time := 0 ns;
		clock_period : time := 10 ns
	);
	port
	(
		clk							: in		std_logic;
		rst_n						: in  	std_logic;
		synch_enable    : out		std_logic := '1';
		synch_strobe    : out		std_logic := '0';
		synch_din       : out		std_logic_vector(15 downto 0);
		synch_busy      : in		std_logic;
		start_sim				:	out		std_logic := '0';
		stop_sim				: out		std_logic := '0'
	);
	end component; ---------------------------------------------------------------------------------------------------

	begin

		clk_enable <= start_sim and not stop_sim;

		-- clock and reset generator instance --------------------------------------------------------------------------
		clk_rst_gen: clk_rst_generator
		generic map
		(
			clock_period 		=> clock_period,
			reset_interval 	=> reset_interval
		)
		port map
		(
			reset_n 			=> rst_n,
			clock 				=> clk,
			clock_enable 	=> clk_enable
		); -------------------------------------------------------------------------------------------------------------

		-- DUT instance ------------------------------------------------------------------------------------------------
		DUT: synchronizer
		port map
		(
			clk                 => clk,
			rst_n								=> rst_n,
			synch_enable        => synch_enable,
			synch_clear_n       => synch_clear_n,
			synch_strobe        => synch_strobe,
			synch_validout      => synch_validout,
			synch_busy          => synch_busy,
			synch_din           => synch_din,
			synch_dout          => synch_dout,
			burstcount          => burstcount,
			counter_enable			=> '0',
			counter_clear_n			=> '1',
			counter_up_downN		=> '1',
			counter_out					=> counter_out
		); -------------------------------------------------------------------------------------------------------------

		-- monitor instance --------------------------------------------------------------------------------------------
		monitor: synchronizer_monitor
		port map
		(
			clk 						=> clk,
			synch_dout			=> synch_dout,
			synch_validout 	=> synch_validout,
			start_sim 			=> start_sim,
			stop_sim 				=> stop_sim
		); -------------------------------------------------------------------------------------------------------------

		-- driver instance ---------------------------------------------------------------------------------------------
		driver: synchronizer_driver
		generic map
		(
			strobe_shift => strobe_shift,
			clock_period => clock_period
		)
		port map
		(
			clk 					=> clk,
			rst_n 				=> rst_n,
			synch_enable 	=> synch_enable,
			synch_strobe 	=> synch_strobe,
			synch_din 		=> synch_din,
			synch_busy 		=> synch_busy,
			start_sim 		=> start_sim,
			stop_sim 			=> stop_sim
		); -------------------------------------------------------------------------------------------------------------

end tb;
