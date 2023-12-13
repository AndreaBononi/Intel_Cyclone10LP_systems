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

-- DATE "12/13/2023 17:21:28"

-- 
-- Device: Altera 10CL025YE144C8G Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	avs_to_hram_converter IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic := '0';
	avs_address : IN std_logic_vector(31 DOWNTO 0);
	avs_read : IN std_logic := '0';
	avs_readdata : BUFFER std_logic_vector(15 DOWNTO 0);
	avs_write : IN std_logic := '0';
	avs_writedata : IN std_logic_vector(15 DOWNTO 0);
	avs_waitrequest : BUFFER std_logic;
	avs_readdatavalid : BUFFER std_logic;
	avs_burstcount : IN std_logic_vector(10 DOWNTO 0);
	hram_RESET_n : BUFFER std_logic;
	hram_CK : BUFFER std_logic;
	hram_CK_n : BUFFER std_logic;
	hram_DQ : BUFFER std_logic_vector(7 DOWNTO 0);
	hram_RWDS_out : BUFFER std_logic;
	hram_RWDS_in : IN std_logic;
	hram_RWDS_in_90shift : IN std_logic;
	hram_CS_n : BUFFER std_logic
	);
END avs_to_hram_converter;

-- Design Ports Information
-- hram_CK_n	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hram_RWDS_out	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hram_DQ[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hram_DQ[1]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hram_DQ[2]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hram_DQ[3]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hram_DQ[4]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hram_DQ[5]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hram_DQ[6]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hram_DQ[7]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hram_RWDS_in	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hram_RWDS_in_90shift	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_readdata[0]	=>  Location: LCCOMB_X9_Y6_N0,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[1]	=>  Location: LCCOMB_X9_Y6_N2,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[2]	=>  Location: LCCOMB_X9_Y6_N4,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[3]	=>  Location: LCCOMB_X9_Y6_N6,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[4]	=>  Location: LCCOMB_X9_Y6_N8,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[5]	=>  Location: LCCOMB_X9_Y6_N10,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[6]	=>  Location: LCCOMB_X9_Y6_N12,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[7]	=>  Location: LCCOMB_X9_Y6_N14,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[8]	=>  Location: LCCOMB_X9_Y6_N16,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[9]	=>  Location: LCCOMB_X9_Y6_N18,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[10]	=>  Location: LCCOMB_X9_Y5_N0,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[11]	=>  Location: LCCOMB_X9_Y5_N8,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[12]	=>  Location: LCCOMB_X9_Y5_N26,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[13]	=>  Location: LCCOMB_X9_Y6_N20,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[14]	=>  Location: LCCOMB_X9_Y6_N22,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[15]	=>  Location: LCCOMB_X7_Y2_N0,	 I/O Standard: None,	 Current Strength: Default
-- avs_waitrequest	=>  Location: LCCOMB_X9_Y6_N24,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdatavalid	=>  Location: LCCOMB_X7_Y2_N10,	 I/O Standard: None,	 Current Strength: Default
-- hram_RESET_n	=>  Location: LCCOMB_X7_Y2_N14,	 I/O Standard: None,	 Current Strength: Default
-- hram_CK	=>  Location: LCCOMB_X32_Y18_N0,	 I/O Standard: None,	 Current Strength: Default
-- hram_CS_n	=>  Location: LCCOMB_X7_Y2_N18,	 I/O Standard: None,	 Current Strength: Default
-- avs_read	=>  Location: LCCOMB_X7_Y2_N12,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[0]	=>  Location: LCCOMB_X7_Y2_N26,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[1]	=>  Location: LCCOMB_X7_Y2_N4,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[2]	=>  Location: LCCOMB_X7_Y2_N30,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[3]	=>  Location: LCCOMB_X7_Y2_N8,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[4]	=>  Location: LCCOMB_X7_Y2_N2,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[5]	=>  Location: LCCOMB_X7_Y2_N16,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[6]	=>  Location: LCCOMB_X7_Y2_N6,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[7]	=>  Location: LCCOMB_X7_Y2_N20,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[8]	=>  Location: LCCOMB_X5_Y3_N4,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[9]	=>  Location: LCCOMB_X4_Y3_N4,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[10]	=>  Location: LCCOMB_X7_Y5_N0,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[11]	=>  Location: LCCOMB_X9_Y5_N18,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[14]	=>  Location: LCCOMB_X7_Y5_N30,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[15]	=>  Location: LCCOMB_X7_Y5_N16,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[12]	=>  Location: LCCOMB_X7_Y5_N18,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[13]	=>  Location: LCCOMB_X7_Y5_N24,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[16]	=>  Location: LCCOMB_X9_Y5_N4,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[17]	=>  Location: LCCOMB_X7_Y5_N2,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[18]	=>  Location: LCCOMB_X7_Y5_N8,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[19]	=>  Location: LCCOMB_X7_Y5_N14,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[22]	=>  Location: LCCOMB_X7_Y5_N28,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[20]	=>  Location: LCCOMB_X7_Y5_N6,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[21]	=>  Location: LCCOMB_X9_Y5_N22,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[23]	=>  Location: LCCOMB_X9_Y5_N20,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[24]	=>  Location: LCCOMB_X7_Y5_N20,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[25]	=>  Location: LCCOMB_X9_Y5_N6,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[26]	=>  Location: LCCOMB_X9_Y5_N16,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[27]	=>  Location: LCCOMB_X9_Y5_N14,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[28]	=>  Location: LCCOMB_X9_Y5_N24,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[29]	=>  Location: LCCOMB_X9_Y5_N2,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[30]	=>  Location: LCCOMB_X9_Y5_N28,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[31]	=>  Location: LCCOMB_X9_Y5_N10,	 I/O Standard: None,	 Current Strength: Default
-- reset_n	=>  Location: LCCOMB_X7_Y4_N20,	 I/O Standard: None,	 Current Strength: Default
-- avs_write	=>  Location: LCCOMB_X7_Y4_N6,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[0]	=>  Location: LCCOMB_X5_Y3_N6,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[10]	=>  Location: LCCOMB_X10_Y5_N16,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[9]	=>  Location: LCCOMB_X10_Y5_N26,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[8]	=>  Location: LCCOMB_X10_Y5_N24,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[7]	=>  Location: LCCOMB_X7_Y5_N10,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[6]	=>  Location: LCCOMB_X10_Y5_N30,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[5]	=>  Location: LCCOMB_X10_Y5_N20,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[4]	=>  Location: LCCOMB_X10_Y5_N22,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[3]	=>  Location: LCCOMB_X10_Y5_N28,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[2]	=>  Location: LCCOMB_X10_Y5_N18,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[1]	=>  Location: LCCOMB_X10_Y5_N4,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[0]	=>  Location: LCCOMB_X10_Y5_N6,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[8]	=>  Location: LCCOMB_X10_Y5_N0,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[9]	=>  Location: LCCOMB_X10_Y5_N2,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[1]	=>  Location: LCCOMB_X7_Y5_N12,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[10]	=>  Location: LCCOMB_X10_Y5_N12,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[2]	=>  Location: LCCOMB_X7_Y5_N22,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[11]	=>  Location: LCCOMB_X10_Y5_N10,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[3]	=>  Location: LCCOMB_X9_Y5_N12,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[12]	=>  Location: LCCOMB_X10_Y5_N8,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[4]	=>  Location: LCCOMB_X6_Y6_N28,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[13]	=>  Location: LCCOMB_X7_Y5_N4,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[5]	=>  Location: LCCOMB_X9_Y5_N30,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[14]	=>  Location: LCCOMB_X1_Y4_N16,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[6]	=>  Location: LCCOMB_X7_Y5_N26,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[15]	=>  Location: LCCOMB_X1_Y4_N26,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[7]	=>  Location: LCCOMB_X2_Y5_N24,	 I/O Standard: None,	 Current Strength: Default


ARCHITECTURE structure OF avs_to_hram_converter IS
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
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_avs_address : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_avs_read : std_logic;
SIGNAL ww_avs_readdata : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_avs_write : std_logic;
SIGNAL ww_avs_writedata : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_avs_waitrequest : std_logic;
SIGNAL ww_avs_readdatavalid : std_logic;
SIGNAL ww_avs_burstcount : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_hram_RESET_n : std_logic;
SIGNAL ww_hram_CK : std_logic;
SIGNAL ww_hram_CK_n : std_logic;
SIGNAL ww_hram_DQ : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hram_RWDS_out : std_logic;
SIGNAL ww_hram_RWDS_in : std_logic;
SIGNAL ww_hram_RWDS_in_90shift : std_logic;
SIGNAL ww_hram_CS_n : std_logic;
SIGNAL \EU|clk_gater_inst|altclkctrl_0|clkctrl_altclkctrl_0_sub_component|clkctrl1_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EU|clk_gater_inst|altclkctrl_0|clkctrl_altclkctrl_0_sub_component|clkctrl1_CLKSELECT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \EU|clk_shifter|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \EU|clk_shifter|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hram_RWDS_in_90shift~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \hram_RWDS_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~ALTERA_DCLK~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_DCLK~~obuf_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \avs_write~input0\ : std_logic;
SIGNAL \reset_n~input0\ : std_logic;
SIGNAL \CU|present_state.stop_burst_2~q\ : std_logic;
SIGNAL \CU|Selector9~0_combout\ : std_logic;
SIGNAL \CU|present_state.idle_burst~q\ : std_logic;
SIGNAL \CU|next_state.restore_burst~0_combout\ : std_logic;
SIGNAL \CU|present_state.restore_burst~q\ : std_logic;
SIGNAL \avs_read~input0\ : std_logic;
SIGNAL \avs_address[12]~input0\ : std_logic;
SIGNAL \avs_address[15]~input0\ : std_logic;
SIGNAL \avs_address[14]~input0\ : std_logic;
SIGNAL \EU|config~3_combout\ : std_logic;
SIGNAL \avs_address[13]~input0\ : std_logic;
SIGNAL \avs_address[9]~input0\ : std_logic;
SIGNAL \avs_address[11]~input0\ : std_logic;
SIGNAL \avs_address[10]~input0\ : std_logic;
SIGNAL \avs_address[8]~input0\ : std_logic;
SIGNAL \EU|config~2_combout\ : std_logic;
SIGNAL \EU|config~4_combout\ : std_logic;
SIGNAL \avs_address[2]~input0\ : std_logic;
SIGNAL \avs_address[1]~input0\ : std_logic;
SIGNAL \avs_address[3]~input0\ : std_logic;
SIGNAL \avs_address[0]~input0\ : std_logic;
SIGNAL \EU|config~0_combout\ : std_logic;
SIGNAL \avs_address[4]~input0\ : std_logic;
SIGNAL \avs_address[5]~input0\ : std_logic;
SIGNAL \avs_address[7]~input0\ : std_logic;
SIGNAL \avs_address[6]~input0\ : std_logic;
SIGNAL \EU|config~1_combout\ : std_logic;
SIGNAL \avs_address[25]~input0\ : std_logic;
SIGNAL \avs_address[26]~input0\ : std_logic;
SIGNAL \avs_address[27]~input0\ : std_logic;
SIGNAL \avs_address[24]~input0\ : std_logic;
SIGNAL \EU|config~7_combout\ : std_logic;
SIGNAL \avs_address[23]~input0\ : std_logic;
SIGNAL \avs_address[21]~input0\ : std_logic;
SIGNAL \avs_address[20]~input0\ : std_logic;
SIGNAL \avs_address[22]~input0\ : std_logic;
SIGNAL \EU|config~6_combout\ : std_logic;
SIGNAL \avs_address[29]~input0\ : std_logic;
SIGNAL \avs_address[30]~input0\ : std_logic;
SIGNAL \avs_address[31]~input0\ : std_logic;
SIGNAL \avs_address[28]~input0\ : std_logic;
SIGNAL \EU|config~8_combout\ : std_logic;
SIGNAL \avs_address[17]~input0\ : std_logic;
SIGNAL \avs_address[19]~input0\ : std_logic;
SIGNAL \avs_address[18]~input0\ : std_logic;
SIGNAL \avs_address[16]~input0\ : std_logic;
SIGNAL \EU|config~5_combout\ : std_logic;
SIGNAL \EU|config~9_combout\ : std_logic;
SIGNAL \EU|config~combout\ : std_logic;
SIGNAL \CU|present_state.reset~feeder_combout\ : std_logic;
SIGNAL \CU|present_state.reset~q\ : std_logic;
SIGNAL \CU|present_state.CA_end~q\ : std_logic;
SIGNAL \EU|op_tracker|dout~q\ : std_logic;
SIGNAL \CU|Selector8~0_combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:5:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:5:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~1_combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:8:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:8:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~1_combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:10:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:10:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:11:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:11:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:12:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:12:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:13:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:13:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_timer|tim_15000~0_combout\ : std_logic;
SIGNAL \EU|deadline_timer|tim_15000~1_combout\ : std_logic;
SIGNAL \EU|deadline_timer|tim_15000~2_combout\ : std_logic;
SIGNAL \CU|Selector1~0_combout\ : std_logic;
SIGNAL \CU|present_state.reset_exit~q\ : std_logic;
SIGNAL \avs_writedata[0]~input0\ : std_logic;
SIGNAL \CU|Selector3~0_combout\ : std_logic;
SIGNAL \CU|Selector3~1_combout\ : std_logic;
SIGNAL \CU|Selector5~0_combout\ : std_logic;
SIGNAL \CU|present_state.write_virtconf~q\ : std_logic;
SIGNAL \EU|dpd_req_tracker|dout~0_combout\ : std_logic;
SIGNAL \EU|dpd_req_tracker|dout~q\ : std_logic;
SIGNAL \CU|next_state.writeconf1_prep~0_combout\ : std_logic;
SIGNAL \CU|present_state.writeconf1_prep~q\ : std_logic;
SIGNAL \EU|init_tracker|dout~0_combout\ : std_logic;
SIGNAL \EU|init_tracker|dout~q\ : std_logic;
SIGNAL \CU|next_state.writeconf1~0_combout\ : std_logic;
SIGNAL \CU|present_state.writeconf1~q\ : std_logic;
SIGNAL \CU|present_state.writeconf1_end~q\ : std_logic;
SIGNAL \CU|next_state.writeconf0_prep~0_combout\ : std_logic;
SIGNAL \CU|present_state.writeconf0_prep~q\ : std_logic;
SIGNAL \CU|next_state.writeconf_CA0~0_combout\ : std_logic;
SIGNAL \CU|present_state.writeconf_CA0~q\ : std_logic;
SIGNAL \CU|present_state.writeconf_CA1~q\ : std_logic;
SIGNAL \CU|present_state.writeconf_CA2~q\ : std_logic;
SIGNAL \CU|next_state.writeconf0~0_combout\ : std_logic;
SIGNAL \CU|present_state.writeconf0~q\ : std_logic;
SIGNAL \CU|present_state.writeconf0_end~feeder_combout\ : std_logic;
SIGNAL \CU|present_state.writeconf0_end~q\ : std_logic;
SIGNAL \CU|Selector6~0_combout\ : std_logic;
SIGNAL \CU|present_state.wait_dpd_in~q\ : std_logic;
SIGNAL \EU|dpd_tracker|dout~0_combout\ : std_logic;
SIGNAL \EU|dpd_tracker|dout~q\ : std_logic;
SIGNAL \CU|Selector3~2_combout\ : std_logic;
SIGNAL \CU|Selector3~3_combout\ : std_logic;
SIGNAL \CU|present_state.dummycmd~q\ : std_logic;
SIGNAL \CU|next_state.dummycmd_last~0_combout\ : std_logic;
SIGNAL \CU|present_state.dummycmd_last~q\ : std_logic;
SIGNAL \CU|present_state.dummycmd_end~q\ : std_logic;
SIGNAL \CU|Selector4~0_combout\ : std_logic;
SIGNAL \CU|present_state.wait_dpd_out~q\ : std_logic;
SIGNAL \CU|WideOr15~0_combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|entry_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|entry_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_timer|tim_21~0_combout\ : std_logic;
SIGNAL \EU|deadline_timer|tim_21~1_combout\ : std_logic;
SIGNAL \EU|deadline_timer|tim_21~2_combout\ : std_logic;
SIGNAL \CU|Selector8~1_combout\ : std_logic;
SIGNAL \CU|present_state.writemem_wait~q\ : std_logic;
SIGNAL \CU|WideOr15~1_combout\ : std_logic;
SIGNAL \CU|WideOr12~1_combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:3:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:3:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_timer|tim_21~combout\ : std_logic;
SIGNAL \CU|Selector0~0_combout\ : std_logic;
SIGNAL \CU|present_state.reset_wait~q\ : std_logic;
SIGNAL \CU|next_state.reset_exit_begin~0_combout\ : std_logic;
SIGNAL \CU|present_state.reset_exit_begin~q\ : std_logic;
SIGNAL \CU|WideOr13~0_combout\ : std_logic;
SIGNAL \avs_burstcount[1]~input0\ : std_logic;
SIGNAL \EU|burstcnt_reg|dout[1]~feeder_combout\ : std_logic;
SIGNAL \avs_burstcount[0]~input0\ : std_logic;
SIGNAL \EU|burstcnt_reg|dout[0]~feeder_combout\ : std_logic;
SIGNAL \avs_burstcount[2]~input0\ : std_logic;
SIGNAL \EU|burstcnt_reg|dout[2]~feeder_combout\ : std_logic;
SIGNAL \EU|burst_detector|equal~2_combout\ : std_logic;
SIGNAL \avs_burstcount[3]~input0\ : std_logic;
SIGNAL \EU|burstcnt_reg|dout[3]~feeder_combout\ : std_logic;
SIGNAL \avs_burstcount[4]~input0\ : std_logic;
SIGNAL \EU|burstcnt_reg|dout[4]~feeder_combout\ : std_logic;
SIGNAL \avs_burstcount[5]~input0\ : std_logic;
SIGNAL \EU|burstcnt_reg|dout[5]~feeder_combout\ : std_logic;
SIGNAL \avs_burstcount[6]~input0\ : std_logic;
SIGNAL \EU|burstcnt_reg|dout[6]~feeder_combout\ : std_logic;
SIGNAL \EU|burst_detector|equal~1_combout\ : std_logic;
SIGNAL \avs_burstcount[9]~input0\ : std_logic;
SIGNAL \EU|burstcnt_reg|dout[9]~feeder_combout\ : std_logic;
SIGNAL \avs_burstcount[7]~input0\ : std_logic;
SIGNAL \EU|burstcnt_reg|dout[7]~feeder_combout\ : std_logic;
SIGNAL \avs_burstcount[8]~input0\ : std_logic;
SIGNAL \EU|burstcnt_reg|dout[8]~feeder_combout\ : std_logic;
SIGNAL \avs_burstcount[10]~input0\ : std_logic;
SIGNAL \EU|burstcnt_reg|dout[10]~feeder_combout\ : std_logic;
SIGNAL \EU|burst_detector|equal~0_combout\ : std_logic;
SIGNAL \EU|burst_detector|equal~3_combout\ : std_logic;
SIGNAL \CU|next_state.writemem~0_combout\ : std_logic;
SIGNAL \CU|present_state.writemem~q\ : std_logic;
SIGNAL \EU|synchronizer_inst|CU|WideOr5~combout\ : std_logic;
SIGNAL \CU|WideOr12~0_combout\ : std_logic;
SIGNAL \CU|synch_clear_n~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|CU|present_state.reset~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|CU|present_state.reset~q\ : std_logic;
SIGNAL \EU|synchronizer_inst|CU|present_state~11_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|CU|present_state.idle_disabled~q\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|busy_pipe|dout~q\ : std_logic;
SIGNAL \CU|Selector7~0_combout\ : std_logic;
SIGNAL \CU|present_state.read_wait_1~q\ : std_logic;
SIGNAL \CU|next_state.read_wait_2~0_combout\ : std_logic;
SIGNAL \CU|present_state.read_wait_2~q\ : std_logic;
SIGNAL \CU|next_state.read_end_1~0_combout\ : std_logic;
SIGNAL \CU|present_state.read_end_1~q\ : std_logic;
SIGNAL \CU|present_state.read_end_2~feeder_combout\ : std_logic;
SIGNAL \CU|present_state.read_end_2~q\ : std_logic;
SIGNAL \CU|present_state.synch_restoring_1~q\ : std_logic;
SIGNAL \EU|synchronizer_inst|CU|present_state~16_combout\ : std_logic;
SIGNAL \hram_RWDS_in~input_o\ : std_logic;
SIGNAL \hram_RWDS_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|effective_burstlen_cnt_clear~0_combout\ : std_logic;
SIGNAL \CU|Selector3~4_combout\ : std_logic;
SIGNAL \CU|next_state.writemem_prep~0_combout\ : std_logic;
SIGNAL \CU|present_state.writemem_prep~q\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|CU|WideOr5~0_combout\ : std_logic;
SIGNAL \CU|next_state~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_cmp|equal~5_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen|dout[6]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_cmp|equal~3_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_cmp|equal~2_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_cmp|equal~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_cmp|equal~1_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_cmp|equal~4_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen|dout[10]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_cmp|equal~combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|CU|present_state~14_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|CU|present_state.idle_clear~q\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|synchronizer|dout~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|synchronizer|dout~q\ : std_logic;
SIGNAL \EU|synchronizer_inst|CU|present_state~17_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|CU|present_state.idle~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|CU|present_state.idle~q\ : std_logic;
SIGNAL \EU|synchronizer_inst|CU|present_state~15_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|CU|present_state.reception_init1~q\ : std_logic;
SIGNAL \EU|synchronizer_inst|CU|present_state~13_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|CU|present_state.reception_init2~q\ : std_logic;
SIGNAL \EU|synchronizer_inst|CU|present_state~12_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|CU|present_state.reception~q\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \EU|burst_cmp|equal~3_combout\ : std_logic;
SIGNAL \EU|burst_cmp|equal~2_combout\ : std_logic;
SIGNAL \EU|burst_cmp|equal~0_combout\ : std_logic;
SIGNAL \EU|burst_cmp|equal~1_combout\ : std_logic;
SIGNAL \EU|burst_cmp|equal~4_combout\ : std_logic;
SIGNAL \EU|burst_cmp|equal~5_combout\ : std_logic;
SIGNAL \EU|burst_cmp|equal~combout\ : std_logic;
SIGNAL \CU|next_state.writeburst~2_combout\ : std_logic;
SIGNAL \CU|present_state.writeburst~q\ : std_logic;
SIGNAL \CU|next_state.writeburst_last~2_combout\ : std_logic;
SIGNAL \CU|present_state.writeburst_last~q\ : std_logic;
SIGNAL \CU|next_state.write_end~0_combout\ : std_logic;
SIGNAL \CU|present_state.write_end~q\ : std_logic;
SIGNAL \CU|WideOr13~combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|deadline_timer|tim_1000~0_combout\ : std_logic;
SIGNAL \EU|deadline_timer|tim_1000~1_combout\ : std_logic;
SIGNAL \EU|deadline_timer|tim_1000~3_combout\ : std_logic;
SIGNAL \EU|deadline_timer|tim_1000~2_combout\ : std_logic;
SIGNAL \EU|deadline_timer|tim_1000~4_combout\ : std_logic;
SIGNAL \CU|present_state.synch_restoring_2~q\ : std_logic;
SIGNAL \CU|Selector2~0_combout\ : std_logic;
SIGNAL \CU|Selector2~1_combout\ : std_logic;
SIGNAL \CU|Selector2~2_combout\ : std_logic;
SIGNAL \CU|Selector2~3_combout\ : std_logic;
SIGNAL \CU|present_state.idle~q\ : std_logic;
SIGNAL \CU|next_state.read_virtconf~2_combout\ : std_logic;
SIGNAL \CU|present_state.read_virtconf~q\ : std_logic;
SIGNAL \CU|cmd_load~0_combout\ : std_logic;
SIGNAL \CU|next_state.readmem_prep~0_combout\ : std_logic;
SIGNAL \CU|present_state.readmem_prep~q\ : std_logic;
SIGNAL \CU|WideOr7~combout\ : std_logic;
SIGNAL \CU|present_state.CA_0~q\ : std_logic;
SIGNAL \CU|present_state.CA_1~q\ : std_logic;
SIGNAL \CU|present_state.CA_2~feeder_combout\ : std_logic;
SIGNAL \CU|present_state.CA_2~q\ : std_logic;
SIGNAL \EU|rwds_tracker|dout~0_combout\ : std_logic;
SIGNAL \EU|rwds_tracker|dout~q\ : std_logic;
SIGNAL \CU|next_state~1_combout\ : std_logic;
SIGNAL \CU|next_state.writeburst_prep~0_combout\ : std_logic;
SIGNAL \CU|present_state.writeburst_prep~q\ : std_logic;
SIGNAL \CU|next_state.stop_burst_1~0_combout\ : std_logic;
SIGNAL \CU|present_state.stop_burst_1~q\ : std_logic;
SIGNAL \CU|WideOr22~combout\ : std_logic;
SIGNAL \CU|address_space_sel[0]~1_combout\ : std_logic;
SIGNAL \CU|address_space_sel[1]~0_combout\ : std_logic;
SIGNAL \EU|addr_reg|dout[19]~feeder_combout\ : std_logic;
SIGNAL \EU|addr_reg|dout[18]~feeder_combout\ : std_logic;
SIGNAL \EU|addr_reg|dout[17]~feeder_combout\ : std_logic;
SIGNAL \EU|addr_reg|dout[16]~feeder_combout\ : std_logic;
SIGNAL \EU|addr_reg|dout[15]~feeder_combout\ : std_logic;
SIGNAL \EU|addr_reg|dout[14]~feeder_combout\ : std_logic;
SIGNAL \EU|addr_reg|dout[13]~feeder_combout\ : std_logic;
SIGNAL \EU|addr_reg|dout[12]~feeder_combout\ : std_logic;
SIGNAL \EU|addr_reg|dout[11]~feeder_combout\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~3\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4_combout\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~2_combout\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~0_combout\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a[0]~feeder_combout\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a[1]~0_combout\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ : std_logic;
SIGNAL \EU|addr_reg|dout[10]~feeder_combout\ : std_logic;
SIGNAL \EU|addr_reg|dout[9]~feeder_combout\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a1\ : std_logic;
SIGNAL \EU|addr_reg|dout[8]~feeder_combout\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a2\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a3\ : std_logic;
SIGNAL \EU|addr_reg|dout[7]~feeder_combout\ : std_logic;
SIGNAL \EU|addr_reg|dout[6]~feeder_combout\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a4\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a5\ : std_logic;
SIGNAL \EU|addr_reg|dout[5]~feeder_combout\ : std_logic;
SIGNAL \EU|addr_reg|dout[4]~feeder_combout\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a6\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a7\ : std_logic;
SIGNAL \EU|addr_reg|dout[3]~feeder_combout\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a8\ : std_logic;
SIGNAL \EU|addr_reg|dout[2]~feeder_combout\ : std_logic;
SIGNAL \EU|addr_reg|dout[1]~feeder_combout\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a9\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a10\ : std_logic;
SIGNAL \EU|addr_reg|dout[0]~feeder_combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~23\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~25\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~27\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~29\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~31\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~33\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~35\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~37\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~39\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~41\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~43\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~45\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~47\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~49\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~51\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[15]~53\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[16]~55\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[17]~57\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[18]~59\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[19]~60_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux12~0_combout\ : std_logic;
SIGNAL \CU|WideOr7~0_combout\ : std_logic;
SIGNAL \CU|WideOr12~3_combout\ : std_logic;
SIGNAL \CU|CA_sel[0]~0_combout\ : std_logic;
SIGNAL \EU|writedata_converter|input_reg|dout[8]~2_combout\ : std_logic;
SIGNAL \CU|WideOr19~0_combout\ : std_logic;
SIGNAL \CU|WideOr19~1_combout\ : std_logic;
SIGNAL \CU|WideOr19~2_combout\ : std_logic;
SIGNAL \EU|writedata_converter|input_reg|dout[0]~3_combout\ : std_logic;
SIGNAL \EU|writedata_converter|input_reg|dout[0]~5_combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~22_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux31~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux15~0_combout\ : std_logic;
SIGNAL \CU|WideOr11~combout\ : std_logic;
SIGNAL \EU|writedata_converter|input_reg|dout[0]~4_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux15~1_combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~28_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux28~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux15~combout\ : std_logic;
SIGNAL \CU|WideOr14~0_combout\ : std_logic;
SIGNAL \CU|WideOr14~combout\ : std_logic;
SIGNAL \CU|WideOr18~combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~44_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux20~0_combout\ : std_logic;
SIGNAL \avs_writedata[8]~input0\ : std_logic;
SIGNAL \EU|dq_mux|Mux7~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux7~1_combout\ : std_logic;
SIGNAL \EU|writedata_converter|outmux|dout[0]~0_combout\ : std_logic;
SIGNAL \CU|WideOr20~0_combout\ : std_logic;
SIGNAL \CU|WideOr20~1_combout\ : std_logic;
SIGNAL \CU|WideOr20~2_combout\ : std_logic;
SIGNAL \EU|addr_reg|dout[20]~feeder_combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[19]~61\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[20]~62_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux11~0_combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~30_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux27~0_combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~24_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux30~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux14~0_combout\ : std_logic;
SIGNAL \avs_writedata[1]~input0\ : std_logic;
SIGNAL \EU|dq_mux|Mux14~1_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux14~combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~46_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux19~0_combout\ : std_logic;
SIGNAL \avs_writedata[9]~input0\ : std_logic;
SIGNAL \EU|dq_mux|Mux6~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux6~1_combout\ : std_logic;
SIGNAL \EU|writedata_converter|outmux|dout[1]~1_combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~26_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux29~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux13~0_combout\ : std_logic;
SIGNAL \avs_writedata[2]~input0\ : std_logic;
SIGNAL \EU|dq_mux|Mux13~1_combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[20]~63\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[21]~64_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux10~0_combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~32_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux26~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux13~combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~48_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux18~0_combout\ : std_logic;
SIGNAL \avs_writedata[10]~input0\ : std_logic;
SIGNAL \EU|dq_mux|Mux5~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux5~1_combout\ : std_logic;
SIGNAL \EU|writedata_converter|outmux|dout[2]~2_combout\ : std_logic;
SIGNAL \avs_writedata[11]~input0\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~50_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux17~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux4~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux4~1_combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~34_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux25~0_combout\ : std_logic;
SIGNAL \avs_writedata[3]~input0\ : std_logic;
SIGNAL \EU|dq_mux|Mux12~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux12~1_combout\ : std_logic;
SIGNAL \EU|writedata_converter|outmux|dout[3]~3_combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[15]~52_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux16~0_combout\ : std_logic;
SIGNAL \avs_writedata[12]~input0\ : std_logic;
SIGNAL \EU|dq_mux|Mux3~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux3~1_combout\ : std_logic;
SIGNAL \avs_writedata[4]~input0\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~36_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux24~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux11~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux11~1_combout\ : std_logic;
SIGNAL \EU|writedata_converter|outmux|dout[4]~4_combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~38_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux23~0_combout\ : std_logic;
SIGNAL \avs_writedata[5]~input0\ : std_logic;
SIGNAL \EU|dq_mux|Mux10~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux10~1_combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[16]~54_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux15~0_combout\ : std_logic;
SIGNAL \avs_writedata[13]~input0\ : std_logic;
SIGNAL \EU|dq_mux|Mux2~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux2~1_combout\ : std_logic;
SIGNAL \EU|writedata_converter|outmux|dout[5]~5_combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~40_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux22~0_combout\ : std_logic;
SIGNAL \avs_writedata[6]~input0\ : std_logic;
SIGNAL \EU|dq_mux|Mux9~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux9~1_combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[17]~56_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux14~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux1~1_combout\ : std_logic;
SIGNAL \avs_writedata[14]~input0\ : std_logic;
SIGNAL \EU|dq_mux|Mux1~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux1~2_combout\ : std_logic;
SIGNAL \EU|writedata_converter|outmux|dout[6]~6_combout\ : std_logic;
SIGNAL \EU|CA_unpacker_inst|CA0|dout~0_combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[18]~58_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux13~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux0~1_combout\ : std_logic;
SIGNAL \avs_writedata[15]~input0\ : std_logic;
SIGNAL \EU|dq_mux|Mux0~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux0~2_combout\ : std_logic;
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~42_combout\ : std_logic;
SIGNAL \EU|address_mux|Mux21~0_combout\ : std_logic;
SIGNAL \avs_writedata[7]~input0\ : std_logic;
SIGNAL \EU|dq_mux|Mux8~0_combout\ : std_logic;
SIGNAL \EU|dq_mux|Mux8~1_combout\ : std_logic;
SIGNAL \EU|writedata_converter|outmux|dout[7]~7_combout\ : std_logic;
SIGNAL \CU|WideOr12~2_combout\ : std_logic;
SIGNAL \CU|WideOr12~combout\ : std_logic;
SIGNAL \EU|hCKen_pipe|dout~q\ : std_logic;
SIGNAL \EU|clk_shifter|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \EU|clk_gater_inst|altclkctrl_0|clkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\ : std_logic;
SIGNAL \hram_RWDS_in_90shift~input_o\ : std_logic;
SIGNAL \hram_RWDS_in_90shift~inputclkctrl_outclk\ : std_logic;
SIGNAL \hram_DQ[0]~input_o\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~2_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|code_counter|g1:1:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|code_counter|g1:1:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din00_enable~combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|dec|Mux2~1_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~3_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux15~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|dec|Mux2~2_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din10|dout[0]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|dec|Mux2~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux15~1_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|outpipe|dout~0_combout\ : std_logic;
SIGNAL \EU|readdatamux|dout[0]~0_combout\ : std_logic;
SIGNAL \hram_DQ[1]~input_o\ : std_logic;
SIGNAL \EU|readdata_converter|lsb|dout[1]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din01|dout[1]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din00|dout[1]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux14~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux14~1_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|outpipe|dout~1_combout\ : std_logic;
SIGNAL \EU|readdatamux|dout[1]~1_combout\ : std_logic;
SIGNAL \hram_DQ[2]~input_o\ : std_logic;
SIGNAL \EU|readdata_converter|lsb|dout[2]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din10|dout[2]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux13~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din11|dout[2]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux13~1_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|outpipe|dout~2_combout\ : std_logic;
SIGNAL \EU|readdatamux|dout[2]~2_combout\ : std_logic;
SIGNAL \hram_DQ[3]~input_o\ : std_logic;
SIGNAL \EU|readdata_converter|lsb|dout[3]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din00|dout[3]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din01|dout[3]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux12~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din10|dout[3]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din11|dout[3]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux12~1_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|outpipe|dout~3_combout\ : std_logic;
SIGNAL \EU|readdatamux|dout[3]~3_combout\ : std_logic;
SIGNAL \hram_DQ[4]~input_o\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din11|dout[4]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din01|dout[4]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din00|dout[4]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux11~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux11~1_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|outpipe|dout~4_combout\ : std_logic;
SIGNAL \EU|readdatamux|dout[4]~4_combout\ : std_logic;
SIGNAL \hram_DQ[5]~input_o\ : std_logic;
SIGNAL \EU|readdata_converter|lsb|dout[5]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din11|dout[5]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din00|dout[5]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din01|dout[5]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux10~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux10~1_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|outpipe|dout~5_combout\ : std_logic;
SIGNAL \EU|readdatamux|dout[5]~5_combout\ : std_logic;
SIGNAL \hram_DQ[6]~input_o\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din11|dout[6]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din01|dout[6]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din00|dout[6]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din10|dout[6]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux9~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux9~1_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|outpipe|dout~6_combout\ : std_logic;
SIGNAL \EU|readdatamux|dout[6]~6_combout\ : std_logic;
SIGNAL \hram_DQ[7]~input_o\ : std_logic;
SIGNAL \EU|readdata_converter|lsb|dout[7]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din11|dout[7]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din01|dout[7]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din00|dout[7]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux8~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux8~1_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|outpipe|dout~7_combout\ : std_logic;
SIGNAL \EU|readdatamux|dout[7]~7_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din00|dout[8]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din10|dout[8]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux7~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux7~1_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|outpipe|dout~8_combout\ : std_logic;
SIGNAL \EU|readdatamux|dout[8]~8_combout\ : std_logic;
SIGNAL \EU|readdata_converter|msb|dout[1]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din00|dout[9]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux6~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din10|dout[9]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux6~1_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|outpipe|dout~9_combout\ : std_logic;
SIGNAL \EU|readdatamux|dout[9]~9_combout\ : std_logic;
SIGNAL \EU|readdata_converter|msb|dout[2]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din01|dout[10]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din00|dout[10]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din10|dout[10]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux5~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux5~1_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|outpipe|dout~10_combout\ : std_logic;
SIGNAL \EU|readdatamux|dout[10]~10_combout\ : std_logic;
SIGNAL \EU|readdata_converter|msb|dout[3]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din11|dout[11]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din00|dout[11]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux4~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux4~1_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|outpipe|dout~11_combout\ : std_logic;
SIGNAL \EU|readdatamux|dout[11]~11_combout\ : std_logic;
SIGNAL \EU|readdata_converter|msb|dout[4]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din01|dout[12]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux3~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux3~1_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|outpipe|dout~12_combout\ : std_logic;
SIGNAL \EU|readdatamux|dout[12]~12_combout\ : std_logic;
SIGNAL \EU|readdata_converter|msb|dout[5]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din11|dout[13]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din01|dout[13]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux2~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux2~1_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|outpipe|dout~13_combout\ : std_logic;
SIGNAL \EU|readdatamux|dout[13]~13_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din11|dout[14]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din10|dout[14]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux1~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux1~1_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|outpipe|dout~14_combout\ : std_logic;
SIGNAL \EU|readdatamux|dout[14]~14_combout\ : std_logic;
SIGNAL \EU|readdata_converter|msb|dout[7]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din01|dout[15]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux0~0_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|din10|dout[15]~feeder_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|datamux|Mux0~1_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|outpipe|dout~15_combout\ : std_logic;
SIGNAL \EU|readdatamux|dout[15]~15_combout\ : std_logic;
SIGNAL \EU|synchronizer_inst|EU|valid_pipe|dout~q\ : std_logic;
SIGNAL \EU|avs_readdatavalid~combout\ : std_logic;
SIGNAL \CU|hbus_RESET_n~0_combout\ : std_logic;
SIGNAL \CU|WideOr16~0_combout\ : std_logic;
SIGNAL \CU|WideOr16~1_combout\ : std_logic;
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \EU|datain_reg|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|synchronizer_inst|EU|outpipe|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \EU|writedata_converter|input_reg|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|burstcnt_reg|dout\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \EU|synchronizer_inst|EU|outreg|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|readdata_converter|lsb|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \EU|CA_unpacker_inst|CA2|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \EU|CA_unpacker_inst|CA0|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|synchronizer_inst|EU|din10|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|addr_reg|dout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \EU|synchronizer_inst|EU|din00|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|clk_shifter|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \EU|synchronizer_inst|EU|din11|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|deadline_timer|cnt|tff_in\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \EU|synchronizer_inst|EU|burstlen|dout\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \EU|synchronizer_inst|EU|din01|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|CA_unpacker_inst|CA1|dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|readdata_converter|msb|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \EU|clk_gater_inst|altclkctrl_0|clkctrl_altclkctrl_0_sub_component|ALT_INV_wire_clkctrl1_outclk\ : std_logic;
SIGNAL \EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\ : std_logic;
SIGNAL \CU|ALT_INV_hbus_RESET_n~0_combout\ : std_logic;
SIGNAL \ALT_INV_hram_RWDS_in_90shift~inputclkctrl_outclk\ : std_logic;
SIGNAL \CU|ALT_INV_WideOr11~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_avs_address <= avs_address;
ww_avs_read <= avs_read;
avs_readdata <= ww_avs_readdata;
ww_avs_write <= avs_write;
ww_avs_writedata <= avs_writedata;
avs_waitrequest <= ww_avs_waitrequest;
avs_readdatavalid <= ww_avs_readdatavalid;
ww_avs_burstcount <= avs_burstcount;
hram_RESET_n <= ww_hram_RESET_n;
hram_CK <= ww_hram_CK;
hram_CK_n <= ww_hram_CK_n;
hram_DQ <= ww_hram_DQ;
hram_RWDS_out <= ww_hram_RWDS_out;
ww_hram_RWDS_in <= hram_RWDS_in;
ww_hram_RWDS_in_90shift <= hram_RWDS_in_90shift;
hram_CS_n <= ww_hram_CS_n;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\EU|clk_gater_inst|altclkctrl_0|clkctrl_altclkctrl_0_sub_component|clkctrl1_INCLK_bus\ <= (vcc & vcc & vcc & \EU|clk_shifter|altpll_component|auto_generated|wire_pll1_clk\(0));

\EU|clk_gater_inst|altclkctrl_0|clkctrl_altclkctrl_0_sub_component|clkctrl1_CLKSELECT_bus\ <= (gnd & gnd);

\EU|clk_shifter|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\EU|clk_shifter|altpll_component|auto_generated|wire_pll1_clk\(0) <= \EU|clk_shifter|altpll_component|auto_generated|pll1_CLK_bus\(0);
\EU|clk_shifter|altpll_component|auto_generated|wire_pll1_clk\(1) <= \EU|clk_shifter|altpll_component|auto_generated|pll1_CLK_bus\(1);
\EU|clk_shifter|altpll_component|auto_generated|wire_pll1_clk\(2) <= \EU|clk_shifter|altpll_component|auto_generated|pll1_CLK_bus\(2);
\EU|clk_shifter|altpll_component|auto_generated|wire_pll1_clk\(3) <= \EU|clk_shifter|altpll_component|auto_generated|pll1_CLK_bus\(3);
\EU|clk_shifter|altpll_component|auto_generated|wire_pll1_clk\(4) <= \EU|clk_shifter|altpll_component|auto_generated|pll1_CLK_bus\(4);

\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & 
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10));

