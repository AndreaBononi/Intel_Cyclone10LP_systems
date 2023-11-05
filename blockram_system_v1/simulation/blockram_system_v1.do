# PROJECT: blockram_system_v1
# BRIEF DESCRIPTION: simulation file to be launched in vsim
# COMMENTS:
# this file execute the auto-generated simulation script of the Platform Designer System contained in the project
# it also compiles all the other design files and testbench files

# --------------------------------------------------------------------------------------------------------------------

# set QSYS_SIMDIR relative to the directory from which you launch the simulator
set QSYS_SIMDIR ../platform_designer/testbench

# source the auto-generated simulation script
source $QSYS_SIMDIR/mentor/msim_setup.tcl

# compile the Quartus EDA simulation library
dev_com

# compile the auto-generated simulation files
com

# compile all design files (other than the auto-generated simulation files) and testbench files
vcom ../pll/pll.vhd
vcom ../top_level_entity.vhd
vcom ../testbench/blockram_system_v1_testbench.vhd

# set the top-level simulation or testbench module/entity name (used by elab to elaborate the top level)
set TOP_LEVEL_NAME blockram_system_v1_testbench

# call command to elaborate your design and testbench
elab -voptargs=+acc

# create wave 
add wave -position insertpoint \
sim:/blockram_system_v1_testbench/DUT/clk \
sim:/blockram_system_v1_testbench/mainClk \
sim:/blockram_system_v1_testbench/switches(0) \
sim:/blockram_system_v1_testbench/switches(7) \
sim:/blockram_system_v1_testbench/switches(6) \
sim:/blockram_system_v1_testbench/switches(5) \
sim:/blockram_system_v1_testbench/switches(4) \
sim:/blockram_system_v1_testbench/leds(3) \
sim:/blockram_system_v1_testbench/leds(2) \
sim:/blockram_system_v1_testbench/leds(1) \
sim:/blockram_system_v1_testbench/leds(0)

# run the simulation
run 10000ns

# exit simulator and report success to the shell
# exit -code 0

# --------------------------------------------------------------------------------------------------------------------

