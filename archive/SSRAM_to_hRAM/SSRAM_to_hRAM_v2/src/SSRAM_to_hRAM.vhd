-- SSRAM_to_hRAM.vhd ------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- component able to interface an SSRAM interface (with proper signals) with a standard hyperRAM interface

-- SSRAM_CS: chip select
-- SSRAM_OE: read operation request
-- SSRAM_WE: write operation request
-- SSRAM_address_spacing: address spacing selector
-- SSRAM_burstcount: burst lenght (only for read operation)
-- SSRAM_address: address
-- SSRAM_in: input data
-- SSRAM_out: output data
-- SSRAM_validout: output validation signal
-- SSRAM_busy: memory status
-- SSRAM_haltdata: memory signal requiring to freeze the input

-- SSRAM_out is available a certain (variable) number of clock cycles after the read command has been provided
-- SSRAM_validout is asserted when SSRAM_out is valid

-- SSRAM_busy is asserted by the memories after loading a new operation
-- SSRAM_busy remaing high up to the end of the ongoing operation
-- any new operation commanded before SSRAM_busy going low is ignored

-- during a write burst operation, when SSRAM_haltdata is asserted by the memory SSRAM_in must not be changed (you cannot proceed with the burst)

-- SSRAM_WE must be high during the whole write burst operation
-- turning SSRAM_WE causes the end of the write burst operation

-- SSRAM_burstcount represents the lenght of the burst during a read operation (which is automatically stopped after reaching the end of the burst)

-- SSRAM_address_spacing selects the address spacing (memory space or register space)

-------------------------------------------------------------------------------------------------------

entity SSRAM_to_hRAM is
	port
	(
    -- clock and reset -------------------------------------------------------------------------------
    clk                     : in    std_logic;
    rst_n                   : in    std_logic;
    -- SSRAM data signals -----------------------------------------------------------------------------
    SSRAM_CS                : in    std_logic;
    SSRAM_OE                : in    std_logic;
    SSRAM_WE                : in    std_logic;
    SSRAM_address_spacing   : in    std_logic;
    SSRAM_burstcount        : in    std_logic_vector(10 downto 0);
    SSRAM_address           : in    std_logic_vector(31 downto 0);
    SSRAM_in                : in    std_logic_vector(15 downto 0);
    SSRAM_out               : out   std_logic_vector(15 downto 0);
    SSRAM_validout          : out   std_logic;
    SSRAM_busy              : out   std_logic;
    SSRAM_haltdata          : out   std_logic;
    -- hRAM data signals -----------------------------------------------------------------------------
    hbus_CS_n               : out   std_logic;
    hbus_RESET_n            : out   std_logic;
    hbus_DQ                 : inout std_logic_vector(7 downto 0);
    hCK_edgeal              : out   std_logic;
    RWDS_360                : in    std_logic;
    RWDS_90                 : in    std_logic;
		RWDS		                : in    std_logic;
		drive_RWDS_low					: out   std_logic
	);
end SSRAM_to_hRAM;

-------------------------------------------------------------------------------------------------------

