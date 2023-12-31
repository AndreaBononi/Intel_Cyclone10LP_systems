-- avs_hram_converter_TEST_clkctrl.vhd

-- Generated using ACDS version 22.1 917

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity avs_hram_converter_TEST_clkctrl is
	port (
		inclk  : in  std_logic := '0'; --  altclkctrl_input.inclk
		ena    : in  std_logic := '0'; --                  .ena
		outclk : out std_logic         -- altclkctrl_output.outclk
	);
end entity avs_hram_converter_TEST_clkctrl;

architecture rtl of avs_hram_converter_TEST_clkctrl is
	component avs_hram_converter_TEST_clkctrl_altclkctrl_0 is
		port (
			inclk  : in  std_logic := 'X'; -- inclk
			ena    : in  std_logic := 'X'; -- ena
			outclk : out std_logic         -- outclk
		);
	end component avs_hram_converter_TEST_clkctrl_altclkctrl_0;

begin

	altclkctrl_0 : component avs_hram_converter_TEST_clkctrl_altclkctrl_0
		port map (
			inclk  => inclk,  --  altclkctrl_input.inclk
			ena    => ena,    --                  .ena
			outclk => outclk  -- altclkctrl_output.outclk
		);

end architecture rtl; -- of avs_hram_converter_TEST_clkctrl
