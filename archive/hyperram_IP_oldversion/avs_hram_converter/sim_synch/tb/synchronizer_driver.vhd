-- BRIEF DESCRIPTION: driver for sycnhronizer testbench
-- COMMENTS:
-- it provides the strobe (synch_strobe) to the DUT with a configurable shift (strobe_shift) with respect to the clock
-- it provides the DUT input (synch_din) center-aligned with the rising edge of synch_strobe (with the exception of the first edge)
-- the input is provided to the DUT only after an initial reset
-- it generates the start_sim signal ('0' at the beginning, '1' after the initial reset)
-- it generates the stop_sim signal ('0' until the end of the input file, '1' after)
-- the sequence of 16-bit input data (one per row) is stored in the "synchronizer_in.txt" file

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;
use 			ieee.std_logic_unsigned.all;
use 			ieee.std_logic_textio.all;
library 	std;
use 			std.textio.all;

entity synchronizer_driver is
generic
(
	strobe_shift : time := 0 ns;
	clock_period : time := 10 ns
);
port
(
	clk							: in		std_logic;
	rst_n						: in  	std_logic;
	synch_enable    : out		std_logic := '1';
	synch_strobe    : out		std_logic := '0';
	synch_din       : out		std_logic_vector(15 downto 0);
	synch_busy      : in		std_logic;
	start_sim				:	out		std_logic := '0';
	stop_sim				: out		std_logic := '0'
);
end synchronizer_driver;

architecture tb of synchronizer_driver is

	file 		input_file	: text;
	signal 	strobe			:	std_logic := '0';
	signal 	strobe_on		: std_logic := '0';
	signal 	strobe_off	: std_logic := '0';

	begin

		input_driving								: process (clk, rst_n, synch_busy)
		variable inputline					: line;
		variable input_file_stat		: file_open_status;
		variable input_data					: std_logic_vector(15 downto 0);
		variable delay_ending				: integer := 0;
		variable valid_line					: std_logic := '0';
		begin
			file_open(input_file_stat, input_file, "./synchronizer_in.txt", read_mode);
			if (rst_n = '0') then
				start_sim <= '1';
			else
				if (not endfile(input_file)) then
					if (rising_edge(clk)) then
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
						read(inputline, input_data);
            strobe_on <= '1';
						synch_din <= input_data after (strobe_shift + clock_period/2);
					end if;
				else
					if (rising_edge(clk)) then
            if (synch_busy = '0') then
							delay_ending := delay_ending + 1;
              if (delay_ending = 2) then
                strobe_off <= '1' after (strobe_shift + clock_period/2);
              end if;
              if (delay_ending = 10) then
                stop_sim <= '1';
              end if;
					  end if;
					end if;
				end if;
			end if;
		end process input_driving;
		
    strobe <= transport clk after strobe_shift;
		synch_strobe <= strobe and strobe_on and (not strobe_off);

end tb;