# PROJECT: basic_system_v2
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
vcom ../myAltPll/myAltPll.vhd
vcom ../top_level_entity.vhd
vcom ../testbench/basic_system_testbench.vhd

# set the top-level simulation or testbench module/entity name (used by elab to elaborate the top level)
set TOP_LEVEL_NAME basic_system_testbench

# call command to elaborate your design and testbench
elab

# run the simulation
run -a

# exit simulator and report success to the shell
# exit -code 0

# --------------------------------------------------------------------------------------------------------------------

