-- BRIEF DESCRIPTION: custom on-chip RAM with Intel Avalon memory-mapped interface
-- COMMENTS:
-- the on-chip ram is implemented using a single-port blockram from the FPGA IP catalog
-- the Avalon memory-mapped interface is implemented using a custom converter
-- burst operations supported
-- 8-bit address
-- 32-bit data
-- 11-bit burst lenght

library		IEEE;
use 			IEEE.std_logic_1164.all;
use 			IEEE.numeric_std.all;

entity custom_OCRAM is
port 
(
	clk               			: in  std_logic;
	reset_n           			: in  std_logic;
	avs_address       			: in  std_logic_vector(7 downto 0);
	avs_read          			: in  std_logic;
	avs_readdata      			: out std_logic_vector(31 downto 0);
	avs_write         			: in  std_logic;
	avs_writedata     			: in  std_logic_vector(31 downto 0);
	avs_waitrequest   			: out std_logic;
	avs_readdatavalid 			: out std_logic;
	avs_beginbursttransfer	: in  std_logic;
	avs_burstcount					: in  std_logic_vector(10 downto 0)
);
end entity custom_OCRAM;

architecture rtl of custom_OCRAM is

	-- COMPONENT: Avalon (slave) to blockram converter --------------------------------------------------------
	component avs_to_blockram_converter is
	port
	(
		-- clock and reset:
		clk                       : in    std_logic;
		rst_n											: in    std_logic;
		-- avs signals:
		avs_read                  : in    std_logic;
		avs_write                 : in    std_logic;
		avs_waitrequest           : out   std_logic;
		avs_readdatavalid         : out   std_logic;
		avs_address               : in    std_logic_vector(7 downto 0);
		avs_writedata             : in    std_logic_vector(31 downto 0);
		avs_readdata              : out   std_logic_vector(31 downto 0);
		avs_burstcount						: in  	std_logic_vector(10 downto 0);
		avs_beginbursttransfer		: in  	std_logic;
		-- blockram signals:
		blockram_rden             : out   std_logic;
		blockram_wren             : out   std_logic;
		blockram_address          : out   std_logic_vector(7 downto 0);
		blockram_data             : out   std_logic_vector(31 downto 0);
		blockram_q                : in    std_logic_vector(31 downto 0)
	);
	end component; ----------------------------------------------------------------------------------------------

	-- COMPONENT: blockram --------------------------------------------------------------------------------------
	component blockram_1port_8a_32d
	port
	(
		address		: in 	std_logic_vector(7 downto 0);
		clock			: in 	std_logic;
		data			: in 	std_logic_vector(31 downto 0);
		rden			: in 	std_logic;
		wren			: in 	std_logic;
		q					: out std_logic_vector(31 downto 0)
	);
	end component;

	-- SIGNALS --------------------------------------------------------------------------------------------------
	signal blockram_rden      : std_logic;
	signal blockram_wren      : std_logic;
	signal blockram_address   : std_logic_vector(7 downto 0);
	signal blockram_data      : std_logic_vector(31 downto 0);
	signal blockram_q         : std_logic_vector(31 downto 0);
	-------------------------------------------------------------------------------------------------------------
	
	begin

		-- converter ----------------------------------------------------------------------------------------------
		avs_to_blockram_converter_inst: avs_to_blockram_converter
		port map
		(
			clk              					=> clk, 
			rst_n											=> reset_n, 
			avs_read         					=> avs_read, 
			avs_write        					=> avs_write, 
			avs_waitrequest  					=> avs_waitrequest, 
			avs_readdatavalid					=> avs_readdatavalid, 
			avs_address      					=> avs_address,
			avs_writedata    					=> avs_writedata, 
			avs_readdata     					=> avs_readdata, 
			avs_burstcount						=> avs_burstcount,
			avs_beginbursttransfer		=> avs_beginbursttransfer,
			blockram_rden    					=> blockram_rden, 
			blockram_wren    					=> blockram_wren, 
			blockram_address 					=> blockram_address,
			blockram_data    					=> blockram_data, 
			blockram_q       					=> blockram_q
		); -------------------------------------------------------------------------------------------------------

		-- blockram ----------------------------------------------------------------------------------------------
		blockram_1port_inst: blockram_1port_8a_32d 
		port map 
		(
			address	 	=> blockram_address,
			clock	 		=> clk,
			data	 		=> blockram_data,
			rden	 		=> blockram_rden,
			wren	 		=> blockram_wren,
			q	 				=> blockram_q
		); ------------------------------------------------------------------------------------------------------

end architecture rtl;
