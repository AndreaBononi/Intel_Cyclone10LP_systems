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
	avs_beginbursttransfer        : in    std_logic;
	avs_burstcount                : in    std_logic;
	-- hram signals 	
	hram_RESET_n                  : out   std_logic;
	hram_CK                       : out   std_logic;
	hram_DQ                       : inout std_logic_vector(7 downto 0);
	hram_RWDS                     : inout std_logic;
	hram_CS_n                     : out   std_logic;
  -- control signals
  waitrequest                   : in    std_logic;
  cmd_load                      : in    std_logic;
  dpd_req_clear_n               : in    std_logic;
  synch_cnt_enable              : in    std_logic;
  synch_cnt_down                : in    std_logic;
  synch_cnt_clear_n             : in    std_logic;
  datain_load                   : in    std_logic;
  avs_out_sel                   : in    std_logic;
  reset_config_register         : in    std_logic;
  update_config_register        : in    std_logic;
  address_space_sel             : in    std_logic;
  config_access                 : in    std_logic;
  read_writeN                   : in    std_logic;
  CA_load                       : in    std_logic;
  CA_sel                        : in    std_logic_vector(1 downto 0);
  dqout_sel                     : in    std_logic;
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
  CK_gating_enable_n            : in    std_logic;
  set_dpd_status                : in    std_logic;
  clear_dpd_status_n            : in    std_logic;
  deadline_tim_enable           : in    std_logic;
  deadline_tim_clear_n          : in    std_logic;
  h_RESET_n                     : in    std_logic;
  h_CS_n                        : in    std_logic;	
  -- status signals
  write                         : out   std_logic;
  read                          : out   std_logic;
  config_access                 : out   std_logic;
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
    tim_20		  : out std_logic;
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
  component gater is
  port
  (
    clk           : in 	std_logic;   -- input clock
    enable_n      : in 	std_logic;   -- gating enable, active low
    gated_clock		: out std_logic    -- gated clock
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
	
  -- CONSTANTS ------------------------------------------------------------------------------------------------------ 
  constant config0_addr: std_logic_vector(31 downto 0) := "00000000000000000000100000000000";
	constant config1_addr: std_logic_vector(31 downto 0) := "00000000000000000000100000000001";
  ------------------------------------------------------------------------------------------------------------------- 

  -- SIGNALS -------------------------------------------------------------------------------------------------------- 
  signal datain_reg_out   : std_logic_vector(15 downto 0);
  signal conf_reg_out     : std_logic_vector(1 downto 0);
  signal conf0_real       : std_logic_vector(15 downto 0);
  signal conf1_real       : std_logic_vector(15 downto 0);
  ------------------------------------------------------------------------------------------------------------------- 

	begin

    hram_CS_n <= h_CS_n;
    hram_RESET_n <= h_RESET_n;
    avs_waitrequest <= waitrequest;
    read <= avs_read;
    write <= avs_write;
    dpd_req <= avs_writedata(0);

    -- virtual configuration register access -----------------------------------------------------------------------    
    config_access <=  avs_address(31)       nor avs_address(30)         nor avs_address(29)   nor avs_address(28)
                      nor avs_address(27)   nor avs_address(26)         nor avs_address(25)   nor avs_address(24)
                      nor avs_address(23)   nor (not avs_address(22))   nor avs_address(21)   nor avs_address(20)
                      nor avs_address(19)   nor avs_address(18)         nor avs_address(17)   nor avs_address(16)
                      nor avs_address(15)   nor avs_address(14)         nor avs_address(13)   nor avs_address(12)
                      nor avs_address(11)   nor avs_address(10)         nor avs_address(9)    nor avs_address(8)
                      nor avs_address(7)    nor avs_address(6)          nor avs_address(5)    nor avs_address(4)
                      nor avs_address(3)    nor avs_address(2)          nor avs_address(1)    nor avs_address(0);
    ----------------------------------------------------------------------------------------------------------------
    
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
      clear_n		=> reset_config_register, 
      reset_n		=> '1',	
      din				=> datain_reg_out(1 downto 0), 
      dout			=> conf_reg_out
    ); -------------------------------------------------------------------------------------------------------------
    
    -- hram configuration registers builder ------------------------------------------------------------------------
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


end rtl;
