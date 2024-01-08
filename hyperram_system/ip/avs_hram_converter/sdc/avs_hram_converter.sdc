# time information -------------------------------------------------------------------------------------------------------------------------------
set_time_format -unit ns -decimal_places 3

# main clock -------------------------------------------------------------------------------------------------------------------------------------
create_clock -name {clk} -period 20.000 -waveform { 0.000 10.000 } [get_ports {clk}]

# shifted rwds -----------------------------------------------------------------------------------------------------------------------------------
create_clock \
  -name {rwdsgen} \
  -period 20.000 \
  [get_registers {avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_EU:EU|t_flipflop:rwdsgen|dummy_out}]

# shifted clock ----------------------------------------------------------------------------------------------------------------------------------
create_generated_clock \
	-name {clk90} \
	-source [get_pins {EU|clk_shifter|altpll_component|auto_generated|pll1|inclk[0]}] \
	-phase 90 \
	-duty_cycle 50 \
	[get_pins {EU|clk_shifter|altpll_component|auto_generated|pll1|clk[0]}]
	
# oversampling clock -----------------------------------------------------------------------------------------------------------------------------
create_generated_clock \
	-name {clk_x8} \
	-source [get_pins {EU|pll_x8_inst|altpll_component|auto_generated|pll1|inclk[0]}] \
	-multiply_by 8 \
	-duty_cycle 50 \
	[get_pins {EU|pll_x8_inst|altpll_component|auto_generated|pll1|clk[0]}]

# rwdsgen is asynchronous to the other clocks ----------------------------------------------------------------------------------------------------
set_clock_groups -asynchronous -group {clk, clk_x8} -group {rwdsgen}

# clock uncertainty ------------------------------------------------------------------------------------------------------------------------------
derive_clock_uncertainty

# readdata converter clear signal can take two clk_x8 cycles -------------------------------------------------------------------------------------
set_multicycle_path \
  -from [get_registers {avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|system_clear_n}] \
  -to [all_registers] \
  -setup \
  -end \
  2
set_multicycle_path \
  -from [get_registers {avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|system_clear_n}] \
  -to [all_registers] \
  -hold \
  -end \
  2

# readdata converter output can take 2 rwdsgen cycles --------------------------------------------------------------------------------------------
set_multicycle_path \
  -from [get_registers {avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_EU:EU|reg:msb|dout[*]}] \
  -to [all_registers] \
  -setup \
  -end \
  2
set_multicycle_path \
  -from [get_registers {avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_EU:EU|reg:msb|dout[*]}] \
  -to [all_registers] \
  -hold \
  -end \
  2
set_multicycle_path \
  -from [get_registers {avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_EU:EU|reg:lsb|dout[*]}] \
  -to [all_registers] \
  -setup \
  -end \
  2
set_multicycle_path \
  -from [get_registers {avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_EU:EU|reg:lsb|dout[*]}] \
  -to [all_registers] \
  -hold \
  -end \
  2
	
# RWDS_sampling_enable is set several clock cycles in advance, therefore the constraint is not as strict as the others ---------------------------
set_false_path \
	-from [get_registers {avs_to_hram_converter_CU:CU|present_state.read_wait_0}] \
	-to [get_registers {avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.reset}]
set_false_path \
	-from [get_registers {avs_to_hram_converter_CU:CU|present_state.read_wait_0}] \
	-to [get_registers {avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.idle_intra}]
set_false_path \
	-from [get_registers {avs_to_hram_converter_CU:CU|present_state.read_wait_0}] \
	-to [get_registers {avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.lsb_tx}]
set_false_path \
	-from [get_registers {avs_to_hram_converter_CU:CU|present_state.read_wait_0}] \
	-to [get_registers {avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.msb_tx}]
set_false_path \
	-from [get_registers {avs_to_hram_converter_CU:CU|present_state.read_wait_1}] \
	-to [get_registers {avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.reset}]
set_false_path \
	-from [get_registers {avs_to_hram_converter_CU:CU|present_state.read_wait_1}] \
	-to [get_registers {avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.idle_intra}]
set_false_path \
	-from [get_registers {avs_to_hram_converter_CU:CU|present_state.read_wait_1}] \
	-to [get_registers {avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.lsb_tx}]
set_false_path \
	-from [get_registers {avs_to_hram_converter_CU:CU|present_state.read_wait_1}] \
	-to [get_registers {avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.msb_tx}]
set_false_path \
	-from [get_registers {avs_to_hram_converter_CU:CU|present_state.read_wait_2}] \
	-to [get_registers {avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.reset}]
set_false_path \
	-from [get_registers {avs_to_hram_converter_CU:CU|present_state.read_wait_2}] \
	-to [get_registers {avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.idle_intra}]
set_false_path \
	-from [get_registers {avs_to_hram_converter_CU:CU|present_state.read_wait_2}] \
	-to [get_registers {avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.lsb_tx}]
set_false_path \
	-from [get_registers {avs_to_hram_converter_CU:CU|present_state.read_wait_2}] \
	-to [get_registers {avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.msb_tx}]

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
set_output_delay -add_delay -clock [get_clocks {clk}] -max 1.000 [get_ports {hram_DQ[*]}]
set_output_delay -add_delay -clock [get_clocks {clk}] -min 0.000 [get_ports {hram_DQ[*]}]
set_output_delay -add_delay -clock [get_clocks {clk}] -max 1.000 [get_ports {hCK_enable}]
set_output_delay -add_delay -clock [get_clocks {clk}] -min 0.000 [get_ports {hCK_enable}]