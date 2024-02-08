-- BRIEF DESCRIPTION: N-bit register

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;

entity reg is
generic
(
	N : integer := 8
);
port
(
	clk				: in 	std_logic;
	enable		: in 	std_logic;
	clear_n		: in 	std_logic;	-- synchronous clear, active low
	reset_n		:	in	std_logic;	-- asynchronous clear, active low
	din				: in 	std_logic_vector(N-1 downto 0);
	dout			: out std_logic_vector(N-1 downto 0) := (others => '0')
);
end reg;

architecture behavior of reg is

	begin

		-- main process -----------------------------------------------------------
		reg_process: process (clk, clear_n, reset_n, enable, din)
		begin
			if (reset_n = '0') then
				dout <= (others => '0');
			else
				if (rising_edge(clk)) then
					if (clear_n = '0') then
						dout <= (others => '0');
					elsif (enable = '1') then
						dout <= din;
					end if;
				end if;
			end if;
		end process reg_process; --------------------------------------------------

end behavior;
