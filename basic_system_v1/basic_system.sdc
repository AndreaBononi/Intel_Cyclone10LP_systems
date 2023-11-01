# time information ------------------------------------------------------------------------------
set_time_format -unit ns -decimal_places 3

# create clock ----------------------------------------------------------------------------------
create_clock -name {mainClk} -period 100.000 -waveform { 0.000 50.000 } [get_ports {mainClk}]

# create generated clock ------------------------------------------------------------------------
create_generated_clock -name clk -source [get_pins {pll_inst|altpll_component|auto_generated|pll1|inclk[0]}] -multiply_by 10 -duty_cycle 50 [get_pins {pll_inst|altpll_component|auto_generated|pll1|clk[0]}]

# clock uncertainty -----------------------------------------------------------------------------
derive_clock_uncertainty

# set input/output delay ------------------------------------------------------------------------
set_input_delay -add_delay -clock [get_clocks {mainClk}] 1.000 [all_inputs]
set_output_delay -add_delay -clock [get_clocks {mainClk}] 1.000 [all_outputs]
