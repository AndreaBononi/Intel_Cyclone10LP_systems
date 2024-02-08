-- avs_hram_converter_TEST_basic.vhd

-- Generated using ACDS version 22.1 917

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity avs_hram_converter_TEST_basic is
	port (
		avalon_slave_address         : in    std_logic_vector(22 downto 0) := (others => '0'); --    avalon_slave.address
		avalon_slave_read            : in    std_logic                     := '0';             --                .read
		avalon_slave_readdata        : out   std_logic_vector(15 downto 0);                    --                .readdata
		avalon_slave_write           : in    std_logic                     := '0';             --                .write
		avalon_slave_writedata       : in    std_logic_vector(15 downto 0) := (others => '0'); --                .writedata
		avalon_slave_waitrequest     : out   std_logic;                                        --                .waitrequest
		avalon_slave_readdatavalid   : out   std_logic;                                        --                .readdatavalid
		avalon_slave_burstcount      : in    std_logic_vector(10 downto 0) := (others => '0'); --                .burstcount
		clk_clk                      : in    std_logic                     := '0';             --             clk.clk
		hyperbus_clock_outclk        : out   std_logic;                                        --  hyperbus_clock.outclk
		hyperbus_master_chipselect   : out   std_logic;                                        -- hyperbus_master.chipselect
		hyperbus_master_data         : inout std_logic_vector(7 downto 0)  := (others => '0'); --                .data
		hyperbus_master_memory_reset : out   std_logic;                                        --                .memory_reset
		hyperbus_master_strobe       : inout std_logic                     := '0';             --                .strobe
		reset_reset_n                : in    std_logic                     := '0'              --           reset.reset_n
	);
end entity avs_hram_converter_TEST_basic;

architecture rtl of avs_hram_converter_TEST_basic is
	component avs_hram_converter_TEST_basic_avs_hram_converter is
		port (
			avalon_slave_address         : in    std_logic_vector(22 downto 0) := (others => 'X'); -- address
			avalon_slave_read            : in    std_logic                     := 'X';             -- read
			avalon_slave_readdata        : out   std_logic_vector(15 downto 0);                    -- readdata
			avalon_slave_write           : in    std_logic                     := 'X';             -- write
			avalon_slave_writedata       : in    std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
			avalon_slave_waitrequest     : out   std_logic;                                        -- waitrequest
			avalon_slave_readdatavalid   : out   std_logic;                                        -- readdatavalid
			avalon_slave_burstcount      : in    std_logic_vector(10 downto 0) := (others => 'X'); -- burstcount
			clk_clk                      : in    std_logic                     := 'X';             -- clk
			hyperbus_clock_outclk        : out   std_logic;                                        -- outclk
			hyperbus_master_chipselect   : out   std_logic;                                        -- chipselect
			hyperbus_master_data         : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- data
			hyperbus_master_memory_reset : out   std_logic;                                        -- memory_reset
			hyperbus_master_strobe       : inout std_logic                     := 'X';             -- strobe
			reset_reset_n                : in    std_logic                     := 'X'              -- reset_n
		);
	end component avs_hram_converter_TEST_basic_avs_hram_converter;

begin

	avs_hram_converter : component avs_hram_converter_TEST_basic_avs_hram_converter
		port map (
			avalon_slave_address         => avalon_slave_address,         --    avalon_slave.address
			avalon_slave_read            => avalon_slave_read,            --                .read
			avalon_slave_readdata        => avalon_slave_readdata,        --                .readdata
			avalon_slave_write           => avalon_slave_write,           --                .write
			avalon_slave_writedata       => avalon_slave_writedata,       --                .writedata
			avalon_slave_waitrequest     => avalon_slave_waitrequest,     --                .waitrequest
			avalon_slave_readdatavalid   => avalon_slave_readdatavalid,   --                .readdatavalid
			avalon_slave_burstcount      => avalon_slave_burstcount,      --                .burstcount
			clk_clk                      => clk_clk,                      --             clk.clk
			hyperbus_clock_outclk        => hyperbus_clock_outclk,        --  hyperbus_clock.outclk
			hyperbus_master_chipselect   => hyperbus_master_chipselect,   -- hyperbus_master.chipselect
			hyperbus_master_data         => hyperbus_master_data,         --                .data
			hyperbus_master_memory_reset => hyperbus_master_memory_reset, --                .memory_reset
			hyperbus_master_strobe       => hyperbus_master_strobe,       --                .strobe
			reset_reset_n                => reset_reset_n                 --           reset.reset_n
		);

end architecture rtl; -- of avs_hram_converter_TEST_basic
