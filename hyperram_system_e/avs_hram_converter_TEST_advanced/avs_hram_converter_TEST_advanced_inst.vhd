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

	u0 : component avs_hram_converter_TEST_advanced
		port map (
			clk_clk            => CONNECTED_TO_clk_clk,            --         clk.clk
			hyperbus_cs_n      => CONNECTED_TO_hyperbus_cs_n,      --    hyperbus.cs_n
			hyperbus_dq        => CONNECTED_TO_hyperbus_dq,        --            .dq
			hyperbus_reset_n   => CONNECTED_TO_hyperbus_reset_n,   --            .reset_n
			hyperbus_rwds      => CONNECTED_TO_hyperbus_rwds,      --            .rwds
			hyperbus_ck_outclk => CONNECTED_TO_hyperbus_ck_outclk, -- hyperbus_ck.outclk
			leds_export        => CONNECTED_TO_leds_export,        --        leds.export
			reset_reset_n      => CONNECTED_TO_reset_reset_n,      --       reset.reset_n
			switches_export    => CONNECTED_TO_switches_export     --    switches.export
		);

