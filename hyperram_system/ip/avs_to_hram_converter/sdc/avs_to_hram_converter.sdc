# time information -------------------------------------------------------------------------------------------------------------------------------
set_time_format -unit ns -decimal_places 3

# main clock -------------------------------------------------------------------------------------------------------------------------------------
create_clock -name {clk} -period 10.000 -waveform { 0.000 5.000 } [get_ports {clk}]

# generated clock --------------------------------------------------------------------------------------------------------------------------------
create_generated_clock \
	-name {clk90} \
	-source [get_pins {EU|clk_shifter|altpll_component|auto_generated|pll1|inclk[0]}] \
	-phase 90 \
	-duty_cycle 50 \
	[get_pins {EU|clk_shifter|altpll_component|auto_generated|pll1|clk[0]}]

# RWDS -------------------------------------------------------------------------------------------------------------------------------------------
# create_clock -name {hram_RWDS} -period 10.000 [get_ports {hram_RWDS}]

# RWDS (input only) ------------------------------------------------------------------------------------------------------------------------------
create_clock -name {hram_RWDS_in} -period 10.000 [get_ports {hram_RWDS_in}]

# shifted RWDS (input only) ----------------------------------------------------------------------------------------------------------------------
create_clock -name {hram_RWDS_in_90shift} -period 10.000 -waveform { 2.500 7.500 } [get_ports {hram_RWDS_in_90shift}]

# set clock signals as asynchronous to each other ------------------------------------------------------------------------------------------------
# set_clock_groups -asynchronous -group {clk} -group {hram_RWDS}

# set clock signals as asynchronous to each other (RWDS input only) ------------------------------------------------------------------------------
set_clock_groups -asynchronous -group {clk} -group {hram_RWDS_in} -group {hram_RWDS_in_90shift}

# clock uncertainty ------------------------------------------------------------------------------------------------------------------------------
derive_clock_uncertainty

# RWDS_sampling_enable is set several clock cycles before RWDS starts oscillating ----------------------------------------------------------------
set_false_path \
	-from [get_registers {avs_to_hram_converter_CU:CU|present_state.read_wait_1}] \
	-to [get_registers {avs_to_hram_converter_EU:EU|DDR_to_SDR_converter:readdata_converter|reg:msb|dout[*]}]
set_false_path \
	-from [get_registers {avs_to_hram_converter_CU:CU|present_state.read_wait_1}] \
	-to [get_registers {avs_to_hram_converter_EU:EU|DDR_to_SDR_converter:readdata_converter|reg_negedge:lsb|dout[*]}]
set_false_path \
	-from [get_registers {avs_to_hram_converter_CU:CU|present_state.read_wait_2}] \
	-to [get_registers {avs_to_hram_converter_EU:EU|DDR_to_SDR_converter:readdata_converter|reg:msb|dout[*]}]
set_false_path \
	-from [get_registers {avs_to_hram_converter_CU:CU|present_state.read_wait_2}] \
	-to [get_registers {avs_to_hram_converter_EU:EU|DDR_to_SDR_converter:readdata_converter|reg_negedge:lsb|dout[*]}]

# hram_CK and hram_CK_n are clock paths, not data paths ------------------------------------------------------------------------------------------
set_false_path \
	-from [get_pins {EU|clk_gater_inst|altclkctrl_0|clkctrl_altclkctrl_0_sub_component|clkctrl1|outclk}] \
	-to [get_ports {hram_CK}]
set_false_path \
	-from [get_pins {EU|clk_gater_inst|altclkctrl_0|clkctrl_altclkctrl_0_sub_component|clkctrl1|outclk}] \
	-to [get_ports {hram_CK_n}]	

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

# input delays (hram side) -----------------------------------------------------------------------------------------------------------------------
# set_input_delay -add_delay -clock [get_clocks {hram_RWDS}] 0.000 [get_ports {hram_DQ[*]}]

# input delays (hram side) (RWDS input only) -----------------------------------------------------------------------------------------------------
set_input_delay -add_delay -clock [get_clocks {hram_RWDS_in}] 0.000 [get_ports {hram_DQ[*]}]

# output delays (hram side) ----------------------------------------------------------------------------------------------------------------------
set_output_delay -add_delay -clock [get_clocks {clk}] -max 1.000 [get_ports {hram_RESET_n}]
set_output_delay -add_delay -clock [get_clocks {clk}] -min 0.000 [get_ports {hram_RESET_n}]
set_output_delay -add_delay -clock [get_clocks {clk}] -max 1.000 [get_ports {hram_CS_n}]
set_output_delay -add_delay -clock [get_clocks {clk}] -min 0.000 [get_ports {hram_CS_n}]
set_output_delay -add_delay -clock [get_clocks {clk}] -max 1.000 [get_ports {hram_RWDS_out}]
set_output_delay -add_delay -clock [get_clocks {clk}] -min 0.000 [get_ports {hram_RWDS_out}]