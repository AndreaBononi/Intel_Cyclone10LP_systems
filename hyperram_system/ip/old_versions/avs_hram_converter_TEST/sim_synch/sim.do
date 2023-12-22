vlib work

# source files
vcom ../hdl/d_flipflop.vhd
vcom ../hdl/t_flipflop.vhd
vcom ../hdl/sr_flipflop.vhd
vcom ../hdl/reg.vhd
vcom ../hdl/mux_4to1.vhd
vcom ../hdl/decoder_2bit.vhd
vcom ../hdl/comparator_Nbit.vhd
vcom ../hdl/counter_Nbit.vhd
vcom ../hdl/counter_11bit_updown/counter_11bit_updown.vhd
vcom ../hdl/synchronizer_EU.vhd
vcom ../hdl/synchronizer_CU.vhd
vcom ../hdl/synchronizer.vhd

# testbench files
vcom ./tb/clk_rst_generator.vhd
vcom ./tb/synchronizer_monitor.vhd
vcom ./tb/synchronizer_driver.vhd
vcom ./tb/synchronizer_testbench.vhd

# simulation options
vsim -c -t 1ns work.synchronizer_testbench -voptargs=+acc

# waveforms
add wave -position insertpoint  \
sim:/synchronizer_testbench/DUT/CU/present_state \
sim:/synchronizer_testbench/rst_n \
sim:/synchronizer_testbench/start_sim \
sim:/synchronizer_testbench/stop_sim \
sim:/synchronizer_testbench/clk \
sim:/synchronizer_testbench/synch_clear_n \
sim:/synchronizer_testbench/DUT/EU/busy \
sim:/synchronizer_testbench/synch_busy \
sim:/synchronizer_testbench/synch_din \
sim:/synchronizer_testbench/synch_strobe \
sim:/synchronizer_testbench/DUT/EU/code_counter_out \
sim:/synchronizer_testbench/DUT/EU/din00_out \
sim:/synchronizer_testbench/DUT/EU/din01_out \
sim:/synchronizer_testbench/DUT/EU/din10_out \
sim:/synchronizer_testbench/DUT/EU/din11_out \
sim:/synchronizer_testbench/DUT/CU/start_sampling \
sim:/synchronizer_testbench/DUT/EU/data_counter_enable \
sim:/synchronizer_testbench/DUT/EU/data_counter_out \
sim:/synchronizer_testbench/DUT/EU/outreg_enable \
sim:/synchronizer_testbench/DUT/EU/outreg_out \
sim:/synchronizer_testbench/synch_dout \
sim:/synchronizer_testbench/DUT/EU/validout \
sim:/synchronizer_testbench/synch_validout \
sim:/synchronizer_testbench/DUT/EU/burstlen_counter_enable \
sim:/synchronizer_testbench/DUT/EU/burstlen_counter_out \
sim:/synchronizer_testbench/DUT/CU/burst_end \
sim:/synchronizer_testbench/DUT/EU/system_clear_n

run 250ns
quit -f
