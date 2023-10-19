vlib work

# source files
vcom ../src/d_flipflop.vhd
vcom ../src/t_flip_flop.vhd
vcom ../src/reg.vhd
vcom ../src/mux_2to1.vhd
vcom ../src/fifo4.vhd
vcom ../src/AvalonMM_to_SSRAM_controlUnit.vhd
vcom ../src/AvalonMM_to_SSRAM_executionUnit.vhd
vcom ../src/AvalonMM_to_SSRAM.vhd

# testbench files
vcom ../tb/clk_rst_generator.vhd
vcom ../tb/ssram32.vhd
vcom ../tb/AvalonMM_to_SSRAM_monitor.vhd
vcom ../tb/AvalonMM_to_SSRAM_driver.vhd
vcom ../tb/AvalonMM_to_SSRAM_testbench.vhd

# simulation options
vsim -c -t 1ns work.AvalonMM_to_SSRAM_testbench -voptargs=+acc

add wave -position insertpoint  \
sim:/avalonmm_to_ssram_testbench/clk \
sim:/avalonmm_to_ssram_testbench/rst_n \
sim:/avalonmm_to_ssram_testbench/DUT/CU/present_state\
sim:/avalonmm_to_ssram_testbench/avs_s0_address \
sim:/avalonmm_to_ssram_testbench/ssram_address_space \
sim:/avalonmm_to_ssram_testbench/avs_s0_read \
sim:/avalonmm_to_ssram_testbench/avs_s0_write \
sim:/avalonmm_to_ssram_testbench/avs_s0_writedata \
sim:/avalonmm_to_ssram_testbench/avs_s0_readdata \
sim:/avalonmm_to_ssram_testbench/avs_s0_readdatavalid \
sim:/avalonmm_to_ssram_testbench/avs_s0_waitrequest \
sim:/avalonmm_to_ssram_testbench/ssram_out \
sim:/avalonmm_to_ssram_testbench/ssram_in \
sim:/avalonmm_to_ssram_testbench/ssram_address \
sim:/avalonmm_to_ssram_testbench/ssram_OE \
sim:/avalonmm_to_ssram_testbench/ssram_WE \
sim:/avalonmm_to_ssram_testbench/ssram_validout \
sim:/avalonmm_to_ssram_testbench/ssram_busy \
sim:/avalonmm_to_ssram_testbench/ssram_clear_n \
sim:/avalonmm_to_ssram_testbench/start_sim \
sim:/avalonmm_to_ssram_testbench/stop_sim \
sim:/avalonmm_to_ssram_testbench/init \
sim:/avalonmm_to_ssram_testbench/preliminary_check

run 30us
quit -f
