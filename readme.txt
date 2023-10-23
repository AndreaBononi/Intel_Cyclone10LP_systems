----------------------------------------------------------------------------------------------------------------------------------
IP CORES
----------------------------------------------------------------------------------------------------------------------------------
DIRECTORIES DESCRIPTION:
	#
	# ./basic_system/
		-- simple Nios II based system containing an on-chip RAM
		-- the RAM is created using an IP core available in the IP catalog, which can be directly connected to the Avalon bus
	#
	# ./blockRAM_system/
		-- the same system as before, but the RAM is implemented creating a custom IP core
		-- the custom RAM cannot be directly connected to the Avalon bus
		-- another custom IP core allows to interface the Avalon bus with the RAM
	#
	# ./hyperRAM_system/
		-- the same system as before, but the on-chip RAM is substituted with an off-chip hyperRAM
		-- a custom IP core is implemented to interface the Avalon bus with the hyperbus
	#
	# ./datasheets/
		-- it contains useful datasheets
	#
	# ./archive/
		-- it contains old files that may still be useful
	#
----------------------------------------------------------------------------------------------------------------------------------


	
