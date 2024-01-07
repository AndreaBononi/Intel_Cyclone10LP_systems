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

-- DATE "01/07/2024 16:50:03"

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

ENTITY 	DDR_to_SDR_converter IS
    PORT (
	clk_x8 : IN std_logic;
	rst_n : IN std_logic;
	clear_n : IN std_logic;
	rwds_in : IN std_logic;
	rwds_out : BUFFER std_logic;
	DDR_in : IN std_logic_vector(7 DOWNTO 0);
	SDR_out : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END DDR_to_SDR_converter;

-- Design Ports Information
-- rwds_out	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDR_out[0]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDR_out[1]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDR_out[2]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDR_out[3]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDR_out[4]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDR_out[5]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDR_out[6]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDR_out[7]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDR_out[8]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDR_out[9]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDR_out[10]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDR_out[11]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDR_out[12]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDR_out[13]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDR_out[14]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDR_out[15]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_x8	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear_n	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rwds_in	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DDR_in[0]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DDR_in[1]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DDR_in[2]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DDR_in[3]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DDR_in[4]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DDR_in[5]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DDR_in[6]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DDR_in[7]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DDR_to_SDR_converter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_x8 : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_clear_n : std_logic;
SIGNAL ww_rwds_in : std_logic;
SIGNAL ww_rwds_out : std_logic;
SIGNAL ww_DDR_in : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SDR_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk_x8~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rwds_out~output_o\ : std_logic;
SIGNAL \SDR_out[0]~output_o\ : std_logic;
SIGNAL \SDR_out[1]~output_o\ : std_logic;
SIGNAL \SDR_out[2]~output_o\ : std_logic;
SIGNAL \SDR_out[3]~output_o\ : std_logic;
SIGNAL \SDR_out[4]~output_o\ : std_logic;
SIGNAL \SDR_out[5]~output_o\ : std_logic;
SIGNAL \SDR_out[6]~output_o\ : std_logic;
SIGNAL \SDR_out[7]~output_o\ : std_logic;
SIGNAL \SDR_out[8]~output_o\ : std_logic;
SIGNAL \SDR_out[9]~output_o\ : std_logic;
SIGNAL \SDR_out[10]~output_o\ : std_logic;
SIGNAL \SDR_out[11]~output_o\ : std_logic;
SIGNAL \SDR_out[12]~output_o\ : std_logic;
SIGNAL \SDR_out[13]~output_o\ : std_logic;
SIGNAL \SDR_out[14]~output_o\ : std_logic;
SIGNAL \SDR_out[15]~output_o\ : std_logic;
SIGNAL \clk_x8~input_o\ : std_logic;
SIGNAL \clk_x8~inputclkctrl_outclk\ : std_logic;
SIGNAL \clear_n~input_o\ : std_logic;
SIGNAL \CU|present_state.reset~feeder_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \CU|present_state.reset~q\ : std_logic;
SIGNAL \CU|system_clear_n~q\ : std_logic;
SIGNAL \rwds_in~input_o\ : std_logic;
SIGNAL \EU|pdff4|dout~0_combout\ : std_logic;
SIGNAL \EU|ndff4|dout~q\ : std_logic;
SIGNAL \EU|ndff4_pipeline|dout~0_combout\ : std_logic;
SIGNAL \EU|ndff4_pipeline|dout~feeder_combout\ : std_logic;
SIGNAL \EU|ndff4_pipeline|dout~q\ : std_logic;
SIGNAL \EU|voter_inst|pipereg1|dout~7_combout\ : std_logic;
SIGNAL \EU|ndff3|dout~q\ : std_logic;
SIGNAL \EU|ndff3_pipeline|dout~0_combout\ : std_logic;
SIGNAL \EU|ndff3_pipeline|dout~feeder_combout\ : std_logic;
SIGNAL \EU|ndff3_pipeline|dout~q\ : std_logic;
SIGNAL \EU|voter_inst|pipereg1|dout~5_combout\ : std_logic;
SIGNAL \EU|pdff4|dout~feeder_combout\ : std_logic;
SIGNAL \EU|pdff4|dout~q\ : std_logic;
SIGNAL \EU|pdff4_pipeline|dout~0_combout\ : std_logic;
SIGNAL \EU|pdff4_pipeline|dout~feeder_combout\ : std_logic;
SIGNAL \EU|pdff4_pipeline|dout~q\ : std_logic;
SIGNAL \EU|voter_inst|pipereg1|dout~6_combout\ : std_logic;
SIGNAL \EU|voter_inst|fa00|cout~0_combout\ : std_logic;
SIGNAL \EU|ndff2|dout~q\ : std_logic;
SIGNAL \EU|ndff2_pipeline|dout~0_combout\ : std_logic;
SIGNAL \EU|ndff1|dout~q\ : std_logic;
SIGNAL \EU|ndff1_pipeline|dout~0_combout\ : std_logic;
SIGNAL \EU|ndff1_pipeline|dout~q\ : std_logic;
SIGNAL \EU|voter_inst|pipereg1|dout~1_combout\ : std_logic;
SIGNAL \EU|pdff3|dout~feeder_combout\ : std_logic;
SIGNAL \EU|pdff3|dout~q\ : std_logic;
SIGNAL \EU|pdff3_pipeline|dout~0_combout\ : std_logic;
SIGNAL \EU|pdff2|dout~feeder_combout\ : std_logic;
SIGNAL \EU|pdff2|dout~q\ : std_logic;
SIGNAL \EU|pdff2_pipeline|dout~0_combout\ : std_logic;
SIGNAL \EU|pdff1|dout~feeder_combout\ : std_logic;
SIGNAL \EU|pdff1|dout~q\ : std_logic;
SIGNAL \EU|pdff1_pipeline|dout~0_combout\ : std_logic;
SIGNAL \EU|pdff1_pipeline|dout~q\ : std_logic;
SIGNAL \EU|voter_inst|pipereg1|dout~0_combout\ : std_logic;
SIGNAL \EU|voter_inst|ha02|c~combout\ : std_logic;
SIGNAL \EU|ndff2_pipeline|dout~feeder_combout\ : std_logic;
SIGNAL \EU|ndff2_pipeline|dout~q\ : std_logic;
SIGNAL \EU|voter_inst|pipereg1|dout~3_combout\ : std_logic;
SIGNAL \EU|pdff2_pipeline|dout~feeder_combout\ : std_logic;
SIGNAL \EU|pdff2_pipeline|dout~q\ : std_logic;
SIGNAL \EU|voter_inst|pipereg1|dout~2_combout\ : std_logic;
SIGNAL \EU|pdff3_pipeline|dout~q\ : std_logic;
SIGNAL \EU|voter_inst|pipereg1|dout~4_combout\ : std_logic;
SIGNAL \EU|voter_inst|fa01|cout~0_combout\ : std_logic;
SIGNAL \EU|voter_inst|faw1|cout~0_combout\ : std_logic;
SIGNAL \EU|voter_inst|fa00|ha2_inst|s~0_combout\ : std_logic;
SIGNAL \EU|voter_inst|fa01|ha2_inst|s~0_combout\ : std_logic;
SIGNAL \EU|voter_inst|ha02|s~combout\ : std_logic;
SIGNAL \EU|voter_inst|faw0|cout~0_combout\ : std_logic;
SIGNAL \EU|voter_inst|faw1|ha2_inst|s~0_combout\ : std_logic;
SIGNAL \EU|voter_inst|faw0|ha2_inst|s~0_combout\ : std_logic;
SIGNAL \EU|voter_inst|pipereg5_in[0]~1_combout\ : std_logic;
SIGNAL \EU|voter_inst|pipereg5_in[1]~0_combout\ : std_logic;
SIGNAL \EU|tracker|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|tracker|dummy_out~q\ : std_logic;
SIGNAL \CU|present_state~14_combout\ : std_logic;
SIGNAL \CU|present_state~15_combout\ : std_logic;
SIGNAL \CU|present_state.idle_intra~q\ : std_logic;
SIGNAL \CU|present_state~10_combout\ : std_logic;
SIGNAL \CU|present_state~11_combout\ : std_logic;
SIGNAL \CU|present_state.msb_tx~q\ : std_logic;
SIGNAL \CU|present_state~12_combout\ : std_logic;
SIGNAL \CU|present_state~13_combout\ : std_logic;
SIGNAL \CU|present_state.lsb_tx~q\ : std_logic;
SIGNAL \CU|int_rwdsgen_toggle~combout\ : std_logic;
SIGNAL \CU|rwdsgen_toggle~q\ : std_logic;
SIGNAL \EU|rwdsgen|dummy_out~0_combout\ : std_logic;
SIGNAL \EU|rwdsgen|dummy_out~q\ : std_logic;
SIGNAL \DDR_in[0]~input_o\ : std_logic;
SIGNAL \EU|regp1|dout~0_combout\ : std_logic;
SIGNAL \EU|regp2|dout~0_combout\ : std_logic;
SIGNAL \EU|pipereg1|dout~0_combout\ : std_logic;
SIGNAL \EU|pipereg2|dout~0_combout\ : std_logic;
SIGNAL \EU|pipereg3|dout~0_combout\ : std_logic;
SIGNAL \EU|pipereg4|dout~0_combout\ : std_logic;
SIGNAL \EU|pipereg5|dout~0_combout\ : std_logic;
SIGNAL \EU|pipereg6|dout~0_combout\ : std_logic;
SIGNAL \EU|pipereg7|dout~0_combout\ : std_logic;
SIGNAL \EU|lsb|dout~0_combout\ : std_logic;
SIGNAL \EU|lsb|dout[0]~feeder_combout\ : std_logic;
SIGNAL \CU|lsb_enable~q\ : std_logic;
SIGNAL \EU|lsb|dout[7]~1_combout\ : std_logic;
SIGNAL \DDR_in[1]~input_o\ : std_logic;
SIGNAL \EU|regp1|dout~1_combout\ : std_logic;
SIGNAL \EU|regp2|dout~1_combout\ : std_logic;
SIGNAL \EU|regp2|dout[1]~feeder_combout\ : std_logic;
SIGNAL \EU|pipereg1|dout~1_combout\ : std_logic;
SIGNAL \EU|pipereg2|dout~1_combout\ : std_logic;
SIGNAL \EU|pipereg3|dout~1_combout\ : std_logic;
SIGNAL \EU|pipereg4|dout~1_combout\ : std_logic;
SIGNAL \EU|pipereg5|dout~1_combout\ : std_logic;
SIGNAL \EU|pipereg6|dout~1_combout\ : std_logic;
SIGNAL \EU|pipereg7|dout~1_combout\ : std_logic;
SIGNAL \EU|lsb|dout~2_combout\ : std_logic;
SIGNAL \EU|lsb|dout[1]~feeder_combout\ : std_logic;
SIGNAL \DDR_in[2]~input_o\ : std_logic;
SIGNAL \EU|regp1|dout~2_combout\ : std_logic;
SIGNAL \EU|regp2|dout~2_combout\ : std_logic;
SIGNAL \EU|pipereg1|dout~2_combout\ : std_logic;
SIGNAL \EU|pipereg2|dout~2_combout\ : std_logic;
SIGNAL \EU|pipereg3|dout~2_combout\ : std_logic;
SIGNAL \EU|pipereg4|dout~2_combout\ : std_logic;
SIGNAL \EU|pipereg5|dout~2_combout\ : std_logic;
SIGNAL \EU|pipereg6|dout~2_combout\ : std_logic;
SIGNAL \EU|pipereg7|dout~2_combout\ : std_logic;
SIGNAL \EU|lsb|dout~3_combout\ : std_logic;
SIGNAL \DDR_in[3]~input_o\ : std_logic;
SIGNAL \EU|regp1|dout~3_combout\ : std_logic;
SIGNAL \EU|regp2|dout~3_combout\ : std_logic;
SIGNAL \EU|pipereg1|dout~3_combout\ : std_logic;
SIGNAL \EU|pipereg2|dout~3_combout\ : std_logic;
SIGNAL \EU|pipereg3|dout~3_combout\ : std_logic;
SIGNAL \EU|pipereg4|dout~3_combout\ : std_logic;
SIGNAL \EU|pipereg5|dout~3_combout\ : std_logic;
SIGNAL \EU|pipereg6|dout~3_combout\ : std_logic;
SIGNAL \EU|pipereg7|dout~3_combout\ : std_logic;
SIGNAL \EU|lsb|dout~4_combout\ : std_logic;
SIGNAL \EU|lsb|dout[3]~feeder_combout\ : std_logic;
SIGNAL \DDR_in[4]~input_o\ : std_logic;
SIGNAL \EU|regp1|dout~4_combout\ : std_logic;
SIGNAL \EU|regp2|dout~4_combout\ : std_logic;
SIGNAL \EU|pipereg1|dout~4_combout\ : std_logic;
SIGNAL \EU|pipereg2|dout~4_combout\ : std_logic;
SIGNAL \EU|pipereg3|dout~4_combout\ : std_logic;
SIGNAL \EU|pipereg4|dout~4_combout\ : std_logic;
SIGNAL \EU|pipereg5|dout~4_combout\ : std_logic;
SIGNAL \EU|pipereg6|dout~4_combout\ : std_logic;
SIGNAL \EU|pipereg7|dout~4_combout\ : std_logic;
SIGNAL \EU|lsb|dout~5_combout\ : std_logic;
SIGNAL \EU|lsb|dout[4]~feeder_combout\ : std_logic;
SIGNAL \DDR_in[5]~input_o\ : std_logic;
SIGNAL \EU|regp1|dout~5_combout\ : std_logic;
SIGNAL \EU|regp2|dout~5_combout\ : std_logic;
SIGNAL \EU|pipereg1|dout~5_combout\ : std_logic;
SIGNAL \EU|pipereg2|dout~5_combout\ : std_logic;
SIGNAL \EU|pipereg3|dout~5_combout\ : std_logic;
SIGNAL \EU|pipereg4|dout~5_combout\ : std_logic;
SIGNAL \EU|pipereg5|dout~5_combout\ : std_logic;
SIGNAL \EU|pipereg6|dout~5_combout\ : std_logic;
SIGNAL \EU|pipereg7|dout~5_combout\ : std_logic;
SIGNAL \EU|lsb|dout~6_combout\ : std_logic;
SIGNAL \EU|lsb|dout[5]~feeder_combout\ : std_logic;
SIGNAL \DDR_in[6]~input_o\ : std_logic;
SIGNAL \EU|regp1|dout~6_combout\ : std_logic;
SIGNAL \EU|regp2|dout~6_combout\ : std_logic;
SIGNAL \EU|pipereg1|dout~6_combout\ : std_logic;
SIGNAL \EU|pipereg2|dout~6_combout\ : std_logic;
SIGNAL \EU|pipereg2|dout[6]~feeder_combout\ : std_logic;
SIGNAL \EU|pipereg3|dout~6_combout\ : std_logic;
SIGNAL \EU|pipereg4|dout~6_combout\ : std_logic;
SIGNAL \EU|pipereg5|dout~6_combout\ : std_logic;
SIGNAL \EU|pipereg6|dout~6_combout\ : std_logic;
SIGNAL \EU|pipereg7|dout~6_combout\ : std_logic;
SIGNAL \EU|lsb|dout~7_combout\ : std_logic;
SIGNAL \EU|lsb|dout[6]~feeder_combout\ : std_logic;
SIGNAL \DDR_in[7]~input_o\ : std_logic;
SIGNAL \EU|regp1|dout~7_combout\ : std_logic;
SIGNAL \EU|regp2|dout~7_combout\ : std_logic;
SIGNAL \EU|pipereg1|dout~7_combout\ : std_logic;
SIGNAL \EU|pipereg2|dout~7_combout\ : std_logic;
SIGNAL \EU|pipereg3|dout~7_combout\ : std_logic;
SIGNAL \EU|pipereg4|dout~7_combout\ : std_logic;
SIGNAL \EU|pipereg5|dout~7_combout\ : std_logic;
SIGNAL \EU|pipereg6|dout~7_combout\ : std_logic;
SIGNAL \EU|pipereg7|dout~7_combout\ : std_logic;
SIGNAL \EU|lsb|dout~8_combout\ : std_logic;
SIGNAL \EU|lsb|dout[7]~feeder_combout\ : std_logic;
SIGNAL \CU|msb_enable~q\ : std_logic;
SIGNAL \EU|msb|dout[7]~0_combout\ : std_logic;
SIGNAL \EU|msb|dout[7]~feeder_combout\ : std_logic;
SIGNAL \EU|regp1|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \EU|regp2|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \EU|pipereg2|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \EU|pipereg3|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \EU|voter_inst|pipereg1|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \EU|pipereg5|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \EU|pipereg6|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \EU|pipereg7|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \EU|voter_inst|pipereg4|dout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EU|voter_inst|pipereg3|dout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EU|pipereg1|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \EU|voter_inst|pipereg5|dout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \EU|pipereg4|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \EU|voter_inst|pipereg2|dout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \EU|lsb|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \EU|msb|dout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clk_x8~inputclkctrl_outclk\ : std_logic;
SIGNAL \CU|ALT_INV_system_clear_n~q\ : std_logic;
SIGNAL \EU|rwdsgen|ALT_INV_dummy_out~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_x8 <= clk_x8;
ww_rst_n <= rst_n;
ww_clear_n <= clear_n;
ww_rwds_in <= rwds_in;
rwds_out <= ww_rwds_out;
ww_DDR_in <= DDR_in;
SDR_out <= ww_SDR_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_x8~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_x8~input_o\);
\ALT_INV_clk_x8~inputclkctrl_outclk\ <= NOT \clk_x8~inputclkctrl_outclk\;
\CU|ALT_INV_system_clear_n~q\ <= NOT \CU|system_clear_n~q\;
\EU|rwdsgen|ALT_INV_dummy_out~q\ <= NOT \EU|rwdsgen|dummy_out~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y26_N16
\rwds_out~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|rwdsgen|ALT_INV_dummy_out~q\,
	devoe => ww_devoe,
	o => \rwds_out~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\SDR_out[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|lsb|dout\(0),
	devoe => ww_devoe,
	o => \SDR_out[0]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\SDR_out[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|lsb|dout\(1),
	devoe => ww_devoe,
	o => \SDR_out[1]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\SDR_out[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|lsb|dout\(2),
	devoe => ww_devoe,
	o => \SDR_out[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\SDR_out[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|lsb|dout\(3),
	devoe => ww_devoe,
	o => \SDR_out[3]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\SDR_out[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|lsb|dout\(4),
	devoe => ww_devoe,
	o => \SDR_out[4]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\SDR_out[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|lsb|dout\(5),
	devoe => ww_devoe,
	o => \SDR_out[5]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\SDR_out[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|lsb|dout\(6),
	devoe => ww_devoe,
	o => \SDR_out[6]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\SDR_out[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|lsb|dout\(7),
	devoe => ww_devoe,
	o => \SDR_out[7]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\SDR_out[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|msb|dout\(0),
	devoe => ww_devoe,
	o => \SDR_out[8]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\SDR_out[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|msb|dout\(1),
	devoe => ww_devoe,
	o => \SDR_out[9]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\SDR_out[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|msb|dout\(2),
	devoe => ww_devoe,
	o => \SDR_out[10]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\SDR_out[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|msb|dout\(3),
	devoe => ww_devoe,
	o => \SDR_out[11]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\SDR_out[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|msb|dout\(4),
	devoe => ww_devoe,
	o => \SDR_out[12]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\SDR_out[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|msb|dout\(5),
	devoe => ww_devoe,
	o => \SDR_out[13]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\SDR_out[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|msb|dout\(6),
	devoe => ww_devoe,
	o => \SDR_out[14]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\SDR_out[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EU|msb|dout\(7),
	devoe => ww_devoe,
	o => \SDR_out[15]~output_o\);

-- Location: IOIBUF_X0_Y16_N1
\clk_x8~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_x8,
	o => \clk_x8~input_o\);

-- Location: CLKCTRL_G4
\clk_x8~inputclkctrl\ : cyclone10lp_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_x8~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_x8~inputclkctrl_outclk\);

-- Location: IOIBUF_X18_Y34_N22
\clear_n~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear_n,
	o => \clear_n~input_o\);

-- Location: LCCOMB_X18_Y30_N26
\CU|present_state.reset~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state.reset~feeder_combout\ = \clear_n~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear_n~input_o\,
	combout => \CU|present_state.reset~feeder_combout\);

-- Location: IOIBUF_X18_Y34_N1
\rst_n~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: FF_X18_Y30_N27
\CU|present_state.reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \CU|present_state.reset~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.reset~q\);

-- Location: FF_X21_Y30_N13
\CU|system_clear_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	asdata => \CU|present_state.reset~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|system_clear_n~q\);

-- Location: IOIBUF_X20_Y34_N15
\rwds_in~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rwds_in,
	o => \rwds_in~input_o\);

-- Location: LCCOMB_X20_Y30_N22
\EU|pdff4|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pdff4|dout~0_combout\ = (\CU|system_clear_n~q\ & \rwds_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datad => \rwds_in~input_o\,
	combout => \EU|pdff4|dout~0_combout\);

-- Location: FF_X20_Y30_N25
\EU|ndff4|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_x8~inputclkctrl_outclk\,
	asdata => \EU|pdff4|dout~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|ndff4|dout~q\);

-- Location: LCCOMB_X20_Y30_N26
\EU|ndff4_pipeline|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|ndff4_pipeline|dout~0_combout\ = (\CU|system_clear_n~q\ & \EU|ndff4|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|ndff4|dout~q\,
	combout => \EU|ndff4_pipeline|dout~0_combout\);

-- Location: LCCOMB_X19_Y30_N6
\EU|ndff4_pipeline|dout~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|ndff4_pipeline|dout~feeder_combout\ = \EU|ndff4_pipeline|dout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|ndff4_pipeline|dout~0_combout\,
	combout => \EU|ndff4_pipeline|dout~feeder_combout\);

-- Location: FF_X19_Y30_N7
\EU|ndff4_pipeline|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_x8~inputclkctrl_outclk\,
	d => \EU|ndff4_pipeline|dout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|ndff4_pipeline|dout~q\);

-- Location: LCCOMB_X19_Y30_N30
\EU|voter_inst|pipereg1|dout~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|pipereg1|dout~7_combout\ = (\CU|system_clear_n~q\ & \EU|ndff4_pipeline|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|ndff4_pipeline|dout~q\,
	combout => \EU|voter_inst|pipereg1|dout~7_combout\);

-- Location: FF_X19_Y30_N31
\EU|voter_inst|pipereg1|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|pipereg1|dout~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg1|dout\(0));

-- Location: FF_X20_Y30_N27
\EU|ndff3|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_x8~inputclkctrl_outclk\,
	d => \EU|ndff4_pipeline|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|ndff3|dout~q\);

-- Location: LCCOMB_X19_Y30_N10
\EU|ndff3_pipeline|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|ndff3_pipeline|dout~0_combout\ = (\CU|system_clear_n~q\ & \EU|ndff3|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|ndff3|dout~q\,
	combout => \EU|ndff3_pipeline|dout~0_combout\);

-- Location: LCCOMB_X19_Y30_N16
\EU|ndff3_pipeline|dout~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|ndff3_pipeline|dout~feeder_combout\ = \EU|ndff3_pipeline|dout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|ndff3_pipeline|dout~0_combout\,
	combout => \EU|ndff3_pipeline|dout~feeder_combout\);

-- Location: FF_X19_Y30_N17
\EU|ndff3_pipeline|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_x8~inputclkctrl_outclk\,
	d => \EU|ndff3_pipeline|dout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|ndff3_pipeline|dout~q\);

-- Location: LCCOMB_X19_Y30_N12
\EU|voter_inst|pipereg1|dout~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|pipereg1|dout~5_combout\ = (\CU|system_clear_n~q\ & \EU|ndff3_pipeline|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|ndff3_pipeline|dout~q\,
	combout => \EU|voter_inst|pipereg1|dout~5_combout\);

-- Location: FF_X19_Y30_N13
\EU|voter_inst|pipereg1|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|pipereg1|dout~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg1|dout\(2));

-- Location: LCCOMB_X24_Y30_N0
\EU|pdff4|dout~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pdff4|dout~feeder_combout\ = \EU|pdff4|dout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|pdff4|dout~0_combout\,
	combout => \EU|pdff4|dout~feeder_combout\);

