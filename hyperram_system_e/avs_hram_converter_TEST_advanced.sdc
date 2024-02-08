# time information ------------------------------------------------------------------------------
set_time_format -unit ns -decimal_places 3

# create clock ----------------------------------------------------------------------------------
create_clock -name {mainClk} -period 100.000 -waveform { 0.000 50.000 } [get_ports {mainClk}]

# create generated clock ------------------------------------------------------------------------
create_generated_clock -name clk_50MHz -source [get_pins {pll_inst|altpll_component|auto_generated|pll1|inclk[0]}] -multiply_by 5 -duty_cycle 50 [get_pins {pll_inst|altpll_component|auto_generated|pll1|clk[0]}]

# create generated clock ------------------------------------------------------------------------
create_generated_clock -name clk_10kHz -source [get_pins {pll_inst|altpll_component|auto_generated|pll1|inclk[0]}] -divide_by 1000 -duty_cycle 50 [get_pins {pll_inst|altpll_component|auto_generated|pll1|clk[1]}]

# create clock (hram strobe) --------------------------------------------------------------------
create_clock -name {hBusCk} -period 20.000 -waveform { 0.000 10.000 } [get_ports {hBusCk}]
set_false_path -from [get_clocks {clk_50MHz}] -to [get_clocks {hBusCk}]

# clock uncertainty -----------------------------------------------------------------------------
derive_clock_uncertainty

read_sdc avs_hram_converter_TEST_advanced/synthesis/submodules/avs_hram_converter.sdc
set_false_path -from [get_clocks {mainClk}] -to [get_clocks {clk_x8}]
set_false_path -from [get_clocks {hBusCk}] -to [get_clocks {clk_x8}]

set_output_delay -clock_fall -add_delay -clock [get_clocks {hBusCk}] -min 1.000 [get_ports {hBusD[*]}]
set_output_delay -clock_fall -add_delay -clock [get_clocks {hBusCk}] -max 9.000 [get_ports {hBusD[*]}]

# set input/output delay ------------------------------------------------------------------------
set_input_delay -add_delay -clock [get_clocks {mainClk}] 1.000 [all_inputs]
set_output_delay -add_delay -clock [get_clocks {mainClk}] 1.000 [all_outputs]
