-- BRIEF DESCRIPTION: execution unit of the AvalonMM - hyperram converter

library   ieee;
use       ieee.std_logic_1164.all;
use       ieee.numeric_std.all;

entity avs_to_hram_converter_EU is
generic
(
  hybrid_burst_enable						: std_logic := '1';
  burst_lenght									: std_logic_vector(1 downto 0) := "11";
  initial_latency								: std_logic_vector(3 downto 0) := "0001";
  drive_strength								: std_logic_vector(2 downto 0) := "000";
  distributed_refresh_interval	: std_logic_vector(1 downto 0) := "10"
);
port
(
  clk                           : in    std_logic;
	reset_n                       : in    std_logic;
	-- avs signals
	avs_address                   : in    std_logic_vector(31 downto 0);
	avs_read                      : in    std_logic;
	avs_readdata                  : out   std_logic_vector(15 downto 0);
	avs_write                     : in    std_logic;
	avs_writedata                 : in    std_logic_vector(15 downto 0);
	avs_waitrequest               : out   std_logic;
	avs_readdatavalid             : out   std_logic;
	avs_burstcount                : in    std_logic_vector(10 downto 0);
	-- hram signals 	
	hram_RESET_n                  : out   std_logic;
	hram_CK                       : out   std_logic;
  hram_CK_n                     : out   std_logic;
	hram_DQ                       : inout std_logic_vector(7 downto 0);
	hram_RWDS_out                 : out   std_logic;
  hram_RWDS_in                  : in    std_logic;
  hram_RWDS_in_90shift          : in    std_logic;
	hram_CS_n                     : out   std_logic;
  -- control signals
  waitrequest                   : in    std_logic;
  force_valid                   : in    std_logic;
  cmd_load                      : in    std_logic;
  dpd_req_clear_n               : in    std_logic;
  synch_cnt_enable              : in    std_logic;
  synch_cnt_down                : in    std_logic;
  synch_cnt_clear_n             : in    std_logic;
  datain_load                   : in    std_logic;
  avs_out_sel                   : in    std_logic;
  reset_config_register_n       : in    std_logic;
  update_config_register        : in    std_logic;
  address_space_sel             : in    std_logic_vector(1 downto 0);
  config_access                 : in    std_logic;
  read_writeN                   : in    std_logic;
  CA_load                       : in    std_logic;
  CA_sel                        : in    std_logic_vector(1 downto 0);
  dq_sel                        : in    std_logic_vector(1 downto 0);
  dq_OE                         : in    std_logic;
  writedata_load                : in    std_logic;
  addressgen_enable             : in    std_logic;
  synch_enable                  : in    std_logic;
  synch_clear_n                 : in    std_logic;
  RWDS_sampling_enable          : in    std_logic;  
  init_clear_n                  : in    std_logic;
  set_initialization_state      : in    std_logic;
  check_latency	                : in	  std_logic;
  force_RWDS_low                : in	  std_logic;
  hCK_gating_enable_n           : in    std_logic;
  set_dpd_status                : in    std_logic;
  clear_dpd_status_n            : in    std_logic;
  deadline_tim_enable           : in    std_logic;
  deadline_tim_clear_n          : in    std_logic;
  hCKen_pipe_clear_n            : in    std_logic;
  hbus_RESET_n                  : in    std_logic;
  hbus_CS_n                     : in    std_logic;	
  -- status signals
  write                         : out   std_logic;
  read                          : out   std_logic;
  config                        : out   std_logic;
  dpd_req                       : out   std_logic;
  active_dpd_req                : out   std_logic;
  current_operation             : out   std_logic;
  bursttransfer                 : out   std_logic;
  burst_end                     : out   std_logic;
  synch_busy                    : out   std_logic;
  init                          : out   std_logic;
  doubled_latency					      : out		std_logic;
  dpd_mode_on                   : out   std_logic;
	t_acc1	                      : out   std_logic;
	t_acc2	                      : out   std_logic;
  t_dpdcsl                      : out   std_logic;
  t_dpdin                       : out   std_logic;
  t_dpdout                      : out   std_logic
);
end avs_to_hram_converter_EU;

