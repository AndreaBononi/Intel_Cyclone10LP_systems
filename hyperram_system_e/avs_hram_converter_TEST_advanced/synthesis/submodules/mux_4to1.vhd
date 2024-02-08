-- BRIEF DESCRIPTION: multiplexer 4-inputs 1-output N-bit

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;

entity mux_4to1 is
generic
(
	N : integer := 1
);
port
(
	din_00		: in		std_logic_vector((N-1) downto 0);
	din_01		: in		std_logic_vector((N-1) downto 0);
	din_10		: in		std_logic_vector((N-1) downto 0);
	din_11		: in		std_logic_vector((N-1) downto 0);
	sel				: in 		std_logic_vector(1 downto 0);
	dout			: out 	std_logic_vector((N-1) downto 0)
);
end mux_4to1;

architecture behavior of mux_4to1 is

	begin

		-- main process ------------------------------------------------------------------
		output_evaluation: process (sel, din_00, din_01, din_10, din_11)
		begin
			case sel is
				when "00" =>
					dout <= din_00;
				when "01" =>
					dout <= din_01;
				when "10" =>
					dout <= din_10;
				when others =>
					dout <= din_11;
			end case;
		end process output_evaluation; ---------------------------------------------------

end behavior;
