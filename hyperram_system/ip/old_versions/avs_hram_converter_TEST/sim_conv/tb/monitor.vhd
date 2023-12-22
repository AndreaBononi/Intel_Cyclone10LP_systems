-- BRIEF DESCRITPION: monitor (output storage) for converter testbench
-- COMMENTS:
-- the output file ("readvalues.txt") contains the values provided by the memory after commanding a read operation
-- start_sim must be equal to '0' before starting the simulation, then it must remains equal to '1'
-- stop_sim must remain equal to '0' up to the moment in which the simulation ends, when it becomes equal to '1'

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;
use 			ieee.std_logic_unsigned.all;
use 			ieee.std_logic_textio.all;
library 	std;
use 			std.textio.all;

entity monitor is
port
(
	clk									: in		std_logic;
	avs_readdatavalid   : in		std_logic;
	avs_readdata	 			: in 		std_logic_vector(15 downto 0);
	start_sim						: in		std_logic;
	stop_sim						: in		std_logic
);
end monitor;

architecture tb of monitor is

	file output_file: text;

	begin

		output_file_generation			: process (clk, avs_readdatavalid, start_sim, stop_sim)
		variable outputline					: line;
		variable output_file_stat   : file_open_status;
		begin
			file_open( output_file_stat, output_file, "./readvalues.txt", write_mode );
			if (stop_sim = '0') then
				if (start_sim = '1') then
					if (rising_edge(clk)) then
						if (avs_readdatavalid = '1') then
							write( outputline, avs_readdata );
							writeline( output_file, outputline );
						end if;
					end if;
				end if;
			end if;
		end process output_file_generation;

end tb;
