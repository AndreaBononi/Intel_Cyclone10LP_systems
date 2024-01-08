	component avs_hram_converter_TEST_basic is
		port (
			clk_clk                      : in    std_logic                     := 'X';             -- clk
			reset_reset_n                : in    std_logic                     := 'X';             -- reset_n
			avalon_slave_address         : in    std_logic_vector(31 downto 0) := (others => 'X'); -- address
			avalon_slave_read            : in    std_logic                     := 'X';             -- read
			avalon_slave_readdata        : out   std_logic_vector(15 downto 0);                    -- readdata
			avalon_slave_write           : in    std_logic                     := 'X';             -- write
			avalon_slave_writedata       : in    std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
			avalon_slave_waitrequest     : out   std_logic;                                        -- waitrequest
			avalon_slave_readdatavalid   : out   std_logic;                                        -- readdatavalid
			avalon_slave_burstcount      : in    std_logic_vector(10 downto 0) := (others => 'X'); -- burstcount
			hyperbus_clock_outclk        : out   std_logic;                                        -- outclk
			hyperbus_master_chipselect   : out   std_logic;                                        -- chipselect
			hyperbus_master_data         : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- data
			hyperbus_master_memory_reset : out   std_logic;                                        -- memory_reset
			hyperbus_master_strobe       : inout std_logic                     := 'X'              -- strobe
		);
	end component avs_hram_converter_TEST_basic;

	u0 : component avs_hram_converter_TEST_basic
		port map (
			clk_clk                      => CONNECTED_TO_clk_clk,                      --             clk.clk
			reset_reset_n                => CONNECTED_TO_reset_reset_n,                --           reset.reset_n
			avalon_slave_address         => CONNECTED_TO_avalon_slave_address,         --    avalon_slave.address
			avalon_slave_read            => CONNECTED_TO_avalon_slave_read,            --                .read
			avalon_slave_readdata        => CONNECTED_TO_avalon_slave_readdata,        --                .readdata
			avalon_slave_write           => CONNECTED_TO_avalon_slave_write,           --                .write
			avalon_slave_writedata       => CONNECTED_TO_avalon_slave_writedata,       --                .writedata
			avalon_slave_waitrequest     => CONNECTED_TO_avalon_slave_waitrequest,     --                .waitrequest
			avalon_slave_readdatavalid   => CONNECTED_TO_avalon_slave_readdatavalid,   --                .readdatavalid
			avalon_slave_burstcount      => CONNECTED_TO_avalon_slave_burstcount,      --                .burstcount
			hyperbus_clock_outclk        => CONNECTED_TO_hyperbus_clock_outclk,        --  hyperbus_clock.outclk
			hyperbus_master_chipselect   => CONNECTED_TO_hyperbus_master_chipselect,   -- hyperbus_master.chipselect
			hyperbus_master_data         => CONNECTED_TO_hyperbus_master_data,         --                .data
			hyperbus_master_memory_reset => CONNECTED_TO_hyperbus_master_memory_reset, --                .memory_reset
			hyperbus_master_strobe       => CONNECTED_TO_hyperbus_master_strobe        --                .strobe
		);

