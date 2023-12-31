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
  -- clock, reset and clear
	clk_x8            : in 	std_logic;
	clear_n		        : in 	std_logic;
  -- IO signals
  rwds_in           : in  std_logic;
  rwds_out          : out std_logic;
	DDR_in		        : in 	std_logic_vector(7 downto 0);
	SDR_out		        : out std_logic_vector(15 downto 0)
);
end DDR_to_SDR_converter;

architecture rtl of DDR_to_SDR_converter is

  -- COMPONENT: execution unit ------------------------------------------------------------------------------
  component DDR_to_SDR_converter_EU is
	port
	(
		-- clock, reset and clear
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
  end component; -------------------------------------------------------------------------------------------

  -- COMPONENT: control unit -------------------------------------------------------------------------------
  component DDR_to_SDR_converter_CU is
	port
	(
		  -- clock, reset and clear
    clk_x8            : in  std_logic;
		clr_n             : in  std_logic;
    -- status signals
    transition        : in  std_logic;
    -- control signals
    system_clear_n    : out std_logic;
    rwdsgen_toggle    : out std_logic;
    msb_enable        : out std_logic;
    lsb_enable        : out std_logic
	);
  end component; -------------------------------------------------------------------------------------------

  -- SIGNALS -----------------------------------------------------------------------------------------------
  signal system_clear_n     : std_logic;
  signal rwdsgen_toggle     : std_logic;    
  signal msb_enable         : std_logic;    
  signal lsb_enable         : std_logic;    
  signal clr_n              : std_logic;    
  signal transition         : std_logic;    
  ----------------------------------------------------------------------------------------------------------

  begin

    -- EU instance -----------------------------------------------------------------------------------------
    EU: DDR_to_SDR_converter_EU
    port map
    (
      clk_x8              => clk_x8,
      clear_n		          => clear_n,
      rwds_in             => rwds_in,
      rwds_out            => rwds_out,
      DDR_in		          => DDR_in,
      SDR_out		          => SDR_out,
      system_clear_n      => system_clear_n,
      rwdsgen_toggle      => rwdsgen_toggle,
      msb_enable          => msb_enable,
      lsb_enable          => lsb_enable,
      clr_n               => clr_n,
      transition          => transition
    ); -----------------------------------------------------------------------------------------------------

    -- CU instance -----------------------------------------------------------------------------------------
    CU: DDR_to_SDR_converter_CU
    port map
    (
      clk_x8              => clk_x8,
      clr_n               => clr_n,
      transition          => transition,
      system_clear_n      => system_clear_n,
      rwdsgen_toggle      => rwdsgen_toggle,
      msb_enable          => msb_enable,
      lsb_enable          => lsb_enable
    ); -----------------------------------------------------------------------------------------------------

end rtl;