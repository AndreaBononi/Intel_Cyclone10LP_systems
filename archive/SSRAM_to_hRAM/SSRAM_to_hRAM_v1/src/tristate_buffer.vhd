-- tristate_buffer.vhd ------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- non-inverting tristate buffer

-----------------------------------------------------------------------------

entity tristate_buffer is
	generic
	(
		N : integer := 8
	);
	port
	(
		output_enable		: in 	std_logic;
		buffer_in   		: in 	std_logic_vector(N-1 downto 0);
		buffer_out  		: out std_logic_vector(N-1 downto 0)
	);
end tristate_buffer;

-----------------------------------------------------------------------------

architecture behavior of tristate_buffer is

	begin

		buffer_out <= buffer_in when output_enable = '1' else (others => 'Z');

end behavior;

-----------------------------------------------------------------------------
