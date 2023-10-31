-- PROJECT: basic_system_v1
-- BRIEF DESCRIPTION: top-level testbench file 
-- COMMENTS:
-- this file instantiates the DUT, provides the clock and the input signals and inspects the output signals

library   ieee;
use       ieee.std_logic_1164.all;
use       ieee.numeric_std.all;

entity AvalonMM_to_SSRAM_testbench is
end AvalonMM_to_SSRAM_testbench;

architecture testbench of AvalonMM_to_SSRAM_testbench is

  -- CONSTANTS -------------------------------------------------------------------------------------------------------
	constant pllClk_period      : time := 10 ns;
  constant mainClk_period     : time := 100 ns;
	constant reset_window				: time := 1000 ns;
  constant niosReset_window   : time := 1100 ns;
  --------------------------------------------------------------------------------------------------------------------

  -- SIGNALS ---------------------------------------------------------------------------------------------------------
  signal mainClk      : std_logic := '0';
  signal slowClk			: std_logic := '0';
  signal reset				: std_logic := '0';
  signal mcuUartTx		: std_logic;
  signal mcuUartRx		: std_logic;
  signal mcuI2cScl		: std_logic;
  signal mcuI2cSda		: std_logic;
  signal lsasBus			: std_logic_vector(31 downto 0);
  signal switches		  : std_logic_vector(7 downto 0) := "00000000";
  signal leds				  : std_logic_vector(3 downto 0);
  --------------------------------------------------------------------------------------------------------------------

  -- COMPONENT: DUT --------------------------------------------------------------------------------------------------
  -- switches(3 downto 0) determines the LEDs status
  -- switches(7) is connected to the Nios reset
  component top_level_entity is
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
  end component; ------------------------------------------------------------------------------------------------------

  begin

    -- clock generation -----------------------------------------------------------------------------------------------
		mainClk_gen: process
		begin
			mainClk <= not mainClk;
			wait for mainClk_period/2;
		end process mainClk_gen; ------------------------------------------------------------------------------------------
    
    -- reset generation -----------------------------------------------------------------------------------------------
		reset_gen: process
		begin
			reset <= '0';
			wait for reset_window;
			reset <= '1';
			wait;
		end process reset_gen; --------------------------------------------------------------------------------------------

    -- Nios reset generation ------------------------------------------------------------------------------------------
    niosReset_gen: process
    begin
      switch(7) <= '0';
      wait for niosReset_window;
			switch(7) <= '1';
			wait;
    end process niosReset_gen; ----------------------------------------------------------------------------------------

    -- input generation -----------------------------------------------------------------------------------------------
    input_gen: process
    begin
      switch(3 downto 0) <= "0000";
      wait for niosReset_window;
      wait for 10*pllClk_period;
			switch(3 downto 0) <= "1111";
			wait;
    end process input_gen; --------------------------------------------------------------------------------------------

end testbench;
