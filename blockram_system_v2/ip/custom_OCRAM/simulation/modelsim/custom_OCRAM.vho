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

-- DATE "11/15/2023 09:53:15"

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

ENTITY 	custom_OCRAM IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic := '0';
	avs_address : IN std_logic_vector(7 DOWNTO 0);
	avs_read : IN std_logic := '0';
	avs_readdata : BUFFER std_logic_vector(31 DOWNTO 0);
	avs_write : IN std_logic := '0';
	avs_writedata : IN std_logic_vector(31 DOWNTO 0);
	avs_waitrequest : BUFFER std_logic;
	avs_readdatavalid : BUFFER std_logic;
	avs_beginbursttransfer : IN std_logic := '0';
	avs_burstcount : IN std_logic_vector(10 DOWNTO 0)
	);
END custom_OCRAM;

-- Design Ports Information
-- clk	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- avs_readdata[0]	=>  Location: LCCOMB_X34_Y18_N0,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[1]	=>  Location: LCCOMB_X32_Y17_N6,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[2]	=>  Location: LCCOMB_X34_Y17_N0,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[3]	=>  Location: LCCOMB_X34_Y18_N2,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[4]	=>  Location: LCCOMB_X34_Y18_N4,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[5]	=>  Location: LCCOMB_X34_Y18_N6,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[6]	=>  Location: LCCOMB_X34_Y18_N8,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[7]	=>  Location: LCCOMB_X32_Y17_N8,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[8]	=>  Location: LCCOMB_X34_Y18_N10,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[9]	=>  Location: LCCOMB_X32_Y19_N0,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[10]	=>  Location: LCCOMB_X34_Y18_N12,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[11]	=>  Location: LCCOMB_X34_Y18_N14,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[12]	=>  Location: LCCOMB_X34_Y18_N16,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[13]	=>  Location: LCCOMB_X34_Y18_N18,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[14]	=>  Location: LCCOMB_X34_Y18_N20,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[15]	=>  Location: LCCOMB_X35_Y18_N0,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[16]	=>  Location: LCCOMB_X32_Y17_N10,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[17]	=>  Location: LCCOMB_X32_Y17_N16,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[18]	=>  Location: LCCOMB_X35_Y18_N2,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[19]	=>  Location: LCCOMB_X32_Y17_N18,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[20]	=>  Location: LCCOMB_X32_Y19_N2,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[21]	=>  Location: LCCOMB_X34_Y17_N2,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[22]	=>  Location: LCCOMB_X34_Y18_N22,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[23]	=>  Location: LCCOMB_X35_Y18_N4,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[24]	=>  Location: LCCOMB_X34_Y18_N24,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[25]	=>  Location: LCCOMB_X34_Y18_N26,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[26]	=>  Location: LCCOMB_X32_Y19_N4,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[27]	=>  Location: LCCOMB_X32_Y19_N6,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[28]	=>  Location: LCCOMB_X32_Y17_N28,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[29]	=>  Location: LCCOMB_X35_Y18_N6,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[30]	=>  Location: LCCOMB_X34_Y18_N28,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdata[31]	=>  Location: LCCOMB_X34_Y18_N30,	 I/O Standard: None,	 Current Strength: Default
-- avs_waitrequest	=>  Location: LCCOMB_X38_Y20_N0,	 I/O Standard: None,	 Current Strength: Default
-- avs_readdatavalid	=>  Location: LCCOMB_X36_Y20_N0,	 I/O Standard: None,	 Current Strength: Default
-- reset_n	=>  Location: LCCOMB_X38_Y20_N10,	 I/O Standard: None,	 Current Strength: Default
-- avs_beginbursttransfer	=>  Location: LCCOMB_X35_Y20_N0,	 I/O Standard: None,	 Current Strength: Default
-- avs_write	=>  Location: LCCOMB_X38_Y20_N4,	 I/O Standard: None,	 Current Strength: Default
-- avs_read	=>  Location: LCCOMB_X36_Y20_N26,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[0]	=>  Location: LCCOMB_X32_Y17_N4,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[0]	=>  Location: LCCOMB_X34_Y19_N24,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[1]	=>  Location: LCCOMB_X34_Y19_N26,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[2]	=>  Location: LCCOMB_X35_Y20_N10,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[3]	=>  Location: LCCOMB_X34_Y17_N4,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[4]	=>  Location: LCCOMB_X34_Y19_N4,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[5]	=>  Location: LCCOMB_X34_Y19_N22,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[6]	=>  Location: LCCOMB_X34_Y19_N8,	 I/O Standard: None,	 Current Strength: Default
-- avs_address[7]	=>  Location: LCCOMB_X34_Y19_N10,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[1]	=>  Location: LCCOMB_X36_Y18_N16,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[2]	=>  Location: LCCOMB_X32_Y17_N14,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[3]	=>  Location: LCCOMB_X32_Y17_N0,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[4]	=>  Location: LCCOMB_X32_Y17_N26,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[5]	=>  Location: LCCOMB_X36_Y18_N10,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[6]	=>  Location: LCCOMB_X37_Y17_N24,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[7]	=>  Location: LCCOMB_X37_Y17_N10,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[8]	=>  Location: LCCOMB_X32_Y17_N20,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[9]	=>  Location: LCCOMB_X32_Y17_N22,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[10]	=>  Location: LCCOMB_X37_Y17_N12,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[11]	=>  Location: LCCOMB_X34_Y15_N8,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[12]	=>  Location: LCCOMB_X32_Y17_N24,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[13]	=>  Location: LCCOMB_X32_Y17_N2,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[14]	=>  Location: LCCOMB_X32_Y17_N12,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[15]	=>  Location: LCCOMB_X32_Y15_N8,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[16]	=>  Location: LCCOMB_X36_Y18_N4,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[17]	=>  Location: LCCOMB_X36_Y18_N22,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[18]	=>  Location: LCCOMB_X36_Y18_N0,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[19]	=>  Location: LCCOMB_X36_Y18_N18,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[20]	=>  Location: LCCOMB_X36_Y18_N28,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[21]	=>  Location: LCCOMB_X35_Y18_N24,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[22]	=>  Location: LCCOMB_X36_Y18_N30,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[23]	=>  Location: LCCOMB_X35_Y18_N26,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[24]	=>  Location: LCCOMB_X35_Y18_N12,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[25]	=>  Location: LCCOMB_X36_Y18_N24,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[26]	=>  Location: LCCOMB_X36_Y18_N26,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[27]	=>  Location: LCCOMB_X36_Y18_N12,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[28]	=>  Location: LCCOMB_X35_Y18_N30,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[29]	=>  Location: LCCOMB_X36_Y18_N14,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[30]	=>  Location: LCCOMB_X35_Y18_N8,	 I/O Standard: None,	 Current Strength: Default
-- avs_writedata[31]	=>  Location: LCCOMB_X36_Y18_N8,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[0]	=>  Location: LCCOMB_X37_Y21_N16,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[1]	=>  Location: LCCOMB_X35_Y20_N4,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[2]	=>  Location: LCCOMB_X37_Y21_N26,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[3]	=>  Location: LCCOMB_X37_Y21_N20,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[4]	=>  Location: LCCOMB_X36_Y19_N8,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[5]	=>  Location: LCCOMB_X32_Y20_N24,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[6]	=>  Location: LCCOMB_X37_Y19_N24,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[7]	=>  Location: LCCOMB_X38_Y18_N0,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[8]	=>  Location: LCCOMB_X38_Y18_N26,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[9]	=>  Location: LCCOMB_X32_Y21_N24,	 I/O Standard: None,	 Current Strength: Default
-- avs_burstcount[10]	=>  Location: LCCOMB_X37_Y21_N6,	 I/O Standard: None,	 Current Strength: Default


