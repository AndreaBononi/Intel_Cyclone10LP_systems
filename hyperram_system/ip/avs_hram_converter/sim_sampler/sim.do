vlib work

# source files
vcom ../hdl/d_flipflop.vhd
vcom ../hdl/dff_negedge.vhd
vcom ../hdl/t_flipflop.vhd
vcom ../hdl/reg.vhd
vcom ../hdl/halfadder.vhd
vcom ../hdl/fulladder.vhd
vcom ../hdl/voter.vhd
vcom ../hdl/DDR_to_SDR_converter_EU.vhd
vcom ../hdl/DDR_to_SDR_converter_CU.vhd
vcom ../hdl/DDR_to_SDR_converter.vhd

# testbench files
vcom ./tb/clk_rst_generator.vhd
vcom ./tb/sampler_monitor.vhd
vcom ./tb/sampler_driver.vhd
vcom ./tb/sampler_testbench.vhd

# simulation options
vsim -c -t 10ps work.sampler_testbench -voptargs=+acc

# waveforms
add wave -position insertpoint  \
sim:/sampler_testbench/DUT/CU/present_state \
sim:/sampler_testbench/clk \
sim:/sampler_testbench/clk_x8 \
sim:/sampler_testbench/rst_n \
sim:/sampler_testbench/clk_enable \
sim:/sampler_testbench/sampler_rwds_in \
sim:/sampler_testbench/sampler_ddr_in \
sim:/sampler_testbench/sampler_rwds_out \
sim:/sampler_testbench/sampler_sdr_out

run 1us
quit -f
