-- BRIEF DESCRIPTION: comparation between two inputs (N bit)
-- "equal" is set if the two inputs are the same

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;

entity comparator_Nbit is
generic
(
	N : integer := 1
);
port
(
	din_0		: in		std_logic_vector((N-1) downto 0);
	din_1		: in		std_logic_vector((N-1) downto 0);
	equal 	: out 	std_logic
);
end comparator_Nbit;

architecture behavior of comparator_Nbit is

	-- SIGNALS --------------------------------------------------------------------
  signal bitwise_xnor	: std_logic_vector(N-1 downto 0);
  signal intra_and		: std_logic_vector(N downto 0);
	-------------------------------------------------------------------------------

	begin

    g1: for i in 0 to N-1 generate
			 bitwise_xnor(i) <= din_0(i) xnor din_1(i);
		end generate;

    intra_and(0) <= bitwise_xnor(0);

    g2: for j in 1 to N generate
			 intra_and(j) <= intra_and(j-1) and bitwise_xnor(j-1);
		end generate;

    equal <= intra_and(N);

end behavior;
