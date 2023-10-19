----------------------------------------------------------------------------------------------------------------------------------
IP CORE: AvalonMM_to_hRAM 
----------------------------------------------------------------------------------------------------------------------------------
COMPONENT DESCRIPTION:
The component implements the conversion between an Intel Avalon memory-mapped interface and a generic hyperRAM interface.
The component is separated in two different sub-components: the AvalonMM_to_SSRAM converter and the SSRAM_to_hRAM converter.
----------------------------------------------------------------------------------------------------------------------------------
DIRECTORIES DESCRIPTION:
	#
	# ./AvalonMM_to_SSRAM/
		-- Converter between Intel Avalon memory-mapped interface and SSRAM interface
	#
	# ./SSRAM_to_hRAM/
		-- Converter between SSRAM interface and hRAM interface
	#
	# ./datasheets/
		-- It contains useful datasheets
	#
----------------------------------------------------------------------------------------------------------------------------------
FILES DESCRIPTION:
	#	
	# ./avm_abstract.odt
		-- It contains useful information related to the Avalon Memory Mapped interface
	#
	# ./hRAM_abstract.odt
		-- It contains useful information related to the hyperRAM
	#
	# ./implementation_notes.odt
		-- It explains all the decisions made during the design
	#
----------------------------------------------------------------------------------------------------------------------------------
	