ARCHITECTURE structure OF custom_OCRAM IS
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
SIGNAL ww_avs_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_avs_read : std_logic;
SIGNAL ww_avs_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_avs_write : std_logic;
SIGNAL ww_avs_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_avs_waitrequest : std_logic;
SIGNAL ww_avs_readdatavalid : std_logic;
SIGNAL ww_avs_beginbursttransfer : std_logic;
SIGNAL ww_avs_burstcount : std_logic_vector(10 DOWNTO 0);
SIGNAL \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \avs_readdata[0]~output_o\ : std_logic;
SIGNAL \avs_readdata[1]~output_o\ : std_logic;
SIGNAL \avs_readdata[2]~output_o\ : std_logic;
SIGNAL \avs_readdata[3]~output_o\ : std_logic;
SIGNAL \avs_readdata[4]~output_o\ : std_logic;
SIGNAL \avs_readdata[5]~output_o\ : std_logic;
SIGNAL \avs_readdata[6]~output_o\ : std_logic;
SIGNAL \avs_readdata[7]~output_o\ : std_logic;
SIGNAL \avs_readdata[8]~output_o\ : std_logic;
SIGNAL \avs_readdata[9]~output_o\ : std_logic;
SIGNAL \avs_readdata[10]~output_o\ : std_logic;
SIGNAL \avs_readdata[11]~output_o\ : std_logic;
SIGNAL \avs_readdata[12]~output_o\ : std_logic;
SIGNAL \avs_readdata[13]~output_o\ : std_logic;
SIGNAL \avs_readdata[14]~output_o\ : std_logic;
SIGNAL \avs_readdata[15]~output_o\ : std_logic;
SIGNAL \avs_readdata[16]~output_o\ : std_logic;
SIGNAL \avs_readdata[17]~output_o\ : std_logic;
SIGNAL \avs_readdata[18]~output_o\ : std_logic;
SIGNAL \avs_readdata[19]~output_o\ : std_logic;
SIGNAL \avs_readdata[20]~output_o\ : std_logic;
SIGNAL \avs_readdata[21]~output_o\ : std_logic;
SIGNAL \avs_readdata[22]~output_o\ : std_logic;
SIGNAL \avs_readdata[23]~output_o\ : std_logic;
SIGNAL \avs_readdata[24]~output_o\ : std_logic;
SIGNAL \avs_readdata[25]~output_o\ : std_logic;
SIGNAL \avs_readdata[26]~output_o\ : std_logic;
SIGNAL \avs_readdata[27]~output_o\ : std_logic;
SIGNAL \avs_readdata[28]~output_o\ : std_logic;
SIGNAL \avs_readdata[29]~output_o\ : std_logic;
SIGNAL \avs_readdata[30]~output_o\ : std_logic;
SIGNAL \avs_readdata[31]~output_o\ : std_logic;
SIGNAL \avs_waitrequest~output_o\ : std_logic;
SIGNAL \avs_readdatavalid~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \avs_read~input0\ : std_logic;
SIGNAL \avs_burstcount[10]~input0\ : std_logic;
SIGNAL \avs_beginbursttransfer~input0\ : std_logic;
SIGNAL \avs_burstcount[4]~input0\ : std_logic;
SIGNAL \avs_burstcount[7]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[7]~feeder_combout\ : std_logic;
SIGNAL \avs_burstcount[5]~input0\ : std_logic;
SIGNAL \avs_burstcount[6]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|CMP1|cmp_equal~1_combout\ : std_logic;
SIGNAL \avs_burstcount[8]~input0\ : std_logic;
SIGNAL \avs_burstcount[9]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[9]~feeder_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|CMP1|cmp_equal~2_combout\ : std_logic;
SIGNAL \avs_burstcount[2]~input0\ : std_logic;
SIGNAL \avs_burstcount[3]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \avs_burstcount[1]~input0\ : std_logic;
SIGNAL \avs_burstcount[0]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|CMP1|cmp_equal~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|next_state_evaluation~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|next_state.read_cmd~0_combout\ : std_logic;
SIGNAL \reset_n~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|present_state.read_cmd~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|Selector1~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|Selector1~1_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|present_state.burst_read~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|next_state.burst_lastread~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|present_state.burst_lastread~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|present_state.reset~feeder_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|present_state.reset~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|WideOr5~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|WideOr7~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|present_state.init1~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|present_state.init1~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|present_state.init2~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|WideOr7~1_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|entry_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|entry_tff|dummy_out~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:1:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:1:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:2:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:2:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:3:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:3:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:4:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:4:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:5:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:5:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~2_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~2_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~3_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:7:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:7:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~3_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~1_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~4_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:8:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:8:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:9:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:9:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:10:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|g1:10:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~5_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~combout\ : std_logic;
SIGNAL \avs_write~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|Selector3~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|present_state.burst_write_pause~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|Selector2~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|Selector2~1_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|present_state.burst_write~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|next_state.burst_lastwrite~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|present_state.burst_lastwrite~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|next_state.wait_afterburst~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|present_state.wait_afterburst~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|present_state.idle_afterburst~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|Selector0~1_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|present_state.idle~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|Selector0~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|next_state.write_cmd~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|present_state.write_cmd~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|WideOr12~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|WideOr10~0_combout\ : std_logic;
SIGNAL \avs_writedata[0]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[0]~feeder_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|WideOr8~combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|address_reg|reg_out[0]~8_combout\ : std_logic;
SIGNAL \avs_address[0]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|WideOr9~combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|address_reg|reg_out[0]~9\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|address_reg|reg_out[1]~10_combout\ : std_logic;
SIGNAL \avs_address[1]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|address_reg|reg_out[1]~11\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|address_reg|reg_out[2]~12_combout\ : std_logic;
SIGNAL \avs_address[2]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|address_reg|reg_out[2]~13\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|address_reg|reg_out[3]~14_combout\ : std_logic;
SIGNAL \avs_address[3]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|address_reg|reg_out[3]~15\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|address_reg|reg_out[4]~16_combout\ : std_logic;
SIGNAL \avs_address[4]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|address_reg|reg_out[4]~17\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|address_reg|reg_out[5]~18_combout\ : std_logic;
SIGNAL \avs_address[5]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|address_reg|reg_out[5]~19\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|address_reg|reg_out[6]~20_combout\ : std_logic;
SIGNAL \avs_address[6]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|address_reg|reg_out[6]~21\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|address_reg|reg_out[7]~22_combout\ : std_logic;
SIGNAL \avs_address[7]~input0\ : std_logic;
SIGNAL \avs_writedata[1]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[2]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[3]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[4]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[5]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[5]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[6]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[6]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[7]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[7]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[8]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[8]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[9]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[9]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[10]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[10]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[11]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[11]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[12]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[12]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[13]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[13]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[14]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[14]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[15]~input0\ : std_logic;
SIGNAL \avs_writedata[16]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[16]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[17]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[17]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[18]~input0\ : std_logic;
SIGNAL \avs_writedata[19]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[19]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[20]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[20]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[21]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[21]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[22]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[22]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[23]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[23]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[24]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[24]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[25]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[25]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[26]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[26]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[27]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[27]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[28]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[28]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[29]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[29]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[30]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[30]~feeder_combout\ : std_logic;
SIGNAL \avs_writedata[31]~input0\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[31]~feeder_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|CU|WideOr6~combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|pipe1|dff_out~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|pipe2|dff_out~0_combout\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|pipe2|dff_out~q\ : std_logic;
SIGNAL \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \blockram_1port_inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \avs_to_blockram_converter_inst|EU|address_reg|reg_out\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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
ww_avs_beginbursttransfer <= avs_beginbursttransfer;
ww_avs_burstcount <= avs_burstcount;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(13) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(12) & 
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(11) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(10) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(9) & 
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(8) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(7) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(6) & 
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(5) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(4) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(3) & 
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(2) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(1) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(0));

\blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(7) & \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(6) & 
\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(5) & \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(4) & \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(3) & \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(2) & 
\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(1) & \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(0));

\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(0) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(1) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(2) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(3) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(4) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(5) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(6) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(7) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(8) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(9) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(10) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(11) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(12) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(13) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(31) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(30) & 
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(29) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(28) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(27) & 
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(26) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(25) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(24) & 
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(23) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(22) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(21) & 
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(20) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(19) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(18) & 
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(17) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(16) & \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(15) & 
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(14));

\blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(7) & \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(6) & 
\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(5) & \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(4) & \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(3) & \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(2) & 
\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(1) & \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(0));

\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(14) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(15) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(16) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(2);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(17) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(3);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(18) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(4);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(19) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(5);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(20) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(6);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(21) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(7);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(22) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(8);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(23) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(9);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(24) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(10);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(25) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(11);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(26) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(12);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(27) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(13);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(28) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(14);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(29) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(15);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(30) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(16);
\blockram_1port_inst|altsyncram_component|auto_generated|q_a\(31) <= \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(17);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X34_Y18_N0
\avs_readdata[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \avs_readdata[0]~output_o\);

-- Location: LCCOMB_X32_Y17_N6
\avs_readdata[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \avs_readdata[1]~output_o\);

-- Location: LCCOMB_X34_Y17_N0
\avs_readdata[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \avs_readdata[2]~output_o\);

-- Location: LCCOMB_X34_Y18_N2
\avs_readdata[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \avs_readdata[3]~output_o\);

-- Location: LCCOMB_X34_Y18_N4
\avs_readdata[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \avs_readdata[4]~output_o\);

-- Location: LCCOMB_X34_Y18_N6
\avs_readdata[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \avs_readdata[5]~output_o\);

-- Location: LCCOMB_X34_Y18_N8
\avs_readdata[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \avs_readdata[6]~output_o\);

-- Location: LCCOMB_X32_Y17_N8
\avs_readdata[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \avs_readdata[7]~output_o\);

-- Location: LCCOMB_X34_Y18_N10
\avs_readdata[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \avs_readdata[8]~output_o\);

-- Location: LCCOMB_X32_Y19_N0
\avs_readdata[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \avs_readdata[9]~output_o\);

-- Location: LCCOMB_X34_Y18_N12
\avs_readdata[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \avs_readdata[10]~output_o\);

-- Location: LCCOMB_X34_Y18_N14
\avs_readdata[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \avs_readdata[11]~output_o\);

-- Location: LCCOMB_X34_Y18_N16
\avs_readdata[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \avs_readdata[12]~output_o\);

-- Location: LCCOMB_X34_Y18_N18
\avs_readdata[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \avs_readdata[13]~output_o\);

-- Location: LCCOMB_X34_Y18_N20
\avs_readdata[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \avs_readdata[14]~output_o\);

-- Location: LCCOMB_X35_Y18_N0
\avs_readdata[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \avs_readdata[15]~output_o\);

-- Location: LCCOMB_X32_Y17_N10
\avs_readdata[16]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \avs_readdata[16]~output_o\);

-- Location: LCCOMB_X32_Y17_N16
\avs_readdata[17]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \avs_readdata[17]~output_o\);

-- Location: LCCOMB_X35_Y18_N2
\avs_readdata[18]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \avs_readdata[18]~output_o\);

-- Location: LCCOMB_X32_Y17_N18
\avs_readdata[19]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \avs_readdata[19]~output_o\);

-- Location: LCCOMB_X32_Y19_N2
\avs_readdata[20]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \avs_readdata[20]~output_o\);

-- Location: LCCOMB_X34_Y17_N2
\avs_readdata[21]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \avs_readdata[21]~output_o\);

-- Location: LCCOMB_X34_Y18_N22
\avs_readdata[22]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \avs_readdata[22]~output_o\);

-- Location: LCCOMB_X35_Y18_N4
\avs_readdata[23]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \avs_readdata[23]~output_o\);

-- Location: LCCOMB_X34_Y18_N24
\avs_readdata[24]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \avs_readdata[24]~output_o\);

-- Location: LCCOMB_X34_Y18_N26
\avs_readdata[25]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \avs_readdata[25]~output_o\);

-- Location: LCCOMB_X32_Y19_N4
\avs_readdata[26]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \avs_readdata[26]~output_o\);

-- Location: LCCOMB_X32_Y19_N6
\avs_readdata[27]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \avs_readdata[27]~output_o\);

-- Location: LCCOMB_X32_Y17_N28
\avs_readdata[28]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \avs_readdata[28]~output_o\);

-- Location: LCCOMB_X35_Y18_N6
\avs_readdata[29]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \avs_readdata[29]~output_o\);

-- Location: LCCOMB_X34_Y18_N28
\avs_readdata[30]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \avs_readdata[30]~output_o\);

-- Location: LCCOMB_X34_Y18_N30
\avs_readdata[31]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blockram_1port_inst|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \avs_readdata[31]~output_o\);

-- Location: LCCOMB_X38_Y20_N0
\avs_waitrequest~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \avs_to_blockram_converter_inst|CU|WideOr6~combout\,
	devoe => ww_devoe,
	o => \avs_waitrequest~output_o\);

-- Location: LCCOMB_X36_Y20_N0
\avs_readdatavalid~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \avs_to_blockram_converter_inst|EU|pipe2|dff_out~q\,
	devoe => ww_devoe,
	o => \avs_readdatavalid~output_o\);

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

-- Location: LCCOMB_X36_Y20_N26
\avs_read~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_read,
	o => \avs_read~input0\);

-- Location: LCCOMB_X37_Y21_N6
\avs_burstcount[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(10),
	o => \avs_burstcount[10]~input0\);

-- Location: FF_X38_Y21_N27
\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_burstcount[10]~input0\,
	sload => VCC,
	ena => \avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(10));

