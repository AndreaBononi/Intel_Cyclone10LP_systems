-- BRIEF DESCRIPTION: driver for converter testbench
-- COMMENTS:
-- the input file ("stimuli.txt") contains the sequence of operations to be commanded to the converter
--
-- INPUT FILE FORMAT (empty lines or lines starting with '#' are ignored):
-- 1. <opcode><op_type>
-- 2. <burstlen>
-- 3. <address>
-- 4. <data0>
-- 5. <data1>
-- 6. <data2>
--
-- SINGLE READ:
-- opcode = 0, op_type = 0
-- the burstlen row is not present
-- the address row represents the target address
-- no data row is present
--
-- READ BURST:
-- opcode = 0, op_type = 1
-- the burstlen row represents the lenght of the burst (up to 2^11 - 1)
-- the address row represents the address of the first data of the burst
-- no data row is present
--
-- SINGLE WRITE:
-- opcode = 1, op_type = 0
-- the burstlen row is not present
-- the address row represents the target address
-- a single data row is present
--
-- WRITE BURST, MEMORY SPACE:
-- opcode = 1, op_type = 1
-- the burstlen row represents the lenght of the burst (up to 2^11 - 1)
-- the address row represents the address of the first data of the burst
-- the number of data rows is equal to the value of burstlen
--

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;
use 			ieee.std_logic_unsigned.all;
use 			ieee.std_logic_textio.all;
library 	std;
use 			std.textio.all;

entity driver is
port
(
	clk									    : in	std_logic;
	rst_n								    : in  std_logic;
  -- simulation signals
  driver_enable           : in  std_logic;
  start_sim						    :	out	std_logic := '0';
	stop_sim					      : out	std_logic := '0';
  -- avs signals
	avs_waitrequest 		    : in	std_logic;
	avs_address				      : out	std_logic_vector(31 downto 0);
	avs_read       		      : out std_logic;
	avs_write      		      : out std_logic;
	avs_writedata  		      : out std_logic_vector(15 downto 0);
  avs_readdata	 			    : in 	std_logic_vector(15 downto 0);
  avs_readdatavalid	      : in	std_logic;
  avs_beginbursttransfer  : out std_logic;
  avs_burstcount          : out std_logic_vector(10 downto 0)	
);
end driver;

architecture tb of driver is

	file input_file	: text;

	begin

		input_driving : process
    (
      -- sensitivity list
      clk, rst_n, driver_enable, avs_waitrequest, avs_readdatavalid
    )
		variable inputline			: line;
		variable file_stat      : file_open_status;
		variable opcode					: std_logic;
    variable optype					: std_logic;
    variable burstlen				: std_logic_vector(10 downto 0);
		variable address			  : std_logic_vector(31 downto 0);
		variable writedata		  : std_logic_vector(15 downto 0);
		variable valid_line			:	std_logic := '0';
    variable ongoing_op     : std_logic := '0';
		begin
			file_open( file_stat, input_file, "../sim/stimuli.txt", read_mode );
			if (rst_n = '0') then
				avs_read	<= '0';
				avs_write <= '0';
				start_sim <= '1';
			elsif (not endfile( input_file )) then
				if (rising_edge( clk )) then
					if (avs_waitrequest = '0' and driver_enable = '1') then
						while (valid_line = '0') loop
							readline( input_file, inputline );
							if not (inputline.all'length = 0 or inputline.all(1) = '#') then
								valid_line := '1';
							end if;
						end loop;
						valid_line := '0';
						read( inputline, opcode );
            read( inputline, optype );
						if (opcode = '0' and optype = '0') then
							-- single read operation -----------------------------------------------------------------
              while (valid_line = '0') loop
								readline( input_file, inputline );
								if not (inputline.all'length = 0 or inputline.all(1) = '#') then
									valid_line := '1';
								end if;
							end loop;
							valid_line := '0';
              read( inputline, address );
              avs_address <= address;
							avs_write <= '0';
							avs_read <= '1';
              avs_beginbursttransfer <= '0';
						elsif (opcode = '1' and optype = '0') then
							-- single write operation ----------------------------------------------------------------
              while (valid_line = '0') loop
								readline( input_file, inputline );
								if not (inputline.all'length = 0 or inputline.all(1) = '#') then
									valid_line := '1';
								end if;
							end loop;
							valid_line := '0';
              read( inputline, address );
              while (valid_line = '0') loop
								readline( input_file, inputline );
								if not (inputline.all'length = 0 or inputline.all(1) = '#') then
									valid_line := '1';
								end if;
							end loop;
							valid_line := '0';
              read( inputline, writedata );
              avs_address <= address;
              avs_writedata <= writedata;
							avs_write <= '1';
							avs_read <= '0';
              avs_beginbursttransfer <= '0';
            elsif (opcode = '0' and optype = '1') then
							-- read burst operation ------------------------------------------------------------------
              while (valid_line = '0') loop
								readline( input_file, inputline );
								if not (inputline.all'length = 0 or inputline.all(1) = '#') then
									valid_line := '1';
								end if;
							end loop;
							valid_line := '0';
              read( inputline, address );
              while (valid_line = '0') loop
								readline( input_file, inputline );
								if not (inputline.all'length = 0 or inputline.all(1) = '#') then
									valid_line := '1';
								end if;
							end loop;
							valid_line := '0';
              read( inputline, burstlen );
              avs_address <= address;
							avs_write <= '1';
							avs_read <= '0';
              avs_beginbursttransfer <= '1';
              avs_burstcount <= burstlen;
            elsif (opcode = '1' and optype = '1') then
							-- write burst operation -----------------------------------------------------------------
              while (valid_line = '0') loop
								readline( input_file, inputline );
								if not (inputline.all'length = 0 or inputline.all(1) = '#') then
									valid_line := '1';
								end if;
							end loop;
							valid_line := '0';
              read( inputline, address );
              while (valid_line = '0') loop
								readline( input_file, inputline );
								if not (inputline.all'length = 0 or inputline.all(1) = '#') then
									valid_line := '1';
								end if;
							end loop;
							valid_line := '0';
              read( inputline, burstlen );
              valid_line := '0';
              read( inputline, address );
              while (valid_line = '0') loop
								readline( input_file, inputline );
								if not (inputline.all'length = 0 or inputline.all(1) = '#') then
									valid_line := '1';
								end if;
							end loop;
							valid_line := '0';
              read( inputline, writedata );
              avs_address <= address;
              avs_writedata <= writedata;
							avs_write <= '1';
							avs_read <= '0';
              avs_beginbursttransfer <= '1';
              avs_burstcount <= burstlen;
						end if;
					end if;
        end if;
			else
				


			end if;
		end process input_driving;

end tb;
