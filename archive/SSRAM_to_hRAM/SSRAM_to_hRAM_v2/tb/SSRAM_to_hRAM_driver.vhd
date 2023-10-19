-- SSRAM_to_hRAM_driver.vhd -------------------------------------------------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
library std;
use std.textio.all;

-----------------------------------------------------------------------------------------------------------------------------------------------------------
-- driver for SSRAM_to_hRAM converter
-----------------------------------------------------------------------------------------------------------------------------------------------------------
-- the driver starts to drive the DUT only after the first activation of the reset signal
-----------------------------------------------------------------------------------------------------------------------------------------------------------
-- the input file, named "SSRAM_to_hRAM_stimuli.txt", contains a sequence of operations
-- each operation may be related to the memory space (single read, single write, read burst, write burst) or to the register space (single read, single write)
-- the file configuration is descripted below
-- if the file format is not respected, the simulation is immediately interrupted driving stop_sim to 1 and reporting the error on the output file
-- the output file, named "SSRAM_to_hRAM_driver_exitstatus.txt", contains useful information related to the driving process
-----------------------------------------------------------------------------------------------------------------------------------------------------------
-- INPUT FILE FORMAT (empty lines or lines starting with '#' are ignored):
-- 1. <opcode><address_space><op_type>
-- 2. <burstlen>
-- 3. <address>
-- 4. <data0>
-- 5. <data1>
-- 6. <data2>
--
-- SINGLE READ, MEMORY SPACE:
-- opcode = 0, address_space = 0, op_type = 0
-- the burstlen row is not present
-- the address row represents the target address
-- no data row is present
--
-- READ BURST, MEMORY SPACE:
-- opcode = 0, address_space = 0, op_type = 1
-- the burstlen row represents the lenght of the burst
-- the address row represents the address of the first data of the burst
-- no data row is present
--
-- SINGLE WRITE, MEMORY SPACE:
-- opcode = 1, address_space = 0, op_type = 0
-- the burstlen row is not present
-- the address row represents the target address
-- a single data row is present
--
-- WRITE BURST, MEMORY SPACE:
-- opcode = 1, address_space = 0, op_type = 1
-- the burstlen row represents the lenght of the burst (up to 2^11 - 1)
-- the address row represents the address of the first data of the burst
-- the number of data rows is equal to the value of burstlen
--
-- SINGLE READ, REGISTER SPACE:
-- opcode = 0, address_space = 1, op_type = 0
-- the burstlen row is not present
-- the address row represents the target address
-- no data row is present
--
-- SINGLE WRITE, REGISTER SPACE:
-- opcode = 1, address_space = 0, op_type = 0
-- the burstlen row is not present
-- the address row represents the target address
-- a single data row is present
------------------------------------------------------------------------------------------------------------------------------------------------------------
-- OUTPUT FILE FORMAT:
-- 1. <exitstatus>
--
-- EXIT STATUS LEGEND:
-- existstatus = 0: no errors encountered during the driving process (it does not mean that the DUT is correctly working)
-- existstatus = 1: an operation with an invalid format has been detected in the input file, shutting down the simulation
------------------------------------------------------------------------------------------------------------------------------------------------------------

entity SSRAM_to_hRAM_driver is
	port
	(
    -- clock and reset -------------------------------------------------------------------------------------------------------------------------------------
    clk										  : in		std_logic;
		rst_n									  : in  	std_logic;
    -- simulation signals ----------------------------------------------------------------------------------------------------------------------------------
    start_sim							  :	out		std_logic := '0';
  	stop_sim							  : out		std_logic := '0';
    -- DUT signals -----------------------------------------------------------------------------------------------------------------------------------------
    SSRAM_busy              : in    std_logic;
    SSRAM_haltdata          : in    std_logic;
    SSRAM_CS                : out   std_logic := '0';
    SSRAM_OE                : out   std_logic := '0';
    SSRAM_WE                : out   std_logic := '0';
    SSRAM_address_spacing   : out   std_logic := '0';
    SSRAM_burstcount        : out   std_logic_vector(10 downto 0);
    SSRAM_address           : out   std_logic_vector(31 downto 0);
    SSRAM_in                : out   std_logic_vector(15 downto 0)
	);
