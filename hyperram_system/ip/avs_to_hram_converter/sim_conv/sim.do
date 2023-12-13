vlib work

# source files
vcom ../hdl/d_flipflop.vhd
vcom ../hdl/t_flipflop.vhd
vcom ../hdl/sr_flipflop.vhd
vcom ../hdl/reg.vhd
vcom ../hdl/reg_negedge.vhd
vcom ../hdl/mux_2to1.vhd
vcom ../hdl/mux_4to1.vhd
vcom ../hdl/decoder_2bit.vhd
vcom ../hdl/comparator_Nbit.vhd
vcom ../hdl/counter_Nbit.vhd
vcom ../hdl/counter_11bit_updown/counter_11bit_updown.vhd
vcom ../hdl/synchronizer_EU.vhd
vcom ../hdl/synchronizer_CU.vhd
vcom ../hdl/synchronizer.vhd
vcom ../hdl/CA_builder.vhd
vcom ../hdl/CA_unpacker.vhd
vcom ../hdl/conf_builder.vhd
vcom ../hdl/DDR_to_SDR_converter.vhd
vcom ../hdl/SDR_to_DDR_converter.vhd
vcom ../hdl/timer_14bit.vhd
vcom ../hdl/tristate_buffer.vhd
vcom ../hdl/avs_to_hram_converter_CU.vhd
vcom ../hdl/test_files/avs_to_hram_converter_EU.vhd
vcom ../hdl/test_files/avs_to_hram_converter.vhd

# testbench files
vcom ./tb/clk_rst_generator.vhd
vcom ./tb/driver.vhd
vcom ./tb/monitor.vhd
vlog ./tb/s27kl0641.v
vlog ./tb/testbench.v

# simulation options
vsim -c -t 1ns work.testbench -voptargs=+acc

run 30us
quit -f
