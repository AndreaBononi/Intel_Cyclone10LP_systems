library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

------------------------------------------------------------------------------------------------------------------------------------

entity avm_to_blockram_converter_CU is
	port
	(
    -- clock and reset:
    clk                       : in    std_logic;
		rst_n											: in    std_logic;
		-- status signals:
    avm_read                  : in    std_logic;
    avm_write                 : in    std_logic;
		-- control signals:
    avm_waitrequest           : out   std_logic;
    avm_readdatavalid         : out   std_logic;
    blockram_rden             : out   std_logic;
    blockram_wren             : out   std_logic;
    address_enable            : out   std_logic;
    writedata_enable          : out   std_logic;
    readdata_enable           : out   std_logic
	);
end avm_to_blockram_converter_CU;

------------------------------------------------------------------------------------------------------------------------------------

architecture fsm of avm_to_blockram_converter_CU is

	-- states definition ------------------------------------------------------------------------------------------------------------
	type state is
	(
		reset,
    idle,
    write_cmd,
    read_cmd,
    read_wait,
    read_wait_2,
    read_valid
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
      avm_read,
      avm_write
		)
		begin
			case present_state is
				---------------------------------------------------------------------------------------------------------------------
				when reset =>
          next_state <= idle;
				---------------------------------------------------------------------------------------------------------------------
        when idle | read_valid =>
          if (avm_read = '1') then
            next_state <= read_cmd;
          elsif (avm_write = '1') then
            next_state <= write_cmd;
          else
            next_state <= idle;
          end if;
        ---------------------------------------------------------------------------------------------------------------------
        when write_cmd =>
          next_state <= idle;
        ---------------------------------------------------------------------------------------------------------------------
        when read_cmd =>
          next_state <= read_wait;
        ---------------------------------------------------------------------------------------------------------------------
        when read_wait =>
          next_state <= read_wait_2;
        ---------------------------------------------------------------------------------------------------------------------
        when read_wait_2 =>
          next_state <= read_valid;
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
      avm_waitrequest      := '0';
      avm_readdatavalid    := '0';
      blockram_rden        := '0';
      blockram_wren        := '0';
      address_enable       := '0';
      writedata_enable     := '0';
      readdata_enable      := '0';
			---------------------------------------------------------------------------------------------------------------------------
			case present_state is
				------------------------------------------------------------------------------------------------------------------------
        when reset =>
        ---------------------------------------------------------------------------------------------------------------------
        when idle  =>
          writedata_enable := '1';
          address_enable := '1';
        ---------------------------------------------------------------------------------------------------------------------
        when write_cmd =>
          avm_waitrequest := '1';
          blockram_wren := '1';
        ---------------------------------------------------------------------------------------------------------------------
        when read_cmd =>
          avm_waitrequest := '1';
          blockram_rden := '1';
        ---------------------------------------------------------------------------------------------------------------------
        when read_wait =>
          avm_waitrequest := '1';
        ---------------------------------------------------------------------------------------------------------------------
        when read_wait_2 =>
          avm_waitrequest := '1';
          readdata_enable := '1';
        ---------------------------------------------------------------------------------------------------------------------
        when read_valid =>
          avm_readdatavalid := '1';
          writedata_enable := '1';
          address_enable := '1';
        ---------------------------------------------------------------------------------------------------------------------
			end case;
		end process control_signals_definition;

end architecture fsm;

-------------------------------------------------------------------------------------------------------------------------------------
