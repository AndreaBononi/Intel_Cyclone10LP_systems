--------------------------------------------------------------------------------------------------------------
IP CORES
--------------------------------------------------------------------------------------------------------------
DIRECTORIES DESCRIPTION:
#
# ./basic_system/
	-- simple Nios II based system containing an OCRAM (used for both data and instructions)
	-- the OCRAM is implemented using an IP core available in the IP catalog
	-- functional simulation: succesfully completed
	-- timing analysis: succesfully completed
	-- test on VirtLab board: succesfully completed
#
# ./blockram_system_v1/
	-- simple Nios II based system containing an OCRAM (used for both data and instructions)
	-- the OCRAM is implemented creating a custom IP core
	-- the custom OCRAM contains a single-port blockRAM and a component interfacing it with the Avalon bus
	-- currently under development
#
# ./blockram_system_v2/
	-- the same as blockRAM_system_v1, but it also supports burst operations
	-- currently under development	
#
# ./hyperram_system/
	-- the same system as blockRAM_system_v2, but the blockRAM is substituted with an off-chip hyperRAM
	-- the custom on-chip IP core contains only the component interfacing the Avalon bus with the hyperbus
	-- currently under development
#
# ./datasheets/
	-- it contains useful datasheets
#
# ./archive/
	-- it contains old files that may still be useful
#
--------------------------------------------------------------------------------------------------------------


	