-- Location: LCCOMB_X35_Y20_N0
\avs_beginbursttransfer~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_beginbursttransfer,
	o => \avs_beginbursttransfer~input0\);

-- Location: LCCOMB_X36_Y19_N8
\avs_burstcount[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(4),
	o => \avs_burstcount[4]~input0\);

-- Location: FF_X38_Y19_N25
\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_burstcount[4]~input0\,
	sload => VCC,
	ena => \avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(4));

-- Location: LCCOMB_X38_Y18_N0
\avs_burstcount[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(7),
	o => \avs_burstcount[7]~input0\);

-- Location: LCCOMB_X38_Y19_N2
\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[7]~feeder_combout\ = \avs_burstcount[7]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_burstcount[7]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[7]~feeder_combout\);

-- Location: FF_X38_Y19_N3
\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[7]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(7));

-- Location: LCCOMB_X32_Y20_N24
\avs_burstcount[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(5),
	o => \avs_burstcount[5]~input0\);

-- Location: FF_X38_Y19_N11
\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_burstcount[5]~input0\,
	sload => VCC,
	ena => \avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(5));

-- Location: LCCOMB_X37_Y19_N24
\avs_burstcount[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(6),
	o => \avs_burstcount[6]~input0\);

-- Location: FF_X38_Y19_N17
\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_burstcount[6]~input0\,
	sload => VCC,
	ena => \avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(6));

-- Location: LCCOMB_X38_Y19_N10
\avs_to_blockram_converter_inst|EU|CMP1|cmp_equal~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|CMP1|cmp_equal~1_combout\ = (!\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(4) & (!\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(7) & 
-- (!\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(5) & !\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(4),
	datab => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(7),
	datac => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(5),
	datad => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(6),
	combout => \avs_to_blockram_converter_inst|EU|CMP1|cmp_equal~1_combout\);

-- Location: LCCOMB_X38_Y18_N26
\avs_burstcount[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(8),
	o => \avs_burstcount[8]~input0\);

-- Location: FF_X38_Y19_N9
\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_burstcount[8]~input0\,
	sload => VCC,
	ena => \avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(8));

-- Location: LCCOMB_X32_Y21_N24
\avs_burstcount[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(9),
	o => \avs_burstcount[9]~input0\);

-- Location: LCCOMB_X38_Y21_N10
\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[9]~feeder_combout\ = \avs_burstcount[9]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_burstcount[9]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[9]~feeder_combout\);

-- Location: FF_X38_Y21_N11
\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[9]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(9));

-- Location: LCCOMB_X38_Y21_N26
\avs_to_blockram_converter_inst|EU|CMP1|cmp_equal~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|CMP1|cmp_equal~2_combout\ = (!\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(8) & (!\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(10) & 
-- !\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(8),
	datac => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(10),
	datad => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(9),
	combout => \avs_to_blockram_converter_inst|EU|CMP1|cmp_equal~2_combout\);

-- Location: LCCOMB_X37_Y21_N26
\avs_burstcount[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(2),
	o => \avs_burstcount[2]~input0\);

-- Location: FF_X38_Y21_N7
\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_burstcount[2]~input0\,
	sload => VCC,
	ena => \avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(2));

-- Location: LCCOMB_X37_Y21_N20
\avs_burstcount[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(3),
	o => \avs_burstcount[3]~input0\);

-- Location: LCCOMB_X38_Y21_N16
\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[3]~feeder_combout\ = \avs_burstcount[3]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_burstcount[3]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[3]~feeder_combout\);

-- Location: FF_X38_Y21_N17
\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[3]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(3));

-- Location: LCCOMB_X35_Y20_N4
\avs_burstcount[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(1),
	o => \avs_burstcount[1]~input0\);

-- Location: FF_X38_Y21_N9
\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_burstcount[1]~input0\,
	sload => VCC,
	ena => \avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(1));

-- Location: LCCOMB_X37_Y21_N16
\avs_burstcount[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_burstcount(0),
	o => \avs_burstcount[0]~input0\);

-- Location: FF_X38_Y21_N3
\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_burstcount[0]~input0\,
	sload => VCC,
	ena => \avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(0));

-- Location: LCCOMB_X38_Y21_N8
\avs_to_blockram_converter_inst|EU|CMP1|cmp_equal~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|CMP1|cmp_equal~0_combout\ = (!\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(2) & (!\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(3) & 
-- (!\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(1) & \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(2),
	datab => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(3),
	datac => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(1),
	datad => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(0),
	combout => \avs_to_blockram_converter_inst|EU|CMP1|cmp_equal~0_combout\);

-- Location: LCCOMB_X38_Y21_N12
\avs_to_blockram_converter_inst|CU|next_state_evaluation~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|next_state_evaluation~0_combout\ = ((\avs_to_blockram_converter_inst|EU|CMP1|cmp_equal~1_combout\ & (\avs_to_blockram_converter_inst|EU|CMP1|cmp_equal~2_combout\ & 
-- \avs_to_blockram_converter_inst|EU|CMP1|cmp_equal~0_combout\))) # (!\avs_beginbursttransfer~input0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_beginbursttransfer~input0\,
	datab => \avs_to_blockram_converter_inst|EU|CMP1|cmp_equal~1_combout\,
	datac => \avs_to_blockram_converter_inst|EU|CMP1|cmp_equal~2_combout\,
	datad => \avs_to_blockram_converter_inst|EU|CMP1|cmp_equal~0_combout\,
	combout => \avs_to_blockram_converter_inst|CU|next_state_evaluation~0_combout\);

-- Location: LCCOMB_X37_Y20_N8
\avs_to_blockram_converter_inst|CU|next_state.read_cmd~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|next_state.read_cmd~0_combout\ = (\avs_to_blockram_converter_inst|CU|next_state_evaluation~0_combout\ & \avs_to_blockram_converter_inst|CU|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|next_state_evaluation~0_combout\,
	datac => \avs_to_blockram_converter_inst|CU|Selector1~0_combout\,
	combout => \avs_to_blockram_converter_inst|CU|next_state.read_cmd~0_combout\);

-- Location: LCCOMB_X38_Y20_N10
\reset_n~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input0\);

-- Location: FF_X37_Y20_N9
\avs_to_blockram_converter_inst|CU|present_state.read_cmd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|CU|next_state.read_cmd~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|CU|present_state.read_cmd~q\);

-- Location: LCCOMB_X37_Y20_N20
\avs_to_blockram_converter_inst|CU|Selector1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|Selector1~0_combout\ = (\avs_read~input0\ & ((\avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\) # ((\avs_to_blockram_converter_inst|CU|present_state.write_cmd~q\) # 
-- (\avs_to_blockram_converter_inst|CU|present_state.read_cmd~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_read~input0\,
	datab => \avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\,
	datac => \avs_to_blockram_converter_inst|CU|present_state.write_cmd~q\,
	datad => \avs_to_blockram_converter_inst|CU|present_state.read_cmd~q\,
	combout => \avs_to_blockram_converter_inst|CU|Selector1~0_combout\);

-- Location: LCCOMB_X37_Y20_N26
\avs_to_blockram_converter_inst|CU|Selector1~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|Selector1~1_combout\ = (\avs_to_blockram_converter_inst|CU|next_state_evaluation~0_combout\ & (((\avs_to_blockram_converter_inst|CU|present_state.burst_read~q\ & 
-- !\avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~combout\)))) # (!\avs_to_blockram_converter_inst|CU|next_state_evaluation~0_combout\ & ((\avs_to_blockram_converter_inst|CU|Selector1~0_combout\) # 
-- ((\avs_to_blockram_converter_inst|CU|present_state.burst_read~q\ & !\avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|next_state_evaluation~0_combout\,
	datab => \avs_to_blockram_converter_inst|CU|Selector1~0_combout\,
	datac => \avs_to_blockram_converter_inst|CU|present_state.burst_read~q\,
	datad => \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~combout\,
	combout => \avs_to_blockram_converter_inst|CU|Selector1~1_combout\);

-- Location: FF_X37_Y20_N27
\avs_to_blockram_converter_inst|CU|present_state.burst_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|CU|Selector1~1_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|CU|present_state.burst_read~q\);

-- Location: LCCOMB_X37_Y20_N2
\avs_to_blockram_converter_inst|CU|next_state.burst_lastread~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|next_state.burst_lastread~0_combout\ = (\avs_to_blockram_converter_inst|CU|present_state.burst_read~q\ & \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|present_state.burst_read~q\,
	datac => \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~combout\,
	combout => \avs_to_blockram_converter_inst|CU|next_state.burst_lastread~0_combout\);

-- Location: FF_X37_Y20_N3
\avs_to_blockram_converter_inst|CU|present_state.burst_lastread\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|CU|next_state.burst_lastread~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|CU|present_state.burst_lastread~q\);

-- Location: LCCOMB_X37_Y20_N16
\avs_to_blockram_converter_inst|CU|present_state.reset~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|present_state.reset~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \avs_to_blockram_converter_inst|CU|present_state.reset~feeder_combout\);

-- Location: FF_X37_Y20_N17
\avs_to_blockram_converter_inst|CU|present_state.reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|CU|present_state.reset~feeder_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|CU|present_state.reset~q\);

-- Location: LCCOMB_X37_Y20_N30
\avs_to_blockram_converter_inst|CU|WideOr5~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|WideOr5~0_combout\ = (!\avs_to_blockram_converter_inst|CU|present_state.burst_lastread~q\ & (!\avs_to_blockram_converter_inst|CU|present_state.burst_lastwrite~q\ & 
-- \avs_to_blockram_converter_inst|CU|present_state.reset~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_to_blockram_converter_inst|CU|present_state.burst_lastread~q\,
	datac => \avs_to_blockram_converter_inst|CU|present_state.burst_lastwrite~q\,
	datad => \avs_to_blockram_converter_inst|CU|present_state.reset~q\,
	combout => \avs_to_blockram_converter_inst|CU|WideOr5~0_combout\);

-- Location: LCCOMB_X34_Y20_N24
\avs_to_blockram_converter_inst|CU|WideOr7~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|WideOr7~0_combout\ = (!\avs_to_blockram_converter_inst|CU|present_state.burst_read~q\ & !\avs_to_blockram_converter_inst|CU|present_state.burst_write~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_to_blockram_converter_inst|CU|present_state.burst_read~q\,
	datad => \avs_to_blockram_converter_inst|CU|present_state.burst_write~q\,
	combout => \avs_to_blockram_converter_inst|CU|WideOr7~0_combout\);

-- Location: LCCOMB_X38_Y21_N22
\avs_to_blockram_converter_inst|CU|present_state.init1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|present_state.init1~0_combout\ = !\avs_to_blockram_converter_inst|CU|present_state.reset~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \avs_to_blockram_converter_inst|CU|present_state.reset~q\,
	combout => \avs_to_blockram_converter_inst|CU|present_state.init1~0_combout\);

