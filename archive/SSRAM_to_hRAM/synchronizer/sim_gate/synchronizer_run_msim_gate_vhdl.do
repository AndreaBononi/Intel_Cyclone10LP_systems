# AUTOMATICALLY GENERATED SECTION --------------------------------------------------------------------------------------------------------

transcript on
if ![file isdirectory vhdl_libs] {
	file mkdir vhdl_libs
}

vlib vhdl_libs/altera
vmap altera ./vhdl_libs/altera
vcom -93 -work altera {/home/andrea/intelFPGA_lite/22.1std/quartus/eda/sim_lib/altera_syn_attributes.vhd}
vcom -93 -work altera {/home/andrea/intelFPGA_lite/22.1std/quartus/eda/sim_lib/altera_standard_functions.vhd}
vcom -93 -work altera {/home/andrea/intelFPGA_lite/22.1std/quartus/eda/sim_lib/alt_dspbuilder_package.vhd}
vcom -93 -work altera {/home/andrea/intelFPGA_lite/22.1std/quartus/eda/sim_lib/altera_europa_support_lib.vhd}
vcom -93 -work altera {/home/andrea/intelFPGA_lite/22.1std/quartus/eda/sim_lib/altera_primitives_components.vhd}
vcom -93 -work altera {/home/andrea/intelFPGA_lite/22.1std/quartus/eda/sim_lib/altera_primitives.vhd}

vlib vhdl_libs/cyclone10lp
vmap cyclone10lp ./vhdl_libs/cyclone10lp
vcom -93 -work cyclone10lp {/home/andrea/intelFPGA_lite/22.1std/quartus/eda/sim_lib/cyclone10lp_atoms.vhd}
vcom -93 -work cyclone10lp {/home/andrea/intelFPGA_lite/22.1std/quartus/eda/sim_lib/cyclone10lp_components.vhd}

if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {synchronizer.vho}

# END OF AUTOMATICALLY GENERATED SECTION -----------------------------------------------------------------------------------------------



# CUSTOM SECTION -----------------------------------------------------------------------------------------------------------------------

vcom ../tb/clk_rst_generator.vhd
vcom ../tb/synchronizer_monitor.vhd
vcom ../tb/synchronizer_driver.vhd
vcom ../tb/synchronizer_testbench.vhd

vsim -c -t 1ns work.synchronizer_testbench -voptargs=+acc

add wave -position insertpoint  \
sim:/synchronizer_testbench/clk \
sim:/synchronizer_testbench/rst_n \
sim:/synchronizer_testbench/start_sim \
sim:/synchronizer_testbench/stop_sim \
sim:/synchronizer_testbench/synch_clear_n \
sim:/synchronizer_testbench/synch_busy \
sim:/synchronizer_testbench/din \
sim:/synchronizer_testbench/din_strobe \
sim:/synchronizer_testbench/synch_validout \
sim:/synchronizer_testbench/dout

run 250ns
quit -f

# END OF CUSTOM SECTION --------------------------------------------------------------------------------------------------------------