architecture rtl of avs_to_hram_converter_EU is

  -- COMPONENT: flipflop set-reset ---------------------------------------------------------------------------------- 
  component sr_flipflop is
  port
  (
    clk				: in std_logic;
    set				: in std_logic;
    clear_n		: in std_logic;
    rst_n			: in std_logic;
    dout			: out std_logic
  );
  end component; ---------------------------------------------------------------------------------------------------- 

  -- COMPONENT: flipflop type D ------------------------------------------------------------------------------------- 
  component d_flipflop is
  port
  (
    clk				: in 	std_logic;
    enable		: in 	std_logic;
    clear_n		: in 	std_logic;	-- synchronous clear, active low
    reset_n		: in	std_logic;	-- asynchronous reset, active low
    din				: in 	std_logic;
    dout			: out std_logic
  );
  end component; ---------------------------------------------------------------------------------------------------- 

  -- COMPONENT: register -------------------------------------------------------------------------------------------- 
  component reg is
  generic
  (
    N : integer := 8
  );
  port
  (
    clk				: in 	std_logic;
    enable		: in 	std_logic;
    clear_n		: in 	std_logic;	-- synchronous clear, active low
    reset_n		:	in	std_logic;	-- asynchronous clear, active low
    din				: in 	std_logic_vector(N-1 downto 0);
    dout			: out std_logic_vector(N-1 downto 0) := (others => '0')
  );
  end component; ---------------------------------------------------------------------------------------------------- 

  -- COMPONENT: multiplexer 2-inputs 1-output ----------------------------------------------------------------------- 
  component mux_2to1 is
  generic
  (
    N : integer := 1
  );
  port
  (
    din_0		: in	std_logic_vector((N-1) downto 0);
    din_1		: in	std_logic_vector((N-1) downto 0);
    sel			: in 	std_logic;
    dout		: out std_logic_vector((N-1) downto 0)
  );
  end component; ---------------------------------------------------------------------------------------------------- 

  -- COMPONENT: multiplexer 4-inputs 1-output ----------------------------------------------------------------------- 
  component mux_4to1 is
  generic
  (
    N : integer := 1
  );
  port
  (
    din_00		: in		std_logic_vector((N-1) downto 0);
    din_01		: in		std_logic_vector((N-1) downto 0);
    din_10		: in		std_logic_vector((N-1) downto 0);
    din_11		: in		std_logic_vector((N-1) downto 0);
    sel				: in 		std_logic_vector(1 downto 0);
    dout			: out 	std_logic_vector((N-1) downto 0)
  );
  end component; ---------------------------------------------------------------------------------------------------- 

  -- COMPONENT: comparator ------------------------------------------------------------------------------------------ 
  component comparator_Nbit is
  generic
  (
    N : integer := 1
  );
  port
  (
    din_0		: in		std_logic_vector((N-1) downto 0);
    din_1		: in		std_logic_vector((N-1) downto 0);
    equal 	: out 	std_logic
  );
  end component; ---------------------------------------------------------------------------------------------------- 

  -- COMPONENT: timer ----------------------------------------------------------------------------------------------- 
  component timer_14bit is
  port
  (
    clk				  : in 	std_logic;
    enable		  : in 	std_logic;
    clear_n		  : in 	std_logic;
    tim_3			  : out std_logic;
    tim_7			  : out std_logic;
    tim_21		  : out std_logic;
    tim_1000    : out std_logic;
    tim_15000		: out std_logic
  );
  end component; ---------------------------------------------------------------------------------------------------- 

  -- COMPONENT: DDR to SDR converter -------------------------------------------------------------------------------- 
  component DDR_to_SDR_converter is
  port
  (
    clk       : in 	std_logic;
    enable		: in 	std_logic;
    DDR_in		: in 	std_logic_vector(7 downto 0);
    SDR_out		: out std_logic_vector(15 downto 0)
  );
  end component; ---------------------------------------------------------------------------------------------------- 

  -- COMPONENT: SDR to DDR converter -------------------------------------------------------------------------------- 
  component SDR_to_DDR_converter is
  port
  (
    clk       : in 	std_logic;
    load  		: in 	std_logic;
    SDR_in 		: in 	std_logic_vector(15 downto 0);
    DDR_out	  : out std_logic_vector(7 downto 0)
  );
  end component; ---------------------------------------------------------------------------------------------------- 

  -- COMPONENT: CA builder ------------------------------------------------------------------------------------------ 
  component CA_builder is
  port
  (
    read_writeN   : in 	std_logic;
    config_access : in 	std_logic;
    address       : in  std_logic_vector(31 downto 0);
    CA            : out std_logic_vector(47 downto 0)
  );
  end component; ---------------------------------------------------------------------------------------------------- 

  -- COMPONENT: CA unpacker ----------------------------------------------------------------------------------------- 
  component CA_unpacker is
  port
  (
    clk           : in 	std_logic;
    load  		    : in 	std_logic;
    sel	  		    : in 	std_logic_vector(1 downto 0);
    CA_packed 		: in 	std_logic_vector(47 downto 0);
    CA_unpacked	  : out std_logic_vector(15 downto 0)
  );
  end component; ---------------------------------------------------------------------------------------------------- 

  -- COMPONENT: configuration registers builder --------------------------------------------------------------------- 
  component conf_builder is
  generic
  (
    hybrid_burst_enable						: std_logic := '1';
    burst_lenght									: std_logic_vector(1 downto 0) := "11";
    initial_latency								: std_logic_vector(3 downto 0) := "0001";
    drive_strength								: std_logic_vector(2 downto 0) := "000";
    distributed_refresh_interval	: std_logic_vector(1 downto 0) := "10"
  );
  port
  (
    conf_virtual  : in 	std_logic_vector(1 downto 0);
    conf0_real    : out std_logic_vector(15 downto 0);
    conf1_real    : out std_logic_vector(15 downto 0)
  );
  end component; ---------------------------------------------------------------------------------------------------- 

  -- COMPONENT: clock gater ----------------------------------------------------------------------------------------- 
  component clkctrl is
	port 
  (
		inclk   : in  std_logic := '0';
		ena     : in  std_logic := '0';   -- synchronous with the FALLING EDGE of inclk
		outclk  : out std_logic
	);
  end component; ---------------------------------------------------------------------------------------------------- 

  -- COMPONENT: synchronizer ---------------------------------------------------------------------------------------- 
  component synchronizer is
  port
  (
    clk                       : in    std_logic;
    rst_n											: in    std_logic;
    synch_enable              : in		std_logic;
    synch_clear_n             : in		std_logic;
    synch_strobe              : in		std_logic;
    synch_validout            : out		std_logic;
    synch_busy                : out		std_logic;
    synch_din                 : in		std_logic_vector(15 downto 0);
    synch_dout                : out		std_logic_vector(15 downto 0);
    burstcount                : in		std_logic_vector(10 downto 0);
    counter_enable						: in    std_logic;
    counter_clear_n						: in    std_logic;
    counter_up_downN					: in    std_logic;
    counter_out								: out		std_logic_vector(10 downto 0)
  );
  end component; ---------------------------------------------------------------------------------------------------- 

  -- COMPONENT: tristate buffer ------------------------------------------------------------------------------------- 
  component tristate_buffer is
  generic
  (
    N : integer := 8
  );
  port
  (
    enable		: in 	std_logic;
    din   		: in 	std_logic_vector(N-1 downto 0);
    dout  		: out std_logic_vector(N-1 downto 0)
  );
  end component; ---------------------------------------------------------------------------------------------------- 

  -- COMPONENT: DLL with 90° delay ----------------------------------------------------------------------------------
  component dll_90 is
	port
	(
		areset		: in  std_logic;
		inclk0		: in  std_logic;
		c0				: out std_logic 
	);
  end component; ----------------------------------------------------------------------------------------------------

  -- COMPONENT: 90° delayer -----------------------------------------------------------------------------------------
  component delayer_90 is
	port
	(
		din		: in  std_logic;
		dout	: out std_logic 
	);
  end component; ----------------------------------------------------------------------------------------------------

  -- COMPONENT: 360° delayer ----------------------------------------------------------------------------------------
  component delayer_360 is
	port
	(
		din		: in  std_logic;
		dout	: out std_logic 
	);
  end component; ----------------------------------------------------------------------------------------------------

  -- COMPONENT: adder 22-bit 1-pipe ---------------------------------------------------------------------------------
  component adder_22bit_1pipe is
	port
	(
		clken		: in  std_logic ;
		clock		: in  std_logic ;
		dataa		: in  std_logic_vector (21 downto 0);
		datab		: in  std_logic_vector (21 downto 0);
		result	: out std_logic_vector (21 downto 0)
	);
  end component; ----------------------------------------------------------------------------------------------------

  -- CONSTANTS ------------------------------------------------------------------------------------------------------ 
  constant config0_addr: std_logic_vector(31 downto 0) := "00000000000000000000100000000000";
	constant config1_addr: std_logic_vector(31 downto 0) := "00000000000000000000100000000001";
  ------------------------------------------------------------------------------------------------------------------- 

  -- SIGNALS -------------------------------------------------------------------------------------------------------- 
  signal dll_reset          : std_logic;
  signal clk90              : std_logic;
  signal clk_gater_outclk   : std_logic;
	signal hCK_enable					: std_logic;
  signal synch_cnt_up_downN : std_logic;
  signal burst_detector_out : std_logic;
  signal synch_validout     : std_logic;
  signal conf_reg_out       : std_logic_vector(1 downto 0);
  signal burstcnt_reg_out   : std_logic_vector(10 downto 0);
  signal addr_reg_out       : std_logic_vector(31 downto 0);
  signal datain_reg_out     : std_logic_vector(15 downto 0);
  signal conf0_real         : std_logic_vector(15 downto 0);
  signal conf1_real         : std_logic_vector(15 downto 0);
  signal dq_mux_out         : std_logic_vector(15 downto 0);
  signal CA_unpacked        : std_logic_vector(15 downto 0);
  signal addressgen_out     : std_logic_vector(21 downto 0);
  signal generated_address  : std_logic_vector(31 downto 0);
  signal effective_address  : std_logic_vector(31 downto 0);
  signal CA                 : std_logic_vector(47 downto 0);
  signal readdata_SDR       : std_logic_vector(15 downto 0);
  signal synch_dout         : std_logic_vector(15 downto 0);
  signal synch_cnt_out      : std_logic_vector(10 downto 0);
  signal readdatamux_din0   : std_logic_vector(15 downto 0);
  signal cntpipe1_out       : std_logic_vector(10 downto 0);
  signal cntpipe2_out       : std_logic_vector(10 downto 0);
  signal cntpipe3_out       : std_logic_vector(10 downto 0);
	signal dataa							: std_logic_vector(21 downto 0);
	signal writedata_conv_out : std_logic_vector(7 downto 0);
	signal RWDS_buffer_out		: std_logic_vector(0 downto 0);
  ------------------------------------------------------------------------------------------------------------------- 

	begin

    hram_CS_n <= hbus_CS_n;
    hram_RESET_n <= hbus_RESET_n;
    avs_waitrequest <= waitrequest;
    read <= avs_read;
    write <= avs_write;
    dpd_req <= avs_writedata(0);

    -- virtual configuration register access -----------------------------------------------------------------------    
    config <=       (not avs_address(31))   and (not avs_address(30))   and (not avs_address(29))   and (not avs_address(28))
                and (not avs_address(27))   and (not avs_address(26))   and (not avs_address(25))   and (not avs_address(24))
                and (not avs_address(23))   and (    avs_address(22))   and (not avs_address(21))   and (not avs_address(20))
                and (not avs_address(19))   and (not avs_address(18))   and (not avs_address(17))   and (not avs_address(16))
                and (not avs_address(15))   and (not avs_address(14))   and (not avs_address(13))   and (not avs_address(12))
                and (not avs_address(11))   and (not avs_address(10))   and (not avs_address(9 ))   and (not avs_address(8 ))
                and (not avs_address(7 ))   and (not avs_address(6 ))   and (not avs_address(5 ))   and (not avs_address(4 ))
                and (not avs_address(3 ))   and (not avs_address(2 ))   and (not avs_address(1 ))   and (not avs_address(0 ));
    ----------------------------------------------------------------------------------------------------------------

    -- address register --------------------------------------------------------------------------------------------
    addr_reg : reg 
    generic map
    (
      N => 32
    )
    port map
    (
      clk				=> clk, 
      enable		=> cmd_load, 
      clear_n		=> '1', 
      reset_n		=> '1',	
      din				=> avs_address, 
      dout			=> addr_reg_out
    ); -------------------------------------------------------------------------------------------------------------

    -- burstcount register -----------------------------------------------------------------------------------------
    burstcnt_reg : reg 
    generic map
    (
      N => 11
    )
    port map
    (
      clk				=> clk, 
      enable		=> cmd_load, 
      clear_n		=> '1', 
      reset_n		=> '1',	
      din				=> avs_burstcount, 
      dout			=> burstcnt_reg_out
    ); -------------------------------------------------------------------------------------------------------------
    
    -- datain register ---------------------------------------------------------------------------------------------
    datain_reg : reg 
    generic map
    (
      N => 16
    )
    port map
    (
      clk				=> clk, 
      enable		=> datain_load, 
      clear_n		=> '1', 
      reset_n		=> '1',	
      din				=> avs_writedata, 
      dout			=> datain_reg_out
    ); -------------------------------------------------------------------------------------------------------------

    -- virtual configuration register ------------------------------------------------------------------------------
    conf_reg : reg 
    generic map
    (
      N => 2
    )
    port map
    (
      clk				=> clk, 
      enable		=> update_config_register, 
      clear_n		=> reset_config_register_n, 
      reset_n		=> '1',	
      din				=> datain_reg_out(1 downto 0), 
      dout			=> conf_reg_out
    ); -------------------------------------------------------------------------------------------------------------
    
    -- configuration registers builder -----------------------------------------------------------------------------
    conf_builder_inst : conf_builder
    generic map
    (
      hybrid_burst_enable						=> hybrid_burst_enable,
      burst_lenght									=> burst_lenght,
      initial_latency								=> initial_latency,
      drive_strength								=> drive_strength,
      distributed_refresh_interval	=> distributed_refresh_interval
    )
    port map
    (
      conf_virtual  => conf_reg_out, 
      conf0_real    => conf0_real, 
      conf1_real    => conf1_real
    ); --------------------------------------------------------------------------------------------------------------

    -- DQ selection -------------------------------------------------------------------------------------------------
    dq_mux : mux_4to1
    generic map
    (
      N => 16
    )
    port map
    (
      din_00		=> datain_reg_out,
      din_01		=> conf0_real,
      din_10		=> conf1_real,
      din_11		=> CA_unpacked,
      sel				=> dq_sel,
      dout			=> dq_mux_out
    ); --------------------------------------------------------------------------------------------------------------

    -- address space selection --------------------------------------------------------------------------------------
    address_mux : mux_4to1
    generic map
    (
      N => 32
    )
    port map
    (
      din_00		=> addr_reg_out,
      din_01		=> config0_addr,
      din_10		=> config1_addr,
      din_11		=> generated_address,
      sel				=> address_space_sel,
      dout			=> effective_address
    ); --------------------------------------------------------------------------------------------------------------

    -- CA builder ---------------------------------------------------------------------------------------------------
    CA_builder_inst : CA_builder
    port map
    (
      read_writeN   => read_writeN,
      config_access => config_access,
      address       => effective_address,
      CA            => CA
    ); --------------------------------------------------------------------------------------------------------------

    -- CA unpacker --------------------------------------------------------------------------------------------------
    CA_unpacker_inst : CA_unpacker
    port map
    (
      clk           => clk,
      load  		    => CA_load,
      sel	  		    => CA_sel,
      CA_packed 		=> CA,
      CA_unpacked	  => CA_unpacked
    ); --------------------------------------------------------------------------------------------------------------

    -- DQ tristate buffer -------------------------------------------------------------------------------------------
    dq_buffer : tristate_buffer
    generic map
    (
      N => 8
    )
    port map
    (
      enable		=> dq_OE,
      din   		=> writedata_conv_out,
      dout  		=> hram_DQ
    ); --------------------------------------------------------------------------------------------------------------

    -- writedata converter (SDR to DDR) -----------------------------------------------------------------------------
    writedata_converter : SDR_to_DDR_converter
    port map
    (
      clk       => clk,
      load  		=> writedata_load,
      SDR_in 		=> dq_mux_out,
      DDR_out	  => writedata_conv_out
    ); --------------------------------------------------------------------------------------------------------------

    dll_reset <= not reset_n;

    -- clock shifter ------------------------------------------------------------------------------------------------
    clk_shifter: dll_90
    port map
    (
      areset		=> dll_reset,
      inclk0		=> clk,
      c0				=> clk90
    ); --------------------------------------------------------------------------------------------------------------

    -- gating enable pipeline register ------------------------------------------------------------------------------
    hCKen_pipe : d_flipflop 
    port map
    (
      clk				=> clk, 
      enable		=> '1', 
      clear_n		=> hCKen_pipe_clear_n, 
      reset_n		=> '1',	
      din				=> hCK_gating_enable_n, 
      dout			=> hCK_enable
    ); -------------------------------------------------------------------------------------------------------------

    -- clock gater --------------------------------------------------------------------------------------------------
    clk_gater_inst : clkctrl
    port map
    (
      inclk   => clk90,
      ena     => hCK_enable,
      outclk  => clk_gater_outclk
    ); --------------------------------------------------------------------------------------------------------------

    hram_CK <= clk_gater_outclk;
    hram_CK_n <= not clk_gater_outclk;

    -- RWDS tristate buffer -----------------------------------------------------------------------------------------
    RWDS_buffer : tristate_buffer
    generic map
    (
      N => 1
    )
    port map
    (
      enable		=> force_RWDS_low,
      din   		=> (others => '0'),
      dout  		=> RWDS_buffer_out
    ); --------------------------------------------------------------------------------------------------------------

    hram_RWDS_out <= RWDS_buffer_out(0);

    -- RWDS tracker -------------------------------------------------------------------------------------------------
    rwds_tracker : d_flipflop
    port map
    (
      clk				=> clk,
      enable		=> check_latency,
      clear_n		=> '1',
      reset_n		=> '1',
      din				=> hram_RWDS_in,
      dout			=> doubled_latency
    ); --------------------------------------------------------------------------------------------------------------

    -- readdata converter (DDR to SDR) ------------------------------------------------------------------------------
    readdata_converter : DDR_to_SDR_converter
    port map
    (
      clk       => hram_RWDS_in_90shift,
      enable		=> RWDS_sampling_enable,
      DDR_in		=> hram_DQ,
      SDR_out		=> readdata_SDR
    ); --------------------------------------------------------------------------------------------------------------

    synch_cnt_up_downN <= not synch_cnt_down;

    -- synchronizer -------------------------------------------------------------------------------------------------
    synchronizer_inst : synchronizer
    port map
    (
      clk                 => clk,   
      rst_n							  => reset_n,
      synch_enable        => synch_enable,
      synch_clear_n       => synch_clear_n,
      synch_strobe        => hram_RWDS_in,
      synch_validout      => synch_validout,
      synch_busy          => synch_busy,
      synch_din           => readdata_SDR,
      synch_dout          => synch_dout,
      burstcount          => burstcnt_reg_out,
      counter_enable		  => synch_cnt_enable,
      counter_clear_n		  => synch_clear_n,
      counter_up_downN	  => synch_cnt_up_downN,
      counter_out			    => synch_cnt_out
    ); --------------------------------------------------------------------------------------------------------------

    avs_readdatavalid <= synch_validout or force_valid;

    readdatamux_din0(1 downto 0) <= conf_reg_out;
    readdatamux_din0(15 downto 2) <= (others => '0');

    -- readdata selection -------------------------------------------------------------------------------------------
    readdatamux : mux_2to1
    generic map
    (
      N => 16
    )
    port map
    (
      din_0		=> synch_dout,
      din_1		=> readdatamux_din0,
      sel			=> avs_out_sel,
      dout		=> avs_readdata
    ); --------------------------------------------------------------------------------------------------------------

    -- counter pipeline register 1 ----------------------------------------------------------------------------------
    cntpipe1 : reg 
    generic map
    (
      N => 11
    )
    port map
    (
      clk				=> clk, 
      enable		=> '1', 
      clear_n		=> '1', 
      reset_n		=> '1',	
      din				=> synch_cnt_out, 
      dout			=> cntpipe1_out
    ); -------------------------------------------------------------------------------------------------------------

    -- counter pipeline register 2 ----------------------------------------------------------------------------------
    cntpipe2 : reg 
    generic map
    (
      N => 11
    )
    port map
    (
      clk				=> clk, 
      enable		=> '1', 
      clear_n		=> '1', 
      reset_n		=> '1',	
      din				=> cntpipe1_out, 
      dout			=> cntpipe2_out
    ); -------------------------------------------------------------------------------------------------------------

    -- counter pipeline register 3 ----------------------------------------------------------------------------------
    cntpipe3 : reg 
    generic map
    (
      N => 11
    )
    port map
    (
      clk				=> clk, 
      enable		=> '1', 
      clear_n		=> '1', 
      reset_n		=> '1',	
      din				=> cntpipe2_out, 
      dout			=> cntpipe3_out
    ); -------------------------------------------------------------------------------------------------------------
		
		dataa(10 downto 0) <= cntpipe3_out;
		dataa(21 downto 11) <= (others => '0');

    -- address generator for burst recovery ------------------------------------------------------------------------
    addressgen : adder_22bit_1pipe
    port map
    (
      clken		=> addressgen_enable,
      clock		=> clk,
      dataa		=> dataa,
      datab		=> addr_reg_out(21 downto 0),
      result	=> addressgen_out
    ); -------------------------------------------------------------------------------------------------------------

    generated_address(21 downto 0) <= addressgen_out;
    generated_address(31 downto 22) <= (others => '0');

    -- burst lenght comparator -------------------------------------------------------------------------------------
    burst_cmp : comparator_Nbit
    generic map
    (
      N => 11
    )
    port map
    (
      din_0		=> burstcnt_reg_out,
      din_1		=> synch_cnt_out,
      equal 	=> burst_end
    ); -------------------------------------------------------------------------------------------------------------

    -- burst detector ----------------------------------------------------------------------------------------------
    burst_detector : comparator_Nbit
    generic map
    (
      N => 11
    )
    port map
    (
      din_0		=> burstcnt_reg_out,
      din_1		=> "00000000001",
      equal 	=> burst_detector_out
    ); -------------------------------------------------------------------------------------------------------------

    bursttransfer <= not burst_detector_out;

    -- DPD request tracker ------------------------------------------------------------------------------------------
    dpd_req_tracker : d_flipflop
    port map
    (
      clk				=> clk,
      enable		=> cmd_load,
      clear_n		=> dpd_req_clear_n,
      reset_n		=> '1',
      din				=> avs_writedata(0),
      dout			=> active_dpd_req
    ); --------------------------------------------------------------------------------------------------------------

    -- operation type tracker ---------------------------------------------------------------------------------------
    op_tracker : d_flipflop
    port map
    (
      clk				=> clk,
      enable		=> cmd_load,
      clear_n		=> '1',
      reset_n		=> '1',
      din				=> avs_write,
      dout			=> current_operation
    ); --------------------------------------------------------------------------------------------------------------

    -- initialization routine tracker -------------------------------------------------------------------------------
    init_tracker : sr_flipflop
    port map
    (
      clk				=> clk,
      set				=> set_initialization_state,
      clear_n		=> init_clear_n,
      rst_n			=> '1',
      dout			=> init
    ); --------------------------------------------------------------------------------------------------------------

    -- DPD mode tracker ---------------------------------------------------------------------------------------------
    dpd_tracker : sr_flipflop
    port map
    (
      clk				=> clk,
      set				=> set_dpd_status,
      clear_n		=> clear_dpd_status_n,
      rst_n			=> '1',
      dout			=> dpd_mode_on
    ); --------------------------------------------------------------------------------------------------------------

    -- deadline timer -----------------------------------------------------------------------------------------------
    deadline_timer : timer_14bit
    port map
    (
      clk				  => clk,
      enable		  => deadline_tim_enable,
      clear_n		  => deadline_tim_clear_n,
      tim_3			  => t_acc1,
      tim_7			  => t_acc2,
      tim_21		  => t_dpdcsl,
      tim_1000    => t_dpdin,
      tim_15000	  => t_dpdout
    ); --------------------------------------------------------------------------------------------------------------

end rtl;