\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTAADDR_bus\ <= (\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBADDR_bus\ <= (\EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ & \EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a\(0));

\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ <= \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(0);
\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a1\ <= \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(1);
\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a2\ <= \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(2);
\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a3\ <= \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(3);
\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a4\ <= \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(4);
\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a5\ <= \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(5);
\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a6\ <= \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(6);
\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a7\ <= \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(7);
\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a8\ <= \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(8);
\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a9\ <= \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(9);
\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a10\ <= \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(10);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\hram_RWDS_in_90shift~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \hram_RWDS_in_90shift~input_o\);

\hram_RWDS_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \hram_RWDS_in~input_o\);
\EU|clk_gater_inst|altclkctrl_0|clkctrl_altclkctrl_0_sub_component|ALT_INV_wire_clkctrl1_outclk\ <= NOT \EU|clk_gater_inst|altclkctrl_0|clkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\;
\EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\ <= NOT \EU|synchronizer_inst|CU|present_state.idle_disabled~q\;
\CU|ALT_INV_hbus_RESET_n~0_combout\ <= NOT \CU|hbus_RESET_n~0_combout\;
\ALT_INV_hram_RWDS_in_90shift~inputclkctrl_outclk\ <= NOT \hram_RWDS_in_90shift~inputclkctrl_outclk\;
\CU|ALT_INV_WideOr11~combout\ <= NOT \CU|WideOr11~combout\;

-- Location: IOOBUF_X0_Y6_N16
\hram_RWDS_out~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \CU|WideOr22~combout\,
	devoe => ww_devoe,
	o => ww_hram_RWDS_out);

-- Location: IOOBUF_X18_Y34_N2
\hram_CK_n~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|clk_gater_inst|altclkctrl_0|clkctrl_altclkctrl_0_sub_component|ALT_INV_wire_clkctrl1_outclk\,
	devoe => ww_devoe,
	o => ww_hram_CK_n);

-- Location: IOOBUF_X20_Y0_N9
\hram_DQ[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|writedata_converter|outmux|dout[0]~0_combout\,
	oe => \CU|WideOr20~2_combout\,
	devoe => ww_devoe,
	o => ww_hram_DQ(0));

-- Location: IOOBUF_X3_Y0_N2
\hram_DQ[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|writedata_converter|outmux|dout[1]~1_combout\,
	oe => \CU|WideOr20~2_combout\,
	devoe => ww_devoe,
	o => ww_hram_DQ(1));

-- Location: IOOBUF_X5_Y0_N23
\hram_DQ[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|writedata_converter|outmux|dout[2]~2_combout\,
	oe => \CU|WideOr20~2_combout\,
	devoe => ww_devoe,
	o => ww_hram_DQ(2));

-- Location: IOOBUF_X11_Y0_N23
\hram_DQ[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|writedata_converter|outmux|dout[3]~3_combout\,
	oe => \CU|WideOr20~2_combout\,
	devoe => ww_devoe,
	o => ww_hram_DQ(3));

-- Location: IOOBUF_X20_Y0_N2
\hram_DQ[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|writedata_converter|outmux|dout[4]~4_combout\,
	oe => \CU|WideOr20~2_combout\,
	devoe => ww_devoe,
	o => ww_hram_DQ(4));

-- Location: IOOBUF_X5_Y0_N16
\hram_DQ[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|writedata_converter|outmux|dout[5]~5_combout\,
	oe => \CU|WideOr20~2_combout\,
	devoe => ww_devoe,
	o => ww_hram_DQ(5));

-- Location: IOOBUF_X0_Y7_N9
\hram_DQ[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|writedata_converter|outmux|dout[6]~6_combout\,
	oe => \CU|WideOr20~2_combout\,
	devoe => ww_devoe,
	o => ww_hram_DQ(6));

-- Location: IOOBUF_X1_Y0_N9
\hram_DQ[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|writedata_converter|outmux|dout[7]~7_combout\,
	oe => \CU|WideOr20~2_combout\,
	devoe => ww_devoe,
	o => ww_hram_DQ(7));

-- Location: LCCOMB_X9_Y6_N0
\avs_readdata[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|readdatamux|dout[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_avs_readdata(0));

-- Location: LCCOMB_X9_Y6_N2
\avs_readdata[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|readdatamux|dout[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_avs_readdata(1));

-- Location: LCCOMB_X9_Y6_N4
\avs_readdata[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|readdatamux|dout[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_avs_readdata(2));

-- Location: LCCOMB_X9_Y6_N6
\avs_readdata[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|readdatamux|dout[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_avs_readdata(3));

-- Location: LCCOMB_X9_Y6_N8
\avs_readdata[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|readdatamux|dout[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_avs_readdata(4));

-- Location: LCCOMB_X9_Y6_N10
\avs_readdata[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|readdatamux|dout[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_avs_readdata(5));

-- Location: LCCOMB_X9_Y6_N12
\avs_readdata[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|readdatamux|dout[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_avs_readdata(6));

-- Location: LCCOMB_X9_Y6_N14
\avs_readdata[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|readdatamux|dout[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_avs_readdata(7));

-- Location: LCCOMB_X9_Y6_N16
\avs_readdata[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|readdatamux|dout[8]~8_combout\,
	devoe => ww_devoe,
	o => ww_avs_readdata(8));

-- Location: LCCOMB_X9_Y6_N18
\avs_readdata[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|readdatamux|dout[9]~9_combout\,
	devoe => ww_devoe,
	o => ww_avs_readdata(9));

-- Location: LCCOMB_X9_Y5_N0
\avs_readdata[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|readdatamux|dout[10]~10_combout\,
	devoe => ww_devoe,
	o => ww_avs_readdata(10));

-- Location: LCCOMB_X9_Y5_N8
\avs_readdata[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|readdatamux|dout[11]~11_combout\,
	devoe => ww_devoe,
	o => ww_avs_readdata(11));

-- Location: LCCOMB_X9_Y5_N26
\avs_readdata[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|readdatamux|dout[12]~12_combout\,
	devoe => ww_devoe,
	o => ww_avs_readdata(12));

-- Location: LCCOMB_X9_Y6_N20
\avs_readdata[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|readdatamux|dout[13]~13_combout\,
	devoe => ww_devoe,
	o => ww_avs_readdata(13));

-- Location: LCCOMB_X9_Y6_N22
\avs_readdata[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|readdatamux|dout[14]~14_combout\,
	devoe => ww_devoe,
	o => ww_avs_readdata(14));

-- Location: LCCOMB_X7_Y2_N0
\avs_readdata[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|readdatamux|dout[15]~15_combout\,
	devoe => ww_devoe,
	o => ww_avs_readdata(15));

-- Location: LCCOMB_X9_Y6_N24
\avs_waitrequest~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|ALT_INV_WideOr11~combout\,
	devoe => ww_devoe,
	o => ww_avs_waitrequest);

-- Location: LCCOMB_X7_Y2_N10
\avs_readdatavalid~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|avs_readdatavalid~combout\,
	devoe => ww_devoe,
	o => ww_avs_readdatavalid);

-- Location: LCCOMB_X7_Y2_N14
\hram_RESET_n~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|ALT_INV_hbus_RESET_n~0_combout\,
	devoe => ww_devoe,
	o => ww_hram_RESET_n);

-- Location: LCCOMB_X32_Y18_N0
\hram_CK~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|clk_gater_inst|altclkctrl_0|clkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\,
	devoe => ww_devoe,
	o => ww_hram_CK);

-- Location: LCCOMB_X7_Y2_N18
\hram_CS_n~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CU|WideOr16~1_combout\,
	devoe => ww_devoe,
	o => ww_hram_CS_n);

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

-- Location: LCCOMB_X7_Y4_N6
\avs_write~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_write,
	o => \avs_write~input0\);

-- Location: LCCOMB_X7_Y4_N20
\reset_n~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input0\);

-- Location: FF_X3_Y4_N19
\CU|present_state.stop_burst_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|present_state.stop_burst_1~q\,
	clrn => \reset_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.stop_burst_2~q\);

-- Location: LCCOMB_X4_Y2_N22
\CU|Selector9~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector9~0_combout\ = (\CU|present_state.stop_burst_2~q\) # ((!\avs_write~input0\ & \CU|present_state.idle_burst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_write~input0\,
	datac => \CU|present_state.idle_burst~q\,
	datad => \CU|present_state.stop_burst_2~q\,
	combout => \CU|Selector9~0_combout\);

-- Location: FF_X4_Y2_N23
\CU|present_state.idle_burst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector9~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.idle_burst~q\);

-- Location: LCCOMB_X4_Y2_N18
\CU|next_state.restore_burst~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.restore_burst~0_combout\ = (\CU|present_state.idle_burst~q\ & \avs_write~input0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.idle_burst~q\,
	datad => \avs_write~input0\,
	combout => \CU|next_state.restore_burst~0_combout\);

-- Location: FF_X4_Y2_N19
\CU|present_state.restore_burst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.restore_burst~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.restore_burst~q\);

-- Location: LCCOMB_X7_Y2_N12
\avs_read~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_read,
	o => \avs_read~input0\);

-- Location: LCCOMB_X7_Y5_N18
\avs_address[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(12),
	o => \avs_address[12]~input0\);

-- Location: LCCOMB_X7_Y5_N16
\avs_address[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(15),
	o => \avs_address[15]~input0\);

-- Location: LCCOMB_X7_Y5_N30
\avs_address[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(14),
	o => \avs_address[14]~input0\);

-- Location: LCCOMB_X4_Y5_N28
\EU|config~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|config~3_combout\ = (!\avs_address[15]~input0\ & !\avs_address[14]~input0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \avs_address[15]~input0\,
	datad => \avs_address[14]~input0\,
	combout => \EU|config~3_combout\);

-- Location: LCCOMB_X7_Y5_N24
\avs_address[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(13),
	o => \avs_address[13]~input0\);

-- Location: LCCOMB_X4_Y3_N4
\avs_address[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(9),
	o => \avs_address[9]~input0\);

-- Location: LCCOMB_X9_Y5_N18
\avs_address[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(11),
	o => \avs_address[11]~input0\);

-- Location: LCCOMB_X7_Y5_N0
\avs_address[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(10),
	o => \avs_address[10]~input0\);

-- Location: LCCOMB_X5_Y3_N4
\avs_address[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(8),
	o => \avs_address[8]~input0\);

-- Location: LCCOMB_X4_Y5_N10
\EU|config~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|config~2_combout\ = (!\avs_address[9]~input0\ & (!\avs_address[11]~input0\ & (!\avs_address[10]~input0\ & !\avs_address[8]~input0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_address[9]~input0\,
	datab => \avs_address[11]~input0\,
	datac => \avs_address[10]~input0\,
	datad => \avs_address[8]~input0\,
	combout => \EU|config~2_combout\);

-- Location: LCCOMB_X4_Y5_N30
\EU|config~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|config~4_combout\ = (!\avs_address[12]~input0\ & (\EU|config~3_combout\ & (!\avs_address[13]~input0\ & \EU|config~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_address[12]~input0\,
	datab => \EU|config~3_combout\,
	datac => \avs_address[13]~input0\,
	datad => \EU|config~2_combout\,
	combout => \EU|config~4_combout\);

-- Location: LCCOMB_X7_Y2_N30
\avs_address[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(2),
	o => \avs_address[2]~input0\);

-- Location: LCCOMB_X7_Y2_N4
\avs_address[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(1),
	o => \avs_address[1]~input0\);

-- Location: LCCOMB_X7_Y2_N8
\avs_address[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(3),
	o => \avs_address[3]~input0\);

-- Location: LCCOMB_X7_Y2_N26
\avs_address[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(0),
	o => \avs_address[0]~input0\);

-- Location: LCCOMB_X6_Y2_N28
\EU|config~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|config~0_combout\ = (!\avs_address[2]~input0\ & (!\avs_address[1]~input0\ & (!\avs_address[3]~input0\ & !\avs_address[0]~input0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_address[2]~input0\,
	datab => \avs_address[1]~input0\,
	datac => \avs_address[3]~input0\,
	datad => \avs_address[0]~input0\,
	combout => \EU|config~0_combout\);

-- Location: LCCOMB_X7_Y2_N2
\avs_address[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(4),
	o => \avs_address[4]~input0\);

-- Location: LCCOMB_X7_Y2_N16
\avs_address[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(5),
	o => \avs_address[5]~input0\);

-- Location: LCCOMB_X7_Y2_N20
\avs_address[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(7),
	o => \avs_address[7]~input0\);

-- Location: LCCOMB_X7_Y2_N6
\avs_address[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(6),
	o => \avs_address[6]~input0\);

-- Location: LCCOMB_X6_Y2_N2
\EU|config~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|config~1_combout\ = (!\avs_address[4]~input0\ & (!\avs_address[5]~input0\ & (!\avs_address[7]~input0\ & !\avs_address[6]~input0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_address[4]~input0\,
	datab => \avs_address[5]~input0\,
	datac => \avs_address[7]~input0\,
	datad => \avs_address[6]~input0\,
	combout => \EU|config~1_combout\);

-- Location: LCCOMB_X9_Y5_N6
\avs_address[25]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(25),
	o => \avs_address[25]~input0\);

-- Location: LCCOMB_X9_Y5_N16
\avs_address[26]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(26),
	o => \avs_address[26]~input0\);

-- Location: LCCOMB_X9_Y5_N14
\avs_address[27]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(27),
	o => \avs_address[27]~input0\);

-- Location: LCCOMB_X7_Y5_N20
\avs_address[24]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(24),
	o => \avs_address[24]~input0\);

-- Location: LCCOMB_X8_Y5_N12
\EU|config~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|config~7_combout\ = (!\avs_address[25]~input0\ & (!\avs_address[26]~input0\ & (!\avs_address[27]~input0\ & !\avs_address[24]~input0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_address[25]~input0\,
	datab => \avs_address[26]~input0\,
	datac => \avs_address[27]~input0\,
	datad => \avs_address[24]~input0\,
	combout => \EU|config~7_combout\);

-- Location: LCCOMB_X9_Y5_N20
\avs_address[23]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(23),
	o => \avs_address[23]~input0\);

-- Location: LCCOMB_X9_Y5_N22
\avs_address[21]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(21),
	o => \avs_address[21]~input0\);

-- Location: LCCOMB_X7_Y5_N6
\avs_address[20]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(20),
	o => \avs_address[20]~input0\);

-- Location: LCCOMB_X7_Y5_N28
\avs_address[22]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(22),
	o => \avs_address[22]~input0\);

-- Location: LCCOMB_X8_Y5_N18
\EU|config~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|config~6_combout\ = (!\avs_address[23]~input0\ & (!\avs_address[21]~input0\ & (!\avs_address[20]~input0\ & \avs_address[22]~input0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_address[23]~input0\,
	datab => \avs_address[21]~input0\,
	datac => \avs_address[20]~input0\,
	datad => \avs_address[22]~input0\,
	combout => \EU|config~6_combout\);

-- Location: LCCOMB_X9_Y5_N2
\avs_address[29]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(29),
	o => \avs_address[29]~input0\);

-- Location: LCCOMB_X9_Y5_N28
\avs_address[30]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(30),
	o => \avs_address[30]~input0\);

-- Location: LCCOMB_X9_Y5_N10
\avs_address[31]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(31),
	o => \avs_address[31]~input0\);

-- Location: LCCOMB_X9_Y5_N24
\avs_address[28]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(28),
	o => \avs_address[28]~input0\);

-- Location: LCCOMB_X8_Y5_N30
\EU|config~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|config~8_combout\ = (!\avs_address[29]~input0\ & (!\avs_address[30]~input0\ & (!\avs_address[31]~input0\ & !\avs_address[28]~input0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_address[29]~input0\,
	datab => \avs_address[30]~input0\,
	datac => \avs_address[31]~input0\,
	datad => \avs_address[28]~input0\,
	combout => \EU|config~8_combout\);

-- Location: LCCOMB_X7_Y5_N2
\avs_address[17]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(17),
	o => \avs_address[17]~input0\);

-- Location: LCCOMB_X7_Y5_N14
\avs_address[19]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(19),
	o => \avs_address[19]~input0\);

-- Location: LCCOMB_X7_Y5_N8
\avs_address[18]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(18),
	o => \avs_address[18]~input0\);

-- Location: LCCOMB_X9_Y5_N4
\avs_address[16]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(16),
	o => \avs_address[16]~input0\);

