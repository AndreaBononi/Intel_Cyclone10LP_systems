# time information ------------------------------------------------------------------------------
set_time_format -unit ns -decimal_places 3

# main clock ------------------------------------------------------------------------------------
create_clock -name {clk} -period 10.000 -waveform { 0.000 5.000 } [get_ports {clk}]

# generated clock -------------------------------------------------------------------------------
create_generated_clock -name {clk90} -source [get_pins {EU|clk_shifter|altpll_component|auto_generated|pll1|inclk[0]}] -phase 90 -duty_cycle 50 [get_pins {EU|clk_shifter|altpll_component|auto_generated|pll1|clk[0]}]

# RWDS ------------------------------------------------------------------------------------------
create_clock -name {hram_RWDS} -period 10.000  [get_ports {hram_RWDS}]

# set clk and RWDS as asynchronous to each other
set_clock_groups -asynchronous -group {clk} -group {hram_RWDS}

# clock uncertainty -----------------------------------------------------------------------------
derive_clock_uncertainty

# reset input delay -----------------------------------------------------------------------------
set_input_delay -add_delay -clock [get_clocks {clk}] -max 2.000 [get_ports {reset_n}]
set_input_delay -add_delay -clock [get_clocks {clk}] -min 1.000 [get_ports {reset_n}]

# input delays (avs side) -----------------------------------------------------------------------
set_input_delay -add_delay -clock [get_clocks {clk}] -max 2.000 [get_ports {avs_address[*]}]
set_input_delay -add_delay -clock [get_clocks {clk}] -min 1.000 [get_ports {avs_address[*]}]
set_input_delay -add_delay -clock [get_clocks {clk}] -max 2.000 [get_ports {avs_writedata[*]}]
set_input_delay -add_delay -clock [get_clocks {clk}] -min 1.000 [get_ports {avs_writedata[*]}]
set_input_delay -add_delay -clock [get_clocks {clk}] -max 2.000 [get_ports {avs_read]}]
set_input_delay -add_delay -clock [get_clocks {clk}] -min 1.000 [get_ports {avs_read]}]
set_input_delay -add_delay -clock [get_clocks {clk}] -max 2.000 [get_ports {avs_write]}]
set_input_delay -add_delay -clock [get_clocks {clk}] -min 1.000 [get_ports {avs_write]}]
set_input_delay -add_delay -clock [get_clocks {clk}] -max 2.000 [get_ports {avs_beginbursttransfer]}]
set_input_delay -add_delay -clock [get_clocks {clk}] -min 1.000 [get_ports {avs_beginbursttransfer]}]
set_input_delay -add_delay -clock [get_clocks {clk}] -max 2.000 [get_ports {avs_burstcount[*]}]
set_input_delay -add_delay -clock [get_clocks {clk}] -min 1.000 [get_ports {avs_burstcount[*]}]

# output delays (avs side) ----------------------------------------------------------------------
set_output_delay -add_delay -clock [get_clocks {clk}] -max 1.000 [get_ports {avs_readdata[*]}]
set_output_delay -add_delay -clock [get_clocks {clk}] -min 0.000 [get_ports {avs_readdata[*]}]
set_output_delay -add_delay -clock [get_clocks {clk}] -max 1.000 [get_ports {avs_waitrequest}]
set_output_delay -add_delay -clock [get_clocks {clk}] -min 0.000 [get_ports {avs_waitrequest}]
set_output_delay -add_delay -clock [get_clocks {clk}] -max 1.000 [get_ports {avs_readdatavalid}]
set_output_delay -add_delay -clock [get_clocks {clk}] -min 0.000 [get_ports {avs_readdatavalid}]

# input delays (hram side) ----------------------------------------------------------------------
set_input_delay -add_delay -clock [get_clocks {hram_RWDS}] 0.000 [get_ports {hram_DQ[*]}]
# hram_RWDS and hram_DQ are edge-aligned

# output delays (hram side) ---------------------------------------------------------------------
set_output_delay -add_delay -clock [get_clocks {clk}] -max 1.000 [get_ports {hram_RESET_n}]
set_output_delay -add_delay -clock [get_clocks {clk}] -min 0.000 [get_ports {hram_RESET_n}]
set_output_delay -add_delay -clock [get_clocks {clk}] -max 1.000 [get_ports {hram_CS_n}]
set_output_delay -add_delay -clock [get_clocks {clk}] -min 0.000 [get_ports {hram_CS_n}]
set_output_delay -add_delay -clock [get_clocks {clk90}] -max 1.000 [get_ports {hram_CK_n}]
set_output_delay -add_delay -clock [get_clocks {clk90}] -min 0.000 [get_ports {hram_CK_n}]