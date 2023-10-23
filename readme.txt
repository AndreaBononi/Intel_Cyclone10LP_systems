--------------------------------------------------------------------------------------------------------------
IP CORES
--------------------------------------------------------------------------------------------------------------
DIRECTORIES DESCRIPTION:
	#
	# ./basic_system/
		-- simple Nios II based system containing an OCRAM
		-- the OCRAM is created using an IP core available in the IP catalog
	#
	# ./blockRAM_system/
		-- the same system as before, but the OCRAM is implemented creating a custom IP core
		-- the custom OCRAM contains a single-port RAM and a component interfacing it with the Avalon bus
	#
	# ./hyperRAM_system/
		-- the same system as before, but the OCRAM is substituted with an off-chip hyperRAM
		-- a custom IP component interfaces the off-chip hyperRAM with the Avalon bus
	#
	# ./datasheets/
		-- it contains useful datasheets
	#
	# ./archive/
		-- it contains old files that may still be useful
	#
--------------------------------------------------------------------------------------------------------------


	
