-- avs_hram_converter_TEST_advanced_tb.vhd

-- Generated using ACDS version 22.1 917

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity avs_hram_converter_TEST_advanced_tb is
end entity avs_hram_converter_TEST_advanced_tb;

architecture rtl of avs_hram_converter_TEST_advanced_tb is
	component avs_hram_converter_TEST_advanced is
		port (
			clk_clk            : in    std_logic                    := 'X';             -- clk
			hyperbus_cs_n      : out   std_logic;                                       -- cs_n
			hyperbus_dq        : inout std_logic_vector(7 downto 0) := (others => 'X'); -- dq
			hyperbus_reset_n   : out   std_logic;                                       -- reset_n
			hyperbus_rwds      : inout std_logic                    := 'X';             -- rwds
			hyperbus_ck_outclk : out   std_logic;                                       -- outclk
			leds_export        : out   std_logic_vector(3 downto 0);                    -- export
			reset_reset_n      : in    std_logic                    := 'X';             -- reset_n
			switches_export    : in    std_logic_vector(3 downto 0) := (others => 'X')  -- export
		);
	end component avs_hram_converter_TEST_advanced;

	component altera_avalon_clock_source is
		generic (
			CLOCK_RATE : positive := 10;
			CLOCK_UNIT : positive := 1000000
		);
		port (
			clk : out std_logic   -- clk
		);
	end component altera_avalon_clock_source;

	component altera_avalon_reset_source is
		generic (
			ASSERT_HIGH_RESET    : integer := 1;
			INITIAL_RESET_CYCLES : integer := 0
		);
		port (
			reset : out std_logic;        -- reset_n
			clk   : in  std_logic := 'X'  -- clk
		);
	end component altera_avalon_reset_source;

	signal avs_hram_converter_test_advanced_inst_clk_bfm_clk_clk       : std_logic; -- avs_hram_converter_TEST_advanced_inst_clk_bfm:clk -> [avs_hram_converter_TEST_advanced_inst:clk_clk, avs_hram_converter_TEST_advanced_inst_reset_bfm:clk]
	signal avs_hram_converter_test_advanced_inst_reset_bfm_reset_reset : std_logic; -- avs_hram_converter_TEST_advanced_inst_reset_bfm:reset -> avs_hram_converter_TEST_advanced_inst:reset_reset_n

begin

	avs_hram_converter_test_advanced_inst : component avs_hram_converter_TEST_advanced
		port map (
			clk_clk            => avs_hram_converter_test_advanced_inst_clk_bfm_clk_clk,       --         clk.clk
			hyperbus_cs_n      => open,                                                        --    hyperbus.cs_n
			hyperbus_dq        => open,                                                        --            .dq
			hyperbus_reset_n   => open,                                                        --            .reset_n
			hyperbus_rwds      => open,                                                        --            .rwds
			hyperbus_ck_outclk => open,                                                        -- hyperbus_ck.outclk
			leds_export        => open,                                                        --        leds.export
			reset_reset_n      => avs_hram_converter_test_advanced_inst_reset_bfm_reset_reset, --       reset.reset_n
			switches_export    => open                                                         --    switches.export
		);

	avs_hram_converter_test_advanced_inst_clk_bfm : component altera_avalon_clock_source
		generic map (
			CLOCK_RATE => 50000000,
			CLOCK_UNIT => 1
		)
		port map (
			clk => avs_hram_converter_test_advanced_inst_clk_bfm_clk_clk  -- clk.clk
		);

	avs_hram_converter_test_advanced_inst_reset_bfm : component altera_avalon_reset_source
		generic map (
			ASSERT_HIGH_RESET    => 0,
			INITIAL_RESET_CYCLES => 50
		)
		port map (
			reset => avs_hram_converter_test_advanced_inst_reset_bfm_reset_reset, -- reset.reset_n
			clk   => avs_hram_converter_test_advanced_inst_clk_bfm_clk_clk        --   clk.clk
		);

end architecture rtl; -- of avs_hram_converter_TEST_advanced_tb