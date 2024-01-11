# PROJECT: avs_to_hram_converter 
# BRIEF DESCRIPTION: simulation file to be launched in vsim

# set QSYS_SIMDIR relative to the directory from which you launch the simulator
set QSYS_SIMDIR ../avs_hram_converter_TEST_advanced/testbench

# source the auto-generated simulation script
source $QSYS_SIMDIR/mentor/msim_setup.tcl

# compile the Quartus EDA simulation library
dev_com

# compile the auto-generated simulation files
com

# source files
vcom ../hdl/d_flipflop.vhd
vcom ../hdl/delayer.vhd
vcom ../pll/pll.vhd
vcom ../hdl/top_level.vhd

# testbench files
vcom ./clk_rst_generator.vhd
vlog ./s27kl0641.v
vlog ./testbench.v

# set the top-level simulation or testbench module/entity name (used by elab to elaborate the top level)
set TOP_LEVEL_NAME testbench

# call command to elaborate your design and testbench
elab -voptargs=+acc

# wave
add wave -position insertpoint  \
sim:/testbench/top_level_inst/clk_50MHz \
sim:/testbench/clk_10MHz \
sim:/testbench/top_level_inst/switches(3) \
sim:/testbench/top_level_inst/switches(2) \
sim:/testbench/top_level_inst/switches(1) \
sim:/testbench/top_level_inst/switches(0) \
sim:/testbench/leds(3) \
sim:/testbench/leds(2) \
sim:/testbench/leds(1) \
sim:/testbench/leds(0)

# run the simulation
run 1000us

# exit simulator and report success to the shell
# exit -code 0
