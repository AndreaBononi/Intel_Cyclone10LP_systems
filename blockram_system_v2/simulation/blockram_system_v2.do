# PROJECT: blockram_system_v2
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
vcom ../testbench/blockram_system_v2_testbench.vhd

# set the top-level simulation or testbench module/entity name (used by elab to elaborate the top level)
set TOP_LEVEL_NAME blockram_system_v2_testbench

# call command to elaborate your design and testbench
elab -voptargs=+acc

# create wave 
add wave -position insertpoint \
sim:/blockram_system_v2_testbench/DUT/clk \
sim:/blockram_system_v2_testbench/mainClk \
sim:/blockram_system_v2_testbench/switches(0) \
sim:/blockram_system_v2_testbench/switches(7) \
sim:/blockram_system_v2_testbench/switches(6) \
sim:/blockram_system_v2_testbench/switches(5) \
sim:/blockram_system_v2_testbench/switches(4) \
sim:/blockram_system_v2_testbench/leds(3) \
sim:/blockram_system_v2_testbench/leds(2) \
sim:/blockram_system_v2_testbench/leds(1) \
sim:/blockram_system_v2_testbench/leds(0) \
sim:/blockram_system_v2_testbench/DUT/blockram_system_v2_inst/data_ocram/avs_address \
sim:/blockram_system_v2_testbench/DUT/blockram_system_v2_inst/data_ocram/avs_read \
sim:/blockram_system_v2_testbench/DUT/blockram_system_v2_inst/data_ocram/avs_readdata \
sim:/blockram_system_v2_testbench/DUT/blockram_system_v2_inst/data_ocram/avs_write \
sim:/blockram_system_v2_testbench/DUT/blockram_system_v2_inst/data_ocram/avs_writedata \
sim:/blockram_system_v2_testbench/DUT/blockram_system_v2_inst/data_ocram/avs_waitrequest \
sim:/blockram_system_v2_testbench/DUT/blockram_system_v2_inst/data_ocram/avs_readdatavalid \
sim:/blockram_system_v2_testbench/DUT/blockram_system_v2_inst/data_ocram/avs_beginbursttransfer \
sim:/blockram_system_v2_testbench/DUT/blockram_system_v2_inst/data_ocram/avs_burstcount \
sim:/blockram_system_v2_testbench/DUT/blockram_system_v2_inst/data_ocram/blockram_rden \
sim:/blockram_system_v2_testbench/DUT/blockram_system_v2_inst/data_ocram/blockram_wren \
sim:/blockram_system_v2_testbench/DUT/blockram_system_v2_inst/data_ocram/blockram_address \
sim:/blockram_system_v2_testbench/DUT/blockram_system_v2_inst/data_ocram/blockram_data \
sim:/blockram_system_v2_testbench/DUT/blockram_system_v2_inst/data_ocram/blockram_q

# run the simulation
run 10000ns

# exit simulator and report success to the shell
# exit -code 0

# --------------------------------------------------------------------------------------------------------------------

