# TCL File Generated by Component Editor 22.1
# Thu Dec 21 12:28:24 CET 2023
# DO NOT MODIFY


# 
# avs_hram_mainconv "avs_hram_mainconv" v1.0
# Andrea Bononi (287628) 2023.12.21.12:28:24
# subsystem for avs_hram_converter, it implements the conversion between avs and hram but not the clock gating
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module avs_hram_mainconv
# 
set_module_property DESCRIPTION "subsystem for avs_hram_converter, it implements the conversion between avs and hram but not the clock gating"
set_module_property NAME avs_hram_mainconv
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR "Andrea Bononi (287628)"
set_module_property DISPLAY_NAME avs_hram_mainconv
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL avs_hram_mainconv_TEST
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file d_flipflop.vhd VHDL PATH hdl/d_flipflop.vhd
add_fileset_file sr_flipflop.vhd VHDL PATH hdl/sr_flipflop.vhd
add_fileset_file t_flipflop.vhd VHDL PATH hdl/t_flipflop.vhd
add_fileset_file reg.vhd VHDL PATH hdl/reg.vhd
add_fileset_file reg_negedge.vhd VHDL PATH hdl/reg_negedge.vhd
add_fileset_file mux_4to1.vhd VHDL PATH hdl/mux_4to1.vhd
add_fileset_file mux_2to1.vhd VHDL PATH hdl/mux_2to1.vhd
add_fileset_file counter_11bit_updown.vhd VHDL PATH hdl/counter_11bit_updown/counter_11bit_updown.vhd
add_fileset_file adder_22bit_1pipe.vhd VHDL PATH hdl/adder_22bit_1pipe/adder_22bit_1pipe.vhd
add_fileset_file dll_90.vhd VHDL PATH hdl/dll_90/dll_90.vhd
add_fileset_file CA_builder.vhd VHDL PATH hdl/CA_builder.vhd
add_fileset_file CA_unpacker.vhd VHDL PATH hdl/CA_unpacker.vhd
add_fileset_file comparator_Nbit.vhd VHDL PATH hdl/comparator_Nbit.vhd
add_fileset_file DDR_to_SDR_converter.vhd VHDL PATH hdl/DDR_to_SDR_converter.vhd
add_fileset_file counter_Nbit.vhd VHDL PATH hdl/counter_Nbit.vhd
add_fileset_file conf_builder.vhd VHDL PATH hdl/conf_builder.vhd
add_fileset_file decoder_2bit.vhd VHDL PATH hdl/decoder_2bit.vhd
add_fileset_file SDR_to_DDR_converter.vhd VHDL PATH hdl/SDR_to_DDR_converter.vhd
add_fileset_file tristate_buffer.vhd VHDL PATH hdl/tristate_buffer.vhd
add_fileset_file timer_14bit.vhd VHDL PATH hdl/timer_14bit.vhd
add_fileset_file synchronizer_EU.vhd VHDL PATH hdl/synchronizer_EU.vhd
add_fileset_file synchronizer_CU.vhd VHDL PATH hdl/synchronizer_CU.vhd
add_fileset_file synchronizer.vhd VHDL PATH hdl/synchronizer.vhd
add_fileset_file avs_hram_mainconv_TEST_EU.vhd VHDL PATH hdl/avs_hram_mainconv_TEST_EU.vhd
add_fileset_file avs_hram_mainconv_CU.vhd VHDL PATH hdl/avs_hram_mainconv_CU.vhd
add_fileset_file avs_hram_mainconv_TEST.vhd VHDL PATH hdl/avs_hram_mainconv_TEST.vhd TOP_LEVEL_FILE

add_fileset SIM_VHDL SIM_VHDL "" ""
set_fileset_property SIM_VHDL TOP_LEVEL avs_hram_mainconv_TEST
set_fileset_property SIM_VHDL ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VHDL ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file d_flipflop.vhd VHDL PATH hdl/d_flipflop.vhd
add_fileset_file sr_flipflop.vhd VHDL PATH hdl/sr_flipflop.vhd
add_fileset_file t_flipflop.vhd VHDL PATH hdl/t_flipflop.vhd
add_fileset_file reg.vhd VHDL PATH hdl/reg.vhd
add_fileset_file reg_negedge.vhd VHDL PATH hdl/reg_negedge.vhd
add_fileset_file mux_4to1.vhd VHDL PATH hdl/mux_4to1.vhd
add_fileset_file mux_2to1.vhd VHDL PATH hdl/mux_2to1.vhd
add_fileset_file counter_11bit_updown.vhd VHDL PATH hdl/counter_11bit_updown/counter_11bit_updown.vhd
add_fileset_file adder_22bit_1pipe.vhd VHDL PATH hdl/adder_22bit_1pipe/adder_22bit_1pipe.vhd
add_fileset_file dll_90.vhd VHDL PATH hdl/dll_90/dll_90.vhd
add_fileset_file CA_builder.vhd VHDL PATH hdl/CA_builder.vhd
add_fileset_file CA_unpacker.vhd VHDL PATH hdl/CA_unpacker.vhd
add_fileset_file comparator_Nbit.vhd VHDL PATH hdl/comparator_Nbit.vhd
add_fileset_file DDR_to_SDR_converter.vhd VHDL PATH hdl/DDR_to_SDR_converter.vhd
add_fileset_file counter_Nbit.vhd VHDL PATH hdl/counter_Nbit.vhd
add_fileset_file conf_builder.vhd VHDL PATH hdl/conf_builder.vhd
add_fileset_file decoder_2bit.vhd VHDL PATH hdl/decoder_2bit.vhd
add_fileset_file SDR_to_DDR_converter.vhd VHDL PATH hdl/SDR_to_DDR_converter.vhd
add_fileset_file tristate_buffer.vhd VHDL PATH hdl/tristate_buffer.vhd
add_fileset_file timer_14bit.vhd VHDL PATH hdl/timer_14bit.vhd
add_fileset_file synchronizer_EU.vhd VHDL PATH hdl/synchronizer_EU.vhd
add_fileset_file synchronizer_CU.vhd VHDL PATH hdl/synchronizer_CU.vhd
add_fileset_file synchronizer.vhd VHDL PATH hdl/synchronizer.vhd
add_fileset_file avs_hram_mainconv_TEST_EU.vhd VHDL PATH hdl/avs_hram_mainconv_TEST_EU.vhd
add_fileset_file avs_hram_mainconv_CU.vhd VHDL PATH hdl/avs_hram_mainconv_CU.vhd
add_fileset_file avs_hram_mainconv_TEST.vhd VHDL PATH hdl/avs_hram_mainconv_TEST.vhd


