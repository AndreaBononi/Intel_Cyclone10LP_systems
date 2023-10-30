	component basic_system is
		port (
			clk_clk           : in  std_logic                    := 'X';             -- clk
			leds_export       : out std_logic_vector(3 downto 0);                    -- export
			reset_reset_n     : in  std_logic                    := 'X';             -- reset_n
			rst_switch_export : in  std_logic                    := 'X';             -- export
			switches_export   : in  std_logic_vector(3 downto 0) := (others => 'X')  -- export
		);
	end component basic_system;

	u0 : component basic_system
		port map (
			clk_clk           => CONNECTED_TO_clk_clk,           --        clk.clk
			leds_export       => CONNECTED_TO_leds_export,       --       leds.export
			reset_reset_n     => CONNECTED_TO_reset_reset_n,     --      reset.reset_n
			rst_switch_export => CONNECTED_TO_rst_switch_export, -- rst_switch.export
			switches_export   => CONNECTED_TO_switches_export    --   switches.export
		);

