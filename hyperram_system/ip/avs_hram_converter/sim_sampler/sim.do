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
vsim -c -t 1ns work.sampler_testbench -voptargs=+acc

# waveforms

run 250ns
quit -f
