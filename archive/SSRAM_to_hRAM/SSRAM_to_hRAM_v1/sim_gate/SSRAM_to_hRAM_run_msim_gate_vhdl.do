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

vcom -93 -work work {SSRAM_to_hRAM.vho}

# END OF AUTOMATICALLY GENERATED SECTION -----------------------------------------------------------------------------------------------



# CUSTOM SECTION -----------------------------------------------------------------------------------------------------------------------

vcom ../tb/clk_rst_generator.vhd
vcom ../tb/SSRAM_to_hRAM_monitor.vhd
vcom ../tb/SSRAM_to_hRAM_driver.vhd
vcom ../tb/SSRAM_to_hRAM_external_generator.vhd
vlog ../tb/s27kl0641.v
vlog ../tb/SSRAM_to_hRAM_testbench.v

vsim -c -t 1ns work.SSRAM_to_hRAM_testbench -voptargs=+acc

add wave -position insertpoint  \
sim:/SSRAM_to_hRAM_testbench/clk \
sim:/SSRAM_to_hRAM_testbench/rst_n \
sim:/SSRAM_to_hRAM_testbench/SSRAM_CS \
sim:/SSRAM_to_hRAM_testbench/SSRAM_OE \
sim:/SSRAM_to_hRAM_testbench/SSRAM_WE \
sim:/SSRAM_to_hRAM_testbench/SSRAM_address_spacing \
sim:/SSRAM_to_hRAM_testbench/SSRAM_burstcount \
sim:/SSRAM_to_hRAM_testbench/SSRAM_address \
sim:/SSRAM_to_hRAM_testbench/SSRAM_in \
sim:/SSRAM_to_hRAM_testbench/SSRAM_out \
sim:/SSRAM_to_hRAM_testbench/SSRAM_validout \
sim:/SSRAM_to_hRAM_testbench/SSRAM_busy \
sim:/SSRAM_to_hRAM_testbench/SSRAM_haltdata \
sim:/SSRAM_to_hRAM_testbench/hbus_CS_n \
sim:/SSRAM_to_hRAM_testbench/hbus_RESET_n \
sim:/SSRAM_to_hRAM_testbench/hbus_DQ \
sim:/SSRAM_to_hRAM_testbench/ext_gen/hbus_CK \
sim:/SSRAM_to_hRAM_testbench/hbus_RWDS

run 320us
# quit -f

# END OF CUSTOM SECTION --------------------------------------------------------------------------------------------------------------

