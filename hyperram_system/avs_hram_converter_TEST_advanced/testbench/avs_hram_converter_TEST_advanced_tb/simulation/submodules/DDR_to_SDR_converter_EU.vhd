-- BRIEF DESCRIPTION: 8-bit DDR (msb-first) to 16-bit SDR converter
-- COMMENTS:
-- rwds_in and DDR_in are DDR with respect to a 50 MHz clock
-- the converter works with a 400 MHz clock
-- rwds_in and DDR_in are sampled on both positive and negative edges of the 400 MHz clock
-- 8 samples per clock level are collected with respect to the 50 MHz clock (5 of them are always correct)
-- the detection of a variation of rwds_in is based on a majority voting (5 or more samples must differ from the previous rwds value)
-- the converter detects the variation of rwds_in and provides at its output an SDR version of the input data
-- the converter provides also a version of rwds shifted of 2.5 ns with respect to the SDR data
-- deactivate the enable signal causes the loss of all the previously acquired samples

library   ieee;
use       ieee.std_logic_1164.all;
use       ieee.numeric_std.all;

entity DDR_to_SDR_converter_EU is
port
(
  -- clock and clear
	clk_x8            : in 	std_logic;
	clear_n		        : in 	std_logic;
  -- IO signals
  rwds_in           : in  std_logic;
  rwds_out          : out std_logic;
	DDR_in		        : in 	std_logic_vector(7 downto 0);
	SDR_out		        : out std_logic_vector(15 downto 0);
  -- control signals
  system_clear_n    : in  std_logic;
  rwdsgen_toggle    : in  std_logic;
  msb_enable        : in  std_logic;
  lsb_enable        : in  std_logic;
  -- status signals
  clr_n             : out std_logic;
  transition        : out std_logic
);
end DDR_to_SDR_converter_EU;

