-- BRIEF DESCRIPTION: avs_to_blockram_converter execution unit
-- COMMENTS:
-- 8-bit addressing
-- 32-bit data
-- 11-bit burst lenght

library		IEEE;
use 			IEEE.std_logic_1164.all;
use 			IEEE.numeric_std.all;

entity avs_to_blockram_converter_EU is
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
end entity avs_to_blockram_converter_EU;

architecture rtl of avs_to_blockram_converter_EU is

  -- CONSTANTS ------------------------------------------------------------------------------------------------
  constant address_width  : integer := 8;
  constant data_width     : integer := 32;
  constant burst_width    : integer := 11;
  -------------------------------------------------------------------------------------------------------------

  -- COMPONENT: flip flop type D ------------------------------------------------------------------------------
  component d_flipflop is
  port
  (
    clk				: in 	std_logic;
    enable		: in 	std_logic;
    clear_n		: in 	std_logic;
    dff_in		: in 	std_logic;
    dff_out		: out std_logic := '0'
  );
  end component; ----------------------------------------------------------------------------------------------

  -- COMPONENT: register --------------------------------------------------------------------------------------
  component reg is
  generic
  (
    N : integer := 8
  );
  port
  (
    clk				: in 	std_logic;
    enable		: in 	std_logic;
    clear_n		: in 	std_logic;
    reg_in		: in 	std_logic_vector(N-1 downto 0);
    reg_out		: out std_logic_vector(N-1 downto 0) := (others => '0')
  );
  end component; ----------------------------------------------------------------------------------------------

  -- COMPONENT: multiplexer 2 inputs 1 output -----------------------------------------------------------------
  component mux_2to1 is
	generic
	(
		N : integer := 1
	);
	port
	(
		mux_in_0		: in		std_logic_vector((N-1) downto 0);
		mux_in_1		: in		std_logic_vector((N-1) downto 0);
		sel					: in 		std_logic;
		out_mux			: out 	std_logic_vector((N-1) downto 0)
	);
  end component; ----------------------------------------------------------------------------------------------

  -- COMPONENT: counter ---------------------------------------------------------------------------------------
  component counter_Nbit is
  generic
  (
    N	: integer := 4
  );
  port
  (
    clk				: in 		std_logic;
    enable		: in 		std_logic;
    clear_n		: in 		std_logic;
    cnt_out		: out 	std_logic_vector(N-1 downto 0)
  );
  end component; ----------------------------------------------------------------------------------------------

  -- COMPONENT: comparator ------------------------------------------------------------------------------------
  component comparator_Nbit is
  generic
  (
    N : integer := 1
  );
  port
  (
    cmp_in_0		: in		std_logic_vector((N-1) downto 0);
    cmp_in_1		: in		std_logic_vector((N-1) downto 0);
    cmp_equal 	: out 	std_logic
  );
  end component; ----------------------------------------------------------------------------------------------

  -- COMPONENT: incrementer -----------------------------------------------------------------------------------
  component incrementer_8bit_nopipe is
	port
	(
		dataa			: in  std_logic_vector (7 downto 0);
		result		: out std_logic_vector (7 downto 0)
	);
  end component; ----------------------------------------------------------------------------------------------

	-- SIGNALS --------------------------------------------------------------------------------------------------
	signal pipe1_out        : std_logic;
  signal cnt_out          : std_logic_vector(burst_width-1 downto 0);
  signal cmp1_out         : std_logic;
  signal incrementer_out  : std_logic_vector(address_width-1 downto 0);
  signal address_mux_out  : std_logic_vector(address_width-1 downto 0);
  signal address_reg_out  : std_logic_vector(address_width-1 downto 0);
	-------------------------------------------------------------------------------------------------------------
	
	begin
  
    -- readdatavalid pipe 1 -----------------------------------------------------------------------------------
    pipe1: d_flipflop
    port map
    (
      clk				=> clk,
      enable		=> '1', 
      clear_n		=> pipe_clear_n, 
      dff_in		=> readdatavalid, 
      dff_out		=> pipe1_out
    ); --------------------------------------------------------------------------------------------------------
    
    -- readdatavalid pipe 2 -----------------------------------------------------------------------------------
    pipe2: d_flipflop
    port map
    (
      clk				=> clk,
      enable		=> '1', 
      clear_n		=> pipe_clear_n, 
      dff_in		=> pipe1_out, 
      dff_out		=> avs_readdatavalid
    ); --------------------------------------------------------------------------------------------------------

    -- burst counter ------------------------------------------------------------------------------------------
    burst_cnt: counter_Nbit
    generic map
    (
      N => burst_width
    )
    port map
    (
      clk				=> clk,
      enable		=> cnt_enable,
      clear_n		=> cnt_clear_n,
      cnt_out		=> cnt_out
    ); --------------------------------------------------------------------------------------------------------

    -- burst comparator ---------------------------------------------------------------------------------------
    CMPB: comparator_Nbit
    generic map
    (
      N => burst_width
    )
    port map
    (
      cmp_in_0		=> cnt_out,
      cmp_in_1		=> avs_burstcount,
      cmp_equal		=> burstend
    ); --------------------------------------------------------------------------------------------------------

    -- burst operation comparator -----------------------------------------------------------------------------
    CMP1: comparator_Nbit
    generic map
    (
      N => burst_width
    )
    port map
    (
      cmp_in_0		=> avs_burstcount,
      cmp_in_1		=> "00000000001",
      cmp_equal		=> cmp1_out
    ); --------------------------------------------------------------------------------------------------------

    -- writedata register -------------------------------------------------------------------------------------
    writedata_reg: reg
    generic map
    (
      N => data_width
    )
    port map
    (
      clk				=> clk,
      enable		=> writedata_reg_enable,
      clear_n		=> '1',
      reg_in		=> avs_writedata, 
      reg_out		=> blockram_data
    ); --------------------------------------------------------------------------------------------------------

    -- address multiplexer ------------------------------------------------------------------------------------
    address_mux: mux_2to1
    generic map
    (
      N => address_width
    )
    port map
    (
      mux_in_0		=> avs_address,
      mux_in_1		=> incrementer_out,
      sel					=> address_sel,
      out_mux			=> address_mux_out
    ); --------------------------------------------------------------------------------------------------------

    -- address register ---------------------------------------------------------------------------------------
    address_reg: reg
    generic map
    (
      N => address_width
    )
    port map
    (
      clk				=> clk,
      enable		=> address_reg_enable,
      clear_n		=> '1',
      reg_in		=> address_mux_out, 
      reg_out		=> address_reg_out
    ); --------------------------------------------------------------------------------------------------------

    -- address incrementer ------------------------------------------------------------------------------------
    address_inc: incrementer_8bit_nopipe
    port map
    (
      dataa			=> address_reg_out,
      result		=> incrementer_out
    ); --------------------------------------------------------------------------------------------------------

    read <= avs_read;
    write <= avs_write;
    beginbursttransfer <= avs_beginbursttransfer;
		avs_waitrequest <= waitrequest;
    blockram_rden <= rden;
    blockram_wren <= wren;
    burst_op <= not cmp1_out;
    blockram_address <= address_reg_out;
    avs_readdata <= blockram_q;

end architecture rtl;