-- Location: FF_X24_Y30_N1
\EU|pdff4|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pdff4|dout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pdff4|dout~q\);

-- Location: LCCOMB_X24_Y30_N28
\EU|pdff4_pipeline|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pdff4_pipeline|dout~0_combout\ = (\CU|system_clear_n~q\ & \EU|pdff4|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datad => \EU|pdff4|dout~q\,
	combout => \EU|pdff4_pipeline|dout~0_combout\);

-- Location: LCCOMB_X23_Y30_N10
\EU|pdff4_pipeline|dout~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pdff4_pipeline|dout~feeder_combout\ = \EU|pdff4_pipeline|dout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|pdff4_pipeline|dout~0_combout\,
	combout => \EU|pdff4_pipeline|dout~feeder_combout\);

-- Location: FF_X23_Y30_N11
\EU|pdff4_pipeline|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pdff4_pipeline|dout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pdff4_pipeline|dout~q\);

-- Location: LCCOMB_X23_Y30_N18
\EU|voter_inst|pipereg1|dout~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|pipereg1|dout~6_combout\ = (\CU|system_clear_n~q\ & \EU|pdff4_pipeline|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|pdff4_pipeline|dout~q\,
	combout => \EU|voter_inst|pipereg1|dout~6_combout\);

-- Location: FF_X23_Y30_N19
\EU|voter_inst|pipereg1|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|pipereg1|dout~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg1|dout\(1));