-- Location: FF_X38_Y21_N23
\avs_to_blockram_converter_inst|CU|present_state.init1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|CU|present_state.init1~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|CU|present_state.init1~q\);

-- Location: FF_X38_Y21_N25
\avs_to_blockram_converter_inst|CU|present_state.init2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_to_blockram_converter_inst|CU|present_state.init1~q\,
	clrn => \reset_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|CU|present_state.init2~q\);

-- Location: LCCOMB_X38_Y21_N30
\avs_to_blockram_converter_inst|CU|WideOr7~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|WideOr7~1_combout\ = (\avs_to_blockram_converter_inst|CU|present_state.init1~q\) # ((\avs_to_blockram_converter_inst|CU|present_state.wait_afterburst~q\) # 
-- ((\avs_to_blockram_converter_inst|CU|present_state.idle_afterburst~q\) # (\avs_to_blockram_converter_inst|CU|present_state.init2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|present_state.init1~q\,
	datab => \avs_to_blockram_converter_inst|CU|present_state.wait_afterburst~q\,
	datac => \avs_to_blockram_converter_inst|CU|present_state.idle_afterburst~q\,
	datad => \avs_to_blockram_converter_inst|CU|present_state.init2~q\,
	combout => \avs_to_blockram_converter_inst|CU|WideOr7~1_combout\);

