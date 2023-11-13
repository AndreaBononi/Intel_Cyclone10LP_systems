-- BRIEF DESCRIPTION: converter between Avalon Memory-Mapped and Intel FPGA single-port blockram 

library   ieee;
use       ieee.std_logic_1164.all;
use       ieee.numeric_std.all;

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
  -- avs signals:
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

architecture rtl of avs_to_blockram_converter is

  -- COMPONENT: control unit --------------------------------------------------------------------------------------------------------
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
  end component; -------------------------------------------------------------------------------------------------------------------

  -- COMPONENT: register -----------------------------------------------------------------------------------------------------------
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
  end component; -------------------------------------------------------------------------------------------------------------------

  -- SIGNALS -----------------------------------------------------------------------------------------------------------------------
  signal address_enable     : std_logic;
  signal writedata_enable   : std_logic;
  signal readdata_enable    : std_logic;
  ----------------------------------------------------------------------------------------------------------------------------------

	begin

    -- CU --------------------------------------------------------------------------------------------------------------------------
		CU: avs_to_blockram_converter_CU
    port map
    (
      clk                 => clk,
      rst_n               => rst_n,
      avs_read            => avs_read,
      avs_write           => avs_write,
      avs_waitrequest     => avs_waitrequest,
      avs_readdatavalid   => avs_readdatavalid,
      blockram_rden       => blockram_rden,
      blockram_wren       => blockram_wren,
      address_enable      => address_enable,
      writedata_enable    => writedata_enable,
      readdata_enable     => readdata_enable
    ); -----------------------------------------------------------------------------------------------------------------------------

    -- address register ------------------------------------------------------------------------------------------------------------
    address_reg: reg 
    generic map
    (
      N         => N_address
    ) 
    port map
    (
      clk       => clk, 
      enable    => address_enable, 
      clear_n   => '1', 
      reg_in    => avs_address, 
      reg_out   => blockram_address
    ); ----------------------------------------------------------------------------------------------------------------------------

    -- readdata register ----------------------------------------------------------------------------------------------------------
    readdata_reg: reg 
    generic map
    (
      N         => N_data
    ) 
    port map
    (
      clk       => clk, 
      enable    => readdata_enable, 
      clear_n   => '1', 
      reg_in    => blockram_q, 
      reg_out   => avs_readdata
    ); ----------------------------------------------------------------------------------------------------------------------------

    -- readdata register ----------------------------------------------------------------------------------------------------------
    writedata_reg: reg 
    generic map
    (
      N         => N_data
    ) 
    port map
    (
      clk       => clk, 
      enable    => writedata_enable, 
      clear_n   => '1', 
      reg_in    => avs_writedata, 
      reg_out   => blockram_data
    ); ----------------------------------------------------------------------------------------------------------------------------  

end rtl;
