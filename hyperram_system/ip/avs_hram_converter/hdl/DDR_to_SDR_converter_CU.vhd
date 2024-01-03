-- BRIEF DESCRIPTION: DDR_to_SDR_converter control unit
-- COMMENTS:
-- use it together with DDR_to_SDR_converter_EU.vhd to create DDR_to_SDR_converter.vhd

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;

entity DDR_to_SDR_converter_CU is
port
(
  -- clock and reset
  clk_x8            : in  std_logic;
  rst_n							: in  std_logic;
  -- status signals
  ena               : in  std_logic;
  transition        : in  std_logic;
	-- control signals
  system_clear_n    : out std_logic;
  system_enable     : out std_logic;
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
    idle,
    msb_tx,
    lsb_tx
	); -------------------------------------------------------------------------------------------------------

	-- states declaration ------------------------------------------------------------------------------------
	signal present_state  : state;
	signal next_state			: state;
  ----------------------------------------------------------------------------------------------------------

	begin

		-- evaluation of the next state ------------------------------------------------------------------------
		next_state_evaluation: process
		(
			-- sensitivity list
      present_state,
      ena,
      transition
		)
		begin
			case present_state is
				----------------------------------------------
				when reset | idle | lsb_tx =>
          if (ena = '0') then
            next_state <= reset;
          else
            if (transition = '1') then
              next_state <= msb_tx;
            else
              next_state <= idle;
            end if;
          end if;
        ----------------------------------------------
				when msb_tx =>
          if (transition = '1') then
            next_state <= lsb_tx;
          else
            next_state <= msb_tx;
          end if;
        ----------------------------------------------
				when others =>
					next_state <= reset;
				---------------------------------------------
			end case;
		end process next_state_evaluation; ---------------------------------------------------------------------

		-- state transition ------------------------------------------------------------------------------------
		state_transition: process (clk_x8, rst_n)
		begin
			if (rst_n = '0') then
				present_state <= reset;
			elsif (rising_edge(clk_x8)) then
				present_state <= next_state;
			end if;
		end process state_transition; -------------------------------------------------------------------------

		-- control signals definition -------------------------------------------------------------------------
		control_signals_definition: process (present_state)
		begin
			-- default values ----------------------------
      system_clear_n  <= '1';
      system_enable   <= '0';
      rwdsgen_toggle  <= '0';
      msb_enable      <= '0';
      lsb_enable      <= '0';
			----------------------------------------------
			case present_state is
				--------------------------------------------
        when reset =>
          system_clear_n  <= '0';
        --------------------------------------------
        when idle =>
          system_enable   <= '1';
        --------------------------------------------
        when msb_tx =>
          system_enable   <= '1';
          msb_enable      <= '1';
          rwdsgen_toggle  <= '1';
        --------------------------------------------
        when lsb_tx =>
          system_enable   <= '1';
          lsb_enable      <= '1';
          rwdsgen_toggle  <= '1';
        --------------------------------------------
			end case;
		end process control_signals_definition; ---------------------------------------------------------------

end architecture fsm;
