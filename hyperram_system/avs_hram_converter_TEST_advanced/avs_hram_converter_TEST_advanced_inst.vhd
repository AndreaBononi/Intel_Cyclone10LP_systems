	component avs_hram_converter_TEST_advanced is
		port (
			clk_clk                      : in    std_logic                    := 'X';             -- clk
			hyperbus_clock_outclk        : out   std_logic;                                       -- outclk
			hyperbus_master_chipselect   : out   std_logic;                                       -- chipselect
			hyperbus_master_data         : inout std_logic_vector(7 downto 0) := (others => 'X'); -- data
			hyperbus_master_memory_reset : out   std_logic;                                       -- memory_reset
			hyperbus_master_strobe       : inout std_logic                    := 'X';             -- strobe
			leds_export                  : out   std_logic_vector(3 downto 0);                    -- export
			reset_reset_n                : in    std_logic                    := 'X';             -- reset_n
			switches_export              : in    std_logic_vector(3 downto 0) := (others => 'X')  -- export
		);
	end component avs_hram_converter_TEST_advanced;

	u0 : component avs_hram_converter_TEST_advanced
		port map (
			clk_clk                      => CONNECTED_TO_clk_clk,                      --             clk.clk
			hyperbus_clock_outclk        => CONNECTED_TO_hyperbus_clock_outclk,        --  hyperbus_clock.outclk
			hyperbus_master_chipselect   => CONNECTED_TO_hyperbus_master_chipselect,   -- hyperbus_master.chipselect
			hyperbus_master_data         => CONNECTED_TO_hyperbus_master_data,         --                .data
			hyperbus_master_memory_reset => CONNECTED_TO_hyperbus_master_memory_reset, --                .memory_reset
			hyperbus_master_strobe       => CONNECTED_TO_hyperbus_master_strobe,       --                .strobe
			leds_export                  => CONNECTED_TO_leds_export,                  --            leds.export
			reset_reset_n                => CONNECTED_TO_reset_reset_n,                --           reset.reset_n
			switches_export              => CONNECTED_TO_switches_export               --        switches.export
		);