-- Location: LCCOMB_X34_Y20_N0
\avs_to_blockram_converter_inst|EU|burst_cnt|entry_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burst_cnt|entry_tff|dummy_out~0_combout\ = (\avs_to_blockram_converter_inst|CU|WideOr5~0_combout\ & (\avs_to_blockram_converter_inst|EU|burst_cnt|entry_tff|dummy_out~q\ $ 
-- (((\avs_to_blockram_converter_inst|CU|WideOr7~1_combout\) # (!\avs_to_blockram_converter_inst|CU|WideOr7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|WideOr7~0_combout\,
	datab => \avs_to_blockram_converter_inst|CU|WideOr7~1_combout\,
	datac => \avs_to_blockram_converter_inst|EU|burst_cnt|entry_tff|dummy_out~q\,
	datad => \avs_to_blockram_converter_inst|CU|WideOr5~0_combout\,
	combout => \avs_to_blockram_converter_inst|EU|burst_cnt|entry_tff|dummy_out~0_combout\);

-- Location: FF_X34_Y20_N1
\avs_to_blockram_converter_inst|EU|burst_cnt|entry_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|burst_cnt|entry_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burst_cnt|entry_tff|dummy_out~q\);

-- Location: LCCOMB_X34_Y20_N28
\avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in[1]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(1) = (\avs_to_blockram_converter_inst|EU|burst_cnt|entry_tff|dummy_out~q\ & ((\avs_to_blockram_converter_inst|CU|present_state.burst_read~q\) # ((\avs_to_blockram_converter_inst|CU|WideOr7~1_combout\) # 
-- (\avs_to_blockram_converter_inst|CU|present_state.burst_write~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|burst_cnt|entry_tff|dummy_out~q\,
	datab => \avs_to_blockram_converter_inst|CU|present_state.burst_read~q\,
	datac => \avs_to_blockram_converter_inst|CU|WideOr7~1_combout\,
	datad => \avs_to_blockram_converter_inst|CU|present_state.burst_write~q\,
	combout => \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(1));

-- Location: LCCOMB_X37_Y20_N22
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:1:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burst_cnt|g1:1:chain_tff|dummy_out~0_combout\ = (\avs_to_blockram_converter_inst|CU|WideOr5~0_combout\ & (\avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(1) $ 
-- (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:1:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|WideOr5~0_combout\,
	datab => \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(1),
	datac => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:1:chain_tff|dummy_out~q\,
	combout => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:1:chain_tff|dummy_out~0_combout\);

-- Location: FF_X37_Y20_N23
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:1:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:1:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:1:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X38_Y21_N2
\avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~0_combout\ = (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:1:chain_tff|dummy_out~q\ & (\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(1) & 
-- (\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(0) $ (!\avs_to_blockram_converter_inst|EU|burst_cnt|entry_tff|dummy_out~q\)))) # (!\avs_to_blockram_converter_inst|EU|burst_cnt|g1:1:chain_tff|dummy_out~q\ & 
-- (!\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(1) & (\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(0) $ (!\avs_to_blockram_converter_inst|EU|burst_cnt|entry_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:1:chain_tff|dummy_out~q\,
	datab => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(1),
	datac => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(0),
	datad => \avs_to_blockram_converter_inst|EU|burst_cnt|entry_tff|dummy_out~q\,
	combout => \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~0_combout\);

-- Location: LCCOMB_X34_Y20_N30
\avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in[2]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(2) = (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:1:chain_tff|dummy_out~q\ & (\avs_to_blockram_converter_inst|EU|burst_cnt|entry_tff|dummy_out~q\ & 
-- ((\avs_to_blockram_converter_inst|CU|WideOr7~1_combout\) # (!\avs_to_blockram_converter_inst|CU|WideOr7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:1:chain_tff|dummy_out~q\,
	datab => \avs_to_blockram_converter_inst|CU|WideOr7~0_combout\,
	datac => \avs_to_blockram_converter_inst|CU|WideOr7~1_combout\,
	datad => \avs_to_blockram_converter_inst|EU|burst_cnt|entry_tff|dummy_out~q\,
	combout => \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(2));

-- Location: LCCOMB_X34_Y20_N20
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:2:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burst_cnt|g1:2:chain_tff|dummy_out~0_combout\ = (\avs_to_blockram_converter_inst|CU|WideOr5~0_combout\ & (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:2:chain_tff|dummy_out~q\ $ 
-- (((\avs_to_blockram_converter_inst|EU|burst_cnt|g1:1:chain_tff|dummy_out~q\ & \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:1:chain_tff|dummy_out~q\,
	datab => \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(1),
	datac => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:2:chain_tff|dummy_out~q\,
	datad => \avs_to_blockram_converter_inst|CU|WideOr5~0_combout\,
	combout => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:2:chain_tff|dummy_out~0_combout\);

-- Location: FF_X34_Y20_N21
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:2:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:2:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:2:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X34_Y20_N2
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:3:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burst_cnt|g1:3:chain_tff|dummy_out~0_combout\ = (\avs_to_blockram_converter_inst|CU|WideOr5~0_combout\ & (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:3:chain_tff|dummy_out~q\ $ 
-- (((\avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(2) & \avs_to_blockram_converter_inst|EU|burst_cnt|g1:2:chain_tff|dummy_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(2),
	datab => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:2:chain_tff|dummy_out~q\,
	datac => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:3:chain_tff|dummy_out~q\,
	datad => \avs_to_blockram_converter_inst|CU|WideOr5~0_combout\,
	combout => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:3:chain_tff|dummy_out~0_combout\);

-- Location: FF_X34_Y20_N3
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:3:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:3:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:3:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X38_Y21_N28
\avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in[4]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(4) = (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:3:chain_tff|dummy_out~q\ & (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:2:chain_tff|dummy_out~q\ & 
-- (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:1:chain_tff|dummy_out~q\ & \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:3:chain_tff|dummy_out~q\,
	datab => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:2:chain_tff|dummy_out~q\,
	datac => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:1:chain_tff|dummy_out~q\,
	datad => \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(1),
	combout => \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(4));

-- Location: LCCOMB_X38_Y19_N6
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:4:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burst_cnt|g1:4:chain_tff|dummy_out~0_combout\ = (\avs_to_blockram_converter_inst|CU|WideOr5~0_combout\ & (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:4:chain_tff|dummy_out~q\ $ 
-- (\avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|WideOr5~0_combout\,
	datac => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:4:chain_tff|dummy_out~q\,
	datad => \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(4),
	combout => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:4:chain_tff|dummy_out~0_combout\);

-- Location: FF_X38_Y19_N7
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:4:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:4:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:4:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X38_Y19_N4
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:5:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burst_cnt|g1:5:chain_tff|dummy_out~0_combout\ = (\avs_to_blockram_converter_inst|CU|WideOr5~0_combout\ & (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:5:chain_tff|dummy_out~q\ $ 
-- (((\avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(4) & \avs_to_blockram_converter_inst|EU|burst_cnt|g1:4:chain_tff|dummy_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|WideOr5~0_combout\,
	datab => \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(4),
	datac => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:5:chain_tff|dummy_out~q\,
	datad => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:4:chain_tff|dummy_out~q\,
	combout => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:5:chain_tff|dummy_out~0_combout\);

-- Location: FF_X38_Y19_N5
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:5:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:5:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:5:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X38_Y19_N24
\avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~2_combout\ = (\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(5) & (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:5:chain_tff|dummy_out~q\ & 
-- (\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(4) $ (!\avs_to_blockram_converter_inst|EU|burst_cnt|g1:4:chain_tff|dummy_out~q\)))) # (!\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(5) & 
-- (!\avs_to_blockram_converter_inst|EU|burst_cnt|g1:5:chain_tff|dummy_out~q\ & (\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(4) $ (!\avs_to_blockram_converter_inst|EU|burst_cnt|g1:4:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(5),
	datab => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:5:chain_tff|dummy_out~q\,
	datac => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(4),
	datad => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:4:chain_tff|dummy_out~q\,
	combout => \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~2_combout\);

-- Location: LCCOMB_X38_Y19_N18
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~2_combout\ = \avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~q\ $ (((\avs_to_blockram_converter_inst|EU|burst_cnt|g1:4:chain_tff|dummy_out~q\ & 
-- (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:5:chain_tff|dummy_out~q\ & \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:4:chain_tff|dummy_out~q\,
	datab => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:5:chain_tff|dummy_out~q\,
	datac => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~q\,
	datad => \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(4),
	combout => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~2_combout\);

-- Location: LCCOMB_X38_Y19_N30
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~3_combout\ = (\avs_to_blockram_converter_inst|CU|present_state.reset~q\ & (!\avs_to_blockram_converter_inst|CU|present_state.burst_lastwrite~q\ & 
-- (!\avs_to_blockram_converter_inst|CU|present_state.burst_lastread~q\ & \avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|present_state.reset~q\,
	datab => \avs_to_blockram_converter_inst|CU|present_state.burst_lastwrite~q\,
	datac => \avs_to_blockram_converter_inst|CU|present_state.burst_lastread~q\,
	datad => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~2_combout\,
	combout => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~3_combout\);

-- Location: FF_X38_Y19_N31
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X38_Y19_N0
\avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in[7]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(7) = (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:4:chain_tff|dummy_out~q\ & (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:5:chain_tff|dummy_out~q\ & 
-- (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~q\ & \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:4:chain_tff|dummy_out~q\,
	datab => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:5:chain_tff|dummy_out~q\,
	datac => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~q\,
	datad => \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(4),
	combout => \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(7));

-- Location: LCCOMB_X38_Y19_N12
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:7:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burst_cnt|g1:7:chain_tff|dummy_out~0_combout\ = (\avs_to_blockram_converter_inst|CU|WideOr5~0_combout\ & (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:7:chain_tff|dummy_out~q\ $ 
-- (\avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|WideOr5~0_combout\,
	datac => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:7:chain_tff|dummy_out~q\,
	datad => \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(7),
	combout => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:7:chain_tff|dummy_out~0_combout\);

-- Location: FF_X38_Y19_N13
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:7:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:7:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:7:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X38_Y19_N16
\avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~3_combout\ = (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~q\ & (\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(6) & 
-- (\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(7) $ (!\avs_to_blockram_converter_inst|EU|burst_cnt|g1:7:chain_tff|dummy_out~q\)))) # (!\avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~q\ & 
-- (!\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(6) & (\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(7) $ (!\avs_to_blockram_converter_inst|EU|burst_cnt|g1:7:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:6:chain_tff|dummy_out~q\,
	datab => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(7),
	datac => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(6),
	datad => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:7:chain_tff|dummy_out~q\,
	combout => \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~3_combout\);

-- Location: LCCOMB_X38_Y21_N6
\avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~1_combout\ = (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:3:chain_tff|dummy_out~q\ & (\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(3) & 
-- (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:2:chain_tff|dummy_out~q\ $ (!\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(2))))) # (!\avs_to_blockram_converter_inst|EU|burst_cnt|g1:3:chain_tff|dummy_out~q\ & 
-- (!\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(3) & (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:2:chain_tff|dummy_out~q\ $ (!\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:3:chain_tff|dummy_out~q\,
	datab => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:2:chain_tff|dummy_out~q\,
	datac => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(2),
	datad => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(3),
	combout => \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~1_combout\);

-- Location: LCCOMB_X38_Y21_N20
\avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~4_combout\ = (\avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~0_combout\ & (\avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~2_combout\ & (\avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~3_combout\ & 
-- \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~0_combout\,
	datab => \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~2_combout\,
	datac => \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~3_combout\,
	datad => \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~1_combout\,
	combout => \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~4_combout\);

-- Location: LCCOMB_X38_Y19_N20
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:8:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burst_cnt|g1:8:chain_tff|dummy_out~0_combout\ = (\avs_to_blockram_converter_inst|CU|WideOr5~0_combout\ & (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:8:chain_tff|dummy_out~q\ $ 
-- (((\avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(7) & \avs_to_blockram_converter_inst|EU|burst_cnt|g1:7:chain_tff|dummy_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|WideOr5~0_combout\,
	datab => \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(7),
	datac => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:8:chain_tff|dummy_out~q\,
	datad => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:7:chain_tff|dummy_out~q\,
	combout => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:8:chain_tff|dummy_out~0_combout\);

-- Location: FF_X38_Y19_N21
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:8:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:8:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:8:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X38_Y19_N28
\avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in[9]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(9) = (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:7:chain_tff|dummy_out~q\ & (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:8:chain_tff|dummy_out~q\ & 
-- \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:7:chain_tff|dummy_out~q\,
	datab => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:8:chain_tff|dummy_out~q\,
	datad => \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(7),
	combout => \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(9));

-- Location: LCCOMB_X38_Y19_N26
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:9:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burst_cnt|g1:9:chain_tff|dummy_out~0_combout\ = (\avs_to_blockram_converter_inst|CU|WideOr5~0_combout\ & (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:9:chain_tff|dummy_out~q\ $ 
-- (\avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|WideOr5~0_combout\,
	datac => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:9:chain_tff|dummy_out~q\,
	datad => \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(9),
	combout => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:9:chain_tff|dummy_out~0_combout\);

-- Location: FF_X38_Y19_N27
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:9:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:9:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:9:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X38_Y19_N22
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:10:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|burst_cnt|g1:10:chain_tff|dummy_out~0_combout\ = (\avs_to_blockram_converter_inst|CU|WideOr5~0_combout\ & (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:10:chain_tff|dummy_out~q\ $ 
-- (((\avs_to_blockram_converter_inst|EU|burst_cnt|g1:9:chain_tff|dummy_out~q\ & \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:9:chain_tff|dummy_out~q\,
	datab => \avs_to_blockram_converter_inst|EU|burst_cnt|tgl_in\(9),
	datac => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:10:chain_tff|dummy_out~q\,
	datad => \avs_to_blockram_converter_inst|CU|WideOr5~0_combout\,
	combout => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:10:chain_tff|dummy_out~0_combout\);

-- Location: FF_X38_Y19_N23
\avs_to_blockram_converter_inst|EU|burst_cnt|g1:10:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:10:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:10:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X38_Y19_N8
\avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~5_combout\ = (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:9:chain_tff|dummy_out~q\ & (\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(9) & 
-- (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:8:chain_tff|dummy_out~q\ $ (!\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(8))))) # (!\avs_to_blockram_converter_inst|EU|burst_cnt|g1:9:chain_tff|dummy_out~q\ & 
-- (!\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(9) & (\avs_to_blockram_converter_inst|EU|burst_cnt|g1:8:chain_tff|dummy_out~q\ $ (!\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:9:chain_tff|dummy_out~q\,
	datab => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:8:chain_tff|dummy_out~q\,
	datac => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(8),
	datad => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(9),
	combout => \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~5_combout\);

-- Location: LCCOMB_X38_Y21_N18
\avs_to_blockram_converter_inst|EU|CMPB|cmp_equal\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~combout\ = (\avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~4_combout\ & (\avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~5_combout\ & (\avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(10) $ 
-- (!\avs_to_blockram_converter_inst|EU|burst_cnt|g1:10:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|burstcount_reg|reg_out\(10),
	datab => \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~4_combout\,
	datac => \avs_to_blockram_converter_inst|EU|burst_cnt|g1:10:chain_tff|dummy_out~q\,
	datad => \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~5_combout\,
	combout => \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~combout\);

-- Location: LCCOMB_X38_Y20_N4
\avs_write~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_write,
	o => \avs_write~input0\);

-- Location: LCCOMB_X37_Y20_N0
\avs_to_blockram_converter_inst|CU|Selector3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|Selector3~0_combout\ = (!\avs_write~input0\ & ((\avs_to_blockram_converter_inst|CU|present_state.burst_write_pause~q\) # ((\avs_to_blockram_converter_inst|CU|present_state.burst_write~q\ & 
-- !\avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|present_state.burst_write~q\,
	datab => \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~combout\,
	datac => \avs_to_blockram_converter_inst|CU|present_state.burst_write_pause~q\,
	datad => \avs_write~input0\,
	combout => \avs_to_blockram_converter_inst|CU|Selector3~0_combout\);

-- Location: FF_X37_Y20_N1
\avs_to_blockram_converter_inst|CU|present_state.burst_write_pause\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|CU|Selector3~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|CU|present_state.burst_write_pause~q\);

-- Location: LCCOMB_X37_Y20_N18
\avs_to_blockram_converter_inst|CU|Selector2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|Selector2~0_combout\ = (!\avs_to_blockram_converter_inst|CU|present_state.burst_write_pause~q\ & ((\avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~combout\) # 
-- (!\avs_to_blockram_converter_inst|CU|present_state.burst_write~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_to_blockram_converter_inst|CU|present_state.burst_write_pause~q\,
	datac => \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~combout\,
	datad => \avs_to_blockram_converter_inst|CU|present_state.burst_write~q\,
	combout => \avs_to_blockram_converter_inst|CU|Selector2~0_combout\);

-- Location: LCCOMB_X37_Y20_N28
\avs_to_blockram_converter_inst|CU|Selector2~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|Selector2~1_combout\ = (\avs_write~input0\ & (((\avs_to_blockram_converter_inst|CU|Selector0~0_combout\ & !\avs_to_blockram_converter_inst|CU|next_state_evaluation~0_combout\)) # 
-- (!\avs_to_blockram_converter_inst|CU|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|Selector0~0_combout\,
	datab => \avs_to_blockram_converter_inst|CU|Selector2~0_combout\,
	datac => \avs_to_blockram_converter_inst|CU|next_state_evaluation~0_combout\,
	datad => \avs_write~input0\,
	combout => \avs_to_blockram_converter_inst|CU|Selector2~1_combout\);

-- Location: FF_X37_Y20_N29
\avs_to_blockram_converter_inst|CU|present_state.burst_write\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|CU|Selector2~1_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|CU|present_state.burst_write~q\);

-- Location: LCCOMB_X37_Y20_N4
\avs_to_blockram_converter_inst|CU|next_state.burst_lastwrite~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|next_state.burst_lastwrite~0_combout\ = (\avs_to_blockram_converter_inst|CU|present_state.burst_write~q\ & \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_to_blockram_converter_inst|CU|present_state.burst_write~q\,
	datac => \avs_to_blockram_converter_inst|EU|CMPB|cmp_equal~combout\,
	combout => \avs_to_blockram_converter_inst|CU|next_state.burst_lastwrite~0_combout\);

-- Location: FF_X37_Y20_N5
\avs_to_blockram_converter_inst|CU|present_state.burst_lastwrite\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|CU|next_state.burst_lastwrite~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|CU|present_state.burst_lastwrite~q\);

-- Location: LCCOMB_X38_Y21_N14
\avs_to_blockram_converter_inst|CU|next_state.wait_afterburst~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|next_state.wait_afterburst~0_combout\ = (\avs_to_blockram_converter_inst|CU|present_state.burst_lastwrite~q\) # (\avs_to_blockram_converter_inst|CU|present_state.burst_lastread~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|present_state.burst_lastwrite~q\,
	datad => \avs_to_blockram_converter_inst|CU|present_state.burst_lastread~q\,
	combout => \avs_to_blockram_converter_inst|CU|next_state.wait_afterburst~0_combout\);

-- Location: FF_X38_Y21_N15
\avs_to_blockram_converter_inst|CU|present_state.wait_afterburst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|CU|next_state.wait_afterburst~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|CU|present_state.wait_afterburst~q\);

-- Location: FF_X38_Y21_N5
\avs_to_blockram_converter_inst|CU|present_state.idle_afterburst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_to_blockram_converter_inst|CU|present_state.wait_afterburst~q\,
	clrn => \reset_n~input0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|CU|present_state.idle_afterburst~q\);

-- Location: LCCOMB_X38_Y21_N0
\avs_to_blockram_converter_inst|CU|Selector0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|Selector0~1_combout\ = (\avs_to_blockram_converter_inst|CU|present_state.init2~q\) # ((\avs_to_blockram_converter_inst|CU|Selector0~0_combout\ & !\avs_write~input0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_to_blockram_converter_inst|CU|Selector0~0_combout\,
	datac => \avs_write~input0\,
	datad => \avs_to_blockram_converter_inst|CU|present_state.init2~q\,
	combout => \avs_to_blockram_converter_inst|CU|Selector0~1_combout\);

-- Location: FF_X38_Y21_N1
\avs_to_blockram_converter_inst|CU|present_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|CU|Selector0~1_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|CU|present_state.idle~q\);

-- Location: LCCOMB_X38_Y21_N24
\avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\ = (\avs_to_blockram_converter_inst|CU|present_state.idle_afterburst~q\) # (\avs_to_blockram_converter_inst|CU|present_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_to_blockram_converter_inst|CU|present_state.idle_afterburst~q\,
	datad => \avs_to_blockram_converter_inst|CU|present_state.idle~q\,
	combout => \avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\);

-- Location: LCCOMB_X34_Y20_N22
\avs_to_blockram_converter_inst|CU|Selector0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|Selector0~0_combout\ = (!\avs_read~input0\ & ((\avs_to_blockram_converter_inst|CU|present_state.write_cmd~q\) # ((\avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\) # 
-- (\avs_to_blockram_converter_inst|CU|present_state.read_cmd~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|present_state.write_cmd~q\,
	datab => \avs_read~input0\,
	datac => \avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\,
	datad => \avs_to_blockram_converter_inst|CU|present_state.read_cmd~q\,
	combout => \avs_to_blockram_converter_inst|CU|Selector0~0_combout\);

-- Location: LCCOMB_X37_Y20_N10
\avs_to_blockram_converter_inst|CU|next_state.write_cmd~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|next_state.write_cmd~0_combout\ = (\avs_to_blockram_converter_inst|CU|Selector0~0_combout\ & (\avs_to_blockram_converter_inst|CU|next_state_evaluation~0_combout\ & \avs_write~input0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_to_blockram_converter_inst|CU|Selector0~0_combout\,
	datac => \avs_to_blockram_converter_inst|CU|next_state_evaluation~0_combout\,
	datad => \avs_write~input0\,
	combout => \avs_to_blockram_converter_inst|CU|next_state.write_cmd~0_combout\);

-- Location: FF_X37_Y20_N11
\avs_to_blockram_converter_inst|CU|present_state.write_cmd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|CU|next_state.write_cmd~0_combout\,
	clrn => \reset_n~input0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|CU|present_state.write_cmd~q\);

-- Location: LCCOMB_X37_Y20_N6
\avs_to_blockram_converter_inst|CU|WideOr12~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|WideOr12~0_combout\ = (\avs_to_blockram_converter_inst|CU|present_state.write_cmd~q\) # ((\avs_to_blockram_converter_inst|CU|present_state.burst_lastwrite~q\) # 
-- (\avs_to_blockram_converter_inst|CU|present_state.burst_write~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|present_state.write_cmd~q\,
	datac => \avs_to_blockram_converter_inst|CU|present_state.burst_lastwrite~q\,
	datad => \avs_to_blockram_converter_inst|CU|present_state.burst_write~q\,
	combout => \avs_to_blockram_converter_inst|CU|WideOr12~0_combout\);

-- Location: LCCOMB_X37_Y20_N12
\avs_to_blockram_converter_inst|CU|WideOr10~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|WideOr10~0_combout\ = (\avs_to_blockram_converter_inst|CU|present_state.burst_lastread~q\) # ((\avs_to_blockram_converter_inst|CU|present_state.burst_read~q\) # 
-- (\avs_to_blockram_converter_inst|CU|present_state.read_cmd~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_to_blockram_converter_inst|CU|present_state.burst_lastread~q\,
	datac => \avs_to_blockram_converter_inst|CU|present_state.burst_read~q\,
	datad => \avs_to_blockram_converter_inst|CU|present_state.read_cmd~q\,
	combout => \avs_to_blockram_converter_inst|CU|WideOr10~0_combout\);

-- Location: LCCOMB_X32_Y17_N4
\avs_writedata[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(0),
	o => \avs_writedata[0]~input0\);

-- Location: LCCOMB_X32_Y18_N24
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[0]~feeder_combout\ = \avs_writedata[0]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_writedata[0]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[0]~feeder_combout\);

-- Location: LCCOMB_X37_Y20_N14
\avs_to_blockram_converter_inst|CU|WideOr8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|WideOr8~combout\ = (\avs_to_blockram_converter_inst|CU|present_state.write_cmd~q\) # ((\avs_to_blockram_converter_inst|CU|present_state.burst_write~q\) # ((\avs_to_blockram_converter_inst|CU|present_state.read_cmd~q\) # 
-- (\avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|present_state.write_cmd~q\,
	datab => \avs_to_blockram_converter_inst|CU|present_state.burst_write~q\,
	datac => \avs_to_blockram_converter_inst|CU|present_state.read_cmd~q\,
	datad => \avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\,
	combout => \avs_to_blockram_converter_inst|CU|WideOr8~combout\);

-- Location: FF_X32_Y18_N25
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[0]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(0));

-- Location: LCCOMB_X34_Y20_N4
\avs_to_blockram_converter_inst|EU|address_reg|reg_out[0]~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|address_reg|reg_out[0]~8_combout\ = \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(0) $ (VCC)
-- \avs_to_blockram_converter_inst|EU|address_reg|reg_out[0]~9\ = CARRY(\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(0),
	datad => VCC,
	combout => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[0]~8_combout\,
	cout => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[0]~9\);

-- Location: LCCOMB_X34_Y19_N24
\avs_address[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(0),
	o => \avs_address[0]~input0\);

-- Location: LCCOMB_X34_Y20_N26
\avs_to_blockram_converter_inst|CU|WideOr9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|WideOr9~combout\ = (\avs_to_blockram_converter_inst|CU|present_state.write_cmd~q\) # (((\avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\) # 
-- (\avs_to_blockram_converter_inst|CU|present_state.read_cmd~q\)) # (!\avs_to_blockram_converter_inst|CU|WideOr7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|present_state.write_cmd~q\,
	datab => \avs_to_blockram_converter_inst|CU|WideOr7~0_combout\,
	datac => \avs_to_blockram_converter_inst|CU|burstcount_reg_enable~0_combout\,
	datad => \avs_to_blockram_converter_inst|CU|present_state.read_cmd~q\,
	combout => \avs_to_blockram_converter_inst|CU|WideOr9~combout\);

-- Location: FF_X34_Y20_N5
\avs_to_blockram_converter_inst|EU|address_reg|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[0]~8_combout\,
	asdata => \avs_address[0]~input0\,
	sload => \avs_to_blockram_converter_inst|CU|WideOr7~0_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(0));

-- Location: LCCOMB_X34_Y20_N6
\avs_to_blockram_converter_inst|EU|address_reg|reg_out[1]~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|address_reg|reg_out[1]~10_combout\ = (\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(1) & (!\avs_to_blockram_converter_inst|EU|address_reg|reg_out[0]~9\)) # 
-- (!\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(1) & ((\avs_to_blockram_converter_inst|EU|address_reg|reg_out[0]~9\) # (GND)))
-- \avs_to_blockram_converter_inst|EU|address_reg|reg_out[1]~11\ = CARRY((!\avs_to_blockram_converter_inst|EU|address_reg|reg_out[0]~9\) # (!\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(1),
	datad => VCC,
	cin => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[0]~9\,
	combout => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[1]~10_combout\,
	cout => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[1]~11\);

-- Location: LCCOMB_X34_Y19_N26
\avs_address[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(1),
	o => \avs_address[1]~input0\);

-- Location: FF_X34_Y20_N7
\avs_to_blockram_converter_inst|EU|address_reg|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[1]~10_combout\,
	asdata => \avs_address[1]~input0\,
	sload => \avs_to_blockram_converter_inst|CU|WideOr7~0_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(1));

-- Location: LCCOMB_X34_Y20_N8
\avs_to_blockram_converter_inst|EU|address_reg|reg_out[2]~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|address_reg|reg_out[2]~12_combout\ = (\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(2) & (\avs_to_blockram_converter_inst|EU|address_reg|reg_out[1]~11\ $ (GND))) # 
-- (!\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(2) & (!\avs_to_blockram_converter_inst|EU|address_reg|reg_out[1]~11\ & VCC))
-- \avs_to_blockram_converter_inst|EU|address_reg|reg_out[2]~13\ = CARRY((\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(2) & !\avs_to_blockram_converter_inst|EU|address_reg|reg_out[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(2),
	datad => VCC,
	cin => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[1]~11\,
	combout => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[2]~12_combout\,
	cout => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[2]~13\);

-- Location: LCCOMB_X35_Y20_N10
\avs_address[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(2),
	o => \avs_address[2]~input0\);

-- Location: FF_X34_Y20_N9
\avs_to_blockram_converter_inst|EU|address_reg|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[2]~12_combout\,
	asdata => \avs_address[2]~input0\,
	sload => \avs_to_blockram_converter_inst|CU|WideOr7~0_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(2));

-- Location: LCCOMB_X34_Y20_N10
\avs_to_blockram_converter_inst|EU|address_reg|reg_out[3]~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|address_reg|reg_out[3]~14_combout\ = (\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(3) & (!\avs_to_blockram_converter_inst|EU|address_reg|reg_out[2]~13\)) # 
-- (!\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(3) & ((\avs_to_blockram_converter_inst|EU|address_reg|reg_out[2]~13\) # (GND)))
-- \avs_to_blockram_converter_inst|EU|address_reg|reg_out[3]~15\ = CARRY((!\avs_to_blockram_converter_inst|EU|address_reg|reg_out[2]~13\) # (!\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(3),
	datad => VCC,
	cin => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[2]~13\,
	combout => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[3]~14_combout\,
	cout => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[3]~15\);

-- Location: LCCOMB_X34_Y17_N4
\avs_address[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(3),
	o => \avs_address[3]~input0\);

-- Location: FF_X34_Y20_N11
\avs_to_blockram_converter_inst|EU|address_reg|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[3]~14_combout\,
	asdata => \avs_address[3]~input0\,
	sload => \avs_to_blockram_converter_inst|CU|WideOr7~0_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(3));

-- Location: LCCOMB_X34_Y20_N12
\avs_to_blockram_converter_inst|EU|address_reg|reg_out[4]~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|address_reg|reg_out[4]~16_combout\ = (\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(4) & (\avs_to_blockram_converter_inst|EU|address_reg|reg_out[3]~15\ $ (GND))) # 
-- (!\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(4) & (!\avs_to_blockram_converter_inst|EU|address_reg|reg_out[3]~15\ & VCC))
-- \avs_to_blockram_converter_inst|EU|address_reg|reg_out[4]~17\ = CARRY((\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(4) & !\avs_to_blockram_converter_inst|EU|address_reg|reg_out[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(4),
	datad => VCC,
	cin => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[3]~15\,
	combout => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[4]~16_combout\,
	cout => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[4]~17\);

-- Location: LCCOMB_X34_Y19_N4
\avs_address[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(4),
	o => \avs_address[4]~input0\);

-- Location: FF_X34_Y20_N13
\avs_to_blockram_converter_inst|EU|address_reg|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[4]~16_combout\,
	asdata => \avs_address[4]~input0\,
	sload => \avs_to_blockram_converter_inst|CU|WideOr7~0_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(4));

-- Location: LCCOMB_X34_Y20_N14
\avs_to_blockram_converter_inst|EU|address_reg|reg_out[5]~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|address_reg|reg_out[5]~18_combout\ = (\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(5) & (!\avs_to_blockram_converter_inst|EU|address_reg|reg_out[4]~17\)) # 
-- (!\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(5) & ((\avs_to_blockram_converter_inst|EU|address_reg|reg_out[4]~17\) # (GND)))
-- \avs_to_blockram_converter_inst|EU|address_reg|reg_out[5]~19\ = CARRY((!\avs_to_blockram_converter_inst|EU|address_reg|reg_out[4]~17\) # (!\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(5),
	datad => VCC,
	cin => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[4]~17\,
	combout => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[5]~18_combout\,
	cout => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[5]~19\);

-- Location: LCCOMB_X34_Y19_N22
\avs_address[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(5),
	o => \avs_address[5]~input0\);

-- Location: FF_X34_Y20_N15
\avs_to_blockram_converter_inst|EU|address_reg|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[5]~18_combout\,
	asdata => \avs_address[5]~input0\,
	sload => \avs_to_blockram_converter_inst|CU|WideOr7~0_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(5));

-- Location: LCCOMB_X34_Y20_N16
\avs_to_blockram_converter_inst|EU|address_reg|reg_out[6]~20\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|address_reg|reg_out[6]~20_combout\ = (\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(6) & (\avs_to_blockram_converter_inst|EU|address_reg|reg_out[5]~19\ $ (GND))) # 
-- (!\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(6) & (!\avs_to_blockram_converter_inst|EU|address_reg|reg_out[5]~19\ & VCC))
-- \avs_to_blockram_converter_inst|EU|address_reg|reg_out[6]~21\ = CARRY((\avs_to_blockram_converter_inst|EU|address_reg|reg_out\(6) & !\avs_to_blockram_converter_inst|EU|address_reg|reg_out[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(6),
	datad => VCC,
	cin => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[5]~19\,
	combout => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[6]~20_combout\,
	cout => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[6]~21\);

-- Location: LCCOMB_X34_Y19_N8
\avs_address[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(6),
	o => \avs_address[6]~input0\);

-- Location: FF_X34_Y20_N17
\avs_to_blockram_converter_inst|EU|address_reg|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[6]~20_combout\,
	asdata => \avs_address[6]~input0\,
	sload => \avs_to_blockram_converter_inst|CU|WideOr7~0_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(6));

-- Location: LCCOMB_X34_Y20_N18
\avs_to_blockram_converter_inst|EU|address_reg|reg_out[7]~22\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|address_reg|reg_out[7]~22_combout\ = \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(7) $ (\avs_to_blockram_converter_inst|EU|address_reg|reg_out[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(7),
	cin => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[6]~21\,
	combout => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[7]~22_combout\);

-- Location: LCCOMB_X34_Y19_N10
\avs_address[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_address(7),
	o => \avs_address[7]~input0\);

-- Location: FF_X34_Y20_N19
\avs_to_blockram_converter_inst|EU|address_reg|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|address_reg|reg_out[7]~22_combout\,
	asdata => \avs_address[7]~input0\,
	sload => \avs_to_blockram_converter_inst|CU|WideOr7~0_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|address_reg|reg_out\(7));

-- Location: LCCOMB_X36_Y18_N16
\avs_writedata[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(1),
	o => \avs_writedata[1]~input0\);

-- Location: LCCOMB_X37_Y18_N8
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[1]~feeder_combout\ = \avs_writedata[1]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_writedata[1]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[1]~feeder_combout\);

-- Location: FF_X37_Y18_N9
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[1]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(1));

-- Location: LCCOMB_X32_Y17_N14
\avs_writedata[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(2),
	o => \avs_writedata[2]~input0\);

-- Location: LCCOMB_X32_Y18_N26
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[2]~feeder_combout\ = \avs_writedata[2]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_writedata[2]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[2]~feeder_combout\);

-- Location: FF_X32_Y18_N27
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[2]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(2));

-- Location: LCCOMB_X32_Y17_N0
\avs_writedata[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(3),
	o => \avs_writedata[3]~input0\);

-- Location: LCCOMB_X32_Y18_N28
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[3]~feeder_combout\ = \avs_writedata[3]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_writedata[3]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[3]~feeder_combout\);

-- Location: FF_X32_Y18_N29
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[3]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(3));

-- Location: LCCOMB_X32_Y17_N26
\avs_writedata[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(4),
	o => \avs_writedata[4]~input0\);

-- Location: LCCOMB_X32_Y18_N6
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[4]~feeder_combout\ = \avs_writedata[4]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_writedata[4]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[4]~feeder_combout\);

-- Location: FF_X32_Y18_N7
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[4]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(4));

-- Location: LCCOMB_X36_Y18_N10
\avs_writedata[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(5),
	o => \avs_writedata[5]~input0\);

-- Location: LCCOMB_X37_Y18_N10
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[5]~feeder_combout\ = \avs_writedata[5]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_writedata[5]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[5]~feeder_combout\);

-- Location: FF_X37_Y18_N11
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[5]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(5));

-- Location: LCCOMB_X37_Y17_N24
\avs_writedata[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(6),
	o => \avs_writedata[6]~input0\);

-- Location: LCCOMB_X37_Y18_N28
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[6]~feeder_combout\ = \avs_writedata[6]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_writedata[6]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[6]~feeder_combout\);

-- Location: FF_X37_Y18_N29
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[6]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(6));

-- Location: LCCOMB_X37_Y17_N10
\avs_writedata[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(7),
	o => \avs_writedata[7]~input0\);

-- Location: LCCOMB_X37_Y18_N14
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[7]~feeder_combout\ = \avs_writedata[7]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \avs_writedata[7]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[7]~feeder_combout\);

-- Location: FF_X37_Y18_N15
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[7]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(7));

-- Location: LCCOMB_X32_Y17_N20
\avs_writedata[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(8),
	o => \avs_writedata[8]~input0\);

-- Location: LCCOMB_X32_Y18_N16
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[8]~feeder_combout\ = \avs_writedata[8]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_writedata[8]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[8]~feeder_combout\);

-- Location: FF_X32_Y18_N17
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[8]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(8));

-- Location: LCCOMB_X32_Y17_N22
\avs_writedata[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(9),
	o => \avs_writedata[9]~input0\);

-- Location: LCCOMB_X32_Y18_N18
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[9]~feeder_combout\ = \avs_writedata[9]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_writedata[9]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[9]~feeder_combout\);

-- Location: FF_X32_Y18_N19
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[9]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(9));

-- Location: LCCOMB_X37_Y17_N12
\avs_writedata[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(10),
	o => \avs_writedata[10]~input0\);

-- Location: LCCOMB_X37_Y18_N0
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[10]~feeder_combout\ = \avs_writedata[10]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \avs_writedata[10]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[10]~feeder_combout\);

-- Location: FF_X37_Y18_N1
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[10]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(10));

-- Location: LCCOMB_X34_Y15_N8
\avs_writedata[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(11),
	o => \avs_writedata[11]~input0\);

-- Location: LCCOMB_X32_Y18_N20
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[11]~feeder_combout\ = \avs_writedata[11]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_writedata[11]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[11]~feeder_combout\);

-- Location: FF_X32_Y18_N21
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[11]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(11));

-- Location: LCCOMB_X32_Y17_N24
\avs_writedata[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(12),
	o => \avs_writedata[12]~input0\);

-- Location: LCCOMB_X32_Y18_N14
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[12]~feeder_combout\ = \avs_writedata[12]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_writedata[12]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[12]~feeder_combout\);

-- Location: FF_X32_Y18_N15
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[12]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(12));

-- Location: LCCOMB_X32_Y17_N2
\avs_writedata[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(13),
	o => \avs_writedata[13]~input0\);

-- Location: LCCOMB_X32_Y18_N8
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[13]~feeder_combout\ = \avs_writedata[13]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \avs_writedata[13]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[13]~feeder_combout\);

-- Location: FF_X32_Y18_N9
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[13]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(13));

-- Location: M9K_X33_Y18_N0
\blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "blockram_1port_8a_32d:blockram_1port_inst|altsyncram:altsyncram_component|altsyncram_qtp3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \avs_to_blockram_converter_inst|CU|WideOr12~0_combout\,
	portare => \avs_to_blockram_converter_inst|CU|WideOr10~0_combout\,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X32_Y17_N12
\avs_writedata[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(14),
	o => \avs_writedata[14]~input0\);

-- Location: LCCOMB_X32_Y18_N2
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[14]~feeder_combout\ = \avs_writedata[14]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_writedata[14]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[14]~feeder_combout\);

-- Location: FF_X32_Y18_N3
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[14]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(14));

-- Location: LCCOMB_X32_Y15_N8
\avs_writedata[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(15),
	o => \avs_writedata[15]~input0\);

-- Location: FF_X32_Y18_N13
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_writedata[15]~input0\,
	sload => VCC,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(15));

-- Location: LCCOMB_X36_Y18_N4
\avs_writedata[16]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(16),
	o => \avs_writedata[16]~input0\);

-- Location: LCCOMB_X37_Y18_N18
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[16]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[16]~feeder_combout\ = \avs_writedata[16]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_writedata[16]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[16]~feeder_combout\);

-- Location: FF_X37_Y18_N19
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[16]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(16));

-- Location: LCCOMB_X36_Y18_N22
\avs_writedata[17]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(17),
	o => \avs_writedata[17]~input0\);

-- Location: LCCOMB_X37_Y18_N20
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[17]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[17]~feeder_combout\ = \avs_writedata[17]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_writedata[17]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[17]~feeder_combout\);

-- Location: FF_X37_Y18_N21
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[17]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(17));

-- Location: LCCOMB_X36_Y18_N0
\avs_writedata[18]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(18),
	o => \avs_writedata[18]~input0\);

-- Location: FF_X37_Y18_N23
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \avs_writedata[18]~input0\,
	sload => VCC,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(18));

-- Location: LCCOMB_X36_Y18_N18
\avs_writedata[19]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(19),
	o => \avs_writedata[19]~input0\);

-- Location: LCCOMB_X37_Y18_N24
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[19]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[19]~feeder_combout\ = \avs_writedata[19]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \avs_writedata[19]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[19]~feeder_combout\);

-- Location: FF_X37_Y18_N25
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[19]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(19));

-- Location: LCCOMB_X36_Y18_N28
\avs_writedata[20]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(20),
	o => \avs_writedata[20]~input0\);

-- Location: LCCOMB_X37_Y18_N26
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[20]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[20]~feeder_combout\ = \avs_writedata[20]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \avs_writedata[20]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[20]~feeder_combout\);

-- Location: FF_X37_Y18_N27
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[20]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(20));

-- Location: LCCOMB_X35_Y18_N24
\avs_writedata[21]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(21),
	o => \avs_writedata[21]~input0\);

-- Location: LCCOMB_X32_Y18_N22
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[21]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[21]~feeder_combout\ = \avs_writedata[21]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_writedata[21]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[21]~feeder_combout\);

-- Location: FF_X32_Y18_N23
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[21]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(21));

-- Location: LCCOMB_X36_Y18_N30
\avs_writedata[22]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(22),
	o => \avs_writedata[22]~input0\);

-- Location: LCCOMB_X37_Y18_N4
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[22]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[22]~feeder_combout\ = \avs_writedata[22]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_writedata[22]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[22]~feeder_combout\);

-- Location: FF_X37_Y18_N5
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[22]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(22));

-- Location: LCCOMB_X35_Y18_N26
\avs_writedata[23]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(23),
	o => \avs_writedata[23]~input0\);

-- Location: LCCOMB_X32_Y18_N0
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[23]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[23]~feeder_combout\ = \avs_writedata[23]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_writedata[23]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[23]~feeder_combout\);

-- Location: FF_X32_Y18_N1
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[23]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(23));

-- Location: LCCOMB_X35_Y18_N12
\avs_writedata[24]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(24),
	o => \avs_writedata[24]~input0\);

-- Location: LCCOMB_X32_Y18_N10
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[24]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[24]~feeder_combout\ = \avs_writedata[24]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_writedata[24]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[24]~feeder_combout\);

-- Location: FF_X32_Y18_N11
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[24]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(24));

-- Location: LCCOMB_X36_Y18_N24
\avs_writedata[25]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(25),
	o => \avs_writedata[25]~input0\);

-- Location: LCCOMB_X37_Y18_N6
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[25]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[25]~feeder_combout\ = \avs_writedata[25]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_writedata[25]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[25]~feeder_combout\);

