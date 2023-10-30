--------------------------------------------------------------------------------------------------------------
BASIC SYSTEM v1
--------------------------------------------------------------------------------------------------------------
DESCRIPTION:
-- Four LEDs are turned on/off depending on the status of four switches.
-- A Nios II processor reads the status of the switches and drives the LEDs according to it.
-- On-chip RAM used as data and instruction memory.
-- A dedicated switch is employed to reset the processor.
-- An external clock of 10 MHz is provided, but the system works at 100 MHz due to an internal PLL.
--------------------------------------------------------------------------------------------------------------
MOST IMPORTANT FILES:
-- ./top_level_entity.vhd
-- ./pinout.csv
-- ./basic_system.qsys
-- ./basic_system.sopcinfo
-- ./basic_system.sdc
-- ./basic_system.qsys
-- ./myAltPll/myAltPll.qip
-- ./platform_designer/synthesis/basic_system.qip
-- ./platform_designer/testbench/mentor/msim_setup.tcl
-- ./SBT_workspace/basic_system/basic_system_main.c
-- ./SBT_workspace/basic_system/mem_init/meminit.qip
-- ./SBT_workspace/basic_system/mem_init/basic_system_OCRAM.hex
-- ./simulation/basic_system.do
-- ./output_file/basic_system.rbf
	
