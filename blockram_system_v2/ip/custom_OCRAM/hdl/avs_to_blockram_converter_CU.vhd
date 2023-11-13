-- BRIEF DESCRIPTION: avs_to_blockram_converter control unit

library   IEEE;
use       IEEE.std_logic_1164.all;
use       IEEE.numeric_std.all;

entity avs_to_blockram_converter_CU is
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
end avs_to_blockram_converter_CU;

architecture fsm of avs_to_blockram_converter_CU is

	-- states definition ------------------------------------------------------------------------------------------------------------
	type state is
	(
		reset,
    init1,
    init2,
    idle,
    read_cmd,
    write_cmd,
    burst_read,
    burst_write,
    burst_read_pause,
    burst_write_pause,
    burst_lastread,
    burst_lastwrite,
    wait_afterburst,
    idle_afterburst
	); ------------------------------------------------------------------------------------------------------------------------------

	-- states declaration -----------------------------------------------------------------------------------------------------------
	signal present_state		: state;
	signal next_state				: state;
  ---------------------------------------------------------------------------------------------------------------------------------

	begin

		-- evaluation of the next state -----------------------------------------------------------------------------------------------
		next_state_evaluation: process
		(
      present_state,
      read,
      write,
      burst_op,
      beginbursttransfer,
      burstend
		)
		begin
			case present_state is
				-------------------------------------------------------
				when reset =>
          next_state <= init1;
				-------------------------------------------------------
        when init1 =>
          next_state <= init2;
        -------------------------------------------------------
        when init2 =>
          next_state <= idle;
        -------------------------------------------------------
        when idle | idle_afterburst | read_cmd | write_cmd =>
          if (burst_op = '1' and beginbursttransfer = '1') then
            -- burst operation
            if (read = '1') then
              next_state <= burst_read;
            elsif (write = '1') then
              next_state <= burst_write;
            else
              next_state <= idle;
            end if;
          else
            -- single operation
            if (read = '1') then
              next_state <= read_cmd;
            elsif (write = '1') then
              next_state <= write_cmd;
            else
              next_state <= idle;
            end if;
          end if;
        -------------------------------------------------------
        when burst_read =>
          if (burstend = '1') then
            next_state <= burst_lastread;
          else
            if (read = '1') then
              next_state <= burst_read;
            else
              next_state <= burst_read_pause;
            end if;
          end if;
        -------------------------------------------------------
        when burst_write =>
          if (burstend = '1') then
            next_state <= burst_lastwrite;
          else
            if (write = '1') then
              next_state <= burst_write;
            else
              next_state <= burst_write_pause;
            end if;
          end if;
        -------------------------------------------------------
        when burst_read_pause =>
          if (read = '1') then
            next_state <= burst_read;
          else
            next_state <= burst_read_pause;
          end if;
        -------------------------------------------------------
        when burst_write_pause =>
          if (write = '1') then
            next_state <= burst_write;
          else
            next_state <= burst_write_pause;
          end if;
        -------------------------------------------------------
        when burst_lastread | burst_lastwrite =>
          next_state <= wait_afterburst;
        -------------------------------------------------------
        when wait_afterburst =>
          next_state <= idle_afterburst;
        -------------------------------------------------------
			end case;
		end process next_state_evaluation; -------------------------------------------------------------------------------------------

		-- state transition ----------------------------------------------------------------------------------------------------------
		state_transition: process (clk, rst_n)
		begin
			if (rst_n = '0') then
				present_state <= reset;
			elsif (rising_edge(clk)) then
        present_state <= next_state;
			end if;
		end process state_transition; ------------------------------------------------------------------------------------------------

		-- control signals definition ------------------------------------------------------------------------------------------------
		control_signals_definition: process (present_state)
		begin
			-- default values ---------------------------------------
      rden                    <= '0';
      wren                    <= '0';
      waitrequest             <= '0';
      readdatavalid           <= '0';
      cnt_enable              <= '0';
      cnt_clear_n             <= '1';
      address_sel             <= '0';
      inc_disable             <= '0';
      address_reg_enable      <= '0';
      writedata_reg_enable    <= '0';
      pipe_clear_n            <= '1';
			---------------------------------------------------------
			case present_state is
				-------------------------------------------------------
        when reset =>
          cnt_clear_n <= '0';
          pipe_clear_n <= '0';
          waitrequest <= '1';
        -------------------------------------------------------
        when init1 =>
          cnt_enable <= '1';
          waitrequest <= '1';
        -------------------------------------------------------
        when init2 =>
          cnt_enable <= '1';
          waitrequest <= '1';
        -------------------------------------------------------
        when idle =>
          writedata_reg_enable <= '1';
          address_reg_enable <= '1';
        -------------------------------------------------------
        when idle_afterburst =>
          cnt_enable <= '1';
          writedata_reg_enable <= '1';
          address_reg_enable <= '1';
        -------------------------------------------------------
        when read_cmd =>
          rden <= '1';
          readdatavalid <= '1';
          writedata_reg_enable <= '1';
          address_reg_enable <= '1';
        -------------------------------------------------------
        when write_cmd =>
          wren <= '1';
          writedata_reg_enable <= '1';
          address_reg_enable <= '1';
        -------------------------------------------------------
        when burst_read =>
          rden <= '1';
          readdatavalid <= '1';
          cnt_enable <= '1';
          address_sel <= '1';
          address_reg_enable <= '1';
        -------------------------------------------------------
        when burst_write =>
          wren <= '1';
          cnt_enable <= '1';
          address_sel <= '1';
          address_reg_enable <= '1';
          writedata_reg_enable <= '1';
        -------------------------------------------------------
        when burst_read_pause =>
          inc_disable <= '1';
        -------------------------------------------------------
        when burst_write_pause =>
          inc_disable <= '1';
        -------------------------------------------------------
        when burst_lastread =>
          rden <= '1';
          readdatavalid <= '1';
          cnt_clear_n <= '0';
          waitrequest <= '1';
        -------------------------------------------------------
        when burst_lastwrite =>
          wren <= '1';
          cnt_clear_n <= '0';
          waitrequest <= '1';
        -------------------------------------------------------
        when wait_afterburst =>
          cnt_enable <= '1';
          waitrequest <= '1';
        -------------------------------------------------------
			end case;
		end process control_signals_definition; -----------------------------------------------------------------------------------------

end architecture fsm;
