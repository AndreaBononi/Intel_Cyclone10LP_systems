# _hw.tcl file for avs_hram_converter
package require -exact qsys 14.0

# module properties
set_module_property NAME {avs_hram_converter}
set_module_property DISPLAY_NAME {avs_hram_converter}

# default module properties
set_module_property VERSION {1.0}
set_module_property GROUP {}
set_module_property DESCRIPTION {AvalonMM to/from hyperbus}
set_module_property AUTHOR {Andrea Bononi (287628)}

set_module_property COMPOSITION_CALLBACK compose
set_module_property opaque_address_map false

proc compose { } {
    # Instances and instance parameters
    # (disabled instances are intentionally culled)
    add_instance avs_hram_mainconv avs_hram_mainconv 1.0
    set_instance_parameter_value avs_hram_mainconv {drive_strength} {0}

    add_instance clk_0 clock_source 22.1
    set_instance_parameter_value clk_0 {clockFrequency} {50000000.0}
    set_instance_parameter_value clk_0 {clockFrequencyKnown} {1}
    set_instance_parameter_value clk_0 {resetSynchronousEdges} {NONE}

    add_instance clkctrl clkctrl 1.0

    # connections and connection parameters
    add_connection avs_hram_mainconv.hyperbus_clkctrl_master clkctrl.altclkctrl_input conduit
    set_connection_parameter_value avs_hram_mainconv.hyperbus_clkctrl_master/clkctrl.altclkctrl_input endPort {}
    set_connection_parameter_value avs_hram_mainconv.hyperbus_clkctrl_master/clkctrl.altclkctrl_input endPortLSB {0}
    set_connection_parameter_value avs_hram_mainconv.hyperbus_clkctrl_master/clkctrl.altclkctrl_input startPort {}
    set_connection_parameter_value avs_hram_mainconv.hyperbus_clkctrl_master/clkctrl.altclkctrl_input startPortLSB {0}
    set_connection_parameter_value avs_hram_mainconv.hyperbus_clkctrl_master/clkctrl.altclkctrl_input width {0}

    add_connection clk_0.clk avs_hram_mainconv.clock clock

    add_connection clk_0.clk_reset avs_hram_mainconv.reset reset

    # exported interfaces
    add_interface avalon_slave avalon slave
    set_interface_property avalon_slave EXPORT_OF avs_hram_mainconv.avalon_slave
    add_interface clk clock sink
    set_interface_property clk EXPORT_OF clk_0.clk_in
    add_interface hyperbus_clock conduit end
    set_interface_property hyperbus_clock EXPORT_OF clkctrl.altclkctrl_output
    add_interface hyperbus_master conduit end
    set_interface_property hyperbus_master EXPORT_OF avs_hram_mainconv.hyperbus_master
    add_interface reset reset sink
    set_interface_property reset EXPORT_OF clk_0.clk_in_reset

    # interconnect requirements
    set_interconnect_requirement {$system} {qsys_mm.clockCrossingAdapter} {HANDSHAKE}
    set_interconnect_requirement {$system} {qsys_mm.enableEccProtection} {FALSE}
    set_interconnect_requirement {$system} {qsys_mm.insertDefaultSlave} {FALSE}
    set_interconnect_requirement {$system} {qsys_mm.maxAdditionalLatency} {1}
}
