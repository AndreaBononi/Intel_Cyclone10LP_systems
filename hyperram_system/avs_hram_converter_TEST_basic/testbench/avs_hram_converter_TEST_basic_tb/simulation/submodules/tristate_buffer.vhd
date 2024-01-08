-- BRIEF DESCRIPTION: non-inverting tristate buffer

library   ieee;
use       ieee.std_logic_1164.all;
use       ieee.numeric_std.all;

entity tristate_buffer is
generic
(
	N : integer := 8
);
port
(
	enable		: in 	std_logic;
	din   		: in 	std_logic_vector(N-1 downto 0);
	dout  		: out std_logic_vector(N-1 downto 0)
);
end tristate_buffer;

architecture behavior of tristate_buffer is

	begin

		dout <= din when enable = '1' else (others => 'Z');

end behavior;
