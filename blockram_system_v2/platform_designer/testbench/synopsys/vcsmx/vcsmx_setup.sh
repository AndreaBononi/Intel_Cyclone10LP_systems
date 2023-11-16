
# (C) 2001-2023 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 22.1 917 linux 2023.11.15.09:55:39

# ----------------------------------------
# vcsmx - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     blockram_system_v2_tb
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# To write a top-level shell script that compiles Altera simulation libraries 
# and the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "vcsmx_sim.sh", and modify text as directed.
# 
# You can also modify the simulation flow to suit your needs. Set the
# following variables to 1 to disable their corresponding processes:
# - SKIP_FILE_COPY: skip copying ROM/RAM initialization files
# - SKIP_DEV_COM: skip compiling the Quartus EDA simulation library
# - SKIP_COM: skip compiling Quartus-generated IP simulation files
# - SKIP_ELAB and SKIP_SIM: skip elaboration and simulation
# 
# ----------------------------------------
# # TOP-LEVEL TEMPLATE - BEGIN
# #
# # QSYS_SIMDIR is used in the Quartus-generated IP simulation script to
# # construct paths to the files required to simulate the IP in your Quartus
# # project. By default, the IP script assumes that you are launching the
# # simulator from the IP script location. If launching from another
# # location, set QSYS_SIMDIR to the output directory you specified when you
# # generated the IP script, relative to the directory from which you launch
# # the simulator. In this case, you must also copy the generated library
# # setup "synopsys_sim.setup" into the location from which you launch the
# # simulator, or incorporate into any existing library setup.
# #
# # Run Quartus-generated IP simulation script once to compile Quartus EDA
# # simulation libraries and Quartus-generated IP simulation files, and copy
# # any ROM/RAM initialization files to the simulation directory.
# #
# # - If necessary, specify any compilation options:
# #   USER_DEFINED_COMPILE_OPTIONS
# #   USER_DEFINED_VHDL_COMPILE_OPTIONS applied to vhdl compiler
# #   USER_DEFINED_VERILOG_COMPILE_OPTIONS applied to verilog compiler
# #
# source <script generation output directory>/synopsys/vcsmx/vcsmx_setup.sh \
# SKIP_ELAB=1 \
# SKIP_SIM=1 \
# USER_DEFINED_COMPILE_OPTIONS=<compilation options for your design> \
# USER_DEFINED_VHDL_COMPILE_OPTIONS=<VHDL compilation options for your design> \
# USER_DEFINED_VERILOG_COMPILE_OPTIONS=<Verilog compilation options for your design> \
# QSYS_SIMDIR=<script generation output directory>
# #
# # Compile all design files and testbench files, including the top level.
# # (These are all the files required for simulation other than the files
# # compiled by the IP script)
# #
# vlogan <compilation options> <design and testbench files>
# #
# # TOP_LEVEL_NAME is used in this script to set the top-level simulation or
# # testbench module/entity name.
# #
# # Run the IP script again to elaborate and simulate the top level:
# # - Specify TOP_LEVEL_NAME and USER_DEFINED_ELAB_OPTIONS.
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# #
# source <script generation output directory>/synopsys/vcsmx/vcsmx_setup.sh \
# SKIP_FILE_COPY=1 \
# SKIP_DEV_COM=1 \
# SKIP_COM=1 \
# TOP_LEVEL_NAME="'-top <simulation top>'" \
# QSYS_SIMDIR=<script generation output directory> \
# USER_DEFINED_ELAB_OPTIONS=<elaboration options for your design> \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If blockram_system_v2_tb is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 22.1 917 linux 2023.11.15.09:55:39
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="blockram_system_v2_tb"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="/home/andrea/intelFPGA_lite/22.1std/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/error_adapter_0/
mkdir -p ./libraries/avalon_st_adapter/
mkdir -p ./libraries/rsp_mux_001/
mkdir -p ./libraries/rsp_mux/
mkdir -p ./libraries/rsp_demux_001/
mkdir -p ./libraries/rsp_demux/
mkdir -p ./libraries/cmd_mux_001/
mkdir -p ./libraries/cmd_mux/
mkdir -p ./libraries/cmd_demux_001/
mkdir -p ./libraries/cmd_demux/
mkdir -p ./libraries/nios2f_debug_mem_slave_burst_adapter/
mkdir -p ./libraries/nios2f_data_master_limiter/
mkdir -p ./libraries/router_006/
mkdir -p ./libraries/router_003/
mkdir -p ./libraries/router_002/
mkdir -p ./libraries/router_001/
mkdir -p ./libraries/router/
mkdir -p ./libraries/data_OCRAM_avalon_slave_agent_rsp_fifo/
mkdir -p ./libraries/data_OCRAM_avalon_slave_agent/
mkdir -p ./libraries/nios2f_data_master_agent/
mkdir -p ./libraries/data_OCRAM_avalon_slave_translator/
mkdir -p ./libraries/nios2f_data_master_translator/
mkdir -p ./libraries/cpu/
mkdir -p ./libraries/rst_controller/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/mm_interconnect_0/
mkdir -p ./libraries/switches/
mkdir -p ./libraries/nios2f/
mkdir -p ./libraries/leds/
mkdir -p ./libraries/instruction_OCROM/
mkdir -p ./libraries/data_OCRAM/
mkdir -p ./libraries/blockram_system_v2_inst_reset_bfm/
mkdir -p ./libraries/blockram_system_v2_inst_clk_bfm/
mkdir -p ./libraries/blockram_system_v2_inst/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cyclone10lp_ver/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/cyclone10lp/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_rf_ram_b.mif ./
  cp -f $QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_bht_ram.hex ./
  cp -f $QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_dc_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_ic_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_bht_ram.dat ./
  cp -f $QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_ic_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_dc_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_ic_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_bht_ram.mif ./
  cp -f $QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_dc_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_rf_ram_a.dat ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"              -work altera_ver      
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                       -work lpm_ver         
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                          -work sgate_ver       
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                      -work altera_mf_ver   
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                  -work altera_lnsim_ver
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclone10lp_atoms.v"              -work cyclone10lp_ver 
  vhdlan $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS                   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"        -work altera          
  vhdlan $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS                   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"    -work altera          
  vhdlan $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS                   "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera          
  vhdlan $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS                   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera          
  vhdlan $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS                   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd" -work altera          
  vhdlan $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS                   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"            -work altera          
  vhdlan $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS                   "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                      -work lpm             
  vhdlan $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS                   "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                     -work lpm             
  vhdlan $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS                   "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                   -work sgate           
  vhdlan $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS                   "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                        -work sgate           
  vhdlan $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS                   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf       
  vhdlan $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS                   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                    -work altera_mf       
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                  -work altera_lnsim    
  vhdlan $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS                   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim    
  vhdlan $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS                   "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclone10lp_atoms.vhd"            -work cyclone10lp     
  vhdlan $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS                   "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclone10lp_components.vhd"       -work cyclone10lp     
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv" -work error_adapter_0                       
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_mm_interconnect_0_avalon_st_adapter.vhd"                -work avalon_st_adapter                     
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_mm_interconnect_0_rsp_mux_001.sv"                       -work rsp_mux_001                           
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_merlin_arbitrator.sv"                                               -work rsp_mux_001                           
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_mm_interconnect_0_rsp_mux.sv"                           -work rsp_mux                               
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_merlin_arbitrator.sv"                                               -work rsp_mux                               
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_mm_interconnect_0_rsp_demux_001.sv"                     -work rsp_demux_001                         
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_mm_interconnect_0_rsp_demux.sv"                         -work rsp_demux                             
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_mm_interconnect_0_cmd_mux_001.sv"                       -work cmd_mux_001                           
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_merlin_arbitrator.sv"                                               -work cmd_mux_001                           
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_mm_interconnect_0_cmd_mux.sv"                           -work cmd_mux                               
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_merlin_arbitrator.sv"                                               -work cmd_mux                               
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_mm_interconnect_0_cmd_demux_001.sv"                     -work cmd_demux_001                         
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_mm_interconnect_0_cmd_demux.sv"                         -work cmd_demux                             
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_merlin_burst_adapter.sv"                                            -work nios2f_debug_mem_slave_burst_adapter  
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_merlin_burst_adapter_uncmpr.sv"                                     -work nios2f_debug_mem_slave_burst_adapter  
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_merlin_burst_adapter_13_1.sv"                                       -work nios2f_debug_mem_slave_burst_adapter  
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_merlin_burst_adapter_new.sv"                                        -work nios2f_debug_mem_slave_burst_adapter  
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_incr_burst_converter.sv"                                            -work nios2f_debug_mem_slave_burst_adapter  
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_wrap_burst_converter.sv"                                            -work nios2f_debug_mem_slave_burst_adapter  
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_default_burst_converter.sv"                                         -work nios2f_debug_mem_slave_burst_adapter  
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_merlin_address_alignment.sv"                                        -work nios2f_debug_mem_slave_burst_adapter  
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_avalon_st_pipeline_stage.sv"                                        -work nios2f_debug_mem_slave_burst_adapter  
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_avalon_st_pipeline_base.v"                                          -work nios2f_debug_mem_slave_burst_adapter  
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_merlin_traffic_limiter.sv"                                          -work nios2f_data_master_limiter            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_merlin_reorder_memory.sv"                                           -work nios2f_data_master_limiter            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_avalon_sc_fifo.v"                                                   -work nios2f_data_master_limiter            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_avalon_st_pipeline_base.v"                                          -work nios2f_data_master_limiter            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_mm_interconnect_0_router_006.sv"                        -work router_006                            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_mm_interconnect_0_router_003.sv"                        -work router_003                            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_mm_interconnect_0_router_002.sv"                        -work router_002                            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_mm_interconnect_0_router_001.sv"                        -work router_001                            
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_mm_interconnect_0_router.sv"                            -work router                                
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_avalon_sc_fifo.v"                                                   -work data_OCRAM_avalon_slave_agent_rsp_fifo
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_merlin_slave_agent.sv"                                              -work data_OCRAM_avalon_slave_agent         
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_merlin_burst_uncompressor.sv"                                       -work data_OCRAM_avalon_slave_agent         
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_merlin_master_agent.sv"                                             -work nios2f_data_master_agent              
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_merlin_slave_translator.sv"                                         -work data_OCRAM_avalon_slave_translator    
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_merlin_master_translator.sv"                                        -work nios2f_data_master_translator         
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_debug_slave_wrapper.v"                       -work cpu                                   
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_debug_slave_tck.v"                           -work cpu                                   
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_mult_cell.v"                                 -work cpu                                   
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_test_bench.v"                                -work cpu                                   
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu.v"                                           -work cpu                                   
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f_cpu_debug_slave_sysclk.v"                        -work cpu                                   
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/synopsys/altera_nios2_gen2_rtl_module.sv"                                  -work cpu                                   
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_reset_controller.v"                                                 -work rst_controller                        
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_reset_synchronizer.v"                                               -work rst_controller                        
  vlogan +v2k -sverilog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_irq_mapper.sv"                                          -work irq_mapper                            
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_mm_interconnect_0.v"                                    -work mm_interconnect_0                     
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_switches.vhd"                                           -work switches                              
  vlogan +v2k $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS           "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_nios2f.v"                                               -work nios2f                                
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_leds.vhd"                                               -work leds                                  
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2_instruction_OCROM.vhd"                                  -work instruction_OCROM                     
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/d_flipflop.vhd"                                                            -work data_OCRAM                            
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/t_flip_flop.vhd"                                                           -work data_OCRAM                            
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/reg.vhd"                                                                   -work data_OCRAM                            
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/mux_2to1.vhd"                                                              -work data_OCRAM                            
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/counter_Nbit.vhd"                                                          -work data_OCRAM                            
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/comparator_Nbit.vhd"                                                       -work data_OCRAM                            
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/incrementer_8bit_nopipe.vhd"                                               -work data_OCRAM                            
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/avs_to_blockram_converter_CU.vhd"                                          -work data_OCRAM                            
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/avs_to_blockram_converter_EU.vhd"                                          -work data_OCRAM                            
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/avs_to_blockram_converter.vhd"                                             -work data_OCRAM                            
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_1port_8a_32d.vhd"                                                 -work data_OCRAM                            
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/custom_OCRAM.vhd"                                                          -work data_OCRAM                            
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_avalon_reset_source.vhd"                                            -work blockram_system_v2_inst_reset_bfm     
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/altera_avalon_clock_source.vhd"                                            -work blockram_system_v2_inst_clk_bfm       
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/submodules/blockram_system_v2.vhd"                                                    -work blockram_system_v2_inst               
  vhdlan -xlrm $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS             "$QSYS_SIMDIR/blockram_system_v2_tb/simulation/blockram_system_v2_tb.vhd"                                                                                                        
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  vcs -lca -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi