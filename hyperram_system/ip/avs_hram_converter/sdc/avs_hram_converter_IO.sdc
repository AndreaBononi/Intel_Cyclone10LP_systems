# time information -------------------------------------------------------------------------------------------------------------------------------
set_time_format -unit ns -decimal_places 3

# main clock -------------------------------------------------------------------------------------------------------------------------------------
create_clock -name {clk} -period 20.000 -waveform { 0.000 10.000 } [get_ports {clk}]

# reset input delay ------------------------------------------------------------------------------------------------------------------------------
set_input_delay -add_delay -clock [get_clocks {clk}] -max 2.000 [get_ports {reset_n}]
set_input_delay -add_delay -clock [get_clocks {clk}] -min 1.000 [get_ports {reset_n}]

# input delays (avs side) ------------------------------------------------------------------------------------------------------------------------
set_input_delay -add_delay -clock [get_clocks {clk}] -max 2.000 [get_ports {avs_address[*]}]
set_input_delay -add_delay -clock [get_clocks {clk}] -min 1.000 [get_ports {avs_address[*]}]
set_input_delay -add_delay -clock [get_clocks {clk}] -max 2.000 [get_ports {avs_writedata[*]}]
set_input_delay -add_delay -clock [get_clocks {clk}] -min 1.000 [get_ports {avs_writedata[*]}]
set_input_delay -add_delay -clock [get_clocks {clk}] -max 2.000 [get_ports {avs_read}]
set_input_delay -add_delay -clock [get_clocks {clk}] -min 1.000 [get_ports {avs_read}]
set_input_delay -add_delay -clock [get_clocks {clk}] -max 2.000 [get_ports {avs_write}]
set_input_delay -add_delay -clock [get_clocks {clk}] -min 1.000 [get_ports {avs_write}]
set_input_delay -add_delay -clock [get_clocks {clk}] -max 2.000 [get_ports {avs_burstcount[*]}]
set_input_delay -add_delay -clock [get_clocks {clk}] -min 1.000 [get_ports {avs_burstcount[*]}]

# output delays (avs side) -----------------------------------------------------------------------------------------------------------------------
set_output_delay -add_delay -clock [get_clocks {clk}] -max 1.000 [get_ports {avs_readdata[*]}]
set_output_delay -add_delay -clock [get_clocks {clk}] -min 0.000 [get_ports {avs_readdata[*]}]
set_output_delay -add_delay -clock [get_clocks {clk}] -max 1.000 [get_ports {avs_waitrequest}]
set_output_delay -add_delay -clock [get_clocks {clk}] -min 0.000 [get_ports {avs_waitrequest}]
set_output_delay -add_delay -clock [get_clocks {clk}] -max 1.000 [get_ports {avs_readdatavalid}]
set_output_delay -add_delay -clock [get_clocks {clk}] -min 0.000 [get_ports {avs_readdatavalid}]

# output delays (hram side) ----------------------------------------------------------------------------------------------------------------------
set_output_delay -add_delay -clock [get_clocks {clk}] -max 1.000 [get_ports {hram_RESET_n}]
set_output_delay -add_delay -clock [get_clocks {clk}] -min 0.000 [get_ports {hram_RESET_n}]
set_output_delay -add_delay -clock [get_clocks {clk}] -max 1.000 [get_ports {hram_CS_n}]
set_output_delay -add_delay -clock [get_clocks {clk}] -min 0.000 [get_ports {hram_CS_n}]
set_output_delay -add_delay -clock [get_clocks {clk}] -max 1.000 [get_ports {hram_RWDS}]
set_output_delay -add_delay -clock [get_clocks {clk}] -min 0.000 [get_ports {hram_RWDS}]
set_output_delay -add_delay -clock [get_clocks {clk}] -max 1.000 [get_ports {hCK_enable}]
set_output_delay -add_delay -clock [get_clocks {clk}] -min 0.000 [get_ports {hCK_enable}]

# T_is and T_ih ----------------------------------------------------------------------------------------------------------------------------------
set_output_delay -add_delay -clock [get_clocks {shifted_clock}] -max 1.000 [get_ports {clk90}]
set_output_delay -add_delay -clock [get_clocks {clk}] -max 1.000 [get_ports {hram_DQ[*]}]
set_output_delay -add_delay -clock [get_clocks {clk}] -min 0.000 [get_ports {hram_DQ[*]}]