-- Location: LCCOMB_X8_Y5_N28
\EU|config~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|config~5_combout\ = (!\avs_address[17]~input0\ & (!\avs_address[19]~input0\ & (!\avs_address[18]~input0\ & !\avs_address[16]~input0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_address[17]~input0\,
	datab => \avs_address[19]~input0\,
	datac => \avs_address[18]~input0\,
	datad => \avs_address[16]~input0\,
	combout => \EU|config~5_combout\);

-- Location: LCCOMB_X8_Y5_N20
\EU|config~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|config~9_combout\ = (\EU|config~7_combout\ & (\EU|config~6_combout\ & (\EU|config~8_combout\ & \EU|config~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|config~7_combout\,
	datab => \EU|config~6_combout\,
	datac => \EU|config~8_combout\,
	datad => \EU|config~5_combout\,
	combout => \EU|config~9_combout\);

-- Location: LCCOMB_X6_Y2_N24
\EU|config\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|config~combout\ = (\EU|config~4_combout\ & (\EU|config~0_combout\ & (\EU|config~1_combout\ & \EU|config~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|config~4_combout\,
	datab => \EU|config~0_combout\,
	datac => \EU|config~1_combout\,
	datad => \EU|config~9_combout\,
	combout => \EU|config~combout\);

-- Location: LCCOMB_X5_Y2_N2
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

-- Location: FF_X5_Y2_N3
\CU|present_state.reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|present_state.reset~feeder_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.reset~q\);

-- Location: FF_X1_Y6_N11
\CU|present_state.CA_end\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|present_state.CA_2~q\,
	clrn => \reset_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.CA_end~q\);

-- Location: FF_X1_Y6_N19
\EU|op_tracker|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_write~input0\,
	sload => VCC,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|op_tracker|dout~q\);

-- Location: LCCOMB_X1_Y6_N18
\CU|Selector8~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector8~0_combout\ = (\CU|present_state.CA_end~q\ & \EU|op_tracker|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.CA_end~q\,
	datac => \EU|op_tracker|dout~q\,
	combout => \CU|Selector8~0_combout\);

-- Location: LCCOMB_X2_Y6_N18
\EU|deadline_timer|cnt|g1:5:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|g1:5:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr13~combout\ & (\EU|deadline_timer|cnt|g1:5:chain_tff|dummy_out~q\ $ (((\EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~q\ & \EU|deadline_timer|cnt|tff_in\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~q\,
	datab => \EU|deadline_timer|cnt|tff_in\(4),
	datac => \EU|deadline_timer|cnt|g1:5:chain_tff|dummy_out~q\,
	datad => \CU|WideOr13~combout\,
	combout => \EU|deadline_timer|cnt|g1:5:chain_tff|dummy_out~0_combout\);

-- Location: FF_X2_Y6_N19
\EU|deadline_timer|cnt|g1:5:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_timer|cnt|g1:5:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_timer|cnt|g1:5:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X2_Y6_N16
\EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~0_combout\ = \EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~q\ $ (((\EU|deadline_timer|cnt|g1:5:chain_tff|dummy_out~q\ & (\EU|deadline_timer|cnt|tff_in\(4) & 
-- \EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|cnt|g1:5:chain_tff|dummy_out~q\,
	datab => \EU|deadline_timer|cnt|tff_in\(4),
	datac => \EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~q\,
	datad => \EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~q\,
	combout => \EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~0_combout\);

-- Location: LCCOMB_X2_Y6_N0
\EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~1_combout\ = (\EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~0_combout\ & !\CU|WideOr13~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~0_combout\,
	datad => \CU|WideOr13~combout\,
	combout => \EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~1_combout\);

-- Location: FF_X2_Y6_N1
\EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X2_Y6_N10
\EU|deadline_timer|cnt|tff_in[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|tff_in\(7) = (\EU|deadline_timer|cnt|g1:5:chain_tff|dummy_out~q\ & (\EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~q\ & (\EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~q\ & \EU|deadline_timer|cnt|tff_in\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|cnt|g1:5:chain_tff|dummy_out~q\,
	datab => \EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~q\,
	datac => \EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~q\,
	datad => \EU|deadline_timer|cnt|tff_in\(4),
	combout => \EU|deadline_timer|cnt|tff_in\(7));

-- Location: LCCOMB_X3_Y2_N0
\EU|deadline_timer|cnt|g1:8:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|g1:8:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr13~combout\ & (\EU|deadline_timer|cnt|g1:8:chain_tff|dummy_out~q\ $ (((\EU|deadline_timer|cnt|tff_in\(7) & \EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr13~combout\,
	datab => \EU|deadline_timer|cnt|tff_in\(7),
	datac => \EU|deadline_timer|cnt|g1:8:chain_tff|dummy_out~q\,
	datad => \EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out~q\,
	combout => \EU|deadline_timer|cnt|g1:8:chain_tff|dummy_out~0_combout\);

-- Location: FF_X3_Y2_N1
\EU|deadline_timer|cnt|g1:8:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_timer|cnt|g1:8:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_timer|cnt|g1:8:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X3_Y2_N6
\EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~0_combout\ = \EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~q\ $ (((\EU|deadline_timer|cnt|g1:8:chain_tff|dummy_out~q\ & (\EU|deadline_timer|cnt|tff_in\(7) & 
-- \EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|cnt|g1:8:chain_tff|dummy_out~q\,
	datab => \EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~q\,
	datac => \EU|deadline_timer|cnt|tff_in\(7),
	datad => \EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out~q\,
	combout => \EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~0_combout\);

-- Location: LCCOMB_X3_Y2_N4
\EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~1_combout\ = (!\CU|WideOr13~combout\ & \EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|WideOr13~combout\,
	datad => \EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~0_combout\,
	combout => \EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~1_combout\);

-- Location: FF_X3_Y2_N5
\EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X3_Y2_N26
\EU|deadline_timer|cnt|tff_in[10]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|tff_in\(10) = (\EU|deadline_timer|cnt|g1:8:chain_tff|dummy_out~q\ & (\EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~q\ & (\EU|deadline_timer|cnt|tff_in\(7) & \EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|cnt|g1:8:chain_tff|dummy_out~q\,
	datab => \EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~q\,
	datac => \EU|deadline_timer|cnt|tff_in\(7),
	datad => \EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out~q\,
	combout => \EU|deadline_timer|cnt|tff_in\(10));

-- Location: LCCOMB_X3_Y2_N18
\EU|deadline_timer|cnt|g1:10:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|g1:10:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr13~combout\ & (\EU|deadline_timer|cnt|tff_in\(10) $ (\EU|deadline_timer|cnt|g1:10:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|cnt|tff_in\(10),
	datab => \CU|WideOr13~combout\,
	datac => \EU|deadline_timer|cnt|g1:10:chain_tff|dummy_out~q\,
	combout => \EU|deadline_timer|cnt|g1:10:chain_tff|dummy_out~0_combout\);

-- Location: FF_X3_Y2_N19
\EU|deadline_timer|cnt|g1:10:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_timer|cnt|g1:10:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_timer|cnt|g1:10:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X3_Y2_N28
\EU|deadline_timer|cnt|g1:11:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|g1:11:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr13~combout\ & (\EU|deadline_timer|cnt|g1:11:chain_tff|dummy_out~q\ $ (((\EU|deadline_timer|cnt|tff_in\(10) & \EU|deadline_timer|cnt|g1:10:chain_tff|dummy_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|cnt|tff_in\(10),
	datab => \EU|deadline_timer|cnt|g1:10:chain_tff|dummy_out~q\,
	datac => \EU|deadline_timer|cnt|g1:11:chain_tff|dummy_out~q\,
	datad => \CU|WideOr13~combout\,
	combout => \EU|deadline_timer|cnt|g1:11:chain_tff|dummy_out~0_combout\);

-- Location: FF_X3_Y2_N29
\EU|deadline_timer|cnt|g1:11:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_timer|cnt|g1:11:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_timer|cnt|g1:11:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X3_Y2_N12
\EU|deadline_timer|cnt|tff_in[12]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|tff_in\(12) = (\EU|deadline_timer|cnt|g1:11:chain_tff|dummy_out~q\ & (\EU|deadline_timer|cnt|tff_in\(10) & \EU|deadline_timer|cnt|g1:10:chain_tff|dummy_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|deadline_timer|cnt|g1:11:chain_tff|dummy_out~q\,
	datac => \EU|deadline_timer|cnt|tff_in\(10),
	datad => \EU|deadline_timer|cnt|g1:10:chain_tff|dummy_out~q\,
	combout => \EU|deadline_timer|cnt|tff_in\(12));

-- Location: LCCOMB_X3_Y2_N22
\EU|deadline_timer|cnt|g1:12:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|g1:12:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr13~combout\ & (\EU|deadline_timer|cnt|g1:12:chain_tff|dummy_out~q\ $ (\EU|deadline_timer|cnt|tff_in\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|WideOr13~combout\,
	datac => \EU|deadline_timer|cnt|g1:12:chain_tff|dummy_out~q\,
	datad => \EU|deadline_timer|cnt|tff_in\(12),
	combout => \EU|deadline_timer|cnt|g1:12:chain_tff|dummy_out~0_combout\);

-- Location: FF_X3_Y2_N23
\EU|deadline_timer|cnt|g1:12:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_timer|cnt|g1:12:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_timer|cnt|g1:12:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X3_Y2_N24
\EU|deadline_timer|cnt|g1:13:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|g1:13:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr13~combout\ & (\EU|deadline_timer|cnt|g1:13:chain_tff|dummy_out~q\ $ (((\EU|deadline_timer|cnt|g1:12:chain_tff|dummy_out~q\ & \EU|deadline_timer|cnt|tff_in\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|cnt|g1:12:chain_tff|dummy_out~q\,
	datab => \CU|WideOr13~combout\,
	datac => \EU|deadline_timer|cnt|g1:13:chain_tff|dummy_out~q\,
	datad => \EU|deadline_timer|cnt|tff_in\(12),
	combout => \EU|deadline_timer|cnt|g1:13:chain_tff|dummy_out~0_combout\);

-- Location: FF_X3_Y2_N25
\EU|deadline_timer|cnt|g1:13:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_timer|cnt|g1:13:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_timer|cnt|g1:13:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X3_Y3_N12
\EU|deadline_timer|tim_15000~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|tim_15000~0_combout\ = (!\EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~q\ & (!\EU|deadline_timer|cnt|g1:5:chain_tff|dummy_out~q\ & !\EU|deadline_timer|cnt|g1:8:chain_tff|dummy_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~q\,
	datac => \EU|deadline_timer|cnt|g1:5:chain_tff|dummy_out~q\,
	datad => \EU|deadline_timer|cnt|g1:8:chain_tff|dummy_out~q\,
	combout => \EU|deadline_timer|tim_15000~0_combout\);

-- Location: LCCOMB_X3_Y2_N8
\EU|deadline_timer|tim_15000~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|tim_15000~1_combout\ = (\EU|deadline_timer|cnt|g1:13:chain_tff|dummy_out~q\ & (\EU|deadline_timer|cnt|g1:12:chain_tff|dummy_out~q\ & \EU|deadline_timer|cnt|g1:11:chain_tff|dummy_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|deadline_timer|cnt|g1:13:chain_tff|dummy_out~q\,
	datac => \EU|deadline_timer|cnt|g1:12:chain_tff|dummy_out~q\,
	datad => \EU|deadline_timer|cnt|g1:11:chain_tff|dummy_out~q\,
	combout => \EU|deadline_timer|tim_15000~1_combout\);

-- Location: LCCOMB_X4_Y2_N12
\EU|deadline_timer|tim_15000~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|tim_15000~2_combout\ = (\EU|deadline_timer|tim_1000~1_combout\ & (\EU|deadline_timer|tim_15000~0_combout\ & (\EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~q\ & \EU|deadline_timer|tim_15000~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|tim_1000~1_combout\,
	datab => \EU|deadline_timer|tim_15000~0_combout\,
	datac => \EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~q\,
	datad => \EU|deadline_timer|tim_15000~1_combout\,
	combout => \EU|deadline_timer|tim_15000~2_combout\);

-- Location: LCCOMB_X4_Y2_N4
\CU|Selector1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector1~0_combout\ = (\CU|present_state.reset_exit_begin~q\) # ((!\EU|deadline_timer|tim_15000~2_combout\ & \CU|present_state.reset_exit~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|tim_15000~2_combout\,
	datac => \CU|present_state.reset_exit~q\,
	datad => \CU|present_state.reset_exit_begin~q\,
	combout => \CU|Selector1~0_combout\);

-- Location: FF_X4_Y2_N5
\CU|present_state.reset_exit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector1~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.reset_exit~q\);

-- Location: LCCOMB_X5_Y3_N6
\avs_writedata[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(0),
	o => \avs_writedata[0]~input0\);

-- Location: LCCOMB_X6_Y2_N22
\CU|Selector3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector3~0_combout\ = (\EU|config~1_combout\ & (!\avs_read~input0\ & (\avs_write~input0\ & \CU|cmd_load~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|config~1_combout\,
	datab => \avs_read~input0\,
	datac => \avs_write~input0\,
	datad => \CU|cmd_load~0_combout\,
	combout => \CU|Selector3~0_combout\);

-- Location: LCCOMB_X6_Y2_N8
\CU|Selector3~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector3~1_combout\ = (\CU|Selector3~0_combout\ & (\EU|config~0_combout\ & (\EU|config~4_combout\ & \EU|config~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|Selector3~0_combout\,
	datab => \EU|config~0_combout\,
	datac => \EU|config~4_combout\,
	datad => \EU|config~9_combout\,
	combout => \CU|Selector3~1_combout\);

-- Location: LCCOMB_X4_Y2_N2
\CU|Selector5~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector5~0_combout\ = (\EU|deadline_timer|tim_15000~2_combout\ & ((\CU|present_state.wait_dpd_out~q\) # ((!\EU|dpd_tracker|dout~q\ & \CU|Selector3~1_combout\)))) # (!\EU|deadline_timer|tim_15000~2_combout\ & (!\EU|dpd_tracker|dout~q\ & 
-- ((\CU|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|tim_15000~2_combout\,
	datab => \EU|dpd_tracker|dout~q\,
	datac => \CU|present_state.wait_dpd_out~q\,
	datad => \CU|Selector3~1_combout\,
	combout => \CU|Selector5~0_combout\);

-- Location: FF_X4_Y2_N3
\CU|present_state.write_virtconf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector5~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.write_virtconf~q\);

-- Location: LCCOMB_X5_Y2_N10
\EU|dpd_req_tracker|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dpd_req_tracker|dout~0_combout\ = (\CU|present_state.reset~q\ & ((\CU|cmd_load~0_combout\ & (\avs_writedata[0]~input0\)) # (!\CU|cmd_load~0_combout\ & ((\EU|dpd_req_tracker|dout~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_writedata[0]~input0\,
	datab => \CU|cmd_load~0_combout\,
	datac => \EU|dpd_req_tracker|dout~q\,
	datad => \CU|present_state.reset~q\,
	combout => \EU|dpd_req_tracker|dout~0_combout\);

-- Location: FF_X5_Y2_N11
\EU|dpd_req_tracker|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dpd_req_tracker|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dpd_req_tracker|dout~q\);

-- Location: LCCOMB_X4_Y2_N28
\CU|next_state.writeconf1_prep~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.writeconf1_prep~0_combout\ = (\CU|present_state.reset_exit~q\ & \EU|deadline_timer|tim_15000~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.reset_exit~q\,
	datad => \EU|deadline_timer|tim_15000~2_combout\,
	combout => \CU|next_state.writeconf1_prep~0_combout\);

-- Location: FF_X4_Y2_N29
\CU|present_state.writeconf1_prep\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.writeconf1_prep~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writeconf1_prep~q\);

-- Location: LCCOMB_X3_Y4_N30
\EU|init_tracker|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|init_tracker|dout~0_combout\ = (!\CU|present_state.writeconf1_end~q\ & ((\CU|present_state.writeconf1_prep~q\) # (\EU|init_tracker|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.writeconf1_prep~q\,
	datac => \EU|init_tracker|dout~q\,
	datad => \CU|present_state.writeconf1_end~q\,
	combout => \EU|init_tracker|dout~0_combout\);

-- Location: FF_X3_Y4_N31
\EU|init_tracker|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|init_tracker|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|init_tracker|dout~q\);

-- Location: LCCOMB_X4_Y4_N6
\CU|next_state.writeconf1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.writeconf1~0_combout\ = (\CU|present_state.writeconf_CA2~q\ & \EU|init_tracker|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.writeconf_CA2~q\,
	datad => \EU|init_tracker|dout~q\,
	combout => \CU|next_state.writeconf1~0_combout\);

-- Location: FF_X4_Y4_N7
\CU|present_state.writeconf1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.writeconf1~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writeconf1~q\);

-- Location: FF_X4_Y4_N25
\CU|present_state.writeconf1_end\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|present_state.writeconf1~q\,
	clrn => \reset_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writeconf1_end~q\);

-- Location: LCCOMB_X3_Y4_N24
\CU|next_state.writeconf0_prep~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.writeconf0_prep~0_combout\ = (\CU|present_state.write_virtconf~q\) # (\CU|present_state.writeconf1_end~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.write_virtconf~q\,
	datad => \CU|present_state.writeconf1_end~q\,
	combout => \CU|next_state.writeconf0_prep~0_combout\);

-- Location: FF_X3_Y4_N25
\CU|present_state.writeconf0_prep\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.writeconf0_prep~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writeconf0_prep~q\);

-- Location: LCCOMB_X3_Y4_N8
\CU|next_state.writeconf_CA0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.writeconf_CA0~0_combout\ = (\CU|present_state.writeconf0_prep~q\) # (\CU|present_state.writeconf1_prep~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.writeconf0_prep~q\,
	datad => \CU|present_state.writeconf1_prep~q\,
	combout => \CU|next_state.writeconf_CA0~0_combout\);

-- Location: FF_X3_Y4_N5
\CU|present_state.writeconf_CA0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|next_state.writeconf_CA0~0_combout\,
	clrn => \reset_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writeconf_CA0~q\);

-- Location: FF_X3_Y4_N21
\CU|present_state.writeconf_CA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|present_state.writeconf_CA0~q\,
	clrn => \reset_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writeconf_CA1~q\);

-- Location: FF_X4_Y4_N9
\CU|present_state.writeconf_CA2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|present_state.writeconf_CA1~q\,
	clrn => \reset_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writeconf_CA2~q\);

-- Location: LCCOMB_X4_Y4_N16
\CU|next_state.writeconf0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.writeconf0~0_combout\ = (\CU|present_state.writeconf_CA2~q\ & !\EU|init_tracker|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.writeconf_CA2~q\,
	datad => \EU|init_tracker|dout~q\,
	combout => \CU|next_state.writeconf0~0_combout\);

-- Location: FF_X4_Y4_N17
\CU|present_state.writeconf0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.writeconf0~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writeconf0~q\);

-- Location: LCCOMB_X5_Y2_N8
\CU|present_state.writeconf0_end~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state.writeconf0_end~feeder_combout\ = \CU|present_state.writeconf0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.writeconf0~q\,
	combout => \CU|present_state.writeconf0_end~feeder_combout\);

-- Location: FF_X5_Y2_N9
\CU|present_state.writeconf0_end\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|present_state.writeconf0_end~feeder_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writeconf0_end~q\);

-- Location: LCCOMB_X5_Y2_N18
\CU|Selector6~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector6~0_combout\ = (\EU|dpd_req_tracker|dout~q\ & ((\CU|present_state.writeconf0_end~q\) # ((\CU|present_state.wait_dpd_in~q\ & !\EU|deadline_timer|tim_1000~4_combout\)))) # (!\EU|dpd_req_tracker|dout~q\ & (((\CU|present_state.wait_dpd_in~q\ & 
-- !\EU|deadline_timer|tim_1000~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|dpd_req_tracker|dout~q\,
	datab => \CU|present_state.writeconf0_end~q\,
	datac => \CU|present_state.wait_dpd_in~q\,
	datad => \EU|deadline_timer|tim_1000~4_combout\,
	combout => \CU|Selector6~0_combout\);

-- Location: FF_X5_Y2_N19
\CU|present_state.wait_dpd_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector6~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.wait_dpd_in~q\);

-- Location: LCCOMB_X4_Y2_N8
\EU|dpd_tracker|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dpd_tracker|dout~0_combout\ = (!\CU|present_state.write_virtconf~q\ & (\CU|present_state.reset~q\ & ((\EU|dpd_tracker|dout~q\) # (\CU|present_state.wait_dpd_in~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.write_virtconf~q\,
	datab => \CU|present_state.reset~q\,
	datac => \EU|dpd_tracker|dout~q\,
	datad => \CU|present_state.wait_dpd_in~q\,
	combout => \EU|dpd_tracker|dout~0_combout\);

-- Location: FF_X4_Y2_N9
\EU|dpd_tracker|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dpd_tracker|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dpd_tracker|dout~q\);

-- Location: LCCOMB_X5_Y2_N12
\CU|Selector3~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector3~2_combout\ = (!\avs_writedata[0]~input0\ & \EU|dpd_tracker|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \avs_writedata[0]~input0\,
	datad => \EU|dpd_tracker|dout~q\,
	combout => \CU|Selector3~2_combout\);

-- Location: LCCOMB_X4_Y2_N20
\CU|Selector3~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector3~3_combout\ = (\EU|deadline_timer|tim_21~combout\ & (\CU|Selector3~2_combout\ & ((\CU|Selector3~1_combout\)))) # (!\EU|deadline_timer|tim_21~combout\ & ((\CU|present_state.dummycmd~q\) # ((\CU|Selector3~2_combout\ & 
-- \CU|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|tim_21~combout\,
	datab => \CU|Selector3~2_combout\,
	datac => \CU|present_state.dummycmd~q\,
	datad => \CU|Selector3~1_combout\,
	combout => \CU|Selector3~3_combout\);

-- Location: FF_X4_Y2_N21
\CU|present_state.dummycmd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector3~3_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.dummycmd~q\);

-- Location: LCCOMB_X4_Y2_N24
\CU|next_state.dummycmd_last~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.dummycmd_last~0_combout\ = (\CU|present_state.dummycmd~q\ & \EU|deadline_timer|tim_21~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.dummycmd~q\,
	datad => \EU|deadline_timer|tim_21~combout\,
	combout => \CU|next_state.dummycmd_last~0_combout\);

-- Location: FF_X4_Y2_N25
\CU|present_state.dummycmd_last\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.dummycmd_last~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.dummycmd_last~q\);

-- Location: FF_X4_Y2_N1
\CU|present_state.dummycmd_end\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|present_state.dummycmd_last~q\,
	clrn => \reset_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.dummycmd_end~q\);

-- Location: LCCOMB_X4_Y2_N30
\CU|Selector4~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector4~0_combout\ = (\CU|present_state.dummycmd_end~q\) # ((\CU|present_state.wait_dpd_out~q\ & !\EU|deadline_timer|tim_15000~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.dummycmd_end~q\,
	datac => \CU|present_state.wait_dpd_out~q\,
	datad => \EU|deadline_timer|tim_15000~2_combout\,
	combout => \CU|Selector4~0_combout\);

-- Location: FF_X4_Y2_N31
\CU|present_state.wait_dpd_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector4~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.wait_dpd_out~q\);

-- Location: LCCOMB_X4_Y2_N16
\CU|WideOr15~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr15~0_combout\ = (!\CU|present_state.reset_wait~q\ & (!\CU|present_state.reset_exit~q\ & (!\CU|present_state.wait_dpd_out~q\ & !\CU|present_state.wait_dpd_in~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.reset_wait~q\,
	datab => \CU|present_state.reset_exit~q\,
	datac => \CU|present_state.wait_dpd_out~q\,
	datad => \CU|present_state.wait_dpd_in~q\,
	combout => \CU|WideOr15~0_combout\);

-- Location: LCCOMB_X2_Y6_N24
\EU|deadline_timer|cnt|entry_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|entry_tff|dummy_out~0_combout\ = (!\CU|WideOr13~combout\ & (\EU|deadline_timer|cnt|entry_tff|dummy_out~q\ $ (((\CU|WideOr15~1_combout\) # (!\CU|WideOr15~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr15~0_combout\,
	datab => \CU|WideOr13~combout\,
	datac => \EU|deadline_timer|cnt|entry_tff|dummy_out~q\,
	datad => \CU|WideOr15~1_combout\,
	combout => \EU|deadline_timer|cnt|entry_tff|dummy_out~0_combout\);

-- Location: FF_X2_Y6_N25
\EU|deadline_timer|cnt|entry_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_timer|cnt|entry_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_timer|cnt|entry_tff|dummy_out~q\);

-- Location: LCCOMB_X3_Y2_N30
\EU|deadline_timer|tim_21~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|tim_21~0_combout\ = (!\EU|deadline_timer|cnt|g1:12:chain_tff|dummy_out~q\ & (!\EU|deadline_timer|cnt|g1:13:chain_tff|dummy_out~q\ & (\EU|deadline_timer|cnt|entry_tff|dummy_out~q\ & !\EU|deadline_timer|cnt|g1:11:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|cnt|g1:12:chain_tff|dummy_out~q\,
	datab => \EU|deadline_timer|cnt|g1:13:chain_tff|dummy_out~q\,
	datac => \EU|deadline_timer|cnt|entry_tff|dummy_out~q\,
	datad => \EU|deadline_timer|cnt|g1:11:chain_tff|dummy_out~q\,
	combout => \EU|deadline_timer|tim_21~0_combout\);

-- Location: LCCOMB_X3_Y2_N20
\EU|deadline_timer|tim_21~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|tim_21~1_combout\ = (!\EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out~q\ & (!\EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~q\ & !\EU|deadline_timer|cnt|g1:10:chain_tff|dummy_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out~q\,
	datac => \EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~q\,
	datad => \EU|deadline_timer|cnt|g1:10:chain_tff|dummy_out~q\,
	combout => \EU|deadline_timer|tim_21~1_combout\);

-- Location: LCCOMB_X3_Y2_N2
\EU|deadline_timer|tim_21~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|tim_21~2_combout\ = (\EU|deadline_timer|tim_21~0_combout\ & (\EU|deadline_timer|tim_21~1_combout\ & (!\EU|deadline_timer|cnt|g1:3:chain_tff|dummy_out~q\ & \EU|deadline_timer|tim_15000~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|tim_21~0_combout\,
	datab => \EU|deadline_timer|tim_21~1_combout\,
	datac => \EU|deadline_timer|cnt|g1:3:chain_tff|dummy_out~q\,
	datad => \EU|deadline_timer|tim_15000~0_combout\,
	combout => \EU|deadline_timer|tim_21~2_combout\);

-- Location: LCCOMB_X1_Y6_N26
\CU|Selector8~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector8~1_combout\ = (\CU|Selector8~0_combout\) # ((\CU|present_state.writemem_wait~q\ & ((!\EU|deadline_timer|tim_21~2_combout\) # (!\CU|next_state~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|next_state~1_combout\,
	datab => \CU|Selector8~0_combout\,
	datac => \CU|present_state.writemem_wait~q\,
	datad => \EU|deadline_timer|tim_21~2_combout\,
	combout => \CU|Selector8~1_combout\);

-- Location: FF_X1_Y6_N27
\CU|present_state.writemem_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector8~1_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writemem_wait~q\);

-- Location: LCCOMB_X1_Y6_N14
\CU|WideOr15~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr15~1_combout\ = (\CU|present_state.CA_end~q\) # ((\CU|present_state.CA_2~q\) # ((\CU|present_state.writemem_wait~q\) # (\CU|present_state.dummycmd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.CA_end~q\,
	datab => \CU|present_state.CA_2~q\,
	datac => \CU|present_state.writemem_wait~q\,
	datad => \CU|present_state.dummycmd~q\,
	combout => \CU|WideOr15~1_combout\);

-- Location: LCCOMB_X1_Y6_N10
\CU|WideOr12~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr12~1_combout\ = (!\CU|present_state.writemem_wait~q\ & (!\CU|present_state.CA_end~q\ & !\CU|present_state.dummycmd~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.writemem_wait~q\,
	datac => \CU|present_state.CA_end~q\,
	datad => \CU|present_state.dummycmd~q\,
	combout => \CU|WideOr12~1_combout\);

-- Location: LCCOMB_X2_Y6_N14
\EU|deadline_timer|cnt|tff_in[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|tff_in\(1) = (\EU|deadline_timer|cnt|entry_tff|dummy_out~q\ & (((\CU|present_state.CA_2~q\) # (!\CU|WideOr15~0_combout\)) # (!\CU|WideOr12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr12~1_combout\,
	datab => \EU|deadline_timer|cnt|entry_tff|dummy_out~q\,
	datac => \CU|WideOr15~0_combout\,
	datad => \CU|present_state.CA_2~q\,
	combout => \EU|deadline_timer|cnt|tff_in\(1));

-- Location: LCCOMB_X2_Y6_N28
\EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr13~combout\ & (\EU|deadline_timer|cnt|tff_in\(1) $ (\EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|deadline_timer|cnt|tff_in\(1),
	datac => \EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~q\,
	datad => \CU|WideOr13~combout\,
	combout => \EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~0_combout\);

-- Location: FF_X2_Y6_N29
\EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X2_Y6_N2
\EU|deadline_timer|cnt|tff_in[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|tff_in\(2) = (\EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~q\ & (\EU|deadline_timer|cnt|entry_tff|dummy_out~q\ & ((\CU|WideOr15~1_combout\) # (!\CU|WideOr15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr15~1_combout\,
	datab => \EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~q\,
	datac => \CU|WideOr15~0_combout\,
	datad => \EU|deadline_timer|cnt|entry_tff|dummy_out~q\,
	combout => \EU|deadline_timer|cnt|tff_in\(2));

-- Location: LCCOMB_X2_Y6_N8
\EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr13~combout\ & (\EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out~q\ $ (((\EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~q\ & \EU|deadline_timer|cnt|tff_in\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~q\,
	datab => \EU|deadline_timer|cnt|tff_in\(1),
	datac => \EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out~q\,
	datad => \CU|WideOr13~combout\,
	combout => \EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out~0_combout\);

-- Location: FF_X2_Y6_N9
\EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X2_Y6_N6
\EU|deadline_timer|cnt|g1:3:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|g1:3:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr13~combout\ & (\EU|deadline_timer|cnt|g1:3:chain_tff|dummy_out~q\ $ (((\EU|deadline_timer|cnt|tff_in\(2) & \EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|cnt|tff_in\(2),
	datab => \EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out~q\,
	datac => \EU|deadline_timer|cnt|g1:3:chain_tff|dummy_out~q\,
	datad => \CU|WideOr13~combout\,
	combout => \EU|deadline_timer|cnt|g1:3:chain_tff|dummy_out~0_combout\);

-- Location: FF_X2_Y6_N7
\EU|deadline_timer|cnt|g1:3:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_timer|cnt|g1:3:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_timer|cnt|g1:3:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X2_Y6_N20
\EU|deadline_timer|cnt|tff_in[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|tff_in\(4) = (\EU|deadline_timer|cnt|g1:3:chain_tff|dummy_out~q\ & (\EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out~q\ & (\EU|deadline_timer|cnt|tff_in\(1) & \EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|cnt|g1:3:chain_tff|dummy_out~q\,
	datab => \EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out~q\,
	datac => \EU|deadline_timer|cnt|tff_in\(1),
	datad => \EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|deadline_timer|cnt|tff_in\(4));

-- Location: LCCOMB_X2_Y6_N26
\EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr13~combout\ & (\EU|deadline_timer|cnt|tff_in\(4) $ (\EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|deadline_timer|cnt|tff_in\(4),
	datac => \EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~q\,
	datad => \CU|WideOr13~combout\,
	combout => \EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~0_combout\);

-- Location: FF_X2_Y6_N27
\EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X2_Y6_N12
\EU|deadline_timer|tim_21\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|tim_21~combout\ = (\EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~q\ & (!\EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~q\ & (\EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out~q\ & \EU|deadline_timer|tim_21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~q\,
	datab => \EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out~q\,
	datad => \EU|deadline_timer|tim_21~2_combout\,
	combout => \EU|deadline_timer|tim_21~combout\);

-- Location: LCCOMB_X4_Y2_N26
\CU|Selector0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector0~0_combout\ = ((\CU|present_state.reset_wait~q\ & !\EU|deadline_timer|tim_21~combout\)) # (!\CU|present_state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.reset~q\,
	datac => \CU|present_state.reset_wait~q\,
	datad => \EU|deadline_timer|tim_21~combout\,
	combout => \CU|Selector0~0_combout\);

-- Location: FF_X4_Y2_N27
\CU|present_state.reset_wait\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector0~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.reset_wait~q\);

-- Location: LCCOMB_X4_Y2_N10
\CU|next_state.reset_exit_begin~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.reset_exit_begin~0_combout\ = (\CU|present_state.reset_wait~q\ & \EU|deadline_timer|tim_21~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.reset_wait~q\,
	datad => \EU|deadline_timer|tim_21~combout\,
	combout => \CU|next_state.reset_exit_begin~0_combout\);

-- Location: FF_X4_Y2_N11
\CU|present_state.reset_exit_begin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.reset_exit_begin~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.reset_exit_begin~q\);

-- Location: LCCOMB_X5_Y2_N20
\CU|WideOr13~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr13~0_combout\ = (!\CU|present_state.reset_exit_begin~q\ & (\CU|present_state.reset~q\ & (!\CU|present_state.idle~q\ & !\CU|present_state.idle_burst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.reset_exit_begin~q\,
	datab => \CU|present_state.reset~q\,
	datac => \CU|present_state.idle~q\,
	datad => \CU|present_state.idle_burst~q\,
	combout => \CU|WideOr13~0_combout\);

-- Location: LCCOMB_X10_Y5_N4
\avs_burstcount[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(1),
	o => \avs_burstcount[1]~input0\);

-- Location: LCCOMB_X11_Y5_N22
\EU|burstcnt_reg|dout[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt_reg|dout[1]~feeder_combout\ = \avs_burstcount[1]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_burstcount[1]~input0\,
	combout => \EU|burstcnt_reg|dout[1]~feeder_combout\);

-- Location: FF_X11_Y5_N23
\EU|burstcnt_reg|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt_reg|dout[1]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt_reg|dout\(1));

-- Location: LCCOMB_X10_Y5_N6
\avs_burstcount[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(0),
	o => \avs_burstcount[0]~input0\);

-- Location: LCCOMB_X11_Y5_N4
\EU|burstcnt_reg|dout[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt_reg|dout[0]~feeder_combout\ = \avs_burstcount[0]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_burstcount[0]~input0\,
	combout => \EU|burstcnt_reg|dout[0]~feeder_combout\);

-- Location: FF_X11_Y5_N5
\EU|burstcnt_reg|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt_reg|dout[0]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt_reg|dout\(0));

-- Location: LCCOMB_X10_Y5_N18
\avs_burstcount[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(2),
	o => \avs_burstcount[2]~input0\);

-- Location: LCCOMB_X11_Y5_N12
\EU|burstcnt_reg|dout[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt_reg|dout[2]~feeder_combout\ = \avs_burstcount[2]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_burstcount[2]~input0\,
	combout => \EU|burstcnt_reg|dout[2]~feeder_combout\);

-- Location: FF_X11_Y5_N13
\EU|burstcnt_reg|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt_reg|dout[2]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt_reg|dout\(2));

-- Location: LCCOMB_X11_Y5_N26
\EU|burst_detector|equal~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burst_detector|equal~2_combout\ = (\EU|burstcnt_reg|dout\(1)) # ((\EU|burstcnt_reg|dout\(2)) # (!\EU|burstcnt_reg|dout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|burstcnt_reg|dout\(1),
	datac => \EU|burstcnt_reg|dout\(0),
	datad => \EU|burstcnt_reg|dout\(2),
	combout => \EU|burst_detector|equal~2_combout\);

-- Location: LCCOMB_X10_Y5_N28
\avs_burstcount[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(3),
	o => \avs_burstcount[3]~input0\);

-- Location: LCCOMB_X14_Y5_N22
\EU|burstcnt_reg|dout[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt_reg|dout[3]~feeder_combout\ = \avs_burstcount[3]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_burstcount[3]~input0\,
	combout => \EU|burstcnt_reg|dout[3]~feeder_combout\);

-- Location: FF_X14_Y5_N23
\EU|burstcnt_reg|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt_reg|dout[3]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt_reg|dout\(3));

-- Location: LCCOMB_X10_Y5_N22
\avs_burstcount[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(4),
	o => \avs_burstcount[4]~input0\);

-- Location: LCCOMB_X14_Y5_N4
\EU|burstcnt_reg|dout[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt_reg|dout[4]~feeder_combout\ = \avs_burstcount[4]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_burstcount[4]~input0\,
	combout => \EU|burstcnt_reg|dout[4]~feeder_combout\);

-- Location: FF_X14_Y5_N5
\EU|burstcnt_reg|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt_reg|dout[4]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt_reg|dout\(4));

-- Location: LCCOMB_X10_Y5_N20
\avs_burstcount[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(5),
	o => \avs_burstcount[5]~input0\);

-- Location: LCCOMB_X14_Y5_N30
\EU|burstcnt_reg|dout[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt_reg|dout[5]~feeder_combout\ = \avs_burstcount[5]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \avs_burstcount[5]~input0\,
	combout => \EU|burstcnt_reg|dout[5]~feeder_combout\);

-- Location: FF_X14_Y5_N31
\EU|burstcnt_reg|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt_reg|dout[5]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt_reg|dout\(5));

-- Location: LCCOMB_X10_Y5_N30
\avs_burstcount[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(6),
	o => \avs_burstcount[6]~input0\);

-- Location: LCCOMB_X14_Y5_N18
\EU|burstcnt_reg|dout[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt_reg|dout[6]~feeder_combout\ = \avs_burstcount[6]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_burstcount[6]~input0\,
	combout => \EU|burstcnt_reg|dout[6]~feeder_combout\);

-- Location: FF_X14_Y5_N19
\EU|burstcnt_reg|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt_reg|dout[6]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt_reg|dout\(6));

-- Location: LCCOMB_X14_Y5_N14
\EU|burst_detector|equal~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burst_detector|equal~1_combout\ = (\EU|burstcnt_reg|dout\(3)) # ((\EU|burstcnt_reg|dout\(4)) # ((\EU|burstcnt_reg|dout\(5)) # (\EU|burstcnt_reg|dout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|burstcnt_reg|dout\(3),
	datab => \EU|burstcnt_reg|dout\(4),
	datac => \EU|burstcnt_reg|dout\(5),
	datad => \EU|burstcnt_reg|dout\(6),
	combout => \EU|burst_detector|equal~1_combout\);

-- Location: LCCOMB_X10_Y5_N26
\avs_burstcount[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(9),
	o => \avs_burstcount[9]~input0\);

-- Location: LCCOMB_X11_Y5_N8
\EU|burstcnt_reg|dout[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt_reg|dout[9]~feeder_combout\ = \avs_burstcount[9]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_burstcount[9]~input0\,
	combout => \EU|burstcnt_reg|dout[9]~feeder_combout\);

-- Location: FF_X11_Y5_N9
\EU|burstcnt_reg|dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt_reg|dout[9]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt_reg|dout\(9));

-- Location: LCCOMB_X7_Y5_N10
\avs_burstcount[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(7),
	o => \avs_burstcount[7]~input0\);

-- Location: LCCOMB_X4_Y5_N4
\EU|burstcnt_reg|dout[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt_reg|dout[7]~feeder_combout\ = \avs_burstcount[7]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_burstcount[7]~input0\,
	combout => \EU|burstcnt_reg|dout[7]~feeder_combout\);

-- Location: FF_X4_Y5_N5
\EU|burstcnt_reg|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt_reg|dout[7]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt_reg|dout\(7));

-- Location: LCCOMB_X10_Y5_N24
\avs_burstcount[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(8),
	o => \avs_burstcount[8]~input0\);

-- Location: LCCOMB_X11_Y5_N14
\EU|burstcnt_reg|dout[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt_reg|dout[8]~feeder_combout\ = \avs_burstcount[8]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_burstcount[8]~input0\,
	combout => \EU|burstcnt_reg|dout[8]~feeder_combout\);

-- Location: FF_X11_Y5_N15
\EU|burstcnt_reg|dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt_reg|dout[8]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt_reg|dout\(8));

-- Location: LCCOMB_X10_Y5_N16
\avs_burstcount[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(10),
	o => \avs_burstcount[10]~input0\);

-- Location: LCCOMB_X11_Y5_N2
\EU|burstcnt_reg|dout[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstcnt_reg|dout[10]~feeder_combout\ = \avs_burstcount[10]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_burstcount[10]~input0\,
	combout => \EU|burstcnt_reg|dout[10]~feeder_combout\);

-- Location: FF_X11_Y5_N3
\EU|burstcnt_reg|dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstcnt_reg|dout[10]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstcnt_reg|dout\(10));

-- Location: LCCOMB_X11_Y5_N24
\EU|burst_detector|equal~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burst_detector|equal~0_combout\ = (\EU|burstcnt_reg|dout\(9)) # ((\EU|burstcnt_reg|dout\(7)) # ((\EU|burstcnt_reg|dout\(8)) # (\EU|burstcnt_reg|dout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|burstcnt_reg|dout\(9),
	datab => \EU|burstcnt_reg|dout\(7),
	datac => \EU|burstcnt_reg|dout\(8),
	datad => \EU|burstcnt_reg|dout\(10),
	combout => \EU|burst_detector|equal~0_combout\);

-- Location: LCCOMB_X11_Y5_N18
\EU|burst_detector|equal~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burst_detector|equal~3_combout\ = (\EU|burst_detector|equal~2_combout\) # ((\EU|burst_detector|equal~1_combout\) # (\EU|burst_detector|equal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|burst_detector|equal~2_combout\,
	datab => \EU|burst_detector|equal~1_combout\,
	datad => \EU|burst_detector|equal~0_combout\,
	combout => \EU|burst_detector|equal~3_combout\);

-- Location: LCCOMB_X1_Y6_N8
\CU|next_state.writemem~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.writemem~0_combout\ = (\CU|next_state~1_combout\ & (!\EU|burst_detector|equal~3_combout\ & (\CU|present_state.writemem_wait~q\ & \EU|deadline_timer|tim_21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|next_state~1_combout\,
	datab => \EU|burst_detector|equal~3_combout\,
	datac => \CU|present_state.writemem_wait~q\,
	datad => \EU|deadline_timer|tim_21~2_combout\,
	combout => \CU|next_state.writemem~0_combout\);

-- Location: FF_X1_Y6_N9
\CU|present_state.writemem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.writemem~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writemem~q\);

-- Location: LCCOMB_X8_Y4_N20
\EU|synchronizer_inst|CU|WideOr5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|CU|WideOr5~combout\ = (\EU|synchronizer_inst|CU|present_state.reception~q\) # ((\EU|synchronizer_inst|CU|present_state.reception_init1~q\) # (\EU|synchronizer_inst|CU|present_state.reception_init2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.reception~q\,
	datac => \EU|synchronizer_inst|CU|present_state.reception_init1~q\,
	datad => \EU|synchronizer_inst|CU|present_state.reception_init2~q\,
	combout => \EU|synchronizer_inst|CU|WideOr5~combout\);

-- Location: LCCOMB_X4_Y4_N4
\CU|WideOr12~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr12~0_combout\ = (\CU|present_state.read_wait_2~q\) # (\CU|present_state.read_wait_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.read_wait_2~q\,
	datad => \CU|present_state.read_wait_1~q\,
	combout => \CU|WideOr12~0_combout\);

-- Location: LCCOMB_X8_Y4_N4
\CU|synch_clear_n~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|synch_clear_n~0_combout\ = (\CU|present_state.reset~q\ & !\CU|present_state.synch_restoring_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.reset~q\,
	datad => \CU|present_state.synch_restoring_1~q\,
	combout => \CU|synch_clear_n~0_combout\);

-- Location: LCCOMB_X8_Y4_N14
\EU|synchronizer_inst|CU|present_state.reset~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|CU|present_state.reset~feeder_combout\ = \CU|synch_clear_n~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|synch_clear_n~0_combout\,
	combout => \EU|synchronizer_inst|CU|present_state.reset~feeder_combout\);

-- Location: FF_X8_Y4_N15
\EU|synchronizer_inst|CU|present_state.reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|CU|present_state.reset~feeder_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|CU|present_state.reset~q\);

-- Location: LCCOMB_X8_Y4_N8
\EU|synchronizer_inst|CU|present_state~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|CU|present_state~11_combout\ = (!\CU|WideOr12~0_combout\ & (\CU|synch_clear_n~0_combout\ & ((\EU|synchronizer_inst|CU|present_state.idle_disabled~q\) # (!\EU|synchronizer_inst|CU|present_state.reset~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr12~0_combout\,
	datab => \CU|synch_clear_n~0_combout\,
	datac => \EU|synchronizer_inst|CU|present_state.idle_disabled~q\,
	datad => \EU|synchronizer_inst|CU|present_state.reset~q\,
	combout => \EU|synchronizer_inst|CU|present_state~11_combout\);

-- Location: FF_X8_Y4_N9
\EU|synchronizer_inst|CU|present_state.idle_disabled\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|CU|present_state~11_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|CU|present_state.idle_disabled~q\);

-- Location: FF_X8_Y4_N21
\EU|synchronizer_inst|EU|busy_pipe|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|CU|WideOr5~combout\,
	ena => \EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|busy_pipe|dout~q\);

-- Location: LCCOMB_X4_Y4_N10
\CU|Selector7~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector7~0_combout\ = (\CU|present_state.CA_end~q\ & (((!\EU|synchronizer_inst|EU|busy_pipe|dout~q\ & \CU|present_state.read_wait_1~q\)) # (!\EU|op_tracker|dout~q\))) # (!\CU|present_state.CA_end~q\ & (!\EU|synchronizer_inst|EU|busy_pipe|dout~q\ & 
-- (\CU|present_state.read_wait_1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.CA_end~q\,
	datab => \EU|synchronizer_inst|EU|busy_pipe|dout~q\,
	datac => \CU|present_state.read_wait_1~q\,
	datad => \EU|op_tracker|dout~q\,
	combout => \CU|Selector7~0_combout\);

-- Location: FF_X4_Y4_N11
\CU|present_state.read_wait_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector7~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.read_wait_1~q\);

-- Location: LCCOMB_X4_Y4_N2
\CU|next_state.read_wait_2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.read_wait_2~0_combout\ = (\EU|synchronizer_inst|EU|busy_pipe|dout~q\ & ((\CU|present_state.read_wait_1~q\) # (\CU|present_state.read_wait_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.read_wait_1~q\,
	datac => \CU|present_state.read_wait_2~q\,
	datad => \EU|synchronizer_inst|EU|busy_pipe|dout~q\,
	combout => \CU|next_state.read_wait_2~0_combout\);

-- Location: FF_X4_Y4_N3
\CU|present_state.read_wait_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.read_wait_2~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.read_wait_2~q\);

-- Location: LCCOMB_X4_Y4_N0
\CU|next_state.read_end_1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.read_end_1~0_combout\ = (\CU|present_state.read_wait_2~q\ & !\EU|synchronizer_inst|EU|busy_pipe|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.read_wait_2~q\,
	datad => \EU|synchronizer_inst|EU|busy_pipe|dout~q\,
	combout => \CU|next_state.read_end_1~0_combout\);

-- Location: FF_X4_Y4_N1
\CU|present_state.read_end_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.read_end_1~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.read_end_1~q\);

-- Location: LCCOMB_X4_Y4_N14
\CU|present_state.read_end_2~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state.read_end_2~feeder_combout\ = \CU|present_state.read_end_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|present_state.read_end_1~q\,
	combout => \CU|present_state.read_end_2~feeder_combout\);

-- Location: FF_X4_Y4_N15
\CU|present_state.read_end_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|present_state.read_end_2~feeder_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.read_end_2~q\);

-- Location: FF_X4_Y4_N5
\CU|present_state.synch_restoring_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|present_state.read_end_2~q\,
	clrn => \reset_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.synch_restoring_1~q\);

-- Location: LCCOMB_X8_Y4_N10
\EU|synchronizer_inst|CU|present_state~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|CU|present_state~16_combout\ = (\CU|present_state.read_wait_1~q\ & ((\EU|synchronizer_inst|CU|present_state.idle_disabled~q\) # ((!\EU|synchronizer_inst|CU|present_state.reset~q\)))) # (!\CU|present_state.read_wait_1~q\ & 
-- (\CU|present_state.read_wait_2~q\ & ((\EU|synchronizer_inst|CU|present_state.idle_disabled~q\) # (!\EU|synchronizer_inst|CU|present_state.reset~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.read_wait_1~q\,
	datab => \EU|synchronizer_inst|CU|present_state.idle_disabled~q\,
	datac => \CU|present_state.read_wait_2~q\,
	datad => \EU|synchronizer_inst|CU|present_state.reset~q\,
	combout => \EU|synchronizer_inst|CU|present_state~16_combout\);

-- Location: IOIBUF_X0_Y16_N8
\hram_RWDS_in~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hram_RWDS_in,
	o => \hram_RWDS_in~input_o\);

-- Location: CLKCTRL_G2
\hram_RWDS_in~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \hram_RWDS_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \hram_RWDS_in~inputclkctrl_outclk\);

-- Location: LCCOMB_X12_Y5_N4
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (((VCC) # 
-- (!\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\)))
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\ $ 
-- (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\,
	datab => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X12_Y5_N26
\~GND\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X8_Y7_N28
\EU|synchronizer_inst|EU|effective_burstlen_cnt_clear~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|effective_burstlen_cnt_clear~0_combout\ = (\EU|synchronizer_inst|CU|present_state.idle_clear~q\) # ((\CU|present_state.synch_restoring_1~q\) # ((!\EU|synchronizer_inst|CU|present_state.reset~q\) # (!\CU|present_state.reset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.idle_clear~q\,
	datab => \CU|present_state.synch_restoring_1~q\,
	datac => \CU|present_state.reset~q\,
	datad => \EU|synchronizer_inst|CU|present_state.reset~q\,
	combout => \EU|synchronizer_inst|EU|effective_burstlen_cnt_clear~0_combout\);

-- Location: LCCOMB_X5_Y2_N6
\CU|Selector3~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector3~4_combout\ = (\avs_write~input0\ & !\avs_read~input0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_write~input0\,
	datac => \avs_read~input0\,
	combout => \CU|Selector3~4_combout\);

-- Location: LCCOMB_X5_Y2_N4
\CU|next_state.writemem_prep~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.writemem_prep~0_combout\ = (!\EU|dpd_tracker|dout~q\ & (!\EU|config~combout\ & (\CU|Selector3~4_combout\ & \CU|cmd_load~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|dpd_tracker|dout~q\,
	datab => \EU|config~combout\,
	datac => \CU|Selector3~4_combout\,
	datad => \CU|cmd_load~0_combout\,
	combout => \CU|next_state.writemem_prep~0_combout\);

-- Location: FF_X5_Y2_N5
\CU|present_state.writemem_prep\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.writemem_prep~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writemem_prep~q\);

-- Location: LCCOMB_X3_Y4_N26
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\CU|present_state.stop_burst_1~q\) # ((\CU|present_state.CA_0~q\) # (\CU|present_state.writemem_prep~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.stop_burst_1~q\,
	datab => \CU|present_state.CA_0~q\,
	datad => \CU|present_state.writemem_prep~q\,
	combout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X8_Y4_N12
\EU|synchronizer_inst|CU|WideOr5~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|CU|WideOr5~0_combout\ = (\EU|synchronizer_inst|CU|present_state.reception~q\) # (\EU|synchronizer_inst|CU|present_state.reception_init2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|synchronizer_inst|CU|present_state.reception~q\,
	datad => \EU|synchronizer_inst|CU|present_state.reception_init2~q\,
	combout => \EU|synchronizer_inst|CU|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y6_N30
\CU|next_state~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state~0_combout\ = (!\CU|present_state.writeburst_prep~q\ & !\CU|present_state.writeburst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.writeburst_prep~q\,
	datad => \CU|present_state.writeburst~q\,
	combout => \CU|next_state~0_combout\);

-- Location: LCCOMB_X12_Y5_N30
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~1_combout\ = (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~0_combout\) # ((\EU|synchronizer_inst|CU|WideOr5~0_combout\) # 
-- ((\EU|synchronizer_inst|EU|effective_burstlen_cnt_clear~0_combout\) # (!\CU|next_state~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~0_combout\,
	datab => \EU|synchronizer_inst|CU|WideOr5~0_combout\,
	datac => \CU|next_state~0_combout\,
	datad => \EU|synchronizer_inst|EU|effective_burstlen_cnt_clear~0_combout\,
	combout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~1_combout\);

-- Location: FF_X12_Y5_N5
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \EU|synchronizer_inst|EU|effective_burstlen_cnt_clear~0_combout\,
	ena => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X12_Y5_N6
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ & 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) $ (((\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\) # (VCC))))) # 
-- (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ & (((\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # (GND))))
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\ $ 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\,
	datab => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X12_Y5_N7
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \EU|synchronizer_inst|EU|effective_burstlen_cnt_clear~0_combout\,
	ena => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X12_Y5_N8
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & 
-- (((\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & VCC)))) # (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ (((VCC) # (!\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\)))))
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & 
-- (\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\ $ (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\,
	datab => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X12_Y5_N9
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \EU|synchronizer_inst|EU|effective_burstlen_cnt_clear~0_combout\,
	ena => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X12_Y5_N10
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ & 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) $ (((\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\) # (VCC))))) # 
-- (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ & (((\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) # (GND))))
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\ $ 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))) # (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\,
	datab => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X12_Y5_N11
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \EU|synchronizer_inst|EU|effective_burstlen_cnt_clear~0_combout\,
	ena => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X12_Y5_N12
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & 
-- (((\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & VCC)))) # (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) $ (((VCC) # (!\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\)))))
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & 
-- (\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\ $ (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\,
	datab => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X12_Y5_N13
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \EU|synchronizer_inst|EU|effective_burstlen_cnt_clear~0_combout\,
	ena => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X12_Y5_N14
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ & 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) $ (((\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\) # (VCC))))) # 
-- (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ & (((\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)) # (GND))))
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\ $ 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5))) # (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\,
	datab => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X12_Y5_N15
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \EU|synchronizer_inst|EU|effective_burstlen_cnt_clear~0_combout\,
	ena => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X12_Y5_N16
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & 
-- (((\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & VCC)))) # (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) $ (((VCC) # (!\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\)))))
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & 
-- (\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\ $ (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\,
	datab => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X12_Y5_N17
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \EU|synchronizer_inst|EU|effective_burstlen_cnt_clear~0_combout\,
	ena => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X12_Y5_N18
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ & 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) $ (((\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\) # (VCC))))) # 
-- (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ & (((\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)) # (GND))))
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\ $ 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))) # (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\,
	datab => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: LCCOMB_X12_Y5_N20
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & 
-- (((\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & VCC)))) # (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) $ (((VCC) # (!\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\)))))
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & 
-- (\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\ $ (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\,
	datab => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X12_Y5_N21
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	asdata => \~GND~combout\,
	sload => \EU|synchronizer_inst|EU|effective_burstlen_cnt_clear~0_combout\,
	ena => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8));

-- Location: FF_X11_Y5_N19
\EU|synchronizer_inst|EU|burstlen|dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|burstcnt_reg|dout\(8),
	sload => VCC,
	ena => \EU|synchronizer_inst|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen|dout\(8));

-- Location: FF_X11_Y5_N11
\EU|synchronizer_inst|EU|burstlen|dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|burstcnt_reg|dout\(9),
	sload => VCC,
	ena => \EU|synchronizer_inst|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen|dout\(9));

-- Location: LCCOMB_X12_Y5_N22
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ & 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) $ (((\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\) # (VCC))))) # 
-- (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ & (((\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9)) # (GND))))
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\ $ 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9))) # (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\,
	datab => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X12_Y5_N23
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	asdata => \~GND~combout\,
	sload => \EU|synchronizer_inst|EU|effective_burstlen_cnt_clear~0_combout\,
	ena => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X11_Y5_N10
\EU|synchronizer_inst|EU|burstlen_cmp|equal~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_cmp|equal~5_combout\ = (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & ((\EU|synchronizer_inst|EU|burstlen|dout\(9) $ 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9))) # (!\EU|synchronizer_inst|EU|burstlen|dout\(8)))) # (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) 
-- & ((\EU|synchronizer_inst|EU|burstlen|dout\(8)) # (\EU|synchronizer_inst|EU|burstlen|dout\(9) $ (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datab => \EU|synchronizer_inst|EU|burstlen|dout\(8),
	datac => \EU|synchronizer_inst|EU|burstlen|dout\(9),
	datad => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	combout => \EU|synchronizer_inst|EU|burstlen_cmp|equal~5_combout\);

-- Location: LCCOMB_X12_Y5_N24
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) $ 
-- (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	cin => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\);

-- Location: FF_X12_Y5_N25
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	asdata => \~GND~combout\,
	sload => \EU|synchronizer_inst|EU|effective_burstlen_cnt_clear~0_combout\,
	ena => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X14_Y5_N12
\EU|synchronizer_inst|EU|burstlen|dout[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen|dout[6]~feeder_combout\ = \EU|burstcnt_reg|dout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|burstcnt_reg|dout\(6),
	combout => \EU|synchronizer_inst|EU|burstlen|dout[6]~feeder_combout\);

-- Location: FF_X14_Y5_N13
\EU|synchronizer_inst|EU|burstlen|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|burstlen|dout[6]~feeder_combout\,
	ena => \EU|synchronizer_inst|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen|dout\(6));

-- Location: FF_X14_Y5_N27
\EU|synchronizer_inst|EU|burstlen|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|burstcnt_reg|dout\(7),
	sload => VCC,
	ena => \EU|synchronizer_inst|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen|dout\(7));

-- Location: LCCOMB_X14_Y5_N26
\EU|synchronizer_inst|EU|burstlen_cmp|equal~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_cmp|equal~3_combout\ = (\EU|synchronizer_inst|EU|burstlen|dout\(6) & ((\EU|synchronizer_inst|EU|burstlen|dout\(7) $ (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7))) # 
-- (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)))) # (!\EU|synchronizer_inst|EU|burstlen|dout\(6) & ((\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) 
-- # (\EU|synchronizer_inst|EU|burstlen|dout\(7) $ (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|burstlen|dout\(6),
	datab => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \EU|synchronizer_inst|EU|burstlen|dout\(7),
	datad => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	combout => \EU|synchronizer_inst|EU|burstlen_cmp|equal~3_combout\);

-- Location: FF_X14_Y5_N3
\EU|synchronizer_inst|EU|burstlen|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|burstcnt_reg|dout\(4),
	sload => VCC,
	ena => \EU|synchronizer_inst|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen|dout\(4));

-- Location: FF_X14_Y5_N21
\EU|synchronizer_inst|EU|burstlen|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|burstcnt_reg|dout\(5),
	sload => VCC,
	ena => \EU|synchronizer_inst|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen|dout\(5));

-- Location: LCCOMB_X14_Y5_N20
\EU|synchronizer_inst|EU|burstlen_cmp|equal~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_cmp|equal~2_combout\ = (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\EU|synchronizer_inst|EU|burstlen|dout\(4) $ 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4))) # (!\EU|synchronizer_inst|EU|burstlen|dout\(5)))) # (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) 
-- & ((\EU|synchronizer_inst|EU|burstlen|dout\(5)) # (\EU|synchronizer_inst|EU|burstlen|dout\(4) $ (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datab => \EU|synchronizer_inst|EU|burstlen|dout\(4),
	datac => \EU|synchronizer_inst|EU|burstlen|dout\(5),
	datad => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	combout => \EU|synchronizer_inst|EU|burstlen_cmp|equal~2_combout\);

-- Location: FF_X11_Y5_N17
\EU|synchronizer_inst|EU|burstlen|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|burstcnt_reg|dout\(0),
	sload => VCC,
	ena => \EU|synchronizer_inst|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen|dout\(0));

-- Location: FF_X11_Y5_N21
\EU|synchronizer_inst|EU|burstlen|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|burstcnt_reg|dout\(1),
	sload => VCC,
	ena => \EU|synchronizer_inst|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen|dout\(1));

-- Location: LCCOMB_X11_Y5_N20
\EU|synchronizer_inst|EU|burstlen_cmp|equal~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_cmp|equal~0_combout\ = (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\EU|synchronizer_inst|EU|burstlen|dout\(0) $ 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))) # (!\EU|synchronizer_inst|EU|burstlen|dout\(1)))) # (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) 
-- & ((\EU|synchronizer_inst|EU|burstlen|dout\(1)) # (\EU|synchronizer_inst|EU|burstlen|dout\(0) $ (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \EU|synchronizer_inst|EU|burstlen|dout\(0),
	datac => \EU|synchronizer_inst|EU|burstlen|dout\(1),
	datad => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \EU|synchronizer_inst|EU|burstlen_cmp|equal~0_combout\);

-- Location: FF_X14_Y5_N9
\EU|synchronizer_inst|EU|burstlen|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|burstcnt_reg|dout\(2),
	sload => VCC,
	ena => \EU|synchronizer_inst|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen|dout\(2));

-- Location: FF_X14_Y5_N29
\EU|synchronizer_inst|EU|burstlen|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|burstcnt_reg|dout\(3),
	sload => VCC,
	ena => \EU|synchronizer_inst|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen|dout\(3));

-- Location: LCCOMB_X14_Y5_N28
\EU|synchronizer_inst|EU|burstlen_cmp|equal~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_cmp|equal~1_combout\ = (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\EU|synchronizer_inst|EU|burstlen|dout\(2) $ 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))) # (!\EU|synchronizer_inst|EU|burstlen|dout\(3)))) # (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) 
-- & ((\EU|synchronizer_inst|EU|burstlen|dout\(3)) # (\EU|synchronizer_inst|EU|burstlen|dout\(2) $ (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \EU|synchronizer_inst|EU|burstlen|dout\(2),
	datac => \EU|synchronizer_inst|EU|burstlen|dout\(3),
	datad => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \EU|synchronizer_inst|EU|burstlen_cmp|equal~1_combout\);

-- Location: LCCOMB_X14_Y5_N16
\EU|synchronizer_inst|EU|burstlen_cmp|equal~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_cmp|equal~4_combout\ = (\EU|synchronizer_inst|EU|burstlen_cmp|equal~3_combout\) # ((\EU|synchronizer_inst|EU|burstlen_cmp|equal~2_combout\) # ((\EU|synchronizer_inst|EU|burstlen_cmp|equal~0_combout\) # 
-- (\EU|synchronizer_inst|EU|burstlen_cmp|equal~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|burstlen_cmp|equal~3_combout\,
	datab => \EU|synchronizer_inst|EU|burstlen_cmp|equal~2_combout\,
	datac => \EU|synchronizer_inst|EU|burstlen_cmp|equal~0_combout\,
	datad => \EU|synchronizer_inst|EU|burstlen_cmp|equal~1_combout\,
	combout => \EU|synchronizer_inst|EU|burstlen_cmp|equal~4_combout\);

-- Location: LCCOMB_X11_Y5_N6
\EU|synchronizer_inst|EU|burstlen|dout[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen|dout[10]~feeder_combout\ = \EU|burstcnt_reg|dout\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|burstcnt_reg|dout\(10),
	combout => \EU|synchronizer_inst|EU|burstlen|dout[10]~feeder_combout\);

-- Location: FF_X11_Y5_N7
\EU|synchronizer_inst|EU|burstlen|dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|burstlen|dout[10]~feeder_combout\,
	ena => \EU|synchronizer_inst|CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen|dout\(10));

-- Location: LCCOMB_X11_Y5_N30
\EU|synchronizer_inst|EU|burstlen_cmp|equal\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|burstlen_cmp|equal~combout\ = (\EU|synchronizer_inst|EU|burstlen_cmp|equal~5_combout\) # ((\EU|synchronizer_inst|EU|burstlen_cmp|equal~4_combout\) # 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) $ (\EU|synchronizer_inst|EU|burstlen|dout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|burstlen_cmp|equal~5_combout\,
	datab => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datac => \EU|synchronizer_inst|EU|burstlen_cmp|equal~4_combout\,
	datad => \EU|synchronizer_inst|EU|burstlen|dout\(10),
	combout => \EU|synchronizer_inst|EU|burstlen_cmp|equal~combout\);

-- Location: LCCOMB_X8_Y4_N2
\EU|synchronizer_inst|CU|present_state~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|CU|present_state~14_combout\ = (\CU|synch_clear_n~0_combout\ & ((\EU|synchronizer_inst|CU|present_state.idle_clear~q\) # ((\EU|synchronizer_inst|CU|present_state.reception~q\ & 
-- !\EU|synchronizer_inst|EU|burstlen_cmp|equal~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.reception~q\,
	datab => \CU|synch_clear_n~0_combout\,
	datac => \EU|synchronizer_inst|CU|present_state.idle_clear~q\,
	datad => \EU|synchronizer_inst|EU|burstlen_cmp|equal~combout\,
	combout => \EU|synchronizer_inst|CU|present_state~14_combout\);

-- Location: FF_X8_Y4_N3
\EU|synchronizer_inst|CU|present_state.idle_clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|CU|present_state~14_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|CU|present_state.idle_clear~q\);

-- Location: LCCOMB_X8_Y7_N24
\EU|synchronizer_inst|EU|synchronizer|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|synchronizer|dout~0_combout\ = (\EU|synchronizer_inst|CU|present_state.reset~q\ & (!\EU|synchronizer_inst|CU|present_state.idle_clear~q\ & ((\EU|synchronizer_inst|EU|synchronizer|dout~q\) # 
-- (!\EU|synchronizer_inst|CU|present_state.idle_disabled~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.reset~q\,
	datab => \EU|synchronizer_inst|CU|present_state.idle_clear~q\,
	datac => \EU|synchronizer_inst|EU|synchronizer|dout~q\,
	datad => \EU|synchronizer_inst|CU|present_state.idle_disabled~q\,
	combout => \EU|synchronizer_inst|EU|synchronizer|dout~0_combout\);

-- Location: FF_X8_Y7_N25
\EU|synchronizer_inst|EU|synchronizer|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|synchronizer|dout~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|synchronizer|dout~q\);

-- Location: LCCOMB_X8_Y4_N16
\EU|synchronizer_inst|CU|present_state~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|CU|present_state~17_combout\ = (\CU|synch_clear_n~0_combout\ & ((\EU|synchronizer_inst|CU|present_state~16_combout\) # ((\EU|synchronizer_inst|CU|present_state.idle~q\ & !\EU|synchronizer_inst|EU|synchronizer|dout~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state~16_combout\,
	datab => \EU|synchronizer_inst|CU|present_state.idle~q\,
	datac => \CU|synch_clear_n~0_combout\,
	datad => \EU|synchronizer_inst|EU|synchronizer|dout~q\,
	combout => \EU|synchronizer_inst|CU|present_state~17_combout\);

-- Location: LCCOMB_X8_Y4_N6
\EU|synchronizer_inst|CU|present_state.idle~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|CU|present_state.idle~feeder_combout\ = \EU|synchronizer_inst|CU|present_state~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|synchronizer_inst|CU|present_state~17_combout\,
	combout => \EU|synchronizer_inst|CU|present_state.idle~feeder_combout\);

-- Location: FF_X8_Y4_N7
\EU|synchronizer_inst|CU|present_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|CU|present_state.idle~feeder_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|CU|present_state.idle~q\);

-- Location: LCCOMB_X8_Y4_N26
\EU|synchronizer_inst|CU|present_state~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|CU|present_state~15_combout\ = (!\CU|present_state.synch_restoring_1~q\ & (\EU|synchronizer_inst|CU|present_state.idle~q\ & (\CU|present_state.reset~q\ & \EU|synchronizer_inst|EU|synchronizer|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.synch_restoring_1~q\,
	datab => \EU|synchronizer_inst|CU|present_state.idle~q\,
	datac => \CU|present_state.reset~q\,
	datad => \EU|synchronizer_inst|EU|synchronizer|dout~q\,
	combout => \EU|synchronizer_inst|CU|present_state~15_combout\);

-- Location: FF_X8_Y4_N27
\EU|synchronizer_inst|CU|present_state.reception_init1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|CU|present_state~15_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|CU|present_state.reception_init1~q\);

-- Location: LCCOMB_X8_Y4_N22
\EU|synchronizer_inst|CU|present_state~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|CU|present_state~13_combout\ = (\CU|present_state.reset~q\ & (\EU|synchronizer_inst|CU|present_state.reception_init1~q\ & !\CU|present_state.synch_restoring_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.reset~q\,
	datac => \EU|synchronizer_inst|CU|present_state.reception_init1~q\,
	datad => \CU|present_state.synch_restoring_1~q\,
	combout => \EU|synchronizer_inst|CU|present_state~13_combout\);

-- Location: FF_X8_Y4_N23
\EU|synchronizer_inst|CU|present_state.reception_init2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|CU|present_state~13_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|CU|present_state.reception_init2~q\);

-- Location: LCCOMB_X8_Y4_N30
\EU|synchronizer_inst|CU|present_state~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|CU|present_state~12_combout\ = (\CU|synch_clear_n~0_combout\ & ((\EU|synchronizer_inst|CU|present_state.reception_init2~q\) # ((\EU|synchronizer_inst|CU|present_state.reception~q\ & 
-- \EU|synchronizer_inst|EU|burstlen_cmp|equal~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.reception_init2~q\,
	datab => \CU|synch_clear_n~0_combout\,
	datac => \EU|synchronizer_inst|CU|present_state.reception~q\,
	datad => \EU|synchronizer_inst|EU|burstlen_cmp|equal~combout\,
	combout => \EU|synchronizer_inst|CU|present_state~12_combout\);

-- Location: FF_X8_Y4_N31
\EU|synchronizer_inst|CU|present_state.reception\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|CU|present_state~12_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|CU|present_state.reception~q\);

-- Location: LCCOMB_X8_Y4_N0
\EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\ = (\EU|synchronizer_inst|CU|present_state.reception~q\) # ((\EU|synchronizer_inst|CU|present_state.reception_init2~q\) # (!\CU|present_state.stop_burst_1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.reception~q\,
	datac => \CU|present_state.stop_burst_1~q\,
	datad => \EU|synchronizer_inst|CU|present_state.reception_init2~q\,
	combout => \EU|synchronizer_inst|EU|effective_burstlen_cnt_up_downN~combout\);

-- Location: FF_X12_Y5_N19
\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	asdata => \~GND~combout\,
	sload => \EU|synchronizer_inst|EU|effective_burstlen_cnt_clear~0_combout\,
	ena => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X14_Y5_N6
\EU|burst_cmp|equal~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burst_cmp|equal~3_combout\ = (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (\EU|burstcnt_reg|dout\(7) & 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) $ (!\EU|burstcnt_reg|dout\(6))))) # (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- (!\EU|burstcnt_reg|dout\(7) & (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) $ (!\EU|burstcnt_reg|dout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \EU|burstcnt_reg|dout\(7),
	datad => \EU|burstcnt_reg|dout\(6),
	combout => \EU|burst_cmp|equal~3_combout\);

-- Location: LCCOMB_X14_Y5_N0
\EU|burst_cmp|equal~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burst_cmp|equal~2_combout\ = (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (\EU|burstcnt_reg|dout\(5) & (\EU|burstcnt_reg|dout\(4) $ 
-- (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4))))) # (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\EU|burstcnt_reg|dout\(5) & 
-- (\EU|burstcnt_reg|dout\(4) $ (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datab => \EU|burstcnt_reg|dout\(4),
	datac => \EU|burstcnt_reg|dout\(5),
	datad => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	combout => \EU|burst_cmp|equal~2_combout\);

-- Location: LCCOMB_X11_Y5_N28
\EU|burst_cmp|equal~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burst_cmp|equal~0_combout\ = (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\EU|burstcnt_reg|dout\(1) & (\EU|burstcnt_reg|dout\(0) $ 
-- (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))))) # (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\EU|burstcnt_reg|dout\(1) & 
-- (\EU|burstcnt_reg|dout\(0) $ (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \EU|burstcnt_reg|dout\(0),
	datac => \EU|burstcnt_reg|dout\(1),
	datad => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \EU|burst_cmp|equal~0_combout\);

-- Location: LCCOMB_X14_Y5_N10
\EU|burst_cmp|equal~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burst_cmp|equal~1_combout\ = (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\EU|burstcnt_reg|dout\(2) & (\EU|burstcnt_reg|dout\(3) $ 
-- (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))) # (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\EU|burstcnt_reg|dout\(2) & 
-- (\EU|burstcnt_reg|dout\(3) $ (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \EU|burstcnt_reg|dout\(2),
	datac => \EU|burstcnt_reg|dout\(3),
	datad => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \EU|burst_cmp|equal~1_combout\);

-- Location: LCCOMB_X14_Y5_N24
\EU|burst_cmp|equal~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burst_cmp|equal~4_combout\ = (\EU|burst_cmp|equal~3_combout\ & (\EU|burst_cmp|equal~2_combout\ & (\EU|burst_cmp|equal~0_combout\ & \EU|burst_cmp|equal~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|burst_cmp|equal~3_combout\,
	datab => \EU|burst_cmp|equal~2_combout\,
	datac => \EU|burst_cmp|equal~0_combout\,
	datad => \EU|burst_cmp|equal~1_combout\,
	combout => \EU|burst_cmp|equal~4_combout\);

-- Location: LCCOMB_X12_Y5_N0
\EU|burst_cmp|equal~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burst_cmp|equal~5_combout\ = (\EU|burstcnt_reg|dout\(8) & (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & 
-- (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) $ (!\EU|burstcnt_reg|dout\(9))))) # (!\EU|burstcnt_reg|dout\(8) & 
-- (!\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) $ (!\EU|burstcnt_reg|dout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|burstcnt_reg|dout\(8),
	datab => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datac => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => \EU|burstcnt_reg|dout\(9),
	combout => \EU|burst_cmp|equal~5_combout\);

-- Location: LCCOMB_X11_Y5_N0
\EU|burst_cmp|equal\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burst_cmp|equal~combout\ = (\EU|burst_cmp|equal~4_combout\ & (\EU|burst_cmp|equal~5_combout\ & (\EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) $ (!\EU|burstcnt_reg|dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|burst_cmp|equal~4_combout\,
	datab => \EU|synchronizer_inst|EU|burstlen_counter|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datac => \EU|burst_cmp|equal~5_combout\,
	datad => \EU|burstcnt_reg|dout\(10),
	combout => \EU|burst_cmp|equal~combout\);

-- Location: LCCOMB_X1_Y6_N12
\CU|next_state.writeburst~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.writeburst~2_combout\ = (\avs_write~input0\ & (!\EU|burst_cmp|equal~combout\ & ((\CU|present_state.writeburst_prep~q\) # (\CU|present_state.writeburst~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_write~input0\,
	datab => \CU|present_state.writeburst_prep~q\,
	datac => \CU|present_state.writeburst~q\,
	datad => \EU|burst_cmp|equal~combout\,
	combout => \CU|next_state.writeburst~2_combout\);

-- Location: FF_X1_Y6_N13
\CU|present_state.writeburst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.writeburst~2_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writeburst~q\);

-- Location: LCCOMB_X1_Y6_N20
\CU|next_state.writeburst_last~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.writeburst_last~2_combout\ = (\avs_write~input0\ & (\EU|burst_cmp|equal~combout\ & ((\CU|present_state.writeburst~q\) # (\CU|present_state.writeburst_prep~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.writeburst~q\,
	datab => \CU|present_state.writeburst_prep~q\,
	datac => \avs_write~input0\,
	datad => \EU|burst_cmp|equal~combout\,
	combout => \CU|next_state.writeburst_last~2_combout\);

-- Location: FF_X1_Y6_N21
\CU|present_state.writeburst_last\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.writeburst_last~2_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writeburst_last~q\);

-- Location: LCCOMB_X1_Y6_N6
\CU|next_state.write_end~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.write_end~0_combout\ = (\CU|present_state.writemem~q\) # (\CU|present_state.writeburst_last~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.writemem~q\,
	datad => \CU|present_state.writeburst_last~q\,
	combout => \CU|next_state.write_end~0_combout\);

-- Location: FF_X1_Y6_N31
\CU|present_state.write_end\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|next_state.write_end~0_combout\,
	clrn => \reset_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.write_end~q\);

-- Location: LCCOMB_X4_Y2_N0
\CU|WideOr13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr13~combout\ = ((\CU|present_state.dummycmd_last~q\) # ((\CU|present_state.dummycmd_end~q\) # (\CU|present_state.write_end~q\))) # (!\CU|WideOr13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr13~0_combout\,
	datab => \CU|present_state.dummycmd_last~q\,
	datac => \CU|present_state.dummycmd_end~q\,
	datad => \CU|present_state.write_end~q\,
	combout => \CU|WideOr13~combout\);

-- Location: LCCOMB_X3_Y2_N10
\EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr13~combout\ & (\EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out~q\ $ (\EU|deadline_timer|cnt|tff_in\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|WideOr13~combout\,
	datac => \EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out~q\,
	datad => \EU|deadline_timer|cnt|tff_in\(7),
	combout => \EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out~0_combout\);

-- Location: FF_X3_Y2_N11
\EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X2_Y6_N30
\EU|deadline_timer|tim_1000~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|tim_1000~0_combout\ = (\EU|deadline_timer|cnt|g1:3:chain_tff|dummy_out~q\ & (!\EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~q\ & (!\EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out~q\ & !\EU|deadline_timer|cnt|entry_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|cnt|g1:3:chain_tff|dummy_out~q\,
	datab => \EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out~q\,
	datad => \EU|deadline_timer|cnt|entry_tff|dummy_out~q\,
	combout => \EU|deadline_timer|tim_1000~0_combout\);

-- Location: LCCOMB_X3_Y2_N16
\EU|deadline_timer|tim_1000~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|tim_1000~1_combout\ = (\EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out~q\ & (\EU|deadline_timer|tim_1000~0_combout\ & (\EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~q\ & !\EU|deadline_timer|cnt|g1:10:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|cnt|g1:7:chain_tff|dummy_out~q\,
	datab => \EU|deadline_timer|tim_1000~0_combout\,
	datac => \EU|deadline_timer|cnt|g1:9:chain_tff|dummy_out~q\,
	datad => \EU|deadline_timer|cnt|g1:10:chain_tff|dummy_out~q\,
	combout => \EU|deadline_timer|tim_1000~1_combout\);

-- Location: LCCOMB_X3_Y3_N30
\EU|deadline_timer|tim_1000~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|tim_1000~3_combout\ = (\EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~q\ & (\EU|deadline_timer|cnt|g1:5:chain_tff|dummy_out~q\ & \EU|deadline_timer|cnt|g1:8:chain_tff|dummy_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|cnt|g1:6:chain_tff|dummy_out~q\,
	datac => \EU|deadline_timer|cnt|g1:5:chain_tff|dummy_out~q\,
	datad => \EU|deadline_timer|cnt|g1:8:chain_tff|dummy_out~q\,
	combout => \EU|deadline_timer|tim_1000~3_combout\);

-- Location: LCCOMB_X3_Y2_N14
\EU|deadline_timer|tim_1000~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|tim_1000~2_combout\ = (!\EU|deadline_timer|cnt|g1:12:chain_tff|dummy_out~q\ & (!\EU|deadline_timer|cnt|g1:13:chain_tff|dummy_out~q\ & (!\EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~q\ & 
-- !\EU|deadline_timer|cnt|g1:11:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|cnt|g1:12:chain_tff|dummy_out~q\,
	datab => \EU|deadline_timer|cnt|g1:13:chain_tff|dummy_out~q\,
	datac => \EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~q\,
	datad => \EU|deadline_timer|cnt|g1:11:chain_tff|dummy_out~q\,
	combout => \EU|deadline_timer|tim_1000~2_combout\);

-- Location: LCCOMB_X4_Y2_N14
\EU|deadline_timer|tim_1000~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|deadline_timer|tim_1000~4_combout\ = (\EU|deadline_timer|tim_1000~1_combout\ & (\EU|deadline_timer|tim_1000~3_combout\ & \EU|deadline_timer|tim_1000~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|tim_1000~1_combout\,
	datac => \EU|deadline_timer|tim_1000~3_combout\,
	datad => \EU|deadline_timer|tim_1000~2_combout\,
	combout => \EU|deadline_timer|tim_1000~4_combout\);

-- Location: FF_X5_Y2_N29
\CU|present_state.synch_restoring_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|present_state.synch_restoring_1~q\,
	clrn => \reset_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.synch_restoring_2~q\);

-- Location: LCCOMB_X5_Y2_N28
\CU|Selector2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector2~0_combout\ = (\CU|present_state.synch_restoring_2~q\) # ((\CU|present_state.write_end~q\) # ((!\EU|dpd_req_tracker|dout~q\ & \CU|present_state.writeconf0_end~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|dpd_req_tracker|dout~q\,
	datab => \CU|present_state.writeconf0_end~q\,
	datac => \CU|present_state.synch_restoring_2~q\,
	datad => \CU|present_state.write_end~q\,
	combout => \CU|Selector2~0_combout\);

-- Location: LCCOMB_X5_Y2_N16
\CU|Selector2~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector2~1_combout\ = (\avs_read~input0\) # ((\avs_write~input0\ & ((!\EU|dpd_tracker|dout~q\) # (!\avs_writedata[0]~input0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_writedata[0]~input0\,
	datab => \avs_write~input0\,
	datac => \avs_read~input0\,
	datad => \EU|dpd_tracker|dout~q\,
	combout => \CU|Selector2~1_combout\);

-- Location: LCCOMB_X5_Y2_N14
\CU|Selector2~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector2~2_combout\ = ((\CU|Selector2~1_combout\ & ((\EU|config~combout\) # (!\EU|dpd_tracker|dout~q\)))) # (!\CU|cmd_load~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|dpd_tracker|dout~q\,
	datab => \EU|config~combout\,
	datac => \CU|Selector2~1_combout\,
	datad => \CU|cmd_load~0_combout\,
	combout => \CU|Selector2~2_combout\);

-- Location: LCCOMB_X5_Y2_N30
\CU|Selector2~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|Selector2~3_combout\ = (\CU|Selector2~0_combout\) # (((\EU|deadline_timer|tim_1000~4_combout\ & \CU|present_state.wait_dpd_in~q\)) # (!\CU|Selector2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|deadline_timer|tim_1000~4_combout\,
	datab => \CU|present_state.wait_dpd_in~q\,
	datac => \CU|Selector2~0_combout\,
	datad => \CU|Selector2~2_combout\,
	combout => \CU|Selector2~3_combout\);

-- Location: FF_X5_Y2_N31
\CU|present_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector2~3_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.idle~q\);

-- Location: LCCOMB_X5_Y2_N0
\CU|next_state.read_virtconf~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.read_virtconf~2_combout\ = (\avs_read~input0\ & (\EU|config~combout\ & ((\CU|present_state.read_virtconf~q\) # (\CU|present_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_read~input0\,
	datab => \EU|config~combout\,
	datac => \CU|present_state.read_virtconf~q\,
	datad => \CU|present_state.idle~q\,
	combout => \CU|next_state.read_virtconf~2_combout\);

-- Location: FF_X5_Y2_N1
\CU|present_state.read_virtconf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.read_virtconf~2_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.read_virtconf~q\);

-- Location: LCCOMB_X5_Y2_N24
\CU|cmd_load~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|cmd_load~0_combout\ = (\CU|present_state.idle~q\) # (\CU|present_state.read_virtconf~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.idle~q\,
	datad => \CU|present_state.read_virtconf~q\,
	combout => \CU|cmd_load~0_combout\);

-- Location: LCCOMB_X5_Y2_N22
\CU|next_state.readmem_prep~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.readmem_prep~0_combout\ = (\avs_read~input0\ & (!\EU|config~combout\ & (\CU|cmd_load~0_combout\ & !\EU|dpd_tracker|dout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_read~input0\,
	datab => \EU|config~combout\,
	datac => \CU|cmd_load~0_combout\,
	datad => \EU|dpd_tracker|dout~q\,
	combout => \CU|next_state.readmem_prep~0_combout\);

-- Location: FF_X5_Y2_N23
\CU|present_state.readmem_prep\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.readmem_prep~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.readmem_prep~q\);

-- Location: LCCOMB_X3_Y4_N22
\CU|WideOr7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr7~combout\ = (\CU|present_state.restore_burst~q\) # ((\CU|present_state.readmem_prep~q\) # (\CU|present_state.writemem_prep~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.restore_burst~q\,
	datac => \CU|present_state.readmem_prep~q\,
	datad => \CU|present_state.writemem_prep~q\,
	combout => \CU|WideOr7~combout\);

-- Location: FF_X3_Y4_N23
\CU|present_state.CA_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|WideOr7~combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.CA_0~q\);

-- Location: FF_X3_Y4_N3
\CU|present_state.CA_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|present_state.CA_0~q\,
	clrn => \reset_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.CA_1~q\);

-- Location: LCCOMB_X1_Y6_N2
\CU|present_state.CA_2~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state.CA_2~feeder_combout\ = \CU|present_state.CA_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|present_state.CA_1~q\,
	combout => \CU|present_state.CA_2~feeder_combout\);

-- Location: FF_X1_Y6_N3
\CU|present_state.CA_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|present_state.CA_2~feeder_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.CA_2~q\);

-- Location: LCCOMB_X2_Y6_N22
\EU|rwds_tracker|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|rwds_tracker|dout~0_combout\ = (\CU|present_state.CA_2~q\ & ((\hram_RWDS_in~input_o\))) # (!\CU|present_state.CA_2~q\ & (\EU|rwds_tracker|dout~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.CA_2~q\,
	datac => \EU|rwds_tracker|dout~q\,
	datad => \hram_RWDS_in~input_o\,
	combout => \EU|rwds_tracker|dout~0_combout\);

-- Location: FF_X2_Y6_N23
\EU|rwds_tracker|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|rwds_tracker|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|rwds_tracker|dout~q\);

-- Location: LCCOMB_X2_Y6_N4
\CU|next_state~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state~1_combout\ = (!\EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~q\ & (\EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~q\ & (\EU|rwds_tracker|dout~q\ $ (!\EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|rwds_tracker|dout~q\,
	datab => \EU|deadline_timer|cnt|g1:2:chain_tff|dummy_out~q\,
	datac => \EU|deadline_timer|cnt|g1:4:chain_tff|dummy_out~q\,
	datad => \EU|deadline_timer|cnt|g1:1:chain_tff|dummy_out~q\,
	combout => \CU|next_state~1_combout\);

-- Location: LCCOMB_X1_Y6_N28
\CU|next_state.writeburst_prep~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.writeburst_prep~0_combout\ = (\CU|next_state~1_combout\ & (\EU|burst_detector|equal~3_combout\ & (\CU|present_state.writemem_wait~q\ & \EU|deadline_timer|tim_21~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|next_state~1_combout\,
	datab => \EU|burst_detector|equal~3_combout\,
	datac => \CU|present_state.writemem_wait~q\,
	datad => \EU|deadline_timer|tim_21~2_combout\,
	combout => \CU|next_state.writeburst_prep~0_combout\);

-- Location: FF_X1_Y6_N29
\CU|present_state.writeburst_prep\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.writeburst_prep~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.writeburst_prep~q\);

-- Location: LCCOMB_X1_Y6_N22
\CU|next_state.stop_burst_1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|next_state.stop_burst_1~0_combout\ = (!\avs_write~input0\ & ((\CU|present_state.writeburst_prep~q\) # (\CU|present_state.writeburst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_write~input0\,
	datab => \CU|present_state.writeburst_prep~q\,
	datad => \CU|present_state.writeburst~q\,
	combout => \CU|next_state.stop_burst_1~0_combout\);

-- Location: FF_X1_Y6_N23
\CU|present_state.stop_burst_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|next_state.stop_burst_1~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.stop_burst_1~q\);

-- Location: LCCOMB_X1_Y6_N16
\CU|WideOr22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr22~combout\ = (!\CU|present_state.stop_burst_1~q\ & (!\CU|present_state.writeburst_last~q\ & (!\CU|present_state.write_end~q\ & !\CU|present_state.writeburst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.stop_burst_1~q\,
	datab => \CU|present_state.writeburst_last~q\,
	datac => \CU|present_state.write_end~q\,
	datad => \CU|present_state.writeburst~q\,
	combout => \CU|WideOr22~combout\);

-- Location: LCCOMB_X3_Y4_N12
\CU|address_space_sel[0]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|address_space_sel[0]~1_combout\ = (\CU|present_state.writeconf0_prep~q\) # (\CU|present_state.restore_burst~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.writeconf0_prep~q\,
	datac => \CU|present_state.restore_burst~q\,
	combout => \CU|address_space_sel[0]~1_combout\);

-- Location: LCCOMB_X3_Y4_N14
\CU|address_space_sel[1]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|address_space_sel[1]~0_combout\ = (\CU|present_state.restore_burst~q\) # (\CU|present_state.writeconf1_prep~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.restore_burst~q\,
	datad => \CU|present_state.writeconf1_prep~q\,
	combout => \CU|address_space_sel[1]~0_combout\);

-- Location: LCCOMB_X8_Y5_N22
\EU|addr_reg|dout[19]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[19]~feeder_combout\ = \avs_address[19]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_address[19]~input0\,
	combout => \EU|addr_reg|dout[19]~feeder_combout\);

-- Location: FF_X8_Y5_N23
\EU|addr_reg|dout[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[19]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(19));

-- Location: LCCOMB_X8_Y5_N4
\EU|addr_reg|dout[18]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[18]~feeder_combout\ = \avs_address[18]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_address[18]~input0\,
	combout => \EU|addr_reg|dout[18]~feeder_combout\);

-- Location: FF_X8_Y5_N5
\EU|addr_reg|dout[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[18]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(18));

-- Location: LCCOMB_X8_Y5_N26
\EU|addr_reg|dout[17]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[17]~feeder_combout\ = \avs_address[17]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_address[17]~input0\,
	combout => \EU|addr_reg|dout[17]~feeder_combout\);

-- Location: FF_X8_Y5_N27
\EU|addr_reg|dout[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[17]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(17));

-- Location: LCCOMB_X8_Y5_N24
\EU|addr_reg|dout[16]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[16]~feeder_combout\ = \avs_address[16]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_address[16]~input0\,
	combout => \EU|addr_reg|dout[16]~feeder_combout\);

-- Location: FF_X8_Y5_N25
\EU|addr_reg|dout[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[16]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(16));

-- Location: LCCOMB_X4_Y5_N12
\EU|addr_reg|dout[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[15]~feeder_combout\ = \avs_address[15]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_address[15]~input0\,
	combout => \EU|addr_reg|dout[15]~feeder_combout\);

-- Location: FF_X4_Y5_N13
\EU|addr_reg|dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[15]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(15));

-- Location: LCCOMB_X4_Y5_N6
\EU|addr_reg|dout[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[14]~feeder_combout\ = \avs_address[14]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_address[14]~input0\,
	combout => \EU|addr_reg|dout[14]~feeder_combout\);

-- Location: FF_X4_Y5_N7
\EU|addr_reg|dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[14]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(14));

-- Location: LCCOMB_X4_Y5_N16
\EU|addr_reg|dout[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[13]~feeder_combout\ = \avs_address[13]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_address[13]~input0\,
	combout => \EU|addr_reg|dout[13]~feeder_combout\);

-- Location: FF_X4_Y5_N17
\EU|addr_reg|dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[13]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(13));

-- Location: LCCOMB_X4_Y5_N2
\EU|addr_reg|dout[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[12]~feeder_combout\ = \avs_address[12]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_address[12]~input0\,
	combout => \EU|addr_reg|dout[12]~feeder_combout\);

-- Location: FF_X4_Y5_N3
\EU|addr_reg|dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[12]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(12));

-- Location: LCCOMB_X4_Y5_N0
\EU|addr_reg|dout[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[11]~feeder_combout\ = \avs_address[11]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_address[11]~input0\,
	combout => \EU|addr_reg|dout[11]~feeder_combout\);

-- Location: FF_X4_Y5_N1
\EU|addr_reg|dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[11]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(11));

-- Location: LCCOMB_X23_Y6_N14
\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~0_combout\ = \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) $ (VCC)
-- \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\ = CARRY(\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	datad => VCC,
	combout => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~0_combout\,
	cout => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\);

-- Location: LCCOMB_X23_Y6_N16
\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~2_combout\ = (\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & (!\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\)) # 
-- (!\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & ((\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\) # (GND)))
-- \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~3\ = CARRY((!\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\) # (!\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	datad => VCC,
	cin => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~1\,
	combout => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~2_combout\,
	cout => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~3\);

-- Location: LCCOMB_X23_Y6_N18
\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4_combout\ = !\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~3\,
	combout => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4_combout\);

-- Location: LCCOMB_X23_Y6_N6
\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\ = (!\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4_combout\ & (\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~2_combout\ & 
-- ((\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(0)) # (!\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	datab => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4_combout\,
	datac => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	datad => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[1]~2_combout\,
	combout => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\);

-- Location: FF_X23_Y6_N7
\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(1));

-- Location: LCCOMB_X23_Y6_N12
\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\ = (\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~0_combout\ & (!\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4_combout\ & 
-- ((\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(0)) # (!\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	datab => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[0]~0_combout\,
	datac => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	datad => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|add_sub6_result_int[2]~4_combout\,
	combout => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\);

-- Location: FF_X23_Y6_N13
\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

-- Location: LCCOMB_X23_Y6_N4
\EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a[0]~feeder_combout\ = \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	combout => \EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a[0]~feeder_combout\);

-- Location: FF_X23_Y6_N5
\EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a\(0));

-- Location: LCCOMB_X23_Y6_N26
\EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a[1]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a[1]~0_combout\ = !\EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|cntpipe1|dout_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	combout => \EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a[1]~0_combout\);

-- Location: FF_X23_Y6_N27
\EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a\(1));

-- Location: LCCOMB_X23_Y6_N0
\EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a[1]~_wirecell\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ = !\EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a\(1),
	combout => \EU|cntpipe1|dout_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\);

-- Location: M9K_X22_Y6_N0
\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "avs_to_hram_converter_EU:EU|reg:cntpipe1|altshift_taps:dout_rtl_0|shift_taps_06m:auto_generated|altsyncram_ik31:altsyncram4|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 3,
	port_a_logical_ram_width => 11,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 3,
	port_b_logical_ram_width => 11,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => GND,
	portadatain => \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTADATAIN_bus\,
	portaaddr => \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTAADDR_bus\,
	portbaddr => \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X4_Y5_N26
\EU|addr_reg|dout[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[10]~feeder_combout\ = \avs_address[10]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_address[10]~input0\,
	combout => \EU|addr_reg|dout[10]~feeder_combout\);

-- Location: FF_X4_Y5_N27
\EU|addr_reg|dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[10]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(10));

-- Location: LCCOMB_X4_Y5_N8
\EU|addr_reg|dout[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[9]~feeder_combout\ = \avs_address[9]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_address[9]~input0\,
	combout => \EU|addr_reg|dout[9]~feeder_combout\);

-- Location: FF_X4_Y5_N9
\EU|addr_reg|dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[9]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(9));

-- Location: LCCOMB_X4_Y5_N22
\EU|addr_reg|dout[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[8]~feeder_combout\ = \avs_address[8]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_address[8]~input0\,
	combout => \EU|addr_reg|dout[8]~feeder_combout\);

-- Location: FF_X4_Y5_N23
\EU|addr_reg|dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[8]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(8));

-- Location: LCCOMB_X6_Y2_N0
\EU|addr_reg|dout[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[7]~feeder_combout\ = \avs_address[7]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_address[7]~input0\,
	combout => \EU|addr_reg|dout[7]~feeder_combout\);

-- Location: FF_X6_Y2_N1
\EU|addr_reg|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[7]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(7));

-- Location: LCCOMB_X6_Y2_N6
\EU|addr_reg|dout[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[6]~feeder_combout\ = \avs_address[6]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \avs_address[6]~input0\,
	combout => \EU|addr_reg|dout[6]~feeder_combout\);

-- Location: FF_X6_Y2_N7
\EU|addr_reg|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[6]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(6));

