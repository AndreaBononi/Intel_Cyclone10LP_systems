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

-- DATE "10/11/2023 12:00:33"

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

ENTITY 	synchronizer IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	synch_enable : IN std_logic;
	synch_clear_n : IN std_logic;
	burstcount : IN std_logic_vector(10 DOWNTO 0);
	din_strobe : IN std_logic;
	din : IN std_logic_vector(15 DOWNTO 0);
	dout : BUFFER std_logic_vector(15 DOWNTO 0);
	synch_validout : BUFFER std_logic;
	synch_busy : BUFFER std_logic
	);
END synchronizer;

-- Design Ports Information
-- dout[0]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[2]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[3]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[4]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[5]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[6]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[7]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[8]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[9]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[10]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[11]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[12]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[13]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[14]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout[15]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- synch_validout	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- synch_busy	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- synch_clear_n	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- synch_enable	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[0]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din_strobe	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[1]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[2]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[3]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[4]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[5]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[6]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[7]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[8]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[9]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[10]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[11]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[12]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[13]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[14]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[15]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- burstcount[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- burstcount[1]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- burstcount[2]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- burstcount[3]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- burstcount[4]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- burstcount[5]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- burstcount[6]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- burstcount[7]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- burstcount[8]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- burstcount[9]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- burstcount[10]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF synchronizer IS
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
SIGNAL ww_synch_enable : std_logic;
SIGNAL ww_synch_clear_n : std_logic;
SIGNAL ww_burstcount : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_din_strobe : std_logic;
SIGNAL ww_din : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_dout : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_synch_validout : std_logic;
SIGNAL ww_synch_busy : std_logic;
SIGNAL \din_strobe~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dout[0]~output_o\ : std_logic;
SIGNAL \dout[1]~output_o\ : std_logic;
SIGNAL \dout[2]~output_o\ : std_logic;
SIGNAL \dout[3]~output_o\ : std_logic;
SIGNAL \dout[4]~output_o\ : std_logic;
SIGNAL \dout[5]~output_o\ : std_logic;
SIGNAL \dout[6]~output_o\ : std_logic;
SIGNAL \dout[7]~output_o\ : std_logic;
SIGNAL \dout[8]~output_o\ : std_logic;
SIGNAL \dout[9]~output_o\ : std_logic;
SIGNAL \dout[10]~output_o\ : std_logic;
SIGNAL \dout[11]~output_o\ : std_logic;
SIGNAL \dout[12]~output_o\ : std_logic;
SIGNAL \dout[13]~output_o\ : std_logic;
SIGNAL \dout[14]~output_o\ : std_logic;
SIGNAL \dout[15]~output_o\ : std_logic;
SIGNAL \synch_validout~output_o\ : std_logic;
SIGNAL \synch_busy~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \synch_clear_n~input_o\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \CU|present_state.reset~q\ : std_logic;
SIGNAL \din_strobe~input_o\ : std_logic;
SIGNAL \din_strobe~inputclkctrl_outclk\ : std_logic;
SIGNAL \CU|present_state~19_combout\ : std_logic;
SIGNAL \CU|present_state.reception_end_1~q\ : std_logic;
SIGNAL \CU|present_state~18_combout\ : std_logic;
SIGNAL \CU|present_state.reception_end_2~q\ : std_logic;
SIGNAL \CU|present_state~16_combout\ : std_logic;
SIGNAL \CU|present_state.idle_clear~q\ : std_logic;
SIGNAL \CU|WideOr3~0_combout\ : std_logic;
SIGNAL \CU|WideOr4~0_combout\ : std_logic;
SIGNAL \EU|data_counter|g1:1:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|data_counter|g1:1:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|data_counter|tgl_in[1]~0_combout\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:2:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:2:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:3:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:4:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:5:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:5:chain_tff|dummy_out~1_combout\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:5:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:6:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:7:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:8:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:8:chain_tff|dummy_out~1_combout\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:8:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:9:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:9:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \burstcount[8]~input_o\ : std_logic;
SIGNAL \burstcount[9]~input_o\ : std_logic;
SIGNAL \EU|burstlen|reg_out[9]~feeder_combout\ : std_logic;
SIGNAL \EU|burstlen_cmp|equal~5_combout\ : std_logic;
SIGNAL \burstcount[2]~input_o\ : std_logic;
SIGNAL \burstcount[3]~input_o\ : std_logic;
SIGNAL \EU|burstlen|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \EU|burstlen_cmp|equal~1_combout\ : std_logic;
SIGNAL \burstcount[0]~input_o\ : std_logic;
SIGNAL \burstcount[1]~input_o\ : std_logic;
SIGNAL \EU|burstlen|reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \EU|burstlen_cmp|equal~0_combout\ : std_logic;
SIGNAL \burstcount[5]~input_o\ : std_logic;
SIGNAL \EU|burstlen|reg_out[5]~feeder_combout\ : std_logic;
SIGNAL \burstcount[4]~input_o\ : std_logic;
SIGNAL \EU|burstlen_cmp|equal~2_combout\ : std_logic;
SIGNAL \burstcount[6]~input_o\ : std_logic;
SIGNAL \burstcount[7]~input_o\ : std_logic;
SIGNAL \EU|burstlen|reg_out[7]~feeder_combout\ : std_logic;
SIGNAL \EU|burstlen_cmp|equal~3_combout\ : std_logic;
SIGNAL \EU|burstlen_cmp|equal~4_combout\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:10:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|burstlen_counter|g1:10:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \burstcount[10]~input_o\ : std_logic;
SIGNAL \EU|burstlen|reg_out[10]~feeder_combout\ : std_logic;
SIGNAL \EU|burstlen_cmp|equal~combout\ : std_logic;
SIGNAL \CU|present_state~15_combout\ : std_logic;
SIGNAL \CU|present_state.reception~q\ : std_logic;
SIGNAL \CU|WideOr4~combout\ : std_logic;
SIGNAL \EU|synchronizer|sr_out~0_combout\ : std_logic;
SIGNAL \EU|synchronizer|sr_out~q\ : std_logic;
SIGNAL \synch_enable~input_o\ : std_logic;
SIGNAL \CU|present_state~14_combout\ : std_logic;
SIGNAL \CU|present_state.idle_disabled~q\ : std_logic;
SIGNAL \CU|present_state~12_combout\ : std_logic;
SIGNAL \CU|present_state~13_combout\ : std_logic;
SIGNAL \CU|present_state.idle~feeder_combout\ : std_logic;
SIGNAL \CU|present_state.idle~q\ : std_logic;
SIGNAL \CU|present_state~17_combout\ : std_logic;
SIGNAL \CU|present_state.reception_init~q\ : std_logic;
SIGNAL \EU|data_counter|entry_tff|dummy_out~2_combout\ : std_logic;
SIGNAL \EU|data_counter|entry_tff|dummy_out~q\ : std_logic;
SIGNAL \din[0]~input_o\ : std_logic;
SIGNAL \EU|readdata01|reg_out[0]~feeder_combout\ : std_logic;
SIGNAL \EU|code_counter|entry_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|code_counter|entry_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|code_counter|g1:1:chain_tff|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|code_counter|g1:1:chain_tff|dummy_out~q\ : std_logic;
SIGNAL \EU|dec|Mux2~1_combout\ : std_logic;
SIGNAL \EU|readdata00|reg_out[0]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata00_enable~0_combout\ : std_logic;
SIGNAL \EU|readdata00_enable~combout\ : std_logic;
SIGNAL \EU|datamux|Mux15~0_combout\ : std_logic;
SIGNAL \EU|readdata11|reg_out[0]~feeder_combout\ : std_logic;
SIGNAL \EU|dec|Mux2~2_combout\ : std_logic;
SIGNAL \EU|readdata10|reg_out[0]~feeder_combout\ : std_logic;
SIGNAL \EU|dec|Mux2~0_combout\ : std_logic;
SIGNAL \EU|datamux|Mux15~1_combout\ : std_logic;
SIGNAL \EU|dataout_pipe|reg_out~0_combout\ : std_logic;
SIGNAL \CU|WideOr5~0_combout\ : std_logic;
SIGNAL \din[1]~input_o\ : std_logic;
SIGNAL \EU|readdata11|reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata00|reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata01|reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux14~0_combout\ : std_logic;
SIGNAL \EU|readdata10|reg_out[1]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux14~1_combout\ : std_logic;
SIGNAL \EU|dataout_pipe|reg_out~1_combout\ : std_logic;
SIGNAL \din[2]~input_o\ : std_logic;
SIGNAL \EU|readdata00|reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata10|reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux13~0_combout\ : std_logic;
SIGNAL \EU|readdata11|reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata01|reg_out[2]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux13~1_combout\ : std_logic;
SIGNAL \EU|dataout_pipe|reg_out~2_combout\ : std_logic;
SIGNAL \din[3]~input_o\ : std_logic;
SIGNAL \EU|readdata11|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata01|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata00|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux12~0_combout\ : std_logic;
SIGNAL \EU|readdata10|reg_out[3]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux12~1_combout\ : std_logic;
SIGNAL \EU|dataout_pipe|reg_out~3_combout\ : std_logic;
SIGNAL \din[4]~input_o\ : std_logic;
SIGNAL \EU|readdata11|reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata01|reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata00|reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata10|reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux11~0_combout\ : std_logic;
SIGNAL \EU|datamux|Mux11~1_combout\ : std_logic;
SIGNAL \EU|dataout_pipe|reg_out~4_combout\ : std_logic;
SIGNAL \EU|dataout_pipe|reg_out[4]~feeder_combout\ : std_logic;
SIGNAL \din[5]~input_o\ : std_logic;
SIGNAL \EU|readdata10|reg_out[5]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata11|reg_out[5]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata00|reg_out[5]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata01|reg_out[5]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux10~0_combout\ : std_logic;
SIGNAL \EU|datamux|Mux10~1_combout\ : std_logic;
SIGNAL \EU|dataout_pipe|reg_out~5_combout\ : std_logic;
SIGNAL \din[6]~input_o\ : std_logic;
SIGNAL \EU|readdata01|reg_out[6]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata00|reg_out[6]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata10|reg_out[6]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux9~0_combout\ : std_logic;
SIGNAL \EU|readdata11|reg_out[6]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux9~1_combout\ : std_logic;
SIGNAL \EU|dataout_pipe|reg_out~6_combout\ : std_logic;
SIGNAL \din[7]~input_o\ : std_logic;
SIGNAL \EU|readdata10|reg_out[7]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata11|reg_out[7]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata00|reg_out[7]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata01|reg_out[7]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux8~0_combout\ : std_logic;
SIGNAL \EU|datamux|Mux8~1_combout\ : std_logic;
SIGNAL \EU|dataout_pipe|reg_out~7_combout\ : std_logic;
SIGNAL \din[8]~input_o\ : std_logic;
SIGNAL \EU|readdata11|reg_out[8]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata10|reg_out[8]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata00|reg_out[8]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux7~0_combout\ : std_logic;
SIGNAL \EU|readdata01|reg_out[8]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux7~1_combout\ : std_logic;
SIGNAL \EU|dataout_pipe|reg_out~8_combout\ : std_logic;
SIGNAL \din[9]~input_o\ : std_logic;
SIGNAL \EU|readdata10|reg_out[9]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata00|reg_out[9]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata01|reg_out[9]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux6~0_combout\ : std_logic;
SIGNAL \EU|readdata11|reg_out[9]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux6~1_combout\ : std_logic;
SIGNAL \EU|dataout_pipe|reg_out~9_combout\ : std_logic;
SIGNAL \din[10]~input_o\ : std_logic;
SIGNAL \EU|readdata11|reg_out[10]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata01|reg_out[10]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata00|reg_out[10]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata10|reg_out[10]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux5~0_combout\ : std_logic;
SIGNAL \EU|datamux|Mux5~1_combout\ : std_logic;
SIGNAL \EU|dataout_pipe|reg_out~10_combout\ : std_logic;
SIGNAL \din[11]~input_o\ : std_logic;
SIGNAL \EU|readdata11|reg_out[11]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata10|reg_out[11]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata01|reg_out[11]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata00|reg_out[11]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux4~0_combout\ : std_logic;
SIGNAL \EU|datamux|Mux4~1_combout\ : std_logic;
SIGNAL \EU|dataout_pipe|reg_out~11_combout\ : std_logic;
SIGNAL \din[12]~input_o\ : std_logic;
SIGNAL \EU|readdata11|reg_out[12]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata01|reg_out[12]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata00|reg_out[12]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata10|reg_out[12]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux3~0_combout\ : std_logic;
SIGNAL \EU|datamux|Mux3~1_combout\ : std_logic;
SIGNAL \EU|dataout_pipe|reg_out~12_combout\ : std_logic;
SIGNAL \din[13]~input_o\ : std_logic;
SIGNAL \EU|readdata00|reg_out[13]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata01|reg_out[13]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux2~0_combout\ : std_logic;
SIGNAL \EU|readdata10|reg_out[13]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata11|reg_out[13]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux2~1_combout\ : std_logic;
SIGNAL \EU|dataout_pipe|reg_out~13_combout\ : std_logic;
SIGNAL \EU|dataout_pipe|reg_out[13]~feeder_combout\ : std_logic;
SIGNAL \din[14]~input_o\ : std_logic;
SIGNAL \EU|readdata01|reg_out[14]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata11|reg_out[14]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata10|reg_out[14]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata00|reg_out[14]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux1~0_combout\ : std_logic;
SIGNAL \EU|datamux|Mux1~1_combout\ : std_logic;
SIGNAL \EU|dataout_pipe|reg_out~14_combout\ : std_logic;
SIGNAL \din[15]~input_o\ : std_logic;
SIGNAL \EU|readdata11|reg_out[15]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata10|reg_out[15]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata01|reg_out[15]~feeder_combout\ : std_logic;
SIGNAL \EU|readdata00|reg_out[15]~feeder_combout\ : std_logic;
SIGNAL \EU|datamux|Mux0~0_combout\ : std_logic;
SIGNAL \EU|datamux|Mux0~1_combout\ : std_logic;
SIGNAL \EU|dataout_pipe|reg_out~15_combout\ : std_logic;
SIGNAL \EU|valid_pipe|dff_out~feeder_combout\ : std_logic;
SIGNAL \EU|valid_pipe|dff_out~q\ : std_logic;
SIGNAL \CU|WideOr5~combout\ : std_logic;
SIGNAL \EU|busy_pipe|dff_out~q\ : std_logic;
SIGNAL \EU|burstlen_counter|tgl_in\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \EU|burstlen|reg_out\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \EU|dataout_pipe|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|readdata11|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|dataout|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|readdata10|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|readdata01|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \EU|readdata00|reg_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \CU|ALT_INV_present_state.reset~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_synch_enable <= synch_enable;
ww_synch_clear_n <= synch_clear_n;
ww_burstcount <= burstcount;
ww_din_strobe <= din_strobe;
ww_din <= din;
dout <= ww_dout;
synch_validout <= ww_synch_validout;
synch_busy <= ww_synch_busy;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\din_strobe~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \din_strobe~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\CU|ALT_INV_present_state.reset~q\ <= NOT \CU|present_state.reset~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X38_Y34_N2
\dout[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|dataout_pipe|reg_out\(0),
	devoe => ww_devoe,
	o => \dout[0]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\dout[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|dataout_pipe|reg_out\(1),
	devoe => ww_devoe,
	o => \dout[1]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\dout[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|dataout_pipe|reg_out\(2),
	devoe => ww_devoe,
	o => \dout[2]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\dout[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|dataout_pipe|reg_out\(3),
	devoe => ww_devoe,
	o => \dout[3]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\dout[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|dataout_pipe|reg_out\(4),
	devoe => ww_devoe,
	o => \dout[4]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\dout[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|dataout_pipe|reg_out\(5),
	devoe => ww_devoe,
	o => \dout[5]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\dout[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|dataout_pipe|reg_out\(6),
	devoe => ww_devoe,
	o => \dout[6]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\dout[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|dataout_pipe|reg_out\(7),
	devoe => ww_devoe,
	o => \dout[7]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\dout[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|dataout_pipe|reg_out\(8),
	devoe => ww_devoe,
	o => \dout[8]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\dout[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|dataout_pipe|reg_out\(9),
	devoe => ww_devoe,
	o => \dout[9]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\dout[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|dataout_pipe|reg_out\(10),
	devoe => ww_devoe,
	o => \dout[10]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\dout[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|dataout_pipe|reg_out\(11),
	devoe => ww_devoe,
	o => \dout[11]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\dout[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|dataout_pipe|reg_out\(12),
	devoe => ww_devoe,
	o => \dout[12]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\dout[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|dataout_pipe|reg_out\(13),
	devoe => ww_devoe,
	o => \dout[13]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\dout[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|dataout_pipe|reg_out\(14),
	devoe => ww_devoe,
	o => \dout[14]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\dout[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|dataout_pipe|reg_out\(15),
	devoe => ww_devoe,
	o => \dout[15]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\synch_validout~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|valid_pipe|dff_out~q\,
	devoe => ww_devoe,
	o => \synch_validout~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\synch_busy~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|busy_pipe|dff_out~q\,
	devoe => ww_devoe,
	o => \synch_busy~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: IOIBUF_X27_Y0_N8
\synch_clear_n~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_synch_clear_n,
	o => \synch_clear_n~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\rst_n~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: FF_X40_Y6_N21
\CU|present_state.reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \synch_clear_n~input_o\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.reset~q\);

-- Location: IOIBUF_X0_Y16_N1
\din_strobe~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din_strobe,
	o => \din_strobe~input_o\);

-- Location: CLKCTRL_G4
\din_strobe~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \din_strobe~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \din_strobe~inputclkctrl_outclk\);

-- Location: LCCOMB_X40_Y6_N30
\CU|present_state~19\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state~19_combout\ = (\synch_clear_n~input_o\ & (\CU|present_state.reception~q\ & \EU|burstlen_cmp|equal~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \synch_clear_n~input_o\,
	datac => \CU|present_state.reception~q\,
	datad => \EU|burstlen_cmp|equal~combout\,
	combout => \CU|present_state~19_combout\);

-- Location: FF_X40_Y6_N31
\CU|present_state.reception_end_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|present_state~19_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.reception_end_1~q\);

-- Location: LCCOMB_X40_Y6_N10
\CU|present_state~18\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state~18_combout\ = (\synch_clear_n~input_o\ & \CU|present_state.reception_end_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \synch_clear_n~input_o\,
	datad => \CU|present_state.reception_end_1~q\,
	combout => \CU|present_state~18_combout\);

-- Location: FF_X40_Y6_N11
\CU|present_state.reception_end_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|present_state~18_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.reception_end_2~q\);

-- Location: LCCOMB_X40_Y6_N8
\CU|present_state~16\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state~16_combout\ = (\synch_clear_n~input_o\ & ((\CU|present_state.idle_clear~q\) # (\CU|present_state.reception_end_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \synch_clear_n~input_o\,
	datac => \CU|present_state.idle_clear~q\,
	datad => \CU|present_state.reception_end_2~q\,
	combout => \CU|present_state~16_combout\);

-- Location: FF_X40_Y6_N9
\CU|present_state.idle_clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|present_state~16_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.idle_clear~q\);

-- Location: LCCOMB_X40_Y6_N16
\CU|WideOr3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr3~0_combout\ = (\CU|present_state.reception_end_2~q\) # ((\CU|present_state.idle_clear~q\) # ((\CU|present_state.reception_end_1~q\) # (!\CU|present_state.reset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.reception_end_2~q\,
	datab => \CU|present_state.idle_clear~q\,
	datac => \CU|present_state.reception_end_1~q\,
	datad => \CU|present_state.reset~q\,
	combout => \CU|WideOr3~0_combout\);

-- Location: LCCOMB_X44_Y7_N0
\CU|WideOr4~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr4~0_combout\ = (\CU|present_state.reception_init~q\) # (\CU|present_state.reception~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.reception_init~q\,
	datad => \CU|present_state.reception~q\,
	combout => \CU|WideOr4~0_combout\);

-- Location: LCCOMB_X44_Y7_N4
\EU|data_counter|g1:1:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|data_counter|g1:1:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr3~0_combout\ & (\EU|data_counter|g1:1:chain_tff|dummy_out~q\ $ (((\CU|WideOr4~0_combout\ & \EU|data_counter|entry_tff|dummy_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr3~0_combout\,
	datab => \CU|WideOr4~0_combout\,
	datac => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|data_counter|g1:1:chain_tff|dummy_out~0_combout\);

-- Location: FF_X44_Y7_N5
\EU|data_counter|g1:1:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|data_counter|g1:1:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|data_counter|g1:1:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X44_Y7_N2
\EU|data_counter|tgl_in[1]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|data_counter|tgl_in[1]~0_combout\ = (\EU|data_counter|entry_tff|dummy_out~q\ & ((\CU|present_state.reception~q\) # (\CU|present_state.reception_init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|present_state.reception~q\,
	datac => \CU|present_state.reception_init~q\,
	datad => \EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|data_counter|tgl_in[1]~0_combout\);

-- Location: LCCOMB_X44_Y7_N24
\EU|burstlen_counter|g1:2:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_counter|g1:2:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr3~0_combout\ & (\EU|burstlen_counter|g1:2:chain_tff|dummy_out~q\ $ (((\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & \EU|data_counter|tgl_in[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr3~0_combout\,
	datab => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|burstlen_counter|g1:2:chain_tff|dummy_out~q\,
	datad => \EU|data_counter|tgl_in[1]~0_combout\,
	combout => \EU|burstlen_counter|g1:2:chain_tff|dummy_out~0_combout\);

-- Location: FF_X44_Y7_N25
\EU|burstlen_counter|g1:2:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstlen_counter|g1:2:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen_counter|g1:2:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X44_Y7_N28
\EU|burstlen_counter|tgl_in[3]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_counter|tgl_in\(3) = (\EU|data_counter|entry_tff|dummy_out~q\ & (\EU|burstlen_counter|g1:2:chain_tff|dummy_out~q\ & (\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & \CU|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|burstlen_counter|g1:2:chain_tff|dummy_out~q\,
	datac => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \CU|WideOr4~0_combout\,
	combout => \EU|burstlen_counter|tgl_in\(3));

-- Location: LCCOMB_X44_Y7_N30
\EU|burstlen_counter|g1:3:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_counter|g1:3:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr3~0_combout\ & (\EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\ $ (\EU|burstlen_counter|tgl_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr3~0_combout\,
	datac => \EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\,
	datad => \EU|burstlen_counter|tgl_in\(3),
	combout => \EU|burstlen_counter|g1:3:chain_tff|dummy_out~0_combout\);

-- Location: FF_X44_Y7_N31
\EU|burstlen_counter|g1:3:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstlen_counter|g1:3:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X44_Y6_N2
\EU|burstlen_counter|g1:4:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_counter|g1:4:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr3~0_combout\ & (\EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\ $ (((\EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\ & \EU|burstlen_counter|tgl_in\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\,
	datab => \EU|burstlen_counter|tgl_in\(3),
	datac => \EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\,
	datad => \CU|WideOr3~0_combout\,
	combout => \EU|burstlen_counter|g1:4:chain_tff|dummy_out~0_combout\);

-- Location: FF_X44_Y6_N3
\EU|burstlen_counter|g1:4:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstlen_counter|g1:4:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X44_Y6_N24
\EU|burstlen_counter|g1:5:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_counter|g1:5:chain_tff|dummy_out~0_combout\ = \EU|burstlen_counter|g1:5:chain_tff|dummy_out~q\ $ (((\EU|burstlen_counter|tgl_in\(3) & (\EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\ & \EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|burstlen_counter|tgl_in\(3),
	datab => \EU|burstlen_counter|g1:5:chain_tff|dummy_out~q\,
	datac => \EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\,
	datad => \EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\,
	combout => \EU|burstlen_counter|g1:5:chain_tff|dummy_out~0_combout\);

-- Location: LCCOMB_X44_Y6_N0
\EU|burstlen_counter|g1:5:chain_tff|dummy_out~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_counter|g1:5:chain_tff|dummy_out~1_combout\ = (!\CU|WideOr3~0_combout\ & \EU|burstlen_counter|g1:5:chain_tff|dummy_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|WideOr3~0_combout\,
	datad => \EU|burstlen_counter|g1:5:chain_tff|dummy_out~0_combout\,
	combout => \EU|burstlen_counter|g1:5:chain_tff|dummy_out~1_combout\);

-- Location: FF_X44_Y6_N1
\EU|burstlen_counter|g1:5:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstlen_counter|g1:5:chain_tff|dummy_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen_counter|g1:5:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X44_Y7_N20
\EU|burstlen_counter|tgl_in[6]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_counter|tgl_in\(6) = (\EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\ & (\EU|burstlen_counter|g1:5:chain_tff|dummy_out~q\ & (\EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\ & \EU|burstlen_counter|tgl_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\,
	datab => \EU|burstlen_counter|g1:5:chain_tff|dummy_out~q\,
	datac => \EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\,
	datad => \EU|burstlen_counter|tgl_in\(3),
	combout => \EU|burstlen_counter|tgl_in\(6));

-- Location: LCCOMB_X44_Y7_N8
\EU|burstlen_counter|g1:6:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_counter|g1:6:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr3~0_combout\ & (\EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\ $ (\EU|burstlen_counter|tgl_in\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr3~0_combout\,
	datac => \EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\,
	datad => \EU|burstlen_counter|tgl_in\(6),
	combout => \EU|burstlen_counter|g1:6:chain_tff|dummy_out~0_combout\);

-- Location: FF_X44_Y7_N9
\EU|burstlen_counter|g1:6:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstlen_counter|g1:6:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X44_Y7_N26
\EU|burstlen_counter|g1:7:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_counter|g1:7:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr3~0_combout\ & (\EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\ $ (((\EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\ & \EU|burstlen_counter|tgl_in\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr3~0_combout\,
	datab => \EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\,
	datac => \EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\,
	datad => \EU|burstlen_counter|tgl_in\(6),
	combout => \EU|burstlen_counter|g1:7:chain_tff|dummy_out~0_combout\);

-- Location: FF_X44_Y7_N27
\EU|burstlen_counter|g1:7:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstlen_counter|g1:7:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X44_Y7_N12
\EU|burstlen_counter|g1:8:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_counter|g1:8:chain_tff|dummy_out~0_combout\ = \EU|burstlen_counter|g1:8:chain_tff|dummy_out~q\ $ (((\EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\ & (\EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\ & \EU|burstlen_counter|tgl_in\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\,
	datab => \EU|burstlen_counter|g1:8:chain_tff|dummy_out~q\,
	datac => \EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\,
	datad => \EU|burstlen_counter|tgl_in\(6),
	combout => \EU|burstlen_counter|g1:8:chain_tff|dummy_out~0_combout\);

-- Location: LCCOMB_X44_Y7_N16
\EU|burstlen_counter|g1:8:chain_tff|dummy_out~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_counter|g1:8:chain_tff|dummy_out~1_combout\ = (!\CU|WideOr3~0_combout\ & \EU|burstlen_counter|g1:8:chain_tff|dummy_out~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|WideOr3~0_combout\,
	datad => \EU|burstlen_counter|g1:8:chain_tff|dummy_out~0_combout\,
	combout => \EU|burstlen_counter|g1:8:chain_tff|dummy_out~1_combout\);

-- Location: FF_X44_Y7_N17
\EU|burstlen_counter|g1:8:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstlen_counter|g1:8:chain_tff|dummy_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen_counter|g1:8:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X44_Y7_N14
\EU|burstlen_counter|tgl_in[9]\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_counter|tgl_in\(9) = (\EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\ & (\EU|burstlen_counter|g1:8:chain_tff|dummy_out~q\ & (\EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\ & \EU|burstlen_counter|tgl_in\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\,
	datab => \EU|burstlen_counter|g1:8:chain_tff|dummy_out~q\,
	datac => \EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\,
	datad => \EU|burstlen_counter|tgl_in\(6),
	combout => \EU|burstlen_counter|tgl_in\(9));

-- Location: LCCOMB_X44_Y7_N22
\EU|burstlen_counter|g1:9:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_counter|g1:9:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr3~0_combout\ & (\EU|burstlen_counter|tgl_in\(9) $ (\EU|burstlen_counter|g1:9:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|burstlen_counter|tgl_in\(9),
	datac => \EU|burstlen_counter|g1:9:chain_tff|dummy_out~q\,
	datad => \CU|WideOr3~0_combout\,
	combout => \EU|burstlen_counter|g1:9:chain_tff|dummy_out~0_combout\);

-- Location: FF_X44_Y7_N23
\EU|burstlen_counter|g1:9:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstlen_counter|g1:9:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen_counter|g1:9:chain_tff|dummy_out~q\);

-- Location: IOIBUF_X49_Y0_N8
\burstcount[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_burstcount(8),
	o => \burstcount[8]~input_o\);

-- Location: FF_X45_Y6_N3
\EU|burstlen|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	asdata => \burstcount[8]~input_o\,
	sload => VCC,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen|reg_out\(8));

-- Location: IOIBUF_X53_Y17_N22
\burstcount[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_burstcount(9),
	o => \burstcount[9]~input_o\);

-- Location: LCCOMB_X45_Y6_N12
\EU|burstlen|reg_out[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen|reg_out[9]~feeder_combout\ = \burstcount[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \burstcount[9]~input_o\,
	combout => \EU|burstlen|reg_out[9]~feeder_combout\);

-- Location: FF_X45_Y6_N13
\EU|burstlen|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|burstlen|reg_out[9]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen|reg_out\(9));

-- Location: LCCOMB_X45_Y6_N2
\EU|burstlen_cmp|equal~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_cmp|equal~5_combout\ = (\EU|burstlen_counter|g1:8:chain_tff|dummy_out~q\ & (\EU|burstlen|reg_out\(8) & (\EU|burstlen_counter|g1:9:chain_tff|dummy_out~q\ $ (!\EU|burstlen|reg_out\(9))))) # (!\EU|burstlen_counter|g1:8:chain_tff|dummy_out~q\ & 
-- (!\EU|burstlen|reg_out\(8) & (\EU|burstlen_counter|g1:9:chain_tff|dummy_out~q\ $ (!\EU|burstlen|reg_out\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|burstlen_counter|g1:8:chain_tff|dummy_out~q\,
	datab => \EU|burstlen_counter|g1:9:chain_tff|dummy_out~q\,
	datac => \EU|burstlen|reg_out\(8),
	datad => \EU|burstlen|reg_out\(9),
	combout => \EU|burstlen_cmp|equal~5_combout\);

-- Location: IOIBUF_X47_Y0_N22
\burstcount[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_burstcount(2),
	o => \burstcount[2]~input_o\);

-- Location: FF_X44_Y6_N13
\EU|burstlen|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	asdata => \burstcount[2]~input_o\,
	sload => VCC,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen|reg_out\(2));

-- Location: IOIBUF_X53_Y22_N8
\burstcount[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_burstcount(3),
	o => \burstcount[3]~input_o\);

-- Location: LCCOMB_X45_Y6_N6
\EU|burstlen|reg_out[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen|reg_out[3]~feeder_combout\ = \burstcount[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \burstcount[3]~input_o\,
	combout => \EU|burstlen|reg_out[3]~feeder_combout\);

-- Location: FF_X45_Y6_N7
\EU|burstlen|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|burstlen|reg_out[3]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen|reg_out\(3));

-- Location: LCCOMB_X44_Y6_N12
\EU|burstlen_cmp|equal~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_cmp|equal~1_combout\ = (\EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\ & (\EU|burstlen|reg_out\(3) & (\EU|burstlen_counter|g1:2:chain_tff|dummy_out~q\ $ (!\EU|burstlen|reg_out\(2))))) # (!\EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\ & 
-- (!\EU|burstlen|reg_out\(3) & (\EU|burstlen_counter|g1:2:chain_tff|dummy_out~q\ $ (!\EU|burstlen|reg_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|burstlen_counter|g1:3:chain_tff|dummy_out~q\,
	datab => \EU|burstlen_counter|g1:2:chain_tff|dummy_out~q\,
	datac => \EU|burstlen|reg_out\(2),
	datad => \EU|burstlen|reg_out\(3),
	combout => \EU|burstlen_cmp|equal~1_combout\);

-- Location: IOIBUF_X27_Y0_N22
\burstcount[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_burstcount(0),
	o => \burstcount[0]~input_o\);

-- Location: FF_X44_Y6_N21
\EU|burstlen|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	asdata => \burstcount[0]~input_o\,
	sload => VCC,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen|reg_out\(0));

-- Location: IOIBUF_X27_Y0_N15
\burstcount[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_burstcount(1),
	o => \burstcount[1]~input_o\);

-- Location: LCCOMB_X44_Y6_N10
\EU|burstlen|reg_out[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen|reg_out[1]~feeder_combout\ = \burstcount[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \burstcount[1]~input_o\,
	combout => \EU|burstlen|reg_out[1]~feeder_combout\);

-- Location: FF_X44_Y6_N11
\EU|burstlen|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|burstlen|reg_out[1]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen|reg_out\(1));

-- Location: LCCOMB_X44_Y6_N20
\EU|burstlen_cmp|equal~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_cmp|equal~0_combout\ = (\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (\EU|burstlen|reg_out\(1) & (\EU|data_counter|entry_tff|dummy_out~q\ $ (!\EU|burstlen|reg_out\(0))))) # (!\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & 
-- (!\EU|burstlen|reg_out\(1) & (\EU|data_counter|entry_tff|dummy_out~q\ $ (!\EU|burstlen|reg_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datab => \EU|data_counter|entry_tff|dummy_out~q\,
	datac => \EU|burstlen|reg_out\(0),
	datad => \EU|burstlen|reg_out\(1),
	combout => \EU|burstlen_cmp|equal~0_combout\);

-- Location: IOIBUF_X53_Y6_N15
\burstcount[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_burstcount(5),
	o => \burstcount[5]~input_o\);

-- Location: LCCOMB_X45_Y6_N4
\EU|burstlen|reg_out[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen|reg_out[5]~feeder_combout\ = \burstcount[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \burstcount[5]~input_o\,
	combout => \EU|burstlen|reg_out[5]~feeder_combout\);

-- Location: FF_X45_Y6_N5
\EU|burstlen|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|burstlen|reg_out[5]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen|reg_out\(5));

-- Location: IOIBUF_X53_Y21_N22
\burstcount[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_burstcount(4),
	o => \burstcount[4]~input_o\);

-- Location: FF_X44_Y6_N31
\EU|burstlen|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	asdata => \burstcount[4]~input_o\,
	sload => VCC,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen|reg_out\(4));

-- Location: LCCOMB_X44_Y6_N30
\EU|burstlen_cmp|equal~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_cmp|equal~2_combout\ = (\EU|burstlen|reg_out\(5) & (\EU|burstlen_counter|g1:5:chain_tff|dummy_out~q\ & (\EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\ $ (!\EU|burstlen|reg_out\(4))))) # (!\EU|burstlen|reg_out\(5) & 
-- (!\EU|burstlen_counter|g1:5:chain_tff|dummy_out~q\ & (\EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\ $ (!\EU|burstlen|reg_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|burstlen|reg_out\(5),
	datab => \EU|burstlen_counter|g1:4:chain_tff|dummy_out~q\,
	datac => \EU|burstlen|reg_out\(4),
	datad => \EU|burstlen_counter|g1:5:chain_tff|dummy_out~q\,
	combout => \EU|burstlen_cmp|equal~2_combout\);

-- Location: IOIBUF_X49_Y0_N1
\burstcount[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_burstcount(6),
	o => \burstcount[6]~input_o\);

-- Location: FF_X45_Y6_N27
\EU|burstlen|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	asdata => \burstcount[6]~input_o\,
	sload => VCC,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen|reg_out\(6));

-- Location: IOIBUF_X53_Y20_N15
\burstcount[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_burstcount(7),
	o => \burstcount[7]~input_o\);

-- Location: LCCOMB_X45_Y6_N28
\EU|burstlen|reg_out[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen|reg_out[7]~feeder_combout\ = \burstcount[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \burstcount[7]~input_o\,
	combout => \EU|burstlen|reg_out[7]~feeder_combout\);

-- Location: FF_X45_Y6_N29
\EU|burstlen|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|burstlen|reg_out[7]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen|reg_out\(7));

-- Location: LCCOMB_X45_Y6_N26
\EU|burstlen_cmp|equal~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_cmp|equal~3_combout\ = (\EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\ & (\EU|burstlen|reg_out\(7) & (\EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\ $ (!\EU|burstlen|reg_out\(6))))) # (!\EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\ & 
-- (!\EU|burstlen|reg_out\(7) & (\EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\ $ (!\EU|burstlen|reg_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|burstlen_counter|g1:7:chain_tff|dummy_out~q\,
	datab => \EU|burstlen_counter|g1:6:chain_tff|dummy_out~q\,
	datac => \EU|burstlen|reg_out\(6),
	datad => \EU|burstlen|reg_out\(7),
	combout => \EU|burstlen_cmp|equal~3_combout\);

-- Location: LCCOMB_X44_Y6_N28
\EU|burstlen_cmp|equal~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_cmp|equal~4_combout\ = (\EU|burstlen_cmp|equal~1_combout\ & (\EU|burstlen_cmp|equal~0_combout\ & (\EU|burstlen_cmp|equal~2_combout\ & \EU|burstlen_cmp|equal~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|burstlen_cmp|equal~1_combout\,
	datab => \EU|burstlen_cmp|equal~0_combout\,
	datac => \EU|burstlen_cmp|equal~2_combout\,
	datad => \EU|burstlen_cmp|equal~3_combout\,
	combout => \EU|burstlen_cmp|equal~4_combout\);

-- Location: LCCOMB_X44_Y7_N18
\EU|burstlen_counter|g1:10:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_counter|g1:10:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr3~0_combout\ & (\EU|burstlen_counter|g1:10:chain_tff|dummy_out~q\ $ (((\EU|burstlen_counter|g1:9:chain_tff|dummy_out~q\ & \EU|burstlen_counter|tgl_in\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|burstlen_counter|g1:9:chain_tff|dummy_out~q\,
	datab => \EU|burstlen_counter|tgl_in\(9),
	datac => \EU|burstlen_counter|g1:10:chain_tff|dummy_out~q\,
	datad => \CU|WideOr3~0_combout\,
	combout => \EU|burstlen_counter|g1:10:chain_tff|dummy_out~0_combout\);

-- Location: FF_X44_Y7_N19
\EU|burstlen_counter|g1:10:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|burstlen_counter|g1:10:chain_tff|dummy_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen_counter|g1:10:chain_tff|dummy_out~q\);

-- Location: IOIBUF_X53_Y17_N15
\burstcount[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_burstcount(10),
	o => \burstcount[10]~input_o\);

-- Location: LCCOMB_X45_Y6_N22
\EU|burstlen|reg_out[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen|reg_out[10]~feeder_combout\ = \burstcount[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \burstcount[10]~input_o\,
	combout => \EU|burstlen|reg_out[10]~feeder_combout\);

-- Location: FF_X45_Y6_N23
\EU|burstlen|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|burstlen|reg_out[10]~feeder_combout\,
	ena => \CU|present_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|burstlen|reg_out\(10));

-- Location: LCCOMB_X44_Y6_N22
\EU|burstlen_cmp|equal\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|burstlen_cmp|equal~combout\ = (\EU|burstlen_cmp|equal~5_combout\ & (\EU|burstlen_cmp|equal~4_combout\ & (\EU|burstlen_counter|g1:10:chain_tff|dummy_out~q\ $ (!\EU|burstlen|reg_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|burstlen_cmp|equal~5_combout\,
	datab => \EU|burstlen_cmp|equal~4_combout\,
	datac => \EU|burstlen_counter|g1:10:chain_tff|dummy_out~q\,
	datad => \EU|burstlen|reg_out\(10),
	combout => \EU|burstlen_cmp|equal~combout\);

-- Location: LCCOMB_X40_Y6_N22
\CU|present_state~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state~15_combout\ = (\synch_clear_n~input_o\ & ((\CU|present_state.reception_init~q\) # ((\CU|present_state.reception~q\ & !\EU|burstlen_cmp|equal~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \synch_clear_n~input_o\,
	datab => \CU|present_state.reception_init~q\,
	datac => \CU|present_state.reception~q\,
	datad => \EU|burstlen_cmp|equal~combout\,
	combout => \CU|present_state~15_combout\);

-- Location: FF_X40_Y6_N23
\CU|present_state.reception\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|present_state~15_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.reception~q\);

-- Location: LCCOMB_X40_Y6_N2
\CU|WideOr4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr4~combout\ = (\CU|present_state.reception~q\) # ((\CU|present_state.idle~q\) # (\CU|present_state.reception_init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.reception~q\,
	datac => \CU|present_state.idle~q\,
	datad => \CU|present_state.reception_init~q\,
	combout => \CU|WideOr4~combout\);

-- Location: LCCOMB_X36_Y6_N16
\EU|synchronizer|sr_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|synchronizer|sr_out~0_combout\ = (!\CU|WideOr3~0_combout\ & ((\CU|WideOr4~combout\) # (\EU|synchronizer|sr_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|WideOr4~combout\,
	datac => \EU|synchronizer|sr_out~q\,
	datad => \CU|WideOr3~0_combout\,
	combout => \EU|synchronizer|sr_out~0_combout\);

-- Location: FF_X36_Y6_N17
\EU|synchronizer|sr_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|synchronizer|sr_out~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|synchronizer|sr_out~q\);

-- Location: IOIBUF_X5_Y0_N15
\synch_enable~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_synch_enable,
	o => \synch_enable~input_o\);

-- Location: LCCOMB_X40_Y6_N12
\CU|present_state~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state~14_combout\ = (\synch_clear_n~input_o\ & (!\synch_enable~input_o\ & ((\CU|present_state.idle_disabled~q\) # (!\CU|present_state.reset~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \synch_clear_n~input_o\,
	datab => \synch_enable~input_o\,
	datac => \CU|present_state.idle_disabled~q\,
	datad => \CU|present_state.reset~q\,
	combout => \CU|present_state~14_combout\);

-- Location: FF_X40_Y6_N13
\CU|present_state.idle_disabled\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|present_state~14_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.idle_disabled~q\);

-- Location: LCCOMB_X40_Y6_N24
\CU|present_state~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state~12_combout\ = (\synch_enable~input_o\ & ((\CU|present_state.idle_disabled~q\) # (!\CU|present_state.reset~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.idle_disabled~q\,
	datab => \CU|present_state.reset~q\,
	datad => \synch_enable~input_o\,
	combout => \CU|present_state~12_combout\);

-- Location: LCCOMB_X40_Y6_N20
\CU|present_state~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state~13_combout\ = (\synch_clear_n~input_o\ & ((\CU|present_state~12_combout\) # ((!\EU|synchronizer|sr_out~q\ & \CU|present_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|synchronizer|sr_out~q\,
	datab => \CU|present_state.idle~q\,
	datac => \synch_clear_n~input_o\,
	datad => \CU|present_state~12_combout\,
	combout => \CU|present_state~13_combout\);

-- Location: LCCOMB_X40_Y6_N14
\CU|present_state.idle~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state.idle~feeder_combout\ = \CU|present_state~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state~13_combout\,
	combout => \CU|present_state.idle~feeder_combout\);

-- Location: FF_X40_Y6_N15
\CU|present_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|present_state.idle~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.idle~q\);

-- Location: LCCOMB_X40_Y6_N6
\CU|present_state~17\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state~17_combout\ = (\synch_clear_n~input_o\ & (\CU|present_state.idle~q\ & \EU|synchronizer|sr_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \synch_clear_n~input_o\,
	datab => \CU|present_state.idle~q\,
	datac => \EU|synchronizer|sr_out~q\,
	combout => \CU|present_state~17_combout\);

-- Location: FF_X40_Y6_N7
\CU|present_state.reception_init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|present_state~17_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.reception_init~q\);

-- Location: LCCOMB_X44_Y7_N10
\EU|data_counter|entry_tff|dummy_out~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|data_counter|entry_tff|dummy_out~2_combout\ = (!\CU|WideOr3~0_combout\ & (\EU|data_counter|entry_tff|dummy_out~q\ $ (((\CU|present_state.reception_init~q\) # (\CU|present_state.reception~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.reception_init~q\,
	datab => \CU|WideOr3~0_combout\,
	datac => \EU|data_counter|entry_tff|dummy_out~q\,
	datad => \CU|present_state.reception~q\,
	combout => \EU|data_counter|entry_tff|dummy_out~2_combout\);

-- Location: FF_X44_Y7_N11
\EU|data_counter|entry_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|data_counter|entry_tff|dummy_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|data_counter|entry_tff|dummy_out~q\);

-- Location: IOIBUF_X36_Y0_N22
\din[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(0),
	o => \din[0]~input_o\);

-- Location: LCCOMB_X40_Y8_N8
\EU|readdata01|reg_out[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata01|reg_out[0]~feeder_combout\ = \din[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[0]~input_o\,
	combout => \EU|readdata01|reg_out[0]~feeder_combout\);

-- Location: LCCOMB_X36_Y6_N14
\EU|code_counter|entry_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|code_counter|entry_tff|dummy_out~0_combout\ = (!\CU|WideOr3~0_combout\ & (\CU|WideOr4~combout\ $ (\EU|code_counter|entry_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|WideOr4~combout\,
	datac => \EU|code_counter|entry_tff|dummy_out~q\,
	datad => \CU|WideOr3~0_combout\,
	combout => \EU|code_counter|entry_tff|dummy_out~0_combout\);

-- Location: FF_X36_Y6_N15
\EU|code_counter|entry_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|code_counter|entry_tff|dummy_out~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|code_counter|entry_tff|dummy_out~q\);

-- Location: LCCOMB_X40_Y6_N0
\EU|code_counter|g1:1:chain_tff|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|code_counter|g1:1:chain_tff|dummy_out~0_combout\ = (!\CU|WideOr3~0_combout\ & (\EU|code_counter|g1:1:chain_tff|dummy_out~q\ $ (((\CU|WideOr4~combout\ & \EU|code_counter|entry_tff|dummy_out~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|WideOr4~combout\,
	datab => \CU|WideOr3~0_combout\,
	datac => \EU|code_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|code_counter|entry_tff|dummy_out~q\,
	combout => \EU|code_counter|g1:1:chain_tff|dummy_out~0_combout\);

-- Location: FF_X40_Y6_N1
\EU|code_counter|g1:1:chain_tff|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|code_counter|g1:1:chain_tff|dummy_out~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|code_counter|g1:1:chain_tff|dummy_out~q\);

-- Location: LCCOMB_X40_Y7_N30
\EU|dec|Mux2~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dec|Mux2~1_combout\ = (\EU|code_counter|entry_tff|dummy_out~q\ & !\EU|code_counter|g1:1:chain_tff|dummy_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|code_counter|entry_tff|dummy_out~q\,
	datad => \EU|code_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|dec|Mux2~1_combout\);

-- Location: FF_X40_Y8_N9
\EU|readdata01|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata01|reg_out[0]~feeder_combout\,
	ena => \EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata01|reg_out\(0));

-- Location: LCCOMB_X41_Y6_N4
\EU|readdata00|reg_out[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata00|reg_out[0]~feeder_combout\ = \din[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din[0]~input_o\,
	combout => \EU|readdata00|reg_out[0]~feeder_combout\);

-- Location: LCCOMB_X40_Y6_N26
\EU|readdata00_enable~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata00_enable~0_combout\ = (!\EU|code_counter|entry_tff|dummy_out~q\ & !\EU|code_counter|g1:1:chain_tff|dummy_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|code_counter|entry_tff|dummy_out~q\,
	datad => \EU|code_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|readdata00_enable~0_combout\);

-- Location: LCCOMB_X40_Y6_N28
\EU|readdata00_enable\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata00_enable~combout\ = (\EU|readdata00_enable~0_combout\ & ((\CU|present_state.idle~q\) # ((\CU|present_state.reception~q\) # (\CU|present_state.reception_init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|readdata00_enable~0_combout\,
	datab => \CU|present_state.idle~q\,
	datac => \CU|present_state.reception~q\,
	datad => \CU|present_state.reception_init~q\,
	combout => \EU|readdata00_enable~combout\);

-- Location: FF_X41_Y6_N5
\EU|readdata00|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata00|reg_out[0]~feeder_combout\,
	ena => \EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata00|reg_out\(0));

-- Location: LCCOMB_X41_Y6_N22
\EU|datamux|Mux15~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux15~0_combout\ = (\EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|readdata01|reg_out\(0)) # ((\EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|readdata00|reg_out\(0) & 
-- !\EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|readdata01|reg_out\(0),
	datac => \EU|readdata00|reg_out\(0),
	datad => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|datamux|Mux15~0_combout\);

-- Location: LCCOMB_X39_Y4_N20
\EU|readdata11|reg_out[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata11|reg_out[0]~feeder_combout\ = \din[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[0]~input_o\,
	combout => \EU|readdata11|reg_out[0]~feeder_combout\);

-- Location: LCCOMB_X40_Y7_N20
\EU|dec|Mux2~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dec|Mux2~2_combout\ = (\EU|code_counter|entry_tff|dummy_out~q\ & \EU|code_counter|g1:1:chain_tff|dummy_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|code_counter|entry_tff|dummy_out~q\,
	datad => \EU|code_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|dec|Mux2~2_combout\);

-- Location: FF_X39_Y4_N21
\EU|readdata11|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata11|reg_out[0]~feeder_combout\,
	ena => \EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata11|reg_out\(0));

-- Location: LCCOMB_X38_Y8_N28
\EU|readdata10|reg_out[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata10|reg_out[0]~feeder_combout\ = \din[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din[0]~input_o\,
	combout => \EU|readdata10|reg_out[0]~feeder_combout\);

-- Location: LCCOMB_X40_Y7_N16
\EU|dec|Mux2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dec|Mux2~0_combout\ = (!\EU|code_counter|entry_tff|dummy_out~q\ & \EU|code_counter|g1:1:chain_tff|dummy_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|code_counter|entry_tff|dummy_out~q\,
	datad => \EU|code_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|dec|Mux2~0_combout\);

-- Location: FF_X38_Y8_N29
\EU|readdata10|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata10|reg_out[0]~feeder_combout\,
	ena => \EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata10|reg_out\(0));

-- Location: LCCOMB_X39_Y8_N20
\EU|datamux|Mux15~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux15~1_combout\ = (\EU|datamux|Mux15~0_combout\ & ((\EU|readdata11|reg_out\(0)) # ((!\EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|datamux|Mux15~0_combout\ & (((\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & 
-- \EU|readdata10|reg_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|datamux|Mux15~0_combout\,
	datab => \EU|readdata11|reg_out\(0),
	datac => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|readdata10|reg_out\(0),
	combout => \EU|datamux|Mux15~1_combout\);

-- Location: FF_X39_Y8_N21
\EU|dataout|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datamux|Mux15~1_combout\,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout|reg_out\(0));

-- Location: LCCOMB_X39_Y30_N4
\EU|dataout_pipe|reg_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dataout_pipe|reg_out~0_combout\ = (\CU|present_state.reset~q\ & \EU|dataout|reg_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.reset~q\,
	datad => \EU|dataout|reg_out\(0),
	combout => \EU|dataout_pipe|reg_out~0_combout\);

-- Location: LCCOMB_X45_Y14_N0
\CU|WideOr5~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr5~0_combout\ = (!\CU|present_state.idle~q\ & !\CU|present_state.idle_disabled~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.idle~q\,
	datad => \CU|present_state.idle_disabled~q\,
	combout => \CU|WideOr5~0_combout\);

-- Location: FF_X39_Y30_N5
\EU|dataout_pipe|reg_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dataout_pipe|reg_out~0_combout\,
	ena => \CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout_pipe|reg_out\(0));

-- Location: IOIBUF_X53_Y20_N22
\din[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(1),
	o => \din[1]~input_o\);

-- Location: LCCOMB_X51_Y7_N4
\EU|readdata11|reg_out[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata11|reg_out[1]~feeder_combout\ = \din[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din[1]~input_o\,
	combout => \EU|readdata11|reg_out[1]~feeder_combout\);

-- Location: FF_X51_Y7_N5
\EU|readdata11|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata11|reg_out[1]~feeder_combout\,
	ena => \EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata11|reg_out\(1));

-- Location: LCCOMB_X41_Y6_N12
\EU|readdata00|reg_out[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata00|reg_out[1]~feeder_combout\ = \din[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[1]~input_o\,
	combout => \EU|readdata00|reg_out[1]~feeder_combout\);

-- Location: FF_X41_Y6_N13
\EU|readdata00|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata00|reg_out[1]~feeder_combout\,
	ena => \EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata00|reg_out\(1));

-- Location: LCCOMB_X50_Y6_N4
\EU|readdata01|reg_out[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata01|reg_out[1]~feeder_combout\ = \din[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din[1]~input_o\,
	combout => \EU|readdata01|reg_out[1]~feeder_combout\);

-- Location: FF_X50_Y6_N5
\EU|readdata01|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata01|reg_out[1]~feeder_combout\,
	ena => \EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata01|reg_out\(1));

-- Location: LCCOMB_X41_Y6_N10
\EU|datamux|Mux14~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux14~0_combout\ = (\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (((\EU|data_counter|entry_tff|dummy_out~q\)))) # (!\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|readdata01|reg_out\(1)))) # 
-- (!\EU|data_counter|entry_tff|dummy_out~q\ & (\EU|readdata00|reg_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|readdata00|reg_out\(1),
	datab => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|data_counter|entry_tff|dummy_out~q\,
	datad => \EU|readdata01|reg_out\(1),
	combout => \EU|datamux|Mux14~0_combout\);

-- Location: LCCOMB_X52_Y6_N0
\EU|readdata10|reg_out[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata10|reg_out[1]~feeder_combout\ = \din[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din[1]~input_o\,
	combout => \EU|readdata10|reg_out[1]~feeder_combout\);

-- Location: FF_X52_Y6_N1
\EU|readdata10|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata10|reg_out[1]~feeder_combout\,
	ena => \EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata10|reg_out\(1));

-- Location: LCCOMB_X43_Y7_N0
\EU|datamux|Mux14~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux14~1_combout\ = (\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|datamux|Mux14~0_combout\ & (\EU|readdata11|reg_out\(1))) # (!\EU|datamux|Mux14~0_combout\ & ((\EU|readdata10|reg_out\(1)))))) # 
-- (!\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (((\EU|datamux|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datab => \EU|readdata11|reg_out\(1),
	datac => \EU|datamux|Mux14~0_combout\,
	datad => \EU|readdata10|reg_out\(1),
	combout => \EU|datamux|Mux14~1_combout\);

-- Location: FF_X43_Y7_N1
\EU|dataout|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datamux|Mux14~1_combout\,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout|reg_out\(1));

-- Location: LCCOMB_X36_Y32_N12
\EU|dataout_pipe|reg_out~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dataout_pipe|reg_out~1_combout\ = (\EU|dataout|reg_out\(1) & \CU|present_state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|dataout|reg_out\(1),
	datad => \CU|present_state.reset~q\,
	combout => \EU|dataout_pipe|reg_out~1_combout\);

-- Location: FF_X36_Y32_N13
\EU|dataout_pipe|reg_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dataout_pipe|reg_out~1_combout\,
	ena => \CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout_pipe|reg_out\(1));

-- Location: IOIBUF_X53_Y11_N1
\din[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(2),
	o => \din[2]~input_o\);

-- Location: LCCOMB_X41_Y6_N24
\EU|readdata00|reg_out[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata00|reg_out[2]~feeder_combout\ = \din[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[2]~input_o\,
	combout => \EU|readdata00|reg_out[2]~feeder_combout\);

-- Location: FF_X41_Y6_N25
\EU|readdata00|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata00|reg_out[2]~feeder_combout\,
	ena => \EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata00|reg_out\(2));

-- Location: LCCOMB_X52_Y6_N2
\EU|readdata10|reg_out[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata10|reg_out[2]~feeder_combout\ = \din[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[2]~input_o\,
	combout => \EU|readdata10|reg_out[2]~feeder_combout\);

-- Location: FF_X52_Y6_N3
\EU|readdata10|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata10|reg_out[2]~feeder_combout\,
	ena => \EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata10|reg_out\(2));

-- Location: LCCOMB_X43_Y6_N2
\EU|datamux|Mux13~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux13~0_combout\ = (\EU|data_counter|entry_tff|dummy_out~q\ & (\EU|data_counter|g1:1:chain_tff|dummy_out~q\)) # (!\EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|readdata10|reg_out\(2)))) # 
-- (!\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (\EU|readdata00|reg_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|readdata00|reg_out\(2),
	datad => \EU|readdata10|reg_out\(2),
	combout => \EU|datamux|Mux13~0_combout\);

-- Location: LCCOMB_X52_Y6_N12
\EU|readdata11|reg_out[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata11|reg_out[2]~feeder_combout\ = \din[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[2]~input_o\,
	combout => \EU|readdata11|reg_out[2]~feeder_combout\);

-- Location: FF_X52_Y6_N13
\EU|readdata11|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata11|reg_out[2]~feeder_combout\,
	ena => \EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata11|reg_out\(2));

-- Location: LCCOMB_X43_Y6_N28
\EU|readdata01|reg_out[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata01|reg_out[2]~feeder_combout\ = \din[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din[2]~input_o\,
	combout => \EU|readdata01|reg_out[2]~feeder_combout\);

-- Location: FF_X43_Y6_N29
\EU|readdata01|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata01|reg_out[2]~feeder_combout\,
	ena => \EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata01|reg_out\(2));

-- Location: LCCOMB_X43_Y7_N6
\EU|datamux|Mux13~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux13~1_combout\ = (\EU|datamux|Mux13~0_combout\ & ((\EU|readdata11|reg_out\(2)) # ((!\EU|data_counter|entry_tff|dummy_out~q\)))) # (!\EU|datamux|Mux13~0_combout\ & (((\EU|readdata01|reg_out\(2) & \EU|data_counter|entry_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|datamux|Mux13~0_combout\,
	datab => \EU|readdata11|reg_out\(2),
	datac => \EU|readdata01|reg_out\(2),
	datad => \EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|datamux|Mux13~1_combout\);

-- Location: FF_X43_Y7_N7
\EU|dataout|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datamux|Mux13~1_combout\,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout|reg_out\(2));

-- Location: LCCOMB_X46_Y33_N0
\EU|dataout_pipe|reg_out~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dataout_pipe|reg_out~2_combout\ = (\CU|present_state.reset~q\ & \EU|dataout|reg_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.reset~q\,
	datad => \EU|dataout|reg_out\(2),
	combout => \EU|dataout_pipe|reg_out~2_combout\);

-- Location: FF_X46_Y33_N1
\EU|dataout_pipe|reg_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dataout_pipe|reg_out~2_combout\,
	ena => \CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout_pipe|reg_out\(2));

-- Location: IOIBUF_X53_Y24_N22
\din[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(3),
	o => \din[3]~input_o\);

-- Location: LCCOMB_X52_Y6_N4
\EU|readdata11|reg_out[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata11|reg_out[3]~feeder_combout\ = \din[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[3]~input_o\,
	combout => \EU|readdata11|reg_out[3]~feeder_combout\);

-- Location: FF_X52_Y6_N5
\EU|readdata11|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata11|reg_out[3]~feeder_combout\,
	ena => \EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata11|reg_out\(3));

-- Location: LCCOMB_X43_Y6_N12
\EU|readdata01|reg_out[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata01|reg_out[3]~feeder_combout\ = \din[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din[3]~input_o\,
	combout => \EU|readdata01|reg_out[3]~feeder_combout\);

-- Location: FF_X43_Y6_N13
\EU|readdata01|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata01|reg_out[3]~feeder_combout\,
	ena => \EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata01|reg_out\(3));

-- Location: LCCOMB_X41_Y6_N14
\EU|readdata00|reg_out[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata00|reg_out[3]~feeder_combout\ = \din[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[3]~input_o\,
	combout => \EU|readdata00|reg_out[3]~feeder_combout\);

-- Location: FF_X41_Y6_N15
\EU|readdata00|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata00|reg_out[3]~feeder_combout\,
	ena => \EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata00|reg_out\(3));

-- Location: LCCOMB_X43_Y6_N22
\EU|datamux|Mux12~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux12~0_combout\ = (\EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|readdata01|reg_out\(3)) # ((\EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|readdata00|reg_out\(3) & 
-- !\EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|readdata01|reg_out\(3),
	datab => \EU|readdata00|reg_out\(3),
	datac => \EU|data_counter|entry_tff|dummy_out~q\,
	datad => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|datamux|Mux12~0_combout\);

-- Location: LCCOMB_X52_Y6_N6
\EU|readdata10|reg_out[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata10|reg_out[3]~feeder_combout\ = \din[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[3]~input_o\,
	combout => \EU|readdata10|reg_out[3]~feeder_combout\);

-- Location: FF_X52_Y6_N7
\EU|readdata10|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata10|reg_out[3]~feeder_combout\,
	ena => \EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata10|reg_out\(3));

-- Location: LCCOMB_X45_Y6_N24
\EU|datamux|Mux12~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux12~1_combout\ = (\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|datamux|Mux12~0_combout\ & (\EU|readdata11|reg_out\(3))) # (!\EU|datamux|Mux12~0_combout\ & ((\EU|readdata10|reg_out\(3)))))) # 
-- (!\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (((\EU|datamux|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|readdata11|reg_out\(3),
	datab => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|datamux|Mux12~0_combout\,
	datad => \EU|readdata10|reg_out\(3),
	combout => \EU|datamux|Mux12~1_combout\);

-- Location: FF_X45_Y6_N25
\EU|dataout|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datamux|Mux12~1_combout\,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout|reg_out\(3));

-- Location: LCCOMB_X46_Y33_N2
\EU|dataout_pipe|reg_out~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dataout_pipe|reg_out~3_combout\ = (\CU|present_state.reset~q\ & \EU|dataout|reg_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.reset~q\,
	datad => \EU|dataout|reg_out\(3),
	combout => \EU|dataout_pipe|reg_out~3_combout\);

-- Location: FF_X46_Y33_N3
\EU|dataout_pipe|reg_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dataout_pipe|reg_out~3_combout\,
	ena => \CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout_pipe|reg_out\(3));

-- Location: IOIBUF_X34_Y0_N1
\din[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(4),
	o => \din[4]~input_o\);

-- Location: LCCOMB_X38_Y7_N14
\EU|readdata11|reg_out[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata11|reg_out[4]~feeder_combout\ = \din[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[4]~input_o\,
	combout => \EU|readdata11|reg_out[4]~feeder_combout\);

-- Location: FF_X38_Y7_N15
\EU|readdata11|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata11|reg_out[4]~feeder_combout\,
	ena => \EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata11|reg_out\(4));

-- Location: LCCOMB_X38_Y7_N24
\EU|readdata01|reg_out[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata01|reg_out[4]~feeder_combout\ = \din[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[4]~input_o\,
	combout => \EU|readdata01|reg_out[4]~feeder_combout\);

-- Location: FF_X38_Y7_N25
\EU|readdata01|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata01|reg_out[4]~feeder_combout\,
	ena => \EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata01|reg_out\(4));

-- Location: LCCOMB_X41_Y6_N0
\EU|readdata00|reg_out[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata00|reg_out[4]~feeder_combout\ = \din[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din[4]~input_o\,
	combout => \EU|readdata00|reg_out[4]~feeder_combout\);

-- Location: FF_X41_Y6_N1
\EU|readdata00|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata00|reg_out[4]~feeder_combout\,
	ena => \EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata00|reg_out\(4));

-- Location: LCCOMB_X41_Y7_N8
\EU|readdata10|reg_out[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata10|reg_out[4]~feeder_combout\ = \din[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[4]~input_o\,
	combout => \EU|readdata10|reg_out[4]~feeder_combout\);

-- Location: FF_X41_Y7_N9
\EU|readdata10|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata10|reg_out[4]~feeder_combout\,
	ena => \EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata10|reg_out\(4));

-- Location: LCCOMB_X41_Y7_N10
\EU|datamux|Mux11~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux11~0_combout\ = (\EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|readdata10|reg_out\(4)))) # 
-- (!\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (\EU|readdata00|reg_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|readdata00|reg_out\(4),
	datac => \EU|readdata10|reg_out\(4),
	datad => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|datamux|Mux11~0_combout\);

-- Location: LCCOMB_X39_Y7_N20
\EU|datamux|Mux11~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux11~1_combout\ = (\EU|datamux|Mux11~0_combout\ & ((\EU|readdata11|reg_out\(4)) # ((!\EU|data_counter|entry_tff|dummy_out~q\)))) # (!\EU|datamux|Mux11~0_combout\ & (((\EU|readdata01|reg_out\(4) & \EU|data_counter|entry_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|readdata11|reg_out\(4),
	datab => \EU|readdata01|reg_out\(4),
	datac => \EU|datamux|Mux11~0_combout\,
	datad => \EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|datamux|Mux11~1_combout\);

-- Location: FF_X39_Y7_N21
\EU|dataout|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datamux|Mux11~1_combout\,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout|reg_out\(4));

-- Location: LCCOMB_X30_Y32_N24
\EU|dataout_pipe|reg_out~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dataout_pipe|reg_out~4_combout\ = (\EU|dataout|reg_out\(4) & \CU|present_state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|dataout|reg_out\(4),
	datad => \CU|present_state.reset~q\,
	combout => \EU|dataout_pipe|reg_out~4_combout\);

-- Location: LCCOMB_X29_Y32_N4
\EU|dataout_pipe|reg_out[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dataout_pipe|reg_out[4]~feeder_combout\ = \EU|dataout_pipe|reg_out~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|dataout_pipe|reg_out~4_combout\,
	combout => \EU|dataout_pipe|reg_out[4]~feeder_combout\);

-- Location: FF_X29_Y32_N5
\EU|dataout_pipe|reg_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dataout_pipe|reg_out[4]~feeder_combout\,
	ena => \CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout_pipe|reg_out\(4));

-- Location: IOIBUF_X53_Y6_N22
\din[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(5),
	o => \din[5]~input_o\);

-- Location: LCCOMB_X52_Y6_N10
\EU|readdata10|reg_out[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata10|reg_out[5]~feeder_combout\ = \din[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[5]~input_o\,
	combout => \EU|readdata10|reg_out[5]~feeder_combout\);

-- Location: FF_X52_Y6_N11
\EU|readdata10|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata10|reg_out[5]~feeder_combout\,
	ena => \EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata10|reg_out\(5));

-- Location: LCCOMB_X52_Y6_N8
\EU|readdata11|reg_out[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata11|reg_out[5]~feeder_combout\ = \din[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[5]~input_o\,
	combout => \EU|readdata11|reg_out[5]~feeder_combout\);

-- Location: FF_X52_Y6_N9
\EU|readdata11|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata11|reg_out[5]~feeder_combout\,
	ena => \EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata11|reg_out\(5));

-- Location: LCCOMB_X39_Y6_N6
\EU|readdata00|reg_out[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata00|reg_out[5]~feeder_combout\ = \din[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[5]~input_o\,
	combout => \EU|readdata00|reg_out[5]~feeder_combout\);

-- Location: FF_X39_Y6_N7
\EU|readdata00|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata00|reg_out[5]~feeder_combout\,
	ena => \EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata00|reg_out\(5));

-- Location: LCCOMB_X39_Y6_N20
\EU|readdata01|reg_out[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata01|reg_out[5]~feeder_combout\ = \din[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[5]~input_o\,
	combout => \EU|readdata01|reg_out[5]~feeder_combout\);

-- Location: FF_X39_Y6_N21
\EU|readdata01|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata01|reg_out[5]~feeder_combout\,
	ena => \EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata01|reg_out\(5));

-- Location: LCCOMB_X39_Y6_N28
\EU|datamux|Mux10~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux10~0_combout\ = (\EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|data_counter|g1:1:chain_tff|dummy_out~q\) # (\EU|readdata01|reg_out\(5))))) # (!\EU|data_counter|entry_tff|dummy_out~q\ & (\EU|readdata00|reg_out\(5) & 
-- (!\EU|data_counter|g1:1:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|readdata00|reg_out\(5),
	datab => \EU|data_counter|entry_tff|dummy_out~q\,
	datac => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|readdata01|reg_out\(5),
	combout => \EU|datamux|Mux10~0_combout\);

-- Location: LCCOMB_X41_Y6_N20
\EU|datamux|Mux10~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux10~1_combout\ = (\EU|datamux|Mux10~0_combout\ & (((\EU|readdata11|reg_out\(5)) # (!\EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|datamux|Mux10~0_combout\ & (\EU|readdata10|reg_out\(5) & 
-- ((\EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|readdata10|reg_out\(5),
	datab => \EU|readdata11|reg_out\(5),
	datac => \EU|datamux|Mux10~0_combout\,
	datad => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|datamux|Mux10~1_combout\);

-- Location: FF_X41_Y6_N21
\EU|dataout|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datamux|Mux10~1_combout\,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout|reg_out\(5));

-- Location: LCCOMB_X17_Y33_N0
\EU|dataout_pipe|reg_out~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dataout_pipe|reg_out~5_combout\ = (\CU|present_state.reset~q\ & \EU|dataout|reg_out\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.reset~q\,
	datad => \EU|dataout|reg_out\(5),
	combout => \EU|dataout_pipe|reg_out~5_combout\);

-- Location: FF_X17_Y33_N1
\EU|dataout_pipe|reg_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dataout_pipe|reg_out~5_combout\,
	ena => \CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout_pipe|reg_out\(5));

-- Location: IOIBUF_X34_Y0_N22
\din[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(6),
	o => \din[6]~input_o\);

-- Location: LCCOMB_X38_Y3_N12
\EU|readdata01|reg_out[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata01|reg_out[6]~feeder_combout\ = \din[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[6]~input_o\,
	combout => \EU|readdata01|reg_out[6]~feeder_combout\);

-- Location: FF_X38_Y3_N13
\EU|readdata01|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata01|reg_out[6]~feeder_combout\,
	ena => \EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata01|reg_out\(6));

-- Location: LCCOMB_X41_Y6_N30
\EU|readdata00|reg_out[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata00|reg_out[6]~feeder_combout\ = \din[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[6]~input_o\,
	combout => \EU|readdata00|reg_out[6]~feeder_combout\);

-- Location: FF_X41_Y6_N31
\EU|readdata00|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata00|reg_out[6]~feeder_combout\,
	ena => \EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata00|reg_out\(6));

-- Location: LCCOMB_X38_Y8_N2
\EU|readdata10|reg_out[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata10|reg_out[6]~feeder_combout\ = \din[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[6]~input_o\,
	combout => \EU|readdata10|reg_out[6]~feeder_combout\);

-- Location: FF_X38_Y8_N3
\EU|readdata10|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata10|reg_out[6]~feeder_combout\,
	ena => \EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata10|reg_out\(6));

-- Location: LCCOMB_X41_Y6_N8
\EU|datamux|Mux9~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux9~0_combout\ = (\EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|readdata10|reg_out\(6)))) # 
-- (!\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (\EU|readdata00|reg_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|readdata00|reg_out\(6),
	datab => \EU|readdata10|reg_out\(6),
	datac => \EU|data_counter|entry_tff|dummy_out~q\,
	datad => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|datamux|Mux9~0_combout\);

-- Location: LCCOMB_X38_Y3_N30
\EU|readdata11|reg_out[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata11|reg_out[6]~feeder_combout\ = \din[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[6]~input_o\,
	combout => \EU|readdata11|reg_out[6]~feeder_combout\);

-- Location: FF_X38_Y3_N31
\EU|readdata11|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata11|reg_out[6]~feeder_combout\,
	ena => \EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata11|reg_out\(6));

-- Location: LCCOMB_X41_Y6_N26
\EU|datamux|Mux9~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux9~1_combout\ = (\EU|datamux|Mux9~0_combout\ & (((\EU|readdata11|reg_out\(6)) # (!\EU|data_counter|entry_tff|dummy_out~q\)))) # (!\EU|datamux|Mux9~0_combout\ & (\EU|readdata01|reg_out\(6) & (\EU|data_counter|entry_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|readdata01|reg_out\(6),
	datab => \EU|datamux|Mux9~0_combout\,
	datac => \EU|data_counter|entry_tff|dummy_out~q\,
	datad => \EU|readdata11|reg_out\(6),
	combout => \EU|datamux|Mux9~1_combout\);

-- Location: FF_X41_Y6_N27
\EU|dataout|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datamux|Mux9~1_combout\,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout|reg_out\(6));

-- Location: LCCOMB_X21_Y33_N0
\EU|dataout_pipe|reg_out~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dataout_pipe|reg_out~6_combout\ = (\CU|present_state.reset~q\ & \EU|dataout|reg_out\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.reset~q\,
	datad => \EU|dataout|reg_out\(6),
	combout => \EU|dataout_pipe|reg_out~6_combout\);

-- Location: FF_X21_Y33_N1
\EU|dataout_pipe|reg_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dataout_pipe|reg_out~6_combout\,
	ena => \CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout_pipe|reg_out\(6));

-- Location: IOIBUF_X53_Y9_N8
\din[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(7),
	o => \din[7]~input_o\);

-- Location: LCCOMB_X38_Y6_N0
\EU|readdata10|reg_out[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata10|reg_out[7]~feeder_combout\ = \din[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din[7]~input_o\,
	combout => \EU|readdata10|reg_out[7]~feeder_combout\);

-- Location: FF_X38_Y6_N1
\EU|readdata10|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata10|reg_out[7]~feeder_combout\,
	ena => \EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata10|reg_out\(7));

-- Location: LCCOMB_X39_Y7_N18
\EU|readdata11|reg_out[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata11|reg_out[7]~feeder_combout\ = \din[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[7]~input_o\,
	combout => \EU|readdata11|reg_out[7]~feeder_combout\);

-- Location: FF_X39_Y7_N19
\EU|readdata11|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata11|reg_out[7]~feeder_combout\,
	ena => \EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata11|reg_out\(7));

-- Location: LCCOMB_X41_Y6_N6
\EU|readdata00|reg_out[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata00|reg_out[7]~feeder_combout\ = \din[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[7]~input_o\,
	combout => \EU|readdata00|reg_out[7]~feeder_combout\);

-- Location: FF_X41_Y6_N7
\EU|readdata00|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata00|reg_out[7]~feeder_combout\,
	ena => \EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata00|reg_out\(7));

-- Location: LCCOMB_X38_Y3_N20
\EU|readdata01|reg_out[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata01|reg_out[7]~feeder_combout\ = \din[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[7]~input_o\,
	combout => \EU|readdata01|reg_out[7]~feeder_combout\);

-- Location: FF_X38_Y3_N21
\EU|readdata01|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata01|reg_out[7]~feeder_combout\,
	ena => \EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata01|reg_out\(7));

-- Location: LCCOMB_X39_Y7_N8
\EU|datamux|Mux8~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux8~0_combout\ = (\EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|readdata01|reg_out\(7)) # (\EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|data_counter|entry_tff|dummy_out~q\ & (\EU|readdata00|reg_out\(7) & 
-- ((!\EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|readdata00|reg_out\(7),
	datac => \EU|readdata01|reg_out\(7),
	datad => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|datamux|Mux8~0_combout\);

-- Location: LCCOMB_X39_Y7_N22
\EU|datamux|Mux8~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux8~1_combout\ = (\EU|datamux|Mux8~0_combout\ & (((\EU|readdata11|reg_out\(7)) # (!\EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|datamux|Mux8~0_combout\ & (\EU|readdata10|reg_out\(7) & 
-- ((\EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|readdata10|reg_out\(7),
	datab => \EU|readdata11|reg_out\(7),
	datac => \EU|datamux|Mux8~0_combout\,
	datad => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|datamux|Mux8~1_combout\);

-- Location: FF_X39_Y7_N23
\EU|dataout|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datamux|Mux8~1_combout\,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout|reg_out\(7));

-- Location: LCCOMB_X46_Y33_N4
\EU|dataout_pipe|reg_out~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dataout_pipe|reg_out~7_combout\ = (\CU|present_state.reset~q\ & \EU|dataout|reg_out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.reset~q\,
	datad => \EU|dataout|reg_out\(7),
	combout => \EU|dataout_pipe|reg_out~7_combout\);

-- Location: FF_X46_Y33_N5
\EU|dataout_pipe|reg_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dataout_pipe|reg_out~7_combout\,
	ena => \CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout_pipe|reg_out\(7));

-- Location: IOIBUF_X20_Y0_N8
\din[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(8),
	o => \din[8]~input_o\);

-- Location: LCCOMB_X39_Y7_N24
\EU|readdata11|reg_out[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata11|reg_out[8]~feeder_combout\ = \din[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[8]~input_o\,
	combout => \EU|readdata11|reg_out[8]~feeder_combout\);

-- Location: FF_X39_Y7_N25
\EU|readdata11|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata11|reg_out[8]~feeder_combout\,
	ena => \EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata11|reg_out\(8));

-- Location: LCCOMB_X40_Y7_N18
\EU|readdata10|reg_out[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata10|reg_out[8]~feeder_combout\ = \din[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din[8]~input_o\,
	combout => \EU|readdata10|reg_out[8]~feeder_combout\);

-- Location: FF_X40_Y7_N19
\EU|readdata10|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata10|reg_out[8]~feeder_combout\,
	ena => \EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata10|reg_out\(8));

-- Location: LCCOMB_X39_Y6_N2
\EU|readdata00|reg_out[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata00|reg_out[8]~feeder_combout\ = \din[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[8]~input_o\,
	combout => \EU|readdata00|reg_out[8]~feeder_combout\);

-- Location: FF_X39_Y6_N3
\EU|readdata00|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata00|reg_out[8]~feeder_combout\,
	ena => \EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata00|reg_out\(8));

-- Location: LCCOMB_X40_Y7_N8
\EU|datamux|Mux7~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux7~0_combout\ = (\EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (\EU|readdata10|reg_out\(8))) # 
-- (!\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|readdata00|reg_out\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|readdata10|reg_out\(8),
	datac => \EU|readdata00|reg_out\(8),
	datad => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|datamux|Mux7~0_combout\);

-- Location: LCCOMB_X40_Y7_N24
\EU|readdata01|reg_out[8]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata01|reg_out[8]~feeder_combout\ = \din[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din[8]~input_o\,
	combout => \EU|readdata01|reg_out[8]~feeder_combout\);

-- Location: FF_X40_Y7_N25
\EU|readdata01|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata01|reg_out[8]~feeder_combout\,
	ena => \EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata01|reg_out\(8));

-- Location: LCCOMB_X39_Y7_N0
\EU|datamux|Mux7~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux7~1_combout\ = (\EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|datamux|Mux7~0_combout\ & (\EU|readdata11|reg_out\(8))) # (!\EU|datamux|Mux7~0_combout\ & ((\EU|readdata01|reg_out\(8)))))) # (!\EU|data_counter|entry_tff|dummy_out~q\ & 
-- (((\EU|datamux|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|readdata11|reg_out\(8),
	datac => \EU|datamux|Mux7~0_combout\,
	datad => \EU|readdata01|reg_out\(8),
	combout => \EU|datamux|Mux7~1_combout\);

-- Location: FF_X39_Y7_N1
\EU|dataout|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datamux|Mux7~1_combout\,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout|reg_out\(8));

-- Location: LCCOMB_X8_Y33_N0
\EU|dataout_pipe|reg_out~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dataout_pipe|reg_out~8_combout\ = (\CU|present_state.reset~q\ & \EU|dataout|reg_out\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.reset~q\,
	datad => \EU|dataout|reg_out\(8),
	combout => \EU|dataout_pipe|reg_out~8_combout\);

-- Location: FF_X8_Y33_N1
\EU|dataout_pipe|reg_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dataout_pipe|reg_out~8_combout\,
	ena => \CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout_pipe|reg_out\(8));

-- Location: IOIBUF_X43_Y0_N15
\din[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(9),
	o => \din[9]~input_o\);

-- Location: LCCOMB_X39_Y8_N12
\EU|readdata10|reg_out[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata10|reg_out[9]~feeder_combout\ = \din[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din[9]~input_o\,
	combout => \EU|readdata10|reg_out[9]~feeder_combout\);

-- Location: FF_X39_Y8_N13
\EU|readdata10|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata10|reg_out[9]~feeder_combout\,
	ena => \EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata10|reg_out\(9));

-- Location: LCCOMB_X41_Y6_N28
\EU|readdata00|reg_out[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata00|reg_out[9]~feeder_combout\ = \din[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din[9]~input_o\,
	combout => \EU|readdata00|reg_out[9]~feeder_combout\);

-- Location: FF_X41_Y6_N29
\EU|readdata00|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata00|reg_out[9]~feeder_combout\,
	ena => \EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata00|reg_out\(9));

-- Location: LCCOMB_X40_Y8_N30
\EU|readdata01|reg_out[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata01|reg_out[9]~feeder_combout\ = \din[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[9]~input_o\,
	combout => \EU|readdata01|reg_out[9]~feeder_combout\);

-- Location: FF_X40_Y8_N31
\EU|readdata01|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata01|reg_out[9]~feeder_combout\,
	ena => \EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata01|reg_out\(9));

-- Location: LCCOMB_X40_Y7_N26
\EU|datamux|Mux6~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux6~0_combout\ = (\EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|readdata01|reg_out\(9)) # (\EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|data_counter|entry_tff|dummy_out~q\ & (\EU|readdata00|reg_out\(9) & 
-- ((!\EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|readdata00|reg_out\(9),
	datac => \EU|readdata01|reg_out\(9),
	datad => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|datamux|Mux6~0_combout\);

-- Location: LCCOMB_X40_Y8_N28
\EU|readdata11|reg_out[9]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata11|reg_out[9]~feeder_combout\ = \din[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[9]~input_o\,
	combout => \EU|readdata11|reg_out[9]~feeder_combout\);

-- Location: FF_X40_Y8_N29
\EU|readdata11|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata11|reg_out[9]~feeder_combout\,
	ena => \EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata11|reg_out\(9));

-- Location: LCCOMB_X39_Y8_N26
\EU|datamux|Mux6~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux6~1_combout\ = (\EU|datamux|Mux6~0_combout\ & (((\EU|readdata11|reg_out\(9)) # (!\EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|datamux|Mux6~0_combout\ & (\EU|readdata10|reg_out\(9) & 
-- (\EU|data_counter|g1:1:chain_tff|dummy_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|readdata10|reg_out\(9),
	datab => \EU|datamux|Mux6~0_combout\,
	datac => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|readdata11|reg_out\(9),
	combout => \EU|datamux|Mux6~1_combout\);

-- Location: FF_X39_Y8_N27
\EU|dataout|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datamux|Mux6~1_combout\,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout|reg_out\(9));

-- Location: LCCOMB_X39_Y30_N14
\EU|dataout_pipe|reg_out~9\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dataout_pipe|reg_out~9_combout\ = (\CU|present_state.reset~q\ & \EU|dataout|reg_out\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.reset~q\,
	datad => \EU|dataout|reg_out\(9),
	combout => \EU|dataout_pipe|reg_out~9_combout\);

-- Location: FF_X39_Y30_N15
\EU|dataout_pipe|reg_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dataout_pipe|reg_out~9_combout\,
	ena => \CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout_pipe|reg_out\(9));

-- Location: IOIBUF_X18_Y0_N8
\din[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(10),
	o => \din[10]~input_o\);

-- Location: LCCOMB_X38_Y4_N14
\EU|readdata11|reg_out[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata11|reg_out[10]~feeder_combout\ = \din[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din[10]~input_o\,
	combout => \EU|readdata11|reg_out[10]~feeder_combout\);

-- Location: FF_X38_Y4_N15
\EU|readdata11|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata11|reg_out[10]~feeder_combout\,
	ena => \EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata11|reg_out\(10));

-- Location: LCCOMB_X38_Y3_N18
\EU|readdata01|reg_out[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata01|reg_out[10]~feeder_combout\ = \din[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[10]~input_o\,
	combout => \EU|readdata01|reg_out[10]~feeder_combout\);

-- Location: FF_X38_Y3_N19
\EU|readdata01|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata01|reg_out[10]~feeder_combout\,
	ena => \EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata01|reg_out\(10));

-- Location: LCCOMB_X39_Y6_N16
\EU|readdata00|reg_out[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata00|reg_out[10]~feeder_combout\ = \din[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[10]~input_o\,
	combout => \EU|readdata00|reg_out[10]~feeder_combout\);

-- Location: FF_X39_Y6_N17
\EU|readdata00|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata00|reg_out[10]~feeder_combout\,
	ena => \EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata00|reg_out\(10));

-- Location: LCCOMB_X38_Y4_N24
\EU|readdata10|reg_out[10]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata10|reg_out[10]~feeder_combout\ = \din[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din[10]~input_o\,
	combout => \EU|readdata10|reg_out[10]~feeder_combout\);

-- Location: FF_X38_Y4_N25
\EU|readdata10|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata10|reg_out[10]~feeder_combout\,
	ena => \EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata10|reg_out\(10));

-- Location: LCCOMB_X39_Y7_N26
\EU|datamux|Mux5~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux5~0_combout\ = (\EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|readdata10|reg_out\(10)))) # 
-- (!\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (\EU|readdata00|reg_out\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|readdata00|reg_out\(10),
	datac => \EU|readdata10|reg_out\(10),
	datad => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|datamux|Mux5~0_combout\);

-- Location: LCCOMB_X39_Y7_N10
\EU|datamux|Mux5~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux5~1_combout\ = (\EU|datamux|Mux5~0_combout\ & ((\EU|readdata11|reg_out\(10)) # ((!\EU|data_counter|entry_tff|dummy_out~q\)))) # (!\EU|datamux|Mux5~0_combout\ & (((\EU|readdata01|reg_out\(10) & \EU|data_counter|entry_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|readdata11|reg_out\(10),
	datab => \EU|readdata01|reg_out\(10),
	datac => \EU|datamux|Mux5~0_combout\,
	datad => \EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|datamux|Mux5~1_combout\);

-- Location: FF_X39_Y7_N11
\EU|dataout|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datamux|Mux5~1_combout\,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout|reg_out\(10));

-- Location: LCCOMB_X46_Y33_N10
\EU|dataout_pipe|reg_out~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dataout_pipe|reg_out~10_combout\ = (\CU|present_state.reset~q\ & \EU|dataout|reg_out\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.reset~q\,
	datad => \EU|dataout|reg_out\(10),
	combout => \EU|dataout_pipe|reg_out~10_combout\);

-- Location: FF_X46_Y33_N11
\EU|dataout_pipe|reg_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dataout_pipe|reg_out~10_combout\,
	ena => \CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout_pipe|reg_out\(10));

-- Location: IOIBUF_X20_Y0_N1
\din[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(11),
	o => \din[11]~input_o\);

-- Location: LCCOMB_X40_Y8_N4
\EU|readdata11|reg_out[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata11|reg_out[11]~feeder_combout\ = \din[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[11]~input_o\,
	combout => \EU|readdata11|reg_out[11]~feeder_combout\);

-- Location: FF_X40_Y8_N5
\EU|readdata11|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata11|reg_out[11]~feeder_combout\,
	ena => \EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata11|reg_out\(11));

-- Location: LCCOMB_X39_Y8_N18
\EU|readdata10|reg_out[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata10|reg_out[11]~feeder_combout\ = \din[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[11]~input_o\,
	combout => \EU|readdata10|reg_out[11]~feeder_combout\);

-- Location: FF_X39_Y8_N19
\EU|readdata10|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata10|reg_out[11]~feeder_combout\,
	ena => \EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata10|reg_out\(11));

-- Location: LCCOMB_X40_Y8_N26
\EU|readdata01|reg_out[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata01|reg_out[11]~feeder_combout\ = \din[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[11]~input_o\,
	combout => \EU|readdata01|reg_out[11]~feeder_combout\);

-- Location: FF_X40_Y8_N27
\EU|readdata01|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata01|reg_out[11]~feeder_combout\,
	ena => \EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata01|reg_out\(11));

-- Location: LCCOMB_X39_Y6_N14
\EU|readdata00|reg_out[11]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata00|reg_out[11]~feeder_combout\ = \din[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[11]~input_o\,
	combout => \EU|readdata00|reg_out[11]~feeder_combout\);

-- Location: FF_X39_Y6_N15
\EU|readdata00|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata00|reg_out[11]~feeder_combout\,
	ena => \EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata00|reg_out\(11));

-- Location: LCCOMB_X39_Y8_N28
\EU|datamux|Mux4~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux4~0_combout\ = (\EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|readdata01|reg_out\(11)) # ((\EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|data_counter|entry_tff|dummy_out~q\ & (((!\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & 
-- \EU|readdata00|reg_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|readdata01|reg_out\(11),
	datac => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|readdata00|reg_out\(11),
	combout => \EU|datamux|Mux4~0_combout\);

-- Location: LCCOMB_X39_Y8_N0
\EU|datamux|Mux4~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux4~1_combout\ = (\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|datamux|Mux4~0_combout\ & (\EU|readdata11|reg_out\(11))) # (!\EU|datamux|Mux4~0_combout\ & ((\EU|readdata10|reg_out\(11)))))) # 
-- (!\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (((\EU|datamux|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|readdata11|reg_out\(11),
	datab => \EU|readdata10|reg_out\(11),
	datac => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|datamux|Mux4~0_combout\,
	combout => \EU|datamux|Mux4~1_combout\);

-- Location: FF_X39_Y8_N1
\EU|dataout|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datamux|Mux4~1_combout\,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout|reg_out\(11));

-- Location: LCCOMB_X21_Y33_N2
\EU|dataout_pipe|reg_out~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dataout_pipe|reg_out~11_combout\ = (\CU|present_state.reset~q\ & \EU|dataout|reg_out\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.reset~q\,
	datad => \EU|dataout|reg_out\(11),
	combout => \EU|dataout_pipe|reg_out~11_combout\);

-- Location: FF_X21_Y33_N3
\EU|dataout_pipe|reg_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dataout_pipe|reg_out~11_combout\,
	ena => \CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout_pipe|reg_out\(11));

-- Location: IOIBUF_X53_Y13_N8
\din[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(12),
	o => \din[12]~input_o\);

-- Location: LCCOMB_X39_Y7_N12
\EU|readdata11|reg_out[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata11|reg_out[12]~feeder_combout\ = \din[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[12]~input_o\,
	combout => \EU|readdata11|reg_out[12]~feeder_combout\);

-- Location: FF_X39_Y7_N13
\EU|readdata11|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata11|reg_out[12]~feeder_combout\,
	ena => \EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata11|reg_out\(12));

-- Location: LCCOMB_X39_Y6_N0
\EU|readdata01|reg_out[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata01|reg_out[12]~feeder_combout\ = \din[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[12]~input_o\,
	combout => \EU|readdata01|reg_out[12]~feeder_combout\);

-- Location: FF_X39_Y6_N1
\EU|readdata01|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata01|reg_out[12]~feeder_combout\,
	ena => \EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata01|reg_out\(12));

-- Location: LCCOMB_X39_Y6_N26
\EU|readdata00|reg_out[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata00|reg_out[12]~feeder_combout\ = \din[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[12]~input_o\,
	combout => \EU|readdata00|reg_out[12]~feeder_combout\);

-- Location: FF_X39_Y6_N27
\EU|readdata00|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata00|reg_out[12]~feeder_combout\,
	ena => \EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata00|reg_out\(12));

-- Location: LCCOMB_X52_Y6_N26
\EU|readdata10|reg_out[12]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata10|reg_out[12]~feeder_combout\ = \din[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[12]~input_o\,
	combout => \EU|readdata10|reg_out[12]~feeder_combout\);

-- Location: FF_X52_Y6_N27
\EU|readdata10|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata10|reg_out[12]~feeder_combout\,
	ena => \EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata10|reg_out\(12));

-- Location: LCCOMB_X39_Y6_N8
\EU|datamux|Mux3~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux3~0_combout\ = (\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|data_counter|entry_tff|dummy_out~q\) # ((\EU|readdata10|reg_out\(12))))) # (!\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (!\EU|data_counter|entry_tff|dummy_out~q\ & 
-- (\EU|readdata00|reg_out\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datab => \EU|data_counter|entry_tff|dummy_out~q\,
	datac => \EU|readdata00|reg_out\(12),
	datad => \EU|readdata10|reg_out\(12),
	combout => \EU|datamux|Mux3~0_combout\);

-- Location: LCCOMB_X39_Y7_N28
\EU|datamux|Mux3~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux3~1_combout\ = (\EU|datamux|Mux3~0_combout\ & ((\EU|readdata11|reg_out\(12)) # ((!\EU|data_counter|entry_tff|dummy_out~q\)))) # (!\EU|datamux|Mux3~0_combout\ & (((\EU|readdata01|reg_out\(12) & \EU|data_counter|entry_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|readdata11|reg_out\(12),
	datab => \EU|readdata01|reg_out\(12),
	datac => \EU|datamux|Mux3~0_combout\,
	datad => \EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|datamux|Mux3~1_combout\);

-- Location: FF_X39_Y7_N29
\EU|dataout|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datamux|Mux3~1_combout\,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout|reg_out\(12));

-- Location: LCCOMB_X17_Y33_N2
\EU|dataout_pipe|reg_out~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dataout_pipe|reg_out~12_combout\ = (\CU|present_state.reset~q\ & \EU|dataout|reg_out\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.reset~q\,
	datad => \EU|dataout|reg_out\(12),
	combout => \EU|dataout_pipe|reg_out~12_combout\);

-- Location: FF_X17_Y33_N3
\EU|dataout_pipe|reg_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dataout_pipe|reg_out~12_combout\,
	ena => \CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout_pipe|reg_out\(12));

-- Location: IOIBUF_X38_Y0_N1
\din[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(13),
	o => \din[13]~input_o\);

-- Location: LCCOMB_X39_Y6_N4
\EU|readdata00|reg_out[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata00|reg_out[13]~feeder_combout\ = \din[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din[13]~input_o\,
	combout => \EU|readdata00|reg_out[13]~feeder_combout\);

-- Location: FF_X39_Y6_N5
\EU|readdata00|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata00|reg_out[13]~feeder_combout\,
	ena => \EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata00|reg_out\(13));

-- Location: LCCOMB_X39_Y6_N30
\EU|readdata01|reg_out[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata01|reg_out[13]~feeder_combout\ = \din[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din[13]~input_o\,
	combout => \EU|readdata01|reg_out[13]~feeder_combout\);

-- Location: FF_X39_Y6_N31
\EU|readdata01|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata01|reg_out[13]~feeder_combout\,
	ena => \EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata01|reg_out\(13));

-- Location: LCCOMB_X39_Y6_N18
\EU|datamux|Mux2~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux2~0_combout\ = (\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (((\EU|data_counter|entry_tff|dummy_out~q\)))) # (!\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|readdata01|reg_out\(13)))) # 
-- (!\EU|data_counter|entry_tff|dummy_out~q\ & (\EU|readdata00|reg_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datab => \EU|readdata00|reg_out\(13),
	datac => \EU|readdata01|reg_out\(13),
	datad => \EU|data_counter|entry_tff|dummy_out~q\,
	combout => \EU|datamux|Mux2~0_combout\);

-- Location: LCCOMB_X39_Y8_N22
\EU|readdata10|reg_out[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata10|reg_out[13]~feeder_combout\ = \din[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \din[13]~input_o\,
	combout => \EU|readdata10|reg_out[13]~feeder_combout\);

-- Location: FF_X39_Y8_N23
\EU|readdata10|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata10|reg_out[13]~feeder_combout\,
	ena => \EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata10|reg_out\(13));

-- Location: LCCOMB_X39_Y4_N18
\EU|readdata11|reg_out[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata11|reg_out[13]~feeder_combout\ = \din[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[13]~input_o\,
	combout => \EU|readdata11|reg_out[13]~feeder_combout\);

-- Location: FF_X39_Y4_N19
\EU|readdata11|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata11|reg_out[13]~feeder_combout\,
	ena => \EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata11|reg_out\(13));

-- Location: LCCOMB_X39_Y8_N10
\EU|datamux|Mux2~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux2~1_combout\ = (\EU|datamux|Mux2~0_combout\ & (((\EU|readdata11|reg_out\(13))) # (!\EU|data_counter|g1:1:chain_tff|dummy_out~q\))) # (!\EU|datamux|Mux2~0_combout\ & (\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & 
-- (\EU|readdata10|reg_out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|datamux|Mux2~0_combout\,
	datab => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datac => \EU|readdata10|reg_out\(13),
	datad => \EU|readdata11|reg_out\(13),
	combout => \EU|datamux|Mux2~1_combout\);

-- Location: FF_X39_Y8_N11
\EU|dataout|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datamux|Mux2~1_combout\,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout|reg_out\(13));

-- Location: LCCOMB_X20_Y33_N24
\EU|dataout_pipe|reg_out~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dataout_pipe|reg_out~13_combout\ = (\CU|present_state.reset~q\ & \EU|dataout|reg_out\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.reset~q\,
	datad => \EU|dataout|reg_out\(13),
	combout => \EU|dataout_pipe|reg_out~13_combout\);

-- Location: LCCOMB_X19_Y33_N0
\EU|dataout_pipe|reg_out[13]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dataout_pipe|reg_out[13]~feeder_combout\ = \EU|dataout_pipe|reg_out~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|dataout_pipe|reg_out~13_combout\,
	combout => \EU|dataout_pipe|reg_out[13]~feeder_combout\);

-- Location: FF_X19_Y33_N1
\EU|dataout_pipe|reg_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dataout_pipe|reg_out[13]~feeder_combout\,
	ena => \CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout_pipe|reg_out\(13));

-- Location: IOIBUF_X43_Y0_N22
\din[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(14),
	o => \din[14]~input_o\);

-- Location: LCCOMB_X43_Y3_N24
\EU|readdata01|reg_out[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata01|reg_out[14]~feeder_combout\ = \din[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[14]~input_o\,
	combout => \EU|readdata01|reg_out[14]~feeder_combout\);

-- Location: FF_X43_Y3_N25
\EU|readdata01|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata01|reg_out[14]~feeder_combout\,
	ena => \EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata01|reg_out\(14));

-- Location: LCCOMB_X41_Y4_N24
\EU|readdata11|reg_out[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata11|reg_out[14]~feeder_combout\ = \din[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[14]~input_o\,
	combout => \EU|readdata11|reg_out[14]~feeder_combout\);

-- Location: FF_X41_Y4_N25
\EU|readdata11|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata11|reg_out[14]~feeder_combout\,
	ena => \EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata11|reg_out\(14));

-- Location: LCCOMB_X43_Y6_N0
\EU|readdata10|reg_out[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata10|reg_out[14]~feeder_combout\ = \din[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[14]~input_o\,
	combout => \EU|readdata10|reg_out[14]~feeder_combout\);

-- Location: FF_X43_Y6_N1
\EU|readdata10|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata10|reg_out[14]~feeder_combout\,
	ena => \EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata10|reg_out\(14));

-- Location: LCCOMB_X41_Y6_N18
\EU|readdata00|reg_out[14]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata00|reg_out[14]~feeder_combout\ = \din[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[14]~input_o\,
	combout => \EU|readdata00|reg_out[14]~feeder_combout\);

-- Location: FF_X41_Y6_N19
\EU|readdata00|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata00|reg_out[14]~feeder_combout\,
	ena => \EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata00|reg_out\(14));

-- Location: LCCOMB_X43_Y7_N18
\EU|datamux|Mux1~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux1~0_combout\ = (\EU|data_counter|entry_tff|dummy_out~q\ & (((\EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & (\EU|readdata10|reg_out\(14))) # 
-- (!\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & ((\EU|readdata00|reg_out\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|readdata10|reg_out\(14),
	datac => \EU|readdata00|reg_out\(14),
	datad => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|datamux|Mux1~0_combout\);

-- Location: LCCOMB_X43_Y7_N28
\EU|datamux|Mux1~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux1~1_combout\ = (\EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|datamux|Mux1~0_combout\ & ((\EU|readdata11|reg_out\(14)))) # (!\EU|datamux|Mux1~0_combout\ & (\EU|readdata01|reg_out\(14))))) # (!\EU|data_counter|entry_tff|dummy_out~q\ & 
-- (((\EU|datamux|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|data_counter|entry_tff|dummy_out~q\,
	datab => \EU|readdata01|reg_out\(14),
	datac => \EU|readdata11|reg_out\(14),
	datad => \EU|datamux|Mux1~0_combout\,
	combout => \EU|datamux|Mux1~1_combout\);

-- Location: FF_X43_Y7_N29
\EU|dataout|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datamux|Mux1~1_combout\,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout|reg_out\(14));

-- Location: LCCOMB_X52_Y14_N6
\EU|dataout_pipe|reg_out~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dataout_pipe|reg_out~14_combout\ = (\CU|present_state.reset~q\ & \EU|dataout|reg_out\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.reset~q\,
	datad => \EU|dataout|reg_out\(14),
	combout => \EU|dataout_pipe|reg_out~14_combout\);

-- Location: FF_X52_Y14_N7
\EU|dataout_pipe|reg_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dataout_pipe|reg_out~14_combout\,
	ena => \CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout_pipe|reg_out\(14));

-- Location: IOIBUF_X11_Y0_N22
\din[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(15),
	o => \din[15]~input_o\);

-- Location: LCCOMB_X38_Y8_N18
\EU|readdata11|reg_out[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata11|reg_out[15]~feeder_combout\ = \din[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[15]~input_o\,
	combout => \EU|readdata11|reg_out[15]~feeder_combout\);

-- Location: FF_X38_Y8_N19
\EU|readdata11|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata11|reg_out[15]~feeder_combout\,
	ena => \EU|dec|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata11|reg_out\(15));

-- Location: LCCOMB_X38_Y8_N24
\EU|readdata10|reg_out[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata10|reg_out[15]~feeder_combout\ = \din[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[15]~input_o\,
	combout => \EU|readdata10|reg_out[15]~feeder_combout\);

-- Location: FF_X38_Y8_N25
\EU|readdata10|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata10|reg_out[15]~feeder_combout\,
	ena => \EU|dec|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata10|reg_out\(15));

-- Location: LCCOMB_X39_Y6_N12
\EU|readdata01|reg_out[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata01|reg_out[15]~feeder_combout\ = \din[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[15]~input_o\,
	combout => \EU|readdata01|reg_out[15]~feeder_combout\);

-- Location: FF_X39_Y6_N13
\EU|readdata01|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata01|reg_out[15]~feeder_combout\,
	ena => \EU|dec|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata01|reg_out\(15));

-- Location: LCCOMB_X39_Y6_N10
\EU|readdata00|reg_out[15]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|readdata00|reg_out[15]~feeder_combout\ = \din[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \din[15]~input_o\,
	combout => \EU|readdata00|reg_out[15]~feeder_combout\);

-- Location: FF_X39_Y6_N11
\EU|readdata00|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \din_strobe~inputclkctrl_outclk\,
	d => \EU|readdata00|reg_out[15]~feeder_combout\,
	ena => \EU|readdata00_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|readdata00|reg_out\(15));

-- Location: LCCOMB_X39_Y6_N24
\EU|datamux|Mux0~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux0~0_combout\ = (\EU|data_counter|entry_tff|dummy_out~q\ & ((\EU|readdata01|reg_out\(15)) # ((\EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|data_counter|entry_tff|dummy_out~q\ & (((!\EU|data_counter|g1:1:chain_tff|dummy_out~q\ & 
-- \EU|readdata00|reg_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|readdata01|reg_out\(15),
	datab => \EU|data_counter|entry_tff|dummy_out~q\,
	datac => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	datad => \EU|readdata00|reg_out\(15),
	combout => \EU|datamux|Mux0~0_combout\);

-- Location: LCCOMB_X39_Y7_N2
\EU|datamux|Mux0~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|datamux|Mux0~1_combout\ = (\EU|datamux|Mux0~0_combout\ & ((\EU|readdata11|reg_out\(15)) # ((!\EU|data_counter|g1:1:chain_tff|dummy_out~q\)))) # (!\EU|datamux|Mux0~0_combout\ & (((\EU|readdata10|reg_out\(15) & 
-- \EU|data_counter|g1:1:chain_tff|dummy_out~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|readdata11|reg_out\(15),
	datab => \EU|readdata10|reg_out\(15),
	datac => \EU|datamux|Mux0~0_combout\,
	datad => \EU|data_counter|g1:1:chain_tff|dummy_out~q\,
	combout => \EU|datamux|Mux0~1_combout\);

-- Location: FF_X39_Y7_N3
\EU|dataout|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|datamux|Mux0~1_combout\,
	ena => \CU|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout|reg_out\(15));

-- Location: LCCOMB_X52_Y30_N20
\EU|dataout_pipe|reg_out~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|dataout_pipe|reg_out~15_combout\ = (\EU|dataout|reg_out\(15) & \CU|present_state.reset~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|dataout|reg_out\(15),
	datad => \CU|present_state.reset~q\,
	combout => \EU|dataout_pipe|reg_out~15_combout\);

-- Location: FF_X52_Y30_N21
\EU|dataout_pipe|reg_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|dataout_pipe|reg_out~15_combout\,
	ena => \CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|dataout_pipe|reg_out\(15));

-- Location: LCCOMB_X44_Y4_N28
\EU|valid_pipe|dff_out~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|valid_pipe|dff_out~feeder_combout\ = \CU|present_state.reception~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|present_state.reception~q\,
	combout => \EU|valid_pipe|dff_out~feeder_combout\);

-- Location: FF_X44_Y4_N29
\EU|valid_pipe|dff_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \EU|valid_pipe|dff_out~feeder_combout\,
	ena => \CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|valid_pipe|dff_out~q\);

-- Location: LCCOMB_X52_Y14_N20
\CU|WideOr5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|WideOr5~combout\ = (!\CU|present_state.idle~q\ & (!\CU|present_state.idle_clear~q\ & (\CU|present_state.reset~q\ & !\CU|present_state.idle_disabled~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.idle~q\,
	datab => \CU|present_state.idle_clear~q\,
	datac => \CU|present_state.reset~q\,
	datad => \CU|present_state.idle_disabled~q\,
	combout => \CU|WideOr5~combout\);

-- Location: FF_X52_Y14_N21
\EU|busy_pipe|dff_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|WideOr5~combout\,
	sclr => \CU|ALT_INV_present_state.reset~q\,
	ena => \CU|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|busy_pipe|dff_out~q\);

ww_dout(0) <= \dout[0]~output_o\;

ww_dout(1) <= \dout[1]~output_o\;

ww_dout(2) <= \dout[2]~output_o\;

ww_dout(3) <= \dout[3]~output_o\;

ww_dout(4) <= \dout[4]~output_o\;

ww_dout(5) <= \dout[5]~output_o\;

ww_dout(6) <= \dout[6]~output_o\;

ww_dout(7) <= \dout[7]~output_o\;

ww_dout(8) <= \dout[8]~output_o\;

ww_dout(9) <= \dout[9]~output_o\;

ww_dout(10) <= \dout[10]~output_o\;

ww_dout(11) <= \dout[11]~output_o\;

ww_dout(12) <= \dout[12]~output_o\;

ww_dout(13) <= \dout[13]~output_o\;

ww_dout(14) <= \dout[14]~output_o\;

ww_dout(15) <= \dout[15]~output_o\;

ww_synch_validout <= \synch_validout~output_o\;

ww_synch_busy <= \synch_busy~output_o\;
END structure;


