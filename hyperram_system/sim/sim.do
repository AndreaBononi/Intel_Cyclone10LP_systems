# PROJECT: avs_to_hram_converter 
# BRIEF DESCRIPTION: simulation file to be launched in vsim

# set QSYS_SIMDIR relative to the directory from which you launch the simulator
set QSYS_SIMDIR ../avs_hram_converter_TEST_basic/testbench

# source the auto-generated simulation script
source $QSYS_SIMDIR/mentor/msim_setup.tcl

# compile the Quartus EDA simulation library
dev_com

# compile the auto-generated simulation files
com

# testbench files
vcom ./tb/clk_rst_generator.vhd
vcom ./tb/driver.vhd
vcom ./tb/monitor.vhd
vlog ./tb/s27kl0641.v
vlog ./tb/testbench.v

# set the top-level simulation or testbench module/entity name (used by elab to elaborate the top level)
set TOP_LEVEL_NAME testbench

# call command to elaborate your design and testbench
elab -voptargs=+acc

# wave
add wave -position insertpoint  \
sim:/testbench/rst_n \
sim:/testbench/clk \
sim:/testbench/DUT/avs_hram_converter/avs_hram_mainconv_inst/CU/present_state \
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
sim:/testbench/hram_RWDS

# run the simulation
run 350us

# exit simulator and report success to the shell
# exit -code 0
