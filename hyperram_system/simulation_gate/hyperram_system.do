vlib work

vcom ../netlist/hyperram_system.vho
vcom ../testbench/hyperram_system_testbench.vhd

vsim -c -t 1ps work.hyperram_system_testbench -voptargs=+acc

add wave -position insertpoint  \
sim:/hyperram_system_testbench/hBusRwds \
sim:/hyperram_system_testbench/hBusD \
sim:/hyperram_system_testbench/lsasBus(7) \
sim:/hyperram_system_testbench/lsasBus(6) \
sim:/hyperram_system_testbench/lsasBus(5) \
sim:/hyperram_system_testbench/lsasBus(4) \
sim:/hyperram_system_testbench/lsasBus(3) \
sim:/hyperram_system_testbench/lsasBus(2) \
sim:/hyperram_system_testbench/lsasBus(1) \
sim:/hyperram_system_testbench/lsasBus(0)

run 300ns

