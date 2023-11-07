-- BRIEF DESCRIPTION: Avalon memory-mapped slave to hyperRAM converter
-- COMMENTS:
-- 

library		IEEE;
use 			IEEE.std_logic_1164.all;
use 			IEEE.numeric_std.all;

entity avs_to_hram_converter is
port 
(
	clk                    : in    std_logic;
	reset_n                : in    std_logic;
	-- avs signals
	avs_address            : in    std_logic_vector(31 downto 0);
	avs_read               : in    std_logic;
	avs_readdata           : out   std_logic_vector(15 downto 0);
	avs_write              : in    std_logic;
	avs_writedata          : in    std_logic_vector(15 downto 0);
	avs_waitrequest        : out   std_logic;
	avs_readdatavalid      : out   std_logic;
	avs_beginbursttransfer : in    std_logic;
	avs_burstcount         : in    std_logic;
	-- hram signals 	
	hram_RESET_n           : out   std_logic;
	hram_CK                : out   std_logic;
	hram_DQ                : inout std_logic_vector(7 downto 0);
	hram_RWDS              : inout std_logic;
	hram_CS_n              : out   std_logic 
);
end entity avs_to_hram_converter;

architecture rtl of avs_to_hram_converter is
begin

	

end architecture rtl;