-- Location: LCCOMB_X6_Y2_N26
\EU|addr_reg|dout[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[5]~feeder_combout\ = \avs_address[5]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \avs_address[5]~input0\,
	combout => \EU|addr_reg|dout[5]~feeder_combout\);

-- Location: FF_X6_Y2_N27
\EU|addr_reg|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[5]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(5));

-- Location: LCCOMB_X6_Y2_N30
\EU|addr_reg|dout[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[4]~feeder_combout\ = \avs_address[4]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \avs_address[4]~input0\,
	combout => \EU|addr_reg|dout[4]~feeder_combout\);

-- Location: FF_X6_Y2_N31
\EU|addr_reg|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[4]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(4));

-- Location: LCCOMB_X6_Y2_N10
\EU|addr_reg|dout[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[3]~feeder_combout\ = \avs_address[3]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \avs_address[3]~input0\,
	combout => \EU|addr_reg|dout[3]~feeder_combout\);

-- Location: FF_X6_Y2_N11
\EU|addr_reg|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[3]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(3));

-- Location: LCCOMB_X6_Y2_N16
\EU|addr_reg|dout[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[2]~feeder_combout\ = \avs_address[2]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_address[2]~input0\,
	combout => \EU|addr_reg|dout[2]~feeder_combout\);

