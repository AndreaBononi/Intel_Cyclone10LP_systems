-- BRIEF DESCRIPTION: voter for DDR to SDR converter
-- COMMENTS:
-- it implements a majority decision among 8 different 1-bit inputs
-- it evaluates the sum of all the input bits and verifies if it is greater than 4

library   ieee;
use       ieee.std_logic_1164.all;
use       ieee.numeric_std.all;

entity voter is
port	
(
  d1      : in  std_logic;
  d2      : in  std_logic;
  d3      : in  std_logic;
  d4      : in  std_logic;
  d5      : in  std_logic;
  d6      : in  std_logic;
  d7      : in  std_logic;
  d8      : in  std_logic;
  result  : out std_logic
);
end voter;

architecture behavior of voter is

  -- half adder -------------------------------------------------------------------------
  component halfadder is
  port	
  (
    a : in  std_logic;
    b : in  std_logic;
    s : out std_logic;
    c : out	std_logic
  );
  end component; ------------------------------------------------------------------------

  -- full adder -------------------------------------------------------------------------
  component fulladder is
  port	
  (
    a     : in  std_logic;
    b     : in  std_logic;
    cin   : in  std_logic;
    sum   : out std_logic;
    cout  : out	std_logic
  );
  end component; ------------------------------------------------------------------------

  -- signals ----------------------------------------------------------------------------
  signal fa00_c : std_logic;
  signal fa00_s : std_logic;
  signal fa01_c : std_logic;
  signal fa01_s : std_logic;
  signal ha02_c : std_logic;
  signal ha02_s : std_logic;
  signal faw0_c : std_logic;
  signal faw0_s : std_logic;
  signal faw1_c : std_logic;
  signal faw1_s : std_logic;
  signal haw1_c : std_logic;
  signal haw1_s : std_logic;
  signal haw2_c : std_logic;
  signal haw2_s : std_logic;
  ---------------------------------------------------------------------------------------

	begin

    fa00: fulladder
    port map
    (
      a     => d1,
      b     => d2,
      cin   => d3,
      sum   => fa00_s,
      cout  => fa00_c
    );

    fa01: fulladder
    port map
    (
      a     => d4,
      b     => d5,
      cin   => d6,
      sum   => fa01_s,
      cout  => fa01_c
    );

    ha02: halfadder
    port map
    (
      a => d7,
      b => d8,
      s => ha02_s,
      c => ha02_c
    );

    faw0: fulladder
    port map
    (
      a     => fa00_s,
      b     => fa01_s,
      cin   => ha02_s,
      sum   => faw0_s,
      cout  => faw0_c
    );

    faw1: fulladder
    port map
    (
      a     => fa00_c,
      b     => fa01_c,
      cin   => ha02_c,
      sum   => faw1_s,
      cout  => faw1_c
    );

    haw1: halfadder
    port map
    (
      a => faw0_c,
      b => faw1_s,
      s => haw1_s,
      c => haw1_c
    );

    haw2: halfadder
    port map
    (
      a => haw1_c,
      b => faw1_c,
      s => haw2_s,
      c => haw2_c
    );

    result <= ((faw0_s or haw1_s) and haw2_s) or haw2_c;

end behavior;
