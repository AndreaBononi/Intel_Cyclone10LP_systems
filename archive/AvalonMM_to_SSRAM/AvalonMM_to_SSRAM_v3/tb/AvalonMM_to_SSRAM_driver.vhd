-- AvalonMM_to_SSRAM_driver.vhd ----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
library std;
use std.textio.all;

------------------------------------------------------------------------------------------------------------------
-- driver for AvalonMM_to_SSRAM
------------------------------------------------------------------------------------------------------------------
-- the input file ("AvalonMM_to_SSRAM_stimuli.txt") contains the sequence of operations to be commanded
-- the driver must wait for the completion of the initialization before start sending commands to the DUT
------------------------------------------------------------------------------------------------------------------
-- INPUT FILE FORMAT (empty lines or lines starting with '#' are ignored):
-- each row of the input files is made up by 49 bits (write operation) or 33 bits (read operation)
-- the first bit represents the opcode ('0' to read, '1' to write)
-- the following 32 bits represent the memory address
-- in case of write operation, the final 16 bits represents the data to be written in the memory
------------------------------------------------------------------------------------------------------------------

entity AvalonMM_to_SSRAM_driver is
	port
	(
		clk										: in		std_logic;
		rst_n									: in  	std_logic;
		avs_s0_waitrequest 		: in		std_logic;
		avs_s0_readdatavalid	: in		std_logic;
		preliminary_check			: in		std_logic;
		avs_s0_readdata	 			: in 		std_logic_vector(15 downto 0);
		avs_s0_address				: out		std_logic_vector(31 downto 0);
		avs_s0_read       		: out 	std_logic;
		avs_s0_write      		: out 	std_logic;
		avs_s0_writedata  		: out 	std_logic_vector(15 downto 0);
		start_sim							:	out		std_logic := '0';
		driver_stop						: out		std_logic := '0';
		init									: out		std_logic := '1'
	);
end AvalonMM_to_SSRAM_driver;

------------------------------------------------------------------------------------------------------------------

architecture tb of AvalonMM_to_SSRAM_driver is

	file input_file								: text;

	begin
		input_driving								: process(clk, rst_n, avs_s0_waitrequest, avs_s0_readdatavalid, preliminary_check)
		variable inputline					: line;
		variable input_file_stat		: file_open_status;
		variable opcode							: std_logic;
		variable input_address			: std_logic_vector(31 downto 0);
		variable input_writedata		: std_logic_vector(15 downto 0);
		variable pending_read				: integer := 0;
		variable valid_line					:	std_logic := '0';
		begin
			file_open(input_file_stat, input_file, "../sim/AvalonMM_to_SSRAM_stimuli.txt", read_mode);
			if (rst_n = '0') then
				avs_s0_read	<= '0';
				avs_s0_write <= '0';
				start_sim <= '1';
			elsif (preliminary_check = '1' and avs_s0_waitrequest = '0') then
				-- the DUT has just terminated the initialization
				init <= '0';
			elsif (not endfile(input_file)) then
				if (rising_edge(clk)) then
					if (avs_s0_waitrequest = '0') then
						-- the DUT is ready to start a new operation
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
						if (opcode = '0') then
							-- read operation --------------------------------------------------------------------------------
							read(inputline, input_address);
							avs_s0_write <= '0';
							avs_s0_read <= '1';
							avs_s0_address <= input_address;
						elsif (opcode = '1') then
							-- write operation -------------------------------------------------------------------------------
							read(inputline, input_address);
							read(inputline, input_writedata);
							avs_s0_read <= '0';
							avs_s0_write <= '1';
							avs_s0_address <= input_address;
							avs_s0_writedata <= input_writedata;
						end if;
					end if;
				end if;
				if (pending_read > 0) then
					if (avs_s0_readdatavalid = '1') then
						pending_read := pending_read - 1;
					end if;
				end if;
			else
				-- wait for completion -----------------------------------------------------------------------------
				if (rising_edge(clk)) then
					if (pending_read > 0) then
						if (avs_s0_readdatavalid = '1') then
							pending_read := pending_read - 1;
						end if;
					else
						driver_stop <= '1';
					end if;
					if (avs_s0_waitrequest = '0') then
						avs_s0_read <= '0';
						avs_s0_write <= '0';
					end if;
				end if;
			end if;
		end process input_driving;

end tb;

------------------------------------------------------------------------------------------------------------------
