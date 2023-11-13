-- PROJECT: blockram_system_v2
-- BRIEF DESCRIPTION: top level entity
-- COMMENTS:
-- this file instantiates a NiosII-based Platform Designer System (PDS)
-- the PDS reads the status of the switches 7, 6, 5 and 4 and drives the LEDs consequently
-- a PLL is intantiated to provide the clock to the PDS
-- switches 0 is employed to reset the nios processor and the pll

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
	-- MCU interface (UART, I2C)
	mcuUartTx		: in 		std_logic;
	mcuUartRx		: out 	std_logic;
	mcuI2cScl		: in 		std_logic;
	mcuI2cSda		: inout std_logic;
	-- logic state analyzer/stimulator
	lsasBus			: inout std_logic_vector(31 downto 0);
	-- dip switches
	switches		: in 		std_logic_vector(7 downto 0);
	-- LEDs
	leds				: out 	std_logic_vector(3 downto 0)
);
end top_level_entity;

architecture behavior of top_level_entity is

	-- SIGNALS ---------------------------------------------------------------------------------------
	-- clock signals
	signal clk						: std_logic;
	signal pllLock				: std_logic;
	-- logic state analyzer/simulator signals (unused in this project)
	signal lsasBusIn			: std_logic_vector(31 downto 0);
	signal lsasBusOut			: std_logic_vector(31 downto 0);
	signal lsasBusEn			: std_logic_vector(31 downto 0) := (others => '0');
	-- MCU interface signals (unused in this project)
	signal mcuI2cDIn			: std_logic;
	signal mcuI2CDOut			: std_logic;
	signal mcuI2cEn				: std_logic := '0';
	-- internal signals
	signal nios_reset_n		: std_logic;
	signal pll_reset			: std_logic;
	--------------------------------------------------------------------------------------------------

	-- COMPONENT: PLL (from 10MHz to 100MHz) ---------------------------------------------------------
	component pll
	port
	(
		areset		: in 	std_logic := '0';		-- active high
		inclk0		: in 	std_logic := '0';		-- 10MHz input clock
		c0				: out std_logic;					-- 100MHz output clock
		locked		: out std_logic 
	);
	end component; -----------------------------------------------------------------------------------

	-- COMPONENT: Platform Designer System -----------------------------------------------------------
	component blockram_system_v1
	port 
	(
		clk_clk           : in  std_logic := '0';
		leds_export       : out std_logic_vector(3 downto 0);
		reset_reset_n     : in  std_logic := '0';
		switches_export   : in  std_logic_vector(3 downto 0) := (others => '0')
	);
	end component; -----------------------------------------------------------------------------------
		
	begin

		pll_reset <= not(switches(0));
		nios_reset_n <= switches(0);

		-- Main clock PLL -----------------------------------------------------------------------------
		pll_inst : pll 
		port map 
		(
			areset	=> pll_reset, 	
			inclk0	=> mainClk,						
			c0	 		=> clk,								
			locked	=> pllLock
		); --------------------------------------------------------------------------------------------
		
		-- Nios II system -----------------------------------------------------------------------------
		blockram_system_v2_inst : blockram_system_v2
		port map
		(
			clk_clk							=> clk,
			leds_export     		=> leds,
			reset_reset_n   		=> nios_reset_n,
			switches_export 		=> switches(7 downto 4)
		); --------------------------------------------------------------------------------------------
	
end behavior;