-- Location: LCCOMB_X18_Y30_N10
\EU|voter_inst|fa00|cout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|fa00|cout~0_combout\ = (\EU|voter_inst|pipereg1|dout\(0) & ((\EU|voter_inst|pipereg1|dout\(2)) # (\EU|voter_inst|pipereg1|dout\(1)))) # (!\EU|voter_inst|pipereg1|dout\(0) & (\EU|voter_inst|pipereg1|dout\(2) & 
-- \EU|voter_inst|pipereg1|dout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|voter_inst|pipereg1|dout\(0),
	datac => \EU|voter_inst|pipereg1|dout\(2),
	datad => \EU|voter_inst|pipereg1|dout\(1),
	combout => \EU|voter_inst|fa00|cout~0_combout\);

-- Location: FF_X18_Y30_N11
\EU|voter_inst|pipereg2|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|fa00|cout~0_combout\,
	sclr => \CU|ALT_INV_system_clear_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg2|dout\(0));

-- Location: FF_X19_Y30_N11
\EU|ndff2|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_x8~inputclkctrl_outclk\,
	d => \EU|ndff3_pipeline|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|ndff2|dout~q\);

-- Location: LCCOMB_X19_Y30_N20
\EU|ndff2_pipeline|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|ndff2_pipeline|dout~0_combout\ = (\CU|system_clear_n~q\ & \EU|ndff2|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|ndff2|dout~q\,
	combout => \EU|ndff2_pipeline|dout~0_combout\);

-- Location: FF_X19_Y30_N21
\EU|ndff1|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_x8~inputclkctrl_outclk\,
	d => \EU|ndff2_pipeline|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|ndff1|dout~q\);

-- Location: LCCOMB_X19_Y30_N28
\EU|ndff1_pipeline|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|ndff1_pipeline|dout~0_combout\ = (\CU|system_clear_n~q\ & \EU|ndff1|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datad => \EU|ndff1|dout~q\,
	combout => \EU|ndff1_pipeline|dout~0_combout\);

-- Location: FF_X19_Y30_N29
\EU|ndff1_pipeline|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_x8~inputclkctrl_outclk\,
	d => \EU|ndff1_pipeline|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|ndff1_pipeline|dout~q\);

-- Location: LCCOMB_X19_Y30_N22
\EU|voter_inst|pipereg1|dout~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|pipereg1|dout~1_combout\ = (\CU|system_clear_n~q\ & \EU|ndff1_pipeline|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|ndff1_pipeline|dout~q\,
	combout => \EU|voter_inst|pipereg1|dout~1_combout\);

-- Location: FF_X19_Y30_N23
\EU|voter_inst|pipereg1|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|pipereg1|dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg1|dout\(6));

-- Location: LCCOMB_X24_Y30_N10
\EU|pdff3|dout~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pdff3|dout~feeder_combout\ = \EU|pdff4_pipeline|dout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|pdff4_pipeline|dout~0_combout\,
	combout => \EU|pdff3|dout~feeder_combout\);

-- Location: FF_X24_Y30_N11
\EU|pdff3|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pdff3|dout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pdff3|dout~q\);

-- Location: LCCOMB_X24_Y30_N18
\EU|pdff3_pipeline|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pdff3_pipeline|dout~0_combout\ = (\CU|system_clear_n~q\ & \EU|pdff3|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datad => \EU|pdff3|dout~q\,
	combout => \EU|pdff3_pipeline|dout~0_combout\);

-- Location: LCCOMB_X24_Y30_N24
\EU|pdff2|dout~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pdff2|dout~feeder_combout\ = \EU|pdff3_pipeline|dout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|pdff3_pipeline|dout~0_combout\,
	combout => \EU|pdff2|dout~feeder_combout\);

-- Location: FF_X24_Y30_N25
\EU|pdff2|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pdff2|dout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pdff2|dout~q\);

-- Location: LCCOMB_X24_Y30_N8
\EU|pdff2_pipeline|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pdff2_pipeline|dout~0_combout\ = (\CU|system_clear_n~q\ & \EU|pdff2|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datad => \EU|pdff2|dout~q\,
	combout => \EU|pdff2_pipeline|dout~0_combout\);

-- Location: LCCOMB_X25_Y30_N26
\EU|pdff1|dout~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pdff1|dout~feeder_combout\ = \EU|pdff2_pipeline|dout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|pdff2_pipeline|dout~0_combout\,
	combout => \EU|pdff1|dout~feeder_combout\);

-- Location: FF_X25_Y30_N27
\EU|pdff1|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pdff1|dout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pdff1|dout~q\);

-- Location: LCCOMB_X23_Y30_N24
\EU|pdff1_pipeline|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pdff1_pipeline|dout~0_combout\ = (\CU|system_clear_n~q\ & \EU|pdff1|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|pdff1|dout~q\,
	combout => \EU|pdff1_pipeline|dout~0_combout\);

-- Location: FF_X23_Y30_N25
\EU|pdff1_pipeline|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pdff1_pipeline|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pdff1_pipeline|dout~q\);

-- Location: LCCOMB_X23_Y30_N4
\EU|voter_inst|pipereg1|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|pipereg1|dout~0_combout\ = (\CU|system_clear_n~q\ & \EU|pdff1_pipeline|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|pdff1_pipeline|dout~q\,
	combout => \EU|voter_inst|pipereg1|dout~0_combout\);

-- Location: FF_X23_Y30_N5
\EU|voter_inst|pipereg1|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|pipereg1|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg1|dout\(7));

-- Location: LCCOMB_X19_Y30_N8
\EU|voter_inst|ha02|c\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|ha02|c~combout\ = (\EU|voter_inst|pipereg1|dout\(6) & \EU|voter_inst|pipereg1|dout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|voter_inst|pipereg1|dout\(6),
	datad => \EU|voter_inst|pipereg1|dout\(7),
	combout => \EU|voter_inst|ha02|c~combout\);

-- Location: FF_X19_Y30_N9
\EU|voter_inst|pipereg2|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|ha02|c~combout\,
	sclr => \CU|ALT_INV_system_clear_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg2|dout\(4));

-- Location: LCCOMB_X19_Y30_N18
\EU|ndff2_pipeline|dout~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|ndff2_pipeline|dout~feeder_combout\ = \EU|ndff2_pipeline|dout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|ndff2_pipeline|dout~0_combout\,
	combout => \EU|ndff2_pipeline|dout~feeder_combout\);

-- Location: FF_X19_Y30_N19
\EU|ndff2_pipeline|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk_x8~inputclkctrl_outclk\,
	d => \EU|ndff2_pipeline|dout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|ndff2_pipeline|dout~q\);

-- Location: LCCOMB_X19_Y30_N14
\EU|voter_inst|pipereg1|dout~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|pipereg1|dout~3_combout\ = (\CU|system_clear_n~q\ & \EU|ndff2_pipeline|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|ndff2_pipeline|dout~q\,
	combout => \EU|voter_inst|pipereg1|dout~3_combout\);