-- Location: FF_X6_Y2_N17
\EU|addr_reg|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[2]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(2));

-- Location: LCCOMB_X6_Y2_N20
\EU|addr_reg|dout[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[1]~feeder_combout\ = \avs_address[1]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \avs_address[1]~input0\,
	combout => \EU|addr_reg|dout[1]~feeder_combout\);

-- Location: FF_X6_Y2_N21
\EU|addr_reg|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[1]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(1));

-- Location: LCCOMB_X6_Y2_N12
\EU|addr_reg|dout[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[0]~feeder_combout\ = \avs_address[0]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_address[0]~input0\,
	combout => \EU|addr_reg|dout[0]~feeder_combout\);

-- Location: FF_X6_Y2_N13
\EU|addr_reg|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[0]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(0));

-- Location: LCCOMB_X5_Y6_N10
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~22_combout\ = (\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a10\ & (\EU|addr_reg|dout\(0) $ (VCC))) # (!\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a10\ 
-- & (\EU|addr_reg|dout\(0) & VCC))
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~23\ = CARRY((\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a10\ & \EU|addr_reg|dout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a10\,
	datab => \EU|addr_reg|dout\(0),
	datad => VCC,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~22_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~23\);

-- Location: LCCOMB_X5_Y6_N12
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~24\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~24_combout\ = (\EU|addr_reg|dout\(1) & ((\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a9\ & (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~23\ & 
-- VCC)) # (!\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a9\ & (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~23\)))) # (!\EU|addr_reg|dout\(1) & ((\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a9\ & 
-- (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~23\)) # (!\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a9\ & ((\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~23\) # (GND)))))
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~25\ = CARRY((\EU|addr_reg|dout\(1) & (!\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a9\ & !\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~23\)) # 
-- (!\EU|addr_reg|dout\(1) & ((!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~23\) # (!\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|addr_reg|dout\(1),
	datab => \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a9\,
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~23\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~24_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~25\);

-- Location: LCCOMB_X5_Y6_N14
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~26\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~26_combout\ = ((\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a8\ $ (\EU|addr_reg|dout\(2) $ (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~25\)))) 
-- # (GND)
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~27\ = CARRY((\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a8\ & ((\EU|addr_reg|dout\(2)) # (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~25\))) # 
-- (!\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a8\ & (\EU|addr_reg|dout\(2) & !\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a8\,
	datab => \EU|addr_reg|dout\(2),
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~25\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~26_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~27\);

-- Location: LCCOMB_X5_Y6_N16
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~28\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~28_combout\ = (\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a7\ & ((\EU|addr_reg|dout\(3) & (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~27\ & 
-- VCC)) # (!\EU|addr_reg|dout\(3) & (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~27\)))) # (!\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a7\ & ((\EU|addr_reg|dout\(3) & 
-- (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~27\)) # (!\EU|addr_reg|dout\(3) & ((\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~27\) # (GND)))))
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~29\ = CARRY((\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a7\ & (!\EU|addr_reg|dout\(3) & !\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~27\)) # 
-- (!\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a7\ & ((!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~27\) # (!\EU|addr_reg|dout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a7\,
	datab => \EU|addr_reg|dout\(3),
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~27\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~28_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~29\);

-- Location: LCCOMB_X5_Y6_N18
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~30\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~30_combout\ = ((\EU|addr_reg|dout\(4) $ (\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a6\ $ (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~29\)))) 
-- # (GND)
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~31\ = CARRY((\EU|addr_reg|dout\(4) & ((\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a6\) # (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~29\))) # 
-- (!\EU|addr_reg|dout\(4) & (\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a6\ & !\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|addr_reg|dout\(4),
	datab => \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a6\,
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~29\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~30_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~31\);

-- Location: LCCOMB_X5_Y6_N20
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~32\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~32_combout\ = (\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a5\ & ((\EU|addr_reg|dout\(5) & (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~31\ & 
-- VCC)) # (!\EU|addr_reg|dout\(5) & (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~31\)))) # (!\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a5\ & ((\EU|addr_reg|dout\(5) & 
-- (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~31\)) # (!\EU|addr_reg|dout\(5) & ((\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~31\) # (GND)))))
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~33\ = CARRY((\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a5\ & (!\EU|addr_reg|dout\(5) & !\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~31\)) # 
-- (!\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a5\ & ((!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~31\) # (!\EU|addr_reg|dout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a5\,
	datab => \EU|addr_reg|dout\(5),
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~31\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~32_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~33\);

-- Location: LCCOMB_X5_Y6_N22
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~34\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~34_combout\ = ((\EU|addr_reg|dout\(6) $ (\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a4\ $ (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~33\)))) 
-- # (GND)
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~35\ = CARRY((\EU|addr_reg|dout\(6) & ((\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a4\) # (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~33\))) # 
-- (!\EU|addr_reg|dout\(6) & (\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a4\ & !\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|addr_reg|dout\(6),
	datab => \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a4\,
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~33\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~34_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~35\);

-- Location: LCCOMB_X5_Y6_N24
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~36\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~36_combout\ = (\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a3\ & ((\EU|addr_reg|dout\(7) & (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~35\ & 
-- VCC)) # (!\EU|addr_reg|dout\(7) & (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~35\)))) # (!\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a3\ & ((\EU|addr_reg|dout\(7) & 
-- (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~35\)) # (!\EU|addr_reg|dout\(7) & ((\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~35\) # (GND)))))
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~37\ = CARRY((\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a3\ & (!\EU|addr_reg|dout\(7) & !\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~35\)) # 
-- (!\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a3\ & ((!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~35\) # (!\EU|addr_reg|dout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a3\,
	datab => \EU|addr_reg|dout\(7),
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~35\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~36_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~37\);

-- Location: LCCOMB_X5_Y6_N26
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~38\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~38_combout\ = ((\EU|addr_reg|dout\(8) $ (\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a2\ $ (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~37\)))) 
-- # (GND)
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~39\ = CARRY((\EU|addr_reg|dout\(8) & ((\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a2\) # (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~37\))) # 
-- (!\EU|addr_reg|dout\(8) & (\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a2\ & !\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|addr_reg|dout\(8),
	datab => \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a2\,
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~37\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~38_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~39\);

-- Location: LCCOMB_X5_Y6_N28
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~40\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~40_combout\ = (\EU|addr_reg|dout\(9) & ((\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a1\ & (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~39\ & 
-- VCC)) # (!\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a1\ & (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~39\)))) # (!\EU|addr_reg|dout\(9) & ((\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a1\ & 
-- (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~39\)) # (!\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a1\ & ((\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~39\) # (GND)))))
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~41\ = CARRY((\EU|addr_reg|dout\(9) & (!\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a1\ & !\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~39\)) # 
-- (!\EU|addr_reg|dout\(9) & ((!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~39\) # (!\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|addr_reg|dout\(9),
	datab => \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a1\,
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~39\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~40_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~41\);

-- Location: LCCOMB_X5_Y6_N30
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~42\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~42_combout\ = ((\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ $ (\EU|addr_reg|dout\(10) $ 
-- (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~41\)))) # (GND)
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~43\ = CARRY((\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ & ((\EU|addr_reg|dout\(10)) # 
-- (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~41\))) # (!\EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ & (\EU|addr_reg|dout\(10) & 
-- !\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|cntpipe1|dout_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\,
	datab => \EU|addr_reg|dout\(10),
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~41\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~42_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~43\);

-- Location: LCCOMB_X5_Y5_N0
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~44\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~44_combout\ = (\EU|addr_reg|dout\(11) & (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~43\)) # (!\EU|addr_reg|dout\(11) & 
-- ((\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~43\) # (GND)))
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~45\ = CARRY((!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~43\) # (!\EU|addr_reg|dout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|addr_reg|dout\(11),
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~43\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~44_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~45\);

-- Location: LCCOMB_X5_Y5_N2
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~46\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~46_combout\ = (\EU|addr_reg|dout\(12) & (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~45\ $ (GND))) # (!\EU|addr_reg|dout\(12) & 
-- (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~45\ & VCC))
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~47\ = CARRY((\EU|addr_reg|dout\(12) & !\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|addr_reg|dout\(12),
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~45\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~46_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~47\);

-- Location: LCCOMB_X5_Y5_N4
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~48\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~48_combout\ = (\EU|addr_reg|dout\(13) & (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~47\)) # (!\EU|addr_reg|dout\(13) & 
-- ((\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~47\) # (GND)))
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~49\ = CARRY((!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~47\) # (!\EU|addr_reg|dout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|addr_reg|dout\(13),
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~47\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~48_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~49\);

-- Location: LCCOMB_X5_Y5_N6
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~50\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~50_combout\ = (\EU|addr_reg|dout\(14) & (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~49\ $ (GND))) # (!\EU|addr_reg|dout\(14) & 
-- (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~49\ & VCC))
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~51\ = CARRY((\EU|addr_reg|dout\(14) & !\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EU|addr_reg|dout\(14),
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~49\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~50_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~51\);

-- Location: LCCOMB_X5_Y5_N8
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[15]~52\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[15]~52_combout\ = (\EU|addr_reg|dout\(15) & (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~51\)) # (!\EU|addr_reg|dout\(15) & 
-- ((\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~51\) # (GND)))
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[15]~53\ = CARRY((!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~51\) # (!\EU|addr_reg|dout\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|addr_reg|dout\(15),
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~51\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[15]~52_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[15]~53\);

-- Location: LCCOMB_X5_Y5_N10
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[16]~54\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[16]~54_combout\ = (\EU|addr_reg|dout\(16) & (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[15]~53\ $ (GND))) # (!\EU|addr_reg|dout\(16) & 
-- (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[15]~53\ & VCC))
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[16]~55\ = CARRY((\EU|addr_reg|dout\(16) & !\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[15]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EU|addr_reg|dout\(16),
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[15]~53\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[16]~54_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[16]~55\);

-- Location: LCCOMB_X5_Y5_N12
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[17]~56\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[17]~56_combout\ = (\EU|addr_reg|dout\(17) & (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[16]~55\)) # (!\EU|addr_reg|dout\(17) & 
-- ((\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[16]~55\) # (GND)))
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[17]~57\ = CARRY((!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[16]~55\) # (!\EU|addr_reg|dout\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EU|addr_reg|dout\(17),
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[16]~55\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[17]~56_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[17]~57\);

-- Location: LCCOMB_X5_Y5_N14
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[18]~58\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[18]~58_combout\ = (\EU|addr_reg|dout\(18) & (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[17]~57\ $ (GND))) # (!\EU|addr_reg|dout\(18) & 
-- (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[17]~57\ & VCC))
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[18]~59\ = CARRY((\EU|addr_reg|dout\(18) & !\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[17]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EU|addr_reg|dout\(18),
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[17]~57\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[18]~58_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[18]~59\);

-- Location: LCCOMB_X5_Y5_N16
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[19]~60\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[19]~60_combout\ = (\EU|addr_reg|dout\(19) & (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[18]~59\)) # (!\EU|addr_reg|dout\(19) & 
-- ((\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[18]~59\) # (GND)))
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[19]~61\ = CARRY((!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[18]~59\) # (!\EU|addr_reg|dout\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|addr_reg|dout\(19),
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[18]~59\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[19]~60_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[19]~61\);

-- Location: FF_X5_Y5_N17
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[19]~60_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(19));

-- Location: LCCOMB_X5_Y5_N28
\EU|address_mux|Mux12~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux12~0_combout\ = (\CU|address_space_sel[0]~1_combout\ & (\CU|address_space_sel[1]~0_combout\ & ((\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(19))))) # (!\CU|address_space_sel[0]~1_combout\ & 
-- (!\CU|address_space_sel[1]~0_combout\ & (\EU|addr_reg|dout\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|address_space_sel[0]~1_combout\,
	datab => \CU|address_space_sel[1]~0_combout\,
	datac => \EU|addr_reg|dout\(19),
	datad => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(19),
	combout => \EU|address_mux|Mux12~0_combout\);

-- Location: LCCOMB_X3_Y4_N10
\CU|WideOr7~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr7~0_combout\ = (!\CU|present_state.restore_burst~q\ & !\CU|present_state.writemem_prep~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.restore_burst~q\,
	datad => \CU|present_state.writemem_prep~q\,
	combout => \CU|WideOr7~0_combout\);

-- Location: LCCOMB_X3_Y4_N28
\CU|WideOr12~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr12~3_combout\ = ((\CU|present_state.writeconf0_prep~q\) # ((\CU|present_state.readmem_prep~q\) # (\CU|present_state.writeconf1_prep~q\))) # (!\CU|WideOr7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr7~0_combout\,
	datab => \CU|present_state.writeconf0_prep~q\,
	datac => \CU|present_state.readmem_prep~q\,
	datad => \CU|present_state.writeconf1_prep~q\,
	combout => \CU|WideOr12~3_combout\);

-- Location: FF_X5_Y5_N29
\EU|CA_unpacker_inst|CA0|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux12~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA0|dout\(0));

-- Location: LCCOMB_X3_Y4_N18
\CU|CA_sel[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|CA_sel[0]~0_combout\ = (!\CU|present_state.CA_1~q\ & !\CU|present_state.writeconf_CA1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.CA_1~q\,
	datad => \CU|present_state.writeconf_CA1~q\,
	combout => \CU|CA_sel[0]~0_combout\);

-- Location: LCCOMB_X4_Y4_N8
\EU|writedata_converter|input_reg|dout[8]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata_converter|input_reg|dout[8]~2_combout\ = (!\CU|present_state.writeconf_CA2~q\ & !\CU|present_state.CA_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.writeconf_CA2~q\,
	datad => \CU|present_state.CA_2~q\,
	combout => \EU|writedata_converter|input_reg|dout[8]~2_combout\);

-- Location: LCCOMB_X5_Y4_N0
\CU|WideOr19~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr19~0_combout\ = (!\CU|present_state.CA_0~q\ & (\CU|CA_sel[0]~0_combout\ & (!\CU|present_state.writeconf_CA0~q\ & \EU|writedata_converter|input_reg|dout[8]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.CA_0~q\,
	datab => \CU|CA_sel[0]~0_combout\,
	datac => \CU|present_state.writeconf_CA0~q\,
	datad => \EU|writedata_converter|input_reg|dout[8]~2_combout\,
	combout => \CU|WideOr19~0_combout\);

-- Location: LCCOMB_X3_Y4_N4
\CU|WideOr19~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr19~1_combout\ = (!\CU|present_state.writeconf_CA0~q\ & !\CU|present_state.CA_0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.writeconf_CA0~q\,
	datad => \CU|present_state.CA_0~q\,
	combout => \CU|WideOr19~1_combout\);

-- Location: LCCOMB_X3_Y4_N0
\CU|WideOr19~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr19~2_combout\ = (!\CU|present_state.writeconf0~q\ & (\CU|CA_sel[0]~0_combout\ & (\CU|WideOr19~1_combout\ & \EU|writedata_converter|input_reg|dout[8]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.writeconf0~q\,
	datab => \CU|CA_sel[0]~0_combout\,
	datac => \CU|WideOr19~1_combout\,
	datad => \EU|writedata_converter|input_reg|dout[8]~2_combout\,
	combout => \CU|WideOr19~2_combout\);

-- Location: LCCOMB_X5_Y4_N18
\EU|writedata_converter|input_reg|dout[0]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata_converter|input_reg|dout[0]~3_combout\ = ((\CU|WideOr19~0_combout\ & ((!\CU|present_state.writeconf0~q\) # (!\CU|present_state.writeconf1~q\)))) # (!\EU|writedata_converter|input_reg|dout[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata_converter|input_reg|dout[8]~2_combout\,
	datab => \CU|present_state.writeconf1~q\,
	datac => \CU|present_state.writeconf0~q\,
	datad => \CU|WideOr19~0_combout\,
	combout => \EU|writedata_converter|input_reg|dout[0]~3_combout\);

-- Location: LCCOMB_X5_Y4_N6
\EU|writedata_converter|input_reg|dout[0]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata_converter|input_reg|dout[0]~5_combout\ = (\EU|writedata_converter|input_reg|dout[0]~3_combout\ & ((\CU|present_state.writeconf1~q\) # ((\CU|WideOr19~2_combout\) # (!\CU|WideOr19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.writeconf1~q\,
	datab => \CU|WideOr19~0_combout\,
	datac => \CU|WideOr19~2_combout\,
	datad => \EU|writedata_converter|input_reg|dout[0]~3_combout\,
	combout => \EU|writedata_converter|input_reg|dout[0]~5_combout\);

-- Location: FF_X5_Y6_N11
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[0]~22_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(0));

-- Location: LCCOMB_X4_Y6_N20
\EU|address_mux|Mux31~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux31~0_combout\ = (\CU|address_space_sel[0]~1_combout\ & (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(0) & ((\CU|address_space_sel[1]~0_combout\)))) # (!\CU|address_space_sel[0]~1_combout\ & 
-- (((\EU|addr_reg|dout\(0)) # (\CU|address_space_sel[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|address_space_sel[0]~1_combout\,
	datab => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(0),
	datac => \EU|addr_reg|dout\(0),
	datad => \CU|address_space_sel[1]~0_combout\,
	combout => \EU|address_mux|Mux31~0_combout\);

-- Location: FF_X4_Y6_N21
\EU|CA_unpacker_inst|CA2|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux31~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA2|dout\(0));

-- Location: LCCOMB_X5_Y4_N2
\EU|dq_mux|Mux15~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux15~0_combout\ = (\CU|CA_sel[0]~0_combout\ & (\EU|CA_unpacker_inst|CA2|dout\(0) & ((\CU|present_state.writeconf0~q\) # (!\CU|WideOr19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.writeconf0~q\,
	datab => \CU|CA_sel[0]~0_combout\,
	datac => \EU|CA_unpacker_inst|CA2|dout\(0),
	datad => \CU|WideOr19~0_combout\,
	combout => \EU|dq_mux|Mux15~0_combout\);

-- Location: LCCOMB_X1_Y6_N4
\CU|WideOr11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr11~combout\ = (\CU|present_state.writeburst~q\) # ((\CU|present_state.writeburst_prep~q\) # ((\CU|cmd_load~0_combout\) # (\CU|present_state.idle_burst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.writeburst~q\,
	datab => \CU|present_state.writeburst_prep~q\,
	datac => \CU|cmd_load~0_combout\,
	datad => \CU|present_state.idle_burst~q\,
	combout => \CU|WideOr11~combout\);

-- Location: FF_X5_Y4_N25
\EU|datain_reg|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_writedata[0]~input0\,
	sload => VCC,
	ena => \CU|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain_reg|dout\(0));

-- Location: LCCOMB_X5_Y4_N12
\EU|writedata_converter|input_reg|dout[0]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata_converter|input_reg|dout[0]~4_combout\ = (\EU|writedata_converter|input_reg|dout[0]~3_combout\ & (((\CU|present_state.writeconf1~q\) # (!\CU|WideOr19~0_combout\)))) # (!\EU|writedata_converter|input_reg|dout[0]~3_combout\ & 
-- (!\CU|CA_sel[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|CA_sel[0]~0_combout\,
	datab => \CU|WideOr19~0_combout\,
	datac => \CU|present_state.writeconf1~q\,
	datad => \EU|writedata_converter|input_reg|dout[0]~3_combout\,
	combout => \EU|writedata_converter|input_reg|dout[0]~4_combout\);

-- Location: LCCOMB_X5_Y4_N24
\EU|dq_mux|Mux15~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux15~1_combout\ = (\EU|writedata_converter|input_reg|dout[0]~5_combout\ & ((\EU|writedata_converter|input_reg|dout[0]~4_combout\ & (\EU|dq_mux|Mux15~0_combout\)) # (!\EU|writedata_converter|input_reg|dout[0]~4_combout\ & 
-- ((\EU|datain_reg|dout\(0)))))) # (!\EU|writedata_converter|input_reg|dout[0]~5_combout\ & (((!\EU|writedata_converter|input_reg|dout[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata_converter|input_reg|dout[0]~5_combout\,
	datab => \EU|dq_mux|Mux15~0_combout\,
	datac => \EU|datain_reg|dout\(0),
	datad => \EU|writedata_converter|input_reg|dout[0]~4_combout\,
	combout => \EU|dq_mux|Mux15~1_combout\);

-- Location: FF_X5_Y6_N17
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[3]~28_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(3));

-- Location: LCCOMB_X5_Y6_N8
\EU|address_mux|Mux28~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux28~0_combout\ = (\CU|address_space_sel[1]~0_combout\ & (\CU|address_space_sel[0]~1_combout\ & ((\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(3))))) # (!\CU|address_space_sel[1]~0_combout\ & 
-- (!\CU|address_space_sel[0]~1_combout\ & (\EU|addr_reg|dout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|address_space_sel[1]~0_combout\,
	datab => \CU|address_space_sel[0]~1_combout\,
	datac => \EU|addr_reg|dout\(3),
	datad => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(3),
	combout => \EU|address_mux|Mux28~0_combout\);

-- Location: FF_X5_Y6_N9
\EU|CA_unpacker_inst|CA1|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux28~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA1|dout\(0));

-- Location: LCCOMB_X5_Y4_N14
\EU|dq_mux|Mux15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux15~combout\ = (\EU|dq_mux|Mux15~1_combout\ & ((\EU|CA_unpacker_inst|CA0|dout\(0)) # ((\EU|writedata_converter|input_reg|dout[0]~3_combout\)))) # (!\EU|dq_mux|Mux15~1_combout\ & (((\EU|CA_unpacker_inst|CA1|dout\(0) & 
-- !\EU|writedata_converter|input_reg|dout[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|CA_unpacker_inst|CA0|dout\(0),
	datab => \EU|dq_mux|Mux15~1_combout\,
	datac => \EU|CA_unpacker_inst|CA1|dout\(0),
	datad => \EU|writedata_converter|input_reg|dout[0]~3_combout\,
	combout => \EU|dq_mux|Mux15~combout\);

-- Location: LCCOMB_X3_Y4_N2
\CU|WideOr14~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr14~0_combout\ = (\CU|present_state.writeconf1~q\) # (!\CU|present_state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.reset~q\,
	datad => \CU|present_state.writeconf1~q\,
	combout => \CU|WideOr14~0_combout\);

-- Location: LCCOMB_X2_Y4_N28
\CU|WideOr14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr14~combout\ = (\CU|WideOr14~0_combout\) # (((\CU|next_state.write_end~0_combout\) # (!\CU|WideOr19~2_combout\)) # (!\CU|next_state~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr14~0_combout\,
	datab => \CU|next_state~0_combout\,
	datac => \CU|WideOr19~2_combout\,
	datad => \CU|next_state.write_end~0_combout\,
	combout => \CU|WideOr14~combout\);

-- Location: FF_X5_Y4_N15
\EU|writedata_converter|input_reg|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dq_mux|Mux15~combout\,
	ena => \CU|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata_converter|input_reg|dout\(0));

-- Location: LCCOMB_X5_Y4_N4
\CU|WideOr18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr18~combout\ = (\CU|present_state.writeconf1~q\) # (!\CU|WideOr19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.writeconf1~q\,
	datad => \CU|WideOr19~0_combout\,
	combout => \CU|WideOr18~combout\);

-- Location: FF_X5_Y5_N1
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[11]~44_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(11));

-- Location: LCCOMB_X5_Y5_N26
\EU|address_mux|Mux20~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux20~0_combout\ = (\CU|address_space_sel[0]~1_combout\ & (((\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(11))) # (!\CU|address_space_sel[1]~0_combout\))) # (!\CU|address_space_sel[0]~1_combout\ & 
-- ((\CU|address_space_sel[1]~0_combout\) # ((\EU|addr_reg|dout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|address_space_sel[0]~1_combout\,
	datab => \CU|address_space_sel[1]~0_combout\,
	datac => \EU|addr_reg|dout\(11),
	datad => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(11),
	combout => \EU|address_mux|Mux20~0_combout\);

-- Location: FF_X5_Y5_N27
\EU|CA_unpacker_inst|CA1|dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux20~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA1|dout\(8));

-- Location: LCCOMB_X10_Y5_N0
\avs_writedata[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(8),
	o => \avs_writedata[8]~input0\);

-- Location: FF_X6_Y5_N1
\EU|datain_reg|dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_writedata[8]~input0\,
	sload => VCC,
	ena => \CU|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain_reg|dout\(8));

-- Location: LCCOMB_X6_Y5_N0
\EU|dq_mux|Mux7~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux7~0_combout\ = (\CU|WideOr18~combout\ & (\EU|CA_unpacker_inst|CA1|dout\(8))) # (!\CU|WideOr18~combout\ & (((\EU|datain_reg|dout\(8)) # (!\CU|WideOr19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|CA_unpacker_inst|CA1|dout\(8),
	datab => \CU|WideOr19~2_combout\,
	datac => \EU|datain_reg|dout\(8),
	datad => \CU|WideOr18~combout\,
	combout => \EU|dq_mux|Mux7~0_combout\);

-- Location: LCCOMB_X6_Y4_N28
\EU|dq_mux|Mux7~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux7~1_combout\ = (\EU|dq_mux|Mux7~0_combout\ & (((\EU|writedata_converter|input_reg|dout[8]~2_combout\ & !\CU|CA_sel[0]~0_combout\)) # (!\CU|WideOr18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata_converter|input_reg|dout[8]~2_combout\,
	datab => \CU|WideOr18~combout\,
	datac => \CU|CA_sel[0]~0_combout\,
	datad => \EU|dq_mux|Mux7~0_combout\,
	combout => \EU|dq_mux|Mux7~1_combout\);

-- Location: FF_X6_Y4_N29
\EU|writedata_converter|input_reg|dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dq_mux|Mux7~1_combout\,
	ena => \CU|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata_converter|input_reg|dout\(8));

-- Location: LCCOMB_X6_Y4_N22
\EU|writedata_converter|outmux|dout[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata_converter|outmux|dout[0]~0_combout\ = (\clk~input_o\ & ((\EU|writedata_converter|input_reg|dout\(8)))) # (!\clk~input_o\ & (\EU|writedata_converter|input_reg|dout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata_converter|input_reg|dout\(0),
	datac => \clk~input_o\,
	datad => \EU|writedata_converter|input_reg|dout\(8),
	combout => \EU|writedata_converter|outmux|dout[0]~0_combout\);

-- Location: LCCOMB_X1_Y6_N24
\CU|WideOr20~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr20~0_combout\ = (\CU|present_state.write_end~q\) # ((\CU|present_state.writeburst_last~q\) # ((\CU|present_state.writeconf0~q\) # (\CU|present_state.writeburst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.write_end~q\,
	datab => \CU|present_state.writeburst_last~q\,
	datac => \CU|present_state.writeconf0~q\,
	datad => \CU|present_state.writeburst~q\,
	combout => \CU|WideOr20~0_combout\);

-- Location: LCCOMB_X4_Y4_N24
\CU|WideOr20~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr20~1_combout\ = (\CU|present_state.CA_end~q\) # ((\CU|present_state.writeconf1~q\) # ((\CU|present_state.writeconf1_end~q\) # (\CU|present_state.writeconf0_end~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.CA_end~q\,
	datab => \CU|present_state.writeconf1~q\,
	datac => \CU|present_state.writeconf1_end~q\,
	datad => \CU|present_state.writeconf0_end~q\,
	combout => \CU|WideOr20~1_combout\);

-- Location: LCCOMB_X4_Y4_N30
\CU|WideOr20~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr20~2_combout\ = ((\CU|WideOr20~0_combout\) # ((\CU|WideOr20~1_combout\) # (!\CU|CA_sel[0]~0_combout\))) # (!\EU|writedata_converter|input_reg|dout[8]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata_converter|input_reg|dout[8]~2_combout\,
	datab => \CU|WideOr20~0_combout\,
	datac => \CU|CA_sel[0]~0_combout\,
	datad => \CU|WideOr20~1_combout\,
	combout => \CU|WideOr20~2_combout\);

-- Location: LCCOMB_X8_Y5_N0
\EU|addr_reg|dout[20]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addr_reg|dout[20]~feeder_combout\ = \avs_address[20]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_address[20]~input0\,
	combout => \EU|addr_reg|dout[20]~feeder_combout\);

-- Location: FF_X8_Y5_N1
\EU|addr_reg|dout[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addr_reg|dout[20]~feeder_combout\,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(20));

-- Location: LCCOMB_X5_Y5_N18
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[20]~62\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[20]~62_combout\ = (\EU|addr_reg|dout\(20) & (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[19]~61\ $ (GND))) # (!\EU|addr_reg|dout\(20) & 
-- (!\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[19]~61\ & VCC))
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[20]~63\ = CARRY((\EU|addr_reg|dout\(20) & !\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[19]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \EU|addr_reg|dout\(20),
	datad => VCC,
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[19]~61\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[20]~62_combout\,
	cout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[20]~63\);

-- Location: FF_X5_Y5_N19
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[20]~62_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(20));

-- Location: LCCOMB_X5_Y5_N22
\EU|address_mux|Mux11~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux11~0_combout\ = (\CU|address_space_sel[0]~1_combout\ & (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(20) & (\CU|address_space_sel[1]~0_combout\))) # (!\CU|address_space_sel[0]~1_combout\ & 
-- (((!\CU|address_space_sel[1]~0_combout\ & \EU|addr_reg|dout\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|address_space_sel[0]~1_combout\,
	datab => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(20),
	datac => \CU|address_space_sel[1]~0_combout\,
	datad => \EU|addr_reg|dout\(20),
	combout => \EU|address_mux|Mux11~0_combout\);

-- Location: FF_X5_Y5_N23
\EU|CA_unpacker_inst|CA0|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux11~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA0|dout\(1));

-- Location: FF_X5_Y6_N19
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[4]~30_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(4));

-- Location: LCCOMB_X4_Y6_N14
\EU|address_mux|Mux27~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux27~0_combout\ = (\CU|address_space_sel[0]~1_combout\ & (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(4) & ((\CU|address_space_sel[1]~0_combout\)))) # (!\CU|address_space_sel[0]~1_combout\ & (((\EU|addr_reg|dout\(4) 
-- & !\CU|address_space_sel[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|address_space_sel[0]~1_combout\,
	datab => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(4),
	datac => \EU|addr_reg|dout\(4),
	datad => \CU|address_space_sel[1]~0_combout\,
	combout => \EU|address_mux|Mux27~0_combout\);

-- Location: FF_X4_Y6_N15
\EU|CA_unpacker_inst|CA1|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux27~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA1|dout\(1));

-- Location: FF_X5_Y6_N13
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[1]~24_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(1));

-- Location: LCCOMB_X5_Y6_N2
\EU|address_mux|Mux30~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux30~0_combout\ = (\CU|address_space_sel[1]~0_combout\ & (\CU|address_space_sel[0]~1_combout\ & ((\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(1))))) # (!\CU|address_space_sel[1]~0_combout\ & 
-- (!\CU|address_space_sel[0]~1_combout\ & (\EU|addr_reg|dout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|address_space_sel[1]~0_combout\,
	datab => \CU|address_space_sel[0]~1_combout\,
	datac => \EU|addr_reg|dout\(1),
	datad => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(1),
	combout => \EU|address_mux|Mux30~0_combout\);

-- Location: FF_X5_Y6_N3
\EU|CA_unpacker_inst|CA2|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux30~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA2|dout\(1));

-- Location: LCCOMB_X5_Y4_N8
\EU|dq_mux|Mux14~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux14~0_combout\ = (\CU|CA_sel[0]~0_combout\ & ((\EU|CA_unpacker_inst|CA2|dout\(1)) # ((\CU|WideOr19~0_combout\ & !\CU|present_state.writeconf0~q\)))) # (!\CU|CA_sel[0]~0_combout\ & (\CU|WideOr19~0_combout\ & 
-- (!\CU|present_state.writeconf0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|CA_sel[0]~0_combout\,
	datab => \CU|WideOr19~0_combout\,
	datac => \CU|present_state.writeconf0~q\,
	datad => \EU|CA_unpacker_inst|CA2|dout\(1),
	combout => \EU|dq_mux|Mux14~0_combout\);

-- Location: LCCOMB_X7_Y5_N12
\avs_writedata[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(1),
	o => \avs_writedata[1]~input0\);

-- Location: FF_X5_Y4_N11
\EU|datain_reg|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_writedata[1]~input0\,
	sload => VCC,
	ena => \CU|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain_reg|dout\(1));

-- Location: LCCOMB_X5_Y4_N10
\EU|dq_mux|Mux14~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux14~1_combout\ = (\EU|writedata_converter|input_reg|dout[0]~4_combout\ & (\EU|dq_mux|Mux14~0_combout\ & ((\EU|writedata_converter|input_reg|dout[0]~5_combout\)))) # (!\EU|writedata_converter|input_reg|dout[0]~4_combout\ & 
-- (((\EU|datain_reg|dout\(1)) # (!\EU|writedata_converter|input_reg|dout[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata_converter|input_reg|dout[0]~4_combout\,
	datab => \EU|dq_mux|Mux14~0_combout\,
	datac => \EU|datain_reg|dout\(1),
	datad => \EU|writedata_converter|input_reg|dout[0]~5_combout\,
	combout => \EU|dq_mux|Mux14~1_combout\);

-- Location: LCCOMB_X4_Y4_N26
\EU|dq_mux|Mux14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux14~combout\ = (\EU|dq_mux|Mux14~1_combout\ & ((\EU|CA_unpacker_inst|CA0|dout\(1)) # ((\EU|writedata_converter|input_reg|dout[0]~3_combout\)))) # (!\EU|dq_mux|Mux14~1_combout\ & (((\EU|CA_unpacker_inst|CA1|dout\(1) & 
-- !\EU|writedata_converter|input_reg|dout[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|CA_unpacker_inst|CA0|dout\(1),
	datab => \EU|CA_unpacker_inst|CA1|dout\(1),
	datac => \EU|dq_mux|Mux14~1_combout\,
	datad => \EU|writedata_converter|input_reg|dout[0]~3_combout\,
	combout => \EU|dq_mux|Mux14~combout\);

-- Location: FF_X4_Y4_N27
\EU|writedata_converter|input_reg|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dq_mux|Mux14~combout\,
	ena => \CU|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata_converter|input_reg|dout\(1));

-- Location: FF_X5_Y5_N3
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[12]~46_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(12));

-- Location: LCCOMB_X6_Y5_N18
\EU|address_mux|Mux19~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux19~0_combout\ = (\CU|address_space_sel[1]~0_combout\ & (((\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(12) & \CU|address_space_sel[0]~1_combout\)))) # (!\CU|address_space_sel[1]~0_combout\ & (\EU|addr_reg|dout\(12) 
-- & ((!\CU|address_space_sel[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|addr_reg|dout\(12),
	datab => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(12),
	datac => \CU|address_space_sel[1]~0_combout\,
	datad => \CU|address_space_sel[0]~1_combout\,
	combout => \EU|address_mux|Mux19~0_combout\);

-- Location: FF_X6_Y5_N19
\EU|CA_unpacker_inst|CA1|dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux19~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA1|dout\(9));

-- Location: LCCOMB_X10_Y5_N2
\avs_writedata[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(9),
	o => \avs_writedata[9]~input0\);

-- Location: FF_X6_Y5_N5
\EU|datain_reg|dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_writedata[9]~input0\,
	sload => VCC,
	ena => \CU|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain_reg|dout\(9));

-- Location: LCCOMB_X6_Y5_N4
\EU|dq_mux|Mux6~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux6~0_combout\ = (\CU|WideOr18~combout\ & (\EU|CA_unpacker_inst|CA1|dout\(9))) # (!\CU|WideOr18~combout\ & (((\EU|datain_reg|dout\(9)) # (!\CU|WideOr19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr18~combout\,
	datab => \EU|CA_unpacker_inst|CA1|dout\(9),
	datac => \EU|datain_reg|dout\(9),
	datad => \CU|WideOr19~2_combout\,
	combout => \EU|dq_mux|Mux6~0_combout\);

-- Location: LCCOMB_X4_Y4_N20
\EU|dq_mux|Mux6~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux6~1_combout\ = (\EU|dq_mux|Mux6~0_combout\ & (((\EU|writedata_converter|input_reg|dout[8]~2_combout\ & !\CU|CA_sel[0]~0_combout\)) # (!\CU|WideOr18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata_converter|input_reg|dout[8]~2_combout\,
	datab => \CU|CA_sel[0]~0_combout\,
	datac => \EU|dq_mux|Mux6~0_combout\,
	datad => \CU|WideOr18~combout\,
	combout => \EU|dq_mux|Mux6~1_combout\);

-- Location: FF_X4_Y4_N21
\EU|writedata_converter|input_reg|dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dq_mux|Mux6~1_combout\,
	ena => \CU|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata_converter|input_reg|dout\(9));

-- Location: LCCOMB_X4_Y4_N12
\EU|writedata_converter|outmux|dout[1]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata_converter|outmux|dout[1]~1_combout\ = (\clk~input_o\ & ((\EU|writedata_converter|input_reg|dout\(9)))) # (!\clk~input_o\ & (\EU|writedata_converter|input_reg|dout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata_converter|input_reg|dout\(1),
	datac => \clk~input_o\,
	datad => \EU|writedata_converter|input_reg|dout\(9),
	combout => \EU|writedata_converter|outmux|dout[1]~1_combout\);

-- Location: FF_X5_Y6_N15
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[2]~26_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(2));

-- Location: LCCOMB_X4_Y6_N12
\EU|address_mux|Mux29~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux29~0_combout\ = (\CU|address_space_sel[0]~1_combout\ & (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(2) & ((\CU|address_space_sel[1]~0_combout\)))) # (!\CU|address_space_sel[0]~1_combout\ & (((\EU|addr_reg|dout\(2) 
-- & !\CU|address_space_sel[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|address_space_sel[0]~1_combout\,
	datab => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(2),
	datac => \EU|addr_reg|dout\(2),
	datad => \CU|address_space_sel[1]~0_combout\,
	combout => \EU|address_mux|Mux29~0_combout\);

-- Location: FF_X4_Y6_N13
\EU|CA_unpacker_inst|CA2|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux29~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA2|dout\(2));

-- Location: LCCOMB_X5_Y4_N20
\EU|dq_mux|Mux13~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux13~0_combout\ = (\CU|CA_sel[0]~0_combout\ & (\EU|CA_unpacker_inst|CA2|dout\(2) & ((\CU|present_state.writeconf0~q\) # (!\CU|WideOr19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|CA_sel[0]~0_combout\,
	datab => \EU|CA_unpacker_inst|CA2|dout\(2),
	datac => \CU|present_state.writeconf0~q\,
	datad => \CU|WideOr19~0_combout\,
	combout => \EU|dq_mux|Mux13~0_combout\);

-- Location: LCCOMB_X7_Y5_N22
\avs_writedata[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(2),
	o => \avs_writedata[2]~input0\);

-- Location: FF_X5_Y4_N31
\EU|datain_reg|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_writedata[2]~input0\,
	sload => VCC,
	ena => \CU|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain_reg|dout\(2));

-- Location: LCCOMB_X5_Y4_N30
\EU|dq_mux|Mux13~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux13~1_combout\ = (\EU|writedata_converter|input_reg|dout[0]~5_combout\ & ((\EU|writedata_converter|input_reg|dout[0]~4_combout\ & (\EU|dq_mux|Mux13~0_combout\)) # (!\EU|writedata_converter|input_reg|dout[0]~4_combout\ & 
-- ((\EU|datain_reg|dout\(2)))))) # (!\EU|writedata_converter|input_reg|dout[0]~5_combout\ & (((!\EU|writedata_converter|input_reg|dout[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata_converter|input_reg|dout[0]~5_combout\,
	datab => \EU|dq_mux|Mux13~0_combout\,
	datac => \EU|datain_reg|dout\(2),
	datad => \EU|writedata_converter|input_reg|dout[0]~4_combout\,
	combout => \EU|dq_mux|Mux13~1_combout\);

-- Location: FF_X8_Y5_N11
\EU|addr_reg|dout[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_address[21]~input0\,
	sload => VCC,
	ena => \CU|cmd_load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addr_reg|dout\(21));

-- Location: LCCOMB_X5_Y5_N20
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[21]~64\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[21]~64_combout\ = \EU|addr_reg|dout\(21) $ (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[20]~63\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \EU|addr_reg|dout\(21),
	cin => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[20]~63\,
	combout => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[21]~64_combout\);

-- Location: FF_X5_Y5_N21
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[21]~64_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(21));

-- Location: LCCOMB_X6_Y5_N20
\EU|address_mux|Mux10~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux10~0_combout\ = (\CU|address_space_sel[0]~1_combout\ & (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(21) & ((\CU|address_space_sel[1]~0_combout\)))) # (!\CU|address_space_sel[0]~1_combout\ & 
-- (((\EU|addr_reg|dout\(21) & !\CU|address_space_sel[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|address_space_sel[0]~1_combout\,
	datab => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(21),
	datac => \EU|addr_reg|dout\(21),
	datad => \CU|address_space_sel[1]~0_combout\,
	combout => \EU|address_mux|Mux10~0_combout\);

-- Location: FF_X6_Y5_N21
\EU|CA_unpacker_inst|CA0|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux10~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA0|dout\(2));

-- Location: FF_X5_Y6_N21
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[5]~32_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(5));

-- Location: LCCOMB_X5_Y6_N0
\EU|address_mux|Mux26~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux26~0_combout\ = (\CU|address_space_sel[1]~0_combout\ & (((\CU|address_space_sel[0]~1_combout\ & \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(5))))) # (!\CU|address_space_sel[1]~0_combout\ & (\EU|addr_reg|dout\(5) & 
-- (!\CU|address_space_sel[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|address_space_sel[1]~0_combout\,
	datab => \EU|addr_reg|dout\(5),
	datac => \CU|address_space_sel[0]~1_combout\,
	datad => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(5),
	combout => \EU|address_mux|Mux26~0_combout\);

-- Location: FF_X5_Y6_N1
\EU|CA_unpacker_inst|CA1|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux26~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA1|dout\(2));

-- Location: LCCOMB_X5_Y4_N16
\EU|dq_mux|Mux13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux13~combout\ = (\EU|dq_mux|Mux13~1_combout\ & ((\EU|writedata_converter|input_reg|dout[0]~3_combout\) # ((\EU|CA_unpacker_inst|CA0|dout\(2))))) # (!\EU|dq_mux|Mux13~1_combout\ & (!\EU|writedata_converter|input_reg|dout[0]~3_combout\ & 
-- ((\EU|CA_unpacker_inst|CA1|dout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|dq_mux|Mux13~1_combout\,
	datab => \EU|writedata_converter|input_reg|dout[0]~3_combout\,
	datac => \EU|CA_unpacker_inst|CA0|dout\(2),
	datad => \EU|CA_unpacker_inst|CA1|dout\(2),
	combout => \EU|dq_mux|Mux13~combout\);

-- Location: FF_X5_Y4_N17
\EU|writedata_converter|input_reg|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dq_mux|Mux13~combout\,
	ena => \CU|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata_converter|input_reg|dout\(2));

-- Location: FF_X5_Y5_N5
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[13]~48_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(13));

-- Location: LCCOMB_X5_Y5_N24
\EU|address_mux|Mux18~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux18~0_combout\ = (\CU|address_space_sel[1]~0_combout\ & (((\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(13) & \CU|address_space_sel[0]~1_combout\)))) # (!\CU|address_space_sel[1]~0_combout\ & (\EU|addr_reg|dout\(13) 
-- & ((!\CU|address_space_sel[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|addr_reg|dout\(13),
	datab => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(13),
	datac => \CU|address_space_sel[1]~0_combout\,
	datad => \CU|address_space_sel[0]~1_combout\,
	combout => \EU|address_mux|Mux18~0_combout\);

-- Location: FF_X5_Y5_N25
\EU|CA_unpacker_inst|CA1|dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux18~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA1|dout\(10));

-- Location: LCCOMB_X10_Y5_N12
\avs_writedata[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(10),
	o => \avs_writedata[10]~input0\);

-- Location: FF_X6_Y5_N31
\EU|datain_reg|dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_writedata[10]~input0\,
	sload => VCC,
	ena => \CU|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain_reg|dout\(10));

-- Location: LCCOMB_X6_Y5_N30
\EU|dq_mux|Mux5~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux5~0_combout\ = (\CU|WideOr18~combout\ & (\EU|CA_unpacker_inst|CA1|dout\(10))) # (!\CU|WideOr18~combout\ & (((\EU|datain_reg|dout\(10)) # (!\CU|WideOr19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr18~combout\,
	datab => \EU|CA_unpacker_inst|CA1|dout\(10),
	datac => \EU|datain_reg|dout\(10),
	datad => \CU|WideOr19~2_combout\,
	combout => \EU|dq_mux|Mux5~0_combout\);

-- Location: LCCOMB_X6_Y4_N4
\EU|dq_mux|Mux5~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux5~1_combout\ = (\EU|dq_mux|Mux5~0_combout\ & (((\EU|writedata_converter|input_reg|dout[8]~2_combout\ & !\CU|CA_sel[0]~0_combout\)) # (!\CU|WideOr18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata_converter|input_reg|dout[8]~2_combout\,
	datab => \CU|CA_sel[0]~0_combout\,
	datac => \CU|WideOr18~combout\,
	datad => \EU|dq_mux|Mux5~0_combout\,
	combout => \EU|dq_mux|Mux5~1_combout\);

-- Location: FF_X6_Y4_N5
\EU|writedata_converter|input_reg|dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dq_mux|Mux5~1_combout\,
	ena => \CU|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata_converter|input_reg|dout\(10));

-- Location: LCCOMB_X6_Y4_N26
\EU|writedata_converter|outmux|dout[2]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata_converter|outmux|dout[2]~2_combout\ = (\clk~input_o\ & ((\EU|writedata_converter|input_reg|dout\(10)))) # (!\clk~input_o\ & (\EU|writedata_converter|input_reg|dout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata_converter|input_reg|dout\(2),
	datab => \EU|writedata_converter|input_reg|dout\(10),
	datac => \clk~input_o\,
	combout => \EU|writedata_converter|outmux|dout[2]~2_combout\);

-- Location: LCCOMB_X10_Y5_N10
\avs_writedata[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(11),
	o => \avs_writedata[11]~input0\);

-- Location: FF_X6_Y5_N15
\EU|datain_reg|dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_writedata[11]~input0\,
	sload => VCC,
	ena => \CU|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain_reg|dout\(11));

-- Location: FF_X5_Y5_N7
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[14]~50_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(14));

-- Location: LCCOMB_X5_Y5_N30
\EU|address_mux|Mux17~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux17~0_combout\ = (\CU|address_space_sel[0]~1_combout\ & (((\CU|address_space_sel[1]~0_combout\ & \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(14))))) # (!\CU|address_space_sel[0]~1_combout\ & (\EU|addr_reg|dout\(14) 
-- & (!\CU|address_space_sel[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|address_space_sel[0]~1_combout\,
	datab => \EU|addr_reg|dout\(14),
	datac => \CU|address_space_sel[1]~0_combout\,
	datad => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(14),
	combout => \EU|address_mux|Mux17~0_combout\);

-- Location: FF_X5_Y5_N31
\EU|CA_unpacker_inst|CA1|dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux17~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA1|dout\(11));

-- Location: LCCOMB_X6_Y5_N14
\EU|dq_mux|Mux4~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux4~0_combout\ = (\CU|WideOr18~combout\ & (((\EU|CA_unpacker_inst|CA1|dout\(11))))) # (!\CU|WideOr18~combout\ & (((\EU|datain_reg|dout\(11))) # (!\CU|WideOr19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr18~combout\,
	datab => \CU|WideOr19~2_combout\,
	datac => \EU|datain_reg|dout\(11),
	datad => \EU|CA_unpacker_inst|CA1|dout\(11),
	combout => \EU|dq_mux|Mux4~0_combout\);

-- Location: LCCOMB_X6_Y4_N0
\EU|dq_mux|Mux4~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux4~1_combout\ = (\EU|dq_mux|Mux4~0_combout\ & (((!\CU|CA_sel[0]~0_combout\ & \EU|writedata_converter|input_reg|dout[8]~2_combout\)) # (!\CU|WideOr18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|dq_mux|Mux4~0_combout\,
	datab => \CU|CA_sel[0]~0_combout\,
	datac => \CU|WideOr18~combout\,
	datad => \EU|writedata_converter|input_reg|dout[8]~2_combout\,
	combout => \EU|dq_mux|Mux4~1_combout\);

-- Location: FF_X6_Y4_N1
\EU|writedata_converter|input_reg|dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dq_mux|Mux4~1_combout\,
	ena => \CU|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata_converter|input_reg|dout\(11));

-- Location: FF_X5_Y6_N23
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[6]~34_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(6));

-- Location: LCCOMB_X5_Y6_N6
\EU|address_mux|Mux25~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux25~0_combout\ = (\CU|address_space_sel[1]~0_combout\ & (\CU|address_space_sel[0]~1_combout\ & (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(6)))) # (!\CU|address_space_sel[1]~0_combout\ & 
-- (!\CU|address_space_sel[0]~1_combout\ & ((\EU|addr_reg|dout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|address_space_sel[1]~0_combout\,
	datab => \CU|address_space_sel[0]~1_combout\,
	datac => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(6),
	datad => \EU|addr_reg|dout\(6),
	combout => \EU|address_mux|Mux25~0_combout\);

-- Location: FF_X5_Y6_N7
\EU|CA_unpacker_inst|CA1|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux25~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA1|dout\(3));

-- Location: LCCOMB_X9_Y5_N12
\avs_writedata[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(3),
	o => \avs_writedata[3]~input0\);

-- Location: FF_X6_Y5_N29
\EU|datain_reg|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_writedata[3]~input0\,
	sload => VCC,
	ena => \CU|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain_reg|dout\(3));

-- Location: LCCOMB_X6_Y5_N28
\EU|dq_mux|Mux12~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux12~0_combout\ = (\CU|WideOr18~combout\ & (\EU|CA_unpacker_inst|CA1|dout\(3))) # (!\CU|WideOr18~combout\ & (((\EU|datain_reg|dout\(3)) # (!\CU|WideOr19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|CA_unpacker_inst|CA1|dout\(3),
	datab => \CU|WideOr19~2_combout\,
	datac => \EU|datain_reg|dout\(3),
	datad => \CU|WideOr18~combout\,
	combout => \EU|dq_mux|Mux12~0_combout\);

-- Location: LCCOMB_X6_Y4_N18
\EU|dq_mux|Mux12~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux12~1_combout\ = (\EU|dq_mux|Mux12~0_combout\ & (((\EU|writedata_converter|input_reg|dout[8]~2_combout\ & !\CU|CA_sel[0]~0_combout\)) # (!\CU|WideOr18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata_converter|input_reg|dout[8]~2_combout\,
	datab => \CU|WideOr18~combout\,
	datac => \CU|CA_sel[0]~0_combout\,
	datad => \EU|dq_mux|Mux12~0_combout\,
	combout => \EU|dq_mux|Mux12~1_combout\);

-- Location: FF_X6_Y4_N19
\EU|writedata_converter|input_reg|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dq_mux|Mux12~1_combout\,
	ena => \CU|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata_converter|input_reg|dout\(3));

-- Location: LCCOMB_X6_Y4_N24
\EU|writedata_converter|outmux|dout[3]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata_converter|outmux|dout[3]~3_combout\ = (\clk~input_o\ & (\EU|writedata_converter|input_reg|dout\(11))) # (!\clk~input_o\ & ((\EU|writedata_converter|input_reg|dout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|writedata_converter|input_reg|dout\(11),
	datac => \clk~input_o\,
	datad => \EU|writedata_converter|input_reg|dout\(3),
	combout => \EU|writedata_converter|outmux|dout[3]~3_combout\);

-- Location: FF_X5_Y5_N9
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[15]~52_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(15));

-- Location: LCCOMB_X6_Y5_N2
\EU|address_mux|Mux16~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux16~0_combout\ = (\CU|address_space_sel[0]~1_combout\ & (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(15) & ((\CU|address_space_sel[1]~0_combout\)))) # (!\CU|address_space_sel[0]~1_combout\ & 
-- (((\EU|addr_reg|dout\(15) & !\CU|address_space_sel[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|address_space_sel[0]~1_combout\,
	datab => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(15),
	datac => \EU|addr_reg|dout\(15),
	datad => \CU|address_space_sel[1]~0_combout\,
	combout => \EU|address_mux|Mux16~0_combout\);

-- Location: FF_X6_Y5_N3
\EU|CA_unpacker_inst|CA1|dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux16~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA1|dout\(12));

-- Location: LCCOMB_X10_Y5_N8
\avs_writedata[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(12),
	o => \avs_writedata[12]~input0\);

-- Location: FF_X6_Y5_N25
\EU|datain_reg|dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_writedata[12]~input0\,
	sload => VCC,
	ena => \CU|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain_reg|dout\(12));

-- Location: LCCOMB_X6_Y5_N24
\EU|dq_mux|Mux3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux3~0_combout\ = (\CU|WideOr18~combout\ & (\EU|CA_unpacker_inst|CA1|dout\(12))) # (!\CU|WideOr18~combout\ & (((\EU|datain_reg|dout\(12) & \CU|WideOr19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr18~combout\,
	datab => \EU|CA_unpacker_inst|CA1|dout\(12),
	datac => \EU|datain_reg|dout\(12),
	datad => \CU|WideOr19~2_combout\,
	combout => \EU|dq_mux|Mux3~0_combout\);

-- Location: LCCOMB_X6_Y4_N14
\EU|dq_mux|Mux3~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux3~1_combout\ = (\EU|dq_mux|Mux3~0_combout\ & (((\EU|writedata_converter|input_reg|dout[8]~2_combout\ & !\CU|CA_sel[0]~0_combout\)) # (!\CU|WideOr18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata_converter|input_reg|dout[8]~2_combout\,
	datab => \CU|WideOr18~combout\,
	datac => \CU|CA_sel[0]~0_combout\,
	datad => \EU|dq_mux|Mux3~0_combout\,
	combout => \EU|dq_mux|Mux3~1_combout\);

-- Location: FF_X6_Y4_N15
\EU|writedata_converter|input_reg|dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dq_mux|Mux3~1_combout\,
	ena => \CU|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata_converter|input_reg|dout\(12));

-- Location: LCCOMB_X6_Y6_N28
\avs_writedata[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(4),
	o => \avs_writedata[4]~input0\);

-- Location: FF_X4_Y6_N11
\EU|datain_reg|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_writedata[4]~input0\,
	sload => VCC,
	ena => \CU|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain_reg|dout\(4));

-- Location: FF_X5_Y6_N25
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[7]~36_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(7));

-- Location: LCCOMB_X5_Y6_N4
\EU|address_mux|Mux24~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux24~0_combout\ = (\CU|address_space_sel[1]~0_combout\ & (((\CU|address_space_sel[0]~1_combout\ & \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(7))))) # (!\CU|address_space_sel[1]~0_combout\ & (\EU|addr_reg|dout\(7) & 
-- (!\CU|address_space_sel[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|address_space_sel[1]~0_combout\,
	datab => \EU|addr_reg|dout\(7),
	datac => \CU|address_space_sel[0]~1_combout\,
	datad => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(7),
	combout => \EU|address_mux|Mux24~0_combout\);

-- Location: FF_X5_Y6_N5
\EU|CA_unpacker_inst|CA1|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux24~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA1|dout\(4));

-- Location: LCCOMB_X4_Y6_N10
\EU|dq_mux|Mux11~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux11~0_combout\ = (\CU|WideOr18~combout\ & (((\EU|CA_unpacker_inst|CA1|dout\(4))))) # (!\CU|WideOr18~combout\ & (((\EU|datain_reg|dout\(4))) # (!\CU|WideOr19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr19~2_combout\,
	datab => \CU|WideOr18~combout\,
	datac => \EU|datain_reg|dout\(4),
	datad => \EU|CA_unpacker_inst|CA1|dout\(4),
	combout => \EU|dq_mux|Mux11~0_combout\);

-- Location: LCCOMB_X4_Y4_N28
\EU|dq_mux|Mux11~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux11~1_combout\ = (\EU|dq_mux|Mux11~0_combout\ & (((\EU|writedata_converter|input_reg|dout[8]~2_combout\ & !\CU|CA_sel[0]~0_combout\)) # (!\CU|WideOr18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata_converter|input_reg|dout[8]~2_combout\,
	datab => \CU|CA_sel[0]~0_combout\,
	datac => \EU|dq_mux|Mux11~0_combout\,
	datad => \CU|WideOr18~combout\,
	combout => \EU|dq_mux|Mux11~1_combout\);

-- Location: FF_X4_Y4_N29
\EU|writedata_converter|input_reg|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dq_mux|Mux11~1_combout\,
	ena => \CU|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata_converter|input_reg|dout\(4));

-- Location: LCCOMB_X6_Y4_N12
\EU|writedata_converter|outmux|dout[4]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata_converter|outmux|dout[4]~4_combout\ = (\clk~input_o\ & (\EU|writedata_converter|input_reg|dout\(12))) # (!\clk~input_o\ & ((\EU|writedata_converter|input_reg|dout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|writedata_converter|input_reg|dout\(12),
	datac => \clk~input_o\,
	datad => \EU|writedata_converter|input_reg|dout\(4),
	combout => \EU|writedata_converter|outmux|dout[4]~4_combout\);

-- Location: FF_X5_Y6_N27
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[8]~38_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(8));

-- Location: LCCOMB_X4_Y5_N14
\EU|address_mux|Mux23~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux23~0_combout\ = (\CU|address_space_sel[1]~0_combout\ & (((\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(8) & \CU|address_space_sel[0]~1_combout\)))) # (!\CU|address_space_sel[1]~0_combout\ & (\EU|addr_reg|dout\(8) & 
-- ((!\CU|address_space_sel[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|addr_reg|dout\(8),
	datab => \CU|address_space_sel[1]~0_combout\,
	datac => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(8),
	datad => \CU|address_space_sel[0]~1_combout\,
	combout => \EU|address_mux|Mux23~0_combout\);

-- Location: FF_X4_Y5_N15
\EU|CA_unpacker_inst|CA1|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux23~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA1|dout\(5));

-- Location: LCCOMB_X9_Y5_N30
\avs_writedata[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(5),
	o => \avs_writedata[5]~input0\);

-- Location: FF_X6_Y5_N27
\EU|datain_reg|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_writedata[5]~input0\,
	sload => VCC,
	ena => \CU|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain_reg|dout\(5));

-- Location: LCCOMB_X6_Y5_N26
\EU|dq_mux|Mux10~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux10~0_combout\ = (\CU|WideOr18~combout\ & (\EU|CA_unpacker_inst|CA1|dout\(5))) # (!\CU|WideOr18~combout\ & (((\EU|datain_reg|dout\(5) & \CU|WideOr19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr18~combout\,
	datab => \EU|CA_unpacker_inst|CA1|dout\(5),
	datac => \EU|datain_reg|dout\(5),
	datad => \CU|WideOr19~2_combout\,
	combout => \EU|dq_mux|Mux10~0_combout\);

-- Location: LCCOMB_X6_Y4_N16
\EU|dq_mux|Mux10~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux10~1_combout\ = (\EU|dq_mux|Mux10~0_combout\ & (((\EU|writedata_converter|input_reg|dout[8]~2_combout\ & !\CU|CA_sel[0]~0_combout\)) # (!\CU|WideOr18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata_converter|input_reg|dout[8]~2_combout\,
	datab => \CU|WideOr18~combout\,
	datac => \CU|CA_sel[0]~0_combout\,
	datad => \EU|dq_mux|Mux10~0_combout\,
	combout => \EU|dq_mux|Mux10~1_combout\);

-- Location: FF_X6_Y4_N17
\EU|writedata_converter|input_reg|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dq_mux|Mux10~1_combout\,
	ena => \CU|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata_converter|input_reg|dout\(5));

-- Location: FF_X5_Y5_N11
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[16]~54_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(16));

-- Location: LCCOMB_X6_Y5_N10
\EU|address_mux|Mux15~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux15~0_combout\ = (\CU|address_space_sel[0]~1_combout\ & (((\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(16) & \CU|address_space_sel[1]~0_combout\)))) # (!\CU|address_space_sel[0]~1_combout\ & (\EU|addr_reg|dout\(16) 
-- & ((!\CU|address_space_sel[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|address_space_sel[0]~1_combout\,
	datab => \EU|addr_reg|dout\(16),
	datac => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(16),
	datad => \CU|address_space_sel[1]~0_combout\,
	combout => \EU|address_mux|Mux15~0_combout\);

-- Location: FF_X6_Y5_N11
\EU|CA_unpacker_inst|CA1|dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux15~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA1|dout\(13));

-- Location: LCCOMB_X7_Y5_N4
\avs_writedata[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(13),
	o => \avs_writedata[13]~input0\);

-- Location: FF_X6_Y5_N13
\EU|datain_reg|dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_writedata[13]~input0\,
	sload => VCC,
	ena => \CU|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain_reg|dout\(13));

-- Location: LCCOMB_X6_Y5_N12
\EU|dq_mux|Mux2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux2~0_combout\ = (\CU|WideOr18~combout\ & (\EU|CA_unpacker_inst|CA1|dout\(13))) # (!\CU|WideOr18~combout\ & (((\CU|WideOr19~2_combout\ & \EU|datain_reg|dout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|CA_unpacker_inst|CA1|dout\(13),
	datab => \CU|WideOr19~2_combout\,
	datac => \EU|datain_reg|dout\(13),
	datad => \CU|WideOr18~combout\,
	combout => \EU|dq_mux|Mux2~0_combout\);

-- Location: LCCOMB_X6_Y4_N6
\EU|dq_mux|Mux2~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux2~1_combout\ = (\EU|dq_mux|Mux2~0_combout\ & (((\EU|writedata_converter|input_reg|dout[8]~2_combout\ & !\CU|CA_sel[0]~0_combout\)) # (!\CU|WideOr18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata_converter|input_reg|dout[8]~2_combout\,
	datab => \CU|WideOr18~combout\,
	datac => \CU|CA_sel[0]~0_combout\,
	datad => \EU|dq_mux|Mux2~0_combout\,
	combout => \EU|dq_mux|Mux2~1_combout\);

-- Location: FF_X6_Y4_N7
\EU|writedata_converter|input_reg|dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dq_mux|Mux2~1_combout\,
	ena => \CU|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata_converter|input_reg|dout\(13));

-- Location: LCCOMB_X6_Y4_N30
\EU|writedata_converter|outmux|dout[5]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata_converter|outmux|dout[5]~5_combout\ = (\clk~input_o\ & ((\EU|writedata_converter|input_reg|dout\(13)))) # (!\clk~input_o\ & (\EU|writedata_converter|input_reg|dout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|writedata_converter|input_reg|dout\(5),
	datac => \clk~input_o\,
	datad => \EU|writedata_converter|input_reg|dout\(13),
	combout => \EU|writedata_converter|outmux|dout[5]~5_combout\);

-- Location: FF_X5_Y6_N29
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[9]~40_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(9));

-- Location: LCCOMB_X4_Y6_N16
\EU|address_mux|Mux22~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux22~0_combout\ = (\CU|address_space_sel[0]~1_combout\ & (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(9) & ((\CU|address_space_sel[1]~0_combout\)))) # (!\CU|address_space_sel[0]~1_combout\ & (((\EU|addr_reg|dout\(9) 
-- & !\CU|address_space_sel[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|address_space_sel[0]~1_combout\,
	datab => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(9),
	datac => \EU|addr_reg|dout\(9),
	datad => \CU|address_space_sel[1]~0_combout\,
	combout => \EU|address_mux|Mux22~0_combout\);

-- Location: FF_X4_Y6_N17
\EU|CA_unpacker_inst|CA1|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux22~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA1|dout\(6));

-- Location: LCCOMB_X7_Y5_N26
\avs_writedata[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(6),
	o => \avs_writedata[6]~input0\);

-- Location: FF_X6_Y4_N11
\EU|datain_reg|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_writedata[6]~input0\,
	sload => VCC,
	ena => \CU|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain_reg|dout\(6));

-- Location: LCCOMB_X6_Y4_N10
\EU|dq_mux|Mux9~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux9~0_combout\ = (\CU|WideOr18~combout\ & (\EU|CA_unpacker_inst|CA1|dout\(6))) # (!\CU|WideOr18~combout\ & (((\EU|datain_reg|dout\(6) & \CU|WideOr19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|CA_unpacker_inst|CA1|dout\(6),
	datab => \CU|WideOr18~combout\,
	datac => \EU|datain_reg|dout\(6),
	datad => \CU|WideOr19~2_combout\,
	combout => \EU|dq_mux|Mux9~0_combout\);

-- Location: LCCOMB_X6_Y4_N20
\EU|dq_mux|Mux9~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux9~1_combout\ = (\EU|dq_mux|Mux9~0_combout\ & (((\EU|writedata_converter|input_reg|dout[8]~2_combout\ & !\CU|CA_sel[0]~0_combout\)) # (!\CU|WideOr18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata_converter|input_reg|dout[8]~2_combout\,
	datab => \CU|WideOr18~combout\,
	datac => \CU|CA_sel[0]~0_combout\,
	datad => \EU|dq_mux|Mux9~0_combout\,
	combout => \EU|dq_mux|Mux9~1_combout\);

-- Location: FF_X6_Y4_N21
\EU|writedata_converter|input_reg|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dq_mux|Mux9~1_combout\,
	ena => \CU|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata_converter|input_reg|dout\(6));

-- Location: FF_X5_Y5_N13
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[17]~56_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(17));

-- Location: LCCOMB_X4_Y5_N24
\EU|address_mux|Mux14~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux14~0_combout\ = (\CU|address_space_sel[0]~1_combout\ & (((\CU|address_space_sel[1]~0_combout\ & \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(17))))) # (!\CU|address_space_sel[0]~1_combout\ & (\EU|addr_reg|dout\(17) 
-- & (!\CU|address_space_sel[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|addr_reg|dout\(17),
	datab => \CU|address_space_sel[0]~1_combout\,
	datac => \CU|address_space_sel[1]~0_combout\,
	datad => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(17),
	combout => \EU|address_mux|Mux14~0_combout\);

-- Location: FF_X4_Y5_N25
\EU|CA_unpacker_inst|CA1|dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux14~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA1|dout\(14));

-- Location: FF_X3_Y4_N17
\EU|CA_unpacker_inst|CA0|dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \CU|next_state.writeconf_CA0~0_combout\,
	sload => VCC,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA0|dout\(14));

-- Location: LCCOMB_X3_Y4_N16
\EU|dq_mux|Mux1~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux1~1_combout\ = (\CU|present_state.CA_1~q\ & (\EU|CA_unpacker_inst|CA1|dout\(14))) # (!\CU|present_state.CA_1~q\ & ((\CU|present_state.writeconf_CA1~q\ & (\EU|CA_unpacker_inst|CA1|dout\(14))) # (!\CU|present_state.writeconf_CA1~q\ & 
-- ((\EU|CA_unpacker_inst|CA0|dout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|CA_unpacker_inst|CA1|dout\(14),
	datab => \CU|present_state.CA_1~q\,
	datac => \EU|CA_unpacker_inst|CA0|dout\(14),
	datad => \CU|present_state.writeconf_CA1~q\,
	combout => \EU|dq_mux|Mux1~1_combout\);

-- Location: LCCOMB_X1_Y4_N16
\avs_writedata[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(14),
	o => \avs_writedata[14]~input0\);

-- Location: FF_X5_Y4_N27
\EU|datain_reg|dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_writedata[14]~input0\,
	sload => VCC,
	ena => \CU|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain_reg|dout\(14));

-- Location: LCCOMB_X5_Y4_N26
\EU|dq_mux|Mux1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux1~0_combout\ = (!\CU|present_state.writeconf0~q\ & (!\CU|present_state.writeconf1~q\ & (\EU|datain_reg|dout\(14) & \CU|WideOr19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.writeconf0~q\,
	datab => \CU|present_state.writeconf1~q\,
	datac => \EU|datain_reg|dout\(14),
	datad => \CU|WideOr19~0_combout\,
	combout => \EU|dq_mux|Mux1~0_combout\);

-- Location: LCCOMB_X4_Y4_N18
\EU|dq_mux|Mux1~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux1~2_combout\ = (\EU|dq_mux|Mux1~0_combout\) # ((\CU|WideOr18~combout\ & (!\EU|writedata_converter|input_reg|dout[0]~3_combout\ & \EU|dq_mux|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr18~combout\,
	datab => \EU|writedata_converter|input_reg|dout[0]~3_combout\,
	datac => \EU|dq_mux|Mux1~1_combout\,
	datad => \EU|dq_mux|Mux1~0_combout\,
	combout => \EU|dq_mux|Mux1~2_combout\);

-- Location: FF_X4_Y4_N19
\EU|writedata_converter|input_reg|dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dq_mux|Mux1~2_combout\,
	ena => \CU|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata_converter|input_reg|dout\(14));

-- Location: LCCOMB_X4_Y4_N22
\EU|writedata_converter|outmux|dout[6]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata_converter|outmux|dout[6]~6_combout\ = (\clk~input_o\ & ((\EU|writedata_converter|input_reg|dout\(14)))) # (!\clk~input_o\ & (\EU|writedata_converter|input_reg|dout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata_converter|input_reg|dout\(6),
	datac => \clk~input_o\,
	datad => \EU|writedata_converter|input_reg|dout\(14),
	combout => \EU|writedata_converter|outmux|dout[6]~6_combout\);

-- Location: LCCOMB_X3_Y4_N6
\EU|CA_unpacker_inst|CA0|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|CA_unpacker_inst|CA0|dout~0_combout\ = (\CU|present_state.readmem_prep~q\) # ((!\CU|next_state.writeconf_CA0~0_combout\ & (\EU|CA_unpacker_inst|CA0|dout\(15) & \CU|WideOr7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.readmem_prep~q\,
	datab => \CU|next_state.writeconf_CA0~0_combout\,
	datac => \EU|CA_unpacker_inst|CA0|dout\(15),
	datad => \CU|WideOr7~0_combout\,
	combout => \EU|CA_unpacker_inst|CA0|dout~0_combout\);

-- Location: FF_X3_Y4_N7
\EU|CA_unpacker_inst|CA0|dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|CA_unpacker_inst|CA0|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA0|dout\(15));

-- Location: FF_X5_Y5_N15
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[18]~58_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(18));

-- Location: LCCOMB_X4_Y5_N18
\EU|address_mux|Mux13~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux13~0_combout\ = (\CU|address_space_sel[1]~0_combout\ & (((\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(18) & \CU|address_space_sel[0]~1_combout\)))) # (!\CU|address_space_sel[1]~0_combout\ & (\EU|addr_reg|dout\(18) 
-- & ((!\CU|address_space_sel[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|addr_reg|dout\(18),
	datab => \CU|address_space_sel[1]~0_combout\,
	datac => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(18),
	datad => \CU|address_space_sel[0]~1_combout\,
	combout => \EU|address_mux|Mux13~0_combout\);

-- Location: FF_X4_Y5_N19
\EU|CA_unpacker_inst|CA1|dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux13~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA1|dout\(15));

-- Location: LCCOMB_X3_Y4_N20
\EU|dq_mux|Mux0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux0~1_combout\ = (\CU|present_state.CA_1~q\ & (((\EU|CA_unpacker_inst|CA1|dout\(15))))) # (!\CU|present_state.CA_1~q\ & ((\CU|present_state.writeconf_CA1~q\ & ((\EU|CA_unpacker_inst|CA1|dout\(15)))) # (!\CU|present_state.writeconf_CA1~q\ & 
-- (\EU|CA_unpacker_inst|CA0|dout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|CA_unpacker_inst|CA0|dout\(15),
	datab => \CU|present_state.CA_1~q\,
	datac => \CU|present_state.writeconf_CA1~q\,
	datad => \EU|CA_unpacker_inst|CA1|dout\(15),
	combout => \EU|dq_mux|Mux0~1_combout\);

-- Location: LCCOMB_X1_Y4_N26
\avs_writedata[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(15),
	o => \avs_writedata[15]~input0\);

-- Location: FF_X5_Y4_N29
\EU|datain_reg|dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_writedata[15]~input0\,
	sload => VCC,
	ena => \CU|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain_reg|dout\(15));

-- Location: LCCOMB_X5_Y4_N28
\EU|dq_mux|Mux0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux0~0_combout\ = (!\CU|present_state.writeconf1~q\ & (\CU|WideOr19~0_combout\ & ((\CU|present_state.writeconf0~q\) # (\EU|datain_reg|dout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.writeconf0~q\,
	datab => \CU|present_state.writeconf1~q\,
	datac => \EU|datain_reg|dout\(15),
	datad => \CU|WideOr19~0_combout\,
	combout => \EU|dq_mux|Mux0~0_combout\);

-- Location: LCCOMB_X5_Y4_N22
\EU|dq_mux|Mux0~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux0~2_combout\ = (\EU|dq_mux|Mux0~0_combout\) # ((\EU|writedata_converter|input_reg|dout[8]~2_combout\ & (!\CU|WideOr19~2_combout\ & \EU|dq_mux|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|writedata_converter|input_reg|dout[8]~2_combout\,
	datab => \CU|WideOr19~2_combout\,
	datac => \EU|dq_mux|Mux0~1_combout\,
	datad => \EU|dq_mux|Mux0~0_combout\,
	combout => \EU|dq_mux|Mux0~2_combout\);

-- Location: FF_X5_Y4_N23
\EU|writedata_converter|input_reg|dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dq_mux|Mux0~2_combout\,
	ena => \CU|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata_converter|input_reg|dout\(15));

-- Location: FF_X5_Y6_N31
\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe[10]~42_combout\,
	ena => \CU|present_state.stop_burst_1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(10));

-- Location: LCCOMB_X6_Y5_N16
\EU|address_mux|Mux21~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|address_mux|Mux21~0_combout\ = (\CU|address_space_sel[0]~1_combout\ & (\EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(10) & ((\CU|address_space_sel[1]~0_combout\)))) # (!\CU|address_space_sel[0]~1_combout\ & 
-- (((\EU|addr_reg|dout\(10) & !\CU|address_space_sel[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|address_space_sel[0]~1_combout\,
	datab => \EU|addressgen|LPM_ADD_SUB_component|auto_generated|pipeline_dffe\(10),
	datac => \EU|addr_reg|dout\(10),
	datad => \CU|address_space_sel[1]~0_combout\,
	combout => \EU|address_mux|Mux21~0_combout\);

-- Location: FF_X6_Y5_N17
\EU|CA_unpacker_inst|CA1|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|address_mux|Mux21~0_combout\,
	ena => \CU|WideOr12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|CA_unpacker_inst|CA1|dout\(7));

-- Location: LCCOMB_X2_Y5_N24
\avs_writedata[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(7),
	o => \avs_writedata[7]~input0\);

-- Location: FF_X6_Y5_N7
\EU|datain_reg|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_writedata[7]~input0\,
	sload => VCC,
	ena => \CU|WideOr11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|datain_reg|dout\(7));

-- Location: LCCOMB_X6_Y5_N6
\EU|dq_mux|Mux8~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux8~0_combout\ = (\CU|WideOr18~combout\ & (\EU|CA_unpacker_inst|CA1|dout\(7))) # (!\CU|WideOr18~combout\ & (((\EU|datain_reg|dout\(7) & \CU|WideOr19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr18~combout\,
	datab => \EU|CA_unpacker_inst|CA1|dout\(7),
	datac => \EU|datain_reg|dout\(7),
	datad => \CU|WideOr19~2_combout\,
	combout => \EU|dq_mux|Mux8~0_combout\);

-- Location: LCCOMB_X6_Y4_N2
\EU|dq_mux|Mux8~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dq_mux|Mux8~1_combout\ = (\EU|dq_mux|Mux8~0_combout\ & (((!\CU|CA_sel[0]~0_combout\ & \EU|writedata_converter|input_reg|dout[8]~2_combout\)) # (!\CU|WideOr18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|dq_mux|Mux8~0_combout\,
	datab => \CU|WideOr18~combout\,
	datac => \CU|CA_sel[0]~0_combout\,
	datad => \EU|writedata_converter|input_reg|dout[8]~2_combout\,
	combout => \EU|dq_mux|Mux8~1_combout\);

-- Location: FF_X6_Y4_N3
\EU|writedata_converter|input_reg|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dq_mux|Mux8~1_combout\,
	ena => \CU|WideOr14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|writedata_converter|input_reg|dout\(7));

-- Location: LCCOMB_X6_Y4_N8
\EU|writedata_converter|outmux|dout[7]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|writedata_converter|outmux|dout[7]~7_combout\ = (\clk~input_o\ & (\EU|writedata_converter|input_reg|dout\(15))) # (!\clk~input_o\ & ((\EU|writedata_converter|input_reg|dout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|writedata_converter|input_reg|dout\(15),
	datac => \clk~input_o\,
	datad => \EU|writedata_converter|input_reg|dout\(7),
	combout => \EU|writedata_converter|outmux|dout[7]~7_combout\);

-- Location: LCCOMB_X1_Y6_N0
\CU|WideOr12~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr12~2_combout\ = ((\CU|present_state.writeburst_prep~q\) # ((\CU|WideOr12~0_combout\) # (\CU|present_state.writeburst~q\))) # (!\CU|WideOr12~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr12~1_combout\,
	datab => \CU|present_state.writeburst_prep~q\,
	datac => \CU|WideOr12~0_combout\,
	datad => \CU|present_state.writeburst~q\,
	combout => \CU|WideOr12~2_combout\);

-- Location: LCCOMB_X1_Y16_N16
\CU|WideOr12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr12~combout\ = ((\CU|WideOr12~3_combout\) # (\CU|WideOr12~2_combout\)) # (!\CU|WideOr19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|WideOr19~0_combout\,
	datac => \CU|WideOr12~3_combout\,
	datad => \CU|WideOr12~2_combout\,
	combout => \CU|WideOr12~combout\);

-- Location: FF_X1_Y16_N17
\EU|hCKen_pipe|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|WideOr12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|hCKen_pipe|dout~q\);

-- Location: PLL_1
\EU|clk_shifter|altpll_component|auto_generated|pll1\ : cyclone10lp_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 3,
	c0_initial => 2,
	c0_low => 3,
	c0_mode => "even",
	c0_ph => 4,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "2500",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 10000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 6,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \reset_n~input0\,
	fbin => \EU|clk_shifter|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \EU|clk_shifter|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \EU|clk_shifter|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \EU|clk_shifter|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\EU|clk_gater_inst|altclkctrl_0|clkctrl_altclkctrl_0_sub_component|clkctrl1\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	ena => \EU|hCKen_pipe|dout~q\,
	inclk => \EU|clk_gater_inst|altclkctrl_0|clkctrl_altclkctrl_0_sub_component|clkctrl1_INCLK_bus\,
	clkselect => \EU|clk_gater_inst|altclkctrl_0|clkctrl_altclkctrl_0_sub_component|clkctrl1_CLKSELECT_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \EU|clk_gater_inst|altclkctrl_0|clkctrl_altclkctrl_0_sub_component|wire_clkctrl1_outclk\);

