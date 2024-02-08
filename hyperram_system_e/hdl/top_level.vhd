-- PROJECT: hyperram_system
-- BRIEF DESCRIPTION: top level file

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;
library 	lpm;
use 			lpm.lpm_components.all;
library 	altera_mf;
use 			altera_mf.altera_mf_components.all;

entity top_level is
port
(
	-- main clock inputs
	mainClk	  : in    std_logic;
	slowClk	  : in    std_logic;
	-- main reset input
	reset		  : in    std_logic;
	-- hyperbus interface
	hBusCk	  : out   std_logic;
	hBusnCk	  : out   std_logic;
	hBusCs	  : out   std_logic;
	hBusRst	  : out   std_logic;
	hBusD		  : inout std_logic_vector(7 downto 0);
	hBusRwds	: inout std_logic;
	-- MCU interface (SPI-QSPI)
	mcuSpiCk	: in    std_logic;
	mcuSpiCs	: in    std_logic;
	mcuSpiIo	: inout std_logic_vector(3 downto 0);
	-- MCU interface (UART, I2C)
	mcuUartTx	: in    std_logic;
	mcuUartRx	: out   std_logic;
	mcuI2cScl	: in    std_logic;
	mcuI2cSda	: inout std_logic;
	-- logic state analyzer/stimulator
	lsasBus	  : inout std_logic_vector(31 downto 0);
	-- LEDs
	leds		  : out std_logic_vector(3 downto 0)
);
end top_level;

