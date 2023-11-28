-- BRIEF DESCRIPTION: Avalon memory-mapped slave to hyperRAM converter 

library		IEEE;
use 			IEEE.std_logic_1164.all;
use 			IEEE.numeric_std.all;

entity avs_to_hram_converter is
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
	clk                    : in    std_logic;
	reset_n                : in    std_logic;
	-- avs signals
	avs_address            : in    std_logic_vector(31 downto 0);
	avs_read               : in    std_logic;
	avs_readdata           : out   std_logic_vector(15 downto 0);
	avs_write              : in    std_logic;
	avs_writedata          : in    std_logic_vector(15 downto 0);
	avs_waitrequest        : out   std_logic;
	avs_readdatavalid      : out   std_logic;
	avs_beginbursttransfer : in    std_logic;
	avs_burstcount         : in    std_logic_vector(10 downto 0);
	-- hram signals 	
	hram_RESET_n           : out   std_logic;
	hram_CK                : out   std_logic;
	hram_DQ                : inout std_logic_vector(7 downto 0);
	hram_RWDS              : inout std_logic;
	hram_CS_n              : out   std_logic 
);
end entity avs_to_hram_converter;

architecture rtl of avs_to_hram_converter is

  -- COMPONENT: execution unit ----------------------------------------------------
  component avs_to_hram_converter_EU is
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
    avs_burstcount                : in    std_logic_vector(10 downto 0);
    -- hram signals 	
    hram_RESET_n                  : out   std_logic;
    hram_CK                       : out   std_logic;
    hram_DQ                       : inout std_logic_vector(7 downto 0);
    hram_RWDS                     : inout std_logic;
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
    CK_gating_enable_n            : in    std_logic;
    set_dpd_status                : in    std_logic;
    clear_dpd_status_n            : in    std_logic;
    deadline_tim_enable           : in    std_logic;
    deadline_tim_clear_n          : in    std_logic;
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
  end component; ------------------------------------------------------------------	

  -- COMPONENT: control unit ------------------------------------------------------
  component avs_to_hram_converter_CU is
  port
  (
    clk                           : in  std_logic;
    reset_n                       : in  std_logic;
    -- control signals
    waitrequest                   : out std_logic;
    force_valid                   : out std_logic;
    cmd_load                      : out std_logic;
    dpd_req_clear_n               : out std_logic;
    synch_cnt_enable              : out std_logic;
    synch_cnt_down                : out std_logic;
    synch_cnt_clear_n             : out std_logic;
    datain_load                   : out std_logic;
    avs_out_sel                   : out std_logic;
    reset_config_register_n       : out std_logic;
    update_config_register        : out std_logic;
    address_space_sel             : out std_logic_vector(1 downto 0);
    config_access                 : out std_logic;
    read_writeN                   : out std_logic;
    CA_load                       : out std_logic;
    CA_sel                        : out std_logic_vector(1 downto 0);
    dq_sel                        : out std_logic_vector(1 downto 0);
    dq_OE                         : out std_logic;
    writedata_load                : out std_logic;
    addressgen_enable             : out std_logic;
    synch_enable                  : out std_logic;
    synch_clear_n                 : out std_logic;
    RWDS_sampling_enable          : out std_logic;  
    init_clear_n                  : out std_logic;
    set_initialization_state      : out std_logic;
    check_latency	                : out std_logic;
    force_RWDS_low                : out std_logic;
    CK_gating_enable_n            : out std_logic;
    set_dpd_status                : out std_logic;
    clear_dpd_status_n            : out std_logic;
    deadline_tim_enable           : out std_logic;
    deadline_tim_clear_n          : out std_logic;
    hbus_RESET_n                  : out std_logic;
    hbus_CS_n                     : out std_logic;	
    -- status signals
    write                         : in  std_logic;
    read                          : in  std_logic;
    config                        : in  std_logic;
    dpd_req                       : in  std_logic;
    active_dpd_req                : in  std_logic;
    current_operation             : in  std_logic;
    bursttransfer                 : in  std_logic;
    burst_end                     : in  std_logic;
    synch_busy                    : in  std_logic;
    init                          : in  std_logic;
    doubled_latency					      : in  std_logic;
    dpd_mode_on                   : in  std_logic;
    t_acc1	                      : in  std_logic;
    t_acc2	                      : in  std_logic;
    t_dpdcsl                      : in  std_logic;
    t_dpdin                       : in  std_logic;
    t_dpdout                      : in  std_logic
  );
  end component;-------------------------------------------------------------------

  -- SIGNALS ----------------------------------------------------------------------
  signal waitrequest                   : std_logic;
  signal force_valid                   : std_logic;
  signal cmd_load                      : std_logic;
  signal dpd_req_clear_n               : std_logic;
  signal synch_cnt_enable              : std_logic;
  signal synch_cnt_down                : std_logic;
  signal synch_cnt_clear_n             : std_logic;
  signal datain_load                   : std_logic;
  signal avs_out_sel                   : std_logic;
  signal reset_config_register_n       : std_logic;
  signal update_config_register        : std_logic;
  signal address_space_sel             : std_logic_vector(1 downto 0);
  signal config_access                 : std_logic;
  signal read_writeN                   : std_logic;
  signal CA_load                       : std_logic;
  signal CA_sel                        : std_logic_vector(1 downto 0);
  signal dq_sel                        : std_logic_vector(1 downto 0);
  signal dq_OE                         : std_logic;
  signal writedata_load                : std_logic;
  signal addressgen_enable             : std_logic;
  signal synch_enable                  : std_logic;
  signal synch_clear_n                 : std_logic;
  signal RWDS_sampling_enable          : std_logic;  
  signal init_clear_n                  : std_logic;
  signal set_initialization_state      : std_logic;
  signal check_latency	               : std_logic;
  signal force_RWDS_low                : std_logic;
  signal CK_gating_enable_n            : std_logic;
  signal set_dpd_status                : std_logic;
  signal clear_dpd_status_n            : std_logic;
  signal deadline_tim_enable           : std_logic;
  signal deadline_tim_clear_n          : std_logic;
  signal hbus_RESET_n                  : std_logic;
  signal hbus_CS_n                     : std_logic;	
  signal write                         : std_logic;
  signal read                          : std_logic;
  signal config                        : std_logic;
  signal dpd_req                       : std_logic;
  signal active_dpd_req                : std_logic;
  signal current_operation             : std_logic;
  signal bursttransfer                 : std_logic;
  signal burst_end                     : std_logic;
  signal synch_busy                    : std_logic;
  signal init                          : std_logic;
  signal doubled_latency					     : std_logic;
  signal dpd_mode_on                   : std_logic;
  signal t_acc1	                       : std_logic;
  signal t_acc2	                       : std_logic;
  signal t_dpdcsl                      : std_logic;
  signal t_dpdin                       : std_logic;
  signal t_dpdout                      : std_logic;
  -----------------------------------------------------------------------------------
    
  begin

    -- EU -------------------------------------------------------------------------
    EU : avs_to_hram_converter_EU
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
      clk                           => clk,
      reset_n                       => reset_n,
      avs_address                   => avs_address,
      avs_read                      => avs_read,
      avs_readdata                  => avs_readdata,
      avs_write                     => avs_write,
      avs_writedata                 => avs_writedata,
      avs_waitrequest               => avs_waitrequest,
      avs_readdatavalid             => avs_readdatavalid,
      avs_beginbursttransfer        => avs_beginbursttransfer,
      avs_burstcount                => avs_burstcount,
      hram_RESET_n                  => hram_RESET_n,
      hram_CK                       => hram_CK,
      hram_DQ                       => hram_DQ,
      hram_RWDS                     => hram_RWDS,
      hram_CS_n                     => hram_CS_n,
      waitrequest                   => waitrequest,
      force_valid                   => force_valid,
      cmd_load                      => cmd_load,
      dpd_req_clear_n               => dpd_req_clear_n,
      synch_cnt_enable              => synch_cnt_enable,
      synch_cnt_down                => synch_cnt_down,
      synch_cnt_clear_n             => synch_cnt_clear_n,
      datain_load                   => datain_load,
      avs_out_sel                   => avs_out_sel,
      reset_config_register_n       => reset_config_register_n,
      update_config_register        => update_config_register,
      address_space_sel             => address_space_sel,
      config_access                 => config_access,
      read_writeN                   => read_writeN,
      CA_load                       => CA_load,
      CA_sel                        => CA_sel,
      dq_sel                        => dq_sel,
      dq_OE                         => dq_OE,
      writedata_load                => writedata_load,
      addressgen_enable             => addressgen_enable,
      synch_enable                  => synch_enable,
      synch_clear_n                 => synch_clear_n,
      RWDS_sampling_enable          => RWDS_sampling_enable,  
      init_clear_n                  => init_clear_n,
      set_initialization_state      => set_initialization_state,
      check_latency	                => check_latency,
      force_RWDS_low                => force_RWDS_low,
      CK_gating_enable_n            => CK_gating_enable_n,
      set_dpd_status                => set_dpd_status,
      clear_dpd_status_n            => clear_dpd_status_n,
      deadline_tim_enable           => deadline_tim_enable,
      deadline_tim_clear_n          => deadline_tim_clear_n,
      hbus_RESET_n                  => hbus_RESET_n,
      hbus_CS_n                     => hbus_CS_n,	
      write                         => write,
      read                          => read,
      config                        => config,
      dpd_req                       => dpd_req,
      active_dpd_req                => active_dpd_req,
      current_operation             => current_operation,
      bursttransfer                 => bursttransfer,
      burst_end                     => burst_end,
      synch_busy                    => synch_busy,
      init                          => init,
      doubled_latency					      => doubled_latency,
      dpd_mode_on                   => dpd_mode_on,
      t_acc1	                      => t_acc1,
      t_acc2	                      => t_acc2,
      t_dpdcsl                      => t_dpdcsl,
      t_dpdin                       => t_dpdin,
      t_dpdout                      => t_dpdout
    ); ----------------------------------------------------------------------------

    -- CU -------------------------------------------------------------------------
    CU : avs_to_hram_converter_CU
    port map
    (
      clk                           => clk,
      reset_n                       => reset_n,
      waitrequest                   => waitrequest,
      force_valid                   => force_valid,
      cmd_load                      => cmd_load,
      dpd_req_clear_n               => dpd_req_clear_n,
      synch_cnt_enable              => synch_cnt_enable,
      synch_cnt_down                => synch_cnt_down,
      synch_cnt_clear_n             => synch_cnt_clear_n,
      datain_load                   => datain_load,
      avs_out_sel                   => avs_out_sel,
      reset_config_register_n       => reset_config_register_n,
      update_config_register        => update_config_register,
      address_space_sel             => address_space_sel,
      config_access                 => config_access,
      read_writeN                   => read_writeN,
      CA_load                       => CA_load,
      CA_sel                        => CA_sel,
      dq_sel                        => dq_sel,
      dq_OE                         => dq_OE,
      writedata_load                => writedata_load,
      addressgen_enable             => addressgen_enable,
      synch_enable                  => synch_enable,
      synch_clear_n                 => synch_clear_n,
      RWDS_sampling_enable          => RWDS_sampling_enable,  
      init_clear_n                  => init_clear_n,
      set_initialization_state      => set_initialization_state,
      check_latency	                => check_latency,
      force_RWDS_low                => force_RWDS_low,
      CK_gating_enable_n            => CK_gating_enable_n,
      set_dpd_status                => set_dpd_status,
      clear_dpd_status_n            => clear_dpd_status_n,
      deadline_tim_enable           => deadline_tim_enable,
      deadline_tim_clear_n          => deadline_tim_clear_n,
      hbus_RESET_n                  => hbus_RESET_n,
      hbus_CS_n                     => hbus_CS_n,	
      write                         => write,
      read                          => read,
      config                        => config,
      dpd_req                       => dpd_req,
      active_dpd_req                => active_dpd_req,
      current_operation             => current_operation,
      bursttransfer                 => bursttransfer,
      burst_end                     => burst_end,
      synch_busy                    => synch_busy,
      init                          => init,
      doubled_latency					      => doubled_latency,
      dpd_mode_on                   => dpd_mode_on,
      t_acc1	                      => t_acc1,
      t_acc2	                      => t_acc2,
      t_dpdcsl                      => t_dpdcsl,
      t_dpdin                       => t_dpdin,
      t_dpdout                      => t_dpdout
    ); ----------------------------------------------------------------------------

end architecture rtl;
