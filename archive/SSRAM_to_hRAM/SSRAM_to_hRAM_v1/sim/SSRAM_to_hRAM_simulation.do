vlib work

# source files
vcom ../src/d_flipflop.vhd
vcom ../src/t_flip_flop.vhd
vcom ../src/sr_flipflop.vhd
vcom ../src/reg.vhd
vcom ../src/mux_4to1.vhd
vcom ../src/counter_Nbit.vhd
vcom ../src/comparator_Nbit.vhd
vcom ../src/decoder_2bit.vhd
vcom ../src/synchronizer_EU.vhd
vcom ../src/synchronizer_CU.vhd
vcom ../src/synchronizer.vhd
vcom ../src/gater.vhd
vcom ../src/mux_2to1.vhd
vcom ../src/packer.vhd
vcom ../src/reg_negedge.vhd
vcom ../src/tristate_buffer.vhd
vcom ../src/timer_14bit.vhd
vcom ../src/unpacker_16.vhd
vcom ../src/unpacker_48.vhd
vcom ../src/SSRAM_to_hRAM_EU.vhd
vcom ../src/SSRAM_to_hRAM_CU.vhd
vcom ../src/SSRAM_to_hRAM.vhd

# testbench files
vcom ../tb/clk_rst_generator.vhd
vcom ../tb/SSRAM_to_hRAM_monitor.vhd
vcom ../tb/SSRAM_to_hRAM_driver.vhd
vcom ../tb/SSRAM_to_hRAM_external_generator.vhd
vlog ../tb/s27kl0641.v
vlog ../tb/SSRAM_to_hRAM_testbench.v

# simulation options
vsim -c -t 1ns work.SSRAM_to_hRAM_testbench -voptargs=+acc

add wave -position insertpoint  \
sim:/SSRAM_to_hRAM_testbench/DUT/CU/present_state \
sim:/SSRAM_to_hRAM_testbench/clk \
sim:/SSRAM_to_hRAM_testbench/rst_n \
sim:/SSRAM_to_hRAM_testbench/SSRAM_CS \
sim:/SSRAM_to_hRAM_testbench/SSRAM_OE \
sim:/SSRAM_to_hRAM_testbench/SSRAM_WE \
sim:/SSRAM_to_hRAM_testbench/SSRAM_address_spacing \
sim:/SSRAM_to_hRAM_testbench/SSRAM_burstcount \
sim:/SSRAM_to_hRAM_testbench/SSRAM_address \
sim:/SSRAM_to_hRAM_testbench/SSRAM_in \
sim:/SSRAM_to_hRAM_testbench/SSRAM_out \
sim:/SSRAM_to_hRAM_testbench/SSRAM_validout \
sim:/SSRAM_to_hRAM_testbench/SSRAM_busy \
sim:/SSRAM_to_hRAM_testbench/SSRAM_haltdata \
sim:/SSRAM_to_hRAM_testbench/hbus_CS_n \
sim:/SSRAM_to_hRAM_testbench/hbus_RESET_n \
sim:/SSRAM_to_hRAM_testbench/hbus_DQ \
sim:/SSRAM_to_hRAM_testbench/ext_gen/hbus_CK \
sim:/SSRAM_to_hRAM_testbench/hbus_RWDS

run 320us
quit -f


