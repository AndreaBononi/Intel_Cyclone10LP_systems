library   ieee;
use       ieee.std_logic_1164.all;
use       ieee.numeric_std.all;

entity hyperram_system_testbench is
end hyperram_system_testbench;

architecture testbench of hyperram_system_testbench is

	constant T_rwds : time := 10 ns;

  signal mainClk      : std_logic := '0';
  signal slowClk			: std_logic := '0';
  signal reset				: std_logic := '1';
  signal hBusCk	      : std_logic;
  signal hBusnCk	    : std_logic;
  signal hBusCs	      : std_logic;
  signal hBusRst	    : std_logic;
  signal hBusD        : std_logic_vector(7 downto 0) := "00000000";
  signal hBusRwds     : std_logic := '0';
  signal mcuSpiCk	    : std_logic;
  signal mcuSpiCs	    : std_logic;
  signal mcuSpiIo	    : std_logic_vector(3 downto 0);
  signal mcuUartTx		: std_logic;
  signal mcuUartRx		: std_logic;
  signal mcuI2cScl		: std_logic;
  signal mcuI2cSda		: std_logic;
  signal lsasBus			: std_logic_vector(31 downto 0);
  signal leds				  : std_logic_vector(3 downto 0);

  component top_level_entity is
  port
  (
    -- main clock inputs
    mainClk			: in		std_logic;		-- 10MHz
    slowClk			: in		std_logic;
    -- main reset input
    reset				: in 		std_logic;
    -- hyperBUS interface
    hBusCk	    : out std_logic;
    hBusnCk	    : out std_logic;
    hBusCs	    : out std_logic;
    hBusRst	    : out std_logic;
    hBusD		    : inout std_logic_vector(7 downto 0);
    hBusRwds	  : inout std_logic;
    -- MCU interface (SPI-QSPI)
    mcuSpiCk	  : in std_logic;
    mcuSpiCs	  : in std_logic;
    mcuSpiIo	  : inout std_logic_vector(3 downto 0);
    -- MCU interface (UART, I2C)
    mcuUartTx		: in 		std_logic;
    mcuUartRx		: out 	std_logic;
    mcuI2cScl		: in 		std_logic;
    mcuI2cSda		: inout std_logic;
    -- logic state analyzer/stimulator
    lsasBus			: inout std_logic_vector(31 downto 0);
    -- LEDs
    leds				: out 	std_logic_vector(3 downto 0)
  );
  end component;

  begin

    DUT: top_level_entity 
    port map
    (
      mainClk     => mainClk,
      slowClk     => slowClk,
      reset       => reset,
      hBusCk	    => hBusCk,
      hBusnCk	    => hBusnCk,
      hBusCs	    => hBusCs,
      hBusRst	    => hBusRst,
      hBusD		    => hBusD,
      hBusRwds	  => hBusRwds,
      mcuSpiCk	  => mcuSpiCk,
      mcuSpiCs	  => mcuSpiCs,
      mcuSpiIo	  => mcuSpiIo,
      mcuUartTx   => mcuUartTx,
      mcuUartRx	  => mcuUartRx,
      mcuI2cScl	  => mcuI2cScl,
      mcuI2cSda	  => mcuI2cSda,
      lsasBus     => lsasBus,
      leds        => leds
    );

    rwds_gen: process
    begin
      hBusRwds <= '0';
      wait for 20*T_rwds;
			hBusRwds <= '1';
			wait for T_rwds/2;
      hBusRwds <= '0';
			wait for T_rwds/2;
      hBusRwds <= '1';
			wait for T_rwds/2;
      hBusRwds <= '0';
			wait for T_rwds/2;
      hBusRwds <= '1';
			wait for T_rwds/2;
      hBusRwds <= '0';
			wait for T_rwds/2;
      hBusRwds <= '1';
			wait for T_rwds/2;
      hBusRwds <= '0';
			wait for T_rwds/2;
      hBusRwds <= '1';
			wait for T_rwds/2;
      hBusRwds <= '0';
			wait;
    end process rwds_gen; 

    dq_gen: process
		begin
      hBusD <= "00000000";
      wait for 20*T_rwds;
			hBusD <= "11111111";
			wait for T_rwds;
      hBusD <= "00000000";
			wait for T_rwds;
      hBusD <= "11111111";
			wait for T_rwds;
      hBusD <= "00000000";
			wait for T_rwds;
      hBusD <= "11111111";
			wait;
		end process dq_gen;

end testbench;
