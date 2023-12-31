-- BRIEF DESCRIPTION: set-reset flipflop
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sr_flipflop is
port
(
	clk				: in std_logic;
	set				: in std_logic;
	clear_n		: in std_logic;
	rst_n			: in std_logic;
	dout			: out std_logic
);
end sr_flipflop;

architecture behavior of sr_flipflop is

	begin

		-- main process ---------------------------------------------------------------
		sr_process: process (clk, clear_n, set, rst_n)
		begin
			if (rst_n = '0') then
				dout <= '0';
			else
				if (rising_edge(clk)) then
					if (clear_n = '0') then
						dout <= '0';
					elsif (set = '1') then
						dout <= '1';
	        end if;
				end if;
			end if;
		end process sr_process; -------------------------------------------------------

end behavior;
