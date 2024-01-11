-- BRIEF DESCRIPTION: half adder

library   ieee;
use       ieee.std_logic_1164.all;
use       ieee.numeric_std.all;

entity halfadder is
port	
(
  a : in  std_logic;
  b : in  std_logic;
  s : out std_logic;
  c : out	std_logic
);
end halfadder;

architecture behavior of halfadder is

	begin

    s <= a XOR b;
    c <= a AND b;

end behavior;
