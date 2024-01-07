# time information -------------------------------------------------------------------------------------------------------------------------------
set_time_format -unit ns -decimal_places 3

# main clock -------------------------------------------------------------------------------------------------------------------------------------
create_clock -name {clk_x8} -period 2.500 -waveform { 0.000 1.250 } [get_ports {clk_x8}]

# clock uncertainty ------------------------------------------------------------------------------------------------------------------------------
derive_clock_uncertainty

# system_clear_n can take 2 clock cycles to reach its target -------------------------------------------------------------------------------------
set_multicycle_path 2 -from [get_registers {DDR_to_SDR_converter_CU:CU|system_clear_n}] -to [all_registers] -setup -end
set_multicycle_path 2 -from [get_registers {DDR_to_SDR_converter_CU:CU|system_clear_n}] -to [all_registers] -hold -end

set_input_delay -add_delay -clock [get_clocks {clk_x8}] 0.500 [all_inputs]
# set_output_delay -add_delay -clock [get_clocks {clk_x8}] 0.500 [all_outputs]