architecture rtl of DDR_to_SDR_converter_EU is

  -- COMPONENT: positive-edge triggered type-D flip flop ---------------------------------------------------
  component d_flipflop is
  port
  (
    clk				: in 	std_logic;
    enable		: in 	std_logic;
    clear_n		: in 	std_logic;	-- synchronous clear, active low
    reset_n		: in	std_logic;	-- asynchronous reset, active low
    din				: in 	std_logic;
    dout			: out std_logic
  );
  end component; -------------------------------------------------------------------------------------------

  -- COMPONENT: negative-edge triggered type-D flip flop ---------------------------------------------------
  component dff_negedge is
  port
  (
    clk				: in 	std_logic;
    enable		: in 	std_logic;
    clear_n		: in 	std_logic;	-- synchronous clear, active low
    reset_n		: in	std_logic;	-- asynchronous reset, active low
    din				: in 	std_logic;
    dout			: out std_logic
  );
  end component; -------------------------------------------------------------------------------------------

  -- COMPONENT: positive-edge triggered register -----------------------------------------------------------
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
  end component; -------------------------------------------------------------------------------------------

  -- COMPONENT: flipflop type-T (toggle) -------------------------------------------------------------------
  component t_flipflop is
	port
	(
		clk				: in 	std_logic;
		enable		: in 	std_logic;
		clear_n		: in 	std_logic;	-- synchronous clear, active low
		reset_n		: in	std_logic;	-- asynchronous reset, active low
		din				: in 	std_logic;
		dout			: out std_logic := '0'
	);
  end component; -------------------------------------------------------------------------------------------

  -- COMPONENT: voter --------------------------------------------------------------------------------------
  component voter is
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
  end component; -------------------------------------------------------------------------------------------

  -- SIGNALS -----------------------------------------------------------------------------------------------
  signal pdff1_out            : std_logic;
  signal pdff2_out            : std_logic;
  signal pdff3_out            : std_logic;
  signal pdff4_out            : std_logic;
  signal ndff1_out            : std_logic;
  signal ndff2_out            : std_logic;
  signal ndff3_out            : std_logic;
  signal ndff4_out            : std_logic;
  signal pdff1_out_pipe       : std_logic;
  signal pdff2_out_pipe       : std_logic;
  signal pdff3_out_pipe       : std_logic;
  signal pdff4_out_pipe       : std_logic;
  signal ndff1_out_pipe       : std_logic;
  signal ndff2_out_pipe       : std_logic;
  signal ndff3_out_pipe       : std_logic;
  signal ndff4_out_pipe       : std_logic;
  signal regp1_out            : std_logic_vector(7 downto 0);
  signal regp2_out            : std_logic_vector(7 downto 0);
  signal tracker_tgl          : std_logic;
  signal tracker_out          : std_logic;
  signal gt4                  : std_logic;
  signal eq4                  : std_logic;
  signal msb_out              : std_logic_vector(7 downto 0);
  signal lsb_out              : std_logic_vector(7 downto 0);
  signal rwdsgen_out          : std_logic;
  signal pipereg1_out         : std_logic_vector(7 downto 0);
  signal pipereg2_out         : std_logic_vector(7 downto 0);
  signal pipereg3_out         : std_logic_vector(7 downto 0);
  signal pipereg4_out         : std_logic_vector(7 downto 0);
  signal pipereg5_out         : std_logic_vector(7 downto 0);
	signal pipereg6_out         : std_logic_vector(7 downto 0);
  signal pipereg7_out         : std_logic_vector(7 downto 0);
  signal rwdsgen_toggle_pipe  : std_logic;
  ----------------------------------------------------------------------------------------------------------

  begin

    clr_n <= clear_n;

    -- posedge dff chain, 4th position ---------------------------------------------------------------------
    pdff4 : d_flipflop
    port map
    (
      clk				=> clk_x8, 
      enable		=> '1', 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> rwds_in, 
      dout			=> pdff4_out
    ); 
    pdff4_pipe : d_flipflop
    port map
    (
      clk				=> clk_x8, 
      enable		=> '1', 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> pdff4_out, 
      dout			=> pdff4_out_pipe
    ); -----------------------------------------------------------------------------------------------------

    -- posedge dff chain, 3th position ---------------------------------------------------------------------
    pdff3 : d_flipflop
    port map
    (
      clk				=> clk_x8, 
      enable		=> '1', 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> pdff4_out, 
      dout			=> pdff3_out
    ); 
    pdff3_pipe : d_flipflop
    port map
    (
      clk				=> clk_x8, 
      enable		=> '1', 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> pdff3_out, 
      dout			=> pdff3_out_pipe
    ); -----------------------------------------------------------------------------------------------------

    -- posedge dff chain, 2th position ---------------------------------------------------------------------
    pdff2 : d_flipflop
    port map
    (
      clk				=> clk_x8, 
      enable		=> '1', 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> pdff3_out, 
      dout			=> pdff2_out
    ); 
    pdff2_pipe : d_flipflop
    port map
    (
      clk				=> clk_x8, 
      enable		=> '1', 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> pdff2_out, 
      dout			=> pdff2_out_pipe
    ); -----------------------------------------------------------------------------------------------------

    -- posedge dff chain, 1th position ---------------------------------------------------------------------
    pdff1 : d_flipflop
    port map
    (
      clk				=> clk_x8, 
      enable		=> '1', 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> pdff2_out, 
      dout			=> pdff1_out
    ); 
    pdff1_pipe : d_flipflop
    port map
    (
      clk				=> clk_x8, 
      enable		=> '1', 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> pdff1_out, 
      dout			=> pdff1_out_pipe
    ); -----------------------------------------------------------------------------------------------------

    -- negedge dff chain, 4th position ---------------------------------------------------------------------
    ndff4 : dff_negedge
    port map
    (
      clk				=> clk_x8, 
      enable		=> '1', 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> rwds_in, 
      dout			=> ndff4_out
    ); 
    ndff4_pipe : dff_negedge
    port map
    (
      clk				=> clk_x8, 
      enable		=> '1', 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> ndff4_out, 
      dout			=> ndff4_out_pipe
    ); -----------------------------------------------------------------------------------------------------

    -- negedge dff chain, 3th position ---------------------------------------------------------------------
    ndff3 : dff_negedge
    port map
    (
      clk				=> clk_x8, 
      enable		=> '1', 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> ndff4_out, 
      dout			=> ndff3_out
    ); 
    ndff3_pipe : dff_negedge
    port map
    (
      clk				=> clk_x8, 
      enable		=> '1', 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> ndff3_out, 
      dout			=> ndff3_out_pipe
    ); -----------------------------------------------------------------------------------------------------

    -- negedge dff chain, 2th position ---------------------------------------------------------------------
    ndff2 : dff_negedge
    port map
    (
      clk				=> clk_x8, 
      enable		=> '1', 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> ndff3_out, 
      dout			=> ndff2_out
    ); 
    ndff2_pipe : dff_negedge
    port map
    (
      clk				=> clk_x8, 
      enable		=> '1', 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> ndff2_out, 
      dout			=> ndff2_out_pipe
    ); -----------------------------------------------------------------------------------------------------

    -- negedge dff chain, 1th position ---------------------------------------------------------------------
    ndff1 : dff_negedge
    port map
    (
      clk				=> clk_x8, 
      enable		=> '1', 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> ndff2_out, 
      dout			=> ndff1_out
    ); 
    ndff1_pipe : dff_negedge
    port map
    (
      clk				=> clk_x8, 
      enable		=> '1', 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> ndff1_out, 
      dout			=> ndff1_out_pipe
    ); -----------------------------------------------------------------------------------------------------

    -- voter -----------------------------------------------------------------------------------------------
    voter_inst: voter
    port map
    (
      clk       => clk_x8,
      clear_n   => system_clear_n,
      enable    => '1',
      d1        => ndff4_out_pipe,
      d2        => pdff4_out_pipe,
      d3        => ndff3_out_pipe,
      d4        => pdff3_out_pipe,
      d5        => ndff2_out_pipe,
      d6        => pdff2_out_pipe,
      d7        => ndff1_out_pipe,
      d8        => pdff1_out_pipe,
      gt4       => gt4,
      eq4       => eq4
    ); -----------------------------------------------------------------------------------------------------

    tracker_tgl <= (gt4 xor tracker_out) and (not eq4);

    -- result tracker --------------------------------------------------------------------------------------
    tracker: t_flipflop
    port map
    (
      clk				=> clk_x8,
      enable		=> '1',
      clear_n		=> system_clear_n,
      reset_n	  => '1',	
      din				=> tracker_tgl,
      dout		  => tracker_out
    ); -----------------------------------------------------------------------------------------------------

    -- data register chain - register 1 --------------------------------------------------------------------
    regp1: reg
    generic map
    (
      N => 8
    )
    port map
    (
      clk				=> clk_x8,
      enable		=> '1',
      clear_n		=> system_clear_n,
      reset_n	  => '1',
      din				=> DDR_in,
      dout			=> regp1_out
    ); -----------------------------------------------------------------------------------------------------

    -- data register chain - register 2 --------------------------------------------------------------------
    regp2: reg
    generic map
    (
      N => 8
    )
    port map
    (
      clk				=> clk_x8,
      enable		=> '1',
      clear_n		=> system_clear_n,
      reset_n	  => '1',
      din				=> regp1_out,
      dout			=> regp2_out
    ); -----------------------------------------------------------------------------------------------------

    -- data register chain - pipeline register 1 -----------------------------------------------------------
    pipereg1: reg
    generic map
    (
      N => 8
    )
    port map
    (
      clk				=> clk_x8,
      enable		=> '1',
      clear_n		=> system_clear_n,
      reset_n	  => '1',
      din				=> regp2_out,
      dout			=> pipereg1_out
    ); -----------------------------------------------------------------------------------------------------

    -- data register chain - pipeline register 2 -----------------------------------------------------------
    pipereg2: reg
    generic map
    (
      N => 8
    )
    port map
    (
      clk				=> clk_x8,
      enable		=> '1',
      clear_n		=> system_clear_n,
      reset_n	  => '1',
      din				=> pipereg1_out,
      dout			=> pipereg2_out
    ); -----------------------------------------------------------------------------------------------------

    -- data register chain - pipeline register 3 -----------------------------------------------------------
    pipereg3: reg
    generic map
    (
      N => 8
    )
    port map
    (
      clk				=> clk_x8,
      enable		=> '1',
      clear_n		=> system_clear_n,
      reset_n	  => '1',
      din				=> pipereg2_out,
      dout			=> pipereg3_out
    ); -----------------------------------------------------------------------------------------------------

    -- data register chain - pipeline register 4 -----------------------------------------------------------
    pipereg4: reg
    generic map
    (
      N => 8
    )
    port map
    (
      clk				=> clk_x8,
      enable		=> '1',
      clear_n		=> system_clear_n,
      reset_n	  => '1',
      din				=> pipereg3_out,
      dout			=> pipereg4_out
    ); -----------------------------------------------------------------------------------------------------

    -- data register chain - pipeline register 5 -----------------------------------------------------------
    pipereg5: reg
    generic map
    (
      N => 8
    )
    port map
    (
      clk				=> clk_x8,
      enable		=> '1',
      clear_n		=> system_clear_n,
      reset_n	  => '1',
      din				=> pipereg4_out,
      dout			=> pipereg5_out
    ); -----------------------------------------------------------------------------------------------------

    -- data register chain - pipeline register 6 -----------------------------------------------------------
    pipereg6: reg
    generic map
    (
      N => 8
    )
    port map
    (
      clk				=> clk_x8,
      enable		=> '1',
      clear_n		=> system_clear_n,
      reset_n	  => '1',
      din				=> pipereg5_out,
      dout			=> pipereg6_out
    ); -----------------------------------------------------------------------------------------------------

    -- data register chain - pipeline register 7 -----------------------------------------------------------
    pipereg7: reg
    generic map
    (
      N => 8
    )
    port map
    (
      clk				=> clk_x8,
      enable		=> '1',
      clear_n		=> system_clear_n,
      reset_n	  => '1',
      din				=> pipereg6_out,
      dout			=> pipereg7_out
    ); -----------------------------------------------------------------------------------------------------

    -- msb register ----------------------------------------------------------------------------------------
    msb: reg
    generic map
    (
      N => 8
    )
    port map
    (
      clk				=> clk_x8,
      enable		=> msb_enable,
      clear_n		=> system_clear_n,
      reset_n	  => '1',
      din				=> pipereg7_out,
      dout			=> msb_out
    ); -----------------------------------------------------------------------------------------------------

    -- lsb register ----------------------------------------------------------------------------------------
    lsb: reg
    generic map
    (
      N => 8
    )
    port map
    (
      clk				=> clk_x8,
      enable		=> lsb_enable,
      clear_n		=> system_clear_n,
      reset_n	  => '1',
      din				=> pipereg7_out,
      dout			=> lsb_out
    ); -----------------------------------------------------------------------------------------------------

    SDR_out(15 downto 8) <= msb_out;
    SDR_out(7 downto 0) <= lsb_out;
    transition <= tracker_tgl;

    -- rwds generation pipelining --------------------------------------------------------------------------
    rwdsgen_pipe: d_flipflop
    port map
    (
      clk				=> clk_x8, 
      enable		=> '1', 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> rwdsgen_toggle, 
      dout			=> rwdsgen_toggle_pipe
    ); -----------------------------------------------------------------------------------------------------

    -- shifted-rwds generator ------------------------------------------------------------------------------
    rwdsgen: t_flipflop
    port map
    (
      clk				=> clk_x8,
      enable		=> '1',
      clear_n		=> system_clear_n,
      reset_n		=> '1',
      din				=> rwdsgen_toggle_pipe,
      dout			=> rwdsgen_out
    ); -----------------------------------------------------------------------------------------------------
    
    rwds_out <= not rwdsgen_out;

end rtl;