-- Location: FF_X37_Y18_N7
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[25]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(25));

-- Location: LCCOMB_X36_Y18_N26
\avs_writedata[26]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(26),
	o => \avs_writedata[26]~input0\);

-- Location: LCCOMB_X37_Y18_N16
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[26]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[26]~feeder_combout\ = \avs_writedata[26]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_writedata[26]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[26]~feeder_combout\);

-- Location: FF_X37_Y18_N17
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[26]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(26));

-- Location: LCCOMB_X36_Y18_N12
\avs_writedata[27]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(27),
	o => \avs_writedata[27]~input0\);

-- Location: LCCOMB_X37_Y18_N2
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[27]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[27]~feeder_combout\ = \avs_writedata[27]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_writedata[27]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[27]~feeder_combout\);

-- Location: FF_X37_Y18_N3
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[27]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(27));

-- Location: LCCOMB_X35_Y18_N30
\avs_writedata[28]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(28),
	o => \avs_writedata[28]~input0\);

-- Location: LCCOMB_X32_Y18_N4
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[28]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[28]~feeder_combout\ = \avs_writedata[28]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_writedata[28]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[28]~feeder_combout\);

-- Location: FF_X32_Y18_N5
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[28]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(28));

-- Location: LCCOMB_X36_Y18_N14
\avs_writedata[29]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(29),
	o => \avs_writedata[29]~input0\);

