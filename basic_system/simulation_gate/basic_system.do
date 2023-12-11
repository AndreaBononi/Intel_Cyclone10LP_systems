# PROJECT: basic_system
# BRIEF DESCRIPTION: simulation file (gate-level) to be launched in vsim

# --------------------------------------------------------------------------------------------------------------------

vlib work

vcom ../netlist/basic_system.vho
vcom ../testbench/basic_system_testbench.vhd

vsim -c -t 1ps work.basic_system_testbench -voptargs=+acc

add wave -position insertpoint  \
sim:/basic_system_testbench/mainClk \
sim:/basic_system_testbench/switches(7) \
sim:/basic_system_testbench/switches(6) \
sim:/basic_system_testbench/switches(5) \
sim:/basic_system_testbench/switches(4) \
sim:/basic_system_testbench/switches(3) \
sim:/basic_system_testbench/switches(2) \
sim:/basic_system_testbench/switches(1) \
sim:/basic_system_testbench/switches(0) \
sim:/basic_system_testbench/leds(3) \
sim:/basic_system_testbench/leds(2) \
sim:/basic_system_testbench/leds(1) \
sim:/basic_system_testbench/leds(0)

run 10000ns

# exit -code 0

# --------------------------------------------------------------------------------------------------------------------

