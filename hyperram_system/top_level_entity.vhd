library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;
library 	lpm;
use 			lpm.lpm_components.all;
library 	altera_mf;
use 			altera_mf.altera_mf_components.all;

entity top_level_entity is
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
end top_level_entity;

architecture behavior of top_level_entity is

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
	end component;	

  signal dummy_reg_out : std_logic_vector(7 downto 0);
		
	begin

		dummy_reg: reg generic map (8) port map (hBusRwds, '1', '1', '1', hBusD, dummy_reg_out);

    lsasBus(7 downto 0) <= dummy_reg_out;
	
end behavior;