-- Location: LCCOMB_X37_Y18_N12
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[29]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[29]~feeder_combout\ = \avs_writedata[29]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_writedata[29]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[29]~feeder_combout\);

-- Location: FF_X37_Y18_N13
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[29]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(29));

-- Location: LCCOMB_X35_Y18_N8
\avs_writedata[30]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(30),
	o => \avs_writedata[30]~input0\);

-- Location: LCCOMB_X32_Y18_N30
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[30]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[30]~feeder_combout\ = \avs_writedata[30]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \avs_writedata[30]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[30]~feeder_combout\);

-- Location: FF_X32_Y18_N31
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[30]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(30));

-- Location: LCCOMB_X36_Y18_N8
\avs_writedata[31]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_avs_writedata(31),
	o => \avs_writedata[31]~input0\);

-- Location: LCCOMB_X37_Y18_N30
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[31]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[31]~feeder_combout\ = \avs_writedata[31]~input0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avs_writedata[31]~input0\,
	combout => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[31]~feeder_combout\);

-- Location: FF_X37_Y18_N31
\avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out[31]~feeder_combout\,
	ena => \avs_to_blockram_converter_inst|CU|WideOr8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|writedata_reg|reg_out\(31));

-- Location: M9K_X33_Y18_N0
\blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14\ : cyclone10lp_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "blockram_1port_8a_32d:blockram_1port_inst|altsyncram:altsyncram_component|altsyncram_qtp3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \avs_to_blockram_converter_inst|CU|WideOr12~0_combout\,
	portare => \avs_to_blockram_converter_inst|CU|WideOr10~0_combout\,
	clk0 => \clk~inputclkctrl_outclk\,
	portadatain => \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \blockram_1port_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X38_Y21_N4
