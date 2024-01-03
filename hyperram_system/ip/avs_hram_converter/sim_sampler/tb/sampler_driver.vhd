-- BRIEF DESCRIPTION: driver for sampler testbench
-- COMMENTS:
-- it provides to the sampler the DDR input and the corresponding edge-aligned RWDS signal
-- the input is provided to the DUT only after an initial reset
-- it generates the start_sim signal ('0' at the beginning, '1' after the initial reset)
-- it generates the stop_sim signal ('0' until the end of the input file, '1' after)
-- the DDR input data are stored in the "sampler_in.txt" file

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;
use 			ieee.std_logic_unsigned.all;
use 			ieee.std_logic_textio.all;
library 	std;
use 			std.textio.all;

entity sampler_driver is
generic
(
	clock_shift   : time := 0 ns;
	clock_period  : time := 10 ns
);
port
(
	clk							  : in	std_logic;
	rst_n						  : in  std_logic;
	start_sim				  :	out	std_logic := '0';
	stop_sim				  : out	std_logic := '0';
  sampler_DDR_in    : out std_logic_vector(7 downto 0);
  sampler_rwds_in   : out std_logic
);
end sampler_driver;

architecture tb of sampler_driver is

	file input_file	: text;

	begin



end tb;