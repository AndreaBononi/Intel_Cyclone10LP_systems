-- BRIEF DESCRIPTION: flip flop type T (toggle)
-- the output toggles at each clock cycle

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;

entity t_flipflop is
	port
	(
		clk				: in 	std_logic;
		enable		: in 	std_logic;
		clear_n		: in 	std_logic;	-- synchronous clear, active low
		reset_n		: in	std_logic;	-- asynchronous reset, active low
		din				: in 	std_logic;
		dout			: out std_logic := '0'
	);
end t_flipflop;


architecture behavior of t_flipflop is

	signal dummy_out: std_logic;

	begin

		-- main process ------------------------------------------------------------------
		tff_process: process (clk, clear_n, reset_n, enable)
		begin
			if (reset_n = '0') then
				dummy_out <= '0';
			else
				if (rising_edge(clk)) then
					if (clear_n = '0') then
						dummy_out <= '0';
					elsif (enable = '1') then
						if (din = '0') then
							dummy_out <= dummy_out;
						elsif (din = '1') then
							dummy_out <= not dummy_out;
						end if;
					end if;
				end if;
			end if;
		end process tff_process; ----------------------------------------------------------

		dout <= dummy_out;

end behavior;
