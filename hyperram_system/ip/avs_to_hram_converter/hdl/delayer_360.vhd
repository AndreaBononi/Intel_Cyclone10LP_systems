-- BRIEF DESCRIPTION: 10 ns delayer (360° with respect to a 100 MHz clock)

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;

entity delayer_360 is
port
(
	din		: in  std_logic;
	dout	: out std_logic 
);
end delayer_360;

architecture rtl of delayer_360 is

	begin

		dout <= din;    -- force the delay as a constaint in the SDC file

end rtl;
