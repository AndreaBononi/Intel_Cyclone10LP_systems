-- BRIEF DESCRIPTION: execution unit of the AvalonMM - hyperram converter

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;

entity avs_hram_mainconv_CU is
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
  check_latency	                : out std_logic;
  force_RWDS_low                : out std_logic;
  hCK_gating_enable_n           : out std_logic;
  set_dpd_status                : out std_logic;
  clear_dpd_status_n            : out std_logic;
  deadline_tim_enable           : out std_logic; 
  deadline_tim_clear_n          : out std_logic;
  hCKen_pipe_clear_n            : out std_logic;
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
  doubled_latency					      : in  std_logic;
  dpd_mode_on                   : in  std_logic;
	t_acc1	                      : in  std_logic;
	t_acc2	                      : in  std_logic;
  t_dpdcsl                      : in  std_logic;
  t_dpdin                       : in  std_logic;
  t_dpdout                      : in  std_logic
);
end entity avs_hram_mainconv_CU;

architecture fsm of avs_hram_mainconv_CU is

	-- states definition -------------------------------------------------------------------------------------
	type state is
	(
		reset,
    reset_wait,
    reset_exit_begin,
    reset_exit,
    idle,
    dummycmd,
    dummycmd_last,
    dummycmd_end,
    wait_dpd_out,
    write_virtconf,
    writeconf0_prep,
    writeconf_CA0,
    writeconf_CA1,
    writeconf_CA2, 
    writeconf0,
    writeconf0_end,
    wait_dpd_in,
    read_virtconf,
    readmem_prep,
    writemem_prep,
    CA_0,
    CA_1,
    CA_2,
    CA_end,
    read_wait_0,
    read_wait_1,
    read_wait_2,
    read_end_1,
    read_end_2,
    synch_restoring_1,
    synch_restoring_2,
    writemem_wait,
    writemem,
    write_end,
    writeburst_prep,
    writeburst,
    writeburst_last,
    stop_burst_1,
    stop_burst_2,
    idle_burst,
    restore_burst
	); -------------------------------------------------------------------------------------------------------

	-- states declaration ------------------------------------------------------------------------------------
	signal present_state		: state;
	signal next_state				: state;
  ----------------------------------------------------------------------------------------------------------

	begin

		-- evaluation of the next state ------------------------------------------------------------------------
		next_state_evaluation: process
		(
			-- sensitivity list
      present_state,
      write,              
      read,               
      config,      
      dpd_req,            
      active_dpd_req,     
      current_operation,  
      bursttransfer,      
      burst_end,          
      synch_busy,         
      doubled_latency,
      dpd_mode_on,        
      t_acc1,	           
      t_acc2,	           
      t_dpdcsl,           
      t_dpdin,            
      t_dpdout
		)
		begin
			case present_state is
				----------------------------------------------
				when reset =>
          next_state <= reset_wait;
        ----------------------------------------------
        when reset_wait =>
          if (t_dpdcsl = '1') then
            next_state <= reset_exit_begin;
          else
            next_state <= reset_wait;
          end if;
        ----------------------------------------------
        when reset_exit_begin =>
          next_state <= reset_exit;
        ----------------------------------------------
        when reset_exit =>
          if (t_dpdout = '1') then
            next_state <= writeconf0_prep;
          else
            next_state <= reset_exit;
          end if;
        ----------------------------------------------
        when idle | read_virtconf =>
          if (read = '1') then
            if (config = '1') then
              next_state <= read_virtconf;
            else
              if (dpd_mode_on = '1') then
                next_state <= idle;
              else
                next_state <= readmem_prep;
              end if;
            end if;
          elsif (write = '1') then
            if (config = '1') then
              if (dpd_mode_on = '1') then
                if (dpd_req = '1') then
                  next_state <= idle;
                else
                  next_state <= dummycmd;
                end if;
              else
                next_state <= write_virtconf;
              end if;
            else
              if (dpd_mode_on = '1') then
                next_state <= idle;
              else
                next_state <= writemem_prep;
              end if;
            end if;
          else
            next_state <= idle;
          end if;
        ----------------------------------------------
        when dummycmd =>
          if (t_dpdcsl = '1') then
            next_state <= dummycmd_last;
          else
            next_state <= dummycmd;
          end if;
        ----------------------------------------------
        when dummycmd_last =>
          next_state <= dummycmd_end;
        ----------------------------------------------
        when dummycmd_end =>
          next_state <= wait_dpd_out;
        ----------------------------------------------
        when wait_dpd_out =>
          if (t_dpdout = '1') then
            next_state <= write_virtconf;
          else
            next_state <= wait_dpd_out;
          end if;
        ----------------------------------------------
        when write_virtconf =>
          next_state <= writeconf0_prep;
        ----------------------------------------------
        when writeconf0_prep =>
          next_state <= writeconf_CA0;
        ----------------------------------------------
        when writeconf_CA0 =>
          next_state <= writeconf_CA1;
        ----------------------------------------------
        when writeconf_CA1 =>
          next_state <= writeconf_CA2;
        ----------------------------------------------
        when writeconf_CA2 =>
          next_state <= writeconf0;
        ---------------------------------------------- 
        when writeconf0 =>
          next_state <= writeconf0_end;
        ----------------------------------------------
        when writeconf0_end =>
          if (active_dpd_req = '1') then
            next_state <= wait_dpd_in;
          else
            next_state <= idle;
          end if;
        ----------------------------------------------
        when wait_dpd_in =>
          if (t_dpdin = '1') then
            next_state <= idle;
          else
            next_state <= wait_dpd_in;
          end if;
        ----------------------------------------------
        when readmem_prep | writemem_prep | restore_burst =>
          next_state <= CA_0;
        ----------------------------------------------
        when CA_0 =>
          next_state <= CA_1;
        ----------------------------------------------
        when CA_1 =>
          next_state <= CA_2;
        ----------------------------------------------
        when CA_2 =>
          next_state <= CA_end;
        ----------------------------------------------
        when CA_end =>
          if (current_operation = '1') then
            next_state <= writemem_wait;
          else
            next_state <= read_wait_0;
          end if;
        ----------------------------------------------
        when read_wait_0 =>
          next_state <= read_wait_1;
        ----------------------------------------------
        when read_wait_1 =>
          if (synch_busy = '1') then
            next_state <= read_wait_2;
          else
            next_state <= read_wait_1;
          end if;
        ----------------------------------------------
        when read_wait_2 =>
          if (synch_busy = '1') then
            next_state <= read_wait_2;
          else
            next_state <= read_end_1;
          end if;
        ----------------------------------------------
        when read_end_1 =>
          next_state <= read_end_2;
        ----------------------------------------------
        when read_end_2 =>
          next_state <= synch_restoring_1;
        ----------------------------------------------
        when synch_restoring_1 =>
          next_state <= synch_restoring_2;
        ----------------------------------------------
        when synch_restoring_2 =>
          next_state <= idle;
        ----------------------------------------------
        when writemem_wait =>
          if (doubled_latency = '1') then
            if (t_acc2 = '1') then
              if (bursttransfer = '1') then
                next_state <= writeburst_prep;
              else
                next_state <= writemem;
              end if;
            else
              next_state <= writemem_wait;
            end if;
          else
            if (t_acc1 = '1') then
              if (bursttransfer = '1') then
                next_state <= writeburst_prep;
              else
                next_state <= writemem;
              end if;
            else
              next_state <= writemem_wait;
            end if;
          end if;
        ----------------------------------------------
        when writemem | writeburst_last =>
          next_state <= write_end;
        ----------------------------------------------
        when write_end =>
          next_state <= idle;
        ----------------------------------------------
        when writeburst_prep | writeburst =>
          if (write = '1') then
            if (burst_end = '1') then
              next_state <= writeburst_last;
            else
              next_state <= writeburst;
            end if;
          else
            next_state <= stop_burst_1;
          end if;
        ----------------------------------------------
        when stop_burst_1 =>
          next_state <= stop_burst_2;
        ----------------------------------------------
        when stop_burst_2 =>
          next_state <= idle_burst;  
        ----------------------------------------------
        when idle_burst =>
          if (write = '1') then
            next_state <= restore_burst;
          else
            next_state <= idle_burst;
          end if;
        ----------------------------------------------
				when others =>
					next_state <= reset;
				----------------------------------------------
			end case;
		end process next_state_evaluation; --------------------------------------------------------------------

		-- state transition -----------------------------------------------------------------------------------
		state_transition: process (clk, reset_n)
		begin
			if (reset_n = '0') then
				present_state <= reset;
			elsif (rising_edge(clk)) then
        present_state <= next_state;
			end if;
		end process state_transition; -------------------------------------------------------------------------

		-- control signals definition -------------------------------------------------------------------------
		control_signals_definition: process (present_state)
		begin
			-- default values ------------------------------
      waitrequest                 <= '0';
      force_valid                 <= '0';
      cmd_load                    <= '0';
      dpd_req_clear_n             <= '1';
      synch_cnt_enable            <= '0';
      synch_cnt_down              <= '0';
      synch_cnt_clear_n           <= '1';
      datain_load                 <= '0';
      avs_out_sel                 <= '0';
      reset_config_register_n     <= '0';
      update_config_register      <= '0';
      address_space_sel           <= "00";
      config_access               <= '0';
      read_writeN                 <= '0';
      CA_load                     <= '0';
      CA_sel                      <= "00";
      dq_sel                      <= "00";
      dq_OE                       <= '0';
      writedata_load              <= '0';
      addressgen_enable           <= '0';
      synch_enable                <= '0';
      synch_clear_n               <= '1';
      RWDS_sampling_enable        <= '0';  
      check_latency	              <= '0';
      force_RWDS_low              <= '0';
      hCK_gating_enable_n         <= '1';
      set_dpd_status              <= '0';
      clear_dpd_status_n          <= '1';
      deadline_tim_enable         <= '0';
      deadline_tim_clear_n        <= '1';
      hCKen_pipe_clear_n          <= '1';
      hbus_RESET_n                <= '1';
      hbus_CS_n                   <= '1';	
			------------------------------------------------
			case present_state is
				----------------------------------------------
				when reset =>
          waitrequest                 <= '1';
          hCK_gating_enable_n         <= '0';
          hbus_RESET_n                <= '0';
          deadline_tim_clear_n        <= '0';
          clear_dpd_status_n          <= '0';
          synch_clear_n               <= '0';
          writedata_load              <= '1';
          dpd_req_clear_n             <= '0';
          reset_config_register_n     <= '0';
          hCKen_pipe_clear_n          <= '0';
        ----------------------------------------------
        when reset_wait =>
          waitrequest                 <= '1';
          hCK_gating_enable_n         <= '0';
          deadline_tim_enable         <= '1';
          hbus_RESET_n                <= '0';
        ----------------------------------------------
        when reset_exit_begin =>
          waitrequest                 <= '1';                      
          hCK_gating_enable_n         <= '0';
          deadline_tim_clear_n        <= '0';
        ----------------------------------------------
        when reset_exit =>
          waitrequest                 <= '1';
          hCK_gating_enable_n         <= '0';
          deadline_tim_enable         <= '1';
        ----------------------------------------------
        when idle =>
          hCK_gating_enable_n         <= '0';
          deadline_tim_clear_n        <= '0';
          cmd_load                    <= '1';
          datain_load                 <= '1';
        ----------------------------------------------
        when dummycmd =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          deadline_tim_enable         <= '1';
        ----------------------------------------------
        when dummycmd_last | dummycmd_end =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          hCK_gating_enable_n         <= '0';
          deadline_tim_clear_n        <= '0';
        ----------------------------------------------
        when wait_dpd_out =>
          waitrequest                 <= '1';
          hCK_gating_enable_n         <= '0';
          deadline_tim_enable         <= '1';
        ----------------------------------------------
        when write_virtconf =>
          waitrequest                 <= '1';
          hCK_gating_enable_n         <= '0';
          clear_dpd_status_n          <= '0';
          update_config_register      <= '1';
        ----------------------------------------------
        when writeconf0_prep =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          CA_load                     <= '1';
          config_access               <= '1';
          address_space_sel           <= "01";
        ----------------------------------------------
        when writeconf_CA0 =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          dq_sel                      <= "11";
          writedata_load              <= '1';
          CA_sel                      <= "00";
        ----------------------------------------------
        when writeconf_CA1 =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          dq_OE                       <= '1';
          dq_sel                      <= "11";
          writedata_load              <= '1';
          CA_sel                      <= "01";
        ----------------------------------------------
        when writeconf_CA2 =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          dq_OE                       <= '1';
          dq_sel                      <= "11";
          writedata_load              <= '1';
          CA_sel                      <= "10";
        ---------------------------------------------- 
        when writeconf0 =>
          waitrequest                 <= '1';
          hCK_gating_enable_n         <= '0';
          hbus_CS_n                   <= '0';
          writedata_load              <= '1';
          dq_OE                       <= '1';
          dq_sel                      <= "01";
        ----------------------------------------------
        when writeconf0_end =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          dq_OE                       <= '1';
          hCK_gating_enable_n         <= '0';
        ----------------------------------------------
        when wait_dpd_in =>
          waitrequest                 <= '1';
          hCK_gating_enable_n         <= '0';
          deadline_tim_enable         <= '1';
          set_dpd_status              <= '1';
        ----------------------------------------------
        when read_virtconf =>
          hCK_gating_enable_n         <= '0';
          avs_out_sel                 <= '1';
          force_valid                 <= '1';
          cmd_load                    <= '1';
          datain_load                 <= '1';
        ----------------------------------------------
        when readmem_prep =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          CA_load                     <= '1';
          address_space_sel           <= "00";
          read_writeN                 <= '1';
        ----------------------------------------------
        when writemem_prep =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          CA_load                     <= '1';
          address_space_sel           <= "00";
          synch_cnt_enable            <= '1';
        ----------------------------------------------
        when CA_0 =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          dq_sel                      <= "11";
          writedata_load              <= '1';
          CA_sel                      <= "00";
          synch_cnt_enable            <= '1';
        ----------------------------------------------
        when CA_1 =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          dq_OE                       <= '1';
          dq_sel                      <= "11";
          writedata_load              <= '1';
          CA_sel                      <= "01";
        ----------------------------------------------
        when CA_2 =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          dq_OE                       <= '1';
          dq_sel                      <= "11";
          writedata_load              <= '1';
          CA_sel                      <= "10";
          deadline_tim_enable         <= '1';
          check_latency               <= '1';
        ----------------------------------------------
        when CA_end =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          dq_OE                       <= '1';
          deadline_tim_enable         <= '1';
        ----------------------------------------------
        when read_wait_0 =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          RWDS_sampling_enable        <= '1';
          synch_enable                <= '1';
          synch_cnt_clear_n           <= '0';
        ----------------------------------------------
        when read_wait_1 | read_wait_2 =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          RWDS_sampling_enable        <= '1';
          synch_enable                <= '1';
        ----------------------------------------------
        when read_end_1 | read_end_2 =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          hCK_gating_enable_n         <= '0';
        ----------------------------------------------
        when synch_restoring_1 =>
          waitrequest                 <= '1';
          hCK_gating_enable_n         <= '0';
          synch_clear_n               <= '0';
        ----------------------------------------------
        when synch_restoring_2 =>
          waitrequest                 <= '1';
          hCK_gating_enable_n         <= '0';
        ----------------------------------------------
        when writemem_wait =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          deadline_tim_enable         <= '1';
        ----------------------------------------------
        when writemem =>
          waitrequest                 <= '1';
          hCK_gating_enable_n         <= '0';
          hbus_CS_n                   <= '0';
          writedata_load              <= '1';
          dq_sel                      <= "00";
        ----------------------------------------------
        when write_end =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          hCK_gating_enable_n         <= '0';
          force_RWDS_low              <= '1';
          synch_cnt_clear_n           <= '0';
          deadline_tim_clear_n        <= '0';
          dq_OE                       <= '1';
        ----------------------------------------------
        when writeburst_prep =>
          hbus_CS_n                   <= '0';
          writedata_load              <= '1';
          dq_sel                      <= "00";
          datain_load                 <= '1';
          synch_cnt_enable            <= '1';
        ----------------------------------------------
        when writeburst =>
          hbus_CS_n                   <= '0';
          writedata_load              <= '1';
          dq_sel                      <= "00";
          dq_OE                       <= '1';
          datain_load                 <= '1';
          synch_cnt_enable            <= '1';
          force_RWDS_low              <= '1';
        ----------------------------------------------
        when writeburst_last =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          hCK_gating_enable_n         <= '0';
          writedata_load              <= '1';
          dq_sel                      <= "00";
          dq_OE                       <= '1';
          force_RWDS_low              <= '1';
        ----------------------------------------------
        when stop_burst_1 =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          hCK_gating_enable_n         <= '0';
          synch_cnt_enable            <= '1';
          synch_cnt_down              <= '1';
          addressgen_enable           <= '1';
          force_RWDS_low              <= '1';
        ----------------------------------------------
         when stop_burst_2 =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          hCK_gating_enable_n         <= '0';
        ----------------------------------------------
        when idle_burst =>
          hCK_gating_enable_n         <= '0';
          deadline_tim_clear_n        <= '0';
          datain_load                 <= '1';
        ----------------------------------------------
        when restore_burst =>
          waitrequest                 <= '1';
          hbus_CS_n                   <= '0';
          CA_load                     <= '1';
          address_space_sel           <= "11";
        ----------------------------------------------
			end case;
		end process control_signals_definition; ---------------------------------------------------------------

end architecture fsm;