-- Location: IOIBUF_X0_Y23_N15
\hram_RWDS_in_90shift~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hram_RWDS_in_90shift,
	o => \hram_RWDS_in_90shift~input_o\);

-- Location: CLKCTRL_G0
\hram_RWDS_in_90shift~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \hram_RWDS_in_90shift~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \hram_RWDS_in_90shift~inputclkctrl_outclk\);

-- Location: IOIBUF_X20_Y0_N8
\hram_DQ[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hram_DQ(0),
	o => \hram_DQ[0]~input_o\);

-- Location: FF_X9_Y3_N1
\EU|readdata_converter|lsb|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_hram_RWDS_in_90shift~inputclkctrl_outclk\,
	asdata => \hram_DQ[0]~input_o\,
	sload => VCC,
	ena => \CU|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata_converter|lsb|dout\(0));

-- Location: LCCOMB_X8_Y7_N16
\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~2_combout\ = (!\EU|synchronizer_inst|CU|present_state.idle_clear~q\ & \EU|synchronizer_inst|CU|present_state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.idle_clear~q\,
	datad => \EU|synchronizer_inst|CU|present_state.reset~q\,
	combout => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~2_combout\);

-- Location: LCCOMB_X8_Y7_N12
\EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out~0_combout\ = (\EU|synchronizer_inst|CU|present_state.reset~q\ & (!\EU|synchronizer_inst|CU|present_state.idle_clear~q\ & (\EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out~q\ $ 
-- (!\EU|synchronizer_inst|CU|present_state.idle_disabled~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.reset~q\,
	datab => \EU|synchronizer_inst|CU|present_state.idle_clear~q\,
	datac => \EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|CU|present_state.idle_disabled~q\,
	combout => \EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out~0_combout\);

-- Location: FF_X8_Y7_N13
\EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out~q\);

-- Location: LCCOMB_X8_Y7_N22
\EU|synchronizer_inst|EU|code_counter|g1:1:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|code_counter|g1:1:chain_tff|dummy_out~0_combout\ = (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~2_combout\ & (\EU|synchronizer_inst|EU|code_counter|g1:1:chain_tff|dummy_out~q\ $ 
-- (((!\EU|synchronizer_inst|CU|present_state.idle_disabled~q\ & \EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.idle_disabled~q\,
	datab => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~2_combout\,
	datac => \EU|synchronizer_inst|EU|code_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out~q\,
	combout => \EU|synchronizer_inst|EU|code_counter|g1:1:chain_tff|dummy_out~0_combout\);

-- Location: FF_X8_Y7_N23
\EU|synchronizer_inst|EU|code_counter|g1:1:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|code_counter|g1:1:chain_tff|dummy_out~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|code_counter|g1:1:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X8_Y7_N20
\EU|synchronizer_inst|EU|din00_enable\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din00_enable~combout\ = (!\EU|synchronizer_inst|CU|present_state.idle_disabled~q\ & (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~2_combout\ & (!\EU|synchronizer_inst|EU|code_counter|g1:1:chain_tff|dummy_out~q\ & 
-- !\EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.idle_disabled~q\,
	datab => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~2_combout\,
	datac => \EU|synchronizer_inst|EU|code_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out~q\,
	combout => \EU|synchronizer_inst|EU|din00_enable~combout\);

-- Location: FF_X7_Y3_N3
\EU|synchronizer_inst|EU|din00|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|lsb|dout\(0),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|din00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din00|dout\(0));

-- Location: LCCOMB_X8_Y7_N18
\EU|synchronizer_inst|EU|dec|Mux2~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|dec|Mux2~1_combout\ = (!\EU|synchronizer_inst|EU|code_counter|g1:1:chain_tff|dummy_out~q\ & \EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|synchronizer_inst|EU|code_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out~q\,
	combout => \EU|synchronizer_inst|EU|dec|Mux2~1_combout\);

-- Location: FF_X7_Y3_N5
\EU|synchronizer_inst|EU|din01|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|lsb|dout\(0),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din01|dout\(0));

-- Location: LCCOMB_X8_Y4_N24
\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~3_combout\ = (\EU|synchronizer_inst|CU|present_state.reset~q\ & (!\EU|synchronizer_inst|CU|present_state.idle_clear~q\ & (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ $ 
-- (\EU|synchronizer_inst|CU|WideOr5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.reset~q\,
	datab => \EU|synchronizer_inst|CU|present_state.idle_clear~q\,
	datac => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|CU|WideOr5~combout\,
	combout => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~3_combout\);

-- Location: FF_X8_Y4_N25
\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\);

-- Location: LCCOMB_X8_Y4_N28
\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~0_combout\ = (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~2_combout\ & (\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ $ 
-- (((\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & \EU|synchronizer_inst|CU|WideOr5~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~2_combout\,
	datac => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|CU|WideOr5~combout\,
	combout => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~0_combout\);

-- Location: FF_X8_Y4_N29
\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X8_Y3_N30
\EU|synchronizer_inst|EU|datamux|Mux15~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux15~0_combout\ = (\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (((\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\)))) # 
-- (!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|din01|dout\(0)))) # (!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & 
-- (\EU|synchronizer_inst|EU|din00|dout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din00|dout\(0),
	datab => \EU|synchronizer_inst|EU|din01|dout\(0),
	datac => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|synchronizer_inst|EU|datamux|Mux15~0_combout\);

-- Location: LCCOMB_X8_Y7_N2
\EU|synchronizer_inst|EU|dec|Mux2~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|dec|Mux2~2_combout\ = (\EU|synchronizer_inst|EU|code_counter|g1:1:chain_tff|dummy_out~q\ & \EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|synchronizer_inst|EU|code_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out~q\,
	combout => \EU|synchronizer_inst|EU|dec|Mux2~2_combout\);

-- Location: FF_X8_Y3_N25
\EU|synchronizer_inst|EU|din11|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|lsb|dout\(0),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din11|dout\(0));

-- Location: LCCOMB_X9_Y3_N24
\EU|synchronizer_inst|EU|din10|dout[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din10|dout[0]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(0),
	combout => \EU|synchronizer_inst|EU|din10|dout[0]~feeder_combout\);

-- Location: LCCOMB_X8_Y7_N6
\EU|synchronizer_inst|EU|dec|Mux2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|dec|Mux2~0_combout\ = (\EU|synchronizer_inst|EU|code_counter|g1:1:chain_tff|dummy_out~q\ & !\EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|synchronizer_inst|EU|code_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|code_counter|entry_tff|dummy_out~q\,
	combout => \EU|synchronizer_inst|EU|dec|Mux2~0_combout\);

-- Location: FF_X9_Y3_N25
\EU|synchronizer_inst|EU|din10|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din10|dout[0]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din10|dout\(0));

-- Location: LCCOMB_X8_Y3_N28
\EU|synchronizer_inst|EU|datamux|Mux15~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux15~1_combout\ = (\EU|synchronizer_inst|EU|datamux|Mux15~0_combout\ & ((\EU|synchronizer_inst|EU|din11|dout\(0)) # ((!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # 
-- (!\EU|synchronizer_inst|EU|datamux|Mux15~0_combout\ & (((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & \EU|synchronizer_inst|EU|din10|dout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|datamux|Mux15~0_combout\,
	datab => \EU|synchronizer_inst|EU|din11|dout\(0),
	datac => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|din10|dout\(0),
	combout => \EU|synchronizer_inst|EU|datamux|Mux15~1_combout\);

-- Location: FF_X8_Y3_N29
\EU|synchronizer_inst|EU|outreg|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|datamux|Mux15~1_combout\,
	ena => \EU|synchronizer_inst|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outreg|dout\(0));

-- Location: LCCOMB_X8_Y6_N4
\EU|synchronizer_inst|EU|outpipe|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|outpipe|dout~0_combout\ = (\EU|synchronizer_inst|EU|outreg|dout\(0) & \EU|synchronizer_inst|CU|present_state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|synchronizer_inst|EU|outreg|dout\(0),
	datad => \EU|synchronizer_inst|CU|present_state.reset~q\,
	combout => \EU|synchronizer_inst|EU|outpipe|dout~0_combout\);

-- Location: FF_X8_Y6_N5
\EU|synchronizer_inst|EU|outpipe|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|outpipe|dout~0_combout\,
	ena => \EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outpipe|dout\(0));

-- Location: LCCOMB_X8_Y6_N14
\EU|readdatamux|dout[0]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdatamux|dout[0]~0_combout\ = (\EU|synchronizer_inst|EU|outpipe|dout\(0) & !\CU|present_state.read_virtconf~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|synchronizer_inst|EU|outpipe|dout\(0),
	datad => \CU|present_state.read_virtconf~q\,
	combout => \EU|readdatamux|dout[0]~0_combout\);

-- Location: IOIBUF_X3_Y0_N1
\hram_DQ[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hram_DQ(1),
	o => \hram_DQ[1]~input_o\);

-- Location: LCCOMB_X9_Y3_N26
\EU|readdata_converter|lsb|dout[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata_converter|lsb|dout[1]~feeder_combout\ = \hram_DQ[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hram_DQ[1]~input_o\,
	combout => \EU|readdata_converter|lsb|dout[1]~feeder_combout\);

-- Location: FF_X9_Y3_N27
\EU|readdata_converter|lsb|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_hram_RWDS_in_90shift~inputclkctrl_outclk\,
	d => \EU|readdata_converter|lsb|dout[1]~feeder_combout\,
	ena => \CU|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata_converter|lsb|dout\(1));

-- Location: LCCOMB_X7_Y3_N16
\EU|synchronizer_inst|EU|din01|dout[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din01|dout[1]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(1),
	combout => \EU|synchronizer_inst|EU|din01|dout[1]~feeder_combout\);

-- Location: FF_X7_Y3_N17
\EU|synchronizer_inst|EU|din01|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din01|dout[1]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din01|dout\(1));

-- Location: LCCOMB_X7_Y3_N6
\EU|synchronizer_inst|EU|din00|dout[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din00|dout[1]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(1),
	combout => \EU|synchronizer_inst|EU|din00|dout[1]~feeder_combout\);

-- Location: FF_X7_Y3_N7
\EU|synchronizer_inst|EU|din00|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din00|dout[1]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|din00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din00|dout\(1));

-- Location: LCCOMB_X8_Y3_N26
\EU|synchronizer_inst|EU|datamux|Mux14~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux14~0_combout\ = (\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (((\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\)))) # 
-- (!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & (\EU|synchronizer_inst|EU|din01|dout\(1))) # (!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & 
-- ((\EU|synchronizer_inst|EU|din00|dout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din01|dout\(1),
	datab => \EU|synchronizer_inst|EU|din00|dout\(1),
	datac => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|synchronizer_inst|EU|datamux|Mux14~0_combout\);

-- Location: FF_X8_Y3_N1
\EU|synchronizer_inst|EU|din11|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|lsb|dout\(1),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din11|dout\(1));

-- Location: FF_X9_Y3_N7
\EU|synchronizer_inst|EU|din10|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|lsb|dout\(1),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din10|dout\(1));

-- Location: LCCOMB_X8_Y3_N10
\EU|synchronizer_inst|EU|datamux|Mux14~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux14~1_combout\ = (\EU|synchronizer_inst|EU|datamux|Mux14~0_combout\ & ((\EU|synchronizer_inst|EU|din11|dout\(1)) # ((!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # 
-- (!\EU|synchronizer_inst|EU|datamux|Mux14~0_combout\ & (((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & \EU|synchronizer_inst|EU|din10|dout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|datamux|Mux14~0_combout\,
	datab => \EU|synchronizer_inst|EU|din11|dout\(1),
	datac => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|din10|dout\(1),
	combout => \EU|synchronizer_inst|EU|datamux|Mux14~1_combout\);

-- Location: FF_X8_Y3_N11
\EU|synchronizer_inst|EU|outreg|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|datamux|Mux14~1_combout\,
	ena => \EU|synchronizer_inst|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outreg|dout\(1));

-- Location: LCCOMB_X8_Y6_N28
\EU|synchronizer_inst|EU|outpipe|dout~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|outpipe|dout~1_combout\ = (\EU|synchronizer_inst|EU|outreg|dout\(1) & \EU|synchronizer_inst|CU|present_state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|outreg|dout\(1),
	datad => \EU|synchronizer_inst|CU|present_state.reset~q\,
	combout => \EU|synchronizer_inst|EU|outpipe|dout~1_combout\);

-- Location: FF_X8_Y6_N29
\EU|synchronizer_inst|EU|outpipe|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|outpipe|dout~1_combout\,
	ena => \EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outpipe|dout\(1));

-- Location: LCCOMB_X8_Y6_N22
\EU|readdatamux|dout[1]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdatamux|dout[1]~1_combout\ = (!\CU|present_state.read_virtconf~q\ & \EU|synchronizer_inst|EU|outpipe|dout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.read_virtconf~q\,
	datad => \EU|synchronizer_inst|EU|outpipe|dout\(1),
	combout => \EU|readdatamux|dout[1]~1_combout\);

-- Location: IOIBUF_X5_Y0_N22
\hram_DQ[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hram_DQ(2),
	o => \hram_DQ[2]~input_o\);

-- Location: LCCOMB_X9_Y3_N20
\EU|readdata_converter|lsb|dout[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata_converter|lsb|dout[2]~feeder_combout\ = \hram_DQ[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hram_DQ[2]~input_o\,
	combout => \EU|readdata_converter|lsb|dout[2]~feeder_combout\);

-- Location: FF_X9_Y3_N21
\EU|readdata_converter|lsb|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_hram_RWDS_in_90shift~inputclkctrl_outclk\,
	d => \EU|readdata_converter|lsb|dout[2]~feeder_combout\,
	ena => \CU|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata_converter|lsb|dout\(2));

-- Location: FF_X7_Y3_N15
\EU|synchronizer_inst|EU|din00|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|lsb|dout\(2),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|din00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din00|dout\(2));

-- Location: LCCOMB_X9_Y3_N8
\EU|synchronizer_inst|EU|din10|dout[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din10|dout[2]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(2),
	combout => \EU|synchronizer_inst|EU|din10|dout[2]~feeder_combout\);

-- Location: FF_X9_Y3_N9
\EU|synchronizer_inst|EU|din10|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din10|dout[2]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din10|dout\(2));

-- Location: LCCOMB_X8_Y3_N22
\EU|synchronizer_inst|EU|datamux|Mux13~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux13~0_combout\ = (\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (((\EU|synchronizer_inst|EU|din10|dout\(2)) # (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\)))) # 
-- (!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (\EU|synchronizer_inst|EU|din00|dout\(2) & ((!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din00|dout\(2),
	datab => \EU|synchronizer_inst|EU|din10|dout\(2),
	datac => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|synchronizer_inst|EU|datamux|Mux13~0_combout\);

-- Location: FF_X7_Y3_N25
\EU|synchronizer_inst|EU|din01|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|lsb|dout\(2),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din01|dout\(2));

-- Location: LCCOMB_X8_Y3_N4
\EU|synchronizer_inst|EU|din11|dout[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din11|dout[2]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(2),
	combout => \EU|synchronizer_inst|EU|din11|dout[2]~feeder_combout\);

-- Location: FF_X8_Y3_N5
\EU|synchronizer_inst|EU|din11|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din11|dout[2]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din11|dout\(2));

-- Location: LCCOMB_X8_Y3_N8
\EU|synchronizer_inst|EU|datamux|Mux13~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux13~1_combout\ = (\EU|synchronizer_inst|EU|datamux|Mux13~0_combout\ & (((\EU|synchronizer_inst|EU|din11|dout\(2)) # (!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\)))) # 
-- (!\EU|synchronizer_inst|EU|datamux|Mux13~0_combout\ & (\EU|synchronizer_inst|EU|din01|dout\(2) & ((\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|datamux|Mux13~0_combout\,
	datab => \EU|synchronizer_inst|EU|din01|dout\(2),
	datac => \EU|synchronizer_inst|EU|din11|dout\(2),
	datad => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|synchronizer_inst|EU|datamux|Mux13~1_combout\);

-- Location: FF_X8_Y3_N9
\EU|synchronizer_inst|EU|outreg|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|datamux|Mux13~1_combout\,
	ena => \EU|synchronizer_inst|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outreg|dout\(2));

-- Location: LCCOMB_X8_Y6_N8
\EU|synchronizer_inst|EU|outpipe|dout~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|outpipe|dout~2_combout\ = (\EU|synchronizer_inst|EU|outreg|dout\(2) & \EU|synchronizer_inst|CU|present_state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|synchronizer_inst|EU|outreg|dout\(2),
	datad => \EU|synchronizer_inst|CU|present_state.reset~q\,
	combout => \EU|synchronizer_inst|EU|outpipe|dout~2_combout\);

-- Location: FF_X8_Y6_N9
\EU|synchronizer_inst|EU|outpipe|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|outpipe|dout~2_combout\,
	ena => \EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outpipe|dout\(2));

-- Location: LCCOMB_X8_Y6_N26
\EU|readdatamux|dout[2]~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdatamux|dout[2]~2_combout\ = (\EU|synchronizer_inst|EU|outpipe|dout\(2) & !\CU|present_state.read_virtconf~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|synchronizer_inst|EU|outpipe|dout\(2),
	datad => \CU|present_state.read_virtconf~q\,
	combout => \EU|readdatamux|dout[2]~2_combout\);

-- Location: IOIBUF_X11_Y0_N22
\hram_DQ[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hram_DQ(3),
	o => \hram_DQ[3]~input_o\);

-- Location: LCCOMB_X9_Y3_N18
\EU|readdata_converter|lsb|dout[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata_converter|lsb|dout[3]~feeder_combout\ = \hram_DQ[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hram_DQ[3]~input_o\,
	combout => \EU|readdata_converter|lsb|dout[3]~feeder_combout\);

-- Location: FF_X9_Y3_N19
\EU|readdata_converter|lsb|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_hram_RWDS_in_90shift~inputclkctrl_outclk\,
	d => \EU|readdata_converter|lsb|dout[3]~feeder_combout\,
	ena => \CU|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata_converter|lsb|dout\(3));

-- Location: LCCOMB_X7_Y3_N30
\EU|synchronizer_inst|EU|din00|dout[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din00|dout[3]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(3),
	combout => \EU|synchronizer_inst|EU|din00|dout[3]~feeder_combout\);

-- Location: FF_X7_Y3_N31
\EU|synchronizer_inst|EU|din00|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din00|dout[3]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|din00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din00|dout\(3));

-- Location: LCCOMB_X7_Y3_N12
\EU|synchronizer_inst|EU|din01|dout[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din01|dout[3]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(3),
	combout => \EU|synchronizer_inst|EU|din01|dout[3]~feeder_combout\);

-- Location: FF_X7_Y3_N13
\EU|synchronizer_inst|EU|din01|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din01|dout[3]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din01|dout\(3));

-- Location: LCCOMB_X8_Y3_N6
\EU|synchronizer_inst|EU|datamux|Mux12~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux12~0_combout\ = (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\) # (\EU|synchronizer_inst|EU|din01|dout\(3))))) # 
-- (!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & (\EU|synchronizer_inst|EU|din00|dout\(3) & (!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|synchronizer_inst|EU|din00|dout\(3),
	datac => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|din01|dout\(3),
	combout => \EU|synchronizer_inst|EU|datamux|Mux12~0_combout\);

-- Location: LCCOMB_X9_Y3_N10
\EU|synchronizer_inst|EU|din10|dout[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din10|dout[3]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(3),
	combout => \EU|synchronizer_inst|EU|din10|dout[3]~feeder_combout\);

-- Location: FF_X9_Y3_N11
\EU|synchronizer_inst|EU|din10|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din10|dout[3]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din10|dout\(3));

-- Location: LCCOMB_X8_Y3_N20
\EU|synchronizer_inst|EU|din11|dout[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din11|dout[3]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(3),
	combout => \EU|synchronizer_inst|EU|din11|dout[3]~feeder_combout\);

-- Location: FF_X8_Y3_N21
\EU|synchronizer_inst|EU|din11|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din11|dout[3]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din11|dout\(3));

-- Location: LCCOMB_X8_Y3_N2
\EU|synchronizer_inst|EU|datamux|Mux12~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux12~1_combout\ = (\EU|synchronizer_inst|EU|datamux|Mux12~0_combout\ & (((\EU|synchronizer_inst|EU|din11|dout\(3))) # (!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\))) # 
-- (!\EU|synchronizer_inst|EU|datamux|Mux12~0_combout\ & (\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (\EU|synchronizer_inst|EU|din10|dout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|datamux|Mux12~0_combout\,
	datab => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|synchronizer_inst|EU|din10|dout\(3),
	datad => \EU|synchronizer_inst|EU|din11|dout\(3),
	combout => \EU|synchronizer_inst|EU|datamux|Mux12~1_combout\);

-- Location: FF_X8_Y3_N3
\EU|synchronizer_inst|EU|outreg|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|datamux|Mux12~1_combout\,
	ena => \EU|synchronizer_inst|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outreg|dout\(3));

-- Location: LCCOMB_X8_Y6_N12
\EU|synchronizer_inst|EU|outpipe|dout~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|outpipe|dout~3_combout\ = (\EU|synchronizer_inst|EU|outreg|dout\(3) & \EU|synchronizer_inst|CU|present_state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|synchronizer_inst|EU|outreg|dout\(3),
	datad => \EU|synchronizer_inst|CU|present_state.reset~q\,
	combout => \EU|synchronizer_inst|EU|outpipe|dout~3_combout\);

-- Location: FF_X8_Y6_N13
\EU|synchronizer_inst|EU|outpipe|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|outpipe|dout~3_combout\,
	ena => \EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outpipe|dout\(3));

-- Location: LCCOMB_X8_Y6_N6
\EU|readdatamux|dout[3]~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdatamux|dout[3]~3_combout\ = (!\CU|present_state.read_virtconf~q\ & \EU|synchronizer_inst|EU|outpipe|dout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.read_virtconf~q\,
	datad => \EU|synchronizer_inst|EU|outpipe|dout\(3),
	combout => \EU|readdatamux|dout[3]~3_combout\);

-- Location: IOIBUF_X20_Y0_N1
\hram_DQ[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hram_DQ(4),
	o => \hram_DQ[4]~input_o\);

-- Location: FF_X9_Y3_N5
\EU|readdata_converter|lsb|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_hram_RWDS_in_90shift~inputclkctrl_outclk\,
	asdata => \hram_DQ[4]~input_o\,
	sload => VCC,
	ena => \CU|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata_converter|lsb|dout\(4));

-- Location: LCCOMB_X10_Y3_N10
\EU|synchronizer_inst|EU|din11|dout[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din11|dout[4]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(4),
	combout => \EU|synchronizer_inst|EU|din11|dout[4]~feeder_combout\);

-- Location: FF_X10_Y3_N11
\EU|synchronizer_inst|EU|din11|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din11|dout[4]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din11|dout\(4));

-- Location: LCCOMB_X7_Y3_N8
\EU|synchronizer_inst|EU|din01|dout[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din01|dout[4]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(4),
	combout => \EU|synchronizer_inst|EU|din01|dout[4]~feeder_combout\);

-- Location: FF_X7_Y3_N9
\EU|synchronizer_inst|EU|din01|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din01|dout[4]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din01|dout\(4));

-- Location: LCCOMB_X7_Y3_N18
\EU|synchronizer_inst|EU|din00|dout[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din00|dout[4]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(4),
	combout => \EU|synchronizer_inst|EU|din00|dout[4]~feeder_combout\);

-- Location: FF_X7_Y3_N19
\EU|synchronizer_inst|EU|din00|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din00|dout[4]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|din00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din00|dout\(4));

-- Location: FF_X9_Y3_N13
\EU|synchronizer_inst|EU|din10|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|lsb|dout\(4),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din10|dout\(4));

-- Location: LCCOMB_X10_Y3_N24
\EU|synchronizer_inst|EU|datamux|Mux11~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux11~0_combout\ = (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & 
-- ((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|din10|dout\(4)))) # (!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (\EU|synchronizer_inst|EU|din00|dout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din00|dout\(4),
	datab => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	datac => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|din10|dout\(4),
	combout => \EU|synchronizer_inst|EU|datamux|Mux11~0_combout\);

-- Location: LCCOMB_X10_Y3_N8
\EU|synchronizer_inst|EU|datamux|Mux11~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux11~1_combout\ = (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|datamux|Mux11~0_combout\ & (\EU|synchronizer_inst|EU|din11|dout\(4))) # 
-- (!\EU|synchronizer_inst|EU|datamux|Mux11~0_combout\ & ((\EU|synchronizer_inst|EU|din01|dout\(4)))))) # (!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|synchronizer_inst|EU|datamux|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din11|dout\(4),
	datab => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	datac => \EU|synchronizer_inst|EU|din01|dout\(4),
	datad => \EU|synchronizer_inst|EU|datamux|Mux11~0_combout\,
	combout => \EU|synchronizer_inst|EU|datamux|Mux11~1_combout\);

-- Location: FF_X10_Y3_N9
\EU|synchronizer_inst|EU|outreg|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|datamux|Mux11~1_combout\,
	ena => \EU|synchronizer_inst|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outreg|dout\(4));

-- Location: LCCOMB_X8_Y6_N0
\EU|synchronizer_inst|EU|outpipe|dout~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|outpipe|dout~4_combout\ = (\EU|synchronizer_inst|CU|present_state.reset~q\ & \EU|synchronizer_inst|EU|outreg|dout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.reset~q\,
	datad => \EU|synchronizer_inst|EU|outreg|dout\(4),
	combout => \EU|synchronizer_inst|EU|outpipe|dout~4_combout\);

-- Location: FF_X8_Y6_N1
\EU|synchronizer_inst|EU|outpipe|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|outpipe|dout~4_combout\,
	ena => \EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outpipe|dout\(4));

-- Location: LCCOMB_X8_Y6_N18
\EU|readdatamux|dout[4]~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdatamux|dout[4]~4_combout\ = (!\CU|present_state.read_virtconf~q\ & \EU|synchronizer_inst|EU|outpipe|dout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.read_virtconf~q\,
	datad => \EU|synchronizer_inst|EU|outpipe|dout\(4),
	combout => \EU|readdatamux|dout[4]~4_combout\);

-- Location: IOIBUF_X5_Y0_N15
\hram_DQ[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hram_DQ(5),
	o => \hram_DQ[5]~input_o\);

-- Location: LCCOMB_X9_Y3_N22
\EU|readdata_converter|lsb|dout[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata_converter|lsb|dout[5]~feeder_combout\ = \hram_DQ[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hram_DQ[5]~input_o\,
	combout => \EU|readdata_converter|lsb|dout[5]~feeder_combout\);

-- Location: FF_X9_Y3_N23
\EU|readdata_converter|lsb|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_hram_RWDS_in_90shift~inputclkctrl_outclk\,
	d => \EU|readdata_converter|lsb|dout[5]~feeder_combout\,
	ena => \CU|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata_converter|lsb|dout\(5));

-- Location: FF_X9_Y3_N15
\EU|synchronizer_inst|EU|din10|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|lsb|dout\(5),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din10|dout\(5));

-- Location: LCCOMB_X10_Y3_N30
\EU|synchronizer_inst|EU|din11|dout[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din11|dout[5]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(5),
	combout => \EU|synchronizer_inst|EU|din11|dout[5]~feeder_combout\);

-- Location: FF_X10_Y3_N31
\EU|synchronizer_inst|EU|din11|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din11|dout[5]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din11|dout\(5));

-- Location: LCCOMB_X7_Y3_N22
\EU|synchronizer_inst|EU|din00|dout[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din00|dout[5]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(5),
	combout => \EU|synchronizer_inst|EU|din00|dout[5]~feeder_combout\);

-- Location: FF_X7_Y3_N23
\EU|synchronizer_inst|EU|din00|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din00|dout[5]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|din00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din00|dout\(5));

-- Location: LCCOMB_X7_Y3_N0
\EU|synchronizer_inst|EU|din01|dout[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din01|dout[5]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(5),
	combout => \EU|synchronizer_inst|EU|din01|dout[5]~feeder_combout\);

-- Location: FF_X7_Y3_N1
\EU|synchronizer_inst|EU|din01|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din01|dout[5]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din01|dout\(5));

-- Location: LCCOMB_X10_Y3_N28
\EU|synchronizer_inst|EU|datamux|Mux10~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux10~0_combout\ = (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\) # (\EU|synchronizer_inst|EU|din01|dout\(5))))) # 
-- (!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & (\EU|synchronizer_inst|EU|din00|dout\(5) & (!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din00|dout\(5),
	datab => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	datac => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|din01|dout\(5),
	combout => \EU|synchronizer_inst|EU|datamux|Mux10~0_combout\);

-- Location: LCCOMB_X10_Y3_N26
\EU|synchronizer_inst|EU|datamux|Mux10~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux10~1_combout\ = (\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|datamux|Mux10~0_combout\ & ((\EU|synchronizer_inst|EU|din11|dout\(5)))) # 
-- (!\EU|synchronizer_inst|EU|datamux|Mux10~0_combout\ & (\EU|synchronizer_inst|EU|din10|dout\(5))))) # (!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (((\EU|synchronizer_inst|EU|datamux|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din10|dout\(5),
	datab => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|synchronizer_inst|EU|din11|dout\(5),
	datad => \EU|synchronizer_inst|EU|datamux|Mux10~0_combout\,
	combout => \EU|synchronizer_inst|EU|datamux|Mux10~1_combout\);

-- Location: FF_X10_Y3_N27
\EU|synchronizer_inst|EU|outreg|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|datamux|Mux10~1_combout\,
	ena => \EU|synchronizer_inst|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outreg|dout\(5));