-- Location: FF_X19_Y30_N15
\EU|voter_inst|pipereg1|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|pipereg1|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg1|dout\(4));

-- Location: LCCOMB_X24_Y30_N22
\EU|pdff2_pipeline|dout~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pdff2_pipeline|dout~feeder_combout\ = \EU|pdff2_pipeline|dout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|pdff2_pipeline|dout~0_combout\,
	combout => \EU|pdff2_pipeline|dout~feeder_combout\);

-- Location: FF_X24_Y30_N23
\EU|pdff2_pipeline|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pdff2_pipeline|dout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pdff2_pipeline|dout~q\);

-- Location: LCCOMB_X19_Y30_N0
\EU|voter_inst|pipereg1|dout~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|pipereg1|dout~2_combout\ = (\CU|system_clear_n~q\ & \EU|pdff2_pipeline|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datac => \EU|pdff2_pipeline|dout~q\,
	combout => \EU|voter_inst|pipereg1|dout~2_combout\);

-- Location: FF_X19_Y30_N1
\EU|voter_inst|pipereg1|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|pipereg1|dout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg1|dout\(5));

-- Location: FF_X20_Y30_N31
\EU|pdff3_pipeline|dout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	asdata => \EU|pdff3_pipeline|dout~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pdff3_pipeline|dout~q\);

-- Location: LCCOMB_X20_Y30_N12
\EU|voter_inst|pipereg1|dout~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|pipereg1|dout~4_combout\ = (\CU|system_clear_n~q\ & \EU|pdff3_pipeline|dout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datac => \EU|pdff3_pipeline|dout~q\,
	combout => \EU|voter_inst|pipereg1|dout~4_combout\);

-- Location: FF_X20_Y30_N13
\EU|voter_inst|pipereg1|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|pipereg1|dout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg1|dout\(3));

-- Location: LCCOMB_X18_Y30_N8
\EU|voter_inst|fa01|cout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|fa01|cout~0_combout\ = (\EU|voter_inst|pipereg1|dout\(4) & ((\EU|voter_inst|pipereg1|dout\(5)) # (\EU|voter_inst|pipereg1|dout\(3)))) # (!\EU|voter_inst|pipereg1|dout\(4) & (\EU|voter_inst|pipereg1|dout\(5) & 
-- \EU|voter_inst|pipereg1|dout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|voter_inst|pipereg1|dout\(4),
	datac => \EU|voter_inst|pipereg1|dout\(5),
	datad => \EU|voter_inst|pipereg1|dout\(3),
	combout => \EU|voter_inst|fa01|cout~0_combout\);

-- Location: FF_X18_Y30_N9
\EU|voter_inst|pipereg2|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|fa01|cout~0_combout\,
	sclr => \CU|ALT_INV_system_clear_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg2|dout\(2));

-- Location: LCCOMB_X18_Y30_N12
\EU|voter_inst|faw1|cout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|faw1|cout~0_combout\ = (\EU|voter_inst|pipereg2|dout\(0) & ((\EU|voter_inst|pipereg2|dout\(4)) # (\EU|voter_inst|pipereg2|dout\(2)))) # (!\EU|voter_inst|pipereg2|dout\(0) & (\EU|voter_inst|pipereg2|dout\(4) & 
-- \EU|voter_inst|pipereg2|dout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|voter_inst|pipereg2|dout\(0),
	datab => \EU|voter_inst|pipereg2|dout\(4),
	datac => \EU|voter_inst|pipereg2|dout\(2),
	combout => \EU|voter_inst|faw1|cout~0_combout\);

-- Location: FF_X18_Y30_N13
\EU|voter_inst|pipereg3|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|faw1|cout~0_combout\,
	sclr => \CU|ALT_INV_system_clear_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg3|dout\(3));

-- Location: LCCOMB_X19_Y30_N26
\EU|voter_inst|fa00|ha2_inst|s~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|fa00|ha2_inst|s~0_combout\ = \EU|voter_inst|pipereg1|dout\(2) $ (\EU|voter_inst|pipereg1|dout\(0) $ (\EU|voter_inst|pipereg1|dout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|voter_inst|pipereg1|dout\(2),
	datac => \EU|voter_inst|pipereg1|dout\(0),
	datad => \EU|voter_inst|pipereg1|dout\(1),
	combout => \EU|voter_inst|fa00|ha2_inst|s~0_combout\);

-- Location: FF_X19_Y30_N27
\EU|voter_inst|pipereg2|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|fa00|ha2_inst|s~0_combout\,
	sclr => \CU|ALT_INV_system_clear_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg2|dout\(1));

-- Location: LCCOMB_X18_Y30_N30
\EU|voter_inst|fa01|ha2_inst|s~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|fa01|ha2_inst|s~0_combout\ = \EU|voter_inst|pipereg1|dout\(4) $ (\EU|voter_inst|pipereg1|dout\(5) $ (\EU|voter_inst|pipereg1|dout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|voter_inst|pipereg1|dout\(4),
	datac => \EU|voter_inst|pipereg1|dout\(5),
	datad => \EU|voter_inst|pipereg1|dout\(3),
	combout => \EU|voter_inst|fa01|ha2_inst|s~0_combout\);

-- Location: FF_X18_Y30_N31
\EU|voter_inst|pipereg2|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|fa01|ha2_inst|s~0_combout\,
	sclr => \CU|ALT_INV_system_clear_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg2|dout\(3));

-- Location: LCCOMB_X19_Y30_N4
\EU|voter_inst|ha02|s\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|ha02|s~combout\ = \EU|voter_inst|pipereg1|dout\(6) $ (\EU|voter_inst|pipereg1|dout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|voter_inst|pipereg1|dout\(6),
	datad => \EU|voter_inst|pipereg1|dout\(7),
	combout => \EU|voter_inst|ha02|s~combout\);

-- Location: FF_X19_Y30_N5
\EU|voter_inst|pipereg2|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|ha02|s~combout\,
	sclr => \CU|ALT_INV_system_clear_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg2|dout\(5));

-- Location: LCCOMB_X18_Y30_N0
\EU|voter_inst|faw0|cout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|faw0|cout~0_combout\ = (\EU|voter_inst|pipereg2|dout\(1) & ((\EU|voter_inst|pipereg2|dout\(3)) # (\EU|voter_inst|pipereg2|dout\(5)))) # (!\EU|voter_inst|pipereg2|dout\(1) & (\EU|voter_inst|pipereg2|dout\(3) & 
-- \EU|voter_inst|pipereg2|dout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|voter_inst|pipereg2|dout\(1),
	datac => \EU|voter_inst|pipereg2|dout\(3),
	datad => \EU|voter_inst|pipereg2|dout\(5),
	combout => \EU|voter_inst|faw0|cout~0_combout\);

-- Location: FF_X18_Y30_N1
\EU|voter_inst|pipereg3|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|faw0|cout~0_combout\,
	sclr => \CU|ALT_INV_system_clear_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg3|dout\(1));

-- Location: LCCOMB_X18_Y30_N14
\EU|voter_inst|faw1|ha2_inst|s~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|faw1|ha2_inst|s~0_combout\ = \EU|voter_inst|pipereg2|dout\(0) $ (\EU|voter_inst|pipereg2|dout\(4) $ (\EU|voter_inst|pipereg2|dout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|voter_inst|pipereg2|dout\(0),
	datab => \EU|voter_inst|pipereg2|dout\(4),
	datac => \EU|voter_inst|pipereg2|dout\(2),
	combout => \EU|voter_inst|faw1|ha2_inst|s~0_combout\);

-- Location: FF_X18_Y30_N15
\EU|voter_inst|pipereg3|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|faw1|ha2_inst|s~0_combout\,
	sclr => \CU|ALT_INV_system_clear_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg3|dout\(2));

-- Location: LCCOMB_X18_Y30_N18
\EU|voter_inst|faw0|ha2_inst|s~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|faw0|ha2_inst|s~0_combout\ = \EU|voter_inst|pipereg2|dout\(1) $ (\EU|voter_inst|pipereg2|dout\(3) $ (\EU|voter_inst|pipereg2|dout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|voter_inst|pipereg2|dout\(1),
	datac => \EU|voter_inst|pipereg2|dout\(3),
	datad => \EU|voter_inst|pipereg2|dout\(5),
	combout => \EU|voter_inst|faw0|ha2_inst|s~0_combout\);

-- Location: FF_X18_Y30_N19
\EU|voter_inst|pipereg4|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|faw0|ha2_inst|s~0_combout\,
	sclr => \CU|ALT_INV_system_clear_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg4|dout\(0));

