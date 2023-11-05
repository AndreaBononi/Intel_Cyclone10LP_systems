--------------------------------------------------------------------------------------------------------------
BLOCKRAM SYSTEM v1
--------------------------------------------------------------------------------------------------------------
DESCRIPTION:
-- Four LEDs are turned on/off depending on the status of four switches
-- A Nios II processor reads the status of the switches and drives the LEDs according to it
-- Custom on-chip RAM used as both data and instruction memory
-- An external clock of 10 MHz is provided, but the system works at 100 MHz due to an internal PLL
-- A dedicated switch is employed to reset the processor and the PLL
--------------------------------------------------------------------------------------------------------------
MOST IMPORTANT FILES:
-- Quartus project ----------------------------- ./blockram_system.qpf
-- FPGA pin assignment ------------------------- ./pinout.csv
-- design constraints files -------------------- ./blockram_system.sdc
-- raw binary file of the whole project -------- ./output_file/blockram_system.rbf
-- top level entity of the system -------------- ./top_level_entity.vhd
-- PLL IP file --------------------------------- ./pll/pll.qip
-- PLL HDL description file -------------------- ./pll/pll.vhd
-- platform designer system -------------------- ./blockram_system.qsys
-- platform designer system hw information ----- ./blockram_system.sopcinfo
-- platform designer system IP file ------------ ./platform_designer/synthesis/blockram_system.qip
-- platform designer system simulation file ---- ./platform_designer/testbench/mentor/msim_setup.tcl
-- nios software (main) ------------------------ ./SBT_workspace/basic_system/blockram_system_main.c
-- OCRAM initialization IP file ---------------- ./SBT_workspace/basic_system/mem_init/meminit.qip
-- OCRAM initialization file ------------------- ./SBT_workspace/basic_system/mem_init/blockram_system_OCRAM.hex
-- testbench file of the whole system ---------- ./testbench/blockram_system_testbench.vhd
-- simulation file of the whole system --------- ./simulation/blockram_system.do
-- custom on-chip RAM IP ----------------------- ./ip/custom_OCRAM/


	
