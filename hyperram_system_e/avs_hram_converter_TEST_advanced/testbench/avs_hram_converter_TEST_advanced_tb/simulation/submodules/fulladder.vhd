-- BRIEF DESCRIPTION: full adder (combination of 2 half adders)

library   ieee;
use       ieee.std_logic_1164.all;
use       ieee.numeric_std.all;

entity fulladder is
port	
(
  a     : in  std_logic;
  b     : in  std_logic;
  cin   : in  std_logic;
  sum   : out std_logic;
  cout  : out	std_logic
);
end fulladder;

architecture behavior of fulladder is

  -- COMPONENT: half adder --------------------------------------------------
  component halfadder is
  port	
  (
    a : in  std_logic;
    b : in  std_logic;
    s : out std_logic;
    c : out	std_logic
  );
  end component; ------------------------------------------------------------

    -- signals --------------------------------------------------------------
	signal ha1_sum  : std_logic;
  signal ha1_cout : std_logic;
  signal ha2_cout : std_logic;
  ---------------------------------------------------------------------------

	begin
    
		ha1_inst: halfadder 
    port map 
    (
      a => a, 
      b => b, 
      s => ha1_sum, 
      c => ha1_cout
    );

    ha2_inst: halfadder 
    port map
    (
      a => ha1_sum, 
      b => cin, 
      s => sum, 
      c => ha2_cout
    );

    cout <= ha1_cout or ha2_cout;

end behavior;
