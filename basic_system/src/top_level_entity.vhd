library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library lpm;
use lpm.lpm_components.all;
library altera_mf;
use altera_mf.altera_mf_components.all;

entity top_level_entity is
	port
	(
		-- main clock inputs ----------------------------------------------------------------
		mainClk			: in		std_logic;		-- 10MHz
		slowClk			: in		std_logic;
		-- main reset input -----------------------------------------------------------------
		reset				: in 		std_logic;
		-- MCU interface (UART, I2C) --------------------------------------------------------
		mcuUartTx		: in 		std_logic;
		mcuUartRx		: out 	std_logic;
		mcuI2cScl		: in 		std_logic;
		mcuI2cSda		: inout std_logic;
		-- logic state analyzer/stimulator --------------------------------------------------
		lsasBus			: inout std_logic_vector(31 downto 0);
		-- dip switches ---------------------------------------------------------------------
		switches		: in 		std_logic_vector(7 downto 0);
		-- LEDs -----------------------------------------------------------------------------
		leds				: out 	std_logic_vector(3 downto 0)
	);
end top_level_entity;

architecture behavior of top_level_entity is

	-- clock signals ----------------------------------------------------------------------
	signal clk					: std_logic;
	signal pllLock			: std_logic;

	-- logic state analyzer/simulator signals (unused in this project) --------------------
	signal lsasBusIn		: std_logic_vector(31 downto 0);
	signal lsasBusOut		: std_logic_vector(31 downto 0);
	signal lsasBusEn		: std_logic_vector(31 downto 0) := (others => '0');

	-- MCU interface signals (unused in this project) -------------------------------------
	signal mcuI2cDIn		: std_logic;
	signal mcuI2CDOut		: std_logic;
	signal mcuI2cEn			: std_logic := '0';	

	component myAltPll
		port
		(
			areset		: in 	std_logic := '0';
			inclk0		: in 	std_logic := '0';
			c0				: out std_logic;
			locked		: out std_logic 
		);
	end component;
	
	component basic_system
		port 
		(
			clk_clk       	: in std_logic := '0';
			reset_reset_n 	: in std_logic := '0'
		);
	end component;
	
	begin

		-- Main clock PLL (from 10MHz to 100MHz) ------------------------------------------------------
		myAltPll_inst : myAltPll 
		port map 
		(
			areset	=> reset,
			inclk0	=> mainClk,			-- 10MHz input clock
			c0	 		=> clk,					-- 100MHz output clock
			locked	=> pllLock
		);
		
		-- Nios II based system -----------------------------------------------------------------------
		basic_system_inst : basic_system
		port map
		(
			clk_clk					=> clk,
			reset_reset_n		=> reset
		);

		-- LEDs ---------------------------------------------------------------------------------------
		leds <= switches(3 downto 0);
		-- leds <= "1111";
	
end behavior;
