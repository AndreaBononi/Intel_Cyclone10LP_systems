-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "10/11/2023 11:55:48"

-- 
-- Device: Altera 10CL025YE144C8G Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SSRAM_to_hRAM IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic := '0';
	SSRAM_CS : IN std_logic := '0';
	SSRAM_OE : IN std_logic := '0';
	SSRAM_WE : IN std_logic := '0';
	SSRAM_address_spacing : IN std_logic := '0';
	SSRAM_burstcount : IN std_logic_vector(10 DOWNTO 0);
	SSRAM_address : IN std_logic_vector(31 DOWNTO 0);
	SSRAM_in : IN std_logic_vector(15 DOWNTO 0);
	SSRAM_out : BUFFER std_logic_vector(15 DOWNTO 0);
	SSRAM_validout : BUFFER std_logic;
	SSRAM_busy : BUFFER std_logic;
	SSRAM_haltdata : BUFFER std_logic;
	hbus_CS_n : BUFFER std_logic;
	hbus_RESET_n : BUFFER std_logic;
	hbus_DQ : BUFFER std_logic_vector(7 DOWNTO 0);
	hCK_edgeal : BUFFER std_logic;
	RWDS_360 : IN std_logic := '0';
	RWDS_90 : IN std_logic := '0';
	RWDS : IN std_logic := '0';
	drive_RWDS_low : BUFFER std_logic
	);
END SSRAM_to_hRAM;

-- Design Ports Information
-- hbus_DQ[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hbus_DQ[1]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hbus_DQ[2]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hbus_DQ[3]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hbus_DQ[4]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hbus_DQ[5]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hbus_DQ[6]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hbus_DQ[7]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSRAM_address[22]	=>  Location: LCCOMB_X14_Y10_N0,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[23]	=>  Location: LCCOMB_X7_Y30_N0,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[24]	=>  Location: LCCOMB_X49_Y3_N0,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[25]	=>  Location: LCCOMB_X6_Y13_N0,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[26]	=>  Location: LCCOMB_X1_Y32_N0,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[27]	=>  Location: LCCOMB_X40_Y12_N0,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[28]	=>  Location: LCCOMB_X24_Y18_N0,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[29]	=>  Location: LCCOMB_X37_Y6_N0,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[30]	=>  Location: LCCOMB_X30_Y6_N0,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[31]	=>  Location: LCCOMB_X38_Y15_N0,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_out[0]	=>  Location: LCCOMB_X7_Y28_N0,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_out[1]	=>  Location: LCCOMB_X8_Y28_N0,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_out[2]	=>  Location: LCCOMB_X7_Y28_N2,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_out[3]	=>  Location: LCCOMB_X7_Y28_N4,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_out[4]	=>  Location: LCCOMB_X7_Y28_N6,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_out[5]	=>  Location: LCCOMB_X7_Y28_N8,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_out[6]	=>  Location: LCCOMB_X7_Y28_N10,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_out[7]	=>  Location: LCCOMB_X7_Y28_N12,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_out[8]	=>  Location: LCCOMB_X7_Y28_N14,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_out[9]	=>  Location: LCCOMB_X7_Y28_N16,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_out[10]	=>  Location: LCCOMB_X7_Y28_N18,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_out[11]	=>  Location: LCCOMB_X7_Y28_N20,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_out[12]	=>  Location: LCCOMB_X7_Y28_N22,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_out[13]	=>  Location: LCCOMB_X7_Y28_N24,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_out[14]	=>  Location: LCCOMB_X7_Y28_N26,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_out[15]	=>  Location: LCCOMB_X7_Y28_N28,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_validout	=>  Location: LCCOMB_X8_Y28_N2,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_busy	=>  Location: LCCOMB_X8_Y28_N4,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_haltdata	=>  Location: LCCOMB_X5_Y26_N12,	 I/O Standard: None,	 Current Strength: Default
-- hbus_CS_n	=>  Location: LCCOMB_X8_Y28_N6,	 I/O Standard: None,	 Current Strength: Default
-- hbus_RESET_n	=>  Location: LCCOMB_X7_Y28_N30,	 I/O Standard: None,	 Current Strength: Default
-- hCK_edgeal	=>  Location: LCCOMB_X8_Y28_N8,	 I/O Standard: None,	 Current Strength: Default
-- drive_RWDS_low	=>  Location: LCCOMB_X7_Y23_N0,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_OE	=>  Location: LCCOMB_X5_Y23_N24,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address_spacing	=>  Location: LCCOMB_X5_Y23_N2,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[0]	=>  Location: LCCOMB_X3_Y23_N24,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_in[15]	=>  Location: LCCOMB_X2_Y24_N0,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_WE	=>  Location: LCCOMB_X3_Y25_N0,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_CS	=>  Location: LCCOMB_X5_Y23_N28,	 I/O Standard: None,	 Current Strength: Default
-- rst_n	=>  Location: LCCOMB_X8_Y24_N0,	 I/O Standard: None,	 Current Strength: Default
-- RWDS	=>  Location: LCCOMB_X6_Y22_N0,	 I/O Standard: None,	 Current Strength: Default
-- RWDS_360	=>  Location: LCCOMB_X1_Y16_N16,	 I/O Standard: None,	 Current Strength: Default
-- RWDS_90	=>  Location: LCCOMB_X1_Y16_N14,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_burstcount[0]	=>  Location: LCCOMB_X3_Y25_N14,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_burstcount[1]	=>  Location: LCCOMB_X3_Y22_N0,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_burstcount[2]	=>  Location: LCCOMB_X1_Y22_N0,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_burstcount[3]	=>  Location: LCCOMB_X2_Y26_N20,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_burstcount[4]	=>  Location: LCCOMB_X1_Y22_N6,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_burstcount[5]	=>  Location: LCCOMB_X5_Y26_N26,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_burstcount[6]	=>  Location: LCCOMB_X5_Y26_N8,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_burstcount[7]	=>  Location: LCCOMB_X5_Y26_N22,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_burstcount[8]	=>  Location: LCCOMB_X5_Y26_N24,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_burstcount[9]	=>  Location: LCCOMB_X5_Y26_N2,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_burstcount[10]	=>  Location: LCCOMB_X5_Y26_N16,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_in[8]	=>  Location: LCCOMB_X5_Y26_N14,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_in[0]	=>  Location: LCCOMB_X5_Y26_N4,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_in[9]	=>  Location: LCCOMB_X5_Y26_N30,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_in[1]	=>  Location: LCCOMB_X5_Y26_N20,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_in[10]	=>  Location: LCCOMB_X5_Y26_N10,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_in[2]	=>  Location: LCCOMB_X5_Y26_N28,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_in[11]	=>  Location: LCCOMB_X9_Y27_N8,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_in[3]	=>  Location: LCCOMB_X5_Y26_N18,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_in[12]	=>  Location: LCCOMB_X5_Y26_N0,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_in[4]	=>  Location: LCCOMB_X3_Y25_N4,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_in[13]	=>  Location: LCCOMB_X3_Y25_N6,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_in[5]	=>  Location: LCCOMB_X4_Y24_N20,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_in[14]	=>  Location: LCCOMB_X4_Y24_N6,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_in[6]	=>  Location: LCCOMB_X4_Y24_N8,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_in[7]	=>  Location: LCCOMB_X4_Y24_N10,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[11]	=>  Location: LCCOMB_X4_Y24_N4,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[19]	=>  Location: LCCOMB_X4_Y24_N26,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[3]	=>  Location: LCCOMB_X4_Y24_N16,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[12]	=>  Location: LCCOMB_X4_Y24_N30,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[20]	=>  Location: LCCOMB_X4_Y24_N24,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[4]	=>  Location: LCCOMB_X4_Y24_N14,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[1]	=>  Location: LCCOMB_X4_Y24_N12,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[13]	=>  Location: LCCOMB_X4_Y24_N18,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[21]	=>  Location: LCCOMB_X5_Y26_N6,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[5]	=>  Location: LCCOMB_X4_Y24_N28,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[2]	=>  Location: LCCOMB_X4_Y24_N22,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[14]	=>  Location: LCCOMB_X5_Y23_N30,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[6]	=>  Location: LCCOMB_X5_Y23_N4,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[15]	=>  Location: LCCOMB_X5_Y23_N26,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[7]	=>  Location: LCCOMB_X5_Y23_N12,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[16]	=>  Location: LCCOMB_X5_Y23_N14,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[8]	=>  Location: LCCOMB_X5_Y23_N8,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[17]	=>  Location: LCCOMB_X5_Y23_N10,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[9]	=>  Location: LCCOMB_X5_Y23_N0,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[18]	=>  Location: LCCOMB_X5_Y23_N6,	 I/O Standard: None,	 Current Strength: Default
-- SSRAM_address[10]	=>  Location: LCCOMB_X4_Y24_N0,	 I/O Standard: None,	 Current Strength: Default


ARCHITECTURE structure OF SSRAM_to_hRAM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_SSRAM_CS : std_logic;
SIGNAL ww_SSRAM_OE : std_logic;
SIGNAL ww_SSRAM_WE : std_logic;
SIGNAL ww_SSRAM_address_spacing : std_logic;
SIGNAL ww_SSRAM_burstcount : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_SSRAM_address : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_SSRAM_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SSRAM_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SSRAM_validout : std_logic;
SIGNAL ww_SSRAM_busy : std_logic;
SIGNAL ww_SSRAM_haltdata : std_logic;
SIGNAL ww_hbus_CS_n : std_logic;
SIGNAL ww_hbus_RESET_n : std_logic;
SIGNAL ww_hbus_DQ : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hCK_edgeal : std_logic;
SIGNAL ww_RWDS_360 : std_logic;
SIGNAL ww_RWDS_90 : std_logic;
SIGNAL ww_RWDS : std_logic;
SIGNAL ww_drive_RWDS_low : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RWDS_360~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RWDS_90~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hbus_DQ[0]~input_o\ : std_logic;
SIGNAL \hbus_DQ[1]~input_o\ : std_logic;
SIGNAL \hbus_DQ[2]~input_o\ : std_logic;
SIGNAL \hbus_DQ[3]~input_o\ : std_logic;
SIGNAL \hbus_DQ[4]~input_o\ : std_logic;
SIGNAL \hbus_DQ[5]~input_o\ : std_logic;
SIGNAL \hbus_DQ[6]~input_o\ : std_logic;
SIGNAL \hbus_DQ[7]~input_o\ : std_logic;
SIGNAL \SSRAM_address[22]~input0\ : std_logic;
SIGNAL \SSRAM_address[23]~input0\ : std_logic;
SIGNAL \SSRAM_address[24]~input0\ : std_logic;
SIGNAL \SSRAM_address[25]~input0\ : std_logic;
SIGNAL \SSRAM_address[26]~input0\ : std_logic;
SIGNAL \SSRAM_address[27]~input0\ : std_logic;
SIGNAL \SSRAM_address[28]~input0\ : std_logic;
SIGNAL \SSRAM_address[29]~input0\ : std_logic;
SIGNAL \SSRAM_address[30]~input0\ : std_logic;
SIGNAL \SSRAM_address[31]~input0\ : std_logic;
SIGNAL \hbus_DQ[0]~output_o\ : std_logic;
SIGNAL \hbus_DQ[1]~output_o\ : std_logic;
SIGNAL \hbus_DQ[2]~output_o\ : std_logic;
SIGNAL \hbus_DQ[3]~output_o\ : std_logic;
SIGNAL \hbus_DQ[4]~output_o\ : std_logic;
SIGNAL \hbus_DQ[5]~output_o\ : std_logic;
SIGNAL \hbus_DQ[6]~output_o\ : std_logic;
SIGNAL \hbus_DQ[7]~output_o\ : std_logic;
SIGNAL \SSRAM_out[0]~output_o\ : std_logic;
SIGNAL \SSRAM_out[1]~output_o\ : std_logic;
SIGNAL \SSRAM_out[2]~output_o\ : std_logic;
SIGNAL \SSRAM_out[3]~output_o\ : std_logic;
SIGNAL \SSRAM_out[4]~output_o\ : std_logic;
SIGNAL \SSRAM_out[5]~output_o\ : std_logic;
SIGNAL \SSRAM_out[6]~output_o\ : std_logic;
SIGNAL \SSRAM_out[7]~output_o\ : std_logic;
SIGNAL \SSRAM_out[8]~output_o\ : std_logic;
SIGNAL \SSRAM_out[9]~output_o\ : std_logic;
SIGNAL \SSRAM_out[10]~output_o\ : std_logic;
SIGNAL \SSRAM_out[11]~output_o\ : std_logic;
SIGNAL \SSRAM_out[12]~output_o\ : std_logic;
SIGNAL \SSRAM_out[13]~output_o\ : std_logic;
SIGNAL \SSRAM_out[14]~output_o\ : std_logic;
SIGNAL \SSRAM_out[15]~output_o\ : std_logic;
SIGNAL \SSRAM_validout~output_o\ : std_logic;
SIGNAL \SSRAM_busy~output_o\ : std_logic;
SIGNAL \SSRAM_haltdata~output_o\ : std_logic;
SIGNAL \hbus_CS_n~output_o\ : std_logic;
SIGNAL \hbus_RESET_n~output_o\ : std_logic;
SIGNAL \hCK_edgeal~output_o\ : std_logic;
SIGNAL \drive_RWDS_low~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \CU|present_state.reset~feeder_combout\ : std_logic;
SIGNAL \rst_n~input0\ : std_logic;
SIGNAL \CU|present_state.reset~q\ : std_logic;
SIGNAL \CU|present_state.CA_writeconfig_2~q\ : std_logic;
SIGNAL \CU|present_state.CA_writeconfig_end~q\ : std_logic;
SIGNAL \CU|present_state.writeconfig~q\ : std_logic;
SIGNAL \SSRAM_WE~input0\ : std_logic;
SIGNAL \SSRAM_CS~input0\ : std_logic;
SIGNAL \SSRAM_OE~input0\ : std_logic;
SIGNAL \SSRAM_address_spacing~input0\ : std_logic;
SIGNAL \SSRAM_in[15]~input0\ : std_logic;
SIGNAL \SSRAM_address[0]~input0\ : std_logic;
SIGNAL \EU|dpd~combout\ : std_logic;
SIGNAL \CU|Selector2~2_combout\ : std_logic;
SIGNAL \CU|Selector2~3_combout\ : std_logic;
SIGNAL \EU|op_tracker|dff_out~feeder_combout\ : std_logic;
SIGNAL \EU|op_tracker|dff_out~q\ : std_logic;
SIGNAL \CU|next_state.readconfig_init~0_combout\ : std_logic;
SIGNAL \CU|next_state.readconfig_init~1_combout\ : std_logic;
SIGNAL \CU|present_state.readconfig_init~q\ : std_logic;
SIGNAL \CU|next_state.readmem_init~0_combout\ : std_logic;
SIGNAL \CU|present_state.readmem_init~q\ : std_logic;
SIGNAL \CU|Selector8~0_combout\ : std_logic;
SIGNAL \CU|next_state.writemem_init~0_combout\ : std_logic;
SIGNAL \CU|present_state.writemem_init~q\ : std_logic;
SIGNAL \CU|WideOr4~0_combout\ : std_logic;
SIGNAL \CU|present_state.CA_init~q\ : std_logic;
SIGNAL \CU|present_state.CA1~feeder_combout\ : std_logic;
SIGNAL \CU|present_state.CA1~q\ : std_logic;
SIGNAL \CU|present_state.CA2~feeder_combout\ : std_logic;
SIGNAL \CU|present_state.CA2~q\ : std_logic;
SIGNAL \CU|present_state.CA_end~feeder_combout\ : std_logic;
SIGNAL \CU|present_state.CA_end~q\ : std_logic;
SIGNAL \CU|Selector8~1_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|entry_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|entry_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_tim|tim_20~3_combout\ : std_logic;
SIGNAL \CU|Selector8~2_combout\ : std_logic;
SIGNAL \CU|present_state.dummycmd~q\ : std_logic;
SIGNAL \CU|next_state.dummycmd_end~0_combout\ : std_logic;
SIGNAL \CU|present_state.dummycmd_end~q\ : std_logic;
SIGNAL \CU|Selector9~0_combout\ : std_logic;
SIGNAL \CU|present_state.wait_dpd_out~q\ : std_logic;
SIGNAL \CU|WideOr14~0_combout\ : std_logic;
SIGNAL \CU|WideOr14~combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \RWDS~input0\ : std_logic;
SIGNAL \EU|rwds_tracker|dff_out~0_combout\ : std_logic;
SIGNAL \EU|rwds_tracker|dff_out~q\ : std_logic;
SIGNAL \CU|next_state~0_combout\ : std_logic;
SIGNAL \CU|next_state~1_combout\ : std_logic;
SIGNAL \CU|Selector5~0_combout\ : std_logic;
SIGNAL \CU|present_state.writemem_wait~q\ : std_logic;
SIGNAL \CU|WideOr14~1_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|tgl_in[3]~0_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:7:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:7:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:8:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:8:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_tim|tim_15000~0_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:10:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:10:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:12:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:12:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:13:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:13:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_tim|tim_15000~1_combout\ : std_logic;
SIGNAL \EU|deadline_tim|tim_1000~0_combout\ : std_logic;
SIGNAL \EU|deadline_tim|tim_1000~1_combout\ : std_logic;
SIGNAL \EU|deadline_tim|tim_15000~2_combout\ : std_logic;
SIGNAL \CU|Selector0~0_combout\ : std_logic;
SIGNAL \CU|present_state.reset_exit~q\ : std_logic;
SIGNAL \CU|Selector2~0_combout\ : std_logic;
SIGNAL \CU|next_state.writemem_DQ_init~0_combout\ : std_logic;
SIGNAL \CU|present_state.writemem_DQ_init~q\ : std_logic;
SIGNAL \CU|next_state.writemem_DQ~0_combout\ : std_logic;
SIGNAL \CU|present_state.writemem_DQ~q\ : std_logic;
SIGNAL \CU|Selector6~0_combout\ : std_logic;
SIGNAL \CU|present_state.writemem_DQ_end~q\ : std_logic;
SIGNAL \CU|synch_clear_n~0_combout\ : std_logic;
SIGNAL \EU|snc|CU|present_state.reset~feeder_combout\ : std_logic;
SIGNAL \EU|snc|CU|present_state.reset~q\ : std_logic;
SIGNAL \RWDS_360~input0\ : std_logic;
SIGNAL \RWDS_360~clkctrl_outclk\ : std_logic;
SIGNAL \EU|snc|CU|WideOr3~0_combout\ : std_logic;
SIGNAL \EU|snc|CU|WideOr4~0_combout\ : std_logic;
SIGNAL \CU|WideOr11~2_combout\ : std_logic;
SIGNAL \EU|snc|CU|present_state~16_combout\ : std_logic;
SIGNAL \EU|snc|CU|present_state.idle_disabled~q\ : std_logic;
SIGNAL \EU|snc|CU|present_state~14_combout\ : std_logic;
SIGNAL \EU|snc|CU|present_state~15_combout\ : std_logic;
SIGNAL \EU|snc|CU|present_state.idle~feeder_combout\ : std_logic;
SIGNAL \EU|snc|CU|present_state.idle~q\ : std_logic;
SIGNAL \EU|snc|EU|synchronizer|sr_out~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|synchronizer|sr_out~q\ : std_logic;
SIGNAL \EU|snc|CU|present_state~18_combout\ : std_logic;
SIGNAL \EU|snc|CU|present_state.reception_init~q\ : std_logic;
SIGNAL \EU|snc|EU|data_counter|entry_tff|dummy_out~2_combout\ : std_logic;
SIGNAL \EU|snc|EU|data_counter|entry_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:3:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:4:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:6:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:7:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:9:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:9:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \SSRAM_burstcount[8]~input0\ : std_logic;
SIGNAL \EU|burstcnt|reg_out[8]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_burstcount[9]~input0\ : std_logic;
SIGNAL \EU|burstcnt|reg_out[9]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_cmp|equal~5_combout\ : std_logic;
SIGNAL \SSRAM_burstcount[3]~input0\ : std_logic;
SIGNAL \EU|burstcnt|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_burstcount[2]~input0\ : std_logic;
SIGNAL \EU|burstcnt|reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_cmp|equal~1_combout\ : std_logic;
SIGNAL \SSRAM_burstcount[4]~input0\ : std_logic;
SIGNAL \EU|burstcnt|reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_burstcount[5]~input0\ : std_logic;
SIGNAL \EU|burstcnt|reg_out[5]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen|reg_out[5]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_cmp|equal~2_combout\ : std_logic;
SIGNAL \SSRAM_burstcount[0]~input0\ : std_logic;
SIGNAL \EU|burstcnt|reg_out[0]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen|reg_out[0]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_burstcount[1]~input0\ : std_logic;
SIGNAL \EU|burstcnt|reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_cmp|equal~0_combout\ : std_logic;
SIGNAL \SSRAM_burstcount[7]~input0\ : std_logic;
SIGNAL \EU|burstcnt|reg_out[7]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_burstcount[6]~input0\ : std_logic;
SIGNAL \EU|burstcnt|reg_out[6]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_cmp|equal~3_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_cmp|equal~4_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:10:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_counter|g1:10:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \SSRAM_burstcount[10]~input0\ : std_logic;
SIGNAL \EU|burstcnt|reg_out[10]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen|reg_out[10]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|burstlen_cmp|equal~combout\ : std_logic;
SIGNAL \EU|snc|CU|present_state~17_combout\ : std_logic;
SIGNAL \EU|snc|CU|present_state.reception~q\ : std_logic;
SIGNAL \EU|snc|CU|present_state~21_combout\ : std_logic;
SIGNAL \EU|snc|CU|present_state.reception_end_1~q\ : std_logic;
SIGNAL \EU|snc|CU|present_state~20_combout\ : std_logic;
SIGNAL \EU|snc|CU|present_state.reception_end_2~q\ : std_logic;
SIGNAL \EU|snc|CU|present_state~19_combout\ : std_logic;
SIGNAL \EU|snc|CU|present_state.idle_clear~q\ : std_logic;
SIGNAL \EU|snc|CU|WideOr5~combout\ : std_logic;
SIGNAL \EU|snc|CU|WideOr5~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|busy_pipe|dff_out~q\ : std_logic;
SIGNAL \CU|Selector4~0_combout\ : std_logic;
SIGNAL \CU|present_state.read_wait_1~q\ : std_logic;
SIGNAL \CU|next_state.read_wait_2~0_combout\ : std_logic;
SIGNAL \CU|present_state.read_wait_2~q\ : std_logic;
SIGNAL \CU|next_state.read_end~0_combout\ : std_logic;
SIGNAL \CU|present_state.read_end~q\ : std_logic;
SIGNAL \CU|present_state.synch_restoring_1~q\ : std_logic;
SIGNAL \CU|present_state.synch_restoring_2~q\ : std_logic;
SIGNAL \EU|dpd_req_tracker|dff_out~q\ : std_logic;
SIGNAL \CU|Selector2~1_combout\ : std_logic;
SIGNAL \CU|Selector2~4_combout\ : std_logic;
SIGNAL \CU|present_state.idle~q\ : std_logic;
SIGNAL \CU|WideOr12~0_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_tim|tim_20~1_combout\ : std_logic;
SIGNAL \EU|deadline_tim|tim_20~0_combout\ : std_logic;
SIGNAL \EU|deadline_tim|tim_20~2_combout\ : std_logic;
SIGNAL \CU|Selector1~0_combout\ : std_logic;
SIGNAL \CU|present_state.reset_wait~q\ : std_logic;
SIGNAL \CU|next_state.reset_exit_begin~0_combout\ : std_logic;
SIGNAL \CU|present_state.reset_exit_begin~q\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~2_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~3_combout\ : std_logic;
SIGNAL \EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_tim|tim_1000~2_combout\ : std_logic;
SIGNAL \EU|deadline_tim|tim_1000~3_combout\ : std_logic;
SIGNAL \EU|deadline_tim|tim_1000~4_combout\ : std_logic;
SIGNAL \CU|Selector7~0_combout\ : std_logic;
SIGNAL \CU|present_state.wait_dpd_in~q\ : std_logic;
SIGNAL \EU|dpd_tracker|sr_out~0_combout\ : std_logic;
SIGNAL \EU|dpd_tracker|sr_out~q\ : std_logic;
SIGNAL \CU|Selector3~0_combout\ : std_logic;
SIGNAL \CU|Selector3~1_combout\ : std_logic;
SIGNAL \CU|present_state.writeconfig_init~q\ : std_logic;
SIGNAL \CU|present_state.writeconfig_CA_init~feeder_combout\ : std_logic;
SIGNAL \CU|present_state.writeconfig_CA_init~q\ : std_logic;
SIGNAL \CU|present_state.CA_writeconfig_1~q\ : std_logic;
SIGNAL \CU|WideOr20~0_combout\ : std_logic;
SIGNAL \CU|WideOr20~1_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[8]~0_combout\ : std_logic;
SIGNAL \SSRAM_in[8]~input0\ : std_logic;
SIGNAL \EU|datain|reg_out[8]~feeder_combout\ : std_logic;
SIGNAL \CU|WideOr15~combout\ : std_logic;
SIGNAL \SSRAM_address[11]~input0\ : std_logic;
SIGNAL \EU|up_address|reg_out[8]~feeder_combout\ : std_logic;
SIGNAL \EU|CA|CA1|reg_out[8]~feeder_combout\ : std_logic;
SIGNAL \CU|WideOr17~0_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[8]~1_combout\ : std_logic;
SIGNAL \CU|WideOr11~1_combout\ : std_logic;
SIGNAL \CU|WideOr13~combout\ : std_logic;
SIGNAL \SSRAM_address[19]~input0\ : std_logic;
SIGNAL \EU|up_address|reg_out[16]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_in[0]~input0\ : std_logic;
SIGNAL \EU|datain|reg_out[0]~feeder_combout\ : std_logic;
SIGNAL \EU|writedata|lsbout|reg_out[2]~1_combout\ : std_logic;
SIGNAL \EU|low_address|reg_out[0]~feeder_combout\ : std_logic;
SIGNAL \EU|writedata|lsbout|reg_out[2]~2_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[0]~2_combout\ : std_logic;
SIGNAL \SSRAM_address[3]~input0\ : std_logic;
SIGNAL \EU|up_address|reg_out[0]~feeder_combout\ : std_logic;
SIGNAL \EU|CA|CA1|reg_out[0]~feeder_combout\ : std_logic;
SIGNAL \EU|writedata|lsbout|reg_out[2]~0_combout\ : std_logic;
SIGNAL \EU|writedata|outmux|out_mux[0]~0_combout\ : std_logic;
SIGNAL \SSRAM_address[12]~input0\ : std_logic;
SIGNAL \EU|up_address|reg_out[9]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_in[9]~input0\ : std_logic;
SIGNAL \EU|datain|reg_out[9]~feeder_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[9]~3_combout\ : std_logic;
SIGNAL \SSRAM_address[4]~input0\ : std_logic;
SIGNAL \EU|up_address|reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_in[1]~input0\ : std_logic;
SIGNAL \EU|datain|reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_address[1]~input0\ : std_logic;
SIGNAL \EU|low_address|reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[1]~4_combout\ : std_logic;
SIGNAL \SSRAM_address[20]~input0\ : std_logic;
SIGNAL \EU|up_address|reg_out[17]~feeder_combout\ : std_logic;
SIGNAL \EU|CA|CA0|reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \EU|writedata|outmux|out_mux[1]~1_combout\ : std_logic;
SIGNAL \SSRAM_address[13]~input0\ : std_logic;
SIGNAL \EU|up_address|reg_out[10]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_in[10]~input0\ : std_logic;
SIGNAL \EU|datain|reg_out[10]~feeder_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[10]~5_combout\ : std_logic;
SIGNAL \SSRAM_in[2]~input0\ : std_logic;
SIGNAL \EU|datain|reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_address[2]~input0\ : std_logic;
SIGNAL \EU|low_address|reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[2]~6_combout\ : std_logic;
SIGNAL \SSRAM_address[5]~input0\ : std_logic;
SIGNAL \EU|up_address|reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \EU|CA|CA1|reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_address[21]~input0\ : std_logic;
SIGNAL \EU|up_address|reg_out[18]~feeder_combout\ : std_logic;
SIGNAL \EU|CA|CA0|reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \EU|writedata|outmux|out_mux[2]~2_combout\ : std_logic;
SIGNAL \SSRAM_address[14]~input0\ : std_logic;
SIGNAL \EU|up_address|reg_out[11]~feeder_combout\ : std_logic;
SIGNAL \EU|CA|CA1|reg_out[11]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_in[11]~input0\ : std_logic;
SIGNAL \EU|datain|reg_out[11]~feeder_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[11]~7_combout\ : std_logic;
SIGNAL \EU|writedata|msbout|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_address[6]~input0\ : std_logic;
SIGNAL \EU|up_address|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_in[3]~input0\ : std_logic;
SIGNAL \EU|datain|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[3]~8_combout\ : std_logic;
SIGNAL \EU|writedata|outmux|out_mux[3]~3_combout\ : std_logic;
SIGNAL \SSRAM_in[4]~input0\ : std_logic;
SIGNAL \EU|datain|reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_address[7]~input0\ : std_logic;
SIGNAL \EU|up_address|reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[4]~10_combout\ : std_logic;
SIGNAL \EU|writedata|lsbout|reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_address[15]~input0\ : std_logic;
SIGNAL \EU|up_address|reg_out[12]~feeder_combout\ : std_logic;
SIGNAL \EU|CA|CA1|reg_out[12]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_in[12]~input0\ : std_logic;
SIGNAL \EU|datain|reg_out[12]~feeder_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[12]~9_combout\ : std_logic;
SIGNAL \EU|writedata|outmux|out_mux[4]~4_combout\ : std_logic;
SIGNAL \SSRAM_in[13]~input0\ : std_logic;
SIGNAL \EU|datain|reg_out[13]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_address[16]~input0\ : std_logic;
SIGNAL \EU|up_address|reg_out[13]~feeder_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[13]~11_combout\ : std_logic;
SIGNAL \SSRAM_in[5]~input0\ : std_logic;
SIGNAL \SSRAM_address[8]~input0\ : std_logic;
SIGNAL \EU|up_address|reg_out[5]~feeder_combout\ : std_logic;
SIGNAL \EU|CA|CA1|reg_out[5]~feeder_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[5]~12_combout\ : std_logic;
SIGNAL \EU|writedata|outmux|out_mux[5]~5_combout\ : std_logic;
SIGNAL \SSRAM_address[9]~input0\ : std_logic;
SIGNAL \EU|up_address|reg_out[6]~feeder_combout\ : std_logic;
SIGNAL \EU|CA|CA1|reg_out[6]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_in[6]~input0\ : std_logic;
SIGNAL \EU|datain|reg_out[6]~feeder_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[6]~16_combout\ : std_logic;
SIGNAL \EU|writedata|lsbout|reg_out[6]~feeder_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[8]~13_combout\ : std_logic;
SIGNAL \SSRAM_in[14]~input0\ : std_logic;
SIGNAL \CU|config_access~combout\ : std_logic;
SIGNAL \SSRAM_address[17]~input0\ : std_logic;
SIGNAL \EU|up_address|reg_out[14]~feeder_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[14]~14_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[14]~15_combout\ : std_logic;
SIGNAL \EU|writedata|msbout|reg_out[6]~feeder_combout\ : std_logic;
SIGNAL \EU|writedata|outmux|out_mux[6]~6_combout\ : std_logic;
SIGNAL \SSRAM_address[10]~input0\ : std_logic;
SIGNAL \EU|up_address|reg_out[7]~feeder_combout\ : std_logic;
SIGNAL \EU|CA|CA1|reg_out[7]~feeder_combout\ : std_logic;
SIGNAL \SSRAM_in[7]~input0\ : std_logic;
SIGNAL \EU|datain|reg_out[7]~feeder_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[7]~19_combout\ : std_logic;
SIGNAL \CU|read_writeN~0_combout\ : std_logic;
SIGNAL \SSRAM_address[18]~input0\ : std_logic;
SIGNAL \EU|up_address|reg_out[15]~feeder_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[15]~17_combout\ : std_logic;
SIGNAL \EU|datain|reg_out[15]~feeder_combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux[15]~18_combout\ : std_logic;
SIGNAL \EU|writedata|outmux|out_mux[7]~7_combout\ : std_logic;
SIGNAL \RWDS_90~input0\ : std_logic;
SIGNAL \RWDS_90~clkctrl_outclk\ : std_logic;
SIGNAL \EU|readdata|lsbin|reg_out[0]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|code_counter|entry_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|code_counter|entry_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|snc|EU|code_counter|g1:1:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|code_counter|g1:1:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|snc|EU|dec|Mux2~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata11|reg_out[0]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|dec|Mux2~2_combout\ : std_logic;
SIGNAL \EU|snc|EU|dec|Mux2~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata00_enable~combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux15~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux15~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|dataout_pipe|reg_out~0_combout\ : std_logic;
SIGNAL \EU|readdata|lsbin|reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata10|reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata00|reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux14~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata11|reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux14~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|dataout_pipe|reg_out~1_combout\ : std_logic;
SIGNAL \EU|readdata|lsbin|reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata11|reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata00|reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata10|reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux13~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux13~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|dataout_pipe|reg_out~2_combout\ : std_logic;
SIGNAL \EU|readdata|lsbin|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata11|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata10|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata01|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata00|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux12~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux12~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|dataout_pipe|reg_out~3_combout\ : std_logic;
SIGNAL \EU|readdata|lsbin|reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata01|reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata00|reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata10|reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux11~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata11|reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux11~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|dataout_pipe|reg_out~4_combout\ : std_logic;
SIGNAL \EU|readdata|lsbin|reg_out[5]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata00|reg_out[5]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata01|reg_out[5]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux10~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata11|reg_out[5]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux10~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|dataout_pipe|reg_out~5_combout\ : std_logic;
SIGNAL \EU|readdata|lsbin|reg_out[6]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata10|reg_out[6]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata00|reg_out[6]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux9~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata01|reg_out[6]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata11|reg_out[6]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux9~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|dataout_pipe|reg_out~6_combout\ : std_logic;
SIGNAL \EU|readdata|lsbin|reg_out[7]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata11|reg_out[7]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata10|reg_out[7]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux8~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux8~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|dataout_pipe|reg_out~7_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata11|reg_out[8]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata00|reg_out[8]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata10|reg_out[8]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux7~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata01|reg_out[8]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux7~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|dataout_pipe|reg_out~8_combout\ : std_logic;
SIGNAL \EU|readdata|msbin|reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata10|reg_out[9]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata11|reg_out[9]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata00|reg_out[9]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata01|reg_out[9]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux6~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux6~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|dataout_pipe|reg_out~9_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata10|reg_out[10]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata00|reg_out[10]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux5~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata11|reg_out[10]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata01|reg_out[10]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux5~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|dataout_pipe|reg_out~10_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata11|reg_out[11]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata10|reg_out[11]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata00|reg_out[11]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata01|reg_out[11]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux4~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux4~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|dataout_pipe|reg_out~11_combout\ : std_logic;
SIGNAL \EU|readdata|msbin|reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata01|reg_out[12]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata10|reg_out[12]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata00|reg_out[12]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux3~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata11|reg_out[12]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux3~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|dataout_pipe|reg_out~12_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata11|reg_out[13]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata10|reg_out[13]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata01|reg_out[13]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata00|reg_out[13]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux2~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux2~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|dataout_pipe|reg_out~13_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata11|reg_out[14]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata00|reg_out[14]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata10|reg_out[14]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux1~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata01|reg_out[14]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux1~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|dataout_pipe|reg_out~14_combout\ : std_logic;
SIGNAL \EU|readdata|msbin|reg_out[7]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata01|reg_out[15]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata00|reg_out[15]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux0~0_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata10|reg_out[15]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|readdata11|reg_out[15]~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|datamux|Mux0~1_combout\ : std_logic;
SIGNAL \EU|snc|EU|dataout_pipe|reg_out~15_combout\ : std_logic;
SIGNAL \EU|snc|EU|valid_pipe|dff_out~feeder_combout\ : std_logic;
SIGNAL \EU|snc|EU|valid_pipe|dff_out~q\ : std_logic;
SIGNAL \CU|WideOr17~1_combout\ : std_logic;
SIGNAL \CU|WideOr17~2_combout\ : std_logic;
SIGNAL \CU|WideOr16~0_combout\ : std_logic;
SIGNAL \CU|h_RESET_n~0_combout\ : std_logic;
SIGNAL \CU|WideOr11~0_combout\ : std_logic;
SIGNAL \CU|WideOr11~combout\ : std_logic;
SIGNAL \EU|CK_gater|antiglitch|dff_out~q\ : std_logic;
SIGNAL \EU|CK_gater|gated_clock~combout\ : std_logic;
SIGNAL \CU|WideOr21~combout\ : std_logic;
SIGNAL \EU|dqmux|out_mux\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|snc|EU|code_counter|tgl_in\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \EU|CA|CA0|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|datain|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|snc|EU|readdata01|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|snc|EU|readdata10|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|snc|EU|readdata11|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|snc|EU|dataout_pipe|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|snc|EU|burstlen|reg_out\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \CU|CA_sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \EU|deadline_tim|cnt|tgl_in\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \EU|snc|EU|readdata00|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|readdata|msbin|reg_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \EU|snc|EU|burstlen_counter|tgl_in\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \EU|writedata|msbout|reg_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \EU|snc|EU|dataout|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|writedata|lsbout|reg_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \EU|low_address|reg_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \EU|CA|CA2|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|readdata|lsbin|reg_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \EU|burstcnt|reg_out\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \EU|up_address|reg_out\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \EU|CA|CA1|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_RWDS_90~clkctrl_outclk\ : std_logic;
SIGNAL \EU|snc|CU|ALT_INV_present_state.reset~q\ : std_logic;
SIGNAL \CU|ALT_INV_h_RESET_n~0_combout\ : std_logic;
SIGNAL \CU|ALT_INV_present_state.idle~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_SSRAM_CS <= SSRAM_CS;
ww_SSRAM_OE <= SSRAM_OE;
ww_SSRAM_WE <= SSRAM_WE;
ww_SSRAM_address_spacing <= SSRAM_address_spacing;
ww_SSRAM_burstcount <= SSRAM_burstcount;
ww_SSRAM_address <= SSRAM_address;
ww_SSRAM_in <= SSRAM_in;
SSRAM_out <= ww_SSRAM_out;
SSRAM_validout <= ww_SSRAM_validout;
SSRAM_busy <= ww_SSRAM_busy;
SSRAM_haltdata <= ww_SSRAM_haltdata;
hbus_CS_n <= ww_hbus_CS_n;
hbus_RESET_n <= ww_hbus_RESET_n;
hbus_DQ <= ww_hbus_DQ;
hCK_edgeal <= ww_hCK_edgeal;
ww_RWDS_360 <= RWDS_360;
ww_RWDS_90 <= RWDS_90;
ww_RWDS <= RWDS;
drive_RWDS_low <= ww_drive_RWDS_low;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\RWDS_360~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RWDS_360~input0\);

