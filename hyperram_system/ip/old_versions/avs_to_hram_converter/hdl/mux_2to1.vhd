-- BRIEF DESCRIPTION: multiplexer 2-inputs 1-output N-bit

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;

entity mux_2to1 is
generic
(
	N : integer := 1
);
port
(
	din_0		: in	std_logic_vector((N-1) downto 0);
	din_1		: in	std_logic_vector((N-1) downto 0);
	sel			: in 	std_logic;
	dout		: out std_logic_vector((N-1) downto 0)
);
end mux_2to1;

architecture behavior of mux_2to1 is

	begin

		-- main process --------------------------------------------------------------
		mux_output_evaluation: process (sel, din_0, din_1)
		begin
			case sel is
				when '0' =>
					dout <= din_0;
				when others =>
					dout <= din_1;
			end case;
		end process mux_output_evaluation; -------------------------------------------
		
end behavior;

