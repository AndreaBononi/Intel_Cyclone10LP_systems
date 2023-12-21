# _hw.tcl file for clkctrl
package require -exact qsys 14.0

# module properties
set_module_property NAME {clkctrl}
set_module_property DISPLAY_NAME {clkctrl}

# default module properties
set_module_property VERSION {1.0}
set_module_property GROUP {}
set_module_property DESCRIPTION {}
set_module_property AUTHOR {}

set_module_property COMPOSITION_CALLBACK compose
set_module_property opaque_address_map false

proc compose { } {
    # Instances and instance parameters
    # (disabled instances are intentionally culled)
    add_instance altclkctrl_0 altclkctrl 22.1
    set_instance_parameter_value altclkctrl_0 {CLOCK_TYPE} {1}
    set_instance_parameter_value altclkctrl_0 {ENA_REGISTER_MODE} {1}
    set_instance_parameter_value altclkctrl_0 {GUI_USE_ENA} {1}
    set_instance_parameter_value altclkctrl_0 {NUMBER_OF_CLOCKS} {1}
    set_instance_parameter_value altclkctrl_0 {USE_GLITCH_FREE_SWITCH_OVER_IMPLEMENTATION} {0}

    # connections and connection parameters
    # exported interfaces
    add_interface altclkctrl_input conduit end
    set_interface_property altclkctrl_input EXPORT_OF altclkctrl_0.altclkctrl_input
    add_interface altclkctrl_output conduit end
    set_interface_property altclkctrl_output EXPORT_OF altclkctrl_0.altclkctrl_output

    # interconnect requirements
    set_interconnect_requirement {$system} {qsys_mm.clockCrossingAdapter} {HANDSHAKE}
    set_interconnect_requirement {$system} {qsys_mm.enableEccProtection} {FALSE}
    set_interconnect_requirement {$system} {qsys_mm.insertDefaultSlave} {FALSE}
    set_interconnect_requirement {$system} {qsys_mm.maxAdditionalLatency} {1}
}
