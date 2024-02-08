-- BRIEF DESCRIPTION: clock and reset generator for testbenches

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;

entity clk_rst_generator is
generic	
(
	clock_period		: time	:= 100 ns;	-- clock period
	reset_interval	: time	:= 150 ns		-- initial time interval during which reset_n is set
);		
port 	
(
	clock 		: out std_logic;
  reset     : out std_logic;
  reset_n	 	: out std_logic
);
end clk_rst_generator;

architecture behavior of clk_rst_generator is

	signal dummy_clk: std_logic := '0';
  signal dummy_rst: std_logic := '1';

	begin

		-- clock generation process ---------------------------------------------------------------------------
		clockGen: process
		begin
			dummy_clk <= not dummy_clk;
			wait for clock_period/2;
		end process clockGen; ---------------------------------------------------------------------------------

		clock <= dummy_clk;

		-- reset generation process ---------------------------------------------------------------------------
		resetGen: process
		begin
			dummy_rst <= '1';
			wait for reset_interval;
			dummy_rst <= '0';
			wait;
		end process resetGen; ---------------------------------------------------------------------------------

    reset <= dummy_rst;
    reset_n <= not dummy_rst; 

end behavior;
