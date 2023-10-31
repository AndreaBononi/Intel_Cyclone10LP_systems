library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- converter between Avalon Memory-Mapped and Intel FPGA single-port blockram

------------------------------------------------------------------------------------------------------------------------------------

entity avs_to_blockram_converter is
  generic
  (
    N_address                 : integer := 16;
    N_data                    : integer := 16
  );
	port
	(
    -- clock and reset:
    clk                       : in    std_logic;
    rst_n											: in    std_logic;
    -- amv signals:
    avs_read                  : in    std_logic;
    avs_write                 : in    std_logic;
    avs_waitrequest           : out   std_logic;
    avs_readdatavalid         : out   std_logic;
    avs_address               : in    std_logic_vector(N_address-1 downto 0);
    avs_writedata             : in    std_logic_vector(N_data-1 downto 0);
    avs_readdata              : out   std_logic_vector(N_data-1 downto 0);
    -- blockram signals:
    blockram_rden             : out   std_logic;
    blockram_wren             : out   std_logic;
    blockram_address          : out   std_logic_vector(N_address-1 downto 0);
    blockram_data             : out   std_logic_vector(N_data-1 downto 0);
    blockram_q                : in    std_logic_vector(N_data-1 downto 0)
	);
end avs_to_blockram_converter;

------------------------------------------------------------------------------------------------------------------------------------

architecture rtl of avs_to_blockram_converter is

  -- control unit ------------------------------------------------------------------------------------------------------------------
  component avs_to_blockram_converter_CU is
  	port
  	(
      -- clock and reset:
      clk                       : in    std_logic;
  		rst_n											: in    std_logic;
  		-- status signals:
      avs_read                  : in    std_logic;
      avs_write                 : in    std_logic;
  		-- control signals:
      avs_waitrequest           : out   std_logic;
      avs_readdatavalid         : out   std_logic;
      blockram_rden             : out   std_logic;
      blockram_wren             : out   std_logic;
      address_enable            : out   std_logic;
      writedata_enable          : out   std_logic;
      readdata_enable           : out   std_logic
  	);
  end component;

  -- register ----------------------------------------------------------------------------------------------------------------------
  component reg is
  	generic
  	(
  		N 				: integer := 8
  	);
  	port
  	(
  		clk				: in 	std_logic;
  		enable		: in 	std_logic;
  		clear_n		: in 	std_logic;
  		reg_in		: in 	std_logic_vector(N-1 downto 0);
  		reg_out		: out std_logic_vector(N-1 downto 0)
  	);
  end component;

  -- internal signals --------------------------------------------------------------------------------------------------------------
  signal address_enable     : std_logic;
  signal writedata_enable   : std_logic;
  signal readdata_enable    : std_logic;

	begin

		CU: avs_to_blockram_converter_CU
    port map
    (
      clk,
      rst_n,
      avs_read,
      avs_write,
      avs_waitrequest,
      avs_readdatavalid,
      blockram_rden,
      blockram_wren,
      address_enable,
      writedata_enable,
      readdata_enable
    );

    address_reg     : reg generic map(N_address) port map(clk, address_enable, '1', avs_address, blockram_address);
    readdata_reg    : reg generic map(N_data) port map(clk, readdata_enable, '1', blockram_q, avs_readdata);
    writedata_reg   : reg generic map(N_data) port map(clk, writedata_enable, '1', avs_writedata, blockram_data);


end rtl;

------------------------------------------------------------------------------------------------------------------------------------