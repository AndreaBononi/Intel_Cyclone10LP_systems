# TCL File Generated by Component Editor 22.1
# Wed Nov 15 09:53:14 CET 2023
# DO NOT MODIFY


# 
# custom_OCRAM "custom_OCRAM" v1.1
# Andrea Bononi 2023.11.15.09:53:14
# Custom on-chip RAM with Avalon interface (burst operations supported)
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module custom_OCRAM
# 
set_module_property DESCRIPTION "Custom on-chip RAM with Avalon interface (burst operations supported)"
set_module_property NAME custom_OCRAM
set_module_property VERSION 1.1
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR "Andrea Bononi"
set_module_property DISPLAY_NAME custom_OCRAM
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL custom_OCRAM
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file d_flipflop.vhd VHDL PATH hdl/d_flipflop.vhd
add_fileset_file t_flip_flop.vhd VHDL PATH hdl/t_flip_flop.vhd
add_fileset_file reg.vhd VHDL PATH hdl/reg.vhd
add_fileset_file mux_2to1.vhd VHDL PATH hdl/mux_2to1.vhd
add_fileset_file counter_Nbit.vhd VHDL PATH hdl/counter_Nbit.vhd
add_fileset_file comparator_Nbit.vhd VHDL PATH hdl/comparator_Nbit.vhd
add_fileset_file incrementer_8bit_nopipe.vhd VHDL PATH hdl/incrementer/incrementer_8bit_nopipe.vhd
add_fileset_file avs_to_blockram_converter_CU.vhd VHDL PATH hdl/avs_to_blockram_converter_CU.vhd
add_fileset_file avs_to_blockram_converter_EU.vhd VHDL PATH hdl/avs_to_blockram_converter_EU.vhd
add_fileset_file avs_to_blockram_converter.vhd VHDL PATH hdl/avs_to_blockram_converter.vhd
add_fileset_file blockram_1port_8a_32d.vhd VHDL PATH hdl/blockram/blockram_1port_8a_32d.vhd
add_fileset_file custom_OCRAM.vhd VHDL PATH hdl/custom_OCRAM.vhd TOP_LEVEL_FILE

add_fileset SIM_VHDL SIM_VHDL "" ""
set_fileset_property SIM_VHDL TOP_LEVEL custom_OCRAM
set_fileset_property SIM_VHDL ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VHDL ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file d_flipflop.vhd VHDL PATH hdl/d_flipflop.vhd
add_fileset_file t_flip_flop.vhd VHDL PATH hdl/t_flip_flop.vhd
add_fileset_file reg.vhd VHDL PATH hdl/reg.vhd
add_fileset_file mux_2to1.vhd VHDL PATH hdl/mux_2to1.vhd
add_fileset_file counter_Nbit.vhd VHDL PATH hdl/counter_Nbit.vhd
add_fileset_file comparator_Nbit.vhd VHDL PATH hdl/comparator_Nbit.vhd
add_fileset_file incrementer_8bit_nopipe.vhd VHDL PATH hdl/incrementer/incrementer_8bit_nopipe.vhd
add_fileset_file avs_to_blockram_converter_CU.vhd VHDL PATH hdl/avs_to_blockram_converter_CU.vhd
add_fileset_file avs_to_blockram_converter_EU.vhd VHDL PATH hdl/avs_to_blockram_converter_EU.vhd
add_fileset_file avs_to_blockram_converter.vhd VHDL PATH hdl/avs_to_blockram_converter.vhd
add_fileset_file blockram_1port_8a_32d.vhd VHDL PATH hdl/blockram/blockram_1port_8a_32d.vhd
add_fileset_file custom_OCRAM.vhd VHDL PATH hdl/custom_OCRAM.vhd


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset_n reset_n Input 1


# 
# connection point avalon_slave
# 
add_interface avalon_slave avalon end
set_interface_property avalon_slave addressUnits WORDS
set_interface_property avalon_slave associatedClock clock
set_interface_property avalon_slave associatedReset reset
set_interface_property avalon_slave bitsPerSymbol 8
set_interface_property avalon_slave burstOnBurstBoundariesOnly false
set_interface_property avalon_slave burstcountUnits WORDS
set_interface_property avalon_slave explicitAddressSpan 0
set_interface_property avalon_slave holdTime 0
set_interface_property avalon_slave isMemoryDevice true
set_interface_property avalon_slave linewrapBursts false
set_interface_property avalon_slave maximumPendingReadTransactions 1
set_interface_property avalon_slave maximumPendingWriteTransactions 0
set_interface_property avalon_slave readLatency 0
set_interface_property avalon_slave readWaitTime 1
set_interface_property avalon_slave setupTime 0
set_interface_property avalon_slave timingUnits Cycles
set_interface_property avalon_slave writeWaitTime 0
set_interface_property avalon_slave ENABLED true
set_interface_property avalon_slave EXPORT_OF ""
set_interface_property avalon_slave PORT_NAME_MAP ""
set_interface_property avalon_slave CMSIS_SVD_VARIABLES ""
set_interface_property avalon_slave SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave avs_address address Input 8
add_interface_port avalon_slave avs_read read Input 1
add_interface_port avalon_slave avs_readdata readdata Output 32
add_interface_port avalon_slave avs_write write Input 1
add_interface_port avalon_slave avs_writedata writedata Input 32
add_interface_port avalon_slave avs_waitrequest waitrequest Output 1
add_interface_port avalon_slave avs_readdatavalid readdatavalid Output 1
add_interface_port avalon_slave avs_beginbursttransfer beginbursttransfer Input 1
add_interface_port avalon_slave avs_burstcount burstcount Input 11
set_interface_assignment avalon_slave embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave embeddedsw.configuration.isMemoryDevice 1
set_interface_assignment avalon_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave embeddedsw.configuration.isPrintableDevice 0
