
# (C) 2001-2024 Altera Corporation. All rights reserved.
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

# ACDS 22.1 917 linux 2024.02.07.12:44:27

# ----------------------------------------
# xcelium - auto-generated simulation script

# ----------------------------------------
# This script provides commands to simulate the following IP detected in
# your Quartus project:
#     avs_hram_converter_TEST_advanced_tb
# 
# Altera recommends that you source this Quartus-generated IP simulation
# script from your own customized top-level script, and avoid editing this
# generated script.
# 
# Xcelium Simulation Script.
# To write a top-level shell script that compiles Intel simulation libraries
# and the Quartus-generated IP in your project, along with your design and
# testbench files, copy the text from the TOP-LEVEL TEMPLATE section below
# into a new file, e.g. named "xcelium_sim.sh", and modify text as directed.
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
# # the simulator. In this case, you must also copy the generated files
# # "cds.lib" and "hdl.var" - plus the directory "cds_libs" if generated - 
# # into the location from which you launch the simulator, or incorporate
# # into any existing library setup.
# #
# # Run Quartus-generated IP simulation script once to compile Quartus EDA
# # simulation libraries and Quartus-generated IP simulation files, and copy
# # any ROM/RAM initialization files to the simulation directory.
# # - If necessary, specify any compilation options:
# #   USER_DEFINED_COMPILE_OPTIONS
# #   USER_DEFINED_VHDL_COMPILE_OPTIONS applied to vhdl compiler
# #   USER_DEFINED_VERILOG_COMPILE_OPTIONS applied to verilog compiler
# #
# source <script generation output directory>/xcelium/xcelium_setup.sh \
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
# xmvlog <compilation options> <design and testbench files>
# #
# # TOP_LEVEL_NAME is used in this script to set the top-level simulation or
# # testbench module/entity name.
# #
# # Run the IP script again to elaborate and simulate the top level:
# # - Specify TOP_LEVEL_NAME and USER_DEFINED_ELAB_OPTIONS.
# # - Override the default USER_DEFINED_SIM_OPTIONS. For example, to run
# #   until $finish(), set to an empty string: USER_DEFINED_SIM_OPTIONS="".
# #
# source <script generation output directory>/xcelium/xcelium_setup.sh \
# SKIP_FILE_COPY=1 \
# SKIP_DEV_COM=1 \
# SKIP_COM=1 \
# TOP_LEVEL_NAME=<simulation top> \
# USER_DEFINED_ELAB_OPTIONS=<elaboration options for your design> \
# USER_DEFINED_SIM_OPTIONS=<simulation options for your design>
# #
# # TOP-LEVEL TEMPLATE - END
# ----------------------------------------
# 
# IP SIMULATION SCRIPT
# ----------------------------------------
# If avs_hram_converter_TEST_advanced_tb is one of several IP cores in your
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
# ACDS 22.1 917 linux 2024.02.07.12:44:27
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="avs_hram_converter_TEST_advanced_tb"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="/home/andrea/intelFPGA_lite/22.1std/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

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
if [[ `xmsim -version` != *"xmsim(64)"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/error_adapter_0/
mkdir -p ./libraries/altclkctrl_0/
mkdir -p ./libraries/avalon_st_adapter_001/
mkdir -p ./libraries/avalon_st_adapter/
mkdir -p ./libraries/avs_hram_converter_avalon_slave_cmd_width_adapter/
mkdir -p ./libraries/rsp_mux_001/
mkdir -p ./libraries/rsp_mux/
mkdir -p ./libraries/rsp_demux_001/
mkdir -p ./libraries/rsp_demux/
mkdir -p ./libraries/cmd_mux_001/
mkdir -p ./libraries/cmd_mux/
mkdir -p ./libraries/cmd_demux_001/
mkdir -p ./libraries/cmd_demux/
mkdir -p ./libraries/instruction_OCROM_s1_burst_adapter/
mkdir -p ./libraries/nios2_data_master_limiter/
mkdir -p ./libraries/router_006/
mkdir -p ./libraries/router_004/
mkdir -p ./libraries/router_003/
mkdir -p ./libraries/router_002/
mkdir -p ./libraries/router_001/
mkdir -p ./libraries/router/
mkdir -p ./libraries/avs_hram_converter_avalon_slave_agent_rsp_fifo/
mkdir -p ./libraries/avs_hram_converter_avalon_slave_agent/
mkdir -p ./libraries/nios2_data_master_agent/
mkdir -p ./libraries/avs_hram_converter_avalon_slave_translator/
mkdir -p ./libraries/nios2_data_master_translator/
mkdir -p ./libraries/cpu/
mkdir -p ./libraries/clkctrl/
mkdir -p ./libraries/avs_hram_mainconv/
mkdir -p ./libraries/rst_controller/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/mm_interconnect_0/
mkdir -p ./libraries/switches/
mkdir -p ./libraries/nios2/
mkdir -p ./libraries/leds/
mkdir -p ./libraries/instruction_OCROM/
mkdir -p ./libraries/avs_hram_converter/
mkdir -p ./libraries/avs_hram_converter_TEST_advanced_inst_reset_bfm/
mkdir -p ./libraries/avs_hram_converter_TEST_advanced_inst_clk_bfm/
mkdir -p ./libraries/avs_hram_converter_TEST_advanced_inst/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
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
  cp -f $QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_ic_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_ic_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_ic_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_bht_ram.dat ./
  cp -f $QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_dc_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_bht_ram.mif ./
  cp -f $QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_rf_ram_b.mif ./
  cp -f $QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_bht_ram.hex ./
  cp -f $QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_dc_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_dc_tag_ram.mif ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"              -work altera_ver     
  xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                       -work lpm_ver        
  xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                          -work sgate_ver      
  xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                      -work altera_mf_ver  
  xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclone10lp_atoms.v"              -work cyclone10lp_ver
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"        -work altera         
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"    -work altera         
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera         
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera         
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd" -work altera         
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"            -work altera         
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                      -work lpm            
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                     -work lpm            
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                   -work sgate          
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                        -work sgate          
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf      
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                    -work altera_mf      
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                  -work altera_lnsim   
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim   
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclone10lp_atoms.vhd"            -work cyclone10lp    
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclone10lp_components.vhd"       -work cyclone10lp    
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_mm_interconnect_0_avalon_st_adapter_001_error_adapter_0.sv" -work error_adapter_0                                   -cdslib ./cds_libs/error_adapter_0.cds.lib                                  
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv"     -work error_adapter_0                                   -cdslib ./cds_libs/error_adapter_0.cds.lib                                  
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_avs_hram_converter_clkctrl_altclkctrl_0.vhd"                -work altclkctrl_0                                      -cdslib ./cds_libs/altclkctrl_0.cds.lib                                     
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_mm_interconnect_0_avalon_st_adapter_001.vhd"                -work avalon_st_adapter_001                             -cdslib ./cds_libs/avalon_st_adapter_001.cds.lib                            
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_mm_interconnect_0_avalon_st_adapter.vhd"                    -work avalon_st_adapter                                 -cdslib ./cds_libs/avalon_st_adapter.cds.lib                                
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_merlin_width_adapter.sv"                                                              -work avs_hram_converter_avalon_slave_cmd_width_adapter -cdslib ./cds_libs/avs_hram_converter_avalon_slave_cmd_width_adapter.cds.lib
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_merlin_address_alignment.sv"                                                          -work avs_hram_converter_avalon_slave_cmd_width_adapter -cdslib ./cds_libs/avs_hram_converter_avalon_slave_cmd_width_adapter.cds.lib
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_merlin_burst_uncompressor.sv"                                                         -work avs_hram_converter_avalon_slave_cmd_width_adapter -cdslib ./cds_libs/avs_hram_converter_avalon_slave_cmd_width_adapter.cds.lib
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_mm_interconnect_0_rsp_mux_001.sv"                           -work rsp_mux_001                                       -cdslib ./cds_libs/rsp_mux_001.cds.lib                                      
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_merlin_arbitrator.sv"                                                                 -work rsp_mux_001                                       -cdslib ./cds_libs/rsp_mux_001.cds.lib                                      
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_mm_interconnect_0_rsp_mux.sv"                               -work rsp_mux                                           -cdslib ./cds_libs/rsp_mux.cds.lib                                          
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_merlin_arbitrator.sv"                                                                 -work rsp_mux                                           -cdslib ./cds_libs/rsp_mux.cds.lib                                          
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_mm_interconnect_0_rsp_demux_001.sv"                         -work rsp_demux_001                                     -cdslib ./cds_libs/rsp_demux_001.cds.lib                                    
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_mm_interconnect_0_rsp_demux.sv"                             -work rsp_demux                                         -cdslib ./cds_libs/rsp_demux.cds.lib                                        
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_mm_interconnect_0_cmd_mux_001.sv"                           -work cmd_mux_001                                       -cdslib ./cds_libs/cmd_mux_001.cds.lib                                      
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_merlin_arbitrator.sv"                                                                 -work cmd_mux_001                                       -cdslib ./cds_libs/cmd_mux_001.cds.lib                                      
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_mm_interconnect_0_cmd_mux.sv"                               -work cmd_mux                                           -cdslib ./cds_libs/cmd_mux.cds.lib                                          
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_merlin_arbitrator.sv"                                                                 -work cmd_mux                                           -cdslib ./cds_libs/cmd_mux.cds.lib                                          
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_mm_interconnect_0_cmd_demux_001.sv"                         -work cmd_demux_001                                     -cdslib ./cds_libs/cmd_demux_001.cds.lib                                    
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_mm_interconnect_0_cmd_demux.sv"                             -work cmd_demux                                         -cdslib ./cds_libs/cmd_demux.cds.lib                                        
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_merlin_burst_adapter.sv"                                                              -work instruction_OCROM_s1_burst_adapter                -cdslib ./cds_libs/instruction_OCROM_s1_burst_adapter.cds.lib               
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_merlin_burst_adapter_uncmpr.sv"                                                       -work instruction_OCROM_s1_burst_adapter                -cdslib ./cds_libs/instruction_OCROM_s1_burst_adapter.cds.lib               
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_merlin_burst_adapter_13_1.sv"                                                         -work instruction_OCROM_s1_burst_adapter                -cdslib ./cds_libs/instruction_OCROM_s1_burst_adapter.cds.lib               
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_merlin_burst_adapter_new.sv"                                                          -work instruction_OCROM_s1_burst_adapter                -cdslib ./cds_libs/instruction_OCROM_s1_burst_adapter.cds.lib               
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_incr_burst_converter.sv"                                                              -work instruction_OCROM_s1_burst_adapter                -cdslib ./cds_libs/instruction_OCROM_s1_burst_adapter.cds.lib               
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_wrap_burst_converter.sv"                                                              -work instruction_OCROM_s1_burst_adapter                -cdslib ./cds_libs/instruction_OCROM_s1_burst_adapter.cds.lib               
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_default_burst_converter.sv"                                                           -work instruction_OCROM_s1_burst_adapter                -cdslib ./cds_libs/instruction_OCROM_s1_burst_adapter.cds.lib               
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_merlin_address_alignment.sv"                                                          -work instruction_OCROM_s1_burst_adapter                -cdslib ./cds_libs/instruction_OCROM_s1_burst_adapter.cds.lib               
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_avalon_st_pipeline_stage.sv"                                                          -work instruction_OCROM_s1_burst_adapter                -cdslib ./cds_libs/instruction_OCROM_s1_burst_adapter.cds.lib               
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_avalon_st_pipeline_base.v"                                                            -work instruction_OCROM_s1_burst_adapter                -cdslib ./cds_libs/instruction_OCROM_s1_burst_adapter.cds.lib               
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_merlin_traffic_limiter.sv"                                                            -work nios2_data_master_limiter                         -cdslib ./cds_libs/nios2_data_master_limiter.cds.lib                        
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_merlin_reorder_memory.sv"                                                             -work nios2_data_master_limiter                         -cdslib ./cds_libs/nios2_data_master_limiter.cds.lib                        
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_avalon_sc_fifo.v"                                                                     -work nios2_data_master_limiter                         -cdslib ./cds_libs/nios2_data_master_limiter.cds.lib                        
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_avalon_st_pipeline_base.v"                                                            -work nios2_data_master_limiter                         -cdslib ./cds_libs/nios2_data_master_limiter.cds.lib                        
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_mm_interconnect_0_router_006.sv"                            -work router_006                                        -cdslib ./cds_libs/router_006.cds.lib                                       
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_mm_interconnect_0_router_004.sv"                            -work router_004                                        -cdslib ./cds_libs/router_004.cds.lib                                       
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_mm_interconnect_0_router_003.sv"                            -work router_003                                        -cdslib ./cds_libs/router_003.cds.lib                                       
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_mm_interconnect_0_router_002.sv"                            -work router_002                                        -cdslib ./cds_libs/router_002.cds.lib                                       
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_mm_interconnect_0_router_001.sv"                            -work router_001                                        -cdslib ./cds_libs/router_001.cds.lib                                       
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_mm_interconnect_0_router.sv"                                -work router                                            -cdslib ./cds_libs/router.cds.lib                                           
  xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_avalon_sc_fifo.v"                                                                     -work avs_hram_converter_avalon_slave_agent_rsp_fifo    -cdslib ./cds_libs/avs_hram_converter_avalon_slave_agent_rsp_fifo.cds.lib   
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_merlin_slave_agent.sv"                                                                -work avs_hram_converter_avalon_slave_agent             -cdslib ./cds_libs/avs_hram_converter_avalon_slave_agent.cds.lib            
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_merlin_burst_uncompressor.sv"                                                         -work avs_hram_converter_avalon_slave_agent             -cdslib ./cds_libs/avs_hram_converter_avalon_slave_agent.cds.lib            
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_merlin_master_agent.sv"                                                               -work nios2_data_master_agent                           -cdslib ./cds_libs/nios2_data_master_agent.cds.lib                          
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_merlin_slave_translator.sv"                                                           -work avs_hram_converter_avalon_slave_translator        -cdslib ./cds_libs/avs_hram_converter_avalon_slave_translator.cds.lib       
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_merlin_master_translator.sv"                                                          -work nios2_data_master_translator                      -cdslib ./cds_libs/nios2_data_master_translator.cds.lib                     
  xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu.v"                                                -work cpu                                               -cdslib ./cds_libs/cpu.cds.lib                                              
  xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_sysclk.v"                             -work cpu                                               -cdslib ./cds_libs/cpu.cds.lib                                              
  xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_test_bench.v"                                     -work cpu                                               -cdslib ./cds_libs/cpu.cds.lib                                              
  xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_wrapper.v"                            -work cpu                                               -cdslib ./cds_libs/cpu.cds.lib                                              
  xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_tck.v"                                -work cpu                                               -cdslib ./cds_libs/cpu.cds.lib                                              
  xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2_cpu_mult_cell.v"                                      -work cpu                                               -cdslib ./cds_libs/cpu.cds.lib                                              
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/cadence/altera_nios2_gen2_rtl_module.sv"                                                     -work cpu                                               -cdslib ./cds_libs/cpu.cds.lib                                              
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_avs_hram_converter_clkctrl.vhd"                             -work clkctrl                                           -cdslib ./cds_libs/clkctrl.cds.lib                                          
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/d_flipflop.vhd"                                                                              -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/dff_negedge.vhd"                                                                             -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/sr_flipflop.vhd"                                                                             -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/t_flipflop.vhd"                                                                              -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/reg.vhd"                                                                                     -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/reg_negedge.vhd"                                                                             -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/mux_2to1.vhd"                                                                                -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/mux_4to1.vhd"                                                                                -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/CA_builder.vhd"                                                                              -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/CA_unpacker.vhd"                                                                             -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/comparator_Nbit.vhd"                                                                         -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/counter_Nbit.vhd"                                                                            -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/conf_builder.vhd"                                                                            -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/decoder_2bit.vhd"                                                                            -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/fulladder.vhd"                                                                               -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/halfadder.vhd"                                                                               -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/SDR_to_DDR_converter.vhd"                                                                    -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/timer_14bit.vhd"                                                                             -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/tristate_buffer.vhd"                                                                         -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/voter.vhd"                                                                                   -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/adder_22bit_1pipe.vhd"                                                                       -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/counter_11bit_updown.vhd"                                                                    -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/dll_90.vhd"                                                                                  -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/pll_x8.vhd"                                                                                  -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/DDR_to_SDR_converter_EU.vhd"                                                                 -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/DDR_to_SDR_converter_CU.vhd"                                                                 -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/DDR_to_SDR_converter.vhd"                                                                    -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/synchronizer_CU.vhd"                                                                         -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/synchronizer_EU.vhd"                                                                         -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/synchronizer.vhd"                                                                            -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_mainconv_CU.vhd"                                                                    -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_mainconv_EU.vhd"                                                                    -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_mainconv.vhd"                                                                       -work avs_hram_mainconv                                 -cdslib ./cds_libs/avs_hram_mainconv.cds.lib                                
  xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_reset_controller.v"                                                                   -work rst_controller                                    -cdslib ./cds_libs/rst_controller.cds.lib                                   
  xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_reset_synchronizer.v"                                                                 -work rst_controller                                    -cdslib ./cds_libs/rst_controller.cds.lib                                   
  xmvlog -sv $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_irq_mapper.sv"                                              -work irq_mapper                                        -cdslib ./cds_libs/irq_mapper.cds.lib                                       
  xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_mm_interconnect_0.v"                                        -work mm_interconnect_0                                 -cdslib ./cds_libs/mm_interconnect_0.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_switches.vhd"                                               -work switches                                          -cdslib ./cds_libs/switches.cds.lib                                         
  xmvlog $USER_DEFINED_VERILOG_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_nios2.v"                                                    -work nios2                                             -cdslib ./cds_libs/nios2.cds.lib                                            
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_leds.vhd"                                                   -work leds                                              -cdslib ./cds_libs/leds.cds.lib                                             
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_instruction_OCROM.vhd"                                      -work instruction_OCROM                                 -cdslib ./cds_libs/instruction_OCROM.cds.lib                                
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced_avs_hram_converter.vhd"                                     -work avs_hram_converter                                -cdslib ./cds_libs/avs_hram_converter.cds.lib                               
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_avalon_reset_source.vhd"                                                              -work avs_hram_converter_TEST_advanced_inst_reset_bfm   -cdslib ./cds_libs/avs_hram_converter_TEST_advanced_inst_reset_bfm.cds.lib  
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/altera_avalon_clock_source.vhd"                                                              -work avs_hram_converter_TEST_advanced_inst_clk_bfm     -cdslib ./cds_libs/avs_hram_converter_TEST_advanced_inst_clk_bfm.cds.lib    
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_TEST_advanced.vhd"                                                        -work avs_hram_converter_TEST_advanced_inst             -cdslib ./cds_libs/avs_hram_converter_TEST_advanced_inst.cds.lib            
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_test_advanced_rst_controller.vhd"                                         -work avs_hram_converter_TEST_advanced_inst             -cdslib ./cds_libs/avs_hram_converter_TEST_advanced_inst.cds.lib            
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/submodules/avs_hram_converter_test_advanced_rst_controller_001.vhd"                                     -work avs_hram_converter_TEST_advanced_inst             -cdslib ./cds_libs/avs_hram_converter_TEST_advanced_inst.cds.lib            
  xmvhdl -v93 $USER_DEFINED_VHDL_COMPILE_OPTIONS $USER_DEFINED_COMPILE_OPTIONS   "$QSYS_SIMDIR/avs_hram_converter_TEST_advanced_tb/simulation/avs_hram_converter_TEST_advanced_tb.vhd"                                                                                                                                                                                                    
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  xmelab -update -access +w+r+c -namemap_mixgen +DISABLEGENCHK -relax $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval xmsim -licqueue $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
