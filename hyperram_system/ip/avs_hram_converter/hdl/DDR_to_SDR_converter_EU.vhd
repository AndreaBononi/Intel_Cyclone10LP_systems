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

entity DDR_to_SDR_converter is
port
(
  -- IO signals
	clk_x8            : in 	std_logic;
	enable		        : in 	std_logic;
  rwds_in           : in  std_logic;
  rwds_out          : out std_logic;
	DDR_in		        : in 	std_logic_vector(7 downto 0);
	SDR_out		        : out std_logic_vector(15 downto 0);
  -- control signals
  system_clear_n    : in  std_logic;
  system_enable     : in  std_logic;
  rwdsgen_toggle    : in  std_logic;
  msb_enable        : in  std_logic;
  lsb_enable        : in  std_logic;
  -- status signals
  ena               : out std_logic;
  transition        : out std_logic
);
end DDR_to_SDR_converter;

architecture rtl of DDR_to_SDR_converter is

  -- positive-edge triggered type-D flip flop --------------------------------------------------------------
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

  -- negative-edge triggered type-D flip flop --------------------------------------------------------------
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

  -- positive-edge triggered register ----------------------------------------------------------------------
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

  -- flipflop type-T (toggle) ------------------------------------------------------------------------------
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

  -- voter -------------------------------------------------------------------------------------------------
  component voter is
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
  end component; -------------------------------------------------------------------------------------------

  -- SIGNALS -----------------------------------------------------------------------------------------------
  signal pdff1_out    : std_logic;
  signal pdff2_out    : std_logic;
  signal pdff3_out    : std_logic;
  signal pdff4_out    : std_logic;
  signal ndff1_out    : std_logic;
  signal ndff2_out    : std_logic;
  signal ndff3_out    : std_logic;
  signal ndff4_out    : std_logic;
  signal regp1_out    : std_logic;
  signal regp2_out    : std_logic;
  signal pipereg_out  : std_logic;
  signal tracker_out  : std_logic;
  signal voter_d1     : std_logic;
  signal voter_d2     : std_logic;
  signal voter_d3     : std_logic;
  signal voter_d4     : std_logic;
  signal voter_d5     : std_logic;
  signal voter_d6     : std_logic;
  signal voter_d7     : std_logic;
  signal voter_d8     : std_logic;
  signal voter_res    : std_logic;
  signal msb_out      : std_logic;
  signal lsb_out      : std_logic;
  ----------------------------------------------------------------------------------------------------------

  begin

    -- posedge dff chain, 4th position ---------------------------------------------------------------------
    pdff4 : d_flipflop
    port map
    (
      clk				=> clk_x8, 
      enable		=> system_enable, 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> rwds_in, 
      dout			=> pdff4_out
    ); -----------------------------------------------------------------------------------------------------

    -- posedge dff chain, 3th position ---------------------------------------------------------------------
    pdff3 : d_flipflop
    port map
    (
      clk				=> clk_x8, 
      enable		=> system_enable, 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> pdff4_out, 
      dout			=> pdff3_out
    ); -----------------------------------------------------------------------------------------------------

    -- posedge dff chain, 2th position ---------------------------------------------------------------------
    pdff2 : d_flipflop
    port map
    (
      clk				=> clk_x8, 
      enable		=> system_enable, 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> pdff3_out, 
      dout			=> pdff2_out
    ); -----------------------------------------------------------------------------------------------------

    -- posedge dff chain, 1th position ---------------------------------------------------------------------
    pdff1 : d_flipflop
    port map
    (
      clk				=> clk_x8, 
      enable		=> system_enable, 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> pdff2_out, 
      dout			=> pdff1_out
    ); -----------------------------------------------------------------------------------------------------

    -- negedge dff chain, 4th position ---------------------------------------------------------------------
    ndff4 : d_flipflop
    port map
    (
      clk				=> clk_x8, 
      enable		=> system_enable, 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> rwds_in, 
      dout			=> ndff4_out
    ); -----------------------------------------------------------------------------------------------------

    -- negedge dff chain, 3th position ---------------------------------------------------------------------
    ndff3 : d_flipflop
    port map
    (
      clk				=> clk_x8, 
      enable		=> system_enable, 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> ndff4_out, 
      dout			=> ndff3_out
    ); -----------------------------------------------------------------------------------------------------

    -- negedge dff chain, 2th position ---------------------------------------------------------------------
    ndff2 : d_flipflop
    port map
    (
      clk				=> clk_x8, 
      enable		=> system_enable, 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> ndff3_out, 
      dout			=> ndff2_out
    ); -----------------------------------------------------------------------------------------------------

    -- negedge dff chain, 1th position ---------------------------------------------------------------------
    ndff1 : d_flipflop
    port map
    (
      clk				=> clk_x8, 
      enable		=> system_enable, 
      clear_n		=> system_clear_n, 
      reset_n		=> '1',
      din				=> ndff2_out, 
      dout			=> ndff1_out
    ); -----------------------------------------------------------------------------------------------------
    

end rtl;