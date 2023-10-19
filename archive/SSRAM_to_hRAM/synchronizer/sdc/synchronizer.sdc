# main clock
create_clock -period 10.00 -name clk [get_ports clk]

# strobe shifted by 90° with respect to the main clock
create_clock -period 10.00 -waveform { 2.5 7.5 } -name din_strobe [get_ports din_strobe]

derive_clock_uncertainty

# input constraints
set_input_delay -clock {clk} -max 1 [all_inputs] 
set_input_delay -clock {clk} -min 1 [all_inputs]

# output constraints
set_output_delay -clock {clk} 1 [all_outputs] 