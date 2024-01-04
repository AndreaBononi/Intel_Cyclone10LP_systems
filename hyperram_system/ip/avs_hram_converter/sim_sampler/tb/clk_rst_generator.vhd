-- BRIEF DESCRIPTION: clock and active-low reset generator for testbenches
-- COMMENTS:
-- custom clock period
-- custom reset time
-- clock enable signal available

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;

entity clk_rst_generator is
generic	
(
	clock_period		: time	:= 10 ns;		-- clock period
	reset_interval	: time	:= 15 ns		-- initial time interval during which reset_n is set
);		
port 	
(
	reset_n	 			: out std_logic;
	clock 				: out std_logic;
  clock_x8      : out std_logic;
	clock_enable	: in	std_logic
);
end clk_rst_generator;

architecture behavior of clk_rst_generator is

	signal dummy_clk    : std_logic := '0';
  signal dummy_clk_x8 : std_logic := '0';
	
	begin
		
		-- clock generation process ---------------------------------------------------------------------------
		clock_gen: process
		begin
			dummy_clk <= not dummy_clk;
			wait for clock_period/2;
		end process clock_gen; --------------------------------------------------------------------------------

		clock <= dummy_clk and clock_enable;

    -- clock generation process ---------------------------------------------------------------------------
		clock_x8_gen: process
		begin
			dummy_clk_x8 <= not dummy_clk_x8;
			wait for clock_period/16;
		end process clock_x8_gen; -----------------------------------------------------------------------------

    clock_x8 <= dummy_clk_x8 and clock_enable;
		
		-- reset generation process ---------------------------------------------------------------------------
		reset_gen: process
		begin
			reset_n <= '0';
			wait for reset_interval;
			reset_n <= '1';
			wait;
		end process reset_gen; --------------------------------------------------------------------------------
		
end behavior;