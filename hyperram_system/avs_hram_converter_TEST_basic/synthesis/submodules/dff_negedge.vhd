-- BRIEF DESCRIPTION: flipflop type D

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;

entity dff_negedge is
port
(
	clk				: in 	std_logic;
	enable		: in 	std_logic;
	clear_n		: in 	std_logic;	-- synchronous clear, active low
	reset_n		: in	std_logic;	-- asynchronous reset, active low
	din				: in 	std_logic;
	dout			: out std_logic
);
end dff_negedge;

architecture behavior of dff_negedge is

	begin

		-- main process --------------------------------------------------
		dff_process: process (clk, clear_n, reset_n, enable)
		begin
			if (reset_n = '0') then
				dout <= '0';
			else
				if (falling_edge(clk)) then
					if (clear_n = '0') then
						dout <= '0';
					elsif (enable = '1') then
						dout <= din;
					end if;
				end if;
			end if;
		end process dff_process; -----------------------------------------

end behavior;
