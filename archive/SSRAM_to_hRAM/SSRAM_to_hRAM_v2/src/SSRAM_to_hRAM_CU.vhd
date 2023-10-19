-- SSRAM_to_hRAM_CU.vhd -----------------------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- SSRAM to hRAM control unit

------------------------------------------------------------------------------------------------------------------------------------

entity SSRAM_to_hRAM_CU is
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
end entity SSRAM_to_hRAM_CU;

------------------------------------------------------------------------------------------------------------------------------------

architecture fsm of SSRAM_to_hRAM_CU is

	-- states definition ------------------------------------------------------------------------------------------------------------
	type state is
	(
		reset,
		reset_exit,
		reset_exit_begin,
    reset_wait,
    idle,
    readconfig_init,
    writeconfig_init,
    readmem_init,
    writemem_init,
    writeconfig_CA_init,
    CA_init,
    CA1,
    CA2,
    CA_end,
    read_wait_1,
    read_wait_2,
    read_end,
    synch_restoring_1,
    synch_restoring_2,
    writemem_wait,
    writemem_DQ_init,
    writemem_DQ,
    writemem_DQ_end,
    CA_writeconfig_1,
    CA_writeconfig_2,
    CA_writeconfig_end,
    writeconfig,
    wait_dpd_in,
    dummycmd,
    dummycmd_end,
    wait_dpd_out
	);

	-- states declaration -----------------------------------------------------------------------------------------------------------
	signal present_state		: state;
	signal next_state				: state;

	begin

		-- evaluation of the next state ----------------------------------------------------------------------------------------------
		next_state_evaluation: process
		(
			-- sensitivity list
      present_state,
      WE,
      CS,
      OE,
      address_space,
      dpd_req,
      active_dpd_req,
      synch_busy,
      current_operation,
      dpd_mode_on,
      t_dpdcsl,
      t_dpdin,
      t_dpdout,
			t_acc1,
			t_acc2,
			doubled_latency
		)
		begin
			case present_state is
				---------------------------------------------------------------------------------------------------------------------
				when reset =>
          next_state <= reset_wait;
					---------------------------------------------------------------------------------------------------------------------
	      when reset_exit =>
	        if (t_dpdout = '1') then
	          next_state <= idle;
	        else
	          next_state <= reset_exit;
	        end if;
				---------------------------------------------------------------------------------------------------------------------
		    when reset_exit_begin =>
		      next_state <= reset_exit;
        ---------------------------------------------------------------------------------------------------------------------
        when reset_wait =>
          if (t_dpdcsl = '1') then
            next_state <= reset_exit_begin;
          else
            next_state <= reset_wait;
          end if;
        ---------------------------------------------------------------------------------------------------------------------
        when idle =>
					if (CS = '1') then
          	if (OE = '1') then
	            if (dpd_mode_on = '1') then
	              next_state <= idle;
	            else
	              if (address_space = '1') then
	                next_state <= readconfig_init;
	              else
	                next_state <= readmem_init;
	              end if;
	            end if;
          	elsif (WE = '1') then
	            if (address_space = '1') then
	              if (dpd_mode_on = '1') then
	                if (dpd_req = '1') then
	                  next_state <= idle;
	                else
	                  next_state <= dummycmd;
	                end if;
	              else
	                next_state <= writeconfig_init;
	              end if;
	            else
	              if (dpd_mode_on = '1') then
	                next_state <= idle;
	              else
	                next_state <= writemem_init;
	              end if;
	            end if;
          	else
            	next_state <= idle;
          	end if;
					else
						next_state <= idle;
					end if;
        ---------------------------------------------------------------------------------------------------------------------
        when readconfig_init =>
          next_state <= CA_init;
        ---------------------------------------------------------------------------------------------------------------------
        when writeconfig_init =>
          next_state <= writeconfig_CA_init;
        ---------------------------------------------------------------------------------------------------------------------
        when readmem_init =>
          next_state <= CA_init;
        ---------------------------------------------------------------------------------------------------------------------
        when writemem_init =>
          next_state <= CA_init;
        ---------------------------------------------------------------------------------------------------------------------
        when writeconfig_CA_init =>
          next_state <= CA_writeconfig_1;
        ---------------------------------------------------------------------------------------------------------------------
        when CA_init =>
          next_state <= CA1;
        ---------------------------------------------------------------------------------------------------------------------
        when CA1 =>
          next_state <= CA2;
        ---------------------------------------------------------------------------------------------------------------------
        when CA2 =>
          next_state <= CA_end;
        ---------------------------------------------------------------------------------------------------------------------
        when CA_end =>
          if (current_operation = '1') then
            next_state <= read_wait_1;
          else
            next_state <= writemem_wait;
          end if;
        ---------------------------------------------------------------------------------------------------------------------
        when read_wait_1 =>
          if (synch_busy = '1') then
            next_state <= read_wait_2;
          else
            next_state <= read_wait_1;
          end if;
        ---------------------------------------------------------------------------------------------------------------------
        when read_wait_2 =>
          if (synch_busy = '1') then
            next_state <= read_wait_2;
          else
            next_state <= read_end;
          end if;
        ---------------------------------------------------------------------------------------------------------------------
        when read_end =>
          next_state <= synch_restoring_1;
        ---------------------------------------------------------------------------------------------------------------------
        when synch_restoring_1 =>
          next_state <= synch_restoring_2;
        ---------------------------------------------------------------------------------------------------------------------
        when synch_restoring_2 =>
          next_state <= idle;
        ---------------------------------------------------------------------------------------------------------------------
        when writemem_wait =>
					if (doubled_latency = '1') then
						if (t_acc2 = '1') then
							next_state <= writemem_DQ_init;
						else
							next_state <= writemem_wait;
						end if;
					else
						if (t_acc1 = '1') then
							next_state <= writemem_DQ_init;
						else
							next_state <= writemem_wait;
						end if;
					end if;
        ---------------------------------------------------------------------------------------------------------------------
        when writemem_DQ_init =>
          if (WE = '1') then
            next_state <= writemem_DQ;
          else
            next_state <= writemem_DQ_end;
          end if;
        ---------------------------------------------------------------------------------------------------------------------
        when writemem_DQ =>
          if (WE = '1') then
            next_state <= writemem_DQ;
          else
            next_state <= writemem_DQ_end;
          end if;
        ---------------------------------------------------------------------------------------------------------------------
        when writemem_DQ_end =>
          next_state <= idle;
        ---------------------------------------------------------------------------------------------------------------------
        when CA_writeconfig_1 =>
          next_state <= CA_writeconfig_2;
        ---------------------------------------------------------------------------------------------------------------------
        when CA_writeconfig_2 =>
          next_state <= CA_writeconfig_end;
        ---------------------------------------------------------------------------------------------------------------------
        when CA_writeconfig_end =>
          next_state <= writeconfig;
        ---------------------------------------------------------------------------------------------------------------------
        when writeconfig =>
          if (active_dpd_req = '1') then
            next_state <= wait_dpd_in;
          else
            next_state <= idle;
          end if;
        ---------------------------------------------------------------------------------------------------------------------
        when wait_dpd_in =>
          if (t_dpdin = '1') then
            next_state <= idle;
          else
            next_state <= wait_dpd_in;
          end if;
        ---------------------------------------------------------------------------------------------------------------------
        when dummycmd =>
          if (t_dpdcsl = '1') then
            next_state <= dummycmd_end;
          else
            next_state <= dummycmd;
          end if;
        ---------------------------------------------------------------------------------------------------------------------
        when dummycmd_end =>
          next_state <= wait_dpd_out;
        ---------------------------------------------------------------------------------------------------------------------
        when wait_dpd_out =>
          if (t_dpdout = '1') then
            next_state <= writeconfig_init;
          else
            next_state <= wait_dpd_out;
          end if;
        ---------------------------------------------------------------------------------------------------------------------
			end case;
		end process next_state_evaluation;

		-- state transition ----------------------------------------------------------------------------------------------------------
		state_transition: process (clk, rst_n)
		begin
			if (rst_n = '0') then
				present_state <= reset;
			elsif (rising_edge(clk)) then
				present_state <= next_state;
			end if;
		end process state_transition;

		-- control signals definition ------------------------------------------------------------------------------------------------
		control_signals_definition: process (present_state)
		begin
			-- default values ---------------------------------------------------------------------------------------------------------
      busy                    <= '0';
      haltdata                <= '0';
      datain_load             <= '0';
      cmd_load                <= '0';
      writedata_load          <= '0';
      synch_enable            <= '0';
      synch_clear_n           <= '1';
      CK_gating_enable_n      <= '1';
      RWDS_sampling_enable    <= '0';
      dqout_sel               <= '0';
      burst_type              <= '0';
      config_access           <= '0';
      read_writeN             <= '0';
      CA_load                 <= '0';
      CA_sel                  <= "00";
      dq_OE                   <= '0';
      set_dpd_status          <= '0';
      clear_dpd_status_n      <= '1';
      deadline_tim_enable     <= '0';
      deadline_tim_clear_n    <= '1';
      h_RESET_n               <= '1';
      h_CS_n                  <= '1';
			force_RWDS_low					<= '0';
			check_latency						<= '0';
			---------------------------------------------------------------------------------------------------------------------------
			case present_state is
				------------------------------------------------------------------------------------------------------------------------
        when reset =>
          busy <= '1';
          CK_gating_enable_n <='0';
          h_RESET_n <='0';
          deadline_tim_clear_n <='0';
          clear_dpd_status_n <='0';
          synch_clear_n <='0';
					writedata_load <= '1';
				---------------------------------------------------------------------------------------------------------------------
				when reset_exit_begin =>
					busy <= '1';
					CK_gating_enable_n <='0';
					deadline_tim_clear_n <= '0';
					---------------------------------------------------------------------------------------------------------------------
				when reset_exit =>
					busy <= '1';
					CK_gating_enable_n <='0';
					deadline_tim_enable <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when reset_wait =>
          busy <= '1';
          CK_gating_enable_n <='0';
          deadline_tim_enable <= '1';
					h_RESET_n <='0';
        ---------------------------------------------------------------------------------------------------------------------
        when idle =>
          CK_gating_enable_n <='0';
          deadline_tim_clear_n <='0';
          cmd_load <= '1';
          datain_load <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when readconfig_init =>
          busy <= '1';
          h_CS_n <='0';
          haltdata <= '1';
          CK_gating_enable_n <='0';
					CA_load <= '1';
          read_writeN <= '1';
          config_access <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when writeconfig_init =>
          busy <= '1';
          h_CS_n <='0';
          haltdata <= '1';
          CK_gating_enable_n <='0';
					clear_dpd_status_n <= '0';
					CA_load <= '1';
          config_access <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when readmem_init =>
          busy <= '1';
          h_CS_n <='0';
          haltdata <= '1';
          CK_gating_enable_n <='0';
					CA_load <= '1';
          read_writeN <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when writemem_init =>
          busy <= '1';
          h_CS_n <='0';
          haltdata <= '1';
          CK_gating_enable_n <='0';
					CA_load <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when writeconfig_CA_init =>
          busy <= '1';
          h_CS_n <='0';
          dq_OE <= '1';
          dqout_sel <= '1';
					writedata_load <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when CA_init =>
          busy <= '1';
          h_CS_n <='0';
          haltdata <= '1';
          dq_OE <= '1';
          dqout_sel <= '1';
					writedata_load <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when CA1 =>
          busy <= '1';
          h_CS_n <='0';
          haltdata <= '1';
          dq_OE <= '1';
          dqout_sel <= '1';
					writedata_load <= '1';
					check_latency <= '1';
					CA_sel <= "01";
        ---------------------------------------------------------------------------------------------------------------------
        when CA2 =>
          busy <= '1';
          h_CS_n <= '0';
          haltdata <= '1';
          dq_OE <= '1';
          dqout_sel <= '1';
					writedata_load <= '1';
          CA_sel <= "10";
					deadline_tim_enable <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when CA_end =>
          busy <= '1';
          h_CS_n <= '0';
          haltdata <= '1';
					deadline_tim_enable <= '1';
					writedata_load <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when read_wait_1 =>
          busy <= '1';
          h_CS_n <= '0';
          RWDS_sampling_enable <= '1';
          synch_enable <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when read_wait_2 =>
          busy <= '1';
          h_CS_n <= '0';
          RWDS_sampling_enable <= '1';
          synch_enable <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when read_end =>
          busy <= '1';
          h_CS_n <= '0';
          CK_gating_enable_n <= '0';
        ---------------------------------------------------------------------------------------------------------------------
        when synch_restoring_1 =>
          busy <= '1';
          CK_gating_enable_n <= '0';
          synch_clear_n <= '0';
        ---------------------------------------------------------------------------------------------------------------------
        when synch_restoring_2 =>
          busy <= '1';
          CK_gating_enable_n <= '0';
        ---------------------------------------------------------------------------------------------------------------------
        when writemem_wait =>
          busy <= '1';
          h_CS_n <= '0';
          haltdata <= '1';
					deadline_tim_enable <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when writemem_DQ_init =>
          busy <= '1';
          h_CS_n <= '0';
          datain_load <= '1';
          writedata_load <= '1';
          dq_OE <= '1';
					force_RWDS_low <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when writemem_DQ =>
          busy <= '1';
          h_CS_n <= '0';
          datain_load <= '1';
          writedata_load <= '1';
          dq_OE <= '1';
					force_RWDS_low <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when writemem_DQ_end =>
          busy <= '1';
          h_CS_n <= '0';
          CK_gating_enable_n <= '0';
					force_RWDS_low <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when CA_writeconfig_1 =>
          busy <= '1';
          h_CS_n <= '0';
          dq_OE <= '1';
          dqout_sel <= '1';
					writedata_load <= '1';
					CA_sel <= "01";
        ---------------------------------------------------------------------------------------------------------------------
        when CA_writeconfig_2 =>
          busy <= '1';
          h_CS_n <= '0';
          dq_OE <= '1';
          dqout_sel <= '1';
					writedata_load <= '1';
					CA_sel <= "10";
        ---------------------------------------------------------------------------------------------------------------------
        when CA_writeconfig_end =>
          busy <= '1';
          h_CS_n <= '0';
          writedata_load <= '1';
          dq_OE <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when writeconfig =>
          busy <= '1';
          h_CS_n <= '0';
          CK_gating_enable_n <= '0';
					writedata_load <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when wait_dpd_in =>
          busy <= '1';
          CK_gating_enable_n <= '0';
          deadline_tim_enable <= '1';
          set_dpd_status <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when dummycmd =>
          busy <= '1';
          h_CS_n <= '0';
          deadline_tim_enable <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when dummycmd_end =>
          busy <= '1';
          h_CS_n <= '0';
          CK_gating_enable_n <= '0';
          deadline_tim_clear_n <= '1';
        ---------------------------------------------------------------------------------------------------------------------
        when wait_dpd_out =>
          busy <= '1';
          CK_gating_enable_n <= '0';
          deadline_tim_enable <= '1';
        ---------------------------------------------------------------------------------------------------------------------
			end case;
		end process control_signals_definition;

end architecture fsm;

-------------------------------------------------------------------------------------------------------------------------------------