-- Location: LCCOMB_X18_Y30_N4
\EU|voter_inst|pipereg5_in[0]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|pipereg5_in[0]~1_combout\ = (!\EU|voter_inst|pipereg4|dout\(0) & ((\EU|voter_inst|pipereg3|dout\(3) & (!\EU|voter_inst|pipereg3|dout\(1) & !\EU|voter_inst|pipereg3|dout\(2))) # (!\EU|voter_inst|pipereg3|dout\(3) & 
-- (\EU|voter_inst|pipereg3|dout\(1) & \EU|voter_inst|pipereg3|dout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|voter_inst|pipereg3|dout\(3),
	datab => \EU|voter_inst|pipereg3|dout\(1),
	datac => \EU|voter_inst|pipereg3|dout\(2),
	datad => \EU|voter_inst|pipereg4|dout\(0),
	combout => \EU|voter_inst|pipereg5_in[0]~1_combout\);

-- Location: FF_X18_Y30_N5
\EU|voter_inst|pipereg5|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|pipereg5_in[0]~1_combout\,
	sclr => \CU|ALT_INV_system_clear_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg5|dout\(0));

-- Location: LCCOMB_X18_Y30_N20
\EU|voter_inst|pipereg5_in[1]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|voter_inst|pipereg5_in[1]~0_combout\ = (\EU|voter_inst|pipereg3|dout\(3) & ((\EU|voter_inst|pipereg3|dout\(1)) # ((\EU|voter_inst|pipereg3|dout\(2)) # (\EU|voter_inst|pipereg4|dout\(0))))) # (!\EU|voter_inst|pipereg3|dout\(3) & 
-- (\EU|voter_inst|pipereg3|dout\(1) & (\EU|voter_inst|pipereg3|dout\(2) & \EU|voter_inst|pipereg4|dout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|voter_inst|pipereg3|dout\(3),
	datab => \EU|voter_inst|pipereg3|dout\(1),
	datac => \EU|voter_inst|pipereg3|dout\(2),
	datad => \EU|voter_inst|pipereg4|dout\(0),
	combout => \EU|voter_inst|pipereg5_in[1]~0_combout\);

-- Location: FF_X18_Y30_N21
\EU|voter_inst|pipereg5|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|voter_inst|pipereg5_in[1]~0_combout\,
	sclr => \CU|ALT_INV_system_clear_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|voter_inst|pipereg5|dout\(1));

-- Location: LCCOMB_X18_Y30_N22
\EU|tracker|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|tracker|dummy_out~0_combout\ = (\EU|voter_inst|pipereg5|dout\(0) & (\EU|tracker|dummy_out~q\)) # (!\EU|voter_inst|pipereg5|dout\(0) & ((\EU|voter_inst|pipereg5|dout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|voter_inst|pipereg5|dout\(0),
	datac => \EU|tracker|dummy_out~q\,
	datad => \EU|voter_inst|pipereg5|dout\(1),
	combout => \EU|tracker|dummy_out~0_combout\);

-- Location: FF_X18_Y30_N23
\EU|tracker|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|tracker|dummy_out~0_combout\,
	sclr => \CU|ALT_INV_system_clear_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|tracker|dummy_out~q\);

-- Location: LCCOMB_X18_Y30_N2
\CU|present_state~14\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state~14_combout\ = (\CU|present_state.idle_intra~q\ & ((\EU|voter_inst|pipereg5|dout\(0)) # (\EU|tracker|dummy_out~q\ $ (!\EU|voter_inst|pipereg5|dout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.idle_intra~q\,
	datab => \EU|voter_inst|pipereg5|dout\(0),
	datac => \EU|tracker|dummy_out~q\,
	datad => \EU|voter_inst|pipereg5|dout\(1),
	combout => \CU|present_state~14_combout\);

-- Location: LCCOMB_X18_Y30_N6
\CU|present_state~15\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state~15_combout\ = (\clear_n~input_o\ & ((\CU|present_state.msb_tx~q\) # (\CU|present_state~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear_n~input_o\,
	datac => \CU|present_state.msb_tx~q\,
	datad => \CU|present_state~14_combout\,
	combout => \CU|present_state~15_combout\);

-- Location: FF_X18_Y30_N7
\CU|present_state.idle_intra\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \CU|present_state~15_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.idle_intra~q\);

-- Location: LCCOMB_X18_Y30_N28
\CU|present_state~10\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state~10_combout\ = (!\EU|voter_inst|pipereg5|dout\(0) & (\clear_n~input_o\ & (\EU|tracker|dummy_out~q\ $ (\EU|voter_inst|pipereg5|dout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|tracker|dummy_out~q\,
	datab => \EU|voter_inst|pipereg5|dout\(1),
	datac => \EU|voter_inst|pipereg5|dout\(0),
	datad => \clear_n~input_o\,
	combout => \CU|present_state~10_combout\);

-- Location: LCCOMB_X19_Y30_N2
\CU|present_state~11\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state~11_combout\ = (\CU|present_state.reset~q\ & (!\CU|present_state.idle_intra~q\ & (!\CU|present_state.msb_tx~q\ & \CU|present_state~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.reset~q\,
	datab => \CU|present_state.idle_intra~q\,
	datac => \CU|present_state.msb_tx~q\,
	datad => \CU|present_state~10_combout\,
	combout => \CU|present_state~11_combout\);

-- Location: FF_X19_Y30_N3
\CU|present_state.msb_tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \CU|present_state~11_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.msb_tx~q\);

-- Location: LCCOMB_X18_Y30_N16
\CU|present_state~12\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state~12_combout\ = \EU|tracker|dummy_out~q\ $ (\EU|voter_inst|pipereg5|dout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|tracker|dummy_out~q\,
	datad => \EU|voter_inst|pipereg5|dout\(1),
	combout => \CU|present_state~12_combout\);

-- Location: LCCOMB_X18_Y30_N24
\CU|present_state~13\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|present_state~13_combout\ = (\CU|present_state.idle_intra~q\ & (!\EU|voter_inst|pipereg5|dout\(0) & (\clear_n~input_o\ & \CU|present_state~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|present_state.idle_intra~q\,
	datab => \EU|voter_inst|pipereg5|dout\(0),
	datac => \clear_n~input_o\,
	datad => \CU|present_state~12_combout\,
	combout => \CU|present_state~13_combout\);

-- Location: FF_X18_Y30_N25
\CU|present_state.lsb_tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \CU|present_state~13_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|present_state.lsb_tx~q\);

-- Location: LCCOMB_X17_Y30_N4
\CU|int_rwdsgen_toggle\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \CU|int_rwdsgen_toggle~combout\ = (\CU|present_state.msb_tx~q\) # (\CU|present_state.lsb_tx~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|present_state.msb_tx~q\,
	datad => \CU|present_state.lsb_tx~q\,
	combout => \CU|int_rwdsgen_toggle~combout\);

-- Location: FF_X17_Y30_N5
\CU|rwdsgen_toggle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \CU|int_rwdsgen_toggle~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|rwdsgen_toggle~q\);

-- Location: LCCOMB_X18_Y29_N20
\EU|rwdsgen|dummy_out~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|rwdsgen|dummy_out~0_combout\ = \EU|rwdsgen|dummy_out~q\ $ (\CU|rwdsgen_toggle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|rwdsgen|dummy_out~q\,
	datad => \CU|rwdsgen_toggle~q\,
	combout => \EU|rwdsgen|dummy_out~0_combout\);

-- Location: FF_X18_Y29_N21
\EU|rwdsgen|dummy_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|rwdsgen|dummy_out~0_combout\,
	sclr => \CU|ALT_INV_system_clear_n~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|rwdsgen|dummy_out~q\);

-- Location: IOIBUF_X16_Y34_N15
\DDR_in[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DDR_in(0),
	o => \DDR_in[0]~input_o\);

-- Location: LCCOMB_X17_Y30_N24
\EU|regp1|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|regp1|dout~0_combout\ = (\CU|system_clear_n~q\ & \DDR_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \DDR_in[0]~input_o\,
	combout => \EU|regp1|dout~0_combout\);

-- Location: FF_X17_Y30_N25
\EU|regp1|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|regp1|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|regp1|dout\(0));

-- Location: LCCOMB_X17_Y30_N8
\EU|regp2|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|regp2|dout~0_combout\ = (\EU|regp1|dout\(0) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|regp1|dout\(0),
	datac => \CU|system_clear_n~q\,
	combout => \EU|regp2|dout~0_combout\);

-- Location: FF_X17_Y30_N9
\EU|regp2|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|regp2|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|regp2|dout\(0));

-- Location: LCCOMB_X17_Y30_N20
\EU|pipereg1|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg1|dout~0_combout\ = (\CU|system_clear_n~q\ & \EU|regp2|dout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datac => \EU|regp2|dout\(0),
	combout => \EU|pipereg1|dout~0_combout\);

-- Location: FF_X17_Y30_N21
\EU|pipereg1|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg1|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg1|dout\(0));

-- Location: LCCOMB_X17_Y30_N0
\EU|pipereg2|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg2|dout~0_combout\ = (\EU|pipereg1|dout\(0) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|pipereg1|dout\(0),
	datac => \CU|system_clear_n~q\,
	combout => \EU|pipereg2|dout~0_combout\);

-- Location: FF_X17_Y30_N1
\EU|pipereg2|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg2|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg2|dout\(0));

-- Location: LCCOMB_X17_Y30_N28
\EU|pipereg3|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg3|dout~0_combout\ = (\EU|pipereg2|dout\(0) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|pipereg2|dout\(0),
	datac => \CU|system_clear_n~q\,
	combout => \EU|pipereg3|dout~0_combout\);

-- Location: FF_X17_Y30_N29
\EU|pipereg3|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg3|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg3|dout\(0));

-- Location: LCCOMB_X17_Y30_N12
\EU|pipereg4|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg4|dout~0_combout\ = (\EU|pipereg3|dout\(0) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|pipereg3|dout\(0),
	datac => \CU|system_clear_n~q\,
	combout => \EU|pipereg4|dout~0_combout\);

-- Location: FF_X17_Y30_N13
\EU|pipereg4|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg4|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg4|dout\(0));

-- Location: LCCOMB_X17_Y30_N16
\EU|pipereg5|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg5|dout~0_combout\ = (\EU|pipereg4|dout\(0) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|pipereg4|dout\(0),
	datac => \CU|system_clear_n~q\,
	combout => \EU|pipereg5|dout~0_combout\);

-- Location: FF_X17_Y30_N17
\EU|pipereg5|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg5|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg5|dout\(0));

-- Location: LCCOMB_X17_Y30_N6
\EU|pipereg6|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg6|dout~0_combout\ = (\EU|pipereg5|dout\(0) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|pipereg5|dout\(0),
	datac => \CU|system_clear_n~q\,
	combout => \EU|pipereg6|dout~0_combout\);

-- Location: FF_X17_Y30_N7
\EU|pipereg6|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg6|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg6|dout\(0));

-- Location: LCCOMB_X25_Y30_N30
\EU|pipereg7|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg7|dout~0_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg6|dout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datad => \EU|pipereg6|dout\(0),
	combout => \EU|pipereg7|dout~0_combout\);

-- Location: FF_X25_Y30_N31
\EU|pipereg7|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg7|dout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg7|dout\(0));

-- Location: LCCOMB_X25_Y30_N8
\EU|lsb|dout~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|lsb|dout~0_combout\ = (\EU|pipereg7|dout\(0) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|pipereg7|dout\(0),
	datad => \CU|system_clear_n~q\,
	combout => \EU|lsb|dout~0_combout\);

-- Location: LCCOMB_X23_Y30_N28
\EU|lsb|dout[0]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|lsb|dout[0]~feeder_combout\ = \EU|lsb|dout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|lsb|dout~0_combout\,
	combout => \EU|lsb|dout[0]~feeder_combout\);

-- Location: FF_X23_Y30_N9
\CU|lsb_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	asdata => \CU|present_state.lsb_tx~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|lsb_enable~q\);

-- Location: LCCOMB_X23_Y30_N8
\EU|lsb|dout[7]~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|lsb|dout[7]~1_combout\ = (\CU|lsb_enable~q\) # (!\CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datac => \CU|lsb_enable~q\,
	combout => \EU|lsb|dout[7]~1_combout\);

-- Location: FF_X23_Y30_N29
\EU|lsb|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|lsb|dout[0]~feeder_combout\,
	ena => \EU|lsb|dout[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|lsb|dout\(0));

-- Location: IOIBUF_X20_Y34_N8
\DDR_in[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DDR_in(1),
	o => \DDR_in[1]~input_o\);

-- Location: LCCOMB_X24_Y30_N6
\EU|regp1|dout~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|regp1|dout~1_combout\ = (\CU|system_clear_n~q\ & \DDR_in[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \DDR_in[1]~input_o\,
	combout => \EU|regp1|dout~1_combout\);

-- Location: FF_X24_Y30_N7
\EU|regp1|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|regp1|dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|regp1|dout\(1));

-- Location: LCCOMB_X24_Y30_N14
\EU|regp2|dout~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|regp2|dout~1_combout\ = (\CU|system_clear_n~q\ & \EU|regp1|dout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datad => \EU|regp1|dout\(1),
	combout => \EU|regp2|dout~1_combout\);

