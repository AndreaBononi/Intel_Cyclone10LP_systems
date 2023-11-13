-- BRIEF DESCRIPTION: converter between Avalon Memory-Mapped and Intel FPGA single-port blockram
-- COMMENTS:
-- burst operations supported
-- 8-bit addressing
-- 32-bit data
-- 11-bit burst lenght

library   ieee;
use       ieee.std_logic_1164.all;
use       ieee.numeric_std.all;

entity avs_to_blockram_converter is
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
	avs_address               : in    std_logic_vector(7 downto 0);
	avs_writedata             : in    std_logic_vector(31 downto 0);
	avs_readdata              : out   std_logic_vector(31 downto 0);
	avs_burstcount						: in  	std_logic_vector(10 downto 0);
	avs_beginbursttransfer		: in  	std_logic;
	-- blockram signals:
	blockram_rden             : out   std_logic;
	blockram_wren             : out   std_logic;
	blockram_address          : out   std_logic_vector(7 downto 0);
	blockram_data             : out   std_logic_vector(31 downto 0);
	blockram_q                : in    std_logic_vector(31 downto 0)
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
    -- control signals:
    rden                      : out   std_logic;
    wren                      : out   std_logic;
    waitrequest               : out   std_logic;
    readdatavalid             : out   std_logic;
    cnt_enable                : out   std_logic;
    cnt_clear_n               : out   std_logic;
    address_sel               : out   std_logic;
    inc_disable               : out   std_logic;
    address_reg_enable        : out   std_logic;
    writedata_reg_enable      : out   std_logic;
    pipe_clear_n              : out   std_logic;
    -- status signals:
    read                      : in    std_logic;
    write                     : in    std_logic;
    beginbursttransfer        : in    std_logic;
    burstend                  : in    std_logic;
    burst_op                  : in    std_logic
  );
  end component; -------------------------------------------------------------------------------------------------------------------

  -- COMPONENT: execution unit -----------------------------------------------------------------------------------------------------
  component avs_to_blockram_converter_EU is
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
    avs_address               : in    std_logic_vector(7 downto 0);
    avs_writedata             : in    std_logic_vector(31 downto 0);
    avs_readdata              : out   std_logic_vector(31 downto 0);
    avs_burstcount						: in  	std_logic_vector(10 downto 0);
    avs_beginbursttransfer		: in  	std_logic;
    -- blockram signals:
    blockram_rden             : out   std_logic;
    blockram_wren             : out   std_logic;
    blockram_address          : out   std_logic_vector(7 downto 0);
    blockram_data             : out   std_logic_vector(31 downto 0);
    blockram_q                : in    std_logic_vector(31 downto 0);
    -- control signals:
    rden                      : in    std_logic;
    wren                      : in    std_logic;
    waitrequest               : in    std_logic;
    readdatavalid             : in    std_logic;
    cnt_enable                : in    std_logic;
    cnt_clear_n               : in    std_logic;
    address_sel               : in    std_logic;
    inc_disable               : in    std_logic;
    address_reg_enable        : in    std_logic;
    writedata_reg_enable      : in    std_logic;
    pipe_clear_n              : in    std_logic;
    -- status signals:
    read                      : out   std_logic;
    write                     : out   std_logic;
    beginbursttransfer        : out   std_logic;
    burstend                  : out   std_logic;
    burst_op                  : out   std_logic
  );
  end component; -------------------------------------------------------------------------------------------------------------------

  -- SIGNALS -----------------------------------------------------------------------------------------------------------------------
  -- control signals:
  signal rden                      : std_logic;
  signal wren                      : std_logic;
  signal waitrequest               : std_logic;
  signal readdatavalid             : std_logic;
  signal cnt_enable                : std_logic;
  signal cnt_clear_n               : std_logic;
  signal address_sel               : std_logic;
  signal inc_disable               : std_logic;
  signal address_reg_enable        : std_logic;
  signal writedata_reg_enable      : std_logic;
  signal pipe_clear_n              : std_logic;
  -- status signals:
  signal read                      : std_logic;
  signal write                     : std_logic;
  signal beginbursttransfer        : std_logic;
  signal burstend                  : std_logic;
  signal burst_op                  : std_logic;
  ----------------------------------------------------------------------------------------------------------------------------------

	begin

    -- execution unit --------------------------------------------------------------------------------------------------------------
		EU: avs_to_blockram_converter_EU
    port map
    (
      clk                       => clk,
      rst_n											=> rst_n,
      avs_read                  => avs_read,
      avs_write                 => avs_write,
      avs_waitrequest           => avs_waitrequest,
      avs_readdatavalid         => avs_readdatavalid,
      avs_address               => avs_address,
      avs_writedata             => avs_writedata,
      avs_readdata              => avs_readdata,
      avs_burstcount						=> avs_burstcount,
      avs_beginbursttransfer	  => avs_beginbursttransfer,
      blockram_rden             => blockram_rden,
      blockram_wren             => blockram_wren,
      blockram_address          => blockram_address,
      blockram_data             => blockram_data,
      blockram_q                => blockram_q,
      rden                      => rden,
      wren                      => wren,
      waitrequest               => waitrequest,
      readdatavalid             => readdatavalid,
      cnt_enable                => cnt_enable,
      cnt_clear_n               => cnt_clear_n,
      address_sel               => address_sel,
      inc_disable               => inc_disable,
      address_reg_enable        => address_reg_enable,
      writedata_reg_enable      => writedata_reg_enable,
      pipe_clear_n              => pipe_clear_n,
      read                      => read,
      write                     => write,
      beginbursttransfer        => beginbursttransfer,
      burstend                  => burstend,
      burst_op                  => burst_op
    ); -----------------------------------------------------------------------------------------------------------------------------

    -- control unit ----------------------------------------------------------------------------------------------------------------
		CU: avs_to_blockram_converter_CU
    port map
    (
      clk                       => clk,
      rst_n											=> rst_n,
      rden                      => rden,
      wren                      => wren,
      waitrequest               => waitrequest,
      readdatavalid             => readdatavalid,
      cnt_enable                => cnt_enable,
      cnt_clear_n               => cnt_clear_n,
      address_sel               => address_sel,
      inc_disable               => inc_disable,
      address_reg_enable        => address_reg_enable,
      writedata_reg_enable      => writedata_reg_enable,
      pipe_clear_n              => pipe_clear_n,
      read                      => read,
      write                     => write,
      beginbursttransfer        => beginbursttransfer,
      burstend                  => burstend,
      burst_op                  => burst_op
    ); -----------------------------------------------------------------------------------------------------------------------------

end rtl;
