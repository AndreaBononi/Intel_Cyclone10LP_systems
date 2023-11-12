-- BRIEF DESCRIPTION: execution unit of the AvalonMM to blockram converter
-- COMMENTS:
-- 

library		IEEE;
use 			IEEE.std_logic_1164.all;
use 			IEEE.numeric_std.all;

entity avs_to_blockram_converter_EU is
port 
(
	-- clock and reset:
		clk                       : in    std_logic;
		rst_n											: in    std_logic;
		-- amv signals:
		avs_read                  : in    std_logic;
		avs_write                 : in    std_logic;
		avs_waitrequest           : out   std_logic;
		avs_readdatavalid         : out   std_logic;
		avs_address               : in    std_logic_vector(N_address-1 downto 0);
		avs_writedata             : in    std_logic_vector(N_data-1 downto 0);
		avs_readdata              : out   std_logic_vector(N_data-1 downto 0);
		avs_burstcount						: in  	std_logic_vector(10 downto 0)
		avs_beginbursttransfer		: in  	std_logic;
		-- blockram signals:
		blockram_rden             : out   std_logic;
		blockram_wren             : out   std_logic;
		blockram_address          : out   std_logic_vector(N_address-1 downto 0);
		blockram_data             : out   std_logic_vector(N_data-1 downto 0);
		blockram_q                : in    std_logic_vector(N_data-1 downto 0)
    -- control signals:

    -- status signals:
    
);
end entity avs_to_blockram_converter_EU;

architecture rtl of avs_to_blockram_converter_EU is



	-- SIGNALS --------------------------------------------------------------------------------------------------
	
	-------------------------------------------------------------------------------------------------------------
	
	begin

		

end architecture rtl;