\avs_to_blockram_converter_inst|CU|WideOr6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|CU|WideOr6~combout\ = (\avs_to_blockram_converter_inst|CU|present_state.init1~q\) # ((\avs_to_blockram_converter_inst|CU|present_state.init2~q\) # ((\avs_to_blockram_converter_inst|CU|present_state.wait_afterburst~q\) # 
-- (!\avs_to_blockram_converter_inst|CU|WideOr5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|CU|present_state.init1~q\,
	datab => \avs_to_blockram_converter_inst|CU|present_state.init2~q\,
	datac => \avs_to_blockram_converter_inst|CU|present_state.wait_afterburst~q\,
	datad => \avs_to_blockram_converter_inst|CU|WideOr5~0_combout\,
	combout => \avs_to_blockram_converter_inst|CU|WideOr6~combout\);

-- Location: FF_X37_Y20_N13
\avs_to_blockram_converter_inst|EU|pipe1|dff_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|CU|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|pipe1|dff_out~q\);

-- Location: LCCOMB_X37_Y20_N24
\avs_to_blockram_converter_inst|EU|pipe2|dff_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \avs_to_blockram_converter_inst|EU|pipe2|dff_out~0_combout\ = (\avs_to_blockram_converter_inst|EU|pipe1|dff_out~q\ & \avs_to_blockram_converter_inst|CU|present_state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avs_to_blockram_converter_inst|EU|pipe1|dff_out~q\,
	datab => \avs_to_blockram_converter_inst|CU|present_state.reset~q\,
	combout => \avs_to_blockram_converter_inst|EU|pipe2|dff_out~0_combout\);

-- Location: FF_X37_Y20_N25
\avs_to_blockram_converter_inst|EU|pipe2|dff_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \avs_to_blockram_converter_inst|EU|pipe2|dff_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avs_to_blockram_converter_inst|EU|pipe2|dff_out~q\);

ww_avs_readdata(0) <= \avs_readdata[0]~output_o\;

ww_avs_readdata(1) <= \avs_readdata[1]~output_o\;

ww_avs_readdata(2) <= \avs_readdata[2]~output_o\;

ww_avs_readdata(3) <= \avs_readdata[3]~output_o\;

ww_avs_readdata(4) <= \avs_readdata[4]~output_o\;

ww_avs_readdata(5) <= \avs_readdata[5]~output_o\;

ww_avs_readdata(6) <= \avs_readdata[6]~output_o\;

ww_avs_readdata(7) <= \avs_readdata[7]~output_o\;

ww_avs_readdata(8) <= \avs_readdata[8]~output_o\;

ww_avs_readdata(9) <= \avs_readdata[9]~output_o\;

ww_avs_readdata(10) <= \avs_readdata[10]~output_o\;

ww_avs_readdata(11) <= \avs_readdata[11]~output_o\;

ww_avs_readdata(12) <= \avs_readdata[12]~output_o\;

ww_avs_readdata(13) <= \avs_readdata[13]~output_o\;

ww_avs_readdata(14) <= \avs_readdata[14]~output_o\;

ww_avs_readdata(15) <= \avs_readdata[15]~output_o\;

ww_avs_readdata(16) <= \avs_readdata[16]~output_o\;

ww_avs_readdata(17) <= \avs_readdata[17]~output_o\;

ww_avs_readdata(18) <= \avs_readdata[18]~output_o\;

ww_avs_readdata(19) <= \avs_readdata[19]~output_o\;

ww_avs_readdata(20) <= \avs_readdata[20]~output_o\;

ww_avs_readdata(21) <= \avs_readdata[21]~output_o\;

ww_avs_readdata(22) <= \avs_readdata[22]~output_o\;

ww_avs_readdata(23) <= \avs_readdata[23]~output_o\;

ww_avs_readdata(24) <= \avs_readdata[24]~output_o\;

ww_avs_readdata(25) <= \avs_readdata[25]~output_o\;

ww_avs_readdata(26) <= \avs_readdata[26]~output_o\;

ww_avs_readdata(27) <= \avs_readdata[27]~output_o\;

ww_avs_readdata(28) <= \avs_readdata[28]~output_o\;

ww_avs_readdata(29) <= \avs_readdata[29]~output_o\;

ww_avs_readdata(30) <= \avs_readdata[30]~output_o\;

ww_avs_readdata(31) <= \avs_readdata[31]~output_o\;

ww_avs_waitrequest <= \avs_waitrequest~output_o\;

ww_avs_readdatavalid <= \avs_readdatavalid~output_o\;
END structure;


