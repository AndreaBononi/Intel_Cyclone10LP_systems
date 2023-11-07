# TCL File Generated by Component Editor 22.1
# Tue Nov 07 11:18:08 CET 2023
# DO NOT MODIFY


# 
# hyperRAM "hyperRAM" v1.0
# Andrea Bononi 2023.11.07.11:18:08
# hyperRAM (model: s27kl0641)
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module hyperRAM
# 
set_module_property DESCRIPTION "hyperRAM (model: s27kl0641)"
set_module_property NAME hyperRAM
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR "Andrea Bononi"
set_module_property DISPLAY_NAME hyperRAM
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL hyperRAM
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file s27kl0641.v VERILOG PATH hdl/s27kl0641.v
add_fileset_file hyperRAM.v VERILOG PATH hdl/hyperRAM.v TOP_LEVEL_FILE

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL hyperRAM
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file s27kl0641.v VERILOG PATH hdl/s27kl0641.v
add_fileset_file hyperRAM.v VERILOG PATH hdl/hyperRAM.v


# 
# parameters
# 


# 
# display items
# 


# 
# connection point hram_CK
# 
add_interface hram_CK clock end
set_interface_property hram_CK clockRate 0
set_interface_property hram_CK ENABLED true
set_interface_property hram_CK EXPORT_OF ""
set_interface_property hram_CK PORT_NAME_MAP ""
set_interface_property hram_CK CMSIS_SVD_VARIABLES ""
set_interface_property hram_CK SVD_ADDRESS_GROUP ""

add_interface_port hram_CK hram_CK clk Input 1


# 
# connection point hram_RESET_n
# 
add_interface hram_RESET_n reset end
set_interface_property hram_RESET_n associatedClock hram_CK
set_interface_property hram_RESET_n synchronousEdges DEASSERT
set_interface_property hram_RESET_n ENABLED true
set_interface_property hram_RESET_n EXPORT_OF ""
set_interface_property hram_RESET_n PORT_NAME_MAP ""
set_interface_property hram_RESET_n CMSIS_SVD_VARIABLES ""
set_interface_property hram_RESET_n SVD_ADDRESS_GROUP ""

add_interface_port hram_RESET_n hram_RESET_n reset Input 1


# 
# connection point hyperbus_slave
# 
add_interface hyperbus_slave conduit end
set_interface_property hyperbus_slave associatedClock hram_CK
set_interface_property hyperbus_slave associatedReset hram_RESET_n
set_interface_property hyperbus_slave ENABLED true
set_interface_property hyperbus_slave EXPORT_OF ""
set_interface_property hyperbus_slave PORT_NAME_MAP ""
set_interface_property hyperbus_slave CMSIS_SVD_VARIABLES ""
set_interface_property hyperbus_slave SVD_ADDRESS_GROUP ""

add_interface_port hyperbus_slave hram_DQ data_stream Bidir 8
add_interface_port hyperbus_slave hram_RWDS data_strobe Bidir 1
add_interface_port hyperbus_slave hram_CS_n chipselect Input 1

