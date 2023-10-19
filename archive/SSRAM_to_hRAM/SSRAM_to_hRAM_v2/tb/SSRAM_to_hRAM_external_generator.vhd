-- SSRAM_to_hRAM_external_generator.vhd ------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- RWDS generator for SSRAM to hRAM converter

-------------------------------------------------------------------------------------------------------------

entity SSRAM_to_hRAM_external_generator is
	generic
	(
		clock_period	: time	:= 10 ns
	);
	port
	(
    hbus_RWDS     		: inout std_logic;
		drive_RWDS_low		: in  	std_logic;
    RWDS          		: out 	std_logic;
    RWDS_90       		: out 	std_logic;
    RWDS_360      		: out 	std_logic;
		hCK_edgeal     		: in	 	std_logic;
    hbus_CK	      		: out 	std_logic
	);
end SSRAM_to_hRAM_external_generator;

-------------------------------------------------------------------------------------------------------------

architecture behavior of SSRAM_to_hRAM_external_generator is

	begin

		RWDS <= hbus_RWDS;
		RWDS_360 <= transport hbus_RWDS after clock_period;
		RWDS_90 <= transport hbus_RWDS after (clock_period/4);
		hbus_CK <= transport hCK_edgeal after (clock_period/4);
		hbus_RWDS <= '0' when drive_RWDS_low = '1' else 'Z';

end behavior;

-------------------------------------------------------------------------------------------------------------
