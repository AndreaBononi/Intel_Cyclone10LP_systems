-- BRIEF DESCRIPTION: DDR_to_SDR_converter control unit
-- COMMENTS:
-- use it together with DDR_to_SDR_converter_EU.vhd to create DDR_to_SDR_converter.vhd
-- the output (control signals) generation is registered to improve the performace

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;

entity DDR_to_SDR_converter_CU is
port
(
  -- clock, reset and clear
  clk_x8            : in  std_logic;
	clr_n             : in  std_logic;
  -- status signals
  transition        : in  std_logic;
	-- control signals
  system_clear_n    : out std_logic;
  rwdsgen_toggle    : out std_logic;
  msb_enable        : out std_logic;
  lsb_enable        : out std_logic
);
end entity DDR_to_SDR_converter_CU;

architecture fsm of DDR_to_SDR_converter_CU is

	-- states definition -------------------------------------------------------------------------------------
	type state is
	(
		reset,
    reset_wait,
    idle,
    idle_intra,
    msb_tx,
    lsb_tx
	); -------------------------------------------------------------------------------------------------------

	-- states declaration ------------------------------------------------------------------------------------
	signal present_state  : state;
	signal next_state			: state;
  ----------------------------------------------------------------------------------------------------------

  -- unregistered control signals --------------------------------------------------------------------------
  signal int_system_clear_n   : std_logic;
  signal int_rwdsgen_toggle   : std_logic;
  signal int_msb_enable       : std_logic;
  signal int_lsb_enable       : std_logic;
  ----------------------------------------------------------------------------------------------------------

	begin

		-- evaluation of the next state ------------------------------------------------------------------------
		next_state_evaluation: process
		(
			-- sensitivity list
      present_state,
      transition
		)
		begin
			case present_state is
        ----------------------------------------------
				when reset =>
          next_state <= reset_wait;
        ----------------------------------------------
				when reset_wait | idle | lsb_tx =>
          if (transition = '1') then
            next_state <= msb_tx;
          else
            next_state <= idle;
          end if;
        ----------------------------------------------
				when msb_tx =>
          next_state <= idle_intra;
        ----------------------------------------------
				when idle_intra =>
          if (transition = '1') then
            next_state <= lsb_tx;
          else
            next_state <= idle_intra;
          end if;
        ----------------------------------------------
				when others =>
					next_state <= reset;
				---------------------------------------------
			end case;
		end process next_state_evaluation; ---------------------------------------------------------------------

		-- state transition ------------------------------------------------------------------------------------
		state_transition: process (clk_x8, clr_n)
		begin
			if (rising_edge(clk_x8)) then
        if (clr_n = '0') then
          present_state <= reset;
        else
				  present_state <= next_state;
        end if;
			end if;
		end process state_transition; -------------------------------------------------------------------------

		-- control signals definition -------------------------------------------------------------------------
		control_signals_definition: process (present_state)
		begin
			-- default values ----------------------------
      int_system_clear_n    <= '1';
      int_rwdsgen_toggle    <= '0';
      int_msb_enable        <= '0';
      int_lsb_enable        <= '0';
			----------------------------------------------
			case present_state is
        --------------------------------------------
        when reset =>
          int_system_clear_n  <= '0';
        --------------------------------------------
        when reset_wait =>
        --------------------------------------------
        when idle | idle_intra =>
        --------------------------------------------
        when msb_tx =>
          int_msb_enable      <= '1';
          int_rwdsgen_toggle  <= '1';
        --------------------------------------------
        when lsb_tx =>
          int_lsb_enable      <= '1';
          int_rwdsgen_toggle  <= '1';
        --------------------------------------------
			end case;
		end process control_signals_definition; ---------------------------------------------------------------

    -- control signals pipelining -------------------------------------------------------------------------
    control_pipe: process (clk_x8)
    begin
      if (rising_edge(clk_x8)) then
        system_clear_n    <= int_system_clear_n;
        rwdsgen_toggle    <= int_rwdsgen_toggle;
        msb_enable        <= int_msb_enable;
        lsb_enable        <= int_lsb_enable;
      end if;
    end process control_pipe; -----------------------------------------------------------------------------

end architecture fsm;
