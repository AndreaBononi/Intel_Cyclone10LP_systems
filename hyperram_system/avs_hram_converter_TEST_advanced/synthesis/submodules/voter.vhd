-- BRIEF DESCRIPTION: voter for DDR to SDR converter
-- COMMENTS:
-- it implements a majority decision among 8 different 1-bit inputs
-- it evaluates the sum of all the input bits and verifies if it is greater than 4
-- several pipeline layers are employed in order to make it possible to work with a 400 MHz clock

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
  signal pipereg1_in  : std_logic_vector(7 downto 0);
  signal pipereg1_out : std_logic_vector(7 downto 0);
  signal pipereg2_in  : std_logic_vector(5 downto 0);
  signal pipereg2_out : std_logic_vector(5 downto 0);
  signal pipereg3_in  : std_logic_vector(3 downto 0);
  signal pipereg3_out : std_logic_vector(3 downto 0);
  signal pipereg4_in  : std_logic_vector(3 downto 0);
  signal pipereg4_out : std_logic_vector(3 downto 0);
  signal pipereg5_in  : std_logic_vector(1 downto 0);
  signal pipereg5_out : std_logic_vector(1 downto 0);
  signal gt4_prepipe  : std_logic;
  signal eq4_prepipe  : std_logic;
  ---------------------------------------------------------------------------------------

	begin

    -- first pipeline layer -------------------------------------------------------------
    pipereg1_in(7) <= d8;
    pipereg1_in(6) <= d7;
    pipereg1_in(5) <= d6;
    pipereg1_in(4) <= d5;
    pipereg1_in(3) <= d4;
    pipereg1_in(2) <= d3;
    pipereg1_in(1) <= d2;
    pipereg1_in(0) <= d1;
    pipereg1: reg
    generic map
    (
      N => 8
    )
    port map
    (
      clk				=> clk,
      enable		=> enable,
      clear_n		=> clear_n,
      reset_n	  => '1',
      din				=> pipereg1_in,
      dout			=> pipereg1_out
    ); ---------------------------------------------------------------------------------

    fa00: fulladder
    port map
    (
      a     => pipereg1_out(0),
      b     => pipereg1_out(1),
      cin   => pipereg1_out(2),
      sum   => fa00_s,
      cout  => fa00_c
    );

    fa01: fulladder
    port map
    (
      a     => pipereg1_out(3),
      b     => pipereg1_out(4),
      cin   => pipereg1_out(5),
      sum   => fa01_s,
      cout  => fa01_c
    );

    ha02: halfadder
    port map
    (
      a => pipereg1_out(6),
      b => pipereg1_out(7),
      s => ha02_s,
      c => ha02_c
    );

    -- second pipeline layer ----------------------------------------------------------
    pipereg2_in(5) <= ha02_s;
    pipereg2_in(4) <= ha02_c;
    pipereg2_in(3) <= fa01_s;
    pipereg2_in(2) <= fa01_c;
    pipereg2_in(1) <= fa00_s;
    pipereg2_in(0) <= fa00_c;
    pipereg2: reg
    generic map
    (
      N => 6
    )
    port map
    (
      clk				=> clk,
      enable		=> enable,
      clear_n		=> clear_n,
      reset_n	  => '1',
      din				=> pipereg2_in,
      dout			=> pipereg2_out
    ); ---------------------------------------------------------------------------------

    faw0: fulladder
    port map
    (
      a     => pipereg2_out(1),
      b     => pipereg2_out(3),
      cin   => pipereg2_out(5),
      sum   => faw0_s,
      cout  => faw0_c
    );

    faw1: fulladder
    port map
    (
      a     => pipereg2_out(0),
      b     => pipereg2_out(2),
      cin   => pipereg2_out(4),
      sum   => faw1_s,
      cout  => faw1_c
    );

    -- third pipeline layer ------------------------------------------------------------
    pipereg3_in(3) <= faw1_c;
    pipereg3_in(2) <= faw1_s;
    pipereg3_in(1) <= faw0_c;
    pipereg3_in(0) <= faw0_s;
    pipereg3: reg
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
      din				=> pipereg3_in,
      dout			=> pipereg3_out
    ); --------------------------------------------------------------------------------

    haw1: halfadder
    port map
    (
      a => pipereg3_out(1),
      b => pipereg3_out(2),
      s => haw1_s,
      c => haw1_c
    );

    haw2: halfadder
    port map
    (
      a => haw1_c,
      b => pipereg3_out(3),
      s => haw2_s,
      c => haw2_c
    );

    -- fourth pipeline layer ----------------------------------------------------------
    pipereg4_in(3) <= haw2_c;
    pipereg4_in(2) <= haw2_s;
    pipereg4_in(1) <= haw1_s;
    pipereg4_in(0) <= pipereg3_in(0);
    pipereg4: reg
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
      din				=> pipereg4_in,
      dout			=> pipereg4_out
    ); --------------------------------------------------------------------------------

    gt4_prepipe <= ((pipereg4_out(0) or pipereg4_in(1)) and pipereg4_in(2)) or pipereg4_in(3);
    eq4_prepipe <= (not pipereg4_out(0)) and (not pipereg4_in(1)) and pipereg4_in(2) and (not pipereg4_in(3));

    -- fifth pipeline layer -----------------------------------------------------------
    pipereg5_in(1) <= gt4_prepipe;
    pipereg5_in(0) <= eq4_prepipe;
    pipereg5: reg
    generic map
    (
      N => 2
    )
    port map
    (
      clk				=> clk,
      enable		=> enable,
      clear_n		=> clear_n,
      reset_n	  => '1',
      din				=> pipereg5_in,
      dout			=> pipereg5_out
    ); --------------------------------------------------------------------------------

    gt4 <= pipereg5_out(1);
    eq4 <= pipereg5_out(0);

end behavior;
