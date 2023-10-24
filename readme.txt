--------------------------------------------------------------------------------------------------------------
IP CORES
--------------------------------------------------------------------------------------------------------------
DIRECTORIES DESCRIPTION:
	#
	# ./basic_system_v1/
		-- simple Nios II based system containing an OCRAM (used for both data and instructions)
		-- the OCRAM is implemented using an IP core available in the IP catalog
	#
	#
	# ./basic_system_v1/
		-- the same as basic_system_v1, but the OCRAM is used only for data
		-- OCROM used as instruction memory
	#
	# ./blockRAM_system_v1/
		-- simple Nios II based system containing an OCRAM (data memory)
		-- the OCRAM is implemented creating a custom IP core
		-- the custom OCRAM contains a single-port blockRAM and a component interfacing it with the Avalon bus
		-- OCROM used as instruction memory
	#
	# ./blockRAM_system_v2/
		-- the same as blockRAM_system_v1, but it also supports burst operations		
	#
	# ./hyperRAM_system/
		-- the same system as blockRAM_system_v2, but the blockRAM is substituted with an off-chip hyperRAM
		-- the custom on-chip IP core contains only the component interfacing the Avalon bus with the hyperbus
	#
	# ./datasheets/
		-- it contains useful datasheets
	#
	# ./archive/
		-- it contains old files that may still be useful
	#
--------------------------------------------------------------------------------------------------------------


	
