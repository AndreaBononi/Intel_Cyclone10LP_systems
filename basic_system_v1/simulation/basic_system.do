# Set QSYS_SIMDIR relative to the directory from which you launch the simulator
set QSYS_SIMDIR <script generation output directory>

# Source the generated IP simulation script.
source $QSYS_SIMDIR/mentor/msim_setup.tcl

# Set any compilation options you require (this is unusual).
set USER_DEFINED_COMPILE_OPTIONS <compilation options>
set USER_DEFINED_VHDL_COMPILE_OPTIONS <compilation options for VHDL>
set USER_DEFINED_VERILOG_COMPILE_OPTIONS <compilation options for Verilog>

# Call command to compile the Quartus EDA simulation library.
dev_com

# Call command to compile the Quartus-generated IP simulation files.
com

# Compile all design files (other than the files compiled by the Quartus-generated IP simulation files ) and testbench files
vlog <compilation options> <design and testbench files>

# Set the top-level simulation or testbench module/entity name, which is
# used by the elab command to elaborate the top level.
set TOP_LEVEL_NAME <simulation top>

# Set any elaboration options you require.
set USER_DEFINED_ELAB_OPTIONS <elaboration options>

# Call command to elaborate your design and testbench.
elab

# Run the simulation.
run -a

# Report success to the shell.
exit -code 0