architecture behavior of top_level is

  -- SIGNALS ----------------------------------------------------------------------------------------
	signal hCK                      : std_logic;
  signal clk_50MHz                : std_logic;
  signal clk_2kHz                 : std_logic;
  signal pds_reset                : std_logic;
  signal pll_reset                : std_logic;
  signal switches                 : std_logic_vector(3 downto 0) := "0000";
  signal pllreset_generator_out   : std_logic;
	signal switch0_generator_out    : std_logic;
  signal switch0_generator_in     : std_logic;
	signal switch1_generator_in     : std_logic;
	signal switch2_generator_in     : std_logic;
	signal switch3_generator_in     : std_logic;
	signal switchgen_reset					: std_logic;
	signal switchgen_reset_out			: std_logic := '0';
  ---------------------------------------------------------------------------------------------------

  -- COMPONENT: PLL ---------------------------------------------------------------------------------
	component pll
	port
	(
		areset		: in  std_logic := '0';
		inclk0		: in  std_logic := '0';		-- 10 MHz
		c0		    : out std_logic ;					-- 50 MHz
		c1				: out std_logic						-- 2 kHz
	);
	end component; ------------------------------------------------------------------------------------

  -- COMPONENT: delayer -----------------------------------------------------------------------------
  component delayer is
  generic
  (
    N	: integer := 4
  );
  port
  (
    clk				: in 	std_logic;
    enable		: in 	std_logic;
    clear_n		: in 	std_logic;
    reset_n		: in	std_logic;
    din       : in  std_logic;
    dout			: out std_logic
  );
  end component; ------------------------------------------------------------------------------------

  -- COMPONENT: Platform Designer System ------------------------------------------------------------
  component avs_hram_converter_TEST_advanced is
	port 
  (
		clk_clk             : in    std_logic := '0';
		hyperbus_cs_n       : out   std_logic;
		hyperbus_dq         : inout std_logic_vector(7 downto 0) := (others => '0');
		hyperbus_reset_n    : out   std_logic;
		hyperbus_rwds       : inout std_logic := '0';
		hyperbus_ck_outclk  : out   std_logic;
		leds_export         : out   std_logic_vector(3 downto 0);
		reset_reset_n       : in    std_logic := '0';
		switches_export     : in    std_logic_vector(3 downto 0) := (others => '0')
	);
  end component; ------------------------------------------------------------------------------------
	
  begin

    -- the MCU and the logic state analyzer/stimulator are not used in this project -----------------
    lsasBus     <= (others => 'Z');
    mcuSpiIo    <= (others => 'Z');
    mcuI2cSda   <= 'Z';
    mcuUartRx   <= 'Z';
    -------------------------------------------------------------------------------------------------

    -- main clock PLL -------------------------------------------------------------------------------
    pll_inst: pll 
    port map 
    (
      areset	  => pll_reset,
      inclk0    => mainClk,
      c0	      => clk_50MHz,
			c1				=> clk_2kHz
    ); ----------------------------------------------------------------------------------------------

    -- PLL reset generator --------------------------------------------------------------------------
    pllreset_generator: delayer
    generic map
    (
      N	=> 10
    )
    port map
    (
      clk				=> mainClk,
      enable		=> '1',
      clear_n		=> '1',
      reset_n		=> '1',
      din       => '1',
      dout			=> pllreset_generator_out
    ); ----------------------------------------------------------------------------------------------

    pll_reset <= not pllreset_generator_out;

    -- PDS reset generator --------------------------------------------------------------------------
    pdsreset_generator: delayer
    generic map
    (
      N	=> 10
    )
    port map
    (
      clk				=> mainClk,
      enable		=> '1',
      clear_n		=> '1',
      reset_n		=> '1',
      din       => '1',
      dout			=> pds_reset
    ); ----------------------------------------------------------------------------------------------

    
    -- USE THIS SECTION ONLY FOR SYNTHESIS ----------------------------------------------------------
		-- three leds are constantly switched off
		-- one led is toggled with a frequency low enough to bee perceived with the human eye
    switch0_generator: delayer
    generic map
    (
			N	=> 100
    )
    port map
    (
			clk				=> clk_2kHz,
      enable		=> '1',
      clear_n		=> '1',
      reset_n		=> '1',
      din       => switch0_generator_in,
      dout			=> switch0_generator_out
    );
		switch0_generator_in <= '1' xor switch0_generator_out;
		switches(0) <= switch0_generator_out;
		switches(1) <= switch0_generator_out;
		switches(2) <= switch0_generator_out;
		switches(3) <= switch0_generator_out;
		-------------------------------------------------------------------------------------------------

    -- USE THIS SECTION ONLY FOR SIMULATION ---------------------------------------------------------
		-- led(0) is permanently switched off
		-- the other leds are toggled a certain number of times, then they are permanently switched off
		-- switch1_generator_in <= '1' xor switches(1);
    -- switch1_generator: delayer
    -- generic map
    -- (
      -- N	=> 100
    -- )
    -- port map
    -- (
      -- clk				=> mainClk,
      -- enable		=> '1',
      -- clear_n		=> '1',
      -- reset_n		=> switchgen_reset,
      -- din       => switch1_generator_in,
      -- dout			=> switches(1)
    -- );
		-- switch2_generator_in <= '1' xor switches(2);
    -- switch2_generator: delayer
    -- generic map
    -- (
      -- N	=> 100
    -- )
    -- port map
    -- (
      -- clk				=> mainClk,
      -- enable		=> '1',
      -- clear_n		=> '1',
      -- reset_n		=> switchgen_reset,
      -- din       => switch2_generator_in,
      -- dout			=> switches(2)
    -- ); 
		-- switch3_generator_in <= '1' xor switches(3);
    -- switch3_generator: delayer
    -- generic map
    -- (
      -- N	=> 100
    -- )
    -- port map
    -- (
      -- clk				=> mainClk,
      -- enable		=> '1',
      -- clear_n		=> '1',
      -- reset_n		=> switchgen_reset,
      -- din       => switch3_generator_in,
      -- dout			=> switches(3)
    -- ); 
    -- switch_reset_generator: delayer
    -- generic map
    -- (
      -- N	=> 5000
    -- )
    -- port map
    -- (
      -- clk				=> mainClk,
      -- enable		=> '1',
      -- clear_n		=> '1',
      -- reset_n		=> '1',
      -- din       => '1',
      -- dout			=> switchgen_reset_out
    -- );
		-- switchgen_reset <= not switchgen_reset_out;
		-------------------------------------------------------------------------------------------------

    -- Platform Designer System instance ------------------------------------------------------------
    PDS: avs_hram_converter_TEST_advanced
    port map
    (
      clk_clk             => clk_50MHz,
      hyperbus_cs_n       => hBusCs,
      hyperbus_dq         => hBusD,
      hyperbus_reset_n    => hBusRst,
      hyperbus_rwds       => hBusRwds,
      hyperbus_ck_outclk  => hCK,
      leds_export         => leds,
      reset_reset_n       => pds_reset,
      switches_export     => switches
    ); ----------------------------------------------------------------------------------------------

    hBusCk  <= hCK;
    hBusnCk <= not hCK;

end behavior;
