-- BRIEF DESCRIPTION: RWDS handler

library   ieee;
use       ieee.std_logic_1164.all;
use       ieee.numeric_std.all;

entity strobe_handler is
generic
(
	RWDS_period : time	:= 10 ns
);
port
(
  hram_RWDS     	  : inout std_logic;
  RWDS_in   		    : out  	std_logic;
  RWDS_in_90shift   : out  	std_logic;
  RWDS_out      		: in   	std_logic
);
end strobe_handler;

architecture behavior of strobe_handler is

	begin

		hram_RWDS <= RWDS_out;
    RWDS_in <= hram_RWDS;
		RWDS_in_90shift <= transport hram_RWDS after (RWDS_period/4);

end behavior;