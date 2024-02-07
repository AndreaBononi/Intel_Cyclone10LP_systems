# time information -------------------------------------------------------------------------------------------------------------------------------
set_time_format -unit ns -decimal_places 3

# shifted rwds -----------------------------------------------------------------------------------------------------------------------------------
create_clock \
  -name {rwdsgen} \
  -period 20.000 \
  [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_EU:EU|t_flipflop:rwdsgen|dummy_out}]

# shifted clock ----------------------------------------------------------------------------------------------------------------------------------
create_generated_clock \
	-name {shifted_clock} \
	-source [get_pins -compatibility_mode {*EU|clk_shifter|altpll_component|auto_generated|pll1|inclk[0]}] \
	-phase 90 \
	-duty_cycle 50 \
	[get_pins -compatibility_mode {*EU|clk_shifter|altpll_component|auto_generated|pll1|clk[0]}]
	
# oversampling clock -----------------------------------------------------------------------------------------------------------------------------
create_generated_clock \
	-name {clk_x8} \
	-source [get_pins -compatibility_mode {*EU|pll_x8_inst|altpll_component|auto_generated|pll1|inclk[0]}] \
	-multiply_by 8 \
	-duty_cycle 50 \
	[get_pins -compatibility_mode {*EU|pll_x8_inst|altpll_component|auto_generated|pll1|clk[0]}]

# rwdsgen is asynchronous to the other clocks ----------------------------------------------------------------------------------------------------
set_clock_groups -asynchronous -group [get_clocks {clk_x8}] -group [get_clocks {rwdsgen}]

# clock uncertainty ------------------------------------------------------------------------------------------------------------------------------
derive_clock_uncertainty

# readdata converter clear signal can take two clk_x8 cycles -------------------------------------------------------------------------------------
set_multicycle_path \
  -from [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|system_clear_n}] \
  -to [all_registers] \
  -setup \
  -end \
  2
set_multicycle_path \
  -from [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|system_clear_n}] \
  -to [all_registers] \
  -hold \
  -end \
  2

# readdata converter output can take 2 rwdsgen cycles --------------------------------------------------------------------------------------------
set_multicycle_path \
  -from [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_EU:EU|reg:msb|dout[*]}] \
  -to [all_registers] \
  -setup \
  -end \
  2
set_multicycle_path \
  -from [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_EU:EU|reg:msb|dout[*]}] \
  -to [all_registers] \
  -hold \
  -end \
  2
set_multicycle_path \
  -from [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_EU:EU|reg:lsb|dout[*]}] \
  -to [all_registers] \
  -setup \
  -end \
  2
set_multicycle_path \
  -from [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_EU:EU|reg:lsb|dout[*]}] \
  -to [all_registers] \
  -hold \
  -end \
  2
	
# RWDS_sampling_enable is set several clock cycles in advance, therefore the constraint is not as strict as the others ---------------------------
set_false_path \
	-from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_0}] \
	-to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.reset}]
set_false_path \
	-from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_0}] \
	-to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.idle_intra}]
set_false_path \
	-from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_0}] \
	-to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.lsb_tx}]
set_false_path \
	-from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_0}] \
	-to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.msb_tx}]
set_false_path \
	-from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_1}] \
	-to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.reset}]
set_false_path \
	-from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_1}] \
	-to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.idle_intra}]
set_false_path \
	-from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_1}] \
	-to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.lsb_tx}]
set_false_path \
	-from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_1}] \
	-to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.msb_tx}]
set_false_path \
	-from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_2}] \
	-to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.reset}]
set_false_path \
	-from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_2}] \
	-to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.idle_intra}]
set_false_path \
	-from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_2}] \
	-to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.lsb_tx}]
set_false_path \
	-from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_2}] \
	-to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.msb_tx}]