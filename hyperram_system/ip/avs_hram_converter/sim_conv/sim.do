# PROJECT: avs_to_hram_converter 
# BRIEF DESCRIPTION: simulation file to be launched in vsim
# the clock controller IP is a Platform Designer System using an auto-generated simulation script

# set QSYS_SIMDIR relative to the directory from which you launch the simulator
set QSYS_SIMDIR ../hdl/clkctrl/clkctrl/testbench

# source the auto-generated simulation script of the clock controller IP
source $QSYS_SIMDIR/mentor/msim_setup.tcl

# compile the Quartus EDA simulation library
dev_com

# compile the auto-generated simulation files
com

# source the other design files
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
vcom ../hdl/adder_22bit_1pipe/adder_22bit_1pipe.vhd
vcom ../hdl/dll_90/dll_90.vhd
vcom ../hdl/avs_to_hram_converter_CU.vhd
vcom ../hdl/test_files/avs_to_hram_converter_EU.vhd
vcom ../hdl/test_files/avs_to_hram_converter.vhd

# testbench files
vcom ./tb/clk_rst_generator.vhd
vcom ./tb/driver.vhd
vcom ./tb/monitor.vhd
vcom ./tb/strobe_handler.vhd
vlog ./tb/s27kl0641.v
vlog ./tb/testbench.v

# set the top-level simulation or testbench module/entity name (used by elab to elaborate the top level)
set TOP_LEVEL_NAME testbench

# call command to elaborate your design and testbench
elab -voptargs=+acc

# wave
add wave -position insertpoint  \
sim:/testbench/DUT/CU/present_state \
sim:/testbench/rst_n \
sim:/testbench/clk \
sim:/testbench/avs_waitrequest \
sim:/testbench/avs_read \
sim:/testbench/avs_write \
sim:/testbench/avs_address \
sim:/testbench/avs_burstcount \
sim:/testbench/avs_writedata \
sim:/testbench/avs_readdata \
sim:/testbench/avs_readdatavalid \
sim:/testbench/hram_CS_n \
sim:/testbench/hram_CK \
sim:/testbench/hram_DQ \
sim:/testbench/hram_RWDS_out \
sim:/testbench/hram_RWDS_in \
sim:/testbench/hram_RWDS_in_90shift

# run the simulation
run 350us

# exit simulator and report success to the shell
exit -code 0