architecture rtl of SSRAM_to_hRAM is

  -- execution unit -----------------------------------------------------------------------------------
  component SSRAM_to_hRAM_EU is
  	port
  	(
      -- clock and reset -------------------------------------------------------------------------------
      clk                     : in    std_logic;
      rst_n                   : in    std_logic;
      -- SSRAM data signals -----------------------------------------------------------------------------
      SSRAM_CS                : in    std_logic;
      SSRAM_OE                : in    std_logic;
      SSRAM_WE                : in    std_logic;
      SSRAM_address_spacing   : in    std_logic;
      SSRAM_burstcount        : in    std_logic_vector(10 downto 0);
      SSRAM_address           : in    std_logic_vector(31 downto 0);
      SSRAM_in                : in    std_logic_vector(15 downto 0);
      SSRAM_out               : out   std_logic_vector(15 downto 0);
      SSRAM_validout          : out   std_logic;
      SSRAM_busy              : out   std_logic;
      SSRAM_haltdata          : out   std_logic;
      -- hRAM data signals -----------------------------------------------------------------------------
      hbus_CS_n               : out   std_logic;
      hbus_RESET_n            : out   std_logic;
      hbus_DQ                 : inout std_logic_vector(7 downto 0);
      hCK_edgeal              : out   std_logic;
      RWDS_360                : in    std_logic;
      RWDS_90                 : in    std_logic;
			RWDS		                : in    std_logic;
			drive_RWDS_low					: out   std_logic;
      -- control signals --------------------------------------------------------------------------------
      busy                    : in    std_logic;
      haltdata                : in    std_logic;
      datain_load             : in    std_logic;
      cmd_load                : in    std_logic;
      writedata_load          : in    std_logic;
      synch_enable            : in    std_logic;
      synch_clear_n           : in    std_logic;
      CK_gating_enable_n      : in    std_logic;
      RWDS_sampling_enable    : in    std_logic;
      dqout_sel               : in    std_logic;
      burst_type              : in    std_logic;
      config_access           : in    std_logic;
      read_writeN             : in    std_logic;
      CA_load                 : in    std_logic;
      CA_sel                  : in    std_logic_vector(1 downto 0);
      dq_OE                   : in    std_logic;
      set_dpd_status          : in    std_logic;
      clear_dpd_status_n      : in    std_logic;
      deadline_tim_enable     : in    std_logic;
      deadline_tim_clear_n    : in    std_logic;
      h_RESET_n               : in    std_logic;
      h_CS_n                  : in    std_logic;
			force_RWDS_low          : in	  std_logic;
			check_latency	          : in	  std_logic;
      -- status signals ---------------------------------------------------------------------------------
      WE                      : out   std_logic;
      CS                      : out   std_logic;
      OE                      : out   std_logic;
      address_space           : out   std_logic;
      dpd_req                 : out   std_logic;
      active_dpd_req          : out   std_logic;
      synch_busy              : out   std_logic;
      current_operation       : out   std_logic;
      dpd_mode_on             : out   std_logic;
			t_acc1	                : out   std_logic;
			t_acc2	                : out   std_logic;
      t_dpdcsl                : out   std_logic;
      t_dpdin                 : out   std_logic;
      t_dpdout                : out   std_logic;
			doubled_latency					: out		std_logic
  	);
  end component;

  -- control unit -------------------------------------------------------------------------------------
  component SSRAM_to_hRAM_CU is
  	port
  	(
      -- clock and reset:
      clk                     : in    std_logic;
  		rst_n										: in    std_logic;
      -- control signals --------------------------------------------------------------------------------
      busy                    : out   std_logic;
      haltdata                : out   std_logic;
      datain_load             : out   std_logic;
      cmd_load                : out   std_logic;
      writedata_load          : out   std_logic;
      synch_enable            : out   std_logic;
      synch_clear_n           : out   std_logic;
      CK_gating_enable_n      : out   std_logic;
      RWDS_sampling_enable    : out   std_logic;
      dqout_sel               : out   std_logic;
      burst_type              : out   std_logic;
      config_access           : out   std_logic;
      read_writeN             : out   std_logic;
      CA_load                 : out   std_logic;
      CA_sel                  : out   std_logic_vector(1 downto 0);
      dq_OE                   : out   std_logic;
      set_dpd_status          : out   std_logic;
      clear_dpd_status_n      : out   std_logic;
      deadline_tim_enable     : out   std_logic;
      deadline_tim_clear_n    : out   std_logic;
      h_RESET_n               : out   std_logic;
      h_CS_n                  : out   std_logic;
			force_RWDS_low          : out   std_logic;
			check_latency	          : out	  std_logic;
      -- status signals ---------------------------------------------------------------------------------
      WE                      : in    std_logic;
      CS                      : in    std_logic;
      OE                      : in    std_logic;
      address_space           : in    std_logic;
      dpd_req                 : in    std_logic;
      active_dpd_req          : in    std_logic;
      synch_busy              : in    std_logic;
      current_operation       : in    std_logic;
      dpd_mode_on             : in    std_logic;
			t_acc1	                : in   	std_logic;
			t_acc2	                : in	  std_logic;
      t_dpdcsl                : in    std_logic;
      t_dpdin                 : in    std_logic;
      t_dpdout                : in    std_logic;
			doubled_latency					: in		std_logic
  	);
  end component;

  -- control signals ----------------------------------------------------------------------------------
  signal busy                    	: std_logic;
  signal haltdata                	: std_logic;
  signal datain_load             	: std_logic;
  signal cmd_load                	: std_logic;
  signal writedata_load          	: std_logic;
  signal synch_enable            	: std_logic;
  signal synch_clear_n           	: std_logic;
  signal CK_gating_enable_n      	: std_logic;
  signal RWDS_sampling_enable    	: std_logic;
  signal dqout_sel               	: std_logic;
  signal burst_type              	: std_logic;
  signal config_access           	: std_logic;
  signal read_writeN             	: std_logic;
  signal CA_load                 	: std_logic;
  signal CA_sel                  	: std_logic_vector(1 downto 0);
  signal dq_OE                   	: std_logic;
  signal set_dpd_status          	: std_logic;
  signal clear_dpd_status_n      	: std_logic;
  signal deadline_tim_enable     	: std_logic;
  signal deadline_tim_clear_n    	: std_logic;
  signal h_RESET_n               	: std_logic;
  signal h_CS_n                  	: std_logic;
	signal force_RWDS_low						: std_logic;
	signal check_latency						: std_logic;
  -- status signals -----------------------------------------------------------------------------------
  signal WE                      	: std_logic;
  signal CS                      	: std_logic;
  signal OE                      	: std_logic;
  signal address_space           	: std_logic;
  signal dpd_req                 	: std_logic;
  signal active_dpd_req          	: std_logic;
  signal synch_busy              	: std_logic;
  signal current_operation       	: std_logic;
  signal dpd_mode_on             	: std_logic;
	signal t_acc1		               	: std_logic;
	signal t_acc2		               	: std_logic;
  signal t_dpdcsl                	: std_logic;
  signal t_dpdin                 	: std_logic;
  signal t_dpdout                	: std_logic;
	signal doubled_latency         	: std_logic;

	begin

    EU: SSRAM_to_hRAM_EU
    port map
    (
      clk,
      rst_n,
      SSRAM_CS,
      SSRAM_OE,
      SSRAM_WE,
      SSRAM_address_spacing,
      SSRAM_burstcount,
      SSRAM_address,
      SSRAM_in,
      SSRAM_out,
      SSRAM_validout,
      SSRAM_busy,
      SSRAM_haltdata,
      hbus_CS_n,
      hbus_RESET_n,
      hbus_DQ,
      hCK_edgeal,
      RWDS_360,
      RWDS_90,
			RWDS,
			drive_RWDS_low,
      busy,
      haltdata,
      datain_load,
      cmd_load,
      writedata_load,
      synch_enable,
      synch_clear_n,
      CK_gating_enable_n,
      RWDS_sampling_enable,
      dqout_sel,
      burst_type,
      config_access,
      read_writeN,
      CA_load,
      CA_sel,
      dq_OE,
      set_dpd_status,
      clear_dpd_status_n,
      deadline_tim_enable,
      deadline_tim_clear_n,
      h_RESET_n,
      h_CS_n,
			force_RWDS_low,
			check_latency,
      WE,
      CS,
      OE,
      address_space,
      dpd_req,
      active_dpd_req,
      synch_busy,
      current_operation,
      dpd_mode_on,
			t_acc1,
			t_acc2,
      t_dpdcsl,
      t_dpdin,
      t_dpdout,
			doubled_latency
    );

    CU: SSRAM_to_hRAM_CU
    port map
    (
      clk,
      rst_n,
      busy,
      haltdata,
      datain_load,
      cmd_load,
      writedata_load,
      synch_enable,
      synch_clear_n,
      CK_gating_enable_n,
      RWDS_sampling_enable,
      dqout_sel,
      burst_type,
      config_access,
      read_writeN,
      CA_load,
      CA_sel,
      dq_OE,
      set_dpd_status,
      clear_dpd_status_n,
      deadline_tim_enable,
      deadline_tim_clear_n,
      h_RESET_n,
      h_CS_n,
			force_RWDS_low,
			check_latency,
      WE,
      CS,
      OE,
      address_space,
      dpd_req,
      active_dpd_req,
      synch_busy,
      current_operation,
      dpd_mode_on,
			t_acc1,
			t_acc2,
      t_dpdcsl,
      t_dpdin,
      t_dpdout,
			doubled_latency
    );

end rtl;

------------------------------------------------------------------------------------------------------