# 
# parameters
# 
add_parameter drive_strength STD_LOGIC_VECTOR 0
set_parameter_property drive_strength DEFAULT_VALUE 0
set_parameter_property drive_strength DISPLAY_NAME drive_strength
set_parameter_property drive_strength WIDTH 3
set_parameter_property drive_strength TYPE STD_LOGIC_VECTOR
set_parameter_property drive_strength UNITS None
set_parameter_property drive_strength ALLOWED_RANGES 0:7
set_parameter_property drive_strength HDL_PARAMETER true


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
# connection point avalon_slave
# 
add_interface avalon_slave avalon end
set_interface_property avalon_slave addressUnits WORDS
set_interface_property avalon_slave associatedClock clock
set_interface_property avalon_slave associatedReset reset_n
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

add_interface_port avalon_slave avs_address address Input 32
add_interface_port avalon_slave avs_read read Input 1
add_interface_port avalon_slave avs_readdata readdata Output 16
add_interface_port avalon_slave avs_write write Input 1
add_interface_port avalon_slave avs_writedata writedata Input 16
add_interface_port avalon_slave avs_waitrequest waitrequest Output 1
add_interface_port avalon_slave avs_readdatavalid readdatavalid Output 1
add_interface_port avalon_slave avs_burstcount burstcount Input 11
set_interface_assignment avalon_slave embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave embeddedsw.configuration.isMemoryDevice 1
set_interface_assignment avalon_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave embeddedsw.configuration.isPrintableDevice 0


# 
# connection point reset_n
# 
add_interface reset_n reset end
set_interface_property reset_n associatedClock clock
set_interface_property reset_n synchronousEdges DEASSERT
set_interface_property reset_n ENABLED true
set_interface_property reset_n EXPORT_OF ""
set_interface_property reset_n PORT_NAME_MAP ""
set_interface_property reset_n CMSIS_SVD_VARIABLES ""
set_interface_property reset_n SVD_ADDRESS_GROUP ""

add_interface_port reset_n reset_n reset_n Input 1


# 
# connection point hyperbus_reduced_TEST
# 
add_interface hyperbus_reduced_TEST conduit end
set_interface_property hyperbus_reduced_TEST associatedClock clock
set_interface_property hyperbus_reduced_TEST associatedReset ""
set_interface_property hyperbus_reduced_TEST ENABLED true
set_interface_property hyperbus_reduced_TEST EXPORT_OF ""
set_interface_property hyperbus_reduced_TEST PORT_NAME_MAP ""
set_interface_property hyperbus_reduced_TEST CMSIS_SVD_VARIABLES ""
set_interface_property hyperbus_reduced_TEST SVD_ADDRESS_GROUP ""

add_interface_port hyperbus_reduced_TEST hram_DQ data Bidir 8
add_interface_port hyperbus_reduced_TEST hram_CS_n chipselect_n Output 1
add_interface_port hyperbus_reduced_TEST hram_RESET_n localreset_n Output 1
add_interface_port hyperbus_reduced_TEST hram_RWDS_in strobe_to_memory Input 1
add_interface_port hyperbus_reduced_TEST hram_RWDS_in_90shift shiftedstrobe_to_memory Input 1
add_interface_port hyperbus_reduced_TEST hram_RWDS_out strobe_from_memory Output 1


# 
# connection point clkctrl_master
# 
add_interface clkctrl_master conduit end
set_interface_property clkctrl_master associatedClock ""
set_interface_property clkctrl_master associatedReset ""
set_interface_property clkctrl_master ENABLED true
set_interface_property clkctrl_master EXPORT_OF ""
set_interface_property clkctrl_master PORT_NAME_MAP ""
set_interface_property clkctrl_master CMSIS_SVD_VARIABLES ""
set_interface_property clkctrl_master SVD_ADDRESS_GROUP ""

add_interface_port clkctrl_master clk90 inclk Output 1
add_interface_port clkctrl_master hCK_enable ena Output 1

