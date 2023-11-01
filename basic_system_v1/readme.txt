--------------------------------------------------------------------------------------------------------------
BASIC SYSTEM v1
--------------------------------------------------------------------------------------------------------------
DESCRIPTION:
-- Four LEDs are turned on/off depending on the status of four switches
-- A Nios II processor reads the status of the switches and drives the LEDs according to it
-- On-chip RAM used as data and instruction memory
-- A dedicated switch is employed to reset the processor
-- An external clock of 10 MHz is provided, but the system works at 100 MHz due to an internal PLL
--------------------------------------------------------------------------------------------------------------
MOST IMPORTANT FILES:
-- FPGA pin assignment ------------------------- ./pinout.csv
-- design constraints files -------------------- ./basic_system.sdc
-- raw binary file of the whole project -------- ./output_file/basic_system.rbf
-- top level entity of the system -------------- ./top_level_entity.vhd
-- PLL IP file --------------------------------- ./pll/pll.qip
-- PLL HDL description file -------------------- ./pll/pll.vhd
-- platform designer system -------------------- ./basic_system.qsys
-- platform designer system hw information ----- ./basic_system.sopcinfo
-- platform designer system IP file ------------ ./platform_designer/synthesis/basic_system.qip
-- platform designer system simulation file ---- ./platform_designer/testbench/mentor/msim_setup.tcl
-- nios software (main) ------------------------ ./SBT_workspace/basic_system/basic_system_main.c
-- OCRAM initialization IP file ---------------- ./SBT_workspace/basic_system/mem_init/meminit.qip
-- OCRAM initialization file ------------------- ./SBT_workspace/basic_system/mem_init/basic_system_OCRAM.hex
-- testbench file of the whole system ---------- ./testbench/basic_system_testbench.vhd
-- simulation file of the whole system --------- ./simulation/basic_system.do


	