\RWDS_90~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RWDS_90~input0\);
\ALT_INV_RWDS_90~clkctrl_outclk\ <= NOT \RWDS_90~clkctrl_outclk\;
\EU|snc|CU|ALT_INV_present_state.reset~q\ <= NOT \EU|snc|CU|present_state.reset~q\;
\CU|ALT_INV_h_RESET_n~0_combout\ <= NOT \CU|h_RESET_n~0_combout\;
\CU|ALT_INV_present_state.idle~q\ <= NOT \CU|present_state.idle~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y14_N2
\hbus_DQ[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|writedata|outmux|out_mux[0]~0_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \hbus_DQ[0]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\hbus_DQ[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|writedata|outmux|out_mux[1]~1_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \hbus_DQ[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\hbus_DQ[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|writedata|outmux|out_mux[2]~2_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \hbus_DQ[2]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\hbus_DQ[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|writedata|outmux|out_mux[3]~3_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \hbus_DQ[3]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\hbus_DQ[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|writedata|outmux|out_mux[4]~4_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \hbus_DQ[4]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\hbus_DQ[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|writedata|outmux|out_mux[5]~5_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \hbus_DQ[5]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\hbus_DQ[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|writedata|outmux|out_mux[6]~6_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \hbus_DQ[6]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\hbus_DQ[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|writedata|outmux|out_mux[7]~7_combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \hbus_DQ[7]~output_o\);

-- Location: LCCOMB_X7_Y28_N0
\SSRAM_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|snc|EU|dataout_pipe|reg_out\(0),
	devoe => ww_devoe,
	o => \SSRAM_out[0]~output_o\);

-- Location: LCCOMB_X8_Y28_N0
\SSRAM_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|snc|EU|dataout_pipe|reg_out\(1),
	devoe => ww_devoe,
	o => \SSRAM_out[1]~output_o\);

-- Location: LCCOMB_X7_Y28_N2
\SSRAM_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|snc|EU|dataout_pipe|reg_out\(2),
	devoe => ww_devoe,
	o => \SSRAM_out[2]~output_o\);

-- Location: LCCOMB_X7_Y28_N4
\SSRAM_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|snc|EU|dataout_pipe|reg_out\(3),
	devoe => ww_devoe,
	o => \SSRAM_out[3]~output_o\);

-- Location: LCCOMB_X7_Y28_N6
\SSRAM_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|snc|EU|dataout_pipe|reg_out\(4),
	devoe => ww_devoe,
	o => \SSRAM_out[4]~output_o\);

-- Location: LCCOMB_X7_Y28_N8
\SSRAM_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|snc|EU|dataout_pipe|reg_out\(5),
	devoe => ww_devoe,
	o => \SSRAM_out[5]~output_o\);

-- Location: LCCOMB_X7_Y28_N10
\SSRAM_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|snc|EU|dataout_pipe|reg_out\(6),
	devoe => ww_devoe,
	o => \SSRAM_out[6]~output_o\);

-- Location: LCCOMB_X7_Y28_N12
\SSRAM_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|snc|EU|dataout_pipe|reg_out\(7),
	devoe => ww_devoe,
	o => \SSRAM_out[7]~output_o\);

-- Location: LCCOMB_X7_Y28_N14
\SSRAM_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|snc|EU|dataout_pipe|reg_out\(8),
	devoe => ww_devoe,
	o => \SSRAM_out[8]~output_o\);

-- Location: LCCOMB_X7_Y28_N16
\SSRAM_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|snc|EU|dataout_pipe|reg_out\(9),
	devoe => ww_devoe,
	o => \SSRAM_out[9]~output_o\);

-- Location: LCCOMB_X7_Y28_N18
\SSRAM_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|snc|EU|dataout_pipe|reg_out\(10),
	devoe => ww_devoe,
	o => \SSRAM_out[10]~output_o\);

-- Location: LCCOMB_X7_Y28_N20
\SSRAM_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|snc|EU|dataout_pipe|reg_out\(11),
	devoe => ww_devoe,
	o => \SSRAM_out[11]~output_o\);

-- Location: LCCOMB_X7_Y28_N22
\SSRAM_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|snc|EU|dataout_pipe|reg_out\(12),
	devoe => ww_devoe,
	o => \SSRAM_out[12]~output_o\);

-- Location: LCCOMB_X7_Y28_N24
\SSRAM_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|snc|EU|dataout_pipe|reg_out\(13),
	devoe => ww_devoe,
	o => \SSRAM_out[13]~output_o\);

-- Location: LCCOMB_X7_Y28_N26
\SSRAM_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|snc|EU|dataout_pipe|reg_out\(14),
	devoe => ww_devoe,
	o => \SSRAM_out[14]~output_o\);

-- Location: LCCOMB_X7_Y28_N28
\SSRAM_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|snc|EU|dataout_pipe|reg_out\(15),
	devoe => ww_devoe,
	o => \SSRAM_out[15]~output_o\);

-- Location: LCCOMB_X8_Y28_N2
\SSRAM_validout~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|snc|EU|valid_pipe|dff_out~q\,
	devoe => ww_devoe,
	o => \SSRAM_validout~output_o\);

-- Location: LCCOMB_X8_Y28_N4
\SSRAM_busy~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|ALT_INV_present_state.idle~q\,
	devoe => ww_devoe,
	o => \SSRAM_busy~output_o\);

-- Location: LCCOMB_X5_Y26_N12
\SSRAM_haltdata~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|WideOr17~2_combout\,
	devoe => ww_devoe,
	o => \SSRAM_haltdata~output_o\);

-- Location: LCCOMB_X8_Y28_N6
\hbus_CS_n~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|WideOr16~0_combout\,
	devoe => ww_devoe,
	o => \hbus_CS_n~output_o\);

-- Location: LCCOMB_X7_Y28_N30
\hbus_RESET_n~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|ALT_INV_h_RESET_n~0_combout\,
	devoe => ww_devoe,
	o => \hbus_RESET_n~output_o\);

-- Location: LCCOMB_X8_Y28_N8
\hCK_edgeal~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|CK_gater|gated_clock~combout\,
	devoe => ww_devoe,
	o => \hCK_edgeal~output_o\);

-- Location: LCCOMB_X7_Y23_N0
\drive_RWDS_low~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|WideOr21~combout\,
	devoe => ww_devoe,
	o => \drive_RWDS_low~output_o\);

-- Location: IOIBUF_X0_Y16_N1
\clk~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X8_Y25_N14
\CU|present_state.reset~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state.reset~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CU|present_state.reset~feeder_combout\);

-- Location: LCCOMB_X8_Y24_N0
\rst_n~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input0\);

-- Location: FF_X8_Y25_N15
\CU|present_state.reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|present_state.reset~feeder_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.reset~q\);

-- Location: FF_X5_Y27_N19
\CU|present_state.CA_writeconfig_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|present_state.CA_writeconfig_1~q\,
	clrn => \rst_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.CA_writeconfig_2~q\);

-- Location: FF_X7_Y25_N11
\CU|present_state.CA_writeconfig_end\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|present_state.CA_writeconfig_2~q\,
	clrn => \rst_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.CA_writeconfig_end~q\);

-- Location: FF_X7_Y25_N17
\CU|present_state.writeconfig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|present_state.CA_writeconfig_end~q\,
	clrn => \rst_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writeconfig~q\);

-- Location: LCCOMB_X3_Y25_N0
\SSRAM_WE~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_WE,
	o => \SSRAM_WE~input0\);

-- Location: LCCOMB_X5_Y23_N28
\SSRAM_CS~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_CS,
	o => \SSRAM_CS~input0\);

-- Location: LCCOMB_X5_Y23_N24
\SSRAM_OE~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_OE,
	o => \SSRAM_OE~input0\);

-- Location: LCCOMB_X5_Y23_N2
\SSRAM_address_spacing~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address_spacing,
	o => \SSRAM_address_spacing~input0\);

-- Location: LCCOMB_X2_Y24_N0
\SSRAM_in[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_in(15),
	o => \SSRAM_in[15]~input0\);

-- Location: LCCOMB_X3_Y23_N24
\SSRAM_address[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(0),
	o => \SSRAM_address[0]~input0\);

-- Location: LCCOMB_X8_Y25_N12
\EU|dpd\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dpd~combout\ = (!\SSRAM_in[15]~input0\ & !\SSRAM_address[0]~input0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_in[15]~input0\,
	datad => \SSRAM_address[0]~input0\,
	combout => \EU|dpd~combout\);

-- Location: LCCOMB_X6_Y25_N30
\CU|Selector2~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector2~2_combout\ = (\EU|dpd_tracker|sr_out~q\ & ((\SSRAM_OE~input0\) # ((\EU|dpd~combout\) # (!\SSRAM_address_spacing~input0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|dpd_tracker|sr_out~q\,
	datab => \SSRAM_OE~input0\,
	datac => \SSRAM_address_spacing~input0\,
	datad => \EU|dpd~combout\,
	combout => \CU|Selector2~2_combout\);

-- Location: LCCOMB_X6_Y25_N0
\CU|Selector2~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector2~3_combout\ = ((\CU|Selector2~2_combout\) # ((!\SSRAM_WE~input0\ & !\SSRAM_OE~input0\))) # (!\SSRAM_CS~input0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_WE~input0\,
	datab => \SSRAM_CS~input0\,
	datac => \CU|Selector2~2_combout\,
	datad => \SSRAM_OE~input0\,
	combout => \CU|Selector2~3_combout\);

-- Location: LCCOMB_X6_Y25_N14
\EU|op_tracker|dff_out~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|op_tracker|dff_out~feeder_combout\ = \SSRAM_OE~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSRAM_OE~input0\,
	combout => \EU|op_tracker|dff_out~feeder_combout\);

-- Location: FF_X6_Y25_N15
\EU|op_tracker|dff_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|op_tracker|dff_out~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|op_tracker|dff_out~q\);

-- Location: LCCOMB_X6_Y25_N18
\CU|next_state.readconfig_init~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.readconfig_init~0_combout\ = (!\EU|dpd_tracker|sr_out~q\ & (\SSRAM_CS~input0\ & (\SSRAM_OE~input0\ & \CU|present_state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|dpd_tracker|sr_out~q\,
	datab => \SSRAM_CS~input0\,
	datac => \SSRAM_OE~input0\,
	datad => \CU|present_state.idle~q\,
	combout => \CU|next_state.readconfig_init~0_combout\);

-- Location: LCCOMB_X5_Y25_N30
\CU|next_state.readconfig_init~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.readconfig_init~1_combout\ = (\CU|next_state.readconfig_init~0_combout\ & \SSRAM_address_spacing~input0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|next_state.readconfig_init~0_combout\,
	datac => \SSRAM_address_spacing~input0\,
	combout => \CU|next_state.readconfig_init~1_combout\);

-- Location: FF_X5_Y25_N31
\CU|present_state.readconfig_init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.readconfig_init~1_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.readconfig_init~q\);

-- Location: LCCOMB_X5_Y25_N20
\CU|next_state.readmem_init~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.readmem_init~0_combout\ = (\CU|next_state.readconfig_init~0_combout\ & !\SSRAM_address_spacing~input0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|next_state.readconfig_init~0_combout\,
	datac => \SSRAM_address_spacing~input0\,
	combout => \CU|next_state.readmem_init~0_combout\);

-- Location: FF_X5_Y25_N21
\CU|present_state.readmem_init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.readmem_init~0_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.readmem_init~q\);

-- Location: LCCOMB_X6_Y25_N24
\CU|Selector8~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector8~0_combout\ = (\SSRAM_WE~input0\ & (\SSRAM_CS~input0\ & (!\SSRAM_OE~input0\ & \CU|present_state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_WE~input0\,
	datab => \SSRAM_CS~input0\,
	datac => \SSRAM_OE~input0\,
	datad => \CU|present_state.idle~q\,
	combout => \CU|Selector8~0_combout\);

-- Location: LCCOMB_X5_Y25_N4
\CU|next_state.writemem_init~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.writemem_init~0_combout\ = (\CU|Selector8~0_combout\ & (!\SSRAM_address_spacing~input0\ & !\EU|dpd_tracker|sr_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|Selector8~0_combout\,
	datac => \SSRAM_address_spacing~input0\,
	datad => \EU|dpd_tracker|sr_out~q\,
	combout => \CU|next_state.writemem_init~0_combout\);

-- Location: FF_X5_Y25_N5
\CU|present_state.writemem_init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.writemem_init~0_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writemem_init~q\);

-- Location: LCCOMB_X5_Y25_N28
\CU|WideOr4~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr4~0_combout\ = (\CU|present_state.readconfig_init~q\) # ((\CU|present_state.readmem_init~q\) # (\CU|present_state.writemem_init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.readconfig_init~q\,
	datab => \CU|present_state.readmem_init~q\,
	datac => \CU|present_state.writemem_init~q\,
	combout => \CU|WideOr4~0_combout\);

-- Location: FF_X5_Y25_N29
\CU|present_state.CA_init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|WideOr4~0_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.CA_init~q\);

-- Location: LCCOMB_X5_Y25_N6
\CU|present_state.CA1~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state.CA1~feeder_combout\ = \CU|present_state.CA_init~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|present_state.CA_init~q\,
	combout => \CU|present_state.CA1~feeder_combout\);

-- Location: FF_X5_Y25_N7
\CU|present_state.CA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|present_state.CA1~feeder_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.CA1~q\);

-- Location: LCCOMB_X5_Y25_N24
\CU|present_state.CA2~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state.CA2~feeder_combout\ = \CU|present_state.CA1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|present_state.CA1~q\,
	combout => \CU|present_state.CA2~feeder_combout\);

-- Location: FF_X5_Y25_N25
\CU|present_state.CA2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|present_state.CA2~feeder_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.CA2~q\);

-- Location: LCCOMB_X5_Y25_N16
\CU|present_state.CA_end~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state.CA_end~feeder_combout\ = \CU|present_state.CA2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|present_state.CA2~q\,
	combout => \CU|present_state.CA_end~feeder_combout\);

-- Location: FF_X5_Y25_N17
\CU|present_state.CA_end\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|present_state.CA_end~feeder_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.CA_end~q\);

