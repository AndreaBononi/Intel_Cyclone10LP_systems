	component avs_hram_converter_TEST is
		port (
			avalon_slave_address             : in    std_logic_vector(31 downto 0) := (others => 'X'); -- address
			avalon_slave_read                : in    std_logic                     := 'X';             -- read
			avalon_slave_readdata            : out   std_logic_vector(15 downto 0);                    -- readdata
			avalon_slave_write               : in    std_logic                     := 'X';             -- write
			avalon_slave_writedata           : in    std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
			avalon_slave_waitrequest         : out   std_logic;                                        -- waitrequest
			avalon_slave_readdatavalid       : out   std_logic;                                        -- readdatavalid
			avalon_slave_burstcount          : in    std_logic_vector(10 downto 0) := (others => 'X'); -- burstcount
			hyperbus_data                    : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- data
			hyperbus_chipselect_n            : out   std_logic;                                        -- chipselect_n
			hyperbus_localreset_n            : out   std_logic;                                        -- localreset_n
			hyperbus_strobe_to_memory        : in    std_logic                     := 'X';             -- strobe_to_memory
			hyperbus_shiftedstrobe_to_memory : in    std_logic                     := 'X';             -- shiftedstrobe_to_memory
			hyperbus_strobe_from_memory      : out   std_logic;                                        -- strobe_from_memory
			clk_clk                          : in    std_logic                     := 'X';             -- clk
			hbus_clock_outclk                : out   std_logic;                                        -- outclk
			reset_n_reset_n                  : in    std_logic                     := 'X'              -- reset_n
		);
	end component avs_hram_converter_TEST;

	u0 : component avs_hram_converter_TEST
		port map (
			avalon_slave_address             => CONNECTED_TO_avalon_slave_address,             -- avalon_slave.address
			avalon_slave_read                => CONNECTED_TO_avalon_slave_read,                --             .read
			avalon_slave_readdata            => CONNECTED_TO_avalon_slave_readdata,            --             .readdata
			avalon_slave_write               => CONNECTED_TO_avalon_slave_write,               --             .write
			avalon_slave_writedata           => CONNECTED_TO_avalon_slave_writedata,           --             .writedata
			avalon_slave_waitrequest         => CONNECTED_TO_avalon_slave_waitrequest,         --             .waitrequest
			avalon_slave_readdatavalid       => CONNECTED_TO_avalon_slave_readdatavalid,       --             .readdatavalid
			avalon_slave_burstcount          => CONNECTED_TO_avalon_slave_burstcount,          --             .burstcount
			hyperbus_data                    => CONNECTED_TO_hyperbus_data,                    --     hyperbus.data
			hyperbus_chipselect_n            => CONNECTED_TO_hyperbus_chipselect_n,            --             .chipselect_n
			hyperbus_localreset_n            => CONNECTED_TO_hyperbus_localreset_n,            --             .localreset_n
			hyperbus_strobe_to_memory        => CONNECTED_TO_hyperbus_strobe_to_memory,        --             .strobe_to_memory
			hyperbus_shiftedstrobe_to_memory => CONNECTED_TO_hyperbus_shiftedstrobe_to_memory, --             .shiftedstrobe_to_memory
			hyperbus_strobe_from_memory      => CONNECTED_TO_hyperbus_strobe_from_memory,      --             .strobe_from_memory
			clk_clk                          => CONNECTED_TO_clk_clk,                          --          clk.clk
			hbus_clock_outclk                => CONNECTED_TO_hbus_clock_outclk,                --   hbus_clock.outclk
			reset_n_reset_n                  => CONNECTED_TO_reset_n_reset_n                   --      reset_n.reset_n
		);

