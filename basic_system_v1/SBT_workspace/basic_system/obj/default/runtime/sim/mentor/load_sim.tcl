# ------------------------------------------------------------------------------
# Top Level Simulation Script to source msim_setup.tcl
# ------------------------------------------------------------------------------
set QSYS_SIMDIR obj/default/runtime/sim
source msim_setup.tcl
# Copy generated memory initialization hex and dat file(s) to current directory
file copy -force /home/andrea/Documents/Tesi_287628/287628/basic_system_v1/SBT_workspace/basic_system/mem_init/hdl_sim/basic_system_OCRAM.dat ./ 
file copy -force /home/andrea/Documents/Tesi_287628/287628/basic_system_v1/SBT_workspace/basic_system/mem_init/basic_system_OCRAM.hex ./ 
