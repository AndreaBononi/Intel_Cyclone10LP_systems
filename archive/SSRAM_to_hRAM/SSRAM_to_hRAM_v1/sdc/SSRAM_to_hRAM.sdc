# main clock
create_clock -period 10.00 -name clk [get_ports clk]

# RWDS (90° shifted with respect to main clock)
create_clock -period 10.00 -waveform { 2.5 7.5 } -name RWDS [get_ports RWDS]

# RWDS_90 (90° shifted with respect to RWDS)
create_clock -period 10.00 -waveform { 5 10 } -name RWDS_90 [get_ports RWDS_90]

# RWDS_360
create_clock -period 10.00 -name RWDS_360 [get_ports RWDS_360]

derive_clock_uncertainty

# input constraints
set_input_delay -clock {clk} -max 1 [all_inputs] 
set_input_delay -clock {clk} -min 1 [all_inputs]

# output constraints
set_output_delay -clock {clk} 1 [all_outputs] 