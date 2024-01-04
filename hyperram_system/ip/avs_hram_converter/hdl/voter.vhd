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
  clk       : in  std_logic;
  clear_n   : in  std_logic;
  enable    : in  std_logic;
  d1        : in  std_logic;
  d2        : in  std_logic;
  d3        : in  std_logic;
  d4        : in  std_logic;
  d5        : in  std_logic;
  d6        : in  std_logic;
  d7        : in  std_logic;
  d8        : in  std_logic;
  gt4       : out std_logic;
  eq4       : out std_logic
);
end voter;

architecture behavior of voter is

  -- COMPONENT: half adder --------------------------------------------------------------
  component halfadder is
  port	
  (
    a : in  std_logic;
    b : in  std_logic;
    s : out std_logic;
    c : out	std_logic
  );
  end component; ------------------------------------------------------------------------

  -- COMPONENT: full adder --------------------------------------------------------------
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

  -- COMPONENT: register ----------------------------------------------------------------
  component reg is
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
  end component; ------------------------------------------------------------------------

  -- SIGNALS ----------------------------------------------------------------------------
  signal fa00_c       : std_logic;
  signal fa00_s       : std_logic;
  signal fa01_c       : std_logic;
  signal fa01_s       : std_logic;
  signal ha02_c       : std_logic;
  signal ha02_s       : std_logic;
  signal faw0_c       : std_logic;
  signal faw0_s       : std_logic;
  signal faw1_c       : std_logic;
  signal faw1_s       : std_logic;
  signal haw1_c       : std_logic;
  signal haw1_s       : std_logic;
  signal haw2_c       : std_logic;
  signal haw2_s       : std_logic;
  signal pipereg_in   : std_logic_vector(3 downto 0);
  signal pipereg_out  : std_logic_vector(3 downto 0);
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

    pipereg_in(3) <= faw1_c;
    pipereg_in(2) <= faw1_s;
    pipereg_in(1) <= faw0_c;
    pipereg_in(0) <= faw0_s;

    pipereg: reg
    generic map
    (
      N => 4
    )
    port map
    (
      clk				=> clk,
      enable		=> enable,
      clear_n		=> clear_n,
      reset_n	  => '1',
      din				=> pipereg_in,
      dout			=> pipereg_out
    );

    haw1: halfadder
    port map
    (
      a => pipereg_out(1),
      b => pipereg_out(2),
      s => haw1_s,
      c => haw1_c
    );

    haw2: halfadder
    port map
    (
      a => haw1_c,
      b => pipereg_out(3),
      s => haw2_s,
      c => haw2_c
    );

    gt4 <= ((pipereg_out(0) or haw1_s) and haw2_s) or haw2_c;
    eq4 <= (not pipereg_out(0)) and (not haw1_s) and haw2_s and (not haw2_c);

end behavior;
