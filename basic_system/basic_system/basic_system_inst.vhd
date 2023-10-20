	component basic_system is
		port (
			clk_clk         : in  std_logic                    := 'X';             -- clk
			reset_reset_n   : in  std_logic                    := 'X';             -- reset_n
			switches_export : in  std_logic_vector(3 downto 0) := (others => 'X'); -- export
			leds_export     : out std_logic_vector(3 downto 0)                     -- export
		);
	end component basic_system;

	u0 : component basic_system
		port map (
			clk_clk         => CONNECTED_TO_clk_clk,         --      clk.clk
			reset_reset_n   => CONNECTED_TO_reset_reset_n,   --    reset.reset_n
			switches_export => CONNECTED_TO_switches_export, -- switches.export
			leds_export     => CONNECTED_TO_leds_export      --     leds.export
		);

