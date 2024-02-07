## Generated SDC file "hyperram_system_post.sdc"

## Copyright (C) 2023  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and any partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details, at
## https://fpgasoftware.intel.com/eula.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

## DATE    "Wed Feb  7 13:08:33 2024"

##
## DEVICE  "10CL025YE144C8G"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {altera_reserved_tck} -period 100.000 -waveform { 0.000 50.000 } [get_ports {altera_reserved_tck}]
create_clock -name {mainClk} -period 100.000 -waveform { 0.000 50.000 } [get_ports {mainClk}]
create_clock -name {rwdsgen} -period 20.000 -waveform { 0.000 10.000 } [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_EU:EU|t_flipflop:rwdsgen|dummy_out}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {clk_50MHz} -source [get_pins {pll_inst|altpll_component|auto_generated|pll1|inclk[0]}] -duty_cycle 50/1 -multiply_by 5 -master_clock {mainClk} [get_pins {pll_inst|altpll_component|auto_generated|pll1|clk[0]}] 
create_generated_clock -name {clk_10kHz} -source [get_pins {pll_inst|altpll_component|auto_generated|pll1|inclk[0]}] -duty_cycle 50/1 -multiply_by 1 -divide_by 1000 -master_clock {mainClk} [get_pins {pll_inst|altpll_component|auto_generated|pll1|clk[1]}] 
create_generated_clock -name {shifted_clock} -source [get_pins -compatibility_mode {*EU|clk_shifter|altpll_component|auto_generated|pll1|inclk[0]}] -duty_cycle 50/1 -multiply_by 1 -phase 90/1 -master_clock {clk_50MHz} [get_pins -compatibility_mode {*EU|clk_shifter|altpll_component|auto_generated|pll1|clk[0]}] 
create_generated_clock -name {clk_x8} -source [get_pins -compatibility_mode {*EU|pll_x8_inst|altpll_component|auto_generated|pll1|inclk[0]}] -duty_cycle 50/1 -multiply_by 8 -master_clock {clk_50MHz} [get_pins -compatibility_mode {*EU|pll_x8_inst|altpll_component|auto_generated|pll1|clk[0]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {clk_x8}] -rise_to [get_clocks {clk_x8}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk_x8}] -fall_to [get_clocks {clk_x8}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk_x8}] -rise_to [get_clocks {clk_x8}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk_x8}] -fall_to [get_clocks {clk_x8}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {shifted_clock}] -rise_to [get_clocks {shifted_clock}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {shifted_clock}] -fall_to [get_clocks {shifted_clock}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {shifted_clock}] -rise_to [get_clocks {mainClk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {shifted_clock}] -rise_to [get_clocks {mainClk}] -hold 0.080  
set_clock_uncertainty -rise_from [get_clocks {shifted_clock}] -fall_to [get_clocks {mainClk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {shifted_clock}] -fall_to [get_clocks {mainClk}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {shifted_clock}] -rise_to [get_clocks {shifted_clock}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {shifted_clock}] -fall_to [get_clocks {shifted_clock}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {shifted_clock}] -rise_to [get_clocks {mainClk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {shifted_clock}] -rise_to [get_clocks {mainClk}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {shifted_clock}] -fall_to [get_clocks {mainClk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {shifted_clock}] -fall_to [get_clocks {mainClk}] -hold 0.080  
set_clock_uncertainty -rise_from [get_clocks {rwdsgen}] -rise_to [get_clocks {rwdsgen}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {rwdsgen}] -fall_to [get_clocks {rwdsgen}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {rwdsgen}] -rise_to [get_clocks {clk_50MHz}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {rwdsgen}] -rise_to [get_clocks {clk_50MHz}] -hold 0.110  
set_clock_uncertainty -rise_from [get_clocks {rwdsgen}] -fall_to [get_clocks {clk_50MHz}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {rwdsgen}] -fall_to [get_clocks {clk_50MHz}] -hold 0.110  
set_clock_uncertainty -fall_from [get_clocks {rwdsgen}] -rise_to [get_clocks {rwdsgen}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {rwdsgen}] -fall_to [get_clocks {rwdsgen}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {rwdsgen}] -rise_to [get_clocks {clk_50MHz}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {rwdsgen}] -rise_to [get_clocks {clk_50MHz}] -hold 0.110  
set_clock_uncertainty -fall_from [get_clocks {rwdsgen}] -fall_to [get_clocks {clk_50MHz}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {rwdsgen}] -fall_to [get_clocks {clk_50MHz}] -hold 0.110  
set_clock_uncertainty -rise_from [get_clocks {clk_10kHz}] -rise_to [get_clocks {clk_10kHz}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk_10kHz}] -fall_to [get_clocks {clk_10kHz}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk_10kHz}] -rise_to [get_clocks {clk_50MHz}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk_10kHz}] -fall_to [get_clocks {clk_50MHz}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk_10kHz}] -rise_to [get_clocks {clk_10kHz}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk_10kHz}] -fall_to [get_clocks {clk_10kHz}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk_10kHz}] -rise_to [get_clocks {clk_50MHz}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk_10kHz}] -fall_to [get_clocks {clk_50MHz}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk_50MHz}] -rise_to [get_clocks {clk_x8}] -setup 0.120  
set_clock_uncertainty -rise_from [get_clocks {clk_50MHz}] -rise_to [get_clocks {clk_x8}] -hold 0.150  
set_clock_uncertainty -rise_from [get_clocks {clk_50MHz}] -fall_to [get_clocks {clk_x8}] -setup 0.120  
set_clock_uncertainty -rise_from [get_clocks {clk_50MHz}] -fall_to [get_clocks {clk_x8}] -hold 0.150  
set_clock_uncertainty -rise_from [get_clocks {clk_50MHz}] -rise_to [get_clocks {shifted_clock}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk_50MHz}] -fall_to [get_clocks {shifted_clock}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk_50MHz}] -rise_to [get_clocks {rwdsgen}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {clk_50MHz}] -rise_to [get_clocks {rwdsgen}] -hold 0.080  
set_clock_uncertainty -rise_from [get_clocks {clk_50MHz}] -fall_to [get_clocks {rwdsgen}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {clk_50MHz}] -fall_to [get_clocks {rwdsgen}] -hold 0.080  
set_clock_uncertainty -rise_from [get_clocks {clk_50MHz}] -rise_to [get_clocks {clk_50MHz}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk_50MHz}] -fall_to [get_clocks {clk_50MHz}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clk_50MHz}] -rise_to [get_clocks {mainClk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {clk_50MHz}] -rise_to [get_clocks {mainClk}] -hold 0.080  
set_clock_uncertainty -rise_from [get_clocks {clk_50MHz}] -fall_to [get_clocks {mainClk}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {clk_50MHz}] -fall_to [get_clocks {mainClk}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {clk_50MHz}] -rise_to [get_clocks {clk_x8}] -setup 0.120  
set_clock_uncertainty -fall_from [get_clocks {clk_50MHz}] -rise_to [get_clocks {clk_x8}] -hold 0.150  
set_clock_uncertainty -fall_from [get_clocks {clk_50MHz}] -fall_to [get_clocks {clk_x8}] -setup 0.120  
set_clock_uncertainty -fall_from [get_clocks {clk_50MHz}] -fall_to [get_clocks {clk_x8}] -hold 0.150  
set_clock_uncertainty -fall_from [get_clocks {clk_50MHz}] -rise_to [get_clocks {shifted_clock}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk_50MHz}] -fall_to [get_clocks {shifted_clock}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk_50MHz}] -rise_to [get_clocks {rwdsgen}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {clk_50MHz}] -rise_to [get_clocks {rwdsgen}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {clk_50MHz}] -fall_to [get_clocks {rwdsgen}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {clk_50MHz}] -fall_to [get_clocks {rwdsgen}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {clk_50MHz}] -rise_to [get_clocks {clk_50MHz}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk_50MHz}] -fall_to [get_clocks {clk_50MHz}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clk_50MHz}] -rise_to [get_clocks {mainClk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {clk_50MHz}] -rise_to [get_clocks {mainClk}] -hold 0.080  
set_clock_uncertainty -fall_from [get_clocks {clk_50MHz}] -fall_to [get_clocks {mainClk}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {clk_50MHz}] -fall_to [get_clocks {mainClk}] -hold 0.080  
set_clock_uncertainty -rise_from [get_clocks {mainClk}] -rise_to [get_clocks {clk_x8}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {mainClk}] -rise_to [get_clocks {clk_x8}] -hold 0.140  
set_clock_uncertainty -rise_from [get_clocks {mainClk}] -fall_to [get_clocks {clk_x8}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {mainClk}] -fall_to [get_clocks {clk_x8}] -hold 0.140  
set_clock_uncertainty -rise_from [get_clocks {mainClk}] -rise_to [get_clocks {clk_50MHz}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {mainClk}] -rise_to [get_clocks {clk_50MHz}] -hold 0.100  
set_clock_uncertainty -rise_from [get_clocks {mainClk}] -fall_to [get_clocks {clk_50MHz}] -setup 0.080  
set_clock_uncertainty -rise_from [get_clocks {mainClk}] -fall_to [get_clocks {clk_50MHz}] -hold 0.100  
set_clock_uncertainty -rise_from [get_clocks {mainClk}] -rise_to [get_clocks {mainClk}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {mainClk}] -fall_to [get_clocks {mainClk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {mainClk}] -rise_to [get_clocks {clk_x8}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {mainClk}] -rise_to [get_clocks {clk_x8}] -hold 0.140  
set_clock_uncertainty -fall_from [get_clocks {mainClk}] -fall_to [get_clocks {clk_x8}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {mainClk}] -fall_to [get_clocks {clk_x8}] -hold 0.140  
set_clock_uncertainty -fall_from [get_clocks {mainClk}] -rise_to [get_clocks {clk_50MHz}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {mainClk}] -rise_to [get_clocks {clk_50MHz}] -hold 0.100  
set_clock_uncertainty -fall_from [get_clocks {mainClk}] -fall_to [get_clocks {clk_50MHz}] -setup 0.080  
set_clock_uncertainty -fall_from [get_clocks {mainClk}] -fall_to [get_clocks {clk_50MHz}] -hold 0.100  
set_clock_uncertainty -fall_from [get_clocks {mainClk}] -rise_to [get_clocks {mainClk}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {mainClk}] -fall_to [get_clocks {mainClk}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {altera_reserved_tck}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {altera_reserved_tdi}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {altera_reserved_tms}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusD[0]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusD[1]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusD[2]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusD[3]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusD[4]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusD[5]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusD[6]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusD[7]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusRwds}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[0]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[1]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[2]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[3]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[4]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[5]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[6]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[7]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[8]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[9]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[10]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[11]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[12]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[13]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[14]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[15]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[16]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[17]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[18]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[19]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[20]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[21]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[22]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[23]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[24]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[25]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[26]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[27]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[28]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[29]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[30]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[31]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {mainClk}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {mcuI2cScl}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {mcuI2cSda}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {mcuSpiCk}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {mcuSpiCs}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {mcuSpiIo[0]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {mcuSpiIo[1]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {mcuSpiIo[2]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {mcuSpiIo[3]}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {mcuUartTx}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {reset}]
set_input_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {slowClk}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {altera_reserved_tdo}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusCk}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusCs}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusD[0]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusD[1]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusD[2]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusD[3]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusD[4]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusD[5]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusD[6]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusD[7]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusRst}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusRwds}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {hBusnCk}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {leds[0]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {leds[1]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {leds[2]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {leds[3]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[0]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[1]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[2]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[3]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[4]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[5]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[6]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[7]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[8]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[9]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[10]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[11]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[12]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[13]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[14]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[15]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[16]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[17]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[18]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[19]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[20]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[21]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[22]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[23]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[24]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[25]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[26]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[27]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[28]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[29]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[30]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {lsasBus[31]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {mcuI2cSda}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {mcuSpiIo[0]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {mcuSpiIo[1]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {mcuSpiIo[2]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {mcuSpiIo[3]}]
set_output_delay -add_delay  -clock [get_clocks {mainClk}]  1.000 [get_ports {mcuUartRx}]


#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 
set_clock_groups -asynchronous -group [get_clocks {clk_x8}] -group [get_clocks {rwdsgen}] 


#**************************************************************
# Set False Path
#**************************************************************

set_false_path  -from  [get_clocks {mainClk}]  -to  [get_clocks {clk_x8}]
set_false_path -to [get_keepers {*altera_std_synchronizer:*|din_s1}]
set_false_path -from [get_keepers {altera_reserved_tdi}] -to [get_keepers {pzdyqx*}]
set_false_path -to [get_pins -nocase -compatibility_mode {*|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain*|clrn}]
set_false_path -from [get_keepers {*avs_hram_converter_TEST_advanced_nios2_cpu:*|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci_break:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci_break|break_readreg*}] -to [get_keepers {*avs_hram_converter_TEST_advanced_nios2_cpu:*|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci|avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_wrapper:the_avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_wrapper|avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_tck:the_avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_tck|*sr*}]
set_false_path -from [get_keepers {*avs_hram_converter_TEST_advanced_nios2_cpu:*|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci_debug:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci_debug|*resetlatch}] -to [get_keepers {*avs_hram_converter_TEST_advanced_nios2_cpu:*|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci|avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_wrapper:the_avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_wrapper|avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_tck:the_avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_tck|*sr[33]}]
set_false_path -from [get_keepers {*avs_hram_converter_TEST_advanced_nios2_cpu:*|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci_debug:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci_debug|monitor_ready}] -to [get_keepers {*avs_hram_converter_TEST_advanced_nios2_cpu:*|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci|avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_wrapper:the_avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_wrapper|avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_tck:the_avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_tck|*sr[0]}]
set_false_path -from [get_keepers {*avs_hram_converter_TEST_advanced_nios2_cpu:*|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci_debug:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci_debug|monitor_error}] -to [get_keepers {*avs_hram_converter_TEST_advanced_nios2_cpu:*|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci|avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_wrapper:the_avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_wrapper|avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_tck:the_avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_tck|*sr[34]}]
set_false_path -from [get_keepers {*avs_hram_converter_TEST_advanced_nios2_cpu:*|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_ocimem:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_ocimem|*MonDReg*}] -to [get_keepers {*avs_hram_converter_TEST_advanced_nios2_cpu:*|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci|avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_wrapper:the_avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_wrapper|avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_tck:the_avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_tck|*sr*}]
set_false_path -from [get_keepers {*avs_hram_converter_TEST_advanced_nios2_cpu:*|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci|avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_wrapper:the_avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_wrapper|avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_tck:the_avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_tck|*sr*}] -to [get_keepers {*avs_hram_converter_TEST_advanced_nios2_cpu:*|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci|avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_wrapper:the_avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_wrapper|avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_sysclk:the_avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_sysclk|*jdo*}]
set_false_path -from [get_keepers {sld_hub:*|irf_reg*}] -to [get_keepers {*avs_hram_converter_TEST_advanced_nios2_cpu:*|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci|avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_wrapper:the_avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_wrapper|avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_sysclk:the_avs_hram_converter_TEST_advanced_nios2_cpu_debug_slave_sysclk|ir*}]
set_false_path -from [get_keepers {sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1]}] -to [get_keepers {*avs_hram_converter_TEST_advanced_nios2_cpu:*|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci|avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci_debug:the_avs_hram_converter_TEST_advanced_nios2_cpu_nios2_oci_debug|monitor_go}]
set_false_path -from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_0}] -to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.reset}]
set_false_path -from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_0}] -to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.idle_intra}]
set_false_path -from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_0}] -to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.lsb_tx}]
set_false_path -from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_0}] -to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.msb_tx}]
set_false_path -from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_1}] -to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.reset}]
set_false_path -from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_1}] -to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.idle_intra}]
set_false_path -from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_1}] -to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.lsb_tx}]
set_false_path -from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_1}] -to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.msb_tx}]
set_false_path -from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_2}] -to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.reset}]
set_false_path -from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_2}] -to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.idle_intra}]
set_false_path -from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_2}] -to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.lsb_tx}]
set_false_path -from [get_registers {*avs_hram_mainconv_CU:CU|present_state.read_wait_2}] -to [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|present_state.msb_tx}]


#**************************************************************
# Set Multicycle Path
#**************************************************************

set_multicycle_path -setup -end -from [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|system_clear_n}] -to [all_registers] 2
set_multicycle_path -hold -end -from [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_CU:CU|system_clear_n}] -to [all_registers] 2
set_multicycle_path -setup -end -from [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_EU:EU|reg:msb|dout[*]}] -to [all_registers] 2
set_multicycle_path -hold -end -from [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_EU:EU|reg:msb|dout[*]}] -to [all_registers] 2
set_multicycle_path -setup -end -from [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_EU:EU|reg:lsb|dout[*]}] -to [all_registers] 2
set_multicycle_path -hold -end -from [get_registers {*avs_hram_mainconv_EU:EU|DDR_to_SDR_converter:readdata_converter|DDR_to_SDR_converter_EU:EU|reg:lsb|dout[*]}] -to [all_registers] 2


#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Disable Timing
#**************************************************************

set_disable_timing -from * -to * [get_cells -hierarchical {QXXQ6833_0}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_0}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_1}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_2}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_3}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_4}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_5}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_6}]
set_disable_timing -from * -to * [get_cells -hierarchical {JEQQ5299_7}]
set_disable_timing -from * -to * [get_cells -hierarchical {BITP7563_0}]