-- Location: LCCOMB_X25_Y30_N12
\EU|regp2|dout[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|regp2|dout[1]~feeder_combout\ = \EU|regp2|dout~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|regp2|dout~1_combout\,
	combout => \EU|regp2|dout[1]~feeder_combout\);

-- Location: FF_X25_Y30_N13
\EU|regp2|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|regp2|dout[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|regp2|dout\(1));

-- Location: LCCOMB_X25_Y30_N10
\EU|pipereg1|dout~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg1|dout~1_combout\ = (\CU|system_clear_n~q\ & \EU|regp2|dout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datad => \EU|regp2|dout\(1),
	combout => \EU|pipereg1|dout~1_combout\);

-- Location: FF_X25_Y30_N11
\EU|pipereg1|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg1|dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg1|dout\(1));

-- Location: LCCOMB_X25_Y30_N16
\EU|pipereg2|dout~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg2|dout~1_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg1|dout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datad => \EU|pipereg1|dout\(1),
	combout => \EU|pipereg2|dout~1_combout\);

-- Location: FF_X25_Y30_N17
\EU|pipereg2|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg2|dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg2|dout\(1));

-- Location: LCCOMB_X25_Y30_N20
\EU|pipereg3|dout~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg3|dout~1_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg2|dout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datad => \EU|pipereg2|dout\(1),
	combout => \EU|pipereg3|dout~1_combout\);

-- Location: FF_X25_Y30_N21
\EU|pipereg3|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg3|dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg3|dout\(1));

-- Location: LCCOMB_X25_Y30_N28
\EU|pipereg4|dout~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg4|dout~1_combout\ = (\EU|pipereg3|dout\(1) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|pipereg3|dout\(1),
	datad => \CU|system_clear_n~q\,
	combout => \EU|pipereg4|dout~1_combout\);

-- Location: FF_X25_Y30_N29
\EU|pipereg4|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg4|dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg4|dout\(1));

-- Location: LCCOMB_X25_Y30_N6
\EU|pipereg5|dout~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg5|dout~1_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg4|dout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datad => \EU|pipereg4|dout\(1),
	combout => \EU|pipereg5|dout~1_combout\);

-- Location: FF_X25_Y30_N7
\EU|pipereg5|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg5|dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg5|dout\(1));

-- Location: LCCOMB_X24_Y30_N16
\EU|pipereg6|dout~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg6|dout~1_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg5|dout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|pipereg5|dout\(1),
	combout => \EU|pipereg6|dout~1_combout\);

-- Location: FF_X24_Y30_N17
\EU|pipereg6|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg6|dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg6|dout\(1));

-- Location: LCCOMB_X24_Y30_N30
\EU|pipereg7|dout~1\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg7|dout~1_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg6|dout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|pipereg6|dout\(1),
	combout => \EU|pipereg7|dout~1_combout\);

-- Location: FF_X24_Y30_N31
\EU|pipereg7|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg7|dout~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg7|dout\(1));

-- Location: LCCOMB_X24_Y30_N4
\EU|lsb|dout~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|lsb|dout~2_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg7|dout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datac => \EU|pipereg7|dout\(1),
	combout => \EU|lsb|dout~2_combout\);

-- Location: LCCOMB_X23_Y30_N2
\EU|lsb|dout[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|lsb|dout[1]~feeder_combout\ = \EU|lsb|dout~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|lsb|dout~2_combout\,
	combout => \EU|lsb|dout[1]~feeder_combout\);

-- Location: FF_X23_Y30_N3
\EU|lsb|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|lsb|dout[1]~feeder_combout\,
	ena => \EU|lsb|dout[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|lsb|dout\(1));

-- Location: IOIBUF_X1_Y34_N8
\DDR_in[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DDR_in(2),
	o => \DDR_in[2]~input_o\);

-- Location: LCCOMB_X17_Y30_N22
\EU|regp1|dout~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|regp1|dout~2_combout\ = (\CU|system_clear_n~q\ & \DDR_in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datac => \DDR_in[2]~input_o\,
	combout => \EU|regp1|dout~2_combout\);

-- Location: FF_X17_Y30_N23
\EU|regp1|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|regp1|dout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|regp1|dout\(2));

-- Location: LCCOMB_X17_Y30_N2
\EU|regp2|dout~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|regp2|dout~2_combout\ = (\CU|system_clear_n~q\ & \EU|regp1|dout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datac => \EU|regp1|dout\(2),
	combout => \EU|regp2|dout~2_combout\);

-- Location: FF_X17_Y30_N3
\EU|regp2|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|regp2|dout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|regp2|dout\(2));

-- Location: LCCOMB_X17_Y30_N30
\EU|pipereg1|dout~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg1|dout~2_combout\ = (\EU|regp2|dout\(2) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|regp2|dout\(2),
	datac => \CU|system_clear_n~q\,
	combout => \EU|pipereg1|dout~2_combout\);

-- Location: FF_X17_Y30_N31
\EU|pipereg1|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg1|dout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg1|dout\(2));

-- Location: LCCOMB_X17_Y30_N10
\EU|pipereg2|dout~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg2|dout~2_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg1|dout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datac => \EU|pipereg1|dout\(2),
	combout => \EU|pipereg2|dout~2_combout\);

-- Location: FF_X17_Y30_N11
\EU|pipereg2|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg2|dout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg2|dout\(2));

-- Location: LCCOMB_X17_Y30_N14
\EU|pipereg3|dout~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg3|dout~2_combout\ = (\EU|pipereg2|dout\(2) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|pipereg2|dout\(2),
	datac => \CU|system_clear_n~q\,
	combout => \EU|pipereg3|dout~2_combout\);

-- Location: FF_X17_Y30_N15
\EU|pipereg3|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg3|dout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg3|dout\(2));

-- Location: LCCOMB_X17_Y30_N18
\EU|pipereg4|dout~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg4|dout~2_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg3|dout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datac => \EU|pipereg3|dout\(2),
	combout => \EU|pipereg4|dout~2_combout\);

-- Location: FF_X17_Y30_N19
\EU|pipereg4|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg4|dout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg4|dout\(2));

-- Location: LCCOMB_X17_Y30_N26
\EU|pipereg5|dout~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg5|dout~2_combout\ = (\EU|pipereg4|dout\(2) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|pipereg4|dout\(2),
	datac => \CU|system_clear_n~q\,
	combout => \EU|pipereg5|dout~2_combout\);

-- Location: FF_X17_Y30_N27
\EU|pipereg5|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg5|dout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg5|dout\(2));

-- Location: LCCOMB_X19_Y30_N24
\EU|pipereg6|dout~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg6|dout~2_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg5|dout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datac => \EU|pipereg5|dout\(2),
	combout => \EU|pipereg6|dout~2_combout\);

-- Location: FF_X19_Y30_N25
\EU|pipereg6|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg6|dout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg6|dout\(2));

-- Location: LCCOMB_X23_Y30_N22
\EU|pipereg7|dout~2\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg7|dout~2_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg6|dout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datad => \EU|pipereg6|dout\(2),
	combout => \EU|pipereg7|dout~2_combout\);

-- Location: FF_X23_Y30_N23
\EU|pipereg7|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg7|dout~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg7|dout\(2));

-- Location: LCCOMB_X23_Y30_N16
\EU|lsb|dout~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|lsb|dout~3_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg7|dout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datac => \EU|pipereg7|dout\(2),
	combout => \EU|lsb|dout~3_combout\);

-- Location: FF_X23_Y30_N17
\EU|lsb|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|lsb|dout~3_combout\,
	ena => \EU|lsb|dout[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|lsb|dout\(2));

-- Location: IOIBUF_X34_Y34_N1
\DDR_in[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DDR_in(3),
	o => \DDR_in[3]~input_o\);

-- Location: LCCOMB_X26_Y30_N22
\EU|regp1|dout~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|regp1|dout~3_combout\ = (\CU|system_clear_n~q\ & \DDR_in[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \DDR_in[3]~input_o\,
	combout => \EU|regp1|dout~3_combout\);

-- Location: FF_X26_Y30_N23
\EU|regp1|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|regp1|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|regp1|dout\(3));

-- Location: LCCOMB_X26_Y30_N20
\EU|regp2|dout~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|regp2|dout~3_combout\ = (\EU|regp1|dout\(3) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|regp1|dout\(3),
	datac => \CU|system_clear_n~q\,
	combout => \EU|regp2|dout~3_combout\);

-- Location: FF_X26_Y30_N21
\EU|regp2|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|regp2|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|regp2|dout\(3));

-- Location: LCCOMB_X26_Y30_N16
\EU|pipereg1|dout~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg1|dout~3_combout\ = (\CU|system_clear_n~q\ & \EU|regp2|dout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|regp2|dout\(3),
	combout => \EU|pipereg1|dout~3_combout\);

-- Location: FF_X26_Y30_N17
\EU|pipereg1|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg1|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg1|dout\(3));

-- Location: LCCOMB_X26_Y30_N6
\EU|pipereg2|dout~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg2|dout~3_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg1|dout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|pipereg1|dout\(3),
	combout => \EU|pipereg2|dout~3_combout\);

-- Location: FF_X26_Y30_N7
\EU|pipereg2|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg2|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg2|dout\(3));

-- Location: LCCOMB_X26_Y30_N28
\EU|pipereg3|dout~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg3|dout~3_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg2|dout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|pipereg2|dout\(3),
	combout => \EU|pipereg3|dout~3_combout\);

-- Location: FF_X26_Y30_N29
\EU|pipereg3|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg3|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg3|dout\(3));

-- Location: LCCOMB_X26_Y30_N18
\EU|pipereg4|dout~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg4|dout~3_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg3|dout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|pipereg3|dout\(3),
	combout => \EU|pipereg4|dout~3_combout\);

-- Location: FF_X26_Y30_N19
\EU|pipereg4|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg4|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg4|dout\(3));

-- Location: LCCOMB_X26_Y30_N24
\EU|pipereg5|dout~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg5|dout~3_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg4|dout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|pipereg4|dout\(3),
	combout => \EU|pipereg5|dout~3_combout\);

-- Location: FF_X26_Y30_N25
\EU|pipereg5|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg5|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg5|dout\(3));

-- Location: LCCOMB_X25_Y30_N24
\EU|pipereg6|dout~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg6|dout~3_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg5|dout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datad => \EU|pipereg5|dout\(3),
	combout => \EU|pipereg6|dout~3_combout\);

-- Location: FF_X25_Y30_N25
\EU|pipereg6|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg6|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg6|dout\(3));

-- Location: LCCOMB_X24_Y30_N20
\EU|pipereg7|dout~3\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg7|dout~3_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg6|dout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|pipereg6|dout\(3),
	combout => \EU|pipereg7|dout~3_combout\);

-- Location: FF_X24_Y30_N21
\EU|pipereg7|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg7|dout~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg7|dout\(3));

