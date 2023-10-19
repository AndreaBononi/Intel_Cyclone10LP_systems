-- SSRAM_to_hRAM_monitor.vhd -----------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_textio.all;
library std;
use std.textio.all;

-- SSRAM to hRAM monitor (output storage)
-- the output file ("SSRAM_to_hRAM_readvalues.txt") contains the values provides by the memory after commandin a read operation

-- start_sim must be equal to '0' before starting the simulation, then it must remains equal to '1'
-- stop_sim must remain equal to '0' up to the moment in which the simulation ends, when it becomes equal to '1'

------------------------------------------------------------------------------------------------------------------

entity SSRAM_to_hRAM_monitor is
	port
	(
		clk											: in		std_logic;
		SSRAM_out								: in		std_logic_vector(15 downto 0);
		SSRAM_validout					: in		std_logic;
		start_sim								: in		std_logic;
		stop_sim								: in		std_logic
	);
end SSRAM_to_hRAM_monitor;

------------------------------------------------------------------------------------------------------------------

architecture tb of SSRAM_to_hRAM_monitor is

	file output_file: text;

	begin

		output_file_generation			: process (clk, SSRAM_validout, start_sim, stop_sim)
		variable outputline					: line;
		variable output_file_stat		: file_open_status;
		begin
			file_open(output_file_stat, output_file, "./SSRAM_to_hRAM_readvalues.txt", write_mode);
			if (stop_sim = '0') then
				if (start_sim = '1') then
					if (rising_edge(clk)) then
						if (SSRAM_validout = '1') then
							write(outputline, SSRAM_out);
							writeline(output_file, outputline);
						end if;
					end if;
				end if;
			end if;
		end process output_file_generation;

end tb;

------------------------------------------------------------------------------------------------------------------