-- Location: LCCOMB_X8_Y6_N24
\EU|synchronizer_inst|EU|outpipe|dout~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|outpipe|dout~5_combout\ = (\EU|synchronizer_inst|CU|present_state.reset~q\ & \EU|synchronizer_inst|EU|outreg|dout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.reset~q\,
	datad => \EU|synchronizer_inst|EU|outreg|dout\(5),
	combout => \EU|synchronizer_inst|EU|outpipe|dout~5_combout\);

-- Location: FF_X8_Y6_N25
\EU|synchronizer_inst|EU|outpipe|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|outpipe|dout~5_combout\,
	ena => \EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outpipe|dout\(5));

-- Location: LCCOMB_X8_Y6_N30
\EU|readdatamux|dout[5]~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdatamux|dout[5]~5_combout\ = (!\CU|present_state.read_virtconf~q\ & \EU|synchronizer_inst|EU|outpipe|dout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.read_virtconf~q\,
	datad => \EU|synchronizer_inst|EU|outpipe|dout\(5),
	combout => \EU|readdatamux|dout[5]~5_combout\);

-- Location: IOIBUF_X0_Y7_N8
\hram_DQ[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hram_DQ(6),
	o => \hram_DQ[6]~input_o\);

-- Location: FF_X9_Y3_N17
\EU|readdata_converter|lsb|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_hram_RWDS_in_90shift~inputclkctrl_outclk\,
	asdata => \hram_DQ[6]~input_o\,
	sload => VCC,
	ena => \CU|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata_converter|lsb|dout\(6));

-- Location: LCCOMB_X8_Y3_N12
\EU|synchronizer_inst|EU|din11|dout[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din11|dout[6]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(6),
	combout => \EU|synchronizer_inst|EU|din11|dout[6]~feeder_combout\);

-- Location: FF_X8_Y3_N13
\EU|synchronizer_inst|EU|din11|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din11|dout[6]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din11|dout\(6));

-- Location: LCCOMB_X7_Y3_N28
\EU|synchronizer_inst|EU|din01|dout[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din01|dout[6]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(6),
	combout => \EU|synchronizer_inst|EU|din01|dout[6]~feeder_combout\);

-- Location: FF_X7_Y3_N29
\EU|synchronizer_inst|EU|din01|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din01|dout[6]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din01|dout\(6));

-- Location: LCCOMB_X7_Y3_N10
\EU|synchronizer_inst|EU|din00|dout[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din00|dout[6]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(6),
	combout => \EU|synchronizer_inst|EU|din00|dout[6]~feeder_combout\);

-- Location: FF_X7_Y3_N11
\EU|synchronizer_inst|EU|din00|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din00|dout[6]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|din00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din00|dout\(6));

-- Location: LCCOMB_X9_Y3_N28
\EU|synchronizer_inst|EU|din10|dout[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din10|dout[6]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(6),
	combout => \EU|synchronizer_inst|EU|din10|dout[6]~feeder_combout\);

-- Location: FF_X9_Y3_N29
\EU|synchronizer_inst|EU|din10|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din10|dout[6]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din10|dout\(6));