-- Location: LCCOMB_X24_Y30_N2
\EU|lsb|dout~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|lsb|dout~4_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg7|dout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datad => \EU|pipereg7|dout\(3),
	combout => \EU|lsb|dout~4_combout\);

-- Location: LCCOMB_X23_Y30_N14
\EU|lsb|dout[3]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|lsb|dout[3]~feeder_combout\ = \EU|lsb|dout~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|lsb|dout~4_combout\,
	combout => \EU|lsb|dout[3]~feeder_combout\);

-- Location: FF_X23_Y30_N15
\EU|lsb|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|lsb|dout[3]~feeder_combout\,
	ena => \EU|lsb|dout[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|lsb|dout\(3));

-- Location: IOIBUF_X27_Y0_N22
\DDR_in[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DDR_in(4),
	o => \DDR_in[4]~input_o\);

-- Location: LCCOMB_X20_Y30_N2
\EU|regp1|dout~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|regp1|dout~4_combout\ = (\CU|system_clear_n~q\ & \DDR_in[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \DDR_in[4]~input_o\,
	combout => \EU|regp1|dout~4_combout\);

-- Location: FF_X20_Y30_N3
\EU|regp1|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|regp1|dout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|regp1|dout\(4));

-- Location: LCCOMB_X20_Y30_N16
\EU|regp2|dout~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|regp2|dout~4_combout\ = (\CU|system_clear_n~q\ & \EU|regp1|dout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|regp1|dout\(4),
	combout => \EU|regp2|dout~4_combout\);

-- Location: FF_X20_Y30_N17
\EU|regp2|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|regp2|dout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|regp2|dout\(4));

-- Location: LCCOMB_X20_Y30_N8
\EU|pipereg1|dout~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg1|dout~4_combout\ = (\EU|regp2|dout\(4) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|regp2|dout\(4),
	datac => \CU|system_clear_n~q\,
	combout => \EU|pipereg1|dout~4_combout\);

-- Location: FF_X20_Y30_N9
\EU|pipereg1|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg1|dout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg1|dout\(4));

-- Location: LCCOMB_X20_Y30_N14
\EU|pipereg2|dout~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg2|dout~4_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg1|dout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datac => \EU|pipereg1|dout\(4),
	combout => \EU|pipereg2|dout~4_combout\);

-- Location: FF_X20_Y30_N15
\EU|pipereg2|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg2|dout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg2|dout\(4));

-- Location: LCCOMB_X21_Y30_N8
\EU|pipereg3|dout~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg3|dout~4_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg2|dout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datad => \EU|pipereg2|dout\(4),
	combout => \EU|pipereg3|dout~4_combout\);

-- Location: FF_X21_Y30_N9
\EU|pipereg3|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg3|dout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg3|dout\(4));

-- Location: LCCOMB_X21_Y30_N28
\EU|pipereg4|dout~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg4|dout~4_combout\ = (\EU|pipereg3|dout\(4) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|pipereg3|dout\(4),
	datad => \CU|system_clear_n~q\,
	combout => \EU|pipereg4|dout~4_combout\);

-- Location: FF_X21_Y30_N29
\EU|pipereg4|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg4|dout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg4|dout\(4));

-- Location: LCCOMB_X20_Y30_N28
\EU|pipereg5|dout~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg5|dout~4_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg4|dout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|pipereg4|dout\(4),
	combout => \EU|pipereg5|dout~4_combout\);

-- Location: FF_X20_Y30_N29
\EU|pipereg5|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg5|dout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg5|dout\(4));

-- Location: LCCOMB_X20_Y30_N20
\EU|pipereg6|dout~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg6|dout~4_combout\ = (\EU|pipereg5|dout\(4) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|pipereg5|dout\(4),
	datac => \CU|system_clear_n~q\,
	combout => \EU|pipereg6|dout~4_combout\);

-- Location: FF_X20_Y30_N21
\EU|pipereg6|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg6|dout~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg6|dout\(4));

-- Location: LCCOMB_X20_Y30_N30
\EU|pipereg7|dout~4\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg7|dout~4_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg6|dout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datad => \EU|pipereg6|dout\(4),
	combout => \EU|pipereg7|dout~4_combout\);

-- Location: FF_X23_Y30_N1
\EU|pipereg7|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	asdata => \EU|pipereg7|dout~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg7|dout\(4));

-- Location: LCCOMB_X23_Y30_N0
\EU|lsb|dout~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|lsb|dout~5_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg7|dout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datac => \EU|pipereg7|dout\(4),
	combout => \EU|lsb|dout~5_combout\);

-- Location: LCCOMB_X23_Y30_N12
\EU|lsb|dout[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|lsb|dout[4]~feeder_combout\ = \EU|lsb|dout~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|lsb|dout~5_combout\,
	combout => \EU|lsb|dout[4]~feeder_combout\);

-- Location: FF_X23_Y30_N13
\EU|lsb|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|lsb|dout[4]~feeder_combout\,
	ena => \EU|lsb|dout[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|lsb|dout\(4));

-- Location: IOIBUF_X27_Y0_N15
\DDR_in[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DDR_in(5),
	o => \DDR_in[5]~input_o\);

-- Location: LCCOMB_X26_Y30_N12
\EU|regp1|dout~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|regp1|dout~5_combout\ = (\CU|system_clear_n~q\ & \DDR_in[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \DDR_in[5]~input_o\,
	combout => \EU|regp1|dout~5_combout\);

-- Location: FF_X26_Y30_N13
\EU|regp1|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|regp1|dout~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|regp1|dout\(5));

-- Location: LCCOMB_X26_Y30_N26
\EU|regp2|dout~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|regp2|dout~5_combout\ = (\CU|system_clear_n~q\ & \EU|regp1|dout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|regp1|dout\(5),
	combout => \EU|regp2|dout~5_combout\);

-- Location: FF_X26_Y30_N27
\EU|regp2|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|regp2|dout~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|regp2|dout\(5));

-- Location: LCCOMB_X26_Y30_N2
\EU|pipereg1|dout~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg1|dout~5_combout\ = (\EU|regp2|dout\(5) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|regp2|dout\(5),
	datac => \CU|system_clear_n~q\,
	combout => \EU|pipereg1|dout~5_combout\);

-- Location: FF_X26_Y30_N3
\EU|pipereg1|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg1|dout~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg1|dout\(5));

-- Location: LCCOMB_X25_Y30_N22
\EU|pipereg2|dout~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg2|dout~5_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg1|dout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datad => \EU|pipereg1|dout\(5),
	combout => \EU|pipereg2|dout~5_combout\);

-- Location: FF_X25_Y30_N23
\EU|pipereg2|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg2|dout~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg2|dout\(5));

-- Location: LCCOMB_X21_Y30_N14
\EU|pipereg3|dout~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg3|dout~5_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg2|dout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datad => \EU|pipereg2|dout\(5),
	combout => \EU|pipereg3|dout~5_combout\);

-- Location: FF_X21_Y30_N15
\EU|pipereg3|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg3|dout~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg3|dout\(5));

-- Location: LCCOMB_X21_Y30_N22
\EU|pipereg4|dout~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg4|dout~5_combout\ = (\EU|pipereg3|dout\(5) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|pipereg3|dout\(5),
	datad => \CU|system_clear_n~q\,
	combout => \EU|pipereg4|dout~5_combout\);

-- Location: FF_X21_Y30_N23
\EU|pipereg4|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg4|dout~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg4|dout\(5));

-- Location: LCCOMB_X21_Y30_N6
\EU|pipereg5|dout~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg5|dout~5_combout\ = (\EU|pipereg4|dout\(5) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|pipereg4|dout\(5),
	datad => \CU|system_clear_n~q\,
	combout => \EU|pipereg5|dout~5_combout\);

-- Location: FF_X21_Y30_N7
\EU|pipereg5|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg5|dout~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg5|dout\(5));

-- Location: LCCOMB_X21_Y30_N0
\EU|pipereg6|dout~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg6|dout~5_combout\ = (\EU|pipereg5|dout\(5) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EU|pipereg5|dout\(5),
	datad => \CU|system_clear_n~q\,
	combout => \EU|pipereg6|dout~5_combout\);

-- Location: FF_X21_Y30_N1
\EU|pipereg6|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg6|dout~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg6|dout\(5));

-- Location: LCCOMB_X21_Y30_N2
\EU|pipereg7|dout~5\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg7|dout~5_combout\ = (\EU|pipereg6|dout\(5) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|pipereg6|dout\(5),
	datad => \CU|system_clear_n~q\,
	combout => \EU|pipereg7|dout~5_combout\);

-- Location: FF_X21_Y30_N3
\EU|pipereg7|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg7|dout~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg7|dout\(5));

-- Location: LCCOMB_X21_Y30_N4
\EU|lsb|dout~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|lsb|dout~6_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg7|dout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datad => \EU|pipereg7|dout\(5),
	combout => \EU|lsb|dout~6_combout\);

-- Location: LCCOMB_X23_Y30_N26
\EU|lsb|dout[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|lsb|dout[5]~feeder_combout\ = \EU|lsb|dout~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|lsb|dout~6_combout\,
	combout => \EU|lsb|dout[5]~feeder_combout\);

-- Location: FF_X23_Y30_N27
\EU|lsb|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|lsb|dout[5]~feeder_combout\,
	ena => \EU|lsb|dout[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|lsb|dout\(5));

-- Location: IOIBUF_X45_Y34_N1
\DDR_in[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DDR_in(6),
	o => \DDR_in[6]~input_o\);

-- Location: LCCOMB_X21_Y30_N26
\EU|regp1|dout~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|regp1|dout~6_combout\ = (\CU|system_clear_n~q\ & \DDR_in[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datad => \DDR_in[6]~input_o\,
	combout => \EU|regp1|dout~6_combout\);

-- Location: FF_X21_Y30_N27
\EU|regp1|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|regp1|dout~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|regp1|dout\(6));

-- Location: LCCOMB_X21_Y30_N24
\EU|regp2|dout~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|regp2|dout~6_combout\ = (\EU|regp1|dout\(6) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|regp1|dout\(6),
	datad => \CU|system_clear_n~q\,
	combout => \EU|regp2|dout~6_combout\);

-- Location: FF_X21_Y30_N25
\EU|regp2|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|regp2|dout~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|regp2|dout\(6));

-- Location: LCCOMB_X20_Y30_N18
\EU|pipereg1|dout~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg1|dout~6_combout\ = (\CU|system_clear_n~q\ & \EU|regp2|dout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|regp2|dout\(6),
	combout => \EU|pipereg1|dout~6_combout\);

-- Location: FF_X20_Y30_N19
\EU|pipereg1|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg1|dout~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg1|dout\(6));

-- Location: LCCOMB_X20_Y30_N24
\EU|pipereg2|dout~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg2|dout~6_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg1|dout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datad => \EU|pipereg1|dout\(6),
	combout => \EU|pipereg2|dout~6_combout\);