-- Location: LCCOMB_X6_Y25_N12
\CU|Selector8~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector8~1_combout\ = (\EU|dpd_tracker|sr_out~q\ & (\CU|Selector8~0_combout\ & (\SSRAM_address_spacing~input0\ & !\EU|dpd~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|dpd_tracker|sr_out~q\,
	datab => \CU|Selector8~0_combout\,
	datac => \SSRAM_address_spacing~input0\,
	datad => \EU|dpd~combout\,
	combout => \CU|Selector8~1_combout\);

-- Location: LCCOMB_X11_Y25_N28
\EU|deadline_tim|cnt|entry_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|entry_tff|dummy_out~0_combout\ = (\CU|WideOr12~0_combout\ & (\EU|deadline_tim|cnt|entry_tff|dummy_out~q\ $ (((\CU|WideOr14~1_combout\) # (!\CU|WideOr14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr14~1_combout\,
	datab => \CU|WideOr14~0_combout\,
	datac => \EU|deadline_tim|cnt|entry_tff|dummy_out~q\,
	datad => \CU|WideOr12~0_combout\,
	combout => \EU|deadline_tim|cnt|entry_tff|dummy_out~0_combout\);

-- Location: FF_X11_Y25_N29
\EU|deadline_tim|cnt|entry_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_tim|cnt|entry_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_tim|cnt|entry_tff|dummy_out~q\);

-- Location: LCCOMB_X11_Y25_N10
\EU|deadline_tim|cnt|tgl_in[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|tgl_in\(1) = (\EU|deadline_tim|cnt|entry_tff|dummy_out~q\ & ((\CU|WideOr14~1_combout\) # (!\CU|WideOr14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr14~1_combout\,
	datac => \CU|WideOr14~0_combout\,
	datad => \EU|deadline_tim|cnt|entry_tff|dummy_out~q\,
	combout => \EU|deadline_tim|cnt|tgl_in\(1));

-- Location: LCCOMB_X11_Y25_N8
\EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out~0_combout\ = (\CU|WideOr12~0_combout\ & (\EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out~q\ $ (((\EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~q\ & \EU|deadline_tim|cnt|tgl_in\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~q\,
	datab => \CU|WideOr12~0_combout\,
	datac => \EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|tgl_in\(1),
	combout => \EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out~0_combout\);

-- Location: FF_X11_Y25_N9
\EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X11_Y25_N2
\EU|deadline_tim|tim_20~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|tim_20~3_combout\ = (!\EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~q\ & (\EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\ & (\EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out~q\ & !\EU|deadline_tim|cnt|entry_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~q\,
	datab => \EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\,
	datac => \EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|entry_tff|dummy_out~q\,
	combout => \EU|deadline_tim|tim_20~3_combout\);

-- Location: LCCOMB_X7_Y25_N14
\CU|Selector8~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector8~2_combout\ = (\CU|Selector8~1_combout\) # ((\CU|present_state.dummycmd~q\ & ((!\EU|deadline_tim|tim_20~3_combout\) # (!\EU|deadline_tim|tim_20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Selector8~1_combout\,
	datab => \EU|deadline_tim|tim_20~2_combout\,
	datac => \CU|present_state.dummycmd~q\,
	datad => \EU|deadline_tim|tim_20~3_combout\,
	combout => \CU|Selector8~2_combout\);

-- Location: FF_X7_Y25_N15
\CU|present_state.dummycmd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector8~2_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.dummycmd~q\);

-- Location: LCCOMB_X7_Y25_N28
\CU|next_state.dummycmd_end~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.dummycmd_end~0_combout\ = (\CU|present_state.dummycmd~q\ & (\EU|deadline_tim|tim_20~2_combout\ & \EU|deadline_tim|tim_20~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.dummycmd~q\,
	datac => \EU|deadline_tim|tim_20~2_combout\,
	datad => \EU|deadline_tim|tim_20~3_combout\,
	combout => \CU|next_state.dummycmd_end~0_combout\);

-- Location: FF_X7_Y25_N29
\CU|present_state.dummycmd_end\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.dummycmd_end~0_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.dummycmd_end~q\);

-- Location: LCCOMB_X8_Y25_N28
\CU|Selector9~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector9~0_combout\ = (\CU|present_state.dummycmd_end~q\) # ((\CU|present_state.wait_dpd_out~q\ & !\EU|deadline_tim|tim_15000~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.dummycmd_end~q\,
	datac => \CU|present_state.wait_dpd_out~q\,
	datad => \EU|deadline_tim|tim_15000~2_combout\,
	combout => \CU|Selector9~0_combout\);

-- Location: FF_X8_Y25_N29
\CU|present_state.wait_dpd_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector9~0_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.wait_dpd_out~q\);

-- Location: LCCOMB_X8_Y25_N6
\CU|WideOr14~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr14~0_combout\ = (!\CU|present_state.reset_wait~q\ & (!\CU|present_state.wait_dpd_in~q\ & (!\CU|present_state.reset_exit~q\ & !\CU|present_state.wait_dpd_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.reset_wait~q\,
	datab => \CU|present_state.wait_dpd_in~q\,
	datac => \CU|present_state.reset_exit~q\,
	datad => \CU|present_state.wait_dpd_out~q\,
	combout => \CU|WideOr14~0_combout\);

-- Location: LCCOMB_X11_Y25_N20
\CU|WideOr14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr14~combout\ = (\CU|WideOr14~1_combout\) # (!\CU|WideOr14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr14~1_combout\,
	datac => \CU|WideOr14~0_combout\,
	combout => \CU|WideOr14~combout\);

-- Location: LCCOMB_X11_Y25_N22
\EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~0_combout\ = (\CU|WideOr12~0_combout\ & (\EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~q\ $ (((\CU|WideOr14~combout\ & \EU|deadline_tim|cnt|entry_tff|dummy_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr12~0_combout\,
	datab => \CU|WideOr14~combout\,
	datac => \EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|entry_tff|dummy_out~q\,
	combout => \EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~0_combout\);

-- Location: FF_X11_Y25_N23
\EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X6_Y22_N0
\RWDS~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RWDS,
	o => \RWDS~input0\);

-- Location: LCCOMB_X6_Y23_N0
\EU|rwds_tracker|dff_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|rwds_tracker|dff_out~0_combout\ = (\CU|present_state.CA1~q\ & (\RWDS~input0\)) # (!\CU|present_state.CA1~q\ & ((\EU|rwds_tracker|dff_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.CA1~q\,
	datab => \RWDS~input0\,
	datac => \EU|rwds_tracker|dff_out~q\,
	combout => \EU|rwds_tracker|dff_out~0_combout\);

-- Location: FF_X6_Y23_N1
\EU|rwds_tracker|dff_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|rwds_tracker|dff_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|rwds_tracker|dff_out~q\);

-- Location: LCCOMB_X11_Y25_N24
\CU|next_state~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state~0_combout\ = (\EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~q\ & (\EU|deadline_tim|cnt|entry_tff|dummy_out~q\ & (\EU|rwds_tracker|dff_out~q\ $ (!\EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~q\,
	datab => \EU|rwds_tracker|dff_out~q\,
	datac => \EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|entry_tff|dummy_out~q\,
	combout => \CU|next_state~0_combout\);

-- Location: LCCOMB_X7_Y25_N18
\CU|next_state~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state~1_combout\ = (!\EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\ & (\EU|deadline_tim|tim_20~2_combout\ & \CU|next_state~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\,
	datac => \EU|deadline_tim|tim_20~2_combout\,
	datad => \CU|next_state~0_combout\,
	combout => \CU|next_state~1_combout\);

-- Location: LCCOMB_X7_Y25_N12
\CU|Selector5~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector5~0_combout\ = (\EU|op_tracker|dff_out~q\ & (((\CU|present_state.writemem_wait~q\ & !\CU|next_state~1_combout\)))) # (!\EU|op_tracker|dff_out~q\ & ((\CU|present_state.CA_end~q\) # ((\CU|present_state.writemem_wait~q\ & 
-- !\CU|next_state~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|op_tracker|dff_out~q\,
	datab => \CU|present_state.CA_end~q\,
	datac => \CU|present_state.writemem_wait~q\,
	datad => \CU|next_state~1_combout\,
	combout => \CU|Selector5~0_combout\);

-- Location: FF_X7_Y25_N13
\CU|present_state.writemem_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector5~0_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writemem_wait~q\);

-- Location: LCCOMB_X7_Y25_N30
\CU|WideOr14~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr14~1_combout\ = (\CU|present_state.writemem_wait~q\) # ((\CU|present_state.dummycmd~q\) # ((\CU|present_state.CA2~q\) # (\CU|present_state.CA_end~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.writemem_wait~q\,
	datab => \CU|present_state.dummycmd~q\,
	datac => \CU|present_state.CA2~q\,
	datad => \CU|present_state.CA_end~q\,
	combout => \CU|WideOr14~1_combout\);

-- Location: LCCOMB_X11_Y25_N12
\EU|deadline_tim|cnt|tgl_in[3]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|tgl_in[3]~0_combout\ = (\EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out~q\ & \EU|deadline_tim|cnt|entry_tff|dummy_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|entry_tff|dummy_out~q\,
	combout => \EU|deadline_tim|cnt|tgl_in[3]~0_combout\);

-- Location: LCCOMB_X11_Y25_N18
\EU|deadline_tim|cnt|tgl_in[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|tgl_in\(3) = (\EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~q\ & (\EU|deadline_tim|cnt|tgl_in[3]~0_combout\ & ((\CU|WideOr14~1_combout\) # (!\CU|WideOr14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr14~1_combout\,
	datab => \CU|WideOr14~0_combout\,
	datac => \EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|tgl_in[3]~0_combout\,
	combout => \EU|deadline_tim|cnt|tgl_in\(3));

-- Location: LCCOMB_X10_Y25_N16
\EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out~0_combout\ = (\CU|WideOr12~0_combout\ & (\EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out~q\ $ (\EU|deadline_tim|cnt|tgl_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr12~0_combout\,
	datac => \EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|tgl_in\(3),
	combout => \EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out~0_combout\);

-- Location: FF_X10_Y25_N17
\EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X11_Y25_N0
\EU|deadline_tim|cnt|tgl_in[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|tgl_in\(4) = (\EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out~q\ & (\EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out~q\ & (\EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~q\ & \EU|deadline_tim|cnt|tgl_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out~q\,
	datab => \EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out~q\,
	datac => \EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|tgl_in\(1),
	combout => \EU|deadline_tim|cnt|tgl_in\(4));

-- Location: LCCOMB_X10_Y25_N14
\EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out~0_combout\ = (\CU|WideOr12~0_combout\ & (\EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out~q\ $ (((\EU|deadline_tim|cnt|tgl_in\(4) & \EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr12~0_combout\,
	datab => \EU|deadline_tim|cnt|tgl_in\(4),
	datac => \EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\,
	combout => \EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out~0_combout\);

-- Location: FF_X10_Y25_N15
\EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X10_Y25_N26
\EU|deadline_tim|cnt|tgl_in[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|tgl_in\(7) = (\EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~q\ & (\EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out~q\ & (\EU|deadline_tim|cnt|tgl_in\(4) & \EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~q\,
	datab => \EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out~q\,
	datac => \EU|deadline_tim|cnt|tgl_in\(4),
	datad => \EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\,
	combout => \EU|deadline_tim|cnt|tgl_in\(7));

-- Location: LCCOMB_X10_Y25_N6
\EU|deadline_tim|cnt|g1:7:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|g1:7:chain_tff|dummy_out~0_combout\ = (\CU|WideOr12~0_combout\ & (\EU|deadline_tim|cnt|g1:7:chain_tff|dummy_out~q\ $ (((\EU|deadline_tim|cnt|tgl_in\(6) & \EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr12~0_combout\,
	datab => \EU|deadline_tim|cnt|tgl_in\(6),
	datac => \EU|deadline_tim|cnt|g1:7:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~q\,
	combout => \EU|deadline_tim|cnt|g1:7:chain_tff|dummy_out~0_combout\);

-- Location: FF_X10_Y25_N7
\EU|deadline_tim|cnt|g1:7:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_tim|cnt|g1:7:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_tim|cnt|g1:7:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X10_Y25_N22
\EU|deadline_tim|cnt|g1:8:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|g1:8:chain_tff|dummy_out~0_combout\ = (\CU|WideOr12~0_combout\ & (\EU|deadline_tim|cnt|g1:8:chain_tff|dummy_out~q\ $ (((\EU|deadline_tim|cnt|tgl_in\(7) & \EU|deadline_tim|cnt|g1:7:chain_tff|dummy_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr12~0_combout\,
	datab => \EU|deadline_tim|cnt|tgl_in\(7),
	datac => \EU|deadline_tim|cnt|g1:8:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|g1:7:chain_tff|dummy_out~q\,
	combout => \EU|deadline_tim|cnt|g1:8:chain_tff|dummy_out~0_combout\);

-- Location: FF_X10_Y25_N23
\EU|deadline_tim|cnt|g1:8:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_tim|cnt|g1:8:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_tim|cnt|g1:8:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X10_Y25_N30
\EU|deadline_tim|tim_15000~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|tim_15000~0_combout\ = (!\EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~q\ & (!\EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out~q\ & (!\EU|deadline_tim|cnt|g1:8:chain_tff|dummy_out~q\ & \EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~q\,
	datab => \EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out~q\,
	datac => \EU|deadline_tim|cnt|g1:8:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\,
	combout => \EU|deadline_tim|tim_15000~0_combout\);

-- Location: LCCOMB_X10_Y25_N8
\EU|deadline_tim|cnt|tgl_in[9]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|tgl_in\(9) = (\EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~q\ & (\EU|deadline_tim|cnt|tgl_in\(6) & (\EU|deadline_tim|cnt|g1:8:chain_tff|dummy_out~q\ & \EU|deadline_tim|cnt|g1:7:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~q\,
	datab => \EU|deadline_tim|cnt|tgl_in\(6),
	datac => \EU|deadline_tim|cnt|g1:8:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|g1:7:chain_tff|dummy_out~q\,
	combout => \EU|deadline_tim|cnt|tgl_in\(9));

-- Location: LCCOMB_X9_Y25_N24
\EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out~0_combout\ = (\CU|WideOr12~0_combout\ & (\EU|deadline_tim|cnt|tgl_in\(9) $ (\EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|deadline_tim|cnt|tgl_in\(9),
	datac => \EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out~q\,
	datad => \CU|WideOr12~0_combout\,
	combout => \EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out~0_combout\);

-- Location: FF_X9_Y25_N25
\EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X10_Y25_N4
\EU|deadline_tim|cnt|g1:10:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|g1:10:chain_tff|dummy_out~0_combout\ = (\CU|WideOr12~0_combout\ & (\EU|deadline_tim|cnt|g1:10:chain_tff|dummy_out~q\ $ (((\EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out~q\ & \EU|deadline_tim|cnt|tgl_in\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr12~0_combout\,
	datab => \EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out~q\,
	datac => \EU|deadline_tim|cnt|g1:10:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|tgl_in\(9),
	combout => \EU|deadline_tim|cnt|g1:10:chain_tff|dummy_out~0_combout\);

-- Location: FF_X10_Y25_N5
\EU|deadline_tim|cnt|g1:10:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_tim|cnt|g1:10:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_tim|cnt|g1:10:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X9_Y25_N18
\EU|deadline_tim|cnt|tgl_in[12]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|tgl_in\(12) = (\EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~q\ & (\EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out~q\ & (\EU|deadline_tim|cnt|tgl_in\(9) & \EU|deadline_tim|cnt|g1:10:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~q\,
	datab => \EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out~q\,
	datac => \EU|deadline_tim|cnt|tgl_in\(9),
	datad => \EU|deadline_tim|cnt|g1:10:chain_tff|dummy_out~q\,
	combout => \EU|deadline_tim|cnt|tgl_in\(12));

-- Location: LCCOMB_X9_Y25_N16
\EU|deadline_tim|cnt|g1:12:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|g1:12:chain_tff|dummy_out~0_combout\ = (\CU|WideOr12~0_combout\ & (\EU|deadline_tim|cnt|g1:12:chain_tff|dummy_out~q\ $ (\EU|deadline_tim|cnt|tgl_in\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr12~0_combout\,
	datac => \EU|deadline_tim|cnt|g1:12:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|tgl_in\(12),
	combout => \EU|deadline_tim|cnt|g1:12:chain_tff|dummy_out~0_combout\);

-- Location: FF_X9_Y25_N17
\EU|deadline_tim|cnt|g1:12:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_tim|cnt|g1:12:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_tim|cnt|g1:12:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X9_Y25_N10
\EU|deadline_tim|cnt|g1:13:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|g1:13:chain_tff|dummy_out~0_combout\ = (\CU|WideOr12~0_combout\ & (\EU|deadline_tim|cnt|g1:13:chain_tff|dummy_out~q\ $ (((\EU|deadline_tim|cnt|g1:12:chain_tff|dummy_out~q\ & \EU|deadline_tim|cnt|tgl_in\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr12~0_combout\,
	datab => \EU|deadline_tim|cnt|g1:12:chain_tff|dummy_out~q\,
	datac => \EU|deadline_tim|cnt|g1:13:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|tgl_in\(12),
	combout => \EU|deadline_tim|cnt|g1:13:chain_tff|dummy_out~0_combout\);

-- Location: FF_X9_Y25_N11
\EU|deadline_tim|cnt|g1:13:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_tim|cnt|g1:13:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_tim|cnt|g1:13:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X9_Y25_N4
\EU|deadline_tim|tim_15000~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|tim_15000~1_combout\ = (\EU|deadline_tim|cnt|g1:13:chain_tff|dummy_out~q\ & (\EU|deadline_tim|cnt|g1:12:chain_tff|dummy_out~q\ & \EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|cnt|g1:13:chain_tff|dummy_out~q\,
	datab => \EU|deadline_tim|cnt|g1:12:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~q\,
	combout => \EU|deadline_tim|tim_15000~1_combout\);

-- Location: LCCOMB_X11_Y25_N26
\EU|deadline_tim|tim_1000~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|tim_1000~0_combout\ = (!\EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~q\ & (!\EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out~q\ & (\EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out~q\ & !\EU|deadline_tim|cnt|entry_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|cnt|g1:1:chain_tff|dummy_out~q\,
	datab => \EU|deadline_tim|cnt|g1:2:chain_tff|dummy_out~q\,
	datac => \EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|entry_tff|dummy_out~q\,
	combout => \EU|deadline_tim|tim_1000~0_combout\);

-- Location: LCCOMB_X10_Y25_N2
\EU|deadline_tim|tim_1000~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|tim_1000~1_combout\ = (\EU|deadline_tim|cnt|g1:7:chain_tff|dummy_out~q\ & (\EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out~q\ & (!\EU|deadline_tim|cnt|g1:10:chain_tff|dummy_out~q\ & \EU|deadline_tim|tim_1000~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|cnt|g1:7:chain_tff|dummy_out~q\,
	datab => \EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out~q\,
	datac => \EU|deadline_tim|cnt|g1:10:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|tim_1000~0_combout\,
	combout => \EU|deadline_tim|tim_1000~1_combout\);

-- Location: LCCOMB_X9_Y25_N22
\EU|deadline_tim|tim_15000~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|tim_15000~2_combout\ = (\EU|deadline_tim|tim_15000~0_combout\ & (\EU|deadline_tim|tim_15000~1_combout\ & \EU|deadline_tim|tim_1000~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|tim_15000~0_combout\,
	datac => \EU|deadline_tim|tim_15000~1_combout\,
	datad => \EU|deadline_tim|tim_1000~1_combout\,
	combout => \EU|deadline_tim|tim_15000~2_combout\);

-- Location: LCCOMB_X8_Y25_N22
\CU|Selector0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector0~0_combout\ = (\CU|present_state.reset_exit_begin~q\) # ((\CU|present_state.reset_exit~q\ & !\EU|deadline_tim|tim_15000~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.reset_exit_begin~q\,
	datac => \CU|present_state.reset_exit~q\,
	datad => \EU|deadline_tim|tim_15000~2_combout\,
	combout => \CU|Selector0~0_combout\);

-- Location: FF_X8_Y25_N23
\CU|present_state.reset_exit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector0~0_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.reset_exit~q\);

-- Location: LCCOMB_X8_Y25_N18
\CU|Selector2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector2~0_combout\ = (\CU|present_state.reset_exit~q\ & ((\EU|deadline_tim|tim_15000~2_combout\) # ((\CU|present_state.wait_dpd_in~q\ & \EU|deadline_tim|tim_1000~4_combout\)))) # (!\CU|present_state.reset_exit~q\ & 
-- (((\CU|present_state.wait_dpd_in~q\ & \EU|deadline_tim|tim_1000~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.reset_exit~q\,
	datab => \EU|deadline_tim|tim_15000~2_combout\,
	datac => \CU|present_state.wait_dpd_in~q\,
	datad => \EU|deadline_tim|tim_1000~4_combout\,
	combout => \CU|Selector2~0_combout\);

-- Location: LCCOMB_X7_Y25_N6
\CU|next_state.writemem_DQ_init~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.writemem_DQ_init~0_combout\ = (\CU|present_state.writemem_wait~q\ & (\EU|deadline_tim|tim_20~2_combout\ & (!\EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\ & \CU|next_state~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.writemem_wait~q\,
	datab => \EU|deadline_tim|tim_20~2_combout\,
	datac => \EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\,
	datad => \CU|next_state~0_combout\,
	combout => \CU|next_state.writemem_DQ_init~0_combout\);

-- Location: FF_X7_Y25_N7
\CU|present_state.writemem_DQ_init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.writemem_DQ_init~0_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writemem_DQ_init~q\);

-- Location: LCCOMB_X7_Y25_N24
\CU|next_state.writemem_DQ~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.writemem_DQ~0_combout\ = (\SSRAM_WE~input0\ & ((\CU|present_state.writemem_DQ~q\) # (\CU|present_state.writemem_DQ_init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSRAM_WE~input0\,
	datac => \CU|present_state.writemem_DQ~q\,
	datad => \CU|present_state.writemem_DQ_init~q\,
	combout => \CU|next_state.writemem_DQ~0_combout\);

-- Location: FF_X7_Y25_N25
\CU|present_state.writemem_DQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.writemem_DQ~0_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writemem_DQ~q\);

-- Location: LCCOMB_X7_Y25_N4
\CU|Selector6~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector6~0_combout\ = (!\SSRAM_WE~input0\ & ((\CU|present_state.writemem_DQ_init~q\) # (\CU|present_state.writemem_DQ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.writemem_DQ_init~q\,
	datab => \SSRAM_WE~input0\,
	datad => \CU|present_state.writemem_DQ~q\,
	combout => \CU|Selector6~0_combout\);

-- Location: FF_X7_Y25_N5
\CU|present_state.writemem_DQ_end\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector6~0_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writemem_DQ_end~q\);

-- Location: LCCOMB_X8_Y26_N24
\CU|synch_clear_n~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|synch_clear_n~0_combout\ = (!\CU|present_state.synch_restoring_1~q\ & \CU|present_state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.synch_restoring_1~q\,
	datad => \CU|present_state.reset~q\,
	combout => \CU|synch_clear_n~0_combout\);

-- Location: LCCOMB_X7_Y26_N12
\EU|snc|CU|present_state.reset~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|CU|present_state.reset~feeder_combout\ = \CU|synch_clear_n~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|synch_clear_n~0_combout\,
	combout => \EU|snc|CU|present_state.reset~feeder_combout\);

-- Location: FF_X7_Y26_N13
\EU|snc|CU|present_state.reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|CU|present_state.reset~feeder_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|CU|present_state.reset~q\);

-- Location: LCCOMB_X1_Y16_N16
\RWDS_360~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RWDS_360,
	o => \RWDS_360~input0\);

-- Location: CLKCTRL_G2
\RWDS_360~clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RWDS_360~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RWDS_360~clkctrl_outclk\);

-- Location: LCCOMB_X8_Y26_N16
\EU|snc|CU|WideOr3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|CU|WideOr3~0_combout\ = ((\EU|snc|CU|present_state.reception_end_2~q\) # ((\EU|snc|CU|present_state.reception_end_1~q\) # (\EU|snc|CU|present_state.idle_clear~q\))) # (!\EU|snc|CU|present_state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|CU|present_state.reset~q\,
	datab => \EU|snc|CU|present_state.reception_end_2~q\,
	datac => \EU|snc|CU|present_state.reception_end_1~q\,
	datad => \EU|snc|CU|present_state.idle_clear~q\,
	combout => \EU|snc|CU|WideOr3~0_combout\);

-- Location: LCCOMB_X7_Y26_N0
\EU|snc|CU|WideOr4~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|CU|WideOr4~0_combout\ = (\EU|snc|CU|present_state.reception~q\) # (\EU|snc|CU|present_state.reception_init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|snc|CU|present_state.reception~q\,
	datad => \EU|snc|CU|present_state.reception_init~q\,
	combout => \EU|snc|CU|WideOr4~0_combout\);

-- Location: LCCOMB_X4_Y27_N24
\CU|WideOr11~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr11~2_combout\ = (\CU|present_state.read_wait_2~q\) # (\CU|present_state.read_wait_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.read_wait_2~q\,
	datad => \CU|present_state.read_wait_1~q\,
	combout => \CU|WideOr11~2_combout\);

-- Location: LCCOMB_X7_Y26_N16
\EU|snc|CU|present_state~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|CU|present_state~16_combout\ = (!\CU|WideOr11~2_combout\ & (\CU|synch_clear_n~0_combout\ & ((\EU|snc|CU|present_state.idle_disabled~q\) # (!\EU|snc|CU|present_state.reset~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr11~2_combout\,
	datab => \CU|synch_clear_n~0_combout\,
	datac => \EU|snc|CU|present_state.idle_disabled~q\,
	datad => \EU|snc|CU|present_state.reset~q\,
	combout => \EU|snc|CU|present_state~16_combout\);

-- Location: FF_X7_Y26_N17
\EU|snc|CU|present_state.idle_disabled\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|CU|present_state~16_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|CU|present_state.idle_disabled~q\);

-- Location: LCCOMB_X7_Y26_N26
\EU|snc|CU|present_state~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|CU|present_state~14_combout\ = (\CU|present_state.read_wait_1~q\ & ((\EU|snc|CU|present_state.idle_disabled~q\) # ((!\EU|snc|CU|present_state.reset~q\)))) # (!\CU|present_state.read_wait_1~q\ & (\CU|present_state.read_wait_2~q\ & 
-- ((\EU|snc|CU|present_state.idle_disabled~q\) # (!\EU|snc|CU|present_state.reset~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.read_wait_1~q\,
	datab => \EU|snc|CU|present_state.idle_disabled~q\,
	datac => \CU|present_state.read_wait_2~q\,
	datad => \EU|snc|CU|present_state.reset~q\,
	combout => \EU|snc|CU|present_state~14_combout\);

-- Location: LCCOMB_X7_Y26_N30
\EU|snc|CU|present_state~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|CU|present_state~15_combout\ = (\CU|synch_clear_n~0_combout\ & ((\EU|snc|CU|present_state~14_combout\) # ((\EU|snc|CU|present_state.idle~q\ & !\EU|snc|EU|synchronizer|sr_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|CU|present_state~14_combout\,
	datab => \EU|snc|CU|present_state.idle~q\,
	datac => \EU|snc|EU|synchronizer|sr_out~q\,
	datad => \CU|synch_clear_n~0_combout\,
	combout => \EU|snc|CU|present_state~15_combout\);

-- Location: LCCOMB_X7_Y26_N2
\EU|snc|CU|present_state.idle~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|CU|present_state.idle~feeder_combout\ = \EU|snc|CU|present_state~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|snc|CU|present_state~15_combout\,
	combout => \EU|snc|CU|present_state.idle~feeder_combout\);

-- Location: FF_X7_Y26_N3
\EU|snc|CU|present_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|CU|present_state.idle~feeder_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|CU|present_state.idle~q\);

-- Location: LCCOMB_X7_Y26_N4
\EU|snc|EU|synchronizer|sr_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|synchronizer|sr_out~0_combout\ = (!\EU|snc|CU|WideOr3~0_combout\ & ((\EU|snc|CU|WideOr4~0_combout\) # ((\EU|snc|EU|synchronizer|sr_out~q\) # (\EU|snc|CU|present_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|CU|WideOr3~0_combout\,
	datab => \EU|snc|CU|WideOr4~0_combout\,
	datac => \EU|snc|EU|synchronizer|sr_out~q\,
	datad => \EU|snc|CU|present_state.idle~q\,
	combout => \EU|snc|EU|synchronizer|sr_out~0_combout\);

-- Location: FF_X7_Y26_N5
\EU|snc|EU|synchronizer|sr_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|synchronizer|sr_out~0_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|synchronizer|sr_out~q\);

-- Location: LCCOMB_X7_Y26_N10
\EU|snc|CU|present_state~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|CU|present_state~18_combout\ = (\EU|snc|EU|synchronizer|sr_out~q\ & (\EU|snc|CU|present_state.idle~q\ & (\CU|present_state.reset~q\ & !\CU|present_state.synch_restoring_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|synchronizer|sr_out~q\,
	datab => \EU|snc|CU|present_state.idle~q\,
	datac => \CU|present_state.reset~q\,
	datad => \CU|present_state.synch_restoring_1~q\,
	combout => \EU|snc|CU|present_state~18_combout\);

-- Location: FF_X7_Y26_N11
\EU|snc|CU|present_state.reception_init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|CU|present_state~18_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|CU|present_state.reception_init~q\);

-- Location: LCCOMB_X7_Y26_N20
\EU|snc|EU|data_counter|entry_tff|dummy_out~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|data_counter|entry_tff|dummy_out~2_combout\ = (!\EU|snc|CU|WideOr3~0_combout\ & (\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ $ (((\EU|snc|CU|present_state.reception~q\) # (\EU|snc|CU|present_state.reception_init~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|CU|present_state.reception~q\,
	datab => \EU|snc|CU|present_state.reception_init~q\,
	datac => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datad => \EU|snc|CU|WideOr3~0_combout\,
	combout => \EU|snc|EU|data_counter|entry_tff|dummy_out~2_combout\);

-- Location: FF_X7_Y26_N21
\EU|snc|EU|data_counter|entry_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|data_counter|entry_tff|dummy_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\);

-- Location: LCCOMB_X8_Y26_N18
\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~0_combout\ = (!\EU|snc|CU|WideOr3~0_combout\ & (\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ $ (((\EU|snc|CU|WideOr4~0_combout\ & \EU|snc|EU|data_counter|entry_tff|dummy_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|CU|WideOr4~0_combout\,
	datab => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datac => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|snc|CU|WideOr3~0_combout\,
	combout => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~0_combout\);

-- Location: FF_X8_Y26_N19
\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X3_Y26_N4
\EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~0_combout\ = \EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~q\ $ (((\EU|snc|CU|WideOr4~0_combout\ & (\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & 
-- \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|CU|WideOr4~0_combout\,
	datab => \EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~q\,
	datac => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datad => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~0_combout\);

-- Location: LCCOMB_X3_Y26_N2
\EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~1_combout\ = (\EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~0_combout\ & !\EU|snc|CU|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~0_combout\,
	datad => \EU|snc|CU|WideOr3~0_combout\,
	combout => \EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~1_combout\);

-- Location: FF_X3_Y26_N3
\EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X3_Y26_N22
\EU|snc|EU|burstlen_counter|tgl_in[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_counter|tgl_in\(3) = (\EU|snc|CU|WideOr4~0_combout\ & (\EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~q\ & (\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|CU|WideOr4~0_combout\,
	datab => \EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~q\,
	datac => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datad => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|burstlen_counter|tgl_in\(3));

-- Location: LCCOMB_X3_Y26_N0
\EU|snc|EU|burstlen_counter|g1:3:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_counter|g1:3:chain_tff|dummy_out~0_combout\ = (!\EU|snc|CU|WideOr3~0_combout\ & (\EU|snc|EU|burstlen_counter|tgl_in\(3) $ (\EU|snc|EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|burstlen_counter|tgl_in\(3),
	datac => \EU|snc|EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\,
	datad => \EU|snc|CU|WideOr3~0_combout\,
	combout => \EU|snc|EU|burstlen_counter|g1:3:chain_tff|dummy_out~0_combout\);

-- Location: FF_X3_Y26_N1
\EU|snc|EU|burstlen_counter|g1:3:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|burstlen_counter|g1:3:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X3_Y26_N6
\EU|snc|EU|burstlen_counter|g1:4:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_counter|g1:4:chain_tff|dummy_out~0_combout\ = (!\EU|snc|CU|WideOr3~0_combout\ & (\EU|snc|EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\ $ (((\EU|snc|EU|burstlen_counter|tgl_in\(3) & 
-- \EU|snc|EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|burstlen_counter|tgl_in\(3),
	datab => \EU|snc|EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\,
	datac => \EU|snc|EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\,
	datad => \EU|snc|CU|WideOr3~0_combout\,
	combout => \EU|snc|EU|burstlen_counter|g1:4:chain_tff|dummy_out~0_combout\);

-- Location: FF_X3_Y26_N7
\EU|snc|EU|burstlen_counter|g1:4:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|burstlen_counter|g1:4:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X3_Y26_N14
\EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~0_combout\ = \EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~q\ $ (((\EU|snc|EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\ & (\EU|snc|EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\ & 
-- \EU|snc|EU|burstlen_counter|tgl_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\,
	datab => \EU|snc|EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\,
	datac => \EU|snc|EU|burstlen_counter|tgl_in\(3),
	datad => \EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~0_combout\);

-- Location: LCCOMB_X3_Y26_N24
\EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~1_combout\ = (\EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~0_combout\ & !\EU|snc|CU|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~0_combout\,
	datad => \EU|snc|CU|WideOr3~0_combout\,
	combout => \EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~1_combout\);

-- Location: FF_X3_Y26_N25
\EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X3_Y26_N20
\EU|snc|EU|burstlen_counter|tgl_in[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_counter|tgl_in\(6) = (\EU|snc|EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\ & (\EU|snc|EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\ & (\EU|snc|EU|burstlen_counter|tgl_in\(3) & 
-- \EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\,
	datab => \EU|snc|EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\,
	datac => \EU|snc|EU|burstlen_counter|tgl_in\(3),
	datad => \EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|burstlen_counter|tgl_in\(6));

-- Location: LCCOMB_X4_Y25_N26
\EU|snc|EU|burstlen_counter|g1:6:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_counter|g1:6:chain_tff|dummy_out~0_combout\ = (!\EU|snc|CU|WideOr3~0_combout\ & (\EU|snc|EU|burstlen_counter|tgl_in\(6) $ (\EU|snc|EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|snc|EU|burstlen_counter|tgl_in\(6),
	datac => \EU|snc|EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\,
	datad => \EU|snc|CU|WideOr3~0_combout\,
	combout => \EU|snc|EU|burstlen_counter|g1:6:chain_tff|dummy_out~0_combout\);

-- Location: FF_X4_Y25_N27
\EU|snc|EU|burstlen_counter|g1:6:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|burstlen_counter|g1:6:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X4_Y25_N16
\EU|snc|EU|burstlen_counter|g1:7:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_counter|g1:7:chain_tff|dummy_out~0_combout\ = (!\EU|snc|CU|WideOr3~0_combout\ & (\EU|snc|EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\ $ (((\EU|snc|EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\ & 
-- \EU|snc|EU|burstlen_counter|tgl_in\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\,
	datab => \EU|snc|EU|burstlen_counter|tgl_in\(6),
	datac => \EU|snc|EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\,
	datad => \EU|snc|CU|WideOr3~0_combout\,
	combout => \EU|snc|EU|burstlen_counter|g1:7:chain_tff|dummy_out~0_combout\);

-- Location: FF_X4_Y25_N17
\EU|snc|EU|burstlen_counter|g1:7:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|burstlen_counter|g1:7:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X4_Y25_N8
\EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~0_combout\ = \EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~q\ $ (((\EU|snc|EU|burstlen_counter|tgl_in\(6) & (\EU|snc|EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\ & 
-- \EU|snc|EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~q\,
	datab => \EU|snc|EU|burstlen_counter|tgl_in\(6),
	datac => \EU|snc|EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\,
	datad => \EU|snc|EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~0_combout\);

-- Location: LCCOMB_X4_Y25_N22
\EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~1_combout\ = (\EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~0_combout\ & !\EU|snc|CU|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~0_combout\,
	datad => \EU|snc|CU|WideOr3~0_combout\,
	combout => \EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~1_combout\);

-- Location: FF_X4_Y25_N23
\EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X4_Y25_N10
\EU|snc|EU|burstlen_counter|tgl_in[9]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_counter|tgl_in\(9) = (\EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~q\ & (\EU|snc|EU|burstlen_counter|tgl_in\(6) & (\EU|snc|EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\ & 
-- \EU|snc|EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~q\,
	datab => \EU|snc|EU|burstlen_counter|tgl_in\(6),
	datac => \EU|snc|EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\,
	datad => \EU|snc|EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|burstlen_counter|tgl_in\(9));

-- Location: LCCOMB_X4_Y25_N24
\EU|snc|EU|burstlen_counter|g1:9:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_counter|g1:9:chain_tff|dummy_out~0_combout\ = (!\EU|snc|CU|WideOr3~0_combout\ & (\EU|snc|EU|burstlen_counter|g1:9:chain_tff|dummy_out~q\ $ (\EU|snc|EU|burstlen_counter|tgl_in\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|CU|WideOr3~0_combout\,
	datac => \EU|snc|EU|burstlen_counter|g1:9:chain_tff|dummy_out~q\,
	datad => \EU|snc|EU|burstlen_counter|tgl_in\(9),
	combout => \EU|snc|EU|burstlen_counter|g1:9:chain_tff|dummy_out~0_combout\);

-- Location: FF_X4_Y25_N25
\EU|snc|EU|burstlen_counter|g1:9:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|burstlen_counter|g1:9:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen_counter|g1:9:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X5_Y26_N24
\SSRAM_burstcount[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_burstcount(8),
	o => \SSRAM_burstcount[8]~input0\);

-- Location: LCCOMB_X4_Y26_N28
\EU|burstcnt|reg_out[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt|reg_out[8]~feeder_combout\ = \SSRAM_burstcount[8]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSRAM_burstcount[8]~input0\,
	combout => \EU|burstcnt|reg_out[8]~feeder_combout\);

-- Location: FF_X4_Y26_N29
\EU|burstcnt|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt|reg_out[8]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt|reg_out\(8));

-- Location: FF_X4_Y25_N13
\EU|snc|EU|burstlen|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	asdata => \EU|burstcnt|reg_out\(8),
	sload => VCC,
	ena => \EU|snc|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen|reg_out\(8));

-- Location: LCCOMB_X5_Y26_N2
\SSRAM_burstcount[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_burstcount(9),
	o => \SSRAM_burstcount[9]~input0\);

-- Location: LCCOMB_X4_Y26_N6
\EU|burstcnt|reg_out[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt|reg_out[9]~feeder_combout\ = \SSRAM_burstcount[9]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_burstcount[9]~input0\,
	combout => \EU|burstcnt|reg_out[9]~feeder_combout\);

-- Location: FF_X4_Y26_N7
\EU|burstcnt|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt|reg_out[9]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt|reg_out\(9));

-- Location: FF_X4_Y25_N19
\EU|snc|EU|burstlen|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	asdata => \EU|burstcnt|reg_out\(9),
	sload => VCC,
	ena => \EU|snc|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen|reg_out\(9));

-- Location: LCCOMB_X4_Y25_N12
\EU|snc|EU|burstlen_cmp|equal~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_cmp|equal~5_combout\ = (\EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~q\ & (\EU|snc|EU|burstlen|reg_out\(8) & (\EU|snc|EU|burstlen_counter|g1:9:chain_tff|dummy_out~q\ $ (!\EU|snc|EU|burstlen|reg_out\(9))))) # 
-- (!\EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~q\ & (!\EU|snc|EU|burstlen|reg_out\(8) & (\EU|snc|EU|burstlen_counter|g1:9:chain_tff|dummy_out~q\ $ (!\EU|snc|EU|burstlen|reg_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|burstlen_counter|g1:8:chain_tff|dummy_out~q\,
	datab => \EU|snc|EU|burstlen_counter|g1:9:chain_tff|dummy_out~q\,
	datac => \EU|snc|EU|burstlen|reg_out\(8),
	datad => \EU|snc|EU|burstlen|reg_out\(9),
	combout => \EU|snc|EU|burstlen_cmp|equal~5_combout\);

-- Location: LCCOMB_X2_Y26_N20
\SSRAM_burstcount[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_burstcount(3),
	o => \SSRAM_burstcount[3]~input0\);

-- Location: LCCOMB_X4_Y26_N26
\EU|burstcnt|reg_out[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt|reg_out[3]~feeder_combout\ = \SSRAM_burstcount[3]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_burstcount[3]~input0\,
	combout => \EU|burstcnt|reg_out[3]~feeder_combout\);

-- Location: FF_X4_Y26_N27
\EU|burstcnt|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt|reg_out[3]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt|reg_out\(3));

-- Location: LCCOMB_X3_Y26_N10
\EU|snc|EU|burstlen|reg_out[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen|reg_out[3]~feeder_combout\ = \EU|burstcnt|reg_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|burstcnt|reg_out\(3),
	combout => \EU|snc|EU|burstlen|reg_out[3]~feeder_combout\);

-- Location: FF_X3_Y26_N11
\EU|snc|EU|burstlen|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|burstlen|reg_out[3]~feeder_combout\,
	ena => \EU|snc|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen|reg_out\(3));

-- Location: LCCOMB_X1_Y22_N0
\SSRAM_burstcount[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_burstcount(2),
	o => \SSRAM_burstcount[2]~input0\);

-- Location: LCCOMB_X4_Y26_N8
\EU|burstcnt|reg_out[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt|reg_out[2]~feeder_combout\ = \SSRAM_burstcount[2]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_burstcount[2]~input0\,
	combout => \EU|burstcnt|reg_out[2]~feeder_combout\);

-- Location: FF_X4_Y26_N9
\EU|burstcnt|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt|reg_out[2]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt|reg_out\(2));

-- Location: FF_X3_Y26_N13
\EU|snc|EU|burstlen|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	asdata => \EU|burstcnt|reg_out\(2),
	sload => VCC,
	ena => \EU|snc|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen|reg_out\(2));

-- Location: LCCOMB_X3_Y26_N12
\EU|snc|EU|burstlen_cmp|equal~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_cmp|equal~1_combout\ = (\EU|snc|EU|burstlen|reg_out\(3) & (\EU|snc|EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\ & (\EU|snc|EU|burstlen|reg_out\(2) $ (!\EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~q\)))) # 
-- (!\EU|snc|EU|burstlen|reg_out\(3) & (!\EU|snc|EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\ & (\EU|snc|EU|burstlen|reg_out\(2) $ (!\EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|burstlen|reg_out\(3),
	datab => \EU|snc|EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\,
	datac => \EU|snc|EU|burstlen|reg_out\(2),
	datad => \EU|snc|EU|burstlen_counter|g1:2:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|burstlen_cmp|equal~1_combout\);

-- Location: LCCOMB_X1_Y22_N6
\SSRAM_burstcount[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_burstcount(4),
	o => \SSRAM_burstcount[4]~input0\);

-- Location: LCCOMB_X4_Y26_N0
\EU|burstcnt|reg_out[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt|reg_out[4]~feeder_combout\ = \SSRAM_burstcount[4]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SSRAM_burstcount[4]~input0\,
	combout => \EU|burstcnt|reg_out[4]~feeder_combout\);

-- Location: FF_X4_Y26_N1
\EU|burstcnt|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt|reg_out[4]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt|reg_out\(4));

-- Location: FF_X3_Y26_N9
\EU|snc|EU|burstlen|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	asdata => \EU|burstcnt|reg_out\(4),
	sload => VCC,
	ena => \EU|snc|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen|reg_out\(4));

-- Location: LCCOMB_X5_Y26_N26
\SSRAM_burstcount[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_burstcount(5),
	o => \SSRAM_burstcount[5]~input0\);

-- Location: LCCOMB_X4_Y26_N22
\EU|burstcnt|reg_out[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt|reg_out[5]~feeder_combout\ = \SSRAM_burstcount[5]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_burstcount[5]~input0\,
	combout => \EU|burstcnt|reg_out[5]~feeder_combout\);

-- Location: FF_X4_Y26_N23
\EU|burstcnt|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt|reg_out[5]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt|reg_out\(5));

-- Location: LCCOMB_X3_Y26_N18
\EU|snc|EU|burstlen|reg_out[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen|reg_out[5]~feeder_combout\ = \EU|burstcnt|reg_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|burstcnt|reg_out\(5),
	combout => \EU|snc|EU|burstlen|reg_out[5]~feeder_combout\);

-- Location: FF_X3_Y26_N19
\EU|snc|EU|burstlen|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|burstlen|reg_out[5]~feeder_combout\,
	ena => \EU|snc|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen|reg_out\(5));

-- Location: LCCOMB_X3_Y26_N8
\EU|snc|EU|burstlen_cmp|equal~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_cmp|equal~2_combout\ = (\EU|snc|EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\ & (\EU|snc|EU|burstlen|reg_out\(4) & (\EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~q\ $ (!\EU|snc|EU|burstlen|reg_out\(5))))) # 
-- (!\EU|snc|EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\ & (!\EU|snc|EU|burstlen|reg_out\(4) & (\EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~q\ $ (!\EU|snc|EU|burstlen|reg_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\,
	datab => \EU|snc|EU|burstlen_counter|g1:5:chain_tff|dummy_out~q\,
	datac => \EU|snc|EU|burstlen|reg_out\(4),
	datad => \EU|snc|EU|burstlen|reg_out\(5),
	combout => \EU|snc|EU|burstlen_cmp|equal~2_combout\);

-- Location: LCCOMB_X3_Y25_N14
\SSRAM_burstcount[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_burstcount(0),
	o => \SSRAM_burstcount[0]~input0\);

-- Location: LCCOMB_X4_Y26_N16
\EU|burstcnt|reg_out[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt|reg_out[0]~feeder_combout\ = \SSRAM_burstcount[0]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_burstcount[0]~input0\,
	combout => \EU|burstcnt|reg_out[0]~feeder_combout\);

-- Location: FF_X4_Y26_N17
\EU|burstcnt|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt|reg_out[0]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt|reg_out\(0));

-- Location: LCCOMB_X3_Y26_N16
\EU|snc|EU|burstlen|reg_out[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen|reg_out[0]~feeder_combout\ = \EU|burstcnt|reg_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|burstcnt|reg_out\(0),
	combout => \EU|snc|EU|burstlen|reg_out[0]~feeder_combout\);

-- Location: FF_X3_Y26_N17
\EU|snc|EU|burstlen|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|burstlen|reg_out[0]~feeder_combout\,
	ena => \EU|snc|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen|reg_out\(0));

-- Location: LCCOMB_X3_Y22_N0
\SSRAM_burstcount[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_burstcount(1),
	o => \SSRAM_burstcount[1]~input0\);

-- Location: LCCOMB_X4_Y26_N10
\EU|burstcnt|reg_out[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt|reg_out[1]~feeder_combout\ = \SSRAM_burstcount[1]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSRAM_burstcount[1]~input0\,
	combout => \EU|burstcnt|reg_out[1]~feeder_combout\);

-- Location: FF_X4_Y26_N11
\EU|burstcnt|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt|reg_out[1]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt|reg_out\(1));

-- Location: FF_X3_Y26_N31
\EU|snc|EU|burstlen|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	asdata => \EU|burstcnt|reg_out\(1),
	sload => VCC,
	ena => \EU|snc|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen|reg_out\(1));

-- Location: LCCOMB_X3_Y26_N30
\EU|snc|EU|burstlen_cmp|equal~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_cmp|equal~0_combout\ = (\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & (\EU|snc|EU|burstlen|reg_out\(0) & (\EU|snc|EU|burstlen|reg_out\(1) $ (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # 
-- (!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & (!\EU|snc|EU|burstlen|reg_out\(0) & (\EU|snc|EU|burstlen|reg_out\(1) $ (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|snc|EU|burstlen|reg_out\(0),
	datac => \EU|snc|EU|burstlen|reg_out\(1),
	datad => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|burstlen_cmp|equal~0_combout\);

-- Location: LCCOMB_X5_Y26_N22
\SSRAM_burstcount[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_burstcount(7),
	o => \SSRAM_burstcount[7]~input0\);

-- Location: LCCOMB_X4_Y26_N30
\EU|burstcnt|reg_out[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt|reg_out[7]~feeder_combout\ = \SSRAM_burstcount[7]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_burstcount[7]~input0\,
	combout => \EU|burstcnt|reg_out[7]~feeder_combout\);

-- Location: FF_X4_Y26_N31
\EU|burstcnt|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt|reg_out[7]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt|reg_out\(7));

-- Location: FF_X4_Y25_N3
\EU|snc|EU|burstlen|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	asdata => \EU|burstcnt|reg_out\(7),
	sload => VCC,
	ena => \EU|snc|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen|reg_out\(7));

-- Location: LCCOMB_X5_Y26_N8
\SSRAM_burstcount[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_burstcount(6),
	o => \SSRAM_burstcount[6]~input0\);

-- Location: LCCOMB_X4_Y26_N4
\EU|burstcnt|reg_out[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt|reg_out[6]~feeder_combout\ = \SSRAM_burstcount[6]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_burstcount[6]~input0\,
	combout => \EU|burstcnt|reg_out[6]~feeder_combout\);

-- Location: FF_X4_Y26_N5
\EU|burstcnt|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt|reg_out[6]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt|reg_out\(6));

-- Location: FF_X4_Y25_N21
\EU|snc|EU|burstlen|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	asdata => \EU|burstcnt|reg_out\(6),
	sload => VCC,
	ena => \EU|snc|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen|reg_out\(6));

-- Location: LCCOMB_X4_Y25_N20
\EU|snc|EU|burstlen_cmp|equal~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_cmp|equal~3_combout\ = (\EU|snc|EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\ & (\EU|snc|EU|burstlen|reg_out\(6) & (\EU|snc|EU|burstlen|reg_out\(7) $ (!\EU|snc|EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\)))) # 
-- (!\EU|snc|EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\ & (!\EU|snc|EU|burstlen|reg_out\(6) & (\EU|snc|EU|burstlen|reg_out\(7) $ (!\EU|snc|EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\,
	datab => \EU|snc|EU|burstlen|reg_out\(7),
	datac => \EU|snc|EU|burstlen|reg_out\(6),
	datad => \EU|snc|EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|burstlen_cmp|equal~3_combout\);

-- Location: LCCOMB_X3_Y26_N28
\EU|snc|EU|burstlen_cmp|equal~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_cmp|equal~4_combout\ = (\EU|snc|EU|burstlen_cmp|equal~1_combout\ & (\EU|snc|EU|burstlen_cmp|equal~2_combout\ & (\EU|snc|EU|burstlen_cmp|equal~0_combout\ & \EU|snc|EU|burstlen_cmp|equal~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|burstlen_cmp|equal~1_combout\,
	datab => \EU|snc|EU|burstlen_cmp|equal~2_combout\,
	datac => \EU|snc|EU|burstlen_cmp|equal~0_combout\,
	datad => \EU|snc|EU|burstlen_cmp|equal~3_combout\,
	combout => \EU|snc|EU|burstlen_cmp|equal~4_combout\);

-- Location: LCCOMB_X4_Y25_N30
\EU|snc|EU|burstlen_counter|g1:10:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_counter|g1:10:chain_tff|dummy_out~0_combout\ = (!\EU|snc|CU|WideOr3~0_combout\ & (\EU|snc|EU|burstlen_counter|g1:10:chain_tff|dummy_out~q\ $ (((\EU|snc|EU|burstlen_counter|tgl_in\(9) & 
-- \EU|snc|EU|burstlen_counter|g1:9:chain_tff|dummy_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|burstlen_counter|tgl_in\(9),
	datab => \EU|snc|EU|burstlen_counter|g1:9:chain_tff|dummy_out~q\,
	datac => \EU|snc|EU|burstlen_counter|g1:10:chain_tff|dummy_out~q\,
	datad => \EU|snc|CU|WideOr3~0_combout\,
	combout => \EU|snc|EU|burstlen_counter|g1:10:chain_tff|dummy_out~0_combout\);

-- Location: FF_X4_Y25_N31
\EU|snc|EU|burstlen_counter|g1:10:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|burstlen_counter|g1:10:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen_counter|g1:10:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X5_Y26_N16
\SSRAM_burstcount[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_burstcount(10),
	o => \SSRAM_burstcount[10]~input0\);

-- Location: LCCOMB_X4_Y26_N20
\EU|burstcnt|reg_out[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt|reg_out[10]~feeder_combout\ = \SSRAM_burstcount[10]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_burstcount[10]~input0\,
	combout => \EU|burstcnt|reg_out[10]~feeder_combout\);

-- Location: FF_X4_Y26_N21
\EU|burstcnt|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt|reg_out[10]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt|reg_out\(10));

-- Location: LCCOMB_X4_Y25_N28
\EU|snc|EU|burstlen|reg_out[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen|reg_out[10]~feeder_combout\ = \EU|burstcnt|reg_out\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|burstcnt|reg_out\(10),
	combout => \EU|snc|EU|burstlen|reg_out[10]~feeder_combout\);

-- Location: FF_X4_Y25_N29
\EU|snc|EU|burstlen|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|burstlen|reg_out[10]~feeder_combout\,
	ena => \EU|snc|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|burstlen|reg_out\(10));

-- Location: LCCOMB_X4_Y25_N0
\EU|snc|EU|burstlen_cmp|equal\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|burstlen_cmp|equal~combout\ = (\EU|snc|EU|burstlen_cmp|equal~5_combout\ & (\EU|snc|EU|burstlen_cmp|equal~4_combout\ & (\EU|snc|EU|burstlen_counter|g1:10:chain_tff|dummy_out~q\ $ (!\EU|snc|EU|burstlen|reg_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|burstlen_cmp|equal~5_combout\,
	datab => \EU|snc|EU|burstlen_cmp|equal~4_combout\,
	datac => \EU|snc|EU|burstlen_counter|g1:10:chain_tff|dummy_out~q\,
	datad => \EU|snc|EU|burstlen|reg_out\(10),
	combout => \EU|snc|EU|burstlen_cmp|equal~combout\);

-- Location: LCCOMB_X7_Y26_N22
\EU|snc|CU|present_state~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|CU|present_state~17_combout\ = (\CU|synch_clear_n~0_combout\ & ((\EU|snc|CU|present_state.reception_init~q\) # ((!\EU|snc|EU|burstlen_cmp|equal~combout\ & \EU|snc|CU|present_state.reception~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|CU|present_state.reception_init~q\,
	datab => \EU|snc|EU|burstlen_cmp|equal~combout\,
	datac => \EU|snc|CU|present_state.reception~q\,
	datad => \CU|synch_clear_n~0_combout\,
	combout => \EU|snc|CU|present_state~17_combout\);

-- Location: FF_X7_Y26_N23
\EU|snc|CU|present_state.reception\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|CU|present_state~17_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|CU|present_state.reception~q\);

-- Location: LCCOMB_X7_Y26_N6
\EU|snc|CU|present_state~21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|CU|present_state~21_combout\ = (\EU|snc|CU|present_state.reception~q\ & (\EU|snc|EU|burstlen_cmp|equal~combout\ & (\CU|present_state.reset~q\ & !\CU|present_state.synch_restoring_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|CU|present_state.reception~q\,
	datab => \EU|snc|EU|burstlen_cmp|equal~combout\,
	datac => \CU|present_state.reset~q\,
	datad => \CU|present_state.synch_restoring_1~q\,
	combout => \EU|snc|CU|present_state~21_combout\);

-- Location: FF_X7_Y26_N7
\EU|snc|CU|present_state.reception_end_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|CU|present_state~21_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|CU|present_state.reception_end_1~q\);

-- Location: LCCOMB_X7_Y26_N24
\EU|snc|CU|present_state~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|CU|present_state~20_combout\ = (\EU|snc|CU|present_state.reception_end_1~q\ & (\CU|present_state.reset~q\ & !\CU|present_state.synch_restoring_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|CU|present_state.reception_end_1~q\,
	datac => \CU|present_state.reset~q\,
	datad => \CU|present_state.synch_restoring_1~q\,
	combout => \EU|snc|CU|present_state~20_combout\);

-- Location: FF_X7_Y26_N25
\EU|snc|CU|present_state.reception_end_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|CU|present_state~20_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|CU|present_state.reception_end_2~q\);

-- Location: LCCOMB_X7_Y26_N28
\EU|snc|CU|present_state~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|CU|present_state~19_combout\ = (!\CU|present_state.synch_restoring_1~q\ & (\CU|present_state.reset~q\ & ((\EU|snc|CU|present_state.idle_clear~q\) # (\EU|snc|CU|present_state.reception_end_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.synch_restoring_1~q\,
	datab => \CU|present_state.reset~q\,
	datac => \EU|snc|CU|present_state.idle_clear~q\,
	datad => \EU|snc|CU|present_state.reception_end_2~q\,
	combout => \EU|snc|CU|present_state~19_combout\);

-- Location: FF_X7_Y26_N29
\EU|snc|CU|present_state.idle_clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|CU|present_state~19_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|CU|present_state.idle_clear~q\);

-- Location: LCCOMB_X8_Y26_N8
\EU|snc|CU|WideOr5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|CU|WideOr5~combout\ = (\EU|snc|CU|present_state.reset~q\ & (!\EU|snc|CU|present_state.idle_clear~q\ & (!\EU|snc|CU|present_state.idle_disabled~q\ & !\EU|snc|CU|present_state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|CU|present_state.reset~q\,
	datab => \EU|snc|CU|present_state.idle_clear~q\,
	datac => \EU|snc|CU|present_state.idle_disabled~q\,
	datad => \EU|snc|CU|present_state.idle~q\,
	combout => \EU|snc|CU|WideOr5~combout\);

-- Location: LCCOMB_X8_Y26_N0
\EU|snc|CU|WideOr5~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|CU|WideOr5~0_combout\ = (!\EU|snc|CU|present_state.idle_disabled~q\ & !\EU|snc|CU|present_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|snc|CU|present_state.idle_disabled~q\,
	datad => \EU|snc|CU|present_state.idle~q\,
	combout => \EU|snc|CU|WideOr5~0_combout\);

-- Location: FF_X8_Y26_N9
\EU|snc|EU|busy_pipe|dff_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|CU|WideOr5~combout\,
	sclr => \EU|snc|CU|ALT_INV_present_state.reset~q\,
	ena => \EU|snc|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|busy_pipe|dff_out~q\);

-- Location: LCCOMB_X7_Y25_N20
\CU|Selector4~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector4~0_combout\ = (\EU|op_tracker|dff_out~q\ & ((\CU|present_state.CA_end~q\) # ((\CU|present_state.read_wait_1~q\ & !\EU|snc|EU|busy_pipe|dff_out~q\)))) # (!\EU|op_tracker|dff_out~q\ & (((\CU|present_state.read_wait_1~q\ & 
-- !\EU|snc|EU|busy_pipe|dff_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|op_tracker|dff_out~q\,
	datab => \CU|present_state.CA_end~q\,
	datac => \CU|present_state.read_wait_1~q\,
	datad => \EU|snc|EU|busy_pipe|dff_out~q\,
	combout => \CU|Selector4~0_combout\);

-- Location: FF_X7_Y25_N21
\CU|present_state.read_wait_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector4~0_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.read_wait_1~q\);

-- Location: LCCOMB_X7_Y25_N8
\CU|next_state.read_wait_2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.read_wait_2~0_combout\ = (\EU|snc|EU|busy_pipe|dff_out~q\ & ((\CU|present_state.read_wait_1~q\) # (\CU|present_state.read_wait_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.read_wait_1~q\,
	datac => \CU|present_state.read_wait_2~q\,
	datad => \EU|snc|EU|busy_pipe|dff_out~q\,
	combout => \CU|next_state.read_wait_2~0_combout\);

-- Location: FF_X5_Y25_N23
\CU|present_state.read_wait_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|next_state.read_wait_2~0_combout\,
	clrn => \rst_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.read_wait_2~q\);

-- Location: LCCOMB_X8_Y25_N26
\CU|next_state.read_end~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.read_end~0_combout\ = (\CU|present_state.read_wait_2~q\ & !\EU|snc|EU|busy_pipe|dff_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.read_wait_2~q\,
	datad => \EU|snc|EU|busy_pipe|dff_out~q\,
	combout => \CU|next_state.read_end~0_combout\);

-- Location: FF_X8_Y25_N27
\CU|present_state.read_end\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.read_end~0_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.read_end~q\);

-- Location: FF_X8_Y25_N13
\CU|present_state.synch_restoring_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|present_state.read_end~q\,
	clrn => \rst_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.synch_restoring_1~q\);

-- Location: FF_X8_Y25_N9
\CU|present_state.synch_restoring_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|present_state.synch_restoring_1~q\,
	clrn => \rst_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.synch_restoring_2~q\);

-- Location: FF_X8_Y25_N5
\EU|dpd_req_tracker|dff_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EU|dpd~combout\,
	sload => VCC,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dpd_req_tracker|dff_out~q\);

-- Location: LCCOMB_X8_Y25_N8
\CU|Selector2~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector2~1_combout\ = (\CU|present_state.writemem_DQ_end~q\) # ((\CU|present_state.synch_restoring_2~q\) # ((\CU|present_state.writeconfig~q\ & !\EU|dpd_req_tracker|dff_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.writeconfig~q\,
	datab => \CU|present_state.writemem_DQ_end~q\,
	datac => \CU|present_state.synch_restoring_2~q\,
	datad => \EU|dpd_req_tracker|dff_out~q\,
	combout => \CU|Selector2~1_combout\);

-- Location: LCCOMB_X8_Y25_N20
\CU|Selector2~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector2~4_combout\ = (\CU|Selector2~0_combout\) # ((\CU|Selector2~1_combout\) # ((\CU|Selector2~3_combout\ & \CU|present_state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Selector2~3_combout\,
	datab => \CU|Selector2~0_combout\,
	datac => \CU|present_state.idle~q\,
	datad => \CU|Selector2~1_combout\,
	combout => \CU|Selector2~4_combout\);

-- Location: FF_X8_Y25_N21
\CU|present_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector2~4_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.idle~q\);

-- Location: LCCOMB_X8_Y25_N4
\CU|WideOr12~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr12~0_combout\ = (!\CU|present_state.reset_exit_begin~q\ & (\CU|present_state.reset~q\ & !\CU|present_state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.reset_exit_begin~q\,
	datab => \CU|present_state.reset~q\,
	datad => \CU|present_state.idle~q\,
	combout => \CU|WideOr12~0_combout\);

-- Location: LCCOMB_X10_Y25_N24
\EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~0_combout\ = (\CU|WideOr12~0_combout\ & (\EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\ $ (((\EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out~q\ & \EU|deadline_tim|cnt|tgl_in\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr12~0_combout\,
	datab => \EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out~q\,
	datac => \EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|tgl_in\(3),
	combout => \EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~0_combout\);

-- Location: FF_X10_Y25_N25
\EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X10_Y25_N18
\EU|deadline_tim|cnt|tgl_in[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|tgl_in\(6) = (\EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\ & (\EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out~q\ & (\EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out~q\ & \EU|deadline_tim|cnt|tgl_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\,
	datab => \EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out~q\,
	datac => \EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|tgl_in\(3),
	combout => \EU|deadline_tim|cnt|tgl_in\(6));

-- Location: LCCOMB_X10_Y25_N12
\EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~0_combout\ = (\CU|WideOr12~0_combout\ & (\EU|deadline_tim|cnt|tgl_in\(6) $ (\EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|deadline_tim|cnt|tgl_in\(6),
	datac => \EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~q\,
	datad => \CU|WideOr12~0_combout\,
	combout => \EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~0_combout\);

-- Location: FF_X10_Y25_N13
\EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X10_Y25_N10
\EU|deadline_tim|tim_20~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|tim_20~1_combout\ = (!\EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~q\ & (!\EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out~q\ & (!\EU|deadline_tim|cnt|g1:8:chain_tff|dummy_out~q\ & !\EU|deadline_tim|cnt|g1:7:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~q\,
	datab => \EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out~q\,
	datac => \EU|deadline_tim|cnt|g1:8:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|g1:7:chain_tff|dummy_out~q\,
	combout => \EU|deadline_tim|tim_20~1_combout\);

-- Location: LCCOMB_X10_Y25_N28
\EU|deadline_tim|tim_20~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|tim_20~0_combout\ = (!\EU|deadline_tim|cnt|g1:13:chain_tff|dummy_out~q\ & (!\EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~q\ & (!\EU|deadline_tim|cnt|g1:12:chain_tff|dummy_out~q\ & !\EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|cnt|g1:13:chain_tff|dummy_out~q\,
	datab => \EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~q\,
	datac => \EU|deadline_tim|cnt|g1:12:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|g1:3:chain_tff|dummy_out~q\,
	combout => \EU|deadline_tim|tim_20~0_combout\);

-- Location: LCCOMB_X10_Y25_N0
\EU|deadline_tim|tim_20~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|tim_20~2_combout\ = (\EU|deadline_tim|tim_20~1_combout\ & (!\EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out~q\ & (!\EU|deadline_tim|cnt|g1:10:chain_tff|dummy_out~q\ & \EU|deadline_tim|tim_20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|tim_20~1_combout\,
	datab => \EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out~q\,
	datac => \EU|deadline_tim|cnt|g1:10:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|tim_20~0_combout\,
	combout => \EU|deadline_tim|tim_20~2_combout\);

-- Location: LCCOMB_X8_Y25_N30
\CU|Selector1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector1~0_combout\ = ((\CU|present_state.reset_wait~q\ & ((!\EU|deadline_tim|tim_20~3_combout\) # (!\EU|deadline_tim|tim_20~2_combout\)))) # (!\CU|present_state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.reset~q\,
	datab => \EU|deadline_tim|tim_20~2_combout\,
	datac => \CU|present_state.reset_wait~q\,
	datad => \EU|deadline_tim|tim_20~3_combout\,
	combout => \CU|Selector1~0_combout\);

-- Location: FF_X8_Y25_N31
\CU|present_state.reset_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector1~0_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.reset_wait~q\);

-- Location: LCCOMB_X8_Y25_N10
\CU|next_state.reset_exit_begin~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.reset_exit_begin~0_combout\ = (\CU|present_state.reset_wait~q\ & (\EU|deadline_tim|tim_20~2_combout\ & \EU|deadline_tim|tim_20~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.reset_wait~q\,
	datac => \EU|deadline_tim|tim_20~2_combout\,
	datad => \EU|deadline_tim|tim_20~3_combout\,
	combout => \CU|next_state.reset_exit_begin~0_combout\);

-- Location: FF_X8_Y25_N11
\CU|present_state.reset_exit_begin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.reset_exit_begin~0_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.reset_exit_begin~q\);

-- Location: LCCOMB_X9_Y25_N12
\EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~2_combout\ = \EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~q\ $ (((\EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out~q\ & (\EU|deadline_tim|cnt|tgl_in\(9) & \EU|deadline_tim|cnt|g1:10:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~q\,
	datab => \EU|deadline_tim|cnt|g1:9:chain_tff|dummy_out~q\,
	datac => \EU|deadline_tim|cnt|tgl_in\(9),
	datad => \EU|deadline_tim|cnt|g1:10:chain_tff|dummy_out~q\,
	combout => \EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~2_combout\);

-- Location: LCCOMB_X9_Y25_N6
\EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~3_combout\ = (!\CU|present_state.reset_exit_begin~q\ & (!\CU|present_state.idle~q\ & (\CU|present_state.reset~q\ & \EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.reset_exit_begin~q\,
	datab => \CU|present_state.idle~q\,
	datac => \CU|present_state.reset~q\,
	datad => \EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~2_combout\,
	combout => \EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~3_combout\);

-- Location: FF_X9_Y25_N7
\EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X9_Y25_N28
\EU|deadline_tim|tim_1000~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|tim_1000~2_combout\ = (!\EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~q\ & (!\EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\ & (!\EU|deadline_tim|cnt|g1:13:chain_tff|dummy_out~q\ & !\EU|deadline_tim|cnt|g1:12:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|cnt|g1:11:chain_tff|dummy_out~q\,
	datab => \EU|deadline_tim|cnt|g1:4:chain_tff|dummy_out~q\,
	datac => \EU|deadline_tim|cnt|g1:13:chain_tff|dummy_out~q\,
	datad => \EU|deadline_tim|cnt|g1:12:chain_tff|dummy_out~q\,
	combout => \EU|deadline_tim|tim_1000~2_combout\);

-- Location: LCCOMB_X10_Y25_N20
\EU|deadline_tim|tim_1000~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|tim_1000~3_combout\ = (\EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~q\ & (\EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out~q\ & \EU|deadline_tim|cnt|g1:8:chain_tff|dummy_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_tim|cnt|g1:6:chain_tff|dummy_out~q\,
	datab => \EU|deadline_tim|cnt|g1:5:chain_tff|dummy_out~q\,
	datac => \EU|deadline_tim|cnt|g1:8:chain_tff|dummy_out~q\,
	combout => \EU|deadline_tim|tim_1000~3_combout\);

-- Location: LCCOMB_X9_Y25_N26
\EU|deadline_tim|tim_1000~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_tim|tim_1000~4_combout\ = (\EU|deadline_tim|tim_1000~2_combout\ & (\EU|deadline_tim|tim_1000~3_combout\ & \EU|deadline_tim|tim_1000~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|deadline_tim|tim_1000~2_combout\,
	datac => \EU|deadline_tim|tim_1000~3_combout\,
	datad => \EU|deadline_tim|tim_1000~1_combout\,
	combout => \EU|deadline_tim|tim_1000~4_combout\);

-- Location: LCCOMB_X8_Y25_N24
\CU|Selector7~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector7~0_combout\ = (\CU|present_state.writeconfig~q\ & ((\EU|dpd_req_tracker|dff_out~q\) # ((!\EU|deadline_tim|tim_1000~4_combout\ & \CU|present_state.wait_dpd_in~q\)))) # (!\CU|present_state.writeconfig~q\ & (!\EU|deadline_tim|tim_1000~4_combout\ 
-- & (\CU|present_state.wait_dpd_in~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.writeconfig~q\,
	datab => \EU|deadline_tim|tim_1000~4_combout\,
	datac => \CU|present_state.wait_dpd_in~q\,
	datad => \EU|dpd_req_tracker|dff_out~q\,
	combout => \CU|Selector7~0_combout\);

-- Location: FF_X8_Y25_N25
\CU|present_state.wait_dpd_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector7~0_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.wait_dpd_in~q\);

-- Location: LCCOMB_X8_Y25_N16
\EU|dpd_tracker|sr_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dpd_tracker|sr_out~0_combout\ = (!\CU|present_state.writeconfig_init~q\ & (\CU|present_state.reset~q\ & ((\EU|dpd_tracker|sr_out~q\) # (\CU|present_state.wait_dpd_in~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.writeconfig_init~q\,
	datab => \CU|present_state.reset~q\,
	datac => \EU|dpd_tracker|sr_out~q\,
	datad => \CU|present_state.wait_dpd_in~q\,
	combout => \EU|dpd_tracker|sr_out~0_combout\);

-- Location: FF_X8_Y25_N17
\EU|dpd_tracker|sr_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dpd_tracker|sr_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dpd_tracker|sr_out~q\);

-- Location: LCCOMB_X5_Y25_N22
\CU|Selector3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector3~0_combout\ = (!\EU|dpd_tracker|sr_out~q\ & (\SSRAM_address_spacing~input0\ & \CU|Selector8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|dpd_tracker|sr_out~q\,
	datab => \SSRAM_address_spacing~input0\,
	datad => \CU|Selector8~0_combout\,
	combout => \CU|Selector3~0_combout\);

-- Location: LCCOMB_X5_Y25_N2
\CU|Selector3~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector3~1_combout\ = (\CU|Selector3~0_combout\) # ((\CU|present_state.wait_dpd_out~q\ & \EU|deadline_tim|tim_15000~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|Selector3~0_combout\,
	datac => \CU|present_state.wait_dpd_out~q\,
	datad => \EU|deadline_tim|tim_15000~2_combout\,
	combout => \CU|Selector3~1_combout\);

-- Location: FF_X5_Y25_N3
\CU|present_state.writeconfig_init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector3~1_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writeconfig_init~q\);

-- Location: LCCOMB_X5_Y25_N12
\CU|present_state.writeconfig_CA_init~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state.writeconfig_CA_init~feeder_combout\ = \CU|present_state.writeconfig_init~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|present_state.writeconfig_init~q\,
	combout => \CU|present_state.writeconfig_CA_init~feeder_combout\);

-- Location: FF_X5_Y25_N13
\CU|present_state.writeconfig_CA_init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|present_state.writeconfig_CA_init~feeder_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writeconfig_CA_init~q\);

-- Location: FF_X5_Y27_N11
\CU|present_state.CA_writeconfig_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|present_state.writeconfig_CA_init~q\,
	clrn => \rst_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.CA_writeconfig_1~q\);

-- Location: LCCOMB_X5_Y27_N10
\CU|CA_sel[0]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|CA_sel\(0) = (\CU|present_state.CA_writeconfig_1~q\) # (\CU|present_state.CA1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.CA_writeconfig_1~q\,
	datad => \CU|present_state.CA1~q\,
	combout => \CU|CA_sel\(0));

-- Location: LCCOMB_X5_Y25_N14
\CU|WideOr20~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr20~0_combout\ = (!\CU|present_state.CA1~q\ & (!\CU|present_state.CA2~q\ & (!\CU|present_state.writeconfig_CA_init~q\ & !\CU|present_state.CA_init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.CA1~q\,
	datab => \CU|present_state.CA2~q\,
	datac => \CU|present_state.writeconfig_CA_init~q\,
	datad => \CU|present_state.CA_init~q\,
	combout => \CU|WideOr20~0_combout\);

-- Location: LCCOMB_X5_Y27_N18
\CU|WideOr20~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr20~1_combout\ = (\CU|WideOr20~0_combout\ & (!\CU|present_state.CA_writeconfig_1~q\ & !\CU|present_state.CA_writeconfig_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr20~0_combout\,
	datab => \CU|present_state.CA_writeconfig_1~q\,
	datac => \CU|present_state.CA_writeconfig_2~q\,
	combout => \CU|WideOr20~1_combout\);

-- Location: LCCOMB_X5_Y27_N4
\EU|dqmux|out_mux[8]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[8]~0_combout\ = (\CU|CA_sel\(0) & (!\CU|present_state.CA_writeconfig_2~q\ & (!\CU|present_state.CA2~q\ & !\CU|WideOr20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|CA_sel\(0),
	datab => \CU|present_state.CA_writeconfig_2~q\,
	datac => \CU|present_state.CA2~q\,
	datad => \CU|WideOr20~1_combout\,
	combout => \EU|dqmux|out_mux[8]~0_combout\);

-- Location: LCCOMB_X5_Y26_N14
\SSRAM_in[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_in(8),
	o => \SSRAM_in[8]~input0\);

-- Location: LCCOMB_X3_Y27_N24
\EU|datain|reg_out[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datain|reg_out[8]~feeder_combout\ = \SSRAM_in[8]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SSRAM_in[8]~input0\,
	combout => \EU|datain|reg_out[8]~feeder_combout\);

-- Location: LCCOMB_X6_Y25_N6
\CU|WideOr15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr15~combout\ = (\CU|present_state.writemem_DQ_init~q\) # ((\CU|present_state.writemem_DQ~q\) # (\CU|present_state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.writemem_DQ_init~q\,
	datab => \CU|present_state.writemem_DQ~q\,
	datad => \CU|present_state.idle~q\,
	combout => \CU|WideOr15~combout\);

-- Location: FF_X3_Y27_N25
\EU|datain|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datain|reg_out[8]~feeder_combout\,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain|reg_out\(8));

-- Location: LCCOMB_X4_Y24_N4
\SSRAM_address[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(11),
	o => \SSRAM_address[11]~input0\);

-- Location: LCCOMB_X5_Y24_N16
\EU|up_address|reg_out[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|up_address|reg_out[8]~feeder_combout\ = \SSRAM_address[11]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSRAM_address[11]~input0\,
	combout => \EU|up_address|reg_out[8]~feeder_combout\);

-- Location: FF_X5_Y24_N17
\EU|up_address|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|up_address|reg_out[8]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|up_address|reg_out\(8));

-- Location: LCCOMB_X5_Y24_N12
\EU|CA|CA1|reg_out[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|CA|CA1|reg_out[8]~feeder_combout\ = \EU|up_address|reg_out\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|up_address|reg_out\(8),
	combout => \EU|CA|CA1|reg_out[8]~feeder_combout\);

-- Location: LCCOMB_X5_Y25_N18
\CU|WideOr17~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr17~0_combout\ = (\CU|present_state.readconfig_init~q\) # ((\CU|present_state.readmem_init~q\) # ((\CU|present_state.writemem_init~q\) # (\CU|present_state.writeconfig_init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.readconfig_init~q\,
	datab => \CU|present_state.readmem_init~q\,
	datac => \CU|present_state.writemem_init~q\,
	datad => \CU|present_state.writeconfig_init~q\,
	combout => \CU|WideOr17~0_combout\);

-- Location: FF_X5_Y24_N13
\EU|CA|CA1|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|CA|CA1|reg_out[8]~feeder_combout\,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA1|reg_out\(8));

-- Location: LCCOMB_X4_Y27_N10
\EU|dqmux|out_mux[8]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[8]~1_combout\ = (\EU|dqmux|out_mux[8]~0_combout\ & ((\EU|CA|CA1|reg_out\(8)) # ((\EU|datain|reg_out\(8) & \CU|WideOr20~1_combout\)))) # (!\EU|dqmux|out_mux[8]~0_combout\ & (\EU|datain|reg_out\(8) & ((\CU|WideOr20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|dqmux|out_mux[8]~0_combout\,
	datab => \EU|datain|reg_out\(8),
	datac => \EU|CA|CA1|reg_out\(8),
	datad => \CU|WideOr20~1_combout\,
	combout => \EU|dqmux|out_mux[8]~1_combout\);

-- Location: LCCOMB_X7_Y25_N10
\CU|WideOr11~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr11~1_combout\ = (!\CU|present_state.writemem_DQ_init~q\ & (!\CU|present_state.CA_end~q\ & (!\CU|present_state.CA_writeconfig_end~q\ & !\CU|present_state.writemem_DQ~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.writemem_DQ_init~q\,
	datab => \CU|present_state.CA_end~q\,
	datac => \CU|present_state.CA_writeconfig_end~q\,
	datad => \CU|present_state.writemem_DQ~q\,
	combout => \CU|WideOr11~1_combout\);

-- Location: LCCOMB_X7_Y25_N16
\CU|WideOr13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr13~combout\ = (((\CU|present_state.writeconfig~q\) # (!\CU|WideOr20~1_combout\)) # (!\CU|present_state.reset~q\)) # (!\CU|WideOr11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr11~1_combout\,
	datab => \CU|present_state.reset~q\,
	datac => \CU|present_state.writeconfig~q\,
	datad => \CU|WideOr20~1_combout\,
	combout => \CU|WideOr13~combout\);

-- Location: FF_X4_Y27_N11
\EU|writedata|msbout|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dqmux|out_mux[8]~1_combout\,
	ena => \CU|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata|msbout|reg_out\(0));

-- Location: LCCOMB_X4_Y24_N26
\SSRAM_address[19]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(19),
	o => \SSRAM_address[19]~input0\);

-- Location: LCCOMB_X5_Y24_N22
\EU|up_address|reg_out[16]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|up_address|reg_out[16]~feeder_combout\ = \SSRAM_address[19]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_address[19]~input0\,
	combout => \EU|up_address|reg_out[16]~feeder_combout\);

-- Location: FF_X5_Y24_N23
\EU|up_address|reg_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|up_address|reg_out[16]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|up_address|reg_out\(16));

-- Location: FF_X5_Y24_N3
\EU|CA|CA0|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EU|up_address|reg_out\(16),
	sload => VCC,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA0|reg_out\(0));

-- Location: LCCOMB_X5_Y26_N4
\SSRAM_in[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_in(0),
	o => \SSRAM_in[0]~input0\);

-- Location: LCCOMB_X3_Y27_N22
\EU|datain|reg_out[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datain|reg_out[0]~feeder_combout\ = \SSRAM_in[0]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SSRAM_in[0]~input0\,
	combout => \EU|datain|reg_out[0]~feeder_combout\);

-- Location: FF_X3_Y27_N23
\EU|datain|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datain|reg_out[0]~feeder_combout\,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain|reg_out\(0));

-- Location: LCCOMB_X5_Y27_N24
\EU|writedata|lsbout|reg_out[2]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata|lsbout|reg_out[2]~1_combout\ = (\CU|WideOr20~1_combout\ & (((!\CU|present_state.CA_writeconfig_2~q\ & !\CU|present_state.CA2~q\)))) # (!\CU|WideOr20~1_combout\ & (!\CU|CA_sel\(0) & ((\CU|present_state.CA_writeconfig_2~q\) # 
-- (\CU|present_state.CA2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|CA_sel\(0),
	datab => \CU|present_state.CA_writeconfig_2~q\,
	datac => \CU|present_state.CA2~q\,
	datad => \CU|WideOr20~1_combout\,
	combout => \EU|writedata|lsbout|reg_out[2]~1_combout\);

-- Location: LCCOMB_X5_Y24_N14
\EU|low_address|reg_out[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|low_address|reg_out[0]~feeder_combout\ = \SSRAM_address[0]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSRAM_address[0]~input0\,
	combout => \EU|low_address|reg_out[0]~feeder_combout\);

-- Location: FF_X5_Y24_N15
\EU|low_address|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|low_address|reg_out[0]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|low_address|reg_out\(0));

-- Location: FF_X5_Y27_N23
\EU|CA|CA2|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EU|low_address|reg_out\(0),
	sload => VCC,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA2|reg_out\(0));

-- Location: LCCOMB_X5_Y27_N12
\EU|writedata|lsbout|reg_out[2]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata|lsbout|reg_out[2]~2_combout\ = (\CU|CA_sel\(0) & ((\CU|WideOr20~1_combout\) # ((!\CU|present_state.CA_writeconfig_2~q\ & !\CU|present_state.CA2~q\)))) # (!\CU|CA_sel\(0) & (!\CU|present_state.CA_writeconfig_2~q\ & (!\CU|present_state.CA2~q\ 
-- & \CU|WideOr20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|CA_sel\(0),
	datab => \CU|present_state.CA_writeconfig_2~q\,
	datac => \CU|present_state.CA2~q\,
	datad => \CU|WideOr20~1_combout\,
	combout => \EU|writedata|lsbout|reg_out[2]~2_combout\);

-- Location: LCCOMB_X5_Y27_N22
\EU|dqmux|out_mux[0]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[0]~2_combout\ = (\EU|writedata|lsbout|reg_out[2]~1_combout\ & ((\EU|writedata|lsbout|reg_out[2]~2_combout\ & (\EU|datain|reg_out\(0))) # (!\EU|writedata|lsbout|reg_out[2]~2_combout\ & ((\EU|CA|CA2|reg_out\(0)))))) # 
-- (!\EU|writedata|lsbout|reg_out[2]~1_combout\ & (((\EU|writedata|lsbout|reg_out[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|datain|reg_out\(0),
	datab => \EU|writedata|lsbout|reg_out[2]~1_combout\,
	datac => \EU|CA|CA2|reg_out\(0),
	datad => \EU|writedata|lsbout|reg_out[2]~2_combout\,
	combout => \EU|dqmux|out_mux[0]~2_combout\);

-- Location: LCCOMB_X4_Y24_N16
\SSRAM_address[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(3),
	o => \SSRAM_address[3]~input0\);

-- Location: LCCOMB_X5_Y24_N4
\EU|up_address|reg_out[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|up_address|reg_out[0]~feeder_combout\ = \SSRAM_address[3]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_address[3]~input0\,
	combout => \EU|up_address|reg_out[0]~feeder_combout\);

-- Location: FF_X5_Y24_N5
\EU|up_address|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|up_address|reg_out[0]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|up_address|reg_out\(0));

-- Location: LCCOMB_X5_Y27_N20
\EU|CA|CA1|reg_out[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|CA|CA1|reg_out[0]~feeder_combout\ = \EU|up_address|reg_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|up_address|reg_out\(0),
	combout => \EU|CA|CA1|reg_out[0]~feeder_combout\);

-- Location: FF_X5_Y27_N21
\EU|CA|CA1|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|CA|CA1|reg_out[0]~feeder_combout\,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA1|reg_out\(0));

-- Location: LCCOMB_X5_Y27_N28
\EU|writedata|lsbout|reg_out[2]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata|lsbout|reg_out[2]~0_combout\ = (\CU|present_state.CA_writeconfig_2~q\) # (\CU|present_state.CA2~q\ $ (((\CU|WideOr20~0_combout\ & !\CU|present_state.CA_writeconfig_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr20~0_combout\,
	datab => \CU|present_state.CA2~q\,
	datac => \CU|present_state.CA_writeconfig_1~q\,
	datad => \CU|present_state.CA_writeconfig_2~q\,
	combout => \EU|writedata|lsbout|reg_out[2]~0_combout\);

-- Location: LCCOMB_X4_Y27_N28
\EU|dqmux|out_mux[0]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux\(0) = (\EU|dqmux|out_mux[0]~2_combout\ & (((\EU|CA|CA1|reg_out\(0)) # (\EU|writedata|lsbout|reg_out[2]~0_combout\)))) # (!\EU|dqmux|out_mux[0]~2_combout\ & (\EU|CA|CA0|reg_out\(0) & ((!\EU|writedata|lsbout|reg_out[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|CA|CA0|reg_out\(0),
	datab => \EU|dqmux|out_mux[0]~2_combout\,
	datac => \EU|CA|CA1|reg_out\(0),
	datad => \EU|writedata|lsbout|reg_out[2]~0_combout\,
	combout => \EU|dqmux|out_mux\(0));

-- Location: FF_X4_Y27_N29
\EU|writedata|lsbout|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dqmux|out_mux\(0),
	ena => \CU|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata|lsbout|reg_out\(0));

-- Location: LCCOMB_X4_Y27_N22
\EU|writedata|outmux|out_mux[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata|outmux|out_mux[0]~0_combout\ = (\clk~input_o\ & (\EU|writedata|msbout|reg_out\(0))) # (!\clk~input_o\ & ((\EU|writedata|lsbout|reg_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata|msbout|reg_out\(0),
	datab => \clk~input_o\,
	datad => \EU|writedata|lsbout|reg_out\(0),
	combout => \EU|writedata|outmux|out_mux[0]~0_combout\);

-- Location: LCCOMB_X4_Y24_N30
\SSRAM_address[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(12),
	o => \SSRAM_address[12]~input0\);

-- Location: LCCOMB_X5_Y24_N0
\EU|up_address|reg_out[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|up_address|reg_out[9]~feeder_combout\ = \SSRAM_address[12]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSRAM_address[12]~input0\,
	combout => \EU|up_address|reg_out[9]~feeder_combout\);

-- Location: FF_X5_Y24_N1
\EU|up_address|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|up_address|reg_out[9]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|up_address|reg_out\(9));

-- Location: FF_X5_Y25_N11
\EU|CA|CA1|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EU|up_address|reg_out\(9),
	sload => VCC,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA1|reg_out\(9));

-- Location: LCCOMB_X5_Y26_N30
\SSRAM_in[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_in(9),
	o => \SSRAM_in[9]~input0\);

-- Location: LCCOMB_X4_Y26_N2
\EU|datain|reg_out[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datain|reg_out[9]~feeder_combout\ = \SSRAM_in[9]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_in[9]~input0\,
	combout => \EU|datain|reg_out[9]~feeder_combout\);

-- Location: FF_X4_Y26_N3
\EU|datain|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datain|reg_out[9]~feeder_combout\,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain|reg_out\(9));

-- Location: LCCOMB_X4_Y27_N12
\EU|dqmux|out_mux[9]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[9]~3_combout\ = (\EU|CA|CA1|reg_out\(9) & ((\EU|dqmux|out_mux[8]~0_combout\) # ((\CU|WideOr20~1_combout\ & \EU|datain|reg_out\(9))))) # (!\EU|CA|CA1|reg_out\(9) & (\CU|WideOr20~1_combout\ & (\EU|datain|reg_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|CA|CA1|reg_out\(9),
	datab => \CU|WideOr20~1_combout\,
	datac => \EU|datain|reg_out\(9),
	datad => \EU|dqmux|out_mux[8]~0_combout\,
	combout => \EU|dqmux|out_mux[9]~3_combout\);

-- Location: FF_X4_Y27_N13
\EU|writedata|msbout|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dqmux|out_mux[9]~3_combout\,
	ena => \CU|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata|msbout|reg_out\(1));

-- Location: LCCOMB_X4_Y24_N14
\SSRAM_address[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(4),
	o => \SSRAM_address[4]~input0\);

-- Location: LCCOMB_X4_Y23_N4
\EU|up_address|reg_out[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|up_address|reg_out[1]~feeder_combout\ = \SSRAM_address[4]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_address[4]~input0\,
	combout => \EU|up_address|reg_out[1]~feeder_combout\);

-- Location: FF_X4_Y23_N5
\EU|up_address|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|up_address|reg_out[1]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|up_address|reg_out\(1));

-- Location: FF_X4_Y23_N9
\EU|CA|CA1|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EU|up_address|reg_out\(1),
	sload => VCC,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA1|reg_out\(1));

-- Location: LCCOMB_X5_Y26_N20
\SSRAM_in[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_in(1),
	o => \SSRAM_in[1]~input0\);

-- Location: LCCOMB_X4_Y26_N12
\EU|datain|reg_out[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datain|reg_out[1]~feeder_combout\ = \SSRAM_in[1]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSRAM_in[1]~input0\,
	combout => \EU|datain|reg_out[1]~feeder_combout\);

-- Location: FF_X4_Y26_N13
\EU|datain|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datain|reg_out[1]~feeder_combout\,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain|reg_out\(1));

-- Location: LCCOMB_X4_Y24_N12
\SSRAM_address[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(1),
	o => \SSRAM_address[1]~input0\);

-- Location: LCCOMB_X5_Y24_N8
\EU|low_address|reg_out[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|low_address|reg_out[1]~feeder_combout\ = \SSRAM_address[1]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_address[1]~input0\,
	combout => \EU|low_address|reg_out[1]~feeder_combout\);

-- Location: FF_X5_Y24_N9
\EU|low_address|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|low_address|reg_out[1]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|low_address|reg_out\(1));

-- Location: FF_X5_Y27_N27
\EU|CA|CA2|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EU|low_address|reg_out\(1),
	sload => VCC,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA2|reg_out\(1));

-- Location: LCCOMB_X5_Y27_N26
\EU|dqmux|out_mux[1]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[1]~4_combout\ = (\EU|writedata|lsbout|reg_out[2]~1_combout\ & ((\EU|writedata|lsbout|reg_out[2]~2_combout\ & (\EU|datain|reg_out\(1))) # (!\EU|writedata|lsbout|reg_out[2]~2_combout\ & ((\EU|CA|CA2|reg_out\(1)))))) # 
-- (!\EU|writedata|lsbout|reg_out[2]~1_combout\ & (((\EU|writedata|lsbout|reg_out[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|datain|reg_out\(1),
	datab => \EU|writedata|lsbout|reg_out[2]~1_combout\,
	datac => \EU|CA|CA2|reg_out\(1),
	datad => \EU|writedata|lsbout|reg_out[2]~2_combout\,
	combout => \EU|dqmux|out_mux[1]~4_combout\);

-- Location: LCCOMB_X4_Y24_N24
\SSRAM_address[20]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(20),
	o => \SSRAM_address[20]~input0\);

-- Location: LCCOMB_X5_Y24_N26
\EU|up_address|reg_out[17]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|up_address|reg_out[17]~feeder_combout\ = \SSRAM_address[20]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSRAM_address[20]~input0\,
	combout => \EU|up_address|reg_out[17]~feeder_combout\);

-- Location: FF_X5_Y24_N27
\EU|up_address|reg_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|up_address|reg_out[17]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|up_address|reg_out\(17));

-- Location: LCCOMB_X5_Y27_N16
\EU|CA|CA0|reg_out[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|CA|CA0|reg_out[1]~feeder_combout\ = \EU|up_address|reg_out\(17)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|up_address|reg_out\(17),
	combout => \EU|CA|CA0|reg_out[1]~feeder_combout\);

-- Location: FF_X5_Y27_N17
\EU|CA|CA0|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|CA|CA0|reg_out[1]~feeder_combout\,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA0|reg_out\(1));

-- Location: LCCOMB_X4_Y27_N2
\EU|dqmux|out_mux[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux\(1) = (\EU|dqmux|out_mux[1]~4_combout\ & ((\EU|CA|CA1|reg_out\(1)) # ((\EU|writedata|lsbout|reg_out[2]~0_combout\)))) # (!\EU|dqmux|out_mux[1]~4_combout\ & (((\EU|CA|CA0|reg_out\(1) & !\EU|writedata|lsbout|reg_out[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|CA|CA1|reg_out\(1),
	datab => \EU|dqmux|out_mux[1]~4_combout\,
	datac => \EU|CA|CA0|reg_out\(1),
	datad => \EU|writedata|lsbout|reg_out[2]~0_combout\,
	combout => \EU|dqmux|out_mux\(1));

-- Location: FF_X4_Y27_N3
\EU|writedata|lsbout|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dqmux|out_mux\(1),
	ena => \CU|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata|lsbout|reg_out\(1));

-- Location: LCCOMB_X4_Y27_N20
\EU|writedata|outmux|out_mux[1]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata|outmux|out_mux[1]~1_combout\ = (\clk~input_o\ & (\EU|writedata|msbout|reg_out\(1))) # (!\clk~input_o\ & ((\EU|writedata|lsbout|reg_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata|msbout|reg_out\(1),
	datab => \clk~input_o\,
	datad => \EU|writedata|lsbout|reg_out\(1),
	combout => \EU|writedata|outmux|out_mux[1]~1_combout\);

-- Location: LCCOMB_X4_Y24_N18
\SSRAM_address[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(13),
	o => \SSRAM_address[13]~input0\);

-- Location: LCCOMB_X4_Y23_N22
\EU|up_address|reg_out[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|up_address|reg_out[10]~feeder_combout\ = \SSRAM_address[13]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SSRAM_address[13]~input0\,
	combout => \EU|up_address|reg_out[10]~feeder_combout\);

-- Location: FF_X4_Y23_N23
\EU|up_address|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|up_address|reg_out[10]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|up_address|reg_out\(10));

-- Location: FF_X4_Y23_N3
\EU|CA|CA1|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EU|up_address|reg_out\(10),
	sload => VCC,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA1|reg_out\(10));

-- Location: LCCOMB_X5_Y26_N10
\SSRAM_in[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_in(10),
	o => \SSRAM_in[10]~input0\);

-- Location: LCCOMB_X4_Y26_N18
\EU|datain|reg_out[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datain|reg_out[10]~feeder_combout\ = \SSRAM_in[10]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_in[10]~input0\,
	combout => \EU|datain|reg_out[10]~feeder_combout\);

-- Location: FF_X4_Y26_N19
\EU|datain|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datain|reg_out[10]~feeder_combout\,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain|reg_out\(10));

-- Location: LCCOMB_X4_Y27_N26
\EU|dqmux|out_mux[10]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[10]~5_combout\ = (\EU|dqmux|out_mux[8]~0_combout\ & ((\EU|CA|CA1|reg_out\(10)) # ((\CU|WideOr20~1_combout\ & \EU|datain|reg_out\(10))))) # (!\EU|dqmux|out_mux[8]~0_combout\ & (\CU|WideOr20~1_combout\ & ((\EU|datain|reg_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|dqmux|out_mux[8]~0_combout\,
	datab => \CU|WideOr20~1_combout\,
	datac => \EU|CA|CA1|reg_out\(10),
	datad => \EU|datain|reg_out\(10),
	combout => \EU|dqmux|out_mux[10]~5_combout\);

-- Location: FF_X4_Y27_N27
\EU|writedata|msbout|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dqmux|out_mux[10]~5_combout\,
	ena => \CU|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata|msbout|reg_out\(2));

-- Location: LCCOMB_X5_Y26_N28
\SSRAM_in[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_in(2),
	o => \SSRAM_in[2]~input0\);

-- Location: LCCOMB_X4_Y26_N24
\EU|datain|reg_out[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datain|reg_out[2]~feeder_combout\ = \SSRAM_in[2]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSRAM_in[2]~input0\,
	combout => \EU|datain|reg_out[2]~feeder_combout\);

-- Location: FF_X4_Y26_N25
\EU|datain|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datain|reg_out[2]~feeder_combout\,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain|reg_out\(2));

-- Location: LCCOMB_X4_Y24_N22
\SSRAM_address[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(2),
	o => \SSRAM_address[2]~input0\);

-- Location: LCCOMB_X3_Y24_N28
\EU|low_address|reg_out[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|low_address|reg_out[2]~feeder_combout\ = \SSRAM_address[2]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSRAM_address[2]~input0\,
	combout => \EU|low_address|reg_out[2]~feeder_combout\);

-- Location: FF_X3_Y24_N29
\EU|low_address|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|low_address|reg_out[2]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|low_address|reg_out\(2));

-- Location: FF_X5_Y27_N7
\EU|CA|CA2|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EU|low_address|reg_out\(2),
	sload => VCC,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA2|reg_out\(2));

-- Location: LCCOMB_X5_Y27_N6
\EU|dqmux|out_mux[2]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[2]~6_combout\ = (\EU|writedata|lsbout|reg_out[2]~1_combout\ & ((\EU|writedata|lsbout|reg_out[2]~2_combout\ & (\EU|datain|reg_out\(2))) # (!\EU|writedata|lsbout|reg_out[2]~2_combout\ & ((\EU|CA|CA2|reg_out\(2)))))) # 
-- (!\EU|writedata|lsbout|reg_out[2]~1_combout\ & (((\EU|writedata|lsbout|reg_out[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|datain|reg_out\(2),
	datab => \EU|writedata|lsbout|reg_out[2]~1_combout\,
	datac => \EU|CA|CA2|reg_out\(2),
	datad => \EU|writedata|lsbout|reg_out[2]~2_combout\,
	combout => \EU|dqmux|out_mux[2]~6_combout\);

-- Location: LCCOMB_X4_Y24_N28
\SSRAM_address[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(5),
	o => \SSRAM_address[5]~input0\);

-- Location: LCCOMB_X4_Y23_N10
\EU|up_address|reg_out[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|up_address|reg_out[2]~feeder_combout\ = \SSRAM_address[5]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_address[5]~input0\,
	combout => \EU|up_address|reg_out[2]~feeder_combout\);

-- Location: FF_X4_Y23_N11
\EU|up_address|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|up_address|reg_out[2]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|up_address|reg_out\(2));

-- Location: LCCOMB_X4_Y23_N18
\EU|CA|CA1|reg_out[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|CA|CA1|reg_out[2]~feeder_combout\ = \EU|up_address|reg_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|up_address|reg_out\(2),
	combout => \EU|CA|CA1|reg_out[2]~feeder_combout\);

-- Location: FF_X4_Y23_N19
\EU|CA|CA1|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|CA|CA1|reg_out[2]~feeder_combout\,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA1|reg_out\(2));

-- Location: LCCOMB_X5_Y26_N6
\SSRAM_address[21]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(21),
	o => \SSRAM_address[21]~input0\);

-- Location: LCCOMB_X4_Y23_N28
\EU|up_address|reg_out[18]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|up_address|reg_out[18]~feeder_combout\ = \SSRAM_address[21]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SSRAM_address[21]~input0\,
	combout => \EU|up_address|reg_out[18]~feeder_combout\);

-- Location: FF_X4_Y23_N29
\EU|up_address|reg_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|up_address|reg_out[18]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|up_address|reg_out\(18));

-- Location: LCCOMB_X4_Y23_N16
\EU|CA|CA0|reg_out[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|CA|CA0|reg_out[2]~feeder_combout\ = \EU|up_address|reg_out\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|up_address|reg_out\(18),
	combout => \EU|CA|CA0|reg_out[2]~feeder_combout\);

-- Location: FF_X4_Y23_N17
\EU|CA|CA0|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|CA|CA0|reg_out[2]~feeder_combout\,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA0|reg_out\(2));

-- Location: LCCOMB_X4_Y27_N16
\EU|dqmux|out_mux[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux\(2) = (\EU|dqmux|out_mux[2]~6_combout\ & ((\EU|CA|CA1|reg_out\(2)) # ((\EU|writedata|lsbout|reg_out[2]~0_combout\)))) # (!\EU|dqmux|out_mux[2]~6_combout\ & (((\EU|CA|CA0|reg_out\(2) & !\EU|writedata|lsbout|reg_out[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|dqmux|out_mux[2]~6_combout\,
	datab => \EU|CA|CA1|reg_out\(2),
	datac => \EU|CA|CA0|reg_out\(2),
	datad => \EU|writedata|lsbout|reg_out[2]~0_combout\,
	combout => \EU|dqmux|out_mux\(2));

-- Location: FF_X4_Y27_N17
\EU|writedata|lsbout|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dqmux|out_mux\(2),
	ena => \CU|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata|lsbout|reg_out\(2));

-- Location: LCCOMB_X4_Y27_N14
\EU|writedata|outmux|out_mux[2]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata|outmux|out_mux[2]~2_combout\ = (\clk~input_o\ & (\EU|writedata|msbout|reg_out\(2))) # (!\clk~input_o\ & ((\EU|writedata|lsbout|reg_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata|msbout|reg_out\(2),
	datab => \clk~input_o\,
	datad => \EU|writedata|lsbout|reg_out\(2),
	combout => \EU|writedata|outmux|out_mux[2]~2_combout\);

-- Location: LCCOMB_X5_Y23_N30
\SSRAM_address[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(14),
	o => \SSRAM_address[14]~input0\);

-- Location: LCCOMB_X4_Y23_N12
\EU|up_address|reg_out[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|up_address|reg_out[11]~feeder_combout\ = \SSRAM_address[14]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSRAM_address[14]~input0\,
	combout => \EU|up_address|reg_out[11]~feeder_combout\);

-- Location: FF_X4_Y23_N13
\EU|up_address|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|up_address|reg_out[11]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|up_address|reg_out\(11));

-- Location: LCCOMB_X4_Y23_N24
\EU|CA|CA1|reg_out[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|CA|CA1|reg_out[11]~feeder_combout\ = \EU|up_address|reg_out\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|up_address|reg_out\(11),
	combout => \EU|CA|CA1|reg_out[11]~feeder_combout\);

-- Location: FF_X4_Y23_N25
\EU|CA|CA1|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|CA|CA1|reg_out[11]~feeder_combout\,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA1|reg_out\(11));

-- Location: LCCOMB_X9_Y27_N8
\SSRAM_in[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_in(11),
	o => \SSRAM_in[11]~input0\);

-- Location: LCCOMB_X3_Y27_N8
\EU|datain|reg_out[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datain|reg_out[11]~feeder_combout\ = \SSRAM_in[11]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_in[11]~input0\,
	combout => \EU|datain|reg_out[11]~feeder_combout\);

-- Location: FF_X3_Y27_N9
\EU|datain|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datain|reg_out[11]~feeder_combout\,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain|reg_out\(11));

-- Location: LCCOMB_X4_Y30_N6
\EU|dqmux|out_mux[11]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[11]~7_combout\ = (\CU|WideOr20~1_combout\ & ((\EU|datain|reg_out\(11)) # ((\EU|CA|CA1|reg_out\(11) & \EU|dqmux|out_mux[8]~0_combout\)))) # (!\CU|WideOr20~1_combout\ & (\EU|CA|CA1|reg_out\(11) & ((\EU|dqmux|out_mux[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr20~1_combout\,
	datab => \EU|CA|CA1|reg_out\(11),
	datac => \EU|datain|reg_out\(11),
	datad => \EU|dqmux|out_mux[8]~0_combout\,
	combout => \EU|dqmux|out_mux[11]~7_combout\);

-- Location: LCCOMB_X3_Y30_N28
\EU|writedata|msbout|reg_out[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata|msbout|reg_out[3]~feeder_combout\ = \EU|dqmux|out_mux[11]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|dqmux|out_mux[11]~7_combout\,
	combout => \EU|writedata|msbout|reg_out[3]~feeder_combout\);

-- Location: FF_X3_Y30_N29
\EU|writedata|msbout|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|writedata|msbout|reg_out[3]~feeder_combout\,
	ena => \CU|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata|msbout|reg_out\(3));

-- Location: LCCOMB_X5_Y23_N4
\SSRAM_address[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(6),
	o => \SSRAM_address[6]~input0\);

-- Location: LCCOMB_X4_Y23_N14
\EU|up_address|reg_out[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|up_address|reg_out[3]~feeder_combout\ = \SSRAM_address[6]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_address[6]~input0\,
	combout => \EU|up_address|reg_out[3]~feeder_combout\);

-- Location: FF_X4_Y23_N15
\EU|up_address|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|up_address|reg_out[3]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|up_address|reg_out\(3));

-- Location: FF_X4_Y23_N31
\EU|CA|CA1|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EU|up_address|reg_out\(3),
	sload => VCC,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA1|reg_out\(3));

-- Location: LCCOMB_X5_Y26_N18
\SSRAM_in[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_in(3),
	o => \SSRAM_in[3]~input0\);

-- Location: LCCOMB_X3_Y27_N6
\EU|datain|reg_out[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datain|reg_out[3]~feeder_combout\ = \SSRAM_in[3]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_in[3]~input0\,
	combout => \EU|datain|reg_out[3]~feeder_combout\);

-- Location: FF_X3_Y27_N7
\EU|datain|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datain|reg_out[3]~feeder_combout\,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain|reg_out\(3));

-- Location: LCCOMB_X3_Y30_N2
\EU|dqmux|out_mux[3]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[3]~8_combout\ = (\EU|CA|CA1|reg_out\(3) & ((\EU|dqmux|out_mux[8]~0_combout\) # ((\CU|WideOr20~1_combout\ & \EU|datain|reg_out\(3))))) # (!\EU|CA|CA1|reg_out\(3) & (\CU|WideOr20~1_combout\ & ((\EU|datain|reg_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|CA|CA1|reg_out\(3),
	datab => \CU|WideOr20~1_combout\,
	datac => \EU|dqmux|out_mux[8]~0_combout\,
	datad => \EU|datain|reg_out\(3),
	combout => \EU|dqmux|out_mux[3]~8_combout\);

-- Location: FF_X3_Y30_N3
\EU|writedata|lsbout|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dqmux|out_mux[3]~8_combout\,
	ena => \CU|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata|lsbout|reg_out\(3));

-- Location: LCCOMB_X3_Y30_N0
\EU|writedata|outmux|out_mux[3]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata|outmux|out_mux[3]~3_combout\ = (\clk~input_o\ & (\EU|writedata|msbout|reg_out\(3))) # (!\clk~input_o\ & ((\EU|writedata|lsbout|reg_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|writedata|msbout|reg_out\(3),
	datac => \clk~input_o\,
	datad => \EU|writedata|lsbout|reg_out\(3),
	combout => \EU|writedata|outmux|out_mux[3]~3_combout\);

-- Location: LCCOMB_X3_Y25_N4
\SSRAM_in[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_in(4),
	o => \SSRAM_in[4]~input0\);

-- Location: LCCOMB_X3_Y27_N26
\EU|datain|reg_out[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datain|reg_out[4]~feeder_combout\ = \SSRAM_in[4]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_in[4]~input0\,
	combout => \EU|datain|reg_out[4]~feeder_combout\);

-- Location: FF_X3_Y27_N27
\EU|datain|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datain|reg_out[4]~feeder_combout\,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain|reg_out\(4));

-- Location: LCCOMB_X5_Y23_N12
\SSRAM_address[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(7),
	o => \SSRAM_address[7]~input0\);

-- Location: LCCOMB_X4_Y23_N26
\EU|up_address|reg_out[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|up_address|reg_out[4]~feeder_combout\ = \SSRAM_address[7]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_address[7]~input0\,
	combout => \EU|up_address|reg_out[4]~feeder_combout\);

-- Location: FF_X4_Y23_N27
\EU|up_address|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|up_address|reg_out[4]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|up_address|reg_out\(4));

-- Location: FF_X4_Y23_N7
\EU|CA|CA1|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EU|up_address|reg_out\(4),
	sload => VCC,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA1|reg_out\(4));

-- Location: LCCOMB_X4_Y30_N28
\EU|dqmux|out_mux[4]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[4]~10_combout\ = (\EU|datain|reg_out\(4) & ((\CU|WideOr20~1_combout\) # ((\EU|CA|CA1|reg_out\(4) & \EU|dqmux|out_mux[8]~0_combout\)))) # (!\EU|datain|reg_out\(4) & (\EU|CA|CA1|reg_out\(4) & ((\EU|dqmux|out_mux[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|datain|reg_out\(4),
	datab => \EU|CA|CA1|reg_out\(4),
	datac => \CU|WideOr20~1_combout\,
	datad => \EU|dqmux|out_mux[8]~0_combout\,
	combout => \EU|dqmux|out_mux[4]~10_combout\);

-- Location: LCCOMB_X3_Y30_N8
\EU|writedata|lsbout|reg_out[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata|lsbout|reg_out[4]~feeder_combout\ = \EU|dqmux|out_mux[4]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|dqmux|out_mux[4]~10_combout\,
	combout => \EU|writedata|lsbout|reg_out[4]~feeder_combout\);

-- Location: FF_X3_Y30_N9
\EU|writedata|lsbout|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|writedata|lsbout|reg_out[4]~feeder_combout\,
	ena => \CU|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata|lsbout|reg_out\(4));

-- Location: LCCOMB_X5_Y23_N26
\SSRAM_address[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(15),
	o => \SSRAM_address[15]~input0\);

-- Location: LCCOMB_X4_Y23_N20
\EU|up_address|reg_out[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|up_address|reg_out[12]~feeder_combout\ = \SSRAM_address[15]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_address[15]~input0\,
	combout => \EU|up_address|reg_out[12]~feeder_combout\);

-- Location: FF_X4_Y23_N21
\EU|up_address|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|up_address|reg_out[12]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|up_address|reg_out\(12));

-- Location: LCCOMB_X4_Y23_N0
\EU|CA|CA1|reg_out[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|CA|CA1|reg_out[12]~feeder_combout\ = \EU|up_address|reg_out\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|up_address|reg_out\(12),
	combout => \EU|CA|CA1|reg_out[12]~feeder_combout\);

-- Location: FF_X4_Y23_N1
\EU|CA|CA1|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|CA|CA1|reg_out[12]~feeder_combout\,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA1|reg_out\(12));

-- Location: LCCOMB_X5_Y26_N0
\SSRAM_in[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_in(12),
	o => \SSRAM_in[12]~input0\);

-- Location: LCCOMB_X3_Y27_N12
\EU|datain|reg_out[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datain|reg_out[12]~feeder_combout\ = \SSRAM_in[12]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSRAM_in[12]~input0\,
	combout => \EU|datain|reg_out[12]~feeder_combout\);

-- Location: FF_X3_Y27_N13
\EU|datain|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datain|reg_out[12]~feeder_combout\,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain|reg_out\(12));

-- Location: LCCOMB_X3_Y30_N18
\EU|dqmux|out_mux[12]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[12]~9_combout\ = (\EU|CA|CA1|reg_out\(12) & ((\EU|dqmux|out_mux[8]~0_combout\) # ((\CU|WideOr20~1_combout\ & \EU|datain|reg_out\(12))))) # (!\EU|CA|CA1|reg_out\(12) & (\CU|WideOr20~1_combout\ & ((\EU|datain|reg_out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|CA|CA1|reg_out\(12),
	datab => \CU|WideOr20~1_combout\,
	datac => \EU|dqmux|out_mux[8]~0_combout\,
	datad => \EU|datain|reg_out\(12),
	combout => \EU|dqmux|out_mux[12]~9_combout\);

-- Location: FF_X3_Y30_N19
\EU|writedata|msbout|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dqmux|out_mux[12]~9_combout\,
	ena => \CU|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata|msbout|reg_out\(4));

-- Location: LCCOMB_X3_Y30_N30
\EU|writedata|outmux|out_mux[4]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata|outmux|out_mux[4]~4_combout\ = (\clk~input_o\ & ((\EU|writedata|msbout|reg_out\(4)))) # (!\clk~input_o\ & (\EU|writedata|lsbout|reg_out\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk~input_o\,
	datac => \EU|writedata|lsbout|reg_out\(4),
	datad => \EU|writedata|msbout|reg_out\(4),
	combout => \EU|writedata|outmux|out_mux[4]~4_combout\);

-- Location: LCCOMB_X3_Y25_N6
\SSRAM_in[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_in(13),
	o => \SSRAM_in[13]~input0\);

-- Location: LCCOMB_X3_Y27_N20
\EU|datain|reg_out[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datain|reg_out[13]~feeder_combout\ = \SSRAM_in[13]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_in[13]~input0\,
	combout => \EU|datain|reg_out[13]~feeder_combout\);

-- Location: FF_X3_Y27_N21
\EU|datain|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datain|reg_out[13]~feeder_combout\,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain|reg_out\(13));

-- Location: LCCOMB_X5_Y23_N14
\SSRAM_address[16]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(16),
	o => \SSRAM_address[16]~input0\);

-- Location: LCCOMB_X5_Y24_N30
\EU|up_address|reg_out[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|up_address|reg_out[13]~feeder_combout\ = \SSRAM_address[16]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_address[16]~input0\,
	combout => \EU|up_address|reg_out[13]~feeder_combout\);

-- Location: FF_X5_Y24_N31
\EU|up_address|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|up_address|reg_out[13]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|up_address|reg_out\(13));

-- Location: FF_X5_Y24_N21
\EU|CA|CA1|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EU|up_address|reg_out\(13),
	sload => VCC,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA1|reg_out\(13));

-- Location: LCCOMB_X4_Y30_N12
\EU|dqmux|out_mux[13]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[13]~11_combout\ = (\CU|WideOr20~1_combout\ & ((\EU|datain|reg_out\(13)) # ((\EU|CA|CA1|reg_out\(13) & \EU|dqmux|out_mux[8]~0_combout\)))) # (!\CU|WideOr20~1_combout\ & (((\EU|CA|CA1|reg_out\(13) & \EU|dqmux|out_mux[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr20~1_combout\,
	datab => \EU|datain|reg_out\(13),
	datac => \EU|CA|CA1|reg_out\(13),
	datad => \EU|dqmux|out_mux[8]~0_combout\,
	combout => \EU|dqmux|out_mux[13]~11_combout\);

-- Location: FF_X4_Y30_N13
\EU|writedata|msbout|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dqmux|out_mux[13]~11_combout\,
	ena => \CU|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata|msbout|reg_out\(5));

-- Location: LCCOMB_X4_Y24_N20
\SSRAM_in[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_in(5),
	o => \SSRAM_in[5]~input0\);

-- Location: FF_X4_Y30_N1
\EU|datain|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SSRAM_in[5]~input0\,
	sload => VCC,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain|reg_out\(5));

-- Location: LCCOMB_X5_Y23_N8
\SSRAM_address[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(8),
	o => \SSRAM_address[8]~input0\);

-- Location: LCCOMB_X5_Y24_N28
\EU|up_address|reg_out[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|up_address|reg_out[5]~feeder_combout\ = \SSRAM_address[8]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SSRAM_address[8]~input0\,
	combout => \EU|up_address|reg_out[5]~feeder_combout\);

-- Location: FF_X5_Y24_N29
\EU|up_address|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|up_address|reg_out[5]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|up_address|reg_out\(5));

-- Location: LCCOMB_X5_Y24_N6
\EU|CA|CA1|reg_out[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|CA|CA1|reg_out[5]~feeder_combout\ = \EU|up_address|reg_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|up_address|reg_out\(5),
	combout => \EU|CA|CA1|reg_out[5]~feeder_combout\);

-- Location: FF_X5_Y24_N7
\EU|CA|CA1|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|CA|CA1|reg_out[5]~feeder_combout\,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA1|reg_out\(5));

-- Location: LCCOMB_X4_Y30_N18
\EU|dqmux|out_mux[5]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[5]~12_combout\ = (\CU|WideOr20~1_combout\ & ((\EU|datain|reg_out\(5)) # ((\EU|CA|CA1|reg_out\(5) & \EU|dqmux|out_mux[8]~0_combout\)))) # (!\CU|WideOr20~1_combout\ & (((\EU|CA|CA1|reg_out\(5) & \EU|dqmux|out_mux[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr20~1_combout\,
	datab => \EU|datain|reg_out\(5),
	datac => \EU|CA|CA1|reg_out\(5),
	datad => \EU|dqmux|out_mux[8]~0_combout\,
	combout => \EU|dqmux|out_mux[5]~12_combout\);

-- Location: FF_X4_Y30_N19
\EU|writedata|lsbout|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dqmux|out_mux[5]~12_combout\,
	ena => \CU|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata|lsbout|reg_out\(5));

-- Location: LCCOMB_X4_Y30_N0
\EU|writedata|outmux|out_mux[5]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata|outmux|out_mux[5]~5_combout\ = (\clk~input_o\ & (\EU|writedata|msbout|reg_out\(5))) # (!\clk~input_o\ & ((\EU|writedata|lsbout|reg_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata|msbout|reg_out\(5),
	datab => \clk~input_o\,
	datad => \EU|writedata|lsbout|reg_out\(5),
	combout => \EU|writedata|outmux|out_mux[5]~5_combout\);

-- Location: LCCOMB_X5_Y23_N0
\SSRAM_address[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(9),
	o => \SSRAM_address[9]~input0\);

-- Location: LCCOMB_X5_Y24_N24
\EU|up_address|reg_out[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|up_address|reg_out[6]~feeder_combout\ = \SSRAM_address[9]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSRAM_address[9]~input0\,
	combout => \EU|up_address|reg_out[6]~feeder_combout\);

-- Location: FF_X5_Y24_N25
\EU|up_address|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|up_address|reg_out[6]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|up_address|reg_out\(6));

-- Location: LCCOMB_X5_Y27_N0
\EU|CA|CA1|reg_out[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|CA|CA1|reg_out[6]~feeder_combout\ = \EU|up_address|reg_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|up_address|reg_out\(6),
	combout => \EU|CA|CA1|reg_out[6]~feeder_combout\);

-- Location: FF_X5_Y27_N1
\EU|CA|CA1|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|CA|CA1|reg_out[6]~feeder_combout\,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA1|reg_out\(6));

-- Location: LCCOMB_X4_Y24_N8
\SSRAM_in[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_in(6),
	o => \SSRAM_in[6]~input0\);

-- Location: LCCOMB_X4_Y26_N14
\EU|datain|reg_out[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datain|reg_out[6]~feeder_combout\ = \SSRAM_in[6]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSRAM_in[6]~input0\,
	combout => \EU|datain|reg_out[6]~feeder_combout\);

-- Location: FF_X4_Y26_N15
\EU|datain|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datain|reg_out[6]~feeder_combout\,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain|reg_out\(6));

-- Location: LCCOMB_X4_Y30_N26
\EU|dqmux|out_mux[6]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[6]~16_combout\ = (\CU|WideOr20~1_combout\ & ((\EU|datain|reg_out\(6)) # ((\EU|CA|CA1|reg_out\(6) & \EU|dqmux|out_mux[8]~0_combout\)))) # (!\CU|WideOr20~1_combout\ & (\EU|CA|CA1|reg_out\(6) & ((\EU|dqmux|out_mux[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr20~1_combout\,
	datab => \EU|CA|CA1|reg_out\(6),
	datac => \EU|datain|reg_out\(6),
	datad => \EU|dqmux|out_mux[8]~0_combout\,
	combout => \EU|dqmux|out_mux[6]~16_combout\);

-- Location: LCCOMB_X6_Y30_N30
\EU|writedata|lsbout|reg_out[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata|lsbout|reg_out[6]~feeder_combout\ = \EU|dqmux|out_mux[6]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|dqmux|out_mux[6]~16_combout\,
	combout => \EU|writedata|lsbout|reg_out[6]~feeder_combout\);

-- Location: FF_X6_Y30_N31
\EU|writedata|lsbout|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|writedata|lsbout|reg_out[6]~feeder_combout\,
	ena => \CU|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata|lsbout|reg_out\(6));

-- Location: LCCOMB_X5_Y27_N8
\EU|dqmux|out_mux[8]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[8]~13_combout\ = (!\CU|present_state.CA2~q\ & (!\CU|present_state.CA_writeconfig_2~q\ & ((\CU|present_state.CA_writeconfig_1~q\) # (!\CU|WideOr20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr20~0_combout\,
	datab => \CU|present_state.CA2~q\,
	datac => \CU|present_state.CA_writeconfig_1~q\,
	datad => \CU|present_state.CA_writeconfig_2~q\,
	combout => \EU|dqmux|out_mux[8]~13_combout\);

-- Location: LCCOMB_X4_Y24_N6
\SSRAM_in[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_in(14),
	o => \SSRAM_in[14]~input0\);

-- Location: FF_X3_Y27_N11
\EU|datain|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \SSRAM_in[14]~input0\,
	sload => VCC,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain|reg_out\(14));

-- Location: LCCOMB_X5_Y25_N8
\CU|config_access\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|config_access~combout\ = (\CU|present_state.readconfig_init~q\) # (\CU|present_state.writeconfig_init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.readconfig_init~q\,
	datad => \CU|present_state.writeconfig_init~q\,
	combout => \CU|config_access~combout\);

-- Location: FF_X5_Y25_N9
\EU|CA|CA0|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|config_access~combout\,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA0|reg_out\(14));

-- Location: LCCOMB_X5_Y23_N10
\SSRAM_address[17]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(17),
	o => \SSRAM_address[17]~input0\);

-- Location: LCCOMB_X5_Y24_N10
\EU|up_address|reg_out[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|up_address|reg_out[14]~feeder_combout\ = \SSRAM_address[17]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSRAM_address[17]~input0\,
	combout => \EU|up_address|reg_out[14]~feeder_combout\);

-- Location: FF_X5_Y24_N11
\EU|up_address|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|up_address|reg_out[14]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|up_address|reg_out\(14));

-- Location: FF_X5_Y27_N31
\EU|CA|CA1|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EU|up_address|reg_out\(14),
	sload => VCC,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA1|reg_out\(14));

-- Location: LCCOMB_X5_Y27_N30
\EU|dqmux|out_mux[14]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[14]~14_combout\ = (\CU|present_state.CA_writeconfig_1~q\ & (((\EU|CA|CA1|reg_out\(14))))) # (!\CU|present_state.CA_writeconfig_1~q\ & ((\CU|present_state.CA1~q\ & ((\EU|CA|CA1|reg_out\(14)))) # (!\CU|present_state.CA1~q\ & 
-- (\EU|CA|CA0|reg_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|CA|CA0|reg_out\(14),
	datab => \CU|present_state.CA_writeconfig_1~q\,
	datac => \EU|CA|CA1|reg_out\(14),
	datad => \CU|present_state.CA1~q\,
	combout => \EU|dqmux|out_mux[14]~14_combout\);

-- Location: LCCOMB_X3_Y27_N10
\EU|dqmux|out_mux[14]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[14]~15_combout\ = (\CU|WideOr20~1_combout\ & ((\EU|datain|reg_out\(14)) # ((\EU|dqmux|out_mux[8]~13_combout\ & \EU|dqmux|out_mux[14]~14_combout\)))) # (!\CU|WideOr20~1_combout\ & (\EU|dqmux|out_mux[8]~13_combout\ & 
-- ((\EU|dqmux|out_mux[14]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr20~1_combout\,
	datab => \EU|dqmux|out_mux[8]~13_combout\,
	datac => \EU|datain|reg_out\(14),
	datad => \EU|dqmux|out_mux[14]~14_combout\,
	combout => \EU|dqmux|out_mux[14]~15_combout\);

-- Location: LCCOMB_X6_Y30_N28
\EU|writedata|msbout|reg_out[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata|msbout|reg_out[6]~feeder_combout\ = \EU|dqmux|out_mux[14]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|dqmux|out_mux[14]~15_combout\,
	combout => \EU|writedata|msbout|reg_out[6]~feeder_combout\);

-- Location: FF_X6_Y30_N29
\EU|writedata|msbout|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|writedata|msbout|reg_out[6]~feeder_combout\,
	ena => \CU|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata|msbout|reg_out\(6));

-- Location: LCCOMB_X6_Y30_N4
\EU|writedata|outmux|out_mux[6]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata|outmux|out_mux[6]~6_combout\ = (\clk~input_o\ & ((\EU|writedata|msbout|reg_out\(6)))) # (!\clk~input_o\ & (\EU|writedata|lsbout|reg_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk~input_o\,
	datac => \EU|writedata|lsbout|reg_out\(6),
	datad => \EU|writedata|msbout|reg_out\(6),
	combout => \EU|writedata|outmux|out_mux[6]~6_combout\);

-- Location: LCCOMB_X4_Y24_N0
\SSRAM_address[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(10),
	o => \SSRAM_address[10]~input0\);

-- Location: LCCOMB_X3_Y24_N26
\EU|up_address|reg_out[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|up_address|reg_out[7]~feeder_combout\ = \SSRAM_address[10]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_address[10]~input0\,
	combout => \EU|up_address|reg_out[7]~feeder_combout\);

-- Location: FF_X3_Y24_N27
\EU|up_address|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|up_address|reg_out[7]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|up_address|reg_out\(7));

-- Location: LCCOMB_X5_Y27_N14
\EU|CA|CA1|reg_out[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|CA|CA1|reg_out[7]~feeder_combout\ = \EU|up_address|reg_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|up_address|reg_out\(7),
	combout => \EU|CA|CA1|reg_out[7]~feeder_combout\);

-- Location: FF_X5_Y27_N15
\EU|CA|CA1|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|CA|CA1|reg_out[7]~feeder_combout\,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA1|reg_out\(7));

-- Location: LCCOMB_X4_Y24_N10
\SSRAM_in[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_in(7),
	o => \SSRAM_in[7]~input0\);

-- Location: LCCOMB_X3_Y27_N2
\EU|datain|reg_out[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datain|reg_out[7]~feeder_combout\ = \SSRAM_in[7]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_in[7]~input0\,
	combout => \EU|datain|reg_out[7]~feeder_combout\);

-- Location: FF_X3_Y27_N3
\EU|datain|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datain|reg_out[7]~feeder_combout\,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain|reg_out\(7));

-- Location: LCCOMB_X4_Y27_N6
\EU|dqmux|out_mux[7]~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[7]~19_combout\ = (\EU|dqmux|out_mux[8]~0_combout\ & ((\EU|CA|CA1|reg_out\(7)) # ((\CU|WideOr20~1_combout\ & \EU|datain|reg_out\(7))))) # (!\EU|dqmux|out_mux[8]~0_combout\ & (\CU|WideOr20~1_combout\ & ((\EU|datain|reg_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|dqmux|out_mux[8]~0_combout\,
	datab => \CU|WideOr20~1_combout\,
	datac => \EU|CA|CA1|reg_out\(7),
	datad => \EU|datain|reg_out\(7),
	combout => \EU|dqmux|out_mux[7]~19_combout\);

-- Location: FF_X4_Y27_N7
\EU|writedata|lsbout|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dqmux|out_mux[7]~19_combout\,
	ena => \CU|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata|lsbout|reg_out\(7));

-- Location: LCCOMB_X5_Y25_N26
\CU|read_writeN~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|read_writeN~0_combout\ = (\CU|present_state.readmem_init~q\) # (\CU|present_state.readconfig_init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.readmem_init~q\,
	datac => \CU|present_state.readconfig_init~q\,
	combout => \CU|read_writeN~0_combout\);

-- Location: FF_X5_Y25_N27
\EU|CA|CA0|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|read_writeN~0_combout\,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA0|reg_out\(15));

-- Location: LCCOMB_X5_Y23_N6
\SSRAM_address[18]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(18),
	o => \SSRAM_address[18]~input0\);

-- Location: LCCOMB_X5_Y24_N18
\EU|up_address|reg_out[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|up_address|reg_out[15]~feeder_combout\ = \SSRAM_address[18]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SSRAM_address[18]~input0\,
	combout => \EU|up_address|reg_out[15]~feeder_combout\);

-- Location: FF_X5_Y24_N19
\EU|up_address|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|up_address|reg_out[15]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|up_address|reg_out\(15));

-- Location: FF_X5_Y27_N3
\EU|CA|CA1|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EU|up_address|reg_out\(15),
	sload => VCC,
	ena => \CU|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA|CA1|reg_out\(15));

-- Location: LCCOMB_X5_Y27_N2
\EU|dqmux|out_mux[15]~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[15]~17_combout\ = (\CU|present_state.CA_writeconfig_1~q\ & (((\EU|CA|CA1|reg_out\(15))))) # (!\CU|present_state.CA_writeconfig_1~q\ & ((\CU|present_state.CA1~q\ & ((\EU|CA|CA1|reg_out\(15)))) # (!\CU|present_state.CA1~q\ & 
-- (\EU|CA|CA0|reg_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|CA|CA0|reg_out\(15),
	datab => \CU|present_state.CA_writeconfig_1~q\,
	datac => \EU|CA|CA1|reg_out\(15),
	datad => \CU|present_state.CA1~q\,
	combout => \EU|dqmux|out_mux[15]~17_combout\);

-- Location: LCCOMB_X3_Y27_N4
\EU|datain|reg_out[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datain|reg_out[15]~feeder_combout\ = \SSRAM_in[15]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SSRAM_in[15]~input0\,
	combout => \EU|datain|reg_out[15]~feeder_combout\);

-- Location: FF_X3_Y27_N5
\EU|datain|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datain|reg_out[15]~feeder_combout\,
	ena => \CU|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain|reg_out\(15));

-- Location: LCCOMB_X4_Y27_N0
\EU|dqmux|out_mux[15]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dqmux|out_mux[15]~18_combout\ = (\EU|dqmux|out_mux[15]~17_combout\ & ((\EU|dqmux|out_mux[8]~13_combout\) # ((\EU|datain|reg_out\(15) & \CU|WideOr20~1_combout\)))) # (!\EU|dqmux|out_mux[15]~17_combout\ & (((\EU|datain|reg_out\(15) & 
-- \CU|WideOr20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|dqmux|out_mux[15]~17_combout\,
	datab => \EU|dqmux|out_mux[8]~13_combout\,
	datac => \EU|datain|reg_out\(15),
	datad => \CU|WideOr20~1_combout\,
	combout => \EU|dqmux|out_mux[15]~18_combout\);

-- Location: FF_X4_Y27_N1
\EU|writedata|msbout|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dqmux|out_mux[15]~18_combout\,
	ena => \CU|WideOr13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata|msbout|reg_out\(7));

-- Location: LCCOMB_X4_Y27_N4
\EU|writedata|outmux|out_mux[7]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata|outmux|out_mux[7]~7_combout\ = (\clk~input_o\ & ((\EU|writedata|msbout|reg_out\(7)))) # (!\clk~input_o\ & (\EU|writedata|lsbout|reg_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata|lsbout|reg_out\(7),
	datab => \clk~input_o\,
	datad => \EU|writedata|msbout|reg_out\(7),
	combout => \EU|writedata|outmux|out_mux[7]~7_combout\);

-- Location: LCCOMB_X1_Y16_N14
\RWDS_90~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RWDS_90,
	o => \RWDS_90~input0\);

-- Location: CLKCTRL_G1
\RWDS_90~clkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RWDS_90~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RWDS_90~clkctrl_outclk\);

-- Location: LCCOMB_X4_Y29_N4
\EU|readdata|lsbin|reg_out[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata|lsbin|reg_out[0]~feeder_combout\ = \EU|writedata|outmux|out_mux[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|writedata|outmux|out_mux[0]~0_combout\,
	combout => \EU|readdata|lsbin|reg_out[0]~feeder_combout\);

-- Location: FF_X4_Y29_N5
\EU|readdata|lsbin|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RWDS_90~clkctrl_outclk\,
	d => \EU|readdata|lsbin|reg_out[0]~feeder_combout\,
	ena => \CU|WideOr11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata|lsbin|reg_out\(0));

-- Location: LCCOMB_X9_Y26_N26
\EU|snc|EU|code_counter|entry_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|code_counter|entry_tff|dummy_out~0_combout\ = (!\EU|snc|CU|WideOr3~0_combout\ & (\EU|snc|EU|code_counter|entry_tff|dummy_out~q\ $ (((\EU|snc|CU|WideOr4~0_combout\) # (\EU|snc|CU|present_state.idle~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|CU|WideOr3~0_combout\,
	datab => \EU|snc|CU|WideOr4~0_combout\,
	datac => \EU|snc|EU|code_counter|entry_tff|dummy_out~q\,
	datad => \EU|snc|CU|present_state.idle~q\,
	combout => \EU|snc|EU|code_counter|entry_tff|dummy_out~0_combout\);

-- Location: FF_X9_Y26_N27
\EU|snc|EU|code_counter|entry_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|code_counter|entry_tff|dummy_out~0_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|code_counter|entry_tff|dummy_out~q\);

-- Location: LCCOMB_X8_Y26_N14
\EU|snc|EU|code_counter|tgl_in[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|code_counter|tgl_in\(1) = (\EU|snc|EU|code_counter|entry_tff|dummy_out~q\ & ((\EU|snc|CU|present_state.idle~q\) # ((\EU|snc|CU|present_state.reception~q\) # (\EU|snc|CU|present_state.reception_init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|CU|present_state.idle~q\,
	datab => \EU|snc|CU|present_state.reception~q\,
	datac => \EU|snc|CU|present_state.reception_init~q\,
	datad => \EU|snc|EU|code_counter|entry_tff|dummy_out~q\,
	combout => \EU|snc|EU|code_counter|tgl_in\(1));

-- Location: LCCOMB_X9_Y26_N20
\EU|snc|EU|code_counter|g1:1:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|code_counter|g1:1:chain_tff|dummy_out~0_combout\ = (!\EU|snc|CU|WideOr3~0_combout\ & (\EU|snc|EU|code_counter|g1:1:chain_tff|dummy_out~q\ $ (\EU|snc|EU|code_counter|tgl_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|CU|WideOr3~0_combout\,
	datac => \EU|snc|EU|code_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|snc|EU|code_counter|tgl_in\(1),
	combout => \EU|snc|EU|code_counter|g1:1:chain_tff|dummy_out~0_combout\);

-- Location: FF_X9_Y26_N21
\EU|snc|EU|code_counter|g1:1:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|code_counter|g1:1:chain_tff|dummy_out~0_combout\,
	clrn => \rst_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|code_counter|g1:1:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X8_Y26_N22
\EU|snc|EU|dec|Mux2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|dec|Mux2~0_combout\ = (\EU|snc|EU|code_counter|g1:1:chain_tff|dummy_out~q\ & !\EU|snc|EU|code_counter|entry_tff|dummy_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|snc|EU|code_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|snc|EU|code_counter|entry_tff|dummy_out~q\,
	combout => \EU|snc|EU|dec|Mux2~0_combout\);

-- Location: FF_X6_Y29_N21
\EU|snc|EU|readdata10|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	asdata => \EU|readdata|lsbin|reg_out\(0),
	sload => VCC,
	ena => \EU|snc|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata10|reg_out\(0));

-- Location: LCCOMB_X4_Y29_N8
\EU|snc|EU|readdata11|reg_out[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata11|reg_out[0]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|readdata|lsbin|reg_out\(0),
	combout => \EU|snc|EU|readdata11|reg_out[0]~feeder_combout\);

-- Location: LCCOMB_X8_Y26_N12
\EU|snc|EU|dec|Mux2~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|dec|Mux2~2_combout\ = (\EU|snc|EU|code_counter|g1:1:chain_tff|dummy_out~q\ & \EU|snc|EU|code_counter|entry_tff|dummy_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|snc|EU|code_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|snc|EU|code_counter|entry_tff|dummy_out~q\,
	combout => \EU|snc|EU|dec|Mux2~2_combout\);

-- Location: FF_X4_Y29_N9
\EU|snc|EU|readdata11|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata11|reg_out[0]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata11|reg_out\(0));

-- Location: LCCOMB_X8_Y26_N10
\EU|snc|EU|dec|Mux2~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|dec|Mux2~1_combout\ = (!\EU|snc|EU|code_counter|g1:1:chain_tff|dummy_out~q\ & \EU|snc|EU|code_counter|entry_tff|dummy_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|snc|EU|code_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|snc|EU|code_counter|entry_tff|dummy_out~q\,
	combout => \EU|snc|EU|dec|Mux2~1_combout\);

-- Location: FF_X5_Y29_N13
\EU|snc|EU|readdata01|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	asdata => \EU|readdata|lsbin|reg_out\(0),
	sload => VCC,
	ena => \EU|snc|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata01|reg_out\(0));

-- Location: LCCOMB_X9_Y26_N24
\EU|snc|EU|readdata00_enable\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata00_enable~combout\ = (!\EU|snc|EU|code_counter|entry_tff|dummy_out~q\ & (!\EU|snc|EU|code_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|snc|CU|present_state.idle~q\) # (\EU|snc|CU|WideOr4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|code_counter|entry_tff|dummy_out~q\,
	datab => \EU|snc|CU|present_state.idle~q\,
	datac => \EU|snc|CU|WideOr4~0_combout\,
	datad => \EU|snc|EU|code_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|readdata00_enable~combout\);

-- Location: FF_X6_Y29_N31
\EU|snc|EU|readdata00|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	asdata => \EU|readdata|lsbin|reg_out\(0),
	sload => VCC,
	ena => \EU|snc|EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata00|reg_out\(0));

-- Location: LCCOMB_X5_Y29_N10
\EU|snc|EU|datamux|Mux15~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux15~0_combout\ = (\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|snc|EU|readdata01|reg_out\(0)) # ((\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & 
-- (((\EU|snc|EU|readdata00|reg_out\(0) & !\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|readdata01|reg_out\(0),
	datab => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datac => \EU|snc|EU|readdata00|reg_out\(0),
	datad => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux15~0_combout\);

-- Location: LCCOMB_X5_Y29_N4
\EU|snc|EU|datamux|Mux15~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux15~1_combout\ = (\EU|snc|EU|datamux|Mux15~0_combout\ & (((\EU|snc|EU|readdata11|reg_out\(0)) # (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|snc|EU|datamux|Mux15~0_combout\ & (\EU|snc|EU|readdata10|reg_out\(0) & 
-- ((\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|readdata10|reg_out\(0),
	datab => \EU|snc|EU|readdata11|reg_out\(0),
	datac => \EU|snc|EU|datamux|Mux15~0_combout\,
	datad => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux15~1_combout\);

-- Location: FF_X5_Y29_N5
\EU|snc|EU|dataout|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|datamux|Mux15~1_combout\,
	ena => \EU|snc|CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout|reg_out\(0));

-- Location: LCCOMB_X6_Y28_N24
\EU|snc|EU|dataout_pipe|reg_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|dataout_pipe|reg_out~0_combout\ = (\EU|snc|CU|present_state.reset~q\ & \EU|snc|EU|dataout|reg_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|snc|CU|present_state.reset~q\,
	datac => \EU|snc|EU|dataout|reg_out\(0),
	combout => \EU|snc|EU|dataout_pipe|reg_out~0_combout\);

-- Location: FF_X6_Y28_N25
\EU|snc|EU|dataout_pipe|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|dataout_pipe|reg_out~0_combout\,
	ena => \EU|snc|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout_pipe|reg_out\(0));

-- Location: LCCOMB_X4_Y29_N6
\EU|readdata|lsbin|reg_out[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata|lsbin|reg_out[1]~feeder_combout\ = \EU|writedata|outmux|out_mux[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|writedata|outmux|out_mux[1]~1_combout\,
	combout => \EU|readdata|lsbin|reg_out[1]~feeder_combout\);

-- Location: FF_X4_Y29_N7
\EU|readdata|lsbin|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RWDS_90~clkctrl_outclk\,
	d => \EU|readdata|lsbin|reg_out[1]~feeder_combout\,
	ena => \CU|WideOr11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata|lsbin|reg_out\(1));

-- Location: LCCOMB_X6_Y29_N16
\EU|snc|EU|readdata10|reg_out[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata10|reg_out[1]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|lsbin|reg_out\(1),
	combout => \EU|snc|EU|readdata10|reg_out[1]~feeder_combout\);

-- Location: FF_X6_Y29_N17
\EU|snc|EU|readdata10|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata10|reg_out[1]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata10|reg_out\(1));

-- Location: LCCOMB_X6_Y29_N10
\EU|snc|EU|readdata00|reg_out[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata00|reg_out[1]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|lsbin|reg_out\(1),
	combout => \EU|snc|EU|readdata00|reg_out[1]~feeder_combout\);

-- Location: FF_X6_Y29_N11
\EU|snc|EU|readdata00|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata00|reg_out[1]~feeder_combout\,
	ena => \EU|snc|EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata00|reg_out\(1));

-- Location: FF_X5_Y29_N29
\EU|snc|EU|readdata01|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	asdata => \EU|readdata|lsbin|reg_out\(1),
	sload => VCC,
	ena => \EU|snc|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata01|reg_out\(1));

-- Location: LCCOMB_X6_Y29_N12
\EU|snc|EU|datamux|Mux14~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux14~0_combout\ = (\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (((\EU|snc|EU|data_counter|entry_tff|dummy_out~q\)))) # (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & 
-- ((\EU|snc|EU|readdata01|reg_out\(1)))) # (!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & (\EU|snc|EU|readdata00|reg_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|readdata00|reg_out\(1),
	datab => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datad => \EU|snc|EU|readdata01|reg_out\(1),
	combout => \EU|snc|EU|datamux|Mux14~0_combout\);

-- Location: LCCOMB_X4_Y29_N22
\EU|snc|EU|readdata11|reg_out[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata11|reg_out[1]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|readdata|lsbin|reg_out\(1),
	combout => \EU|snc|EU|readdata11|reg_out[1]~feeder_combout\);

-- Location: FF_X4_Y29_N23
\EU|snc|EU|readdata11|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata11|reg_out[1]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata11|reg_out\(1));

-- Location: LCCOMB_X7_Y27_N28
\EU|snc|EU|datamux|Mux14~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux14~1_combout\ = (\EU|snc|EU|datamux|Mux14~0_combout\ & (((\EU|snc|EU|readdata11|reg_out\(1)) # (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|snc|EU|datamux|Mux14~0_combout\ & (\EU|snc|EU|readdata10|reg_out\(1) & 
-- ((\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|readdata10|reg_out\(1),
	datab => \EU|snc|EU|datamux|Mux14~0_combout\,
	datac => \EU|snc|EU|readdata11|reg_out\(1),
	datad => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux14~1_combout\);

-- Location: FF_X7_Y27_N29
\EU|snc|EU|dataout|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|datamux|Mux14~1_combout\,
	ena => \EU|snc|CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout|reg_out\(1));

-- Location: LCCOMB_X7_Y27_N24
\EU|snc|EU|dataout_pipe|reg_out~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|dataout_pipe|reg_out~1_combout\ = (\EU|snc|EU|dataout|reg_out\(1) & \EU|snc|CU|present_state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|snc|EU|dataout|reg_out\(1),
	datac => \EU|snc|CU|present_state.reset~q\,
	combout => \EU|snc|EU|dataout_pipe|reg_out~1_combout\);

-- Location: FF_X7_Y27_N25
\EU|snc|EU|dataout_pipe|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|dataout_pipe|reg_out~1_combout\,
	ena => \EU|snc|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout_pipe|reg_out\(1));

-- Location: LCCOMB_X4_Y29_N16
\EU|readdata|lsbin|reg_out[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata|lsbin|reg_out[2]~feeder_combout\ = \EU|writedata|outmux|out_mux[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|writedata|outmux|out_mux[2]~2_combout\,
	combout => \EU|readdata|lsbin|reg_out[2]~feeder_combout\);

-- Location: FF_X4_Y29_N17
\EU|readdata|lsbin|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RWDS_90~clkctrl_outclk\,
	d => \EU|readdata|lsbin|reg_out[2]~feeder_combout\,
	ena => \CU|WideOr11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata|lsbin|reg_out\(2));

-- Location: LCCOMB_X4_Y29_N12
\EU|snc|EU|readdata11|reg_out[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata11|reg_out[2]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|readdata|lsbin|reg_out\(2),
	combout => \EU|snc|EU|readdata11|reg_out[2]~feeder_combout\);

-- Location: FF_X4_Y29_N13
\EU|snc|EU|readdata11|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata11|reg_out[2]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata11|reg_out\(2));

-- Location: FF_X5_Y29_N19
\EU|snc|EU|readdata01|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	asdata => \EU|readdata|lsbin|reg_out\(2),
	sload => VCC,
	ena => \EU|snc|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata01|reg_out\(2));

-- Location: LCCOMB_X6_Y29_N8
\EU|snc|EU|readdata00|reg_out[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata00|reg_out[2]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|lsbin|reg_out\(2),
	combout => \EU|snc|EU|readdata00|reg_out[2]~feeder_combout\);

-- Location: FF_X6_Y29_N9
\EU|snc|EU|readdata00|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata00|reg_out[2]~feeder_combout\,
	ena => \EU|snc|EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata00|reg_out\(2));

-- Location: LCCOMB_X6_Y29_N22
\EU|snc|EU|readdata10|reg_out[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata10|reg_out[2]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|lsbin|reg_out\(2),
	combout => \EU|snc|EU|readdata10|reg_out[2]~feeder_combout\);

-- Location: FF_X6_Y29_N23
\EU|snc|EU|readdata10|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata10|reg_out[2]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata10|reg_out\(2));

-- Location: LCCOMB_X6_Y29_N6
\EU|snc|EU|datamux|Mux13~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux13~0_combout\ = (\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & 
-- ((\EU|snc|EU|readdata10|reg_out\(2)))) # (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (\EU|snc|EU|readdata00|reg_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|snc|EU|readdata00|reg_out\(2),
	datac => \EU|snc|EU|readdata10|reg_out\(2),
	datad => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux13~0_combout\);

-- Location: LCCOMB_X5_Y29_N6
\EU|snc|EU|datamux|Mux13~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux13~1_combout\ = (\EU|snc|EU|datamux|Mux13~0_combout\ & ((\EU|snc|EU|readdata11|reg_out\(2)) # ((!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\)))) # (!\EU|snc|EU|datamux|Mux13~0_combout\ & (((\EU|snc|EU|readdata01|reg_out\(2) & 
-- \EU|snc|EU|data_counter|entry_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|readdata11|reg_out\(2),
	datab => \EU|snc|EU|readdata01|reg_out\(2),
	datac => \EU|snc|EU|datamux|Mux13~0_combout\,
	datad => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux13~1_combout\);

-- Location: FF_X5_Y29_N7
\EU|snc|EU|dataout|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|datamux|Mux13~1_combout\,
	ena => \EU|snc|CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout|reg_out\(2));

-- Location: LCCOMB_X6_Y28_N14
\EU|snc|EU|dataout_pipe|reg_out~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|dataout_pipe|reg_out~2_combout\ = (\EU|snc|EU|dataout|reg_out\(2) & \EU|snc|CU|present_state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|dataout|reg_out\(2),
	datac => \EU|snc|CU|present_state.reset~q\,
	combout => \EU|snc|EU|dataout_pipe|reg_out~2_combout\);

-- Location: FF_X6_Y28_N15
\EU|snc|EU|dataout_pipe|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|dataout_pipe|reg_out~2_combout\,
	ena => \EU|snc|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout_pipe|reg_out\(2));

-- Location: LCCOMB_X4_Y29_N14
\EU|readdata|lsbin|reg_out[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata|lsbin|reg_out[3]~feeder_combout\ = \EU|writedata|outmux|out_mux[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata|outmux|out_mux[3]~3_combout\,
	combout => \EU|readdata|lsbin|reg_out[3]~feeder_combout\);

-- Location: FF_X4_Y29_N15
\EU|readdata|lsbin|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RWDS_90~clkctrl_outclk\,
	d => \EU|readdata|lsbin|reg_out[3]~feeder_combout\,
	ena => \CU|WideOr11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata|lsbin|reg_out\(3));

-- Location: LCCOMB_X4_Y29_N30
\EU|snc|EU|readdata11|reg_out[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata11|reg_out[3]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|readdata|lsbin|reg_out\(3),
	combout => \EU|snc|EU|readdata11|reg_out[3]~feeder_combout\);

-- Location: FF_X4_Y29_N31
\EU|snc|EU|readdata11|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata11|reg_out[3]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata11|reg_out\(3));

-- Location: LCCOMB_X6_Y29_N0
\EU|snc|EU|readdata10|reg_out[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata10|reg_out[3]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|lsbin|reg_out\(3),
	combout => \EU|snc|EU|readdata10|reg_out[3]~feeder_combout\);

-- Location: FF_X6_Y29_N1
\EU|snc|EU|readdata10|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata10|reg_out[3]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata10|reg_out\(3));

-- Location: LCCOMB_X5_Y29_N20
\EU|snc|EU|readdata01|reg_out[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata01|reg_out[3]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|lsbin|reg_out\(3),
	combout => \EU|snc|EU|readdata01|reg_out[3]~feeder_combout\);

-- Location: FF_X5_Y29_N21
\EU|snc|EU|readdata01|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata01|reg_out[3]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata01|reg_out\(3));

-- Location: LCCOMB_X6_Y29_N26
\EU|snc|EU|readdata00|reg_out[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata00|reg_out[3]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|lsbin|reg_out\(3),
	combout => \EU|snc|EU|readdata00|reg_out[3]~feeder_combout\);

-- Location: FF_X6_Y29_N27
\EU|snc|EU|readdata00|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata00|reg_out[3]~feeder_combout\,
	ena => \EU|snc|EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata00|reg_out\(3));

-- Location: LCCOMB_X6_Y29_N4
\EU|snc|EU|datamux|Mux12~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux12~0_combout\ = (\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|snc|EU|readdata01|reg_out\(3)) # ((\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & 
-- (((\EU|snc|EU|readdata00|reg_out\(3) & !\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|snc|EU|readdata01|reg_out\(3),
	datac => \EU|snc|EU|readdata00|reg_out\(3),
	datad => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux12~0_combout\);

-- Location: LCCOMB_X6_Y28_N4
\EU|snc|EU|datamux|Mux12~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux12~1_combout\ = (\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|snc|EU|datamux|Mux12~0_combout\ & (\EU|snc|EU|readdata11|reg_out\(3))) # (!\EU|snc|EU|datamux|Mux12~0_combout\ & ((\EU|snc|EU|readdata10|reg_out\(3)))))) # 
-- (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (((\EU|snc|EU|datamux|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|readdata11|reg_out\(3),
	datab => \EU|snc|EU|readdata10|reg_out\(3),
	datac => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|snc|EU|datamux|Mux12~0_combout\,
	combout => \EU|snc|EU|datamux|Mux12~1_combout\);

-- Location: FF_X6_Y28_N5
\EU|snc|EU|dataout|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|datamux|Mux12~1_combout\,
	ena => \EU|snc|CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout|reg_out\(3));

-- Location: LCCOMB_X6_Y28_N16
\EU|snc|EU|dataout_pipe|reg_out~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|dataout_pipe|reg_out~3_combout\ = (\EU|snc|CU|present_state.reset~q\ & \EU|snc|EU|dataout|reg_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|snc|CU|present_state.reset~q\,
	datac => \EU|snc|EU|dataout|reg_out\(3),
	combout => \EU|snc|EU|dataout_pipe|reg_out~3_combout\);

-- Location: FF_X6_Y28_N17
\EU|snc|EU|dataout_pipe|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|dataout_pipe|reg_out~3_combout\,
	ena => \EU|snc|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout_pipe|reg_out\(3));

-- Location: LCCOMB_X4_Y29_N20
\EU|readdata|lsbin|reg_out[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata|lsbin|reg_out[4]~feeder_combout\ = \EU|writedata|outmux|out_mux[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata|outmux|out_mux[4]~4_combout\,
	combout => \EU|readdata|lsbin|reg_out[4]~feeder_combout\);

-- Location: FF_X4_Y29_N21
\EU|readdata|lsbin|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RWDS_90~clkctrl_outclk\,
	d => \EU|readdata|lsbin|reg_out[4]~feeder_combout\,
	ena => \CU|WideOr11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata|lsbin|reg_out\(4));

-- Location: LCCOMB_X5_Y29_N30
\EU|snc|EU|readdata01|reg_out[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata01|reg_out[4]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|lsbin|reg_out\(4),
	combout => \EU|snc|EU|readdata01|reg_out[4]~feeder_combout\);

-- Location: FF_X5_Y29_N31
\EU|snc|EU|readdata01|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata01|reg_out[4]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata01|reg_out\(4));

-- Location: LCCOMB_X5_Y28_N0
\EU|snc|EU|readdata00|reg_out[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata00|reg_out[4]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|lsbin|reg_out\(4),
	combout => \EU|snc|EU|readdata00|reg_out[4]~feeder_combout\);

-- Location: FF_X5_Y28_N1
\EU|snc|EU|readdata00|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata00|reg_out[4]~feeder_combout\,
	ena => \EU|snc|EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata00|reg_out\(4));

-- Location: LCCOMB_X6_Y27_N24
\EU|snc|EU|readdata10|reg_out[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata10|reg_out[4]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|lsbin|reg_out\(4),
	combout => \EU|snc|EU|readdata10|reg_out[4]~feeder_combout\);

-- Location: FF_X6_Y27_N25
\EU|snc|EU|readdata10|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata10|reg_out[4]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata10|reg_out\(4));

-- Location: LCCOMB_X5_Y29_N16
\EU|snc|EU|datamux|Mux11~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux11~0_combout\ = (\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & 
-- ((\EU|snc|EU|readdata10|reg_out\(4)))) # (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (\EU|snc|EU|readdata00|reg_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|readdata00|reg_out\(4),
	datab => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datac => \EU|snc|EU|readdata10|reg_out\(4),
	datad => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux11~0_combout\);

-- Location: LCCOMB_X6_Y27_N22
\EU|snc|EU|readdata11|reg_out[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata11|reg_out[4]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|lsbin|reg_out\(4),
	combout => \EU|snc|EU|readdata11|reg_out[4]~feeder_combout\);

-- Location: FF_X6_Y27_N23
\EU|snc|EU|readdata11|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata11|reg_out[4]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata11|reg_out\(4));

-- Location: LCCOMB_X5_Y29_N8
\EU|snc|EU|datamux|Mux11~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux11~1_combout\ = (\EU|snc|EU|datamux|Mux11~0_combout\ & (((\EU|snc|EU|readdata11|reg_out\(4)) # (!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\)))) # (!\EU|snc|EU|datamux|Mux11~0_combout\ & (\EU|snc|EU|readdata01|reg_out\(4) & 
-- ((\EU|snc|EU|data_counter|entry_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|readdata01|reg_out\(4),
	datab => \EU|snc|EU|datamux|Mux11~0_combout\,
	datac => \EU|snc|EU|readdata11|reg_out\(4),
	datad => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux11~1_combout\);

-- Location: FF_X5_Y29_N9
\EU|snc|EU|dataout|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|datamux|Mux11~1_combout\,
	ena => \EU|snc|CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout|reg_out\(4));

-- Location: LCCOMB_X6_Y28_N2
\EU|snc|EU|dataout_pipe|reg_out~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|dataout_pipe|reg_out~4_combout\ = (\EU|snc|CU|present_state.reset~q\ & \EU|snc|EU|dataout|reg_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|snc|CU|present_state.reset~q\,
	datac => \EU|snc|EU|dataout|reg_out\(4),
	combout => \EU|snc|EU|dataout_pipe|reg_out~4_combout\);

-- Location: FF_X6_Y28_N3
\EU|snc|EU|dataout_pipe|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|dataout_pipe|reg_out~4_combout\,
	ena => \EU|snc|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout_pipe|reg_out\(4));

-- Location: LCCOMB_X4_Y29_N18
\EU|readdata|lsbin|reg_out[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata|lsbin|reg_out[5]~feeder_combout\ = \EU|writedata|outmux|out_mux[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata|outmux|out_mux[5]~5_combout\,
	combout => \EU|readdata|lsbin|reg_out[5]~feeder_combout\);

-- Location: FF_X4_Y29_N19
\EU|readdata|lsbin|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RWDS_90~clkctrl_outclk\,
	d => \EU|readdata|lsbin|reg_out[5]~feeder_combout\,
	ena => \CU|WideOr11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata|lsbin|reg_out\(5));

-- Location: LCCOMB_X5_Y28_N12
\EU|snc|EU|readdata00|reg_out[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata00|reg_out[5]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|lsbin|reg_out\(5),
	combout => \EU|snc|EU|readdata00|reg_out[5]~feeder_combout\);

-- Location: FF_X5_Y28_N13
\EU|snc|EU|readdata00|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata00|reg_out[5]~feeder_combout\,
	ena => \EU|snc|EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata00|reg_out\(5));

-- Location: LCCOMB_X5_Y28_N26
\EU|snc|EU|readdata01|reg_out[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata01|reg_out[5]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|lsbin|reg_out\(5),
	combout => \EU|snc|EU|readdata01|reg_out[5]~feeder_combout\);

-- Location: FF_X5_Y28_N27
\EU|snc|EU|readdata01|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata01|reg_out[5]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata01|reg_out\(5));

-- Location: LCCOMB_X5_Y28_N18
\EU|snc|EU|datamux|Mux10~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux10~0_combout\ = (\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (((\EU|snc|EU|data_counter|entry_tff|dummy_out~q\)))) # (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & 
-- ((\EU|snc|EU|readdata01|reg_out\(5)))) # (!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & (\EU|snc|EU|readdata00|reg_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|readdata00|reg_out\(5),
	datab => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|snc|EU|readdata01|reg_out\(5),
	datad => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux10~0_combout\);

-- Location: FF_X4_Y28_N21
\EU|snc|EU|readdata10|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	asdata => \EU|readdata|lsbin|reg_out\(5),
	sload => VCC,
	ena => \EU|snc|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata10|reg_out\(5));

-- Location: LCCOMB_X4_Y29_N0
\EU|snc|EU|readdata11|reg_out[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata11|reg_out[5]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|readdata|lsbin|reg_out\(5),
	combout => \EU|snc|EU|readdata11|reg_out[5]~feeder_combout\);

-- Location: FF_X4_Y29_N1
\EU|snc|EU|readdata11|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata11|reg_out[5]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata11|reg_out\(5));

-- Location: LCCOMB_X4_Y28_N12
\EU|snc|EU|datamux|Mux10~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux10~1_combout\ = (\EU|snc|EU|datamux|Mux10~0_combout\ & (((\EU|snc|EU|readdata11|reg_out\(5)) # (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|snc|EU|datamux|Mux10~0_combout\ & (\EU|snc|EU|readdata10|reg_out\(5) & 
-- ((\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|datamux|Mux10~0_combout\,
	datab => \EU|snc|EU|readdata10|reg_out\(5),
	datac => \EU|snc|EU|readdata11|reg_out\(5),
	datad => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux10~1_combout\);

-- Location: FF_X4_Y28_N13
\EU|snc|EU|dataout|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|datamux|Mux10~1_combout\,
	ena => \EU|snc|CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout|reg_out\(5));

-- Location: LCCOMB_X6_Y28_N20
\EU|snc|EU|dataout_pipe|reg_out~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|dataout_pipe|reg_out~5_combout\ = (\EU|snc|CU|present_state.reset~q\ & \EU|snc|EU|dataout|reg_out\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|snc|CU|present_state.reset~q\,
	datac => \EU|snc|EU|dataout|reg_out\(5),
	combout => \EU|snc|EU|dataout_pipe|reg_out~5_combout\);

-- Location: FF_X6_Y28_N21
\EU|snc|EU|dataout_pipe|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|dataout_pipe|reg_out~5_combout\,
	ena => \EU|snc|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout_pipe|reg_out\(5));

-- Location: LCCOMB_X4_Y29_N24
\EU|readdata|lsbin|reg_out[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata|lsbin|reg_out[6]~feeder_combout\ = \EU|writedata|outmux|out_mux[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|writedata|outmux|out_mux[6]~6_combout\,
	combout => \EU|readdata|lsbin|reg_out[6]~feeder_combout\);

-- Location: FF_X4_Y29_N25
\EU|readdata|lsbin|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RWDS_90~clkctrl_outclk\,
	d => \EU|readdata|lsbin|reg_out[6]~feeder_combout\,
	ena => \CU|WideOr11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata|lsbin|reg_out\(6));

-- Location: LCCOMB_X4_Y28_N14
\EU|snc|EU|readdata10|reg_out[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata10|reg_out[6]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|lsbin|reg_out\(6),
	combout => \EU|snc|EU|readdata10|reg_out[6]~feeder_combout\);

-- Location: FF_X4_Y28_N15
\EU|snc|EU|readdata10|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata10|reg_out[6]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata10|reg_out\(6));

-- Location: LCCOMB_X5_Y28_N8
\EU|snc|EU|readdata00|reg_out[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata00|reg_out[6]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|lsbin|reg_out\(6),
	combout => \EU|snc|EU|readdata00|reg_out[6]~feeder_combout\);

-- Location: FF_X5_Y28_N9
\EU|snc|EU|readdata00|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata00|reg_out[6]~feeder_combout\,
	ena => \EU|snc|EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata00|reg_out\(6));

-- Location: LCCOMB_X5_Y28_N2
\EU|snc|EU|datamux|Mux9~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux9~0_combout\ = (\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|snc|EU|readdata10|reg_out\(6)) # ((\EU|snc|EU|data_counter|entry_tff|dummy_out~q\)))) # (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & 
-- (((\EU|snc|EU|readdata00|reg_out\(6) & !\EU|snc|EU|data_counter|entry_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|readdata10|reg_out\(6),
	datab => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|snc|EU|readdata00|reg_out\(6),
	datad => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux9~0_combout\);

-- Location: LCCOMB_X5_Y29_N14
\EU|snc|EU|readdata01|reg_out[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata01|reg_out[6]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|lsbin|reg_out\(6),
	combout => \EU|snc|EU|readdata01|reg_out[6]~feeder_combout\);

-- Location: FF_X5_Y29_N15
\EU|snc|EU|readdata01|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata01|reg_out[6]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata01|reg_out\(6));

-- Location: LCCOMB_X4_Y29_N2
\EU|snc|EU|readdata11|reg_out[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata11|reg_out[6]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|readdata|lsbin|reg_out\(6),
	combout => \EU|snc|EU|readdata11|reg_out[6]~feeder_combout\);

-- Location: FF_X4_Y29_N3
\EU|snc|EU|readdata11|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata11|reg_out[6]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata11|reg_out\(6));

-- Location: LCCOMB_X6_Y28_N26
\EU|snc|EU|datamux|Mux9~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux9~1_combout\ = (\EU|snc|EU|datamux|Mux9~0_combout\ & (((\EU|snc|EU|readdata11|reg_out\(6)) # (!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\)))) # (!\EU|snc|EU|datamux|Mux9~0_combout\ & (\EU|snc|EU|readdata01|reg_out\(6) & 
-- (\EU|snc|EU|data_counter|entry_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|datamux|Mux9~0_combout\,
	datab => \EU|snc|EU|readdata01|reg_out\(6),
	datac => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datad => \EU|snc|EU|readdata11|reg_out\(6),
	combout => \EU|snc|EU|datamux|Mux9~1_combout\);

-- Location: FF_X6_Y28_N27
\EU|snc|EU|dataout|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|datamux|Mux9~1_combout\,
	ena => \EU|snc|CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout|reg_out\(6));

-- Location: LCCOMB_X6_Y28_N6
\EU|snc|EU|dataout_pipe|reg_out~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|dataout_pipe|reg_out~6_combout\ = (\EU|snc|CU|present_state.reset~q\ & \EU|snc|EU|dataout|reg_out\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|snc|CU|present_state.reset~q\,
	datac => \EU|snc|EU|dataout|reg_out\(6),
	combout => \EU|snc|EU|dataout_pipe|reg_out~6_combout\);

-- Location: FF_X6_Y28_N7
\EU|snc|EU|dataout_pipe|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|dataout_pipe|reg_out~6_combout\,
	ena => \EU|snc|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout_pipe|reg_out\(6));

-- Location: LCCOMB_X4_Y29_N26
\EU|readdata|lsbin|reg_out[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata|lsbin|reg_out[7]~feeder_combout\ = \EU|writedata|outmux|out_mux[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata|outmux|out_mux[7]~7_combout\,
	combout => \EU|readdata|lsbin|reg_out[7]~feeder_combout\);

-- Location: FF_X4_Y29_N27
\EU|readdata|lsbin|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_RWDS_90~clkctrl_outclk\,
	d => \EU|readdata|lsbin|reg_out[7]~feeder_combout\,
	ena => \CU|WideOr11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata|lsbin|reg_out\(7));

-- Location: LCCOMB_X4_Y29_N28
\EU|snc|EU|readdata11|reg_out[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata11|reg_out[7]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|readdata|lsbin|reg_out\(7),
	combout => \EU|snc|EU|readdata11|reg_out[7]~feeder_combout\);

-- Location: FF_X4_Y29_N29
\EU|snc|EU|readdata11|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata11|reg_out[7]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata11|reg_out\(7));

-- Location: LCCOMB_X4_Y28_N16
\EU|snc|EU|readdata10|reg_out[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata10|reg_out[7]~feeder_combout\ = \EU|readdata|lsbin|reg_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|lsbin|reg_out\(7),
	combout => \EU|snc|EU|readdata10|reg_out[7]~feeder_combout\);

-- Location: FF_X4_Y28_N17
\EU|snc|EU|readdata10|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata10|reg_out[7]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata10|reg_out\(7));

-- Location: FF_X5_Y28_N11
\EU|snc|EU|readdata00|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	asdata => \EU|readdata|lsbin|reg_out\(7),
	sload => VCC,
	ena => \EU|snc|EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata00|reg_out\(7));

-- Location: FF_X5_Y28_N5
\EU|snc|EU|readdata01|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	asdata => \EU|readdata|lsbin|reg_out\(7),
	sload => VCC,
	ena => \EU|snc|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata01|reg_out\(7));

-- Location: LCCOMB_X5_Y28_N20
\EU|snc|EU|datamux|Mux8~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux8~0_combout\ = (\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (((\EU|snc|EU|data_counter|entry_tff|dummy_out~q\)))) # (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & 
-- ((\EU|snc|EU|readdata01|reg_out\(7)))) # (!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & (\EU|snc|EU|readdata00|reg_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|readdata00|reg_out\(7),
	datab => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|snc|EU|readdata01|reg_out\(7),
	datad => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux8~0_combout\);

-- Location: LCCOMB_X4_Y28_N30
\EU|snc|EU|datamux|Mux8~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux8~1_combout\ = (\EU|snc|EU|datamux|Mux8~0_combout\ & ((\EU|snc|EU|readdata11|reg_out\(7)) # ((!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|snc|EU|datamux|Mux8~0_combout\ & (((\EU|snc|EU|readdata10|reg_out\(7) & 
-- \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|readdata11|reg_out\(7),
	datab => \EU|snc|EU|readdata10|reg_out\(7),
	datac => \EU|snc|EU|datamux|Mux8~0_combout\,
	datad => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux8~1_combout\);

-- Location: FF_X4_Y28_N31
\EU|snc|EU|dataout|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|datamux|Mux8~1_combout\,
	ena => \EU|snc|CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout|reg_out\(7));

-- Location: LCCOMB_X6_Y28_N28
\EU|snc|EU|dataout_pipe|reg_out~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|dataout_pipe|reg_out~7_combout\ = (\EU|snc|CU|present_state.reset~q\ & \EU|snc|EU|dataout|reg_out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|snc|CU|present_state.reset~q\,
	datac => \EU|snc|EU|dataout|reg_out\(7),
	combout => \EU|snc|EU|dataout_pipe|reg_out~7_combout\);

-- Location: FF_X6_Y28_N29
\EU|snc|EU|dataout_pipe|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|dataout_pipe|reg_out~7_combout\,
	ena => \EU|snc|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout_pipe|reg_out\(7));

-- Location: FF_X4_Y27_N25
\EU|readdata|msbin|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_90~clkctrl_outclk\,
	asdata => \EU|writedata|outmux|out_mux[0]~0_combout\,
	sload => VCC,
	ena => \CU|WideOr11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata|msbin|reg_out\(0));

-- Location: LCCOMB_X6_Y27_N2
\EU|snc|EU|readdata11|reg_out[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata11|reg_out[8]~feeder_combout\ = \EU|readdata|msbin|reg_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|msbin|reg_out\(0),
	combout => \EU|snc|EU|readdata11|reg_out[8]~feeder_combout\);

-- Location: FF_X6_Y27_N3
\EU|snc|EU|readdata11|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata11|reg_out[8]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata11|reg_out\(8));

-- Location: LCCOMB_X5_Y28_N22
\EU|snc|EU|readdata00|reg_out[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata00|reg_out[8]~feeder_combout\ = \EU|readdata|msbin|reg_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|msbin|reg_out\(0),
	combout => \EU|snc|EU|readdata00|reg_out[8]~feeder_combout\);

-- Location: FF_X5_Y28_N23
\EU|snc|EU|readdata00|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata00|reg_out[8]~feeder_combout\,
	ena => \EU|snc|EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata00|reg_out\(8));

-- Location: LCCOMB_X6_Y27_N8
\EU|snc|EU|readdata10|reg_out[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata10|reg_out[8]~feeder_combout\ = \EU|readdata|msbin|reg_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|msbin|reg_out\(0),
	combout => \EU|snc|EU|readdata10|reg_out[8]~feeder_combout\);

-- Location: FF_X6_Y27_N9
\EU|snc|EU|readdata10|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata10|reg_out[8]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata10|reg_out\(8));

-- Location: LCCOMB_X5_Y28_N16
\EU|snc|EU|datamux|Mux7~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux7~0_combout\ = (\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (((\EU|snc|EU|readdata10|reg_out\(8)) # (\EU|snc|EU|data_counter|entry_tff|dummy_out~q\)))) # (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & 
-- (\EU|snc|EU|readdata00|reg_out\(8) & ((!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|readdata00|reg_out\(8),
	datab => \EU|snc|EU|readdata10|reg_out\(8),
	datac => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux7~0_combout\);

-- Location: LCCOMB_X5_Y29_N24
\EU|snc|EU|readdata01|reg_out[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata01|reg_out[8]~feeder_combout\ = \EU|readdata|msbin|reg_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|readdata|msbin|reg_out\(0),
	combout => \EU|snc|EU|readdata01|reg_out[8]~feeder_combout\);

-- Location: FF_X5_Y29_N25
\EU|snc|EU|readdata01|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata01|reg_out[8]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata01|reg_out\(8));

-- Location: LCCOMB_X6_Y28_N8
\EU|snc|EU|datamux|Mux7~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux7~1_combout\ = (\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|snc|EU|datamux|Mux7~0_combout\ & (\EU|snc|EU|readdata11|reg_out\(8))) # (!\EU|snc|EU|datamux|Mux7~0_combout\ & ((\EU|snc|EU|readdata01|reg_out\(8)))))) # 
-- (!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|snc|EU|datamux|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|readdata11|reg_out\(8),
	datab => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datac => \EU|snc|EU|datamux|Mux7~0_combout\,
	datad => \EU|snc|EU|readdata01|reg_out\(8),
	combout => \EU|snc|EU|datamux|Mux7~1_combout\);

-- Location: FF_X6_Y28_N9
\EU|snc|EU|dataout|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|datamux|Mux7~1_combout\,
	ena => \EU|snc|CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout|reg_out\(8));

-- Location: LCCOMB_X6_Y28_N18
\EU|snc|EU|dataout_pipe|reg_out~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|dataout_pipe|reg_out~8_combout\ = (\EU|snc|CU|present_state.reset~q\ & \EU|snc|EU|dataout|reg_out\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|snc|CU|present_state.reset~q\,
	datac => \EU|snc|EU|dataout|reg_out\(8),
	combout => \EU|snc|EU|dataout_pipe|reg_out~8_combout\);

-- Location: FF_X6_Y28_N19
\EU|snc|EU|dataout_pipe|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|dataout_pipe|reg_out~8_combout\,
	ena => \EU|snc|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout_pipe|reg_out\(8));

-- Location: LCCOMB_X4_Y27_N30
\EU|readdata|msbin|reg_out[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata|msbin|reg_out[1]~feeder_combout\ = \EU|writedata|outmux|out_mux[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|writedata|outmux|out_mux[1]~1_combout\,
	combout => \EU|readdata|msbin|reg_out[1]~feeder_combout\);

-- Location: FF_X4_Y27_N31
\EU|readdata|msbin|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_90~clkctrl_outclk\,
	d => \EU|readdata|msbin|reg_out[1]~feeder_combout\,
	ena => \CU|WideOr11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata|msbin|reg_out\(1));

-- Location: LCCOMB_X6_Y27_N12
\EU|snc|EU|readdata10|reg_out[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata10|reg_out[9]~feeder_combout\ = \EU|readdata|msbin|reg_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|readdata|msbin|reg_out\(1),
	combout => \EU|snc|EU|readdata10|reg_out[9]~feeder_combout\);

-- Location: FF_X6_Y27_N13
\EU|snc|EU|readdata10|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata10|reg_out[9]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata10|reg_out\(9));

-- Location: LCCOMB_X6_Y27_N18
\EU|snc|EU|readdata11|reg_out[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata11|reg_out[9]~feeder_combout\ = \EU|readdata|msbin|reg_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|readdata|msbin|reg_out\(1),
	combout => \EU|snc|EU|readdata11|reg_out[9]~feeder_combout\);

-- Location: FF_X6_Y27_N19
\EU|snc|EU|readdata11|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata11|reg_out[9]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata11|reg_out\(9));

-- Location: LCCOMB_X8_Y27_N14
\EU|snc|EU|readdata00|reg_out[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata00|reg_out[9]~feeder_combout\ = \EU|readdata|msbin|reg_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|msbin|reg_out\(1),
	combout => \EU|snc|EU|readdata00|reg_out[9]~feeder_combout\);

-- Location: FF_X8_Y27_N15
\EU|snc|EU|readdata00|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata00|reg_out[9]~feeder_combout\,
	ena => \EU|snc|EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata00|reg_out\(9));

-- Location: LCCOMB_X8_Y27_N28
\EU|snc|EU|readdata01|reg_out[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata01|reg_out[9]~feeder_combout\ = \EU|readdata|msbin|reg_out\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|msbin|reg_out\(1),
	combout => \EU|snc|EU|readdata01|reg_out[9]~feeder_combout\);

-- Location: FF_X8_Y27_N29
\EU|snc|EU|readdata01|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata01|reg_out[9]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata01|reg_out\(9));

-- Location: LCCOMB_X8_Y27_N0
\EU|snc|EU|datamux|Mux6~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux6~0_combout\ = (\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\) # ((\EU|snc|EU|readdata01|reg_out\(9))))) # (!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & 
-- (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (\EU|snc|EU|readdata00|reg_out\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|snc|EU|readdata00|reg_out\(9),
	datad => \EU|snc|EU|readdata01|reg_out\(9),
	combout => \EU|snc|EU|datamux|Mux6~0_combout\);

-- Location: LCCOMB_X6_Y28_N22
\EU|snc|EU|datamux|Mux6~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux6~1_combout\ = (\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|snc|EU|datamux|Mux6~0_combout\ & ((\EU|snc|EU|readdata11|reg_out\(9)))) # (!\EU|snc|EU|datamux|Mux6~0_combout\ & (\EU|snc|EU|readdata10|reg_out\(9))))) # 
-- (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (((\EU|snc|EU|datamux|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|readdata10|reg_out\(9),
	datab => \EU|snc|EU|readdata11|reg_out\(9),
	datac => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|snc|EU|datamux|Mux6~0_combout\,
	combout => \EU|snc|EU|datamux|Mux6~1_combout\);

-- Location: FF_X6_Y28_N23
\EU|snc|EU|dataout|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|datamux|Mux6~1_combout\,
	ena => \EU|snc|CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout|reg_out\(9));

-- Location: LCCOMB_X6_Y28_N12
\EU|snc|EU|dataout_pipe|reg_out~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|dataout_pipe|reg_out~9_combout\ = (\EU|snc|CU|present_state.reset~q\ & \EU|snc|EU|dataout|reg_out\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|snc|CU|present_state.reset~q\,
	datac => \EU|snc|EU|dataout|reg_out\(9),
	combout => \EU|snc|EU|dataout_pipe|reg_out~9_combout\);

-- Location: FF_X6_Y28_N13
\EU|snc|EU|dataout_pipe|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|dataout_pipe|reg_out~9_combout\,
	ena => \EU|snc|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout_pipe|reg_out\(9));

-- Location: FF_X4_Y27_N5
\EU|readdata|msbin|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_90~clkctrl_outclk\,
	asdata => \EU|writedata|outmux|out_mux[2]~2_combout\,
	sload => VCC,
	ena => \CU|WideOr11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata|msbin|reg_out\(2));

-- Location: LCCOMB_X6_Y27_N28
\EU|snc|EU|readdata10|reg_out[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata10|reg_out[10]~feeder_combout\ = \EU|readdata|msbin|reg_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|readdata|msbin|reg_out\(2),
	combout => \EU|snc|EU|readdata10|reg_out[10]~feeder_combout\);

-- Location: FF_X6_Y27_N29
\EU|snc|EU|readdata10|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata10|reg_out[10]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata10|reg_out\(10));

-- Location: LCCOMB_X8_Y27_N12
\EU|snc|EU|readdata00|reg_out[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata00|reg_out[10]~feeder_combout\ = \EU|readdata|msbin|reg_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|readdata|msbin|reg_out\(2),
	combout => \EU|snc|EU|readdata00|reg_out[10]~feeder_combout\);

-- Location: FF_X8_Y27_N13
\EU|snc|EU|readdata00|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata00|reg_out[10]~feeder_combout\,
	ena => \EU|snc|EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata00|reg_out\(10));

-- Location: LCCOMB_X7_Y27_N12
\EU|snc|EU|datamux|Mux5~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux5~0_combout\ = (\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & 
-- (\EU|snc|EU|readdata10|reg_out\(10))) # (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|snc|EU|readdata00|reg_out\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|snc|EU|readdata10|reg_out\(10),
	datac => \EU|snc|EU|readdata00|reg_out\(10),
	datad => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux5~0_combout\);

-- Location: LCCOMB_X6_Y27_N14
\EU|snc|EU|readdata11|reg_out[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata11|reg_out[10]~feeder_combout\ = \EU|readdata|msbin|reg_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|readdata|msbin|reg_out\(2),
	combout => \EU|snc|EU|readdata11|reg_out[10]~feeder_combout\);

-- Location: FF_X6_Y27_N15
\EU|snc|EU|readdata11|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata11|reg_out[10]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata11|reg_out\(10));

-- Location: LCCOMB_X8_Y27_N18
\EU|snc|EU|readdata01|reg_out[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata01|reg_out[10]~feeder_combout\ = \EU|readdata|msbin|reg_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|readdata|msbin|reg_out\(2),
	combout => \EU|snc|EU|readdata01|reg_out[10]~feeder_combout\);

-- Location: FF_X8_Y27_N19
\EU|snc|EU|readdata01|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata01|reg_out[10]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata01|reg_out\(10));

-- Location: LCCOMB_X7_Y27_N30
\EU|snc|EU|datamux|Mux5~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux5~1_combout\ = (\EU|snc|EU|datamux|Mux5~0_combout\ & ((\EU|snc|EU|readdata11|reg_out\(10)) # ((!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\)))) # (!\EU|snc|EU|datamux|Mux5~0_combout\ & 
-- (((\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & \EU|snc|EU|readdata01|reg_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|datamux|Mux5~0_combout\,
	datab => \EU|snc|EU|readdata11|reg_out\(10),
	datac => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datad => \EU|snc|EU|readdata01|reg_out\(10),
	combout => \EU|snc|EU|datamux|Mux5~1_combout\);

-- Location: FF_X7_Y27_N31
\EU|snc|EU|dataout|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|datamux|Mux5~1_combout\,
	ena => \EU|snc|CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout|reg_out\(10));

-- Location: LCCOMB_X7_Y27_N2
\EU|snc|EU|dataout_pipe|reg_out~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|dataout_pipe|reg_out~10_combout\ = (\EU|snc|CU|present_state.reset~q\ & \EU|snc|EU|dataout|reg_out\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|snc|CU|present_state.reset~q\,
	datac => \EU|snc|EU|dataout|reg_out\(10),
	combout => \EU|snc|EU|dataout_pipe|reg_out~10_combout\);

-- Location: FF_X7_Y27_N3
\EU|snc|EU|dataout_pipe|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|dataout_pipe|reg_out~10_combout\,
	ena => \EU|snc|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout_pipe|reg_out\(10));

-- Location: FF_X4_Y27_N15
\EU|readdata|msbin|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_90~clkctrl_outclk\,
	asdata => \EU|writedata|outmux|out_mux[3]~3_combout\,
	sload => VCC,
	ena => \CU|WideOr11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata|msbin|reg_out\(3));

-- Location: LCCOMB_X6_Y27_N10
\EU|snc|EU|readdata11|reg_out[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata11|reg_out[11]~feeder_combout\ = \EU|readdata|msbin|reg_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|readdata|msbin|reg_out\(3),
	combout => \EU|snc|EU|readdata11|reg_out[11]~feeder_combout\);

-- Location: FF_X6_Y27_N11
\EU|snc|EU|readdata11|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata11|reg_out[11]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata11|reg_out\(11));

-- Location: LCCOMB_X6_Y27_N16
\EU|snc|EU|readdata10|reg_out[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata10|reg_out[11]~feeder_combout\ = \EU|readdata|msbin|reg_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|readdata|msbin|reg_out\(3),
	combout => \EU|snc|EU|readdata10|reg_out[11]~feeder_combout\);

-- Location: FF_X6_Y27_N17
\EU|snc|EU|readdata10|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata10|reg_out[11]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata10|reg_out\(11));

-- Location: LCCOMB_X8_Y27_N24
\EU|snc|EU|readdata00|reg_out[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata00|reg_out[11]~feeder_combout\ = \EU|readdata|msbin|reg_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|readdata|msbin|reg_out\(3),
	combout => \EU|snc|EU|readdata00|reg_out[11]~feeder_combout\);

-- Location: FF_X8_Y27_N25
\EU|snc|EU|readdata00|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata00|reg_out[11]~feeder_combout\,
	ena => \EU|snc|EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata00|reg_out\(11));

-- Location: LCCOMB_X8_Y27_N30
\EU|snc|EU|readdata01|reg_out[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata01|reg_out[11]~feeder_combout\ = \EU|readdata|msbin|reg_out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|readdata|msbin|reg_out\(3),
	combout => \EU|snc|EU|readdata01|reg_out[11]~feeder_combout\);

-- Location: FF_X8_Y27_N31
\EU|snc|EU|readdata01|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata01|reg_out[11]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata01|reg_out\(11));

-- Location: LCCOMB_X8_Y27_N10
\EU|snc|EU|datamux|Mux4~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux4~0_combout\ = (\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|snc|EU|readdata01|reg_out\(11)) # (\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & 
-- (\EU|snc|EU|readdata00|reg_out\(11) & ((!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|snc|EU|readdata00|reg_out\(11),
	datac => \EU|snc|EU|readdata01|reg_out\(11),
	datad => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux4~0_combout\);

-- Location: LCCOMB_X7_Y27_N4
\EU|snc|EU|datamux|Mux4~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux4~1_combout\ = (\EU|snc|EU|datamux|Mux4~0_combout\ & ((\EU|snc|EU|readdata11|reg_out\(11)) # ((!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|snc|EU|datamux|Mux4~0_combout\ & (((\EU|snc|EU|readdata10|reg_out\(11) & 
-- \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|readdata11|reg_out\(11),
	datab => \EU|snc|EU|readdata10|reg_out\(11),
	datac => \EU|snc|EU|datamux|Mux4~0_combout\,
	datad => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux4~1_combout\);

-- Location: FF_X7_Y27_N5
\EU|snc|EU|dataout|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|datamux|Mux4~1_combout\,
	ena => \EU|snc|CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout|reg_out\(11));

-- Location: LCCOMB_X7_Y27_N0
\EU|snc|EU|dataout_pipe|reg_out~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|dataout_pipe|reg_out~11_combout\ = (\EU|snc|CU|present_state.reset~q\ & \EU|snc|EU|dataout|reg_out\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|snc|CU|present_state.reset~q\,
	datac => \EU|snc|EU|dataout|reg_out\(11),
	combout => \EU|snc|EU|dataout_pipe|reg_out~11_combout\);

-- Location: FF_X7_Y27_N1
\EU|snc|EU|dataout_pipe|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|dataout_pipe|reg_out~11_combout\,
	ena => \EU|snc|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout_pipe|reg_out\(11));

-- Location: LCCOMB_X4_Y27_N8
\EU|readdata|msbin|reg_out[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata|msbin|reg_out[4]~feeder_combout\ = \EU|writedata|outmux|out_mux[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|writedata|outmux|out_mux[4]~4_combout\,
	combout => \EU|readdata|msbin|reg_out[4]~feeder_combout\);

-- Location: FF_X4_Y27_N9
\EU|readdata|msbin|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_90~clkctrl_outclk\,
	d => \EU|readdata|msbin|reg_out[4]~feeder_combout\,
	ena => \CU|WideOr11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata|msbin|reg_out\(4));

-- Location: LCCOMB_X8_Y27_N16
\EU|snc|EU|readdata01|reg_out[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata01|reg_out[12]~feeder_combout\ = \EU|readdata|msbin|reg_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|msbin|reg_out\(4),
	combout => \EU|snc|EU|readdata01|reg_out[12]~feeder_combout\);

-- Location: FF_X8_Y27_N17
\EU|snc|EU|readdata01|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata01|reg_out[12]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata01|reg_out\(12));

-- Location: LCCOMB_X6_Y27_N4
\EU|snc|EU|readdata10|reg_out[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata10|reg_out[12]~feeder_combout\ = \EU|readdata|msbin|reg_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|msbin|reg_out\(4),
	combout => \EU|snc|EU|readdata10|reg_out[12]~feeder_combout\);

-- Location: FF_X6_Y27_N5
\EU|snc|EU|readdata10|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata10|reg_out[12]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata10|reg_out\(12));

-- Location: LCCOMB_X8_Y27_N26
\EU|snc|EU|readdata00|reg_out[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata00|reg_out[12]~feeder_combout\ = \EU|readdata|msbin|reg_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|msbin|reg_out\(4),
	combout => \EU|snc|EU|readdata00|reg_out[12]~feeder_combout\);

-- Location: FF_X8_Y27_N27
\EU|snc|EU|readdata00|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata00|reg_out[12]~feeder_combout\,
	ena => \EU|snc|EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata00|reg_out\(12));

-- Location: LCCOMB_X7_Y27_N18
\EU|snc|EU|datamux|Mux3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux3~0_combout\ = (\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|snc|EU|readdata10|reg_out\(12)) # ((\EU|snc|EU|data_counter|entry_tff|dummy_out~q\)))) # (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & 
-- (((!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & \EU|snc|EU|readdata00|reg_out\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datab => \EU|snc|EU|readdata10|reg_out\(12),
	datac => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datad => \EU|snc|EU|readdata00|reg_out\(12),
	combout => \EU|snc|EU|datamux|Mux3~0_combout\);

-- Location: LCCOMB_X6_Y27_N30
\EU|snc|EU|readdata11|reg_out[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata11|reg_out[12]~feeder_combout\ = \EU|readdata|msbin|reg_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|msbin|reg_out\(4),
	combout => \EU|snc|EU|readdata11|reg_out[12]~feeder_combout\);

-- Location: FF_X6_Y27_N31
\EU|snc|EU|readdata11|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata11|reg_out[12]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata11|reg_out\(12));

-- Location: LCCOMB_X7_Y27_N26
\EU|snc|EU|datamux|Mux3~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux3~1_combout\ = (\EU|snc|EU|datamux|Mux3~0_combout\ & (((\EU|snc|EU|readdata11|reg_out\(12)) # (!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\)))) # (!\EU|snc|EU|datamux|Mux3~0_combout\ & (\EU|snc|EU|readdata01|reg_out\(12) & 
-- (\EU|snc|EU|data_counter|entry_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|readdata01|reg_out\(12),
	datab => \EU|snc|EU|datamux|Mux3~0_combout\,
	datac => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datad => \EU|snc|EU|readdata11|reg_out\(12),
	combout => \EU|snc|EU|datamux|Mux3~1_combout\);

-- Location: FF_X7_Y27_N27
\EU|snc|EU|dataout|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|datamux|Mux3~1_combout\,
	ena => \EU|snc|CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout|reg_out\(12));

-- Location: LCCOMB_X7_Y27_N10
\EU|snc|EU|dataout_pipe|reg_out~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|dataout_pipe|reg_out~12_combout\ = (\EU|snc|CU|present_state.reset~q\ & \EU|snc|EU|dataout|reg_out\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|snc|CU|present_state.reset~q\,
	datac => \EU|snc|EU|dataout|reg_out\(12),
	combout => \EU|snc|EU|dataout_pipe|reg_out~12_combout\);

-- Location: FF_X7_Y27_N11
\EU|snc|EU|dataout_pipe|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|dataout_pipe|reg_out~12_combout\,
	ena => \EU|snc|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout_pipe|reg_out\(12));

-- Location: FF_X4_Y27_N21
\EU|readdata|msbin|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_90~clkctrl_outclk\,
	asdata => \EU|writedata|outmux|out_mux[5]~5_combout\,
	sload => VCC,
	ena => \CU|WideOr11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata|msbin|reg_out\(5));

-- Location: LCCOMB_X6_Y27_N26
\EU|snc|EU|readdata11|reg_out[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata11|reg_out[13]~feeder_combout\ = \EU|readdata|msbin|reg_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|msbin|reg_out\(5),
	combout => \EU|snc|EU|readdata11|reg_out[13]~feeder_combout\);

-- Location: FF_X6_Y27_N27
\EU|snc|EU|readdata11|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata11|reg_out[13]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata11|reg_out\(13));

-- Location: LCCOMB_X6_Y27_N0
\EU|snc|EU|readdata10|reg_out[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata10|reg_out[13]~feeder_combout\ = \EU|readdata|msbin|reg_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|msbin|reg_out\(5),
	combout => \EU|snc|EU|readdata10|reg_out[13]~feeder_combout\);

-- Location: FF_X6_Y27_N1
\EU|snc|EU|readdata10|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata10|reg_out[13]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata10|reg_out\(13));

-- Location: LCCOMB_X8_Y27_N4
\EU|snc|EU|readdata01|reg_out[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata01|reg_out[13]~feeder_combout\ = \EU|readdata|msbin|reg_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|msbin|reg_out\(5),
	combout => \EU|snc|EU|readdata01|reg_out[13]~feeder_combout\);

-- Location: FF_X8_Y27_N5
\EU|snc|EU|readdata01|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata01|reg_out[13]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata01|reg_out\(13));

-- Location: LCCOMB_X8_Y27_N2
\EU|snc|EU|readdata00|reg_out[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata00|reg_out[13]~feeder_combout\ = \EU|readdata|msbin|reg_out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|msbin|reg_out\(5),
	combout => \EU|snc|EU|readdata00|reg_out[13]~feeder_combout\);

-- Location: FF_X8_Y27_N3
\EU|snc|EU|readdata00|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata00|reg_out[13]~feeder_combout\,
	ena => \EU|snc|EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata00|reg_out\(13));

-- Location: LCCOMB_X8_Y27_N20
\EU|snc|EU|datamux|Mux2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux2~0_combout\ = (\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\) # ((\EU|snc|EU|readdata01|reg_out\(13))))) # (!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & 
-- (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|snc|EU|readdata00|reg_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|snc|EU|readdata01|reg_out\(13),
	datad => \EU|snc|EU|readdata00|reg_out\(13),
	combout => \EU|snc|EU|datamux|Mux2~0_combout\);

-- Location: LCCOMB_X7_Y27_N8
\EU|snc|EU|datamux|Mux2~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux2~1_combout\ = (\EU|snc|EU|datamux|Mux2~0_combout\ & ((\EU|snc|EU|readdata11|reg_out\(13)) # ((!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|snc|EU|datamux|Mux2~0_combout\ & (((\EU|snc|EU|readdata10|reg_out\(13) & 
-- \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|readdata11|reg_out\(13),
	datab => \EU|snc|EU|readdata10|reg_out\(13),
	datac => \EU|snc|EU|datamux|Mux2~0_combout\,
	datad => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux2~1_combout\);

-- Location: FF_X7_Y27_N9
\EU|snc|EU|dataout|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|datamux|Mux2~1_combout\,
	ena => \EU|snc|CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout|reg_out\(13));

-- Location: LCCOMB_X7_Y27_N16
\EU|snc|EU|dataout_pipe|reg_out~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|dataout_pipe|reg_out~13_combout\ = (\EU|snc|CU|present_state.reset~q\ & \EU|snc|EU|dataout|reg_out\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|snc|CU|present_state.reset~q\,
	datad => \EU|snc|EU|dataout|reg_out\(13),
	combout => \EU|snc|EU|dataout_pipe|reg_out~13_combout\);

-- Location: FF_X7_Y27_N17
\EU|snc|EU|dataout_pipe|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|dataout_pipe|reg_out~13_combout\,
	ena => \EU|snc|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout_pipe|reg_out\(13));

-- Location: FF_X4_Y27_N23
\EU|readdata|msbin|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_90~clkctrl_outclk\,
	asdata => \EU|writedata|outmux|out_mux[6]~6_combout\,
	sload => VCC,
	ena => \CU|WideOr11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata|msbin|reg_out\(6));

-- Location: LCCOMB_X4_Y29_N10
\EU|snc|EU|readdata11|reg_out[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata11|reg_out[14]~feeder_combout\ = \EU|readdata|msbin|reg_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|msbin|reg_out\(6),
	combout => \EU|snc|EU|readdata11|reg_out[14]~feeder_combout\);

-- Location: FF_X4_Y29_N11
\EU|snc|EU|readdata11|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata11|reg_out[14]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata11|reg_out\(14));

-- Location: LCCOMB_X6_Y29_N24
\EU|snc|EU|readdata00|reg_out[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata00|reg_out[14]~feeder_combout\ = \EU|readdata|msbin|reg_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|readdata|msbin|reg_out\(6),
	combout => \EU|snc|EU|readdata00|reg_out[14]~feeder_combout\);

-- Location: FF_X6_Y29_N25
\EU|snc|EU|readdata00|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata00|reg_out[14]~feeder_combout\,
	ena => \EU|snc|EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata00|reg_out\(14));

-- Location: LCCOMB_X6_Y29_N14
\EU|snc|EU|readdata10|reg_out[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata10|reg_out[14]~feeder_combout\ = \EU|readdata|msbin|reg_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|readdata|msbin|reg_out\(6),
	combout => \EU|snc|EU|readdata10|reg_out[14]~feeder_combout\);

-- Location: FF_X6_Y29_N15
\EU|snc|EU|readdata10|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata10|reg_out[14]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata10|reg_out\(14));

-- Location: LCCOMB_X6_Y29_N18
\EU|snc|EU|datamux|Mux1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux1~0_combout\ = (\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & 
-- ((\EU|snc|EU|readdata10|reg_out\(14)))) # (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (\EU|snc|EU|readdata00|reg_out\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|snc|EU|readdata00|reg_out\(14),
	datac => \EU|snc|EU|readdata10|reg_out\(14),
	datad => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux1~0_combout\);

-- Location: LCCOMB_X5_Y29_N22
\EU|snc|EU|readdata01|reg_out[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata01|reg_out[14]~feeder_combout\ = \EU|readdata|msbin|reg_out\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|msbin|reg_out\(6),
	combout => \EU|snc|EU|readdata01|reg_out[14]~feeder_combout\);

-- Location: FF_X5_Y29_N23
\EU|snc|EU|readdata01|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata01|reg_out[14]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata01|reg_out\(14));

-- Location: LCCOMB_X5_Y29_N26
\EU|snc|EU|datamux|Mux1~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux1~1_combout\ = (\EU|snc|EU|datamux|Mux1~0_combout\ & ((\EU|snc|EU|readdata11|reg_out\(14)) # ((!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\)))) # (!\EU|snc|EU|datamux|Mux1~0_combout\ & (((\EU|snc|EU|readdata01|reg_out\(14) & 
-- \EU|snc|EU|data_counter|entry_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|readdata11|reg_out\(14),
	datab => \EU|snc|EU|datamux|Mux1~0_combout\,
	datac => \EU|snc|EU|readdata01|reg_out\(14),
	datad => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux1~1_combout\);

-- Location: FF_X5_Y29_N27
\EU|snc|EU|dataout|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|datamux|Mux1~1_combout\,
	ena => \EU|snc|CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout|reg_out\(14));

-- Location: LCCOMB_X6_Y28_N10
\EU|snc|EU|dataout_pipe|reg_out~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|dataout_pipe|reg_out~14_combout\ = (\EU|snc|CU|present_state.reset~q\ & \EU|snc|EU|dataout|reg_out\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|snc|CU|present_state.reset~q\,
	datac => \EU|snc|EU|dataout|reg_out\(14),
	combout => \EU|snc|EU|dataout_pipe|reg_out~14_combout\);

-- Location: FF_X6_Y28_N11
\EU|snc|EU|dataout_pipe|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|dataout_pipe|reg_out~14_combout\,
	ena => \EU|snc|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout_pipe|reg_out\(14));

-- Location: LCCOMB_X4_Y27_N18
\EU|readdata|msbin|reg_out[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata|msbin|reg_out[7]~feeder_combout\ = \EU|writedata|outmux|out_mux[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|writedata|outmux|out_mux[7]~7_combout\,
	combout => \EU|readdata|msbin|reg_out[7]~feeder_combout\);

-- Location: FF_X4_Y27_N19
\EU|readdata|msbin|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_90~clkctrl_outclk\,
	d => \EU|readdata|msbin|reg_out[7]~feeder_combout\,
	ena => \CU|WideOr11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata|msbin|reg_out\(7));

-- Location: LCCOMB_X5_Y28_N14
\EU|snc|EU|readdata01|reg_out[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata01|reg_out[15]~feeder_combout\ = \EU|readdata|msbin|reg_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|readdata|msbin|reg_out\(7),
	combout => \EU|snc|EU|readdata01|reg_out[15]~feeder_combout\);

-- Location: FF_X5_Y28_N15
\EU|snc|EU|readdata01|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata01|reg_out[15]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata01|reg_out\(15));

-- Location: LCCOMB_X5_Y28_N24
\EU|snc|EU|readdata00|reg_out[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata00|reg_out[15]~feeder_combout\ = \EU|readdata|msbin|reg_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|readdata|msbin|reg_out\(7),
	combout => \EU|snc|EU|readdata00|reg_out[15]~feeder_combout\);

-- Location: FF_X5_Y28_N25
\EU|snc|EU|readdata00|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata00|reg_out[15]~feeder_combout\,
	ena => \EU|snc|EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata00|reg_out\(15));

-- Location: LCCOMB_X5_Y28_N30
\EU|snc|EU|datamux|Mux0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux0~0_combout\ = (\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\) # ((\EU|snc|EU|readdata01|reg_out\(15))))) # (!\EU|snc|EU|data_counter|entry_tff|dummy_out~q\ & 
-- (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|snc|EU|readdata00|reg_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|snc|EU|readdata01|reg_out\(15),
	datad => \EU|snc|EU|readdata00|reg_out\(15),
	combout => \EU|snc|EU|datamux|Mux0~0_combout\);

-- Location: LCCOMB_X6_Y27_N20
\EU|snc|EU|readdata10|reg_out[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata10|reg_out[15]~feeder_combout\ = \EU|readdata|msbin|reg_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|msbin|reg_out\(7),
	combout => \EU|snc|EU|readdata10|reg_out[15]~feeder_combout\);

-- Location: FF_X6_Y27_N21
\EU|snc|EU|readdata10|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata10|reg_out[15]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata10|reg_out\(15));

-- Location: LCCOMB_X6_Y27_N6
\EU|snc|EU|readdata11|reg_out[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|readdata11|reg_out[15]~feeder_combout\ = \EU|readdata|msbin|reg_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata|msbin|reg_out\(7),
	combout => \EU|snc|EU|readdata11|reg_out[15]~feeder_combout\);

-- Location: FF_X6_Y27_N7
\EU|snc|EU|readdata11|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \RWDS_360~clkctrl_outclk\,
	d => \EU|snc|EU|readdata11|reg_out[15]~feeder_combout\,
	ena => \EU|snc|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|readdata11|reg_out\(15));

-- Location: LCCOMB_X7_Y27_N22
\EU|snc|EU|datamux|Mux0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|datamux|Mux0~1_combout\ = (\EU|snc|EU|datamux|Mux0~0_combout\ & (((\EU|snc|EU|readdata11|reg_out\(15)) # (!\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|snc|EU|datamux|Mux0~0_combout\ & (\EU|snc|EU|readdata10|reg_out\(15) & 
-- ((\EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|snc|EU|datamux|Mux0~0_combout\,
	datab => \EU|snc|EU|readdata10|reg_out\(15),
	datac => \EU|snc|EU|readdata11|reg_out\(15),
	datad => \EU|snc|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|snc|EU|datamux|Mux0~1_combout\);

-- Location: FF_X7_Y27_N23
\EU|snc|EU|dataout|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|datamux|Mux0~1_combout\,
	ena => \EU|snc|CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout|reg_out\(15));

-- Location: LCCOMB_X7_Y27_N14
\EU|snc|EU|dataout_pipe|reg_out~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|dataout_pipe|reg_out~15_combout\ = (\EU|snc|CU|present_state.reset~q\ & \EU|snc|EU|dataout|reg_out\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|snc|CU|present_state.reset~q\,
	datac => \EU|snc|EU|dataout|reg_out\(15),
	combout => \EU|snc|EU|dataout_pipe|reg_out~15_combout\);

-- Location: FF_X7_Y27_N15
\EU|snc|EU|dataout_pipe|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|dataout_pipe|reg_out~15_combout\,
	ena => \EU|snc|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|dataout_pipe|reg_out\(15));

-- Location: LCCOMB_X8_Y26_N2
\EU|snc|EU|valid_pipe|dff_out~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|snc|EU|valid_pipe|dff_out~feeder_combout\ = \EU|snc|CU|present_state.reception~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|snc|CU|present_state.reception~q\,
	combout => \EU|snc|EU|valid_pipe|dff_out~feeder_combout\);

-- Location: FF_X8_Y26_N3
\EU|snc|EU|valid_pipe|dff_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|snc|EU|valid_pipe|dff_out~feeder_combout\,
	ena => \EU|snc|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|snc|EU|valid_pipe|dff_out~q\);

-- Location: LCCOMB_X5_Y25_N10
\CU|WideOr17~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr17~1_combout\ = (!\CU|present_state.CA1~q\ & (!\CU|present_state.CA2~q\ & !\CU|present_state.CA_init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.CA1~q\,
	datab => \CU|present_state.CA2~q\,
	datad => \CU|present_state.CA_init~q\,
	combout => \CU|WideOr17~1_combout\);

-- Location: LCCOMB_X5_Y25_N0
\CU|WideOr17~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr17~2_combout\ = ((\CU|present_state.CA_end~q\) # ((\CU|present_state.writemem_wait~q\) # (\CU|WideOr17~0_combout\))) # (!\CU|WideOr17~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr17~1_combout\,
	datab => \CU|present_state.CA_end~q\,
	datac => \CU|present_state.writemem_wait~q\,
	datad => \CU|WideOr17~0_combout\,
	combout => \CU|WideOr17~2_combout\);

-- Location: LCCOMB_X8_Y25_N0
\CU|WideOr16~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr16~0_combout\ = (\CU|present_state.synch_restoring_1~q\) # ((\CU|present_state.synch_restoring_2~q\) # ((!\CU|WideOr14~0_combout\) # (!\CU|WideOr12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.synch_restoring_1~q\,
	datab => \CU|present_state.synch_restoring_2~q\,
	datac => \CU|WideOr12~0_combout\,
	datad => \CU|WideOr14~0_combout\,
	combout => \CU|WideOr16~0_combout\);

-- Location: LCCOMB_X8_Y25_N2
\CU|h_RESET_n~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|h_RESET_n~0_combout\ = (\CU|present_state.reset_wait~q\) # (!\CU|present_state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.reset_wait~q\,
	datac => \CU|present_state.reset~q\,
	combout => \CU|h_RESET_n~0_combout\);

-- Location: LCCOMB_X7_Y25_N0
\CU|WideOr11~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr11~0_combout\ = (\CU|present_state.dummycmd~q\) # (\CU|present_state.writemem_wait~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.dummycmd~q\,
	datad => \CU|present_state.writemem_wait~q\,
	combout => \CU|WideOr11~0_combout\);

-- Location: LCCOMB_X7_Y25_N22
\CU|WideOr11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr11~combout\ = ((\CU|WideOr11~0_combout\) # ((\CU|WideOr11~2_combout\) # (!\CU|WideOr20~1_combout\))) # (!\CU|WideOr11~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr11~1_combout\,
	datab => \CU|WideOr11~0_combout\,
	datac => \CU|WideOr11~2_combout\,
	datad => \CU|WideOr20~1_combout\,
	combout => \CU|WideOr11~combout\);

-- Location: FF_X7_Y25_N23
\EU|CK_gater|antiglitch|dff_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CK_gater|antiglitch|dff_out~q\);

-- Location: LCCOMB_X6_Y25_N20
\EU|CK_gater|gated_clock\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|CK_gater|gated_clock~combout\ = (\clk~input_o\ & \EU|CK_gater|antiglitch|dff_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk~input_o\,
	datad => \EU|CK_gater|antiglitch|dff_out~q\,
	combout => \EU|CK_gater|gated_clock~combout\);

-- Location: LCCOMB_X7_Y25_N26
\CU|WideOr21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr21~combout\ = (\CU|present_state.writemem_DQ~q\) # ((\CU|present_state.writemem_DQ_end~q\) # (\CU|present_state.writemem_DQ_init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.writemem_DQ~q\,
	datac => \CU|present_state.writemem_DQ_end~q\,
	datad => \CU|present_state.writemem_DQ_init~q\,
	combout => \CU|WideOr21~combout\);

-- Location: IOIBUF_X0_Y14_N1
\hbus_DQ[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hbus_DQ(0),
	o => \hbus_DQ[0]~input_o\);

-- Location: IOIBUF_X3_Y34_N1
\hbus_DQ[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hbus_DQ(1),
	o => \hbus_DQ[1]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\hbus_DQ[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hbus_DQ(2),
	o => \hbus_DQ[2]~input_o\);

-- Location: IOIBUF_X1_Y34_N8
\hbus_DQ[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hbus_DQ(3),
	o => \hbus_DQ[3]~input_o\);

-- Location: IOIBUF_X1_Y34_N1
\hbus_DQ[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hbus_DQ(4),
	o => \hbus_DQ[4]~input_o\);

-- Location: IOIBUF_X16_Y34_N15
\hbus_DQ[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hbus_DQ(5),
	o => \hbus_DQ[5]~input_o\);

-- Location: IOIBUF_X7_Y34_N15
\hbus_DQ[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hbus_DQ(6),
	o => \hbus_DQ[6]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\hbus_DQ[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hbus_DQ(7),
	o => \hbus_DQ[7]~input_o\);

-- Location: LCCOMB_X14_Y10_N0
\SSRAM_address[22]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(22),
	o => \SSRAM_address[22]~input0\);

-- Location: LCCOMB_X7_Y30_N0
\SSRAM_address[23]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(23),
	o => \SSRAM_address[23]~input0\);

-- Location: LCCOMB_X49_Y3_N0
\SSRAM_address[24]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(24),
	o => \SSRAM_address[24]~input0\);

-- Location: LCCOMB_X6_Y13_N0
\SSRAM_address[25]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(25),
	o => \SSRAM_address[25]~input0\);

-- Location: LCCOMB_X1_Y32_N0
\SSRAM_address[26]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(26),
	o => \SSRAM_address[26]~input0\);

-- Location: LCCOMB_X40_Y12_N0
\SSRAM_address[27]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(27),
	o => \SSRAM_address[27]~input0\);

-- Location: LCCOMB_X24_Y18_N0
\SSRAM_address[28]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(28),
	o => \SSRAM_address[28]~input0\);

-- Location: LCCOMB_X37_Y6_N0
\SSRAM_address[29]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(29),
	o => \SSRAM_address[29]~input0\);

-- Location: LCCOMB_X30_Y6_N0
\SSRAM_address[30]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(30),
	o => \SSRAM_address[30]~input0\);

-- Location: LCCOMB_X38_Y15_N0
\SSRAM_address[31]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SSRAM_address(31),
	o => \SSRAM_address[31]~input0\);

ww_SSRAM_out(0) <= \SSRAM_out[0]~output_o\;

ww_SSRAM_out(1) <= \SSRAM_out[1]~output_o\;

ww_SSRAM_out(2) <= \SSRAM_out[2]~output_o\;

ww_SSRAM_out(3) <= \SSRAM_out[3]~output_o\;

ww_SSRAM_out(4) <= \SSRAM_out[4]~output_o\;

ww_SSRAM_out(5) <= \SSRAM_out[5]~output_o\;

ww_SSRAM_out(6) <= \SSRAM_out[6]~output_o\;

ww_SSRAM_out(7) <= \SSRAM_out[7]~output_o\;

ww_SSRAM_out(8) <= \SSRAM_out[8]~output_o\;

ww_SSRAM_out(9) <= \SSRAM_out[9]~output_o\;

ww_SSRAM_out(10) <= \SSRAM_out[10]~output_o\;

ww_SSRAM_out(11) <= \SSRAM_out[11]~output_o\;

ww_SSRAM_out(12) <= \SSRAM_out[12]~output_o\;

ww_SSRAM_out(13) <= \SSRAM_out[13]~output_o\;

ww_SSRAM_out(14) <= \SSRAM_out[14]~output_o\;

ww_SSRAM_out(15) <= \SSRAM_out[15]~output_o\;

ww_SSRAM_validout <= \SSRAM_validout~output_o\;

ww_SSRAM_busy <= \SSRAM_busy~output_o\;

ww_SSRAM_haltdata <= \SSRAM_haltdata~output_o\;

ww_hbus_CS_n <= \hbus_CS_n~output_o\;

ww_hbus_RESET_n <= \hbus_RESET_n~output_o\;

ww_hCK_edgeal <= \hCK_edgeal~output_o\;

ww_drive_RWDS_low <= \drive_RWDS_low~output_o\;

hbus_DQ(0) <= \hbus_DQ[0]~output_o\;

hbus_DQ(1) <= \hbus_DQ[1]~output_o\;

hbus_DQ(2) <= \hbus_DQ[2]~output_o\;

hbus_DQ(3) <= \hbus_DQ[3]~output_o\;

hbus_DQ(4) <= \hbus_DQ[4]~output_o\;

hbus_DQ(5) <= \hbus_DQ[5]~output_o\;

hbus_DQ(6) <= \hbus_DQ[6]~output_o\;

hbus_DQ(7) <= \hbus_DQ[7]~output_o\;
END structure;