-- Location: LCCOMB_X8_Y3_N14
\EU|synchronizer_inst|EU|datamux|Mux9~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux9~0_combout\ = (\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (((\EU|synchronizer_inst|EU|din10|dout\(6)) # (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\)))) # 
-- (!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (\EU|synchronizer_inst|EU|din00|dout\(6) & ((!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din00|dout\(6),
	datab => \EU|synchronizer_inst|EU|din10|dout\(6),
	datac => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|synchronizer_inst|EU|datamux|Mux9~0_combout\);

-- Location: LCCOMB_X8_Y3_N16
\EU|synchronizer_inst|EU|datamux|Mux9~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux9~1_combout\ = (\EU|synchronizer_inst|EU|datamux|Mux9~0_combout\ & ((\EU|synchronizer_inst|EU|din11|dout\(6)) # ((!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\)))) # 
-- (!\EU|synchronizer_inst|EU|datamux|Mux9~0_combout\ & (((\EU|synchronizer_inst|EU|din01|dout\(6) & \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din11|dout\(6),
	datab => \EU|synchronizer_inst|EU|din01|dout\(6),
	datac => \EU|synchronizer_inst|EU|datamux|Mux9~0_combout\,
	datad => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|synchronizer_inst|EU|datamux|Mux9~1_combout\);

-- Location: FF_X8_Y3_N17
\EU|synchronizer_inst|EU|outreg|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|datamux|Mux9~1_combout\,
	ena => \EU|synchronizer_inst|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outreg|dout\(6));

-- Location: LCCOMB_X8_Y6_N20
\EU|synchronizer_inst|EU|outpipe|dout~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|outpipe|dout~6_combout\ = (\EU|synchronizer_inst|EU|outreg|dout\(6) & \EU|synchronizer_inst|CU|present_state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|synchronizer_inst|EU|outreg|dout\(6),
	datad => \EU|synchronizer_inst|CU|present_state.reset~q\,
	combout => \EU|synchronizer_inst|EU|outpipe|dout~6_combout\);

-- Location: FF_X8_Y6_N21
\EU|synchronizer_inst|EU|outpipe|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|outpipe|dout~6_combout\,
	ena => \EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outpipe|dout\(6));

-- Location: LCCOMB_X8_Y6_N2
\EU|readdatamux|dout[6]~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdatamux|dout[6]~6_combout\ = (!\CU|present_state.read_virtconf~q\ & \EU|synchronizer_inst|EU|outpipe|dout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.read_virtconf~q\,
	datad => \EU|synchronizer_inst|EU|outpipe|dout\(6),
	combout => \EU|readdatamux|dout[6]~6_combout\);

-- Location: IOIBUF_X1_Y0_N8
\hram_DQ[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hram_DQ(7),
	o => \hram_DQ[7]~input_o\);

-- Location: LCCOMB_X9_Y3_N30
\EU|readdata_converter|lsb|dout[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata_converter|lsb|dout[7]~feeder_combout\ = \hram_DQ[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hram_DQ[7]~input_o\,
	combout => \EU|readdata_converter|lsb|dout[7]~feeder_combout\);

-- Location: FF_X9_Y3_N31
\EU|readdata_converter|lsb|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_hram_RWDS_in_90shift~inputclkctrl_outclk\,
	d => \EU|readdata_converter|lsb|dout[7]~feeder_combout\,
	ena => \CU|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata_converter|lsb|dout\(7));

-- Location: FF_X9_Y3_N3
\EU|synchronizer_inst|EU|din10|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|lsb|dout\(7),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din10|dout\(7));

-- Location: LCCOMB_X10_Y3_N14
\EU|synchronizer_inst|EU|din11|dout[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din11|dout[7]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(7),
	combout => \EU|synchronizer_inst|EU|din11|dout[7]~feeder_combout\);

-- Location: FF_X10_Y3_N15
\EU|synchronizer_inst|EU|din11|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din11|dout[7]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din11|dout\(7));

-- Location: LCCOMB_X7_Y3_N20
\EU|synchronizer_inst|EU|din01|dout[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din01|dout[7]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(7),
	combout => \EU|synchronizer_inst|EU|din01|dout[7]~feeder_combout\);

-- Location: FF_X7_Y3_N21
\EU|synchronizer_inst|EU|din01|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din01|dout[7]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din01|dout\(7));

-- Location: LCCOMB_X7_Y3_N26
\EU|synchronizer_inst|EU|din00|dout[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din00|dout[7]~feeder_combout\ = \EU|readdata_converter|lsb|dout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|lsb|dout\(7),
	combout => \EU|synchronizer_inst|EU|din00|dout[7]~feeder_combout\);

-- Location: FF_X7_Y3_N27
\EU|synchronizer_inst|EU|din00|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din00|dout[7]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|din00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din00|dout\(7));

-- Location: LCCOMB_X10_Y3_N16
\EU|synchronizer_inst|EU|datamux|Mux8~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux8~0_combout\ = (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|din01|dout\(7)) # ((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # 
-- (!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & (((!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & \EU|synchronizer_inst|EU|din00|dout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din01|dout\(7),
	datab => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	datac => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|din00|dout\(7),
	combout => \EU|synchronizer_inst|EU|datamux|Mux8~0_combout\);

-- Location: LCCOMB_X10_Y3_N4
\EU|synchronizer_inst|EU|datamux|Mux8~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux8~1_combout\ = (\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|datamux|Mux8~0_combout\ & ((\EU|synchronizer_inst|EU|din11|dout\(7)))) # 
-- (!\EU|synchronizer_inst|EU|datamux|Mux8~0_combout\ & (\EU|synchronizer_inst|EU|din10|dout\(7))))) # (!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (((\EU|synchronizer_inst|EU|datamux|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din10|dout\(7),
	datab => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|synchronizer_inst|EU|din11|dout\(7),
	datad => \EU|synchronizer_inst|EU|datamux|Mux8~0_combout\,
	combout => \EU|synchronizer_inst|EU|datamux|Mux8~1_combout\);

-- Location: FF_X10_Y3_N5
\EU|synchronizer_inst|EU|outreg|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|datamux|Mux8~1_combout\,
	ena => \EU|synchronizer_inst|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outreg|dout\(7));

-- Location: LCCOMB_X8_Y6_N16
\EU|synchronizer_inst|EU|outpipe|dout~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|outpipe|dout~7_combout\ = (\EU|synchronizer_inst|CU|present_state.reset~q\ & \EU|synchronizer_inst|EU|outreg|dout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.reset~q\,
	datad => \EU|synchronizer_inst|EU|outreg|dout\(7),
	combout => \EU|synchronizer_inst|EU|outpipe|dout~7_combout\);

-- Location: FF_X8_Y6_N17
\EU|synchronizer_inst|EU|outpipe|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|outpipe|dout~7_combout\,
	ena => \EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outpipe|dout\(7));

-- Location: LCCOMB_X8_Y6_N10
\EU|readdatamux|dout[7]~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdatamux|dout[7]~7_combout\ = (!\CU|present_state.read_virtconf~q\ & \EU|synchronizer_inst|EU|outpipe|dout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.read_virtconf~q\,
	datad => \EU|synchronizer_inst|EU|outpipe|dout\(7),
	combout => \EU|readdatamux|dout[7]~7_combout\);

-- Location: FF_X11_Y3_N9
\EU|readdata_converter|msb|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in_90shift~inputclkctrl_outclk\,
	asdata => \hram_DQ[0]~input_o\,
	sload => VCC,
	ena => \CU|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata_converter|msb|dout\(0));

-- Location: LCCOMB_X12_Y3_N30
\EU|synchronizer_inst|EU|din00|dout[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din00|dout[8]~feeder_combout\ = \EU|readdata_converter|msb|dout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|msb|dout\(0),
	combout => \EU|synchronizer_inst|EU|din00|dout[8]~feeder_combout\);

-- Location: FF_X12_Y3_N31
\EU|synchronizer_inst|EU|din00|dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din00|dout[8]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|din00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din00|dout\(8));

-- Location: LCCOMB_X12_Y3_N20
\EU|synchronizer_inst|EU|din10|dout[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din10|dout[8]~feeder_combout\ = \EU|readdata_converter|msb|dout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|msb|dout\(0),
	combout => \EU|synchronizer_inst|EU|din10|dout[8]~feeder_combout\);

-- Location: FF_X12_Y3_N21
\EU|synchronizer_inst|EU|din10|dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din10|dout[8]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din10|dout\(8));

-- Location: LCCOMB_X12_Y3_N12
\EU|synchronizer_inst|EU|datamux|Mux7~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux7~0_combout\ = (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & 
-- ((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|din10|dout\(8)))) # (!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (\EU|synchronizer_inst|EU|din00|dout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din00|dout\(8),
	datab => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	datac => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|din10|dout\(8),
	combout => \EU|synchronizer_inst|EU|datamux|Mux7~0_combout\);

-- Location: FF_X10_Y3_N21
\EU|synchronizer_inst|EU|din11|dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|msb|dout\(0),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din11|dout\(8));

-- Location: FF_X11_Y3_N25
\EU|synchronizer_inst|EU|din01|dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|msb|dout\(0),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din01|dout\(8));

-- Location: LCCOMB_X10_Y3_N18
\EU|synchronizer_inst|EU|datamux|Mux7~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux7~1_combout\ = (\EU|synchronizer_inst|EU|datamux|Mux7~0_combout\ & ((\EU|synchronizer_inst|EU|din11|dout\(8)) # ((!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\)))) # 
-- (!\EU|synchronizer_inst|EU|datamux|Mux7~0_combout\ & (((\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & \EU|synchronizer_inst|EU|din01|dout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|datamux|Mux7~0_combout\,
	datab => \EU|synchronizer_inst|EU|din11|dout\(8),
	datac => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|din01|dout\(8),
	combout => \EU|synchronizer_inst|EU|datamux|Mux7~1_combout\);

-- Location: FF_X10_Y3_N19
\EU|synchronizer_inst|EU|outreg|dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|datamux|Mux7~1_combout\,
	ena => \EU|synchronizer_inst|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outreg|dout\(8));

-- Location: LCCOMB_X9_Y4_N28
\EU|synchronizer_inst|EU|outpipe|dout~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|outpipe|dout~8_combout\ = (\EU|synchronizer_inst|CU|present_state.reset~q\ & \EU|synchronizer_inst|EU|outreg|dout\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.reset~q\,
	datad => \EU|synchronizer_inst|EU|outreg|dout\(8),
	combout => \EU|synchronizer_inst|EU|outpipe|dout~8_combout\);

-- Location: FF_X9_Y4_N29
\EU|synchronizer_inst|EU|outpipe|dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|outpipe|dout~8_combout\,
	ena => \EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outpipe|dout\(8));

-- Location: LCCOMB_X9_Y4_N22
\EU|readdatamux|dout[8]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdatamux|dout[8]~8_combout\ = (\EU|synchronizer_inst|EU|outpipe|dout\(8) & !\CU|present_state.read_virtconf~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|synchronizer_inst|EU|outpipe|dout\(8),
	datac => \CU|present_state.read_virtconf~q\,
	combout => \EU|readdatamux|dout[8]~8_combout\);

-- Location: LCCOMB_X11_Y3_N14
\EU|readdata_converter|msb|dout[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata_converter|msb|dout[1]~feeder_combout\ = \hram_DQ[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hram_DQ[1]~input_o\,
	combout => \EU|readdata_converter|msb|dout[1]~feeder_combout\);

-- Location: FF_X11_Y3_N15
\EU|readdata_converter|msb|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in_90shift~inputclkctrl_outclk\,
	d => \EU|readdata_converter|msb|dout[1]~feeder_combout\,
	ena => \CU|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata_converter|msb|dout\(1));

-- Location: FF_X10_Y3_N23
\EU|synchronizer_inst|EU|din11|dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|msb|dout\(1),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din11|dout\(9));

-- Location: FF_X11_Y3_N31
\EU|synchronizer_inst|EU|din01|dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|msb|dout\(1),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din01|dout\(9));

-- Location: LCCOMB_X12_Y3_N16
\EU|synchronizer_inst|EU|din00|dout[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din00|dout[9]~feeder_combout\ = \EU|readdata_converter|msb|dout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|msb|dout\(1),
	combout => \EU|synchronizer_inst|EU|din00|dout[9]~feeder_combout\);

-- Location: FF_X12_Y3_N17
\EU|synchronizer_inst|EU|din00|dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din00|dout[9]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|din00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din00|dout\(9));

-- Location: LCCOMB_X12_Y3_N14
\EU|synchronizer_inst|EU|datamux|Mux6~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux6~0_combout\ = (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|din01|dout\(9)) # ((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # 
-- (!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & (((!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & \EU|synchronizer_inst|EU|din00|dout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din01|dout\(9),
	datab => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	datac => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|din00|dout\(9),
	combout => \EU|synchronizer_inst|EU|datamux|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y3_N22
\EU|synchronizer_inst|EU|din10|dout[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din10|dout[9]~feeder_combout\ = \EU|readdata_converter|msb|dout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|msb|dout\(1),
	combout => \EU|synchronizer_inst|EU|din10|dout[9]~feeder_combout\);

-- Location: FF_X12_Y3_N23
\EU|synchronizer_inst|EU|din10|dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din10|dout[9]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din10|dout\(9));

-- Location: LCCOMB_X10_Y3_N0
\EU|synchronizer_inst|EU|datamux|Mux6~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux6~1_combout\ = (\EU|synchronizer_inst|EU|datamux|Mux6~0_combout\ & ((\EU|synchronizer_inst|EU|din11|dout\(9)) # ((!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # 
-- (!\EU|synchronizer_inst|EU|datamux|Mux6~0_combout\ & (((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & \EU|synchronizer_inst|EU|din10|dout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din11|dout\(9),
	datab => \EU|synchronizer_inst|EU|datamux|Mux6~0_combout\,
	datac => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|din10|dout\(9),
	combout => \EU|synchronizer_inst|EU|datamux|Mux6~1_combout\);

-- Location: FF_X10_Y3_N1
\EU|synchronizer_inst|EU|outreg|dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|datamux|Mux6~1_combout\,
	ena => \EU|synchronizer_inst|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outreg|dout\(9));

-- Location: LCCOMB_X9_Y4_N8
\EU|synchronizer_inst|EU|outpipe|dout~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|outpipe|dout~9_combout\ = (\EU|synchronizer_inst|CU|present_state.reset~q\ & \EU|synchronizer_inst|EU|outreg|dout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.reset~q\,
	datad => \EU|synchronizer_inst|EU|outreg|dout\(9),
	combout => \EU|synchronizer_inst|EU|outpipe|dout~9_combout\);

-- Location: FF_X9_Y4_N9
\EU|synchronizer_inst|EU|outpipe|dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|outpipe|dout~9_combout\,
	ena => \EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outpipe|dout\(9));

-- Location: LCCOMB_X9_Y4_N10
\EU|readdatamux|dout[9]~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdatamux|dout[9]~9_combout\ = (\EU|synchronizer_inst|EU|outpipe|dout\(9) & !\CU|present_state.read_virtconf~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|synchronizer_inst|EU|outpipe|dout\(9),
	datac => \CU|present_state.read_virtconf~q\,
	combout => \EU|readdatamux|dout[9]~9_combout\);

-- Location: LCCOMB_X11_Y3_N20
\EU|readdata_converter|msb|dout[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata_converter|msb|dout[2]~feeder_combout\ = \hram_DQ[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hram_DQ[2]~input_o\,
	combout => \EU|readdata_converter|msb|dout[2]~feeder_combout\);

-- Location: FF_X11_Y3_N21
\EU|readdata_converter|msb|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in_90shift~inputclkctrl_outclk\,
	d => \EU|readdata_converter|msb|dout[2]~feeder_combout\,
	ena => \CU|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata_converter|msb|dout\(2));

-- Location: FF_X10_Y3_N13
\EU|synchronizer_inst|EU|din11|dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|msb|dout\(2),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din11|dout\(10));

-- Location: LCCOMB_X11_Y3_N28
\EU|synchronizer_inst|EU|din01|dout[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din01|dout[10]~feeder_combout\ = \EU|readdata_converter|msb|dout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|msb|dout\(2),
	combout => \EU|synchronizer_inst|EU|din01|dout[10]~feeder_combout\);

-- Location: FF_X11_Y3_N29
\EU|synchronizer_inst|EU|din01|dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din01|dout[10]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din01|dout\(10));

-- Location: LCCOMB_X12_Y3_N26
\EU|synchronizer_inst|EU|din00|dout[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din00|dout[10]~feeder_combout\ = \EU|readdata_converter|msb|dout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|msb|dout\(2),
	combout => \EU|synchronizer_inst|EU|din00|dout[10]~feeder_combout\);

-- Location: FF_X12_Y3_N27
\EU|synchronizer_inst|EU|din00|dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din00|dout[10]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|din00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din00|dout\(10));

-- Location: LCCOMB_X12_Y3_N24
\EU|synchronizer_inst|EU|din10|dout[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din10|dout[10]~feeder_combout\ = \EU|readdata_converter|msb|dout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|msb|dout\(2),
	combout => \EU|synchronizer_inst|EU|din10|dout[10]~feeder_combout\);

-- Location: FF_X12_Y3_N25
\EU|synchronizer_inst|EU|din10|dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din10|dout[10]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din10|dout\(10));

-- Location: LCCOMB_X12_Y3_N8
\EU|synchronizer_inst|EU|datamux|Mux5~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux5~0_combout\ = (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & 
-- ((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|din10|dout\(10)))) # (!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (\EU|synchronizer_inst|EU|din00|dout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din00|dout\(10),
	datab => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	datac => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|din10|dout\(10),
	combout => \EU|synchronizer_inst|EU|datamux|Mux5~0_combout\);

-- Location: LCCOMB_X10_Y3_N6
\EU|synchronizer_inst|EU|datamux|Mux5~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux5~1_combout\ = (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|datamux|Mux5~0_combout\ & (\EU|synchronizer_inst|EU|din11|dout\(10))) # 
-- (!\EU|synchronizer_inst|EU|datamux|Mux5~0_combout\ & ((\EU|synchronizer_inst|EU|din01|dout\(10)))))) # (!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|synchronizer_inst|EU|datamux|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din11|dout\(10),
	datab => \EU|synchronizer_inst|EU|din01|dout\(10),
	datac => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|datamux|Mux5~0_combout\,
	combout => \EU|synchronizer_inst|EU|datamux|Mux5~1_combout\);

-- Location: FF_X10_Y3_N7
\EU|synchronizer_inst|EU|outreg|dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|datamux|Mux5~1_combout\,
	ena => \EU|synchronizer_inst|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outreg|dout\(10));

-- Location: LCCOMB_X9_Y4_N4
\EU|synchronizer_inst|EU|outpipe|dout~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|outpipe|dout~10_combout\ = (\EU|synchronizer_inst|CU|present_state.reset~q\ & \EU|synchronizer_inst|EU|outreg|dout\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.reset~q\,
	datac => \EU|synchronizer_inst|EU|outreg|dout\(10),
	combout => \EU|synchronizer_inst|EU|outpipe|dout~10_combout\);

-- Location: FF_X9_Y4_N5
\EU|synchronizer_inst|EU|outpipe|dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|outpipe|dout~10_combout\,
	ena => \EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outpipe|dout\(10));

-- Location: LCCOMB_X9_Y4_N18
\EU|readdatamux|dout[10]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdatamux|dout[10]~10_combout\ = (\EU|synchronizer_inst|EU|outpipe|dout\(10) & !\CU|present_state.read_virtconf~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|synchronizer_inst|EU|outpipe|dout\(10),
	datac => \CU|present_state.read_virtconf~q\,
	combout => \EU|readdatamux|dout[10]~10_combout\);

-- Location: LCCOMB_X11_Y3_N18
\EU|readdata_converter|msb|dout[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata_converter|msb|dout[3]~feeder_combout\ = \hram_DQ[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hram_DQ[3]~input_o\,
	combout => \EU|readdata_converter|msb|dout[3]~feeder_combout\);

-- Location: FF_X11_Y3_N19
\EU|readdata_converter|msb|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in_90shift~inputclkctrl_outclk\,
	d => \EU|readdata_converter|msb|dout[3]~feeder_combout\,
	ena => \CU|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata_converter|msb|dout\(3));

-- Location: FF_X12_Y4_N31
\EU|synchronizer_inst|EU|din10|dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|msb|dout\(3),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din10|dout\(11));

-- Location: LCCOMB_X11_Y4_N24
\EU|synchronizer_inst|EU|din11|dout[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din11|dout[11]~feeder_combout\ = \EU|readdata_converter|msb|dout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|msb|dout\(3),
	combout => \EU|synchronizer_inst|EU|din11|dout[11]~feeder_combout\);

-- Location: FF_X11_Y4_N25
\EU|synchronizer_inst|EU|din11|dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din11|dout[11]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din11|dout\(11));

-- Location: FF_X11_Y3_N3
\EU|synchronizer_inst|EU|din01|dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|msb|dout\(3),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din01|dout\(11));

-- Location: LCCOMB_X12_Y3_N10
\EU|synchronizer_inst|EU|din00|dout[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din00|dout[11]~feeder_combout\ = \EU|readdata_converter|msb|dout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|msb|dout\(3),
	combout => \EU|synchronizer_inst|EU|din00|dout[11]~feeder_combout\);

-- Location: FF_X12_Y3_N11
\EU|synchronizer_inst|EU|din00|dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din00|dout[11]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|din00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din00|dout\(11));

-- Location: LCCOMB_X12_Y3_N0
\EU|synchronizer_inst|EU|datamux|Mux4~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux4~0_combout\ = (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|din01|dout\(11)) # ((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # 
-- (!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & (((!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & \EU|synchronizer_inst|EU|din00|dout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din01|dout\(11),
	datab => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	datac => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|din00|dout\(11),
	combout => \EU|synchronizer_inst|EU|datamux|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y4_N8
\EU|synchronizer_inst|EU|datamux|Mux4~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux4~1_combout\ = (\EU|synchronizer_inst|EU|datamux|Mux4~0_combout\ & (((\EU|synchronizer_inst|EU|din11|dout\(11)) # (!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # 
-- (!\EU|synchronizer_inst|EU|datamux|Mux4~0_combout\ & (\EU|synchronizer_inst|EU|din10|dout\(11) & ((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din10|dout\(11),
	datab => \EU|synchronizer_inst|EU|din11|dout\(11),
	datac => \EU|synchronizer_inst|EU|datamux|Mux4~0_combout\,
	datad => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|synchronizer_inst|EU|datamux|Mux4~1_combout\);

-- Location: FF_X12_Y4_N9
\EU|synchronizer_inst|EU|outreg|dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|datamux|Mux4~1_combout\,
	ena => \EU|synchronizer_inst|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outreg|dout\(11));

-- Location: LCCOMB_X9_Y4_N16
\EU|synchronizer_inst|EU|outpipe|dout~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|outpipe|dout~11_combout\ = (\EU|synchronizer_inst|CU|present_state.reset~q\ & \EU|synchronizer_inst|EU|outreg|dout\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.reset~q\,
	datad => \EU|synchronizer_inst|EU|outreg|dout\(11),
	combout => \EU|synchronizer_inst|EU|outpipe|dout~11_combout\);

-- Location: FF_X9_Y4_N17
\EU|synchronizer_inst|EU|outpipe|dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|outpipe|dout~11_combout\,
	ena => \EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outpipe|dout\(11));

-- Location: LCCOMB_X9_Y4_N14
\EU|readdatamux|dout[11]~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdatamux|dout[11]~11_combout\ = (\EU|synchronizer_inst|EU|outpipe|dout\(11) & !\CU|present_state.read_virtconf~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|synchronizer_inst|EU|outpipe|dout\(11),
	datac => \CU|present_state.read_virtconf~q\,
	combout => \EU|readdatamux|dout[11]~11_combout\);

-- Location: LCCOMB_X11_Y3_N12
\EU|readdata_converter|msb|dout[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata_converter|msb|dout[4]~feeder_combout\ = \hram_DQ[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hram_DQ[4]~input_o\,
	combout => \EU|readdata_converter|msb|dout[4]~feeder_combout\);

-- Location: FF_X11_Y3_N13
\EU|readdata_converter|msb|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in_90shift~inputclkctrl_outclk\,
	d => \EU|readdata_converter|msb|dout[4]~feeder_combout\,
	ena => \CU|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata_converter|msb|dout\(4));

-- Location: FF_X11_Y4_N17
\EU|synchronizer_inst|EU|din11|dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|msb|dout\(4),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din11|dout\(12));

-- Location: LCCOMB_X11_Y3_N16
\EU|synchronizer_inst|EU|din01|dout[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din01|dout[12]~feeder_combout\ = \EU|readdata_converter|msb|dout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|msb|dout\(4),
	combout => \EU|synchronizer_inst|EU|din01|dout[12]~feeder_combout\);

-- Location: FF_X11_Y3_N17
\EU|synchronizer_inst|EU|din01|dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din01|dout[12]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din01|dout\(12));

-- Location: FF_X12_Y4_N25
\EU|synchronizer_inst|EU|din10|dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|msb|dout\(4),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din10|dout\(12));

-- Location: FF_X11_Y4_N23
\EU|synchronizer_inst|EU|din00|dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|msb|dout\(4),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|din00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din00|dout\(12));

-- Location: LCCOMB_X12_Y4_N18
\EU|synchronizer_inst|EU|datamux|Mux3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux3~0_combout\ = (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & 
-- ((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (\EU|synchronizer_inst|EU|din10|dout\(12))) # (!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|din00|dout\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din10|dout\(12),
	datab => \EU|synchronizer_inst|EU|din00|dout\(12),
	datac => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|synchronizer_inst|EU|datamux|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y4_N22
\EU|synchronizer_inst|EU|datamux|Mux3~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux3~1_combout\ = (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|datamux|Mux3~0_combout\ & (\EU|synchronizer_inst|EU|din11|dout\(12))) # 
-- (!\EU|synchronizer_inst|EU|datamux|Mux3~0_combout\ & ((\EU|synchronizer_inst|EU|din01|dout\(12)))))) # (!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|synchronizer_inst|EU|datamux|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din11|dout\(12),
	datab => \EU|synchronizer_inst|EU|din01|dout\(12),
	datac => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|datamux|Mux3~0_combout\,
	combout => \EU|synchronizer_inst|EU|datamux|Mux3~1_combout\);

-- Location: FF_X12_Y4_N23
\EU|synchronizer_inst|EU|outreg|dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|datamux|Mux3~1_combout\,
	ena => \EU|synchronizer_inst|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outreg|dout\(12));

-- Location: LCCOMB_X9_Y4_N12
\EU|synchronizer_inst|EU|outpipe|dout~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|outpipe|dout~12_combout\ = (\EU|synchronizer_inst|CU|present_state.reset~q\ & \EU|synchronizer_inst|EU|outreg|dout\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.reset~q\,
	datad => \EU|synchronizer_inst|EU|outreg|dout\(12),
	combout => \EU|synchronizer_inst|EU|outpipe|dout~12_combout\);

-- Location: FF_X9_Y4_N13
\EU|synchronizer_inst|EU|outpipe|dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|outpipe|dout~12_combout\,
	ena => \EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outpipe|dout\(12));

-- Location: LCCOMB_X9_Y4_N30
\EU|readdatamux|dout[12]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdatamux|dout[12]~12_combout\ = (\EU|synchronizer_inst|EU|outpipe|dout\(12) & !\CU|present_state.read_virtconf~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|outpipe|dout\(12),
	datac => \CU|present_state.read_virtconf~q\,
	combout => \EU|readdatamux|dout[12]~12_combout\);

-- Location: LCCOMB_X11_Y3_N6
\EU|readdata_converter|msb|dout[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata_converter|msb|dout[5]~feeder_combout\ = \hram_DQ[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hram_DQ[5]~input_o\,
	combout => \EU|readdata_converter|msb|dout[5]~feeder_combout\);

-- Location: FF_X11_Y3_N7
\EU|readdata_converter|msb|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in_90shift~inputclkctrl_outclk\,
	d => \EU|readdata_converter|msb|dout[5]~feeder_combout\,
	ena => \CU|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata_converter|msb|dout\(5));

-- Location: LCCOMB_X11_Y4_N14
\EU|synchronizer_inst|EU|din11|dout[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din11|dout[13]~feeder_combout\ = \EU|readdata_converter|msb|dout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|msb|dout\(5),
	combout => \EU|synchronizer_inst|EU|din11|dout[13]~feeder_combout\);

-- Location: FF_X11_Y4_N15
\EU|synchronizer_inst|EU|din11|dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din11|dout[13]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din11|dout\(13));

-- Location: LCCOMB_X11_Y3_N26
\EU|synchronizer_inst|EU|din01|dout[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din01|dout[13]~feeder_combout\ = \EU|readdata_converter|msb|dout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|msb|dout\(5),
	combout => \EU|synchronizer_inst|EU|din01|dout[13]~feeder_combout\);

-- Location: FF_X11_Y3_N27
\EU|synchronizer_inst|EU|din01|dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din01|dout[13]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din01|dout\(13));

-- Location: FF_X12_Y3_N19
\EU|synchronizer_inst|EU|din00|dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|msb|dout\(5),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|din00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din00|dout\(13));

-- Location: LCCOMB_X12_Y4_N14
\EU|synchronizer_inst|EU|datamux|Mux2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux2~0_combout\ = (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|din01|dout\(13)) # ((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # 
-- (!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|synchronizer_inst|EU|din00|dout\(13) & !\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din01|dout\(13),
	datab => \EU|synchronizer_inst|EU|din00|dout\(13),
	datac => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|synchronizer_inst|EU|datamux|Mux2~0_combout\);

-- Location: FF_X12_Y4_N17
\EU|synchronizer_inst|EU|din10|dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|msb|dout\(5),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din10|dout\(13));

-- Location: LCCOMB_X12_Y4_N28
\EU|synchronizer_inst|EU|datamux|Mux2~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux2~1_combout\ = (\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|datamux|Mux2~0_combout\ & (\EU|synchronizer_inst|EU|din11|dout\(13))) # 
-- (!\EU|synchronizer_inst|EU|datamux|Mux2~0_combout\ & ((\EU|synchronizer_inst|EU|din10|dout\(13)))))) # (!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (((\EU|synchronizer_inst|EU|datamux|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din11|dout\(13),
	datab => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|synchronizer_inst|EU|datamux|Mux2~0_combout\,
	datad => \EU|synchronizer_inst|EU|din10|dout\(13),
	combout => \EU|synchronizer_inst|EU|datamux|Mux2~1_combout\);

-- Location: FF_X12_Y4_N29
\EU|synchronizer_inst|EU|outreg|dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|datamux|Mux2~1_combout\,
	ena => \EU|synchronizer_inst|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outreg|dout\(13));

-- Location: LCCOMB_X9_Y4_N0
\EU|synchronizer_inst|EU|outpipe|dout~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|outpipe|dout~13_combout\ = (\EU|synchronizer_inst|CU|present_state.reset~q\ & \EU|synchronizer_inst|EU|outreg|dout\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.reset~q\,
	datac => \EU|synchronizer_inst|EU|outreg|dout\(13),
	combout => \EU|synchronizer_inst|EU|outpipe|dout~13_combout\);

-- Location: FF_X9_Y4_N1
\EU|synchronizer_inst|EU|outpipe|dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|outpipe|dout~13_combout\,
	ena => \EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outpipe|dout\(13));

-- Location: LCCOMB_X9_Y4_N26
\EU|readdatamux|dout[13]~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdatamux|dout[13]~13_combout\ = (\EU|synchronizer_inst|EU|outpipe|dout\(13) & !\CU|present_state.read_virtconf~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|synchronizer_inst|EU|outpipe|dout\(13),
	datac => \CU|present_state.read_virtconf~q\,
	combout => \EU|readdatamux|dout[13]~13_combout\);

-- Location: FF_X11_Y3_N5
\EU|readdata_converter|msb|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in_90shift~inputclkctrl_outclk\,
	asdata => \hram_DQ[6]~input_o\,
	sload => VCC,
	ena => \CU|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata_converter|msb|dout\(6));

-- Location: FF_X11_Y3_N1
\EU|synchronizer_inst|EU|din01|dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|msb|dout\(6),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din01|dout\(14));

-- Location: LCCOMB_X11_Y4_N20
\EU|synchronizer_inst|EU|din11|dout[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din11|dout[14]~feeder_combout\ = \EU|readdata_converter|msb|dout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|msb|dout\(6),
	combout => \EU|synchronizer_inst|EU|din11|dout[14]~feeder_combout\);

-- Location: FF_X11_Y4_N21
\EU|synchronizer_inst|EU|din11|dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din11|dout[14]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din11|dout\(14));

-- Location: FF_X12_Y3_N29
\EU|synchronizer_inst|EU|din00|dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|msb|dout\(6),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|din00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din00|dout\(14));

-- Location: LCCOMB_X12_Y4_N20
\EU|synchronizer_inst|EU|din10|dout[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din10|dout[14]~feeder_combout\ = \EU|readdata_converter|msb|dout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|msb|dout\(6),
	combout => \EU|synchronizer_inst|EU|din10|dout[14]~feeder_combout\);

-- Location: FF_X12_Y4_N21
\EU|synchronizer_inst|EU|din10|dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din10|dout[14]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din10|dout\(14));

-- Location: LCCOMB_X12_Y4_N2
\EU|synchronizer_inst|EU|datamux|Mux1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux1~0_combout\ = (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & (\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\)) # (!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & 
-- ((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|din10|dout\(14)))) # (!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (\EU|synchronizer_inst|EU|din00|dout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|synchronizer_inst|EU|din00|dout\(14),
	datad => \EU|synchronizer_inst|EU|din10|dout\(14),
	combout => \EU|synchronizer_inst|EU|datamux|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y4_N26
\EU|synchronizer_inst|EU|datamux|Mux1~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux1~1_combout\ = (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|datamux|Mux1~0_combout\ & ((\EU|synchronizer_inst|EU|din11|dout\(14)))) # 
-- (!\EU|synchronizer_inst|EU|datamux|Mux1~0_combout\ & (\EU|synchronizer_inst|EU|din01|dout\(14))))) # (!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|synchronizer_inst|EU|datamux|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|din01|dout\(14),
	datab => \EU|synchronizer_inst|EU|din11|dout\(14),
	datac => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	datad => \EU|synchronizer_inst|EU|datamux|Mux1~0_combout\,
	combout => \EU|synchronizer_inst|EU|datamux|Mux1~1_combout\);

-- Location: FF_X12_Y4_N27
\EU|synchronizer_inst|EU|outreg|dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|datamux|Mux1~1_combout\,
	ena => \EU|synchronizer_inst|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outreg|dout\(14));

-- Location: LCCOMB_X9_Y4_N24
\EU|synchronizer_inst|EU|outpipe|dout~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|outpipe|dout~14_combout\ = (\EU|synchronizer_inst|CU|present_state.reset~q\ & \EU|synchronizer_inst|EU|outreg|dout\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.reset~q\,
	datad => \EU|synchronizer_inst|EU|outreg|dout\(14),
	combout => \EU|synchronizer_inst|EU|outpipe|dout~14_combout\);

-- Location: FF_X9_Y4_N25
\EU|synchronizer_inst|EU|outpipe|dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|outpipe|dout~14_combout\,
	ena => \EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outpipe|dout\(14));

-- Location: LCCOMB_X9_Y4_N2
\EU|readdatamux|dout[14]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdatamux|dout[14]~14_combout\ = (\EU|synchronizer_inst|EU|outpipe|dout\(14) & !\CU|present_state.read_virtconf~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|synchronizer_inst|EU|outpipe|dout\(14),
	datac => \CU|present_state.read_virtconf~q\,
	combout => \EU|readdatamux|dout[14]~14_combout\);

-- Location: LCCOMB_X11_Y3_N10
\EU|readdata_converter|msb|dout[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata_converter|msb|dout[7]~feeder_combout\ = \hram_DQ[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hram_DQ[7]~input_o\,
	combout => \EU|readdata_converter|msb|dout[7]~feeder_combout\);

-- Location: FF_X11_Y3_N11
\EU|readdata_converter|msb|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in_90shift~inputclkctrl_outclk\,
	d => \EU|readdata_converter|msb|dout[7]~feeder_combout\,
	ena => \CU|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata_converter|msb|dout\(7));

-- Location: LCCOMB_X11_Y3_N22
\EU|synchronizer_inst|EU|din01|dout[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din01|dout[15]~feeder_combout\ = \EU|readdata_converter|msb|dout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|msb|dout\(7),
	combout => \EU|synchronizer_inst|EU|din01|dout[15]~feeder_combout\);

-- Location: FF_X11_Y3_N23
\EU|synchronizer_inst|EU|din01|dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din01|dout[15]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din01|dout\(15));

-- Location: FF_X11_Y4_N19
\EU|synchronizer_inst|EU|din00|dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|msb|dout\(7),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|din00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din00|dout\(15));

-- Location: LCCOMB_X12_Y4_N6
\EU|synchronizer_inst|EU|datamux|Mux0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux0~0_combout\ = (\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\) # ((\EU|synchronizer_inst|EU|din01|dout\(15))))) # 
-- (!\EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\ & (!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|din00|dout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|synchronizer_inst|EU|din01|dout\(15),
	datad => \EU|synchronizer_inst|EU|din00|dout\(15),
	combout => \EU|synchronizer_inst|EU|datamux|Mux0~0_combout\);

-- Location: FF_X11_Y4_N5
\EU|synchronizer_inst|EU|din11|dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	asdata => \EU|readdata_converter|msb|dout\(7),
	sload => VCC,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din11|dout\(15));

-- Location: LCCOMB_X12_Y4_N12
\EU|synchronizer_inst|EU|din10|dout[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|din10|dout[15]~feeder_combout\ = \EU|readdata_converter|msb|dout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|readdata_converter|msb|dout\(7),
	combout => \EU|synchronizer_inst|EU|din10|dout[15]~feeder_combout\);

-- Location: FF_X12_Y4_N13
\EU|synchronizer_inst|EU|din10|dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hram_RWDS_in~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|din10|dout[15]~feeder_combout\,
	ena => \EU|synchronizer_inst|EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|din10|dout\(15));

-- Location: LCCOMB_X12_Y4_N4
\EU|synchronizer_inst|EU|datamux|Mux0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|datamux|Mux0~1_combout\ = (\EU|synchronizer_inst|EU|datamux|Mux0~0_combout\ & (((\EU|synchronizer_inst|EU|din11|dout\(15))) # (!\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\))) # 
-- (!\EU|synchronizer_inst|EU|datamux|Mux0~0_combout\ & (\EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|synchronizer_inst|EU|din10|dout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|EU|datamux|Mux0~0_combout\,
	datab => \EU|synchronizer_inst|EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|synchronizer_inst|EU|din11|dout\(15),
	datad => \EU|synchronizer_inst|EU|din10|dout\(15),
	combout => \EU|synchronizer_inst|EU|datamux|Mux0~1_combout\);

-- Location: FF_X12_Y4_N5
\EU|synchronizer_inst|EU|outreg|dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|datamux|Mux0~1_combout\,
	ena => \EU|synchronizer_inst|CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outreg|dout\(15));

-- Location: LCCOMB_X9_Y4_N20
\EU|synchronizer_inst|EU|outpipe|dout~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer_inst|EU|outpipe|dout~15_combout\ = (\EU|synchronizer_inst|CU|present_state.reset~q\ & \EU|synchronizer_inst|EU|outreg|dout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer_inst|CU|present_state.reset~q\,
	datad => \EU|synchronizer_inst|EU|outreg|dout\(15),
	combout => \EU|synchronizer_inst|EU|outpipe|dout~15_combout\);

-- Location: FF_X9_Y4_N21
\EU|synchronizer_inst|EU|outpipe|dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|synchronizer_inst|EU|outpipe|dout~15_combout\,
	ena => \EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|outpipe|dout\(15));

-- Location: LCCOMB_X9_Y4_N6
\EU|readdatamux|dout[15]~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdatamux|dout[15]~15_combout\ = (\EU|synchronizer_inst|EU|outpipe|dout\(15) & !\CU|present_state.read_virtconf~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|synchronizer_inst|EU|outpipe|dout\(15),
	datac => \CU|present_state.read_virtconf~q\,
	combout => \EU|readdatamux|dout[15]~15_combout\);

-- Location: FF_X8_Y4_N19
\EU|synchronizer_inst|EU|valid_pipe|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \EU|synchronizer_inst|CU|present_state.reception~q\,
	sload => VCC,
	ena => \EU|synchronizer_inst|CU|ALT_INV_present_state.idle_disabled~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer_inst|EU|valid_pipe|dout~q\);

-- Location: LCCOMB_X8_Y4_N18
\EU|avs_readdatavalid\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|avs_readdatavalid~combout\ = (\CU|present_state.read_virtconf~q\) # (\EU|synchronizer_inst|EU|valid_pipe|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.read_virtconf~q\,
	datac => \EU|synchronizer_inst|EU|valid_pipe|dout~q\,
	combout => \EU|avs_readdatavalid~combout\);

-- Location: LCCOMB_X4_Y5_N20
\CU|hbus_RESET_n~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|hbus_RESET_n~0_combout\ = (\CU|present_state.reset_wait~q\) # (!\CU|present_state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.reset~q\,
	datac => \CU|present_state.reset_wait~q\,
	combout => \CU|hbus_RESET_n~0_combout\);

-- Location: LCCOMB_X5_Y2_N26
\CU|WideOr16~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr16~0_combout\ = (\CU|present_state.read_virtconf~q\) # ((\CU|present_state.synch_restoring_1~q\) # (\CU|present_state.synch_restoring_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.read_virtconf~q\,
	datac => \CU|present_state.synch_restoring_1~q\,
	datad => \CU|present_state.synch_restoring_2~q\,
	combout => \CU|WideOr16~0_combout\);

-- Location: LCCOMB_X4_Y2_N6
\CU|WideOr16~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr16~1_combout\ = (((\CU|next_state.writeconf0_prep~0_combout\) # (\CU|WideOr16~0_combout\)) # (!\CU|WideOr15~0_combout\)) # (!\CU|WideOr13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr13~0_combout\,
	datab => \CU|WideOr15~0_combout\,
	datac => \CU|next_state.writeconf0_prep~0_combout\,
	datad => \CU|WideOr16~0_combout\,
	combout => \CU|WideOr16~1_combout\);
END structure;


