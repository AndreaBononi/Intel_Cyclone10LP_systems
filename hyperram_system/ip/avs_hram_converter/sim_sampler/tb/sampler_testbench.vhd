-- BRIEF DESCRIPTION: testbench file for the sampler (DDR_to_SDR_converter)
-- COMMENTS:
-- driver (input driving) and monitor (output storage) are created locally
-- sequencer (input generation) and scoreboard (output verification) are created externally (using a Python script)
-- the driver is able to send the input DDR data (read from a file) to the DUT together with its strobe (edge-aligned)
-- strobe and DDR data are sent to the DUT with a configurable shift with respect to the rising edge of the clock

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;
use 			ieee.std_logic_unsigned.all;
use 			ieee.std_logic_textio.all;
library 	std;
use 			std.textio.all;

entity sampler_testbench is
end sampler_testbench;

architecture tb of sampler_testbench is

	-- constants ------------------------------------------------------------------------------------------------------
	constant clock_period		: time	:= 20 ns;
	constant clock_shift    : time	:= 3 ns;
  constant reset_interval : time  := 40 ns;
	-------------------------------------------------------------------------------------------------------------------

	-- SIGNALS --------------------------------------------------------------------------------------------------------
	-- clock and reset signals
	signal clk		          : std_logic;
  signal clk_x8	          : std_logic;
	signal rst_n			      : std_logic;	
	-- simulation signals 
	signal start_sim        : std_logic;
	signal stop_sim			    : std_logic;
	signal clk_enable		    : std_logic;
  -- DUT signals
  signal sampler_rwds_in  : std_logic; 
  signal sampler_rwds_out : std_logic;
  signal sampler_ddr_in	  : std_logic_vector(7 downto 0);
  signal sampler_sdr_out  : std_logic_vector(15 downto 0);
	-------------------------------------------------------------------------------------------------------------------

	-- COMPONENT: sampler (DUT) ---------------------------------------------------------------------------------------
	component DDR_to_SDR_converter is
	port
	(
		-- clock and reset
    clk_x8            : in 	std_logic;
    rst_n 		        : in 	std_logic;
    -- IO signals
    enable		        : in 	std_logic;
    rwds_in           : in  std_logic;
    rwds_out          : out std_logic;
    DDR_in		        : in 	std_logic_vector(7 downto 0);
    SDR_out		        : out std_logic_vector(15 downto 0)
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
    clock_x8      : out std_logic;
    clock_enable	: in	std_logic
	);
	end component; ---------------------------------------------------------------------------------------------------

	-- COMPONENT: monitor --------------------------------------------------------------------------------------------
	component sampler_monitor is
	port
	(
		sampler_sdr_out		: in		std_logic_vector(15 downto 0);
    sampler_rwds_out	: in		std_logic;
    start_sim					: in		std_logic;
    stop_sim					: in		std_logic
	);
	end component; ---------------------------------------------------------------------------------------------------

	-- COMPONENT: driver ---------------------------------------------------------------------------------------------
	component sampler_driver is
	generic
	(
		clock_shift   : time := 0 ns;
	  clock_period  : time := 10 ns
	);
	port
	(
		clk							  : in	std_logic;
    rst_n						  : in  std_logic;
    start_sim				  :	out	std_logic := '0';
    stop_sim				  : out	std_logic := '0';
    sampler_ddr_in    : out std_logic_vector(7 downto 0);
    sampler_rwds_in   : out std_logic := '0'
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
      clock_x8      => clk_x8,
			clock_enable 	=> clk_enable
		); -------------------------------------------------------------------------------------------------------------

		-- DUT instance ------------------------------------------------------------------------------------------------
		DUT: DDR_to_SDR_converter
		port map
		(
      clk_x8    => clk_x8,
      rst_n 	  => rst_n,
      enable	  => '1',
      rwds_in   => sampler_rwds_in,
      rwds_out  => sampler_rwds_out,
      DDR_in	  => sampler_ddr_in,
      SDR_out	  => sampler_sdr_out
		); -------------------------------------------------------------------------------------------------------------

		-- monitor instance --------------------------------------------------------------------------------------------
		monitor: sampler_monitor
		port map
		(
			sampler_sdr_out		=> sampler_sdr_out,
      sampler_rwds_out	=> sampler_rwds_out,
      start_sim					=> start_sim,
      stop_sim					=> stop_sim
		); -------------------------------------------------------------------------------------------------------------

		-- driver instance ---------------------------------------------------------------------------------------------
		driver: sampler_driver
		generic map
		(
			clock_shift   => clock_shift,
	    clock_period  => clock_period
		)
		port map
		(
			clk							  => clk,
      rst_n						  => rst_n,
      start_sim				  => start_sim,
      stop_sim				  => stop_sim,
      sampler_ddr_in    => sampler_ddr_in,
      sampler_rwds_in   => sampler_rwds_in
		); -------------------------------------------------------------------------------------------------------------

end tb;