end SSRAM_to_hRAM_driver;

-----------------------------------------------------------------------------------------------------------------------------------------------------------

architecture tb of SSRAM_to_hRAM_driver is

  file input_file: text;
  file output_file: text;

  begin

    input_driving										: process (clk, rst_n, SSRAM_busy, SSRAM_haltdata)
    variable inputline							: line;
    variable input_file_stat				: file_open_status;
    variable outputline							: line;
    variable output_file_stat				: file_open_status;
    variable ongoing_operation			: std_logic := '0';
    variable ongoing_burst_write		: std_logic := '0';
		variable op_start								: std_logic := '0';
    variable opcode									: std_logic;
    variable address_space					: std_logic;
    variable op_type								: std_logic;
    variable burstlen								: std_logic_vector(10 downto 0);
    variable address								: std_logic_vector(31 downto 0);
    variable data										: std_logic_vector(15 downto 0);
    variable burst_step							: integer := 1;
    variable exit_status						: integer := 0;
		variable final_clock_cycle			: std_logic := '0';
    variable terminate_sim					: std_logic := '0';
		variable valid_line							: std_logic := '0';
		variable entering_dpd						: std_logic := '0';
		variable dpd_on									: std_logic := '0';
    begin
      file_open(input_file_stat, input_file, "./SSRAM_to_hRAM_stimuli.txt", read_mode);
      file_open(output_file_stat, output_file, "./SSRAM_to_hRAM_driver_exitstatus.txt", write_mode);
      if (rst_n = '0') then
        SSRAM_CS <= '0';
        SSRAM_OE <= '0';
        SSRAM_WE <= '0';
        start_sim <= '1';
      else
        if (not endfile(input_file)) then
          if (rising_edge(clk)) then
            if (SSRAM_busy = '0' and ongoing_operation = '0') then
							while (valid_line = '0') loop
								readline(input_file, inputline);
								if (inputline.all'length = 0 or inputline.all(1) = '#') then
									-- empty line or comment line, it must be ignored
									valid_line := '0';
								else
									valid_line := '1';
								end if;
							end loop;
							valid_line := '0';
              read(inputline, opcode);
              read(inputline, address_space);
              read(inputline, op_type);
              if (opcode = '0' and address_space = '0' and op_type = '0') then
                -- single read, memory space ----------------------------------------------------------------------------------------------------------------
								while (valid_line = '0') loop
									readline(input_file, inputline);
									if (inputline.all'length = 0 or inputline.all(1) = '#') then
										-- empty line or comment line, it must be ignored
										valid_line := '0';
									else
										valid_line := '1';
									end if;
								end loop;
								valid_line := '0';
                read(inputline, address);
                ongoing_operation := '1';
								op_start := '1';
                SSRAM_CS <= '1';
                SSRAM_OE <= '1';
                SSRAM_WE <= '0';
                SSRAM_address_spacing <= '0';
                SSRAM_address  <= address;
								SSRAM_burstcount <= "00000000001";
              elsif (opcode = '0' and address_space = '0' and op_type = '1') then
                -- read burst, memory space -----------------------------------------------------------------------------------------------------------------
								while (valid_line = '0') loop
									readline(input_file, inputline);
									if (inputline.all'length = 0 or inputline.all(1) = '#') then
										-- empty line or comment line, it must be ignored
										valid_line := '0';
									else
										valid_line := '1';
									end if;
								end loop;
								valid_line := '0';
                read(inputline, burstlen);
								while (valid_line = '0') loop
									readline(input_file, inputline);
									if (inputline.all'length = 0 or inputline.all(1) = '#') then
										-- empty line or comment line, it must be ignored
										valid_line := '0';
									else
										valid_line := '1';
									end if;
								end loop;
								valid_line := '0';
                read(inputline, address);
                ongoing_operation := '1';
								op_start := '1';
                SSRAM_CS <= '1';
                SSRAM_OE <= '1';
                SSRAM_WE <= '0';
                SSRAM_address_spacing <= '0';
                SSRAM_address  <= address;
                SSRAM_burstcount <= burstlen;
              elsif (opcode = '1' and address_space = '0' and op_type = '0') then
                -- single write, memory space ---------------------------------------------------------------------------------------------------------------
								while (valid_line = '0') loop
									readline(input_file, inputline);
									if (inputline.all'length = 0 or inputline.all(1) = '#') then
										-- empty line or comment line, it must be ignored
										valid_line := '0';
									else
										valid_line := '1';
									end if;
								end loop;
								valid_line := '0';
                read(inputline, address);
								while (valid_line = '0') loop
									readline(input_file, inputline);
									if (inputline.all'length = 0 or inputline.all(1) = '#') then
										-- empty line or comment line, it must be ignored
										valid_line := '0';
									else
										valid_line := '1';
									end if;
								end loop;
								valid_line := '0';
                read(inputline, data);
                ongoing_operation := '1';
								op_start := '1';
                SSRAM_CS <= '1';
                SSRAM_OE <= '0';
                SSRAM_WE <= '1';
                SSRAM_address_spacing <= '0';
                SSRAM_address  <= address;
                SSRAM_in <= data;
								SSRAM_burstcount <= "00000000001";
              elsif (opcode = '1' and address_space = '0' and op_type = '1') then
                -- write burst, memory space ----------------------------------------------------------------------------------------------------------------
								while (valid_line = '0') loop
									readline(input_file, inputline);
									if (inputline.all'length = 0 or inputline.all(1) = '#') then
										-- empty line or comment line, it must be ignored
										valid_line := '0';
									else
										valid_line := '1';
									end if;
								end loop;
								valid_line := '0';
                read(inputline, burstlen);
								while (valid_line = '0') loop
									readline(input_file, inputline);
									if (inputline.all'length = 0 or inputline.all(1) = '#') then
										-- empty line or comment line, it must be ignored
										valid_line := '0';
									else
										valid_line := '1';
									end if;
								end loop;
								valid_line := '0';
                read(inputline, address);
								while (valid_line = '0') loop
									readline(input_file, inputline);
									if (inputline.all'length = 0 or inputline.all(1) = '#') then
										-- empty line or comment line, it must be ignored
										valid_line := '0';
									else
										valid_line := '1';
									end if;
								end loop;
								valid_line := '0';
                read(inputline, data);
                ongoing_operation := '1';
								op_start := '1';
                ongoing_burst_write := '1';
                SSRAM_CS <= '1';
                SSRAM_OE <= '0';
                SSRAM_WE <= '1';
                SSRAM_address_spacing <= '0';
                SSRAM_address  <= address;
                SSRAM_in <= data;
								SSRAM_burstcount <= burstlen;
              elsif (opcode = '0' and address_space = '1' and op_type = '0') then
                -- single read, register space --------------------------------------------------------------------------------------------------------------
								while (valid_line = '0') loop
									readline(input_file, inputline);
									if (inputline.all'length = 0 or inputline.all(1) = '#') then
										-- empty line or comment line, it must be ignored
										valid_line := '0';
									else
										valid_line := '1';
									end if;
								end loop;
								valid_line := '0';
                read(inputline, address);
                ongoing_operation := '1';
								op_start := '1';
                SSRAM_CS <= '1';
                SSRAM_OE <= '1';
                SSRAM_WE <= '0';
                SSRAM_address_spacing <= '1';
                SSRAM_address  <= address;
								SSRAM_burstcount <= "00000000001";
              elsif (opcode = '1' and address_space = '1' and op_type = '0') then
                -- single write, register space -------------------------------------------------------------------------------------------------------------
								while (valid_line = '0') loop
									readline(input_file, inputline);
									if (inputline.all'length = 0 or inputline.all(1) = '#') then
										-- empty line or comment line, it must be ignored
										valid_line := '0';
									else
										valid_line := '1';
									end if;
								end loop;
								valid_line := '0';
                read(inputline, address);
								while (valid_line = '0') loop
									readline(input_file, inputline);
									if (inputline.all'length = 0 or inputline.all(1) = '#') then
										-- empty line or comment line, it must be ignored
										valid_line := '0';
									else
										valid_line := '1';
									end if;
								end loop;
								valid_line := '0';
                read(inputline, data);
                ongoing_operation := '1';
								op_start := '1';
                SSRAM_CS <= '1';
                SSRAM_OE <= '0';
                SSRAM_WE <= '1';
                SSRAM_address_spacing <= '1';
                SSRAM_address  <= address;
                SSRAM_in <= data;
								if (data(15) = '0') then
									entering_dpd := '1';
								else
									entering_dpd := '0';
									dpd_on := '0';
								end if;
              else
                -- invalid operation format -----------------------------------------------------------------------------------------------------------------
                terminate_sim := '1';
                exit_status := 1;
              end if;
            elsif (SSRAM_busy = '1' and ongoing_operation = '1') then
							op_start := '0';
              if (ongoing_burst_write = '1') then
                -- DUT busy executing a write burst operation ----------------------------------------------------------------------------------------------
                SSRAM_CS <= '1';
                SSRAM_OE <= '0';
                if (burst_step = to_integer(unsigned(burstlen))) then
                  -- the whole burst has been transmitted --------------------------------------------------------------------------------------------------
                  SSRAM_WE <= '0';
									ongoing_burst_write := '0';
                else
                  -- the burst to be written has not been entirely transmitted yet -------------------------------------------------------------------------
									SSRAM_WE <= '1';
									if (SSRAM_haltdata = '0') then
										while (valid_line = '0') loop
											readline(input_file, inputline);
											if (inputline.all'length = 0 or inputline.all(1) = '#') then
												-- empty line or comment line, it must be ignored
												valid_line := '0';
											else
												valid_line := '1';
											end if;
										end loop;
										valid_line := '0';
	                  read(inputline, data);
	                  SSRAM_in <= data;
	                  burst_step := burst_step + 1;
									end if;
                end if;
              else
                -- DUT busy executing a single read/write operation or a read burst operation --------------------------------------------------------------
                SSRAM_CS <= '1';
                SSRAM_OE <= '0';
                SSRAM_WE <= '0';
              end if;
						elsif (SSRAM_busy = '0' and ongoing_operation = '1' and op_start = '1') then
              -- SSRAM_busy has not been set by the DUT yet, but a new operation has already been commanded ------------------------------------------------
							if (dpd_on = '0') then
								SSRAM_CS <= '1';
								SSRAM_OE <= '0';
								if (ongoing_burst_write = '1') then
									-- we can continue to provide the values of the burst if it is allowed by the DUT (by means of haltdata) -----------------------------------
									if (burst_step = to_integer(unsigned(burstlen))) then
	                  -- the whole burst has been transmitted --------------------------------------------------------------------------------------------------
	                  SSRAM_WE <= '0';
										ongoing_burst_write := '0';
	                else
	                  -- the burst to be written has not been entirely transmitted yet -------------------------------------------------------------------------
										SSRAM_WE <= '1';
										if (SSRAM_haltdata = '0') then
											while (valid_line = '0') loop
												readline(input_file, inputline);
												if (inputline.all'length = 0 or inputline.all(1) = '#') then
													-- empty line or comment line, it must be ignored
													valid_line := '0';
												else
													valid_line := '1';
												end if;
											end loop;
											valid_line := '0';
		                  read(inputline, data);
		                  SSRAM_in <= data;
		                  burst_step := burst_step + 1;
										end if;
	                end if;
								else
									SSRAM_CS <= '0';
									SSRAM_OE <= '0';
									SSRAM_WE <= '0';
									ongoing_operation := '0';
									op_start := '0';
								end if;
							else
								SSRAM_WE <= '0';
							end if;
            elsif (SSRAM_busy = '0' and ongoing_operation = '1' and op_start = '0') then
              -- the previous operation is terminated, we can deactivate the chip select -------------------------------------------------------------------
              ongoing_operation := '0';
              burst_step := 1;
              SSRAM_CS <= '0';
              SSRAM_OE <= '0';
              SSRAM_WE <= '0';
							if (entering_dpd = '1') then
								dpd_on := '1';
							end if;
            end if;
          end if;
        else
					if (rising_edge(clk)) then
	          -- all the operation has been transmitted to the DUT --------------------------------------------------------------------------------------------
	          if (SSRAM_busy = '1' and ongoing_operation = '1') then
							op_start := '0';
	            if (ongoing_burst_write = '1') then
	              -- DUT busy eecuting a write burst operation -----------------------------------------------------------------------------------------------
	              SSRAM_CS <= '1';
	              SSRAM_OE <= '0';
	              if (burst_step = to_integer(unsigned(burstlen))) then
	                -- all the burst has been transmitted ----------------------------------------------------------------------------------------------------
	                SSRAM_WE <= '0';
									ongoing_burst_write := '0';
	              else
	                -- the burst has not been entirely transmitted yet, but the file is ended, thus the transmission is interrupted anyway -------------------
	                SSRAM_WE <= '0';
	              end if;
	            else
	              -- DUT busy executing a single read/write operation or a read burst operation ---------------------------------------------------------------
	              SSRAM_CS <= '1';
	              SSRAM_OE <= '0';
	              SSRAM_WE <= '0';
	            end if;
						elsif (SSRAM_busy = '0' and ongoing_operation = '1' and op_start = '1') then
              -- SSRAM_busy has not been set by the DUT yet, but a new operation has already been commanded ------------------------------------------------
							if (ongoing_burst_write = '1') then
								-- we can continue to provide the values of the burst if it is allowed by the DUT (by means of haltdata) -----------------------------------
								if (burst_step = to_integer(unsigned(burstlen))) then
                  -- the whole burst has been transmitted --------------------------------------------------------------------------------------------------
                  SSRAM_WE <= '0';
									ongoing_burst_write := '0';
                else
                  -- the burst to be written has not been entirely transmitted yet -------------------------------------------------------------------------
									SSRAM_WE <= '1';
									if (SSRAM_haltdata = '0') then
										while (valid_line = '0') loop
											readline(input_file, inputline);
											if (inputline.all'length = 0 or inputline.all(1) = '#') then
												-- empty line or comment line, it must be ignored
												valid_line := '0';
											else
												valid_line := '1';
											end if;
										end loop;
										valid_line := '0';
	                  read(inputline, data);
	                  SSRAM_in <= data;
	                  burst_step := burst_step + 1;
									end if;
                end if;
							end if;
	          elsif (SSRAM_busy = '0' and ongoing_operation = '1' and op_start = '0') then
	            -- the previous operation is terminated, we can deactivate the chip select --------------------------------------------------------------------
	            ongoing_operation := '0';
	            ongoing_burst_write := '0';
	            burst_step := 1;
	            SSRAM_CS <= '0';
	            SSRAM_OE <= '0';
	            SSRAM_WE <= '0';
	          elsif (SSRAM_busy = '0' and ongoing_operation = '0') then
	            -- the chip select has already been deactivated, we can terminate the simulation --------------------------------------------------------------
							if (final_clock_cycle = '0') then
								final_clock_cycle := '1';
							else
								terminate_sim := '1';
							end if;
	          end if;
					end if;
        end if;
        -- output file update and simulation end ----------------------------------------------------------------------------------------------------------
        if (rising_edge(clk)) then
					if (terminate_sim = '1') then
	          write(outputline, exit_status);
	          writeline(output_file, outputline);
	          stop_sim <= '1';
	        end if;
				end if;
      end if;
		end process input_driving;

end tb;

-----------------------------------------------------------------------------------------------------------------------------------------------------------
