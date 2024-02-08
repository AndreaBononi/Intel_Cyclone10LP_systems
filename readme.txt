--------------------------------------------------------------------------------------------------------------
IP CORES
--------------------------------------------------------------------------------------------------------------
DIRECTORIES DESCRIPTION:
#
# ./basic_system/
	-- Nios II/e based system containing a single OCRAM (used for both data and instructions)
	-- the OCRAM is implemented using an IP core available in the IP catalog
#
# ./blockram_system_v1/
	-- Nios II/e based system containing two OCRAMs (data memory and instruction memory)
	-- the instruction OCRAM is implemented using an IP core available in the IP catalog
	-- the data OCRAM is implemented creating a custom IP core
	-- the data OCRAM is made up by a 1-port blockRAM and a component interfacing it with the Avalon bus
#
# ./blockram_system_v2/
	-- Nios II/f based system containing an OCRAM (data memory) and an OCROM (instruction memory)
	-- the instruction OCROM is implemented using an IP core available in the IP catalog
	-- the data OCRAM is implemented creating a custom IP core which supports burst operations
	-- the data OCRAM is made up by a 1-port blockRAM and a component interfacing it with the Avalon bus
#
# ./hyperram_system/
	-- the same system as blockRAM_system_v2, but the blockRAM is substituted with an off-chip hyperRAM
	-- the custom on-chip IP core contains only the component interfacing the Avalon bus with the hyperbus
#
# ./hyperram_system_e/
	-- the same system as hyperram_system, but it employs a Nios II/e 
#
# ./datasheets/
	-- it contains useful datasheets
#
--------------------------------------------------------------------------------------------------------------
NOTE: Platform Designer refers to the memory initialization files using absolut pathnames.
Make sure to match the following pathnames or re-assign the memory initialization file in Platform Designer.
# /home/andrea/Documents/Tesi_287628/287628/basic_system/SBT_workspace/basic_system/mem_init/basic_system_OCRAM.hex
# /home/andrea/Documents/Tesi_287628/287628/blockram_system_v1/SBT_workspace/blockram_system_v1/mem_init/blockram_system_v1_instruction_OCRAM.hex
# /home/andrea/Documents/Tesi_287628/287628/blockram_system_v2/SBT_workspace/blockram_system_v2/mem_init/blockram_system_v2_instruction_OCROM.hex
# /home/andrea/Documents/Tesi_287628/287628/hyperram_system/SBT_workspace/avs_hram_converter_TEST_advanced/mem_init/avs_hram_converter_TEST_advanced_instruction_OCROM.hex
# /home/andrea/Documents/Tesi_287628/287628/hyperram_system_e/SBT_workspace/avs_hram_converter_TEST_advanced/mem_init/avs_hram_converter_TEST_advanced_instruction_OCROM.hex
--------------------------------------------------------------------------------------------------------------