-- Location: LCCOMB_X21_Y30_N16
\EU|pipereg2|dout[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg2|dout[6]~feeder_combout\ = \EU|pipereg2|dout~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|pipereg2|dout~6_combout\,
	combout => \EU|pipereg2|dout[6]~feeder_combout\);

-- Location: FF_X21_Y30_N17
\EU|pipereg2|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg2|dout[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg2|dout\(6));

-- Location: LCCOMB_X21_Y30_N30
\EU|pipereg3|dout~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg3|dout~6_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg2|dout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datad => \EU|pipereg2|dout\(6),
	combout => \EU|pipereg3|dout~6_combout\);

-- Location: FF_X20_Y30_N23
\EU|pipereg3|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	asdata => \EU|pipereg3|dout~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg3|dout\(6));

-- Location: LCCOMB_X20_Y30_N4
\EU|pipereg4|dout~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg4|dout~6_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg3|dout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|pipereg3|dout\(6),
	combout => \EU|pipereg4|dout~6_combout\);

-- Location: FF_X20_Y30_N5
\EU|pipereg4|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg4|dout~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg4|dout\(6));

-- Location: LCCOMB_X20_Y30_N10
\EU|pipereg5|dout~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg5|dout~6_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg4|dout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datac => \EU|pipereg4|dout\(6),
	combout => \EU|pipereg5|dout~6_combout\);

-- Location: FF_X20_Y30_N11
\EU|pipereg5|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg5|dout~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg5|dout\(6));

-- Location: LCCOMB_X21_Y30_N18
\EU|pipereg6|dout~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg6|dout~6_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg5|dout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datad => \EU|pipereg5|dout\(6),
	combout => \EU|pipereg6|dout~6_combout\);

-- Location: FF_X21_Y30_N19
\EU|pipereg6|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg6|dout~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg6|dout\(6));

-- Location: LCCOMB_X21_Y30_N10
\EU|pipereg7|dout~6\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg7|dout~6_combout\ = (\EU|pipereg6|dout\(6) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EU|pipereg6|dout\(6),
	datad => \CU|system_clear_n~q\,
	combout => \EU|pipereg7|dout~6_combout\);

-- Location: FF_X21_Y30_N11
\EU|pipereg7|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg7|dout~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg7|dout\(6));

-- Location: LCCOMB_X21_Y30_N12
\EU|lsb|dout~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|lsb|dout~7_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg7|dout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|pipereg7|dout\(6),
	combout => \EU|lsb|dout~7_combout\);

-- Location: LCCOMB_X23_Y30_N20
\EU|lsb|dout[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|lsb|dout[6]~feeder_combout\ = \EU|lsb|dout~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|lsb|dout~7_combout\,
	combout => \EU|lsb|dout[6]~feeder_combout\);

-- Location: FF_X23_Y30_N21
\EU|lsb|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|lsb|dout[6]~feeder_combout\,
	ena => \EU|lsb|dout[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|lsb|dout\(6));

-- Location: IOIBUF_X0_Y16_N15
\DDR_in[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DDR_in(7),
	o => \DDR_in[7]~input_o\);

-- Location: LCCOMB_X26_Y30_N10
\EU|regp1|dout~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|regp1|dout~7_combout\ = (\CU|system_clear_n~q\ & \DDR_in[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datac => \DDR_in[7]~input_o\,
	combout => \EU|regp1|dout~7_combout\);

-- Location: FF_X26_Y30_N11
\EU|regp1|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|regp1|dout~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|regp1|dout\(7));

-- Location: LCCOMB_X26_Y30_N4
\EU|regp2|dout~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|regp2|dout~7_combout\ = (\CU|system_clear_n~q\ & \EU|regp1|dout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|regp1|dout\(7),
	combout => \EU|regp2|dout~7_combout\);

-- Location: FF_X26_Y30_N5
\EU|regp2|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|regp2|dout~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|regp2|dout\(7));

-- Location: LCCOMB_X25_Y30_N0
\EU|pipereg1|dout~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg1|dout~7_combout\ = (\CU|system_clear_n~q\ & \EU|regp2|dout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datad => \EU|regp2|dout\(7),
	combout => \EU|pipereg1|dout~7_combout\);

-- Location: FF_X25_Y30_N1
\EU|pipereg1|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg1|dout~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg1|dout\(7));

-- Location: LCCOMB_X25_Y30_N4
\EU|pipereg2|dout~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg2|dout~7_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg1|dout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datad => \EU|pipereg1|dout\(7),
	combout => \EU|pipereg2|dout~7_combout\);

-- Location: FF_X25_Y30_N5
\EU|pipereg2|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg2|dout~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg2|dout\(7));

-- Location: LCCOMB_X25_Y30_N18
\EU|pipereg3|dout~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg3|dout~7_combout\ = (\EU|pipereg2|dout\(7) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|pipereg2|dout\(7),
	datad => \CU|system_clear_n~q\,
	combout => \EU|pipereg3|dout~7_combout\);

-- Location: FF_X25_Y30_N19
\EU|pipereg3|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg3|dout~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg3|dout\(7));

-- Location: LCCOMB_X25_Y30_N14
\EU|pipereg4|dout~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg4|dout~7_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg3|dout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|system_clear_n~q\,
	datad => \EU|pipereg3|dout\(7),
	combout => \EU|pipereg4|dout~7_combout\);

-- Location: FF_X25_Y30_N15
\EU|pipereg4|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg4|dout~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg4|dout\(7));

-- Location: LCCOMB_X20_Y30_N0
\EU|pipereg5|dout~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg5|dout~7_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg4|dout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datac => \EU|pipereg4|dout\(7),
	combout => \EU|pipereg5|dout~7_combout\);

-- Location: FF_X20_Y30_N1
\EU|pipereg5|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|pipereg5|dout~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg5|dout\(7));

-- Location: LCCOMB_X20_Y30_N6
\EU|pipereg6|dout~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg6|dout~7_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg5|dout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CU|system_clear_n~q\,
	datad => \EU|pipereg5|dout\(7),
	combout => \EU|pipereg6|dout~7_combout\);

-- Location: FF_X21_Y30_N21
\EU|pipereg6|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	asdata => \EU|pipereg6|dout~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg6|dout\(7));

-- Location: LCCOMB_X21_Y30_N20
\EU|pipereg7|dout~7\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|pipereg7|dout~7_combout\ = (\EU|pipereg6|dout\(7) & \CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|pipereg6|dout\(7),
	datad => \CU|system_clear_n~q\,
	combout => \EU|pipereg7|dout~7_combout\);

-- Location: FF_X23_Y30_N31
\EU|pipereg7|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	asdata => \EU|pipereg7|dout~7_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|pipereg7|dout\(7));

-- Location: LCCOMB_X23_Y30_N30
\EU|lsb|dout~8\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|lsb|dout~8_combout\ = (\CU|system_clear_n~q\ & \EU|pipereg7|dout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datac => \EU|pipereg7|dout\(7),
	combout => \EU|lsb|dout~8_combout\);

-- Location: LCCOMB_X23_Y30_N6
\EU|lsb|dout[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|lsb|dout[7]~feeder_combout\ = \EU|lsb|dout~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EU|lsb|dout~8_combout\,
	combout => \EU|lsb|dout[7]~feeder_combout\);

-- Location: FF_X23_Y30_N7
\EU|lsb|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|lsb|dout[7]~feeder_combout\,
	ena => \EU|lsb|dout[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|lsb|dout\(7));

-- Location: FF_X24_Y30_N27
\CU|msb_enable\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	asdata => \CU|present_state.msb_tx~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|msb_enable~q\);

-- Location: LCCOMB_X24_Y30_N26
\EU|msb|dout[7]~0\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|msb|dout[7]~0_combout\ = (\CU|msb_enable~q\) # (!\CU|system_clear_n~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|system_clear_n~q\,
	datac => \CU|msb_enable~q\,
	combout => \EU|msb|dout[7]~0_combout\);

-- Location: FF_X25_Y30_N9
\EU|msb|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|lsb|dout~0_combout\,
	ena => \EU|msb|dout[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|msb|dout\(0));

-- Location: FF_X24_Y30_N5
\EU|msb|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|lsb|dout~2_combout\,
	ena => \EU|msb|dout[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|msb|dout\(1));

-- Location: FF_X24_Y30_N3
\EU|msb|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	asdata => \EU|lsb|dout~3_combout\,
	sload => VCC,
	ena => \EU|msb|dout[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|msb|dout\(2));

-- Location: FF_X24_Y30_N9
\EU|msb|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	asdata => \EU|lsb|dout~4_combout\,
	sload => VCC,
	ena => \EU|msb|dout[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|msb|dout\(3));

-- Location: FF_X24_Y30_N15
\EU|msb|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	asdata => \EU|lsb|dout~5_combout\,
	sload => VCC,
	ena => \EU|msb|dout[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|msb|dout\(4));

-- Location: FF_X24_Y30_N29
\EU|msb|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	asdata => \EU|lsb|dout~6_combout\,
	sload => VCC,
	ena => \EU|msb|dout[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|msb|dout\(5));

-- Location: FF_X24_Y30_N19
\EU|msb|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	asdata => \EU|lsb|dout~7_combout\,
	sload => VCC,
	ena => \EU|msb|dout[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|msb|dout\(6));

-- Location: LCCOMB_X24_Y30_N12
\EU|msb|dout[7]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \EU|msb|dout[7]~feeder_combout\ = \EU|lsb|dout~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \EU|lsb|dout~8_combout\,
	combout => \EU|msb|dout[7]~feeder_combout\);

-- Location: FF_X24_Y30_N13
\EU|msb|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_x8~inputclkctrl_outclk\,
	d => \EU|msb|dout[7]~feeder_combout\,
	ena => \EU|msb|dout[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EU|msb|dout\(7));

ww_rwds_out <= \rwds_out~output_o\;

ww_SDR_out(0) <= \SDR_out[0]~output_o\;

ww_SDR_out(1) <= \SDR_out[1]~output_o\;

ww_SDR_out(2) <= \SDR_out[2]~output_o\;

ww_SDR_out(3) <= \SDR_out[3]~output_o\;

ww_SDR_out(4) <= \SDR_out[4]~output_o\;

ww_SDR_out(5) <= \SDR_out[5]~output_o\;

ww_SDR_out(6) <= \SDR_out[6]~output_o\;

ww_SDR_out(7) <= \SDR_out[7]~output_o\;

ww_SDR_out(8) <= \SDR_out[8]~output_o\;

ww_SDR_out(9) <= \SDR_out[9]~output_o\;

ww_SDR_out(10) <= \SDR_out[10]~output_o\;

ww_SDR_out(11) <= \SDR_out[11]~output_o\;

ww_SDR_out(12) <= \SDR_out[12]~output_o\;

ww_SDR_out(13) <= \SDR_out[13]~output_o\;

ww_SDR_out(14) <= \SDR_out[14]~output_o\;

ww_SDR_out(15) <= \SDR_out[15]~output_o\;
END structure;


