-- BRIEF DESCRIPTION: 2.5 ns delayer (90° with respect to a 100 MHz clock)

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;

entity delayer_90 is
port
(
	din		: in  std_logic;
	dout	: out std_logic 
);
end delayer_90;

architecture rtl of delayer_90 is

	begin

		dout <= din;    -- force the delay as a constaint in the SDC file

end rtl;
