# time information ------------------------------------------------------------------------------
set_time_format -unit ns -decimal_places 3

# create clock ----------------------------------------------------------------------------------
create_clock -name {clk} -period 10.000 -waveform { 0.000 5.000 } [get_ports {clk}]

# clock uncertainty -----------------------------------------------------------------------------
derive_clock_uncertainty

# set input/output delay ------------------------------------------------------------------------
set_input_delay -add_delay -clock [get_clocks {clk}] 1.000 [all_inputs]
set_output_delay -add_delay -clock [get_clocks {clk}] 1.000 [all_outputs]
