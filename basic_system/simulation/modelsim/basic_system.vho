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

-- DATE "10/19/2023 18:41:04"

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
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level_entity IS
    PORT (
	mainClk : IN std_logic;
	slowClk : IN std_logic;
	reset : IN std_logic;
	mcuUartTx : IN std_logic;
	mcuUartRx : BUFFER std_logic;
	mcuI2cScl : IN std_logic;
	mcuI2cSda : BUFFER std_logic;
	lsasBus : BUFFER std_logic_vector(31 DOWNTO 0);
	switches : IN std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END top_level_entity;

-- Design Ports Information
-- mainClk	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- slowClk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- mcuUartTx	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- mcuUartRx	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- mcuI2cScl	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- switches[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- switches[1]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- switches[2]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- switches[3]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- switches[4]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- switches[5]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- switches[6]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- switches[7]	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- mcuI2cSda	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[0]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[1]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[2]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[3]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[4]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[5]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[6]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[7]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[8]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[9]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[10]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[11]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[12]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[13]	=>  Location: PIN_106,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[14]	=>  Location: PIN_111,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[15]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[16]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[17]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[18]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[19]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[20]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[21]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[22]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[23]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[24]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[25]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[26]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[27]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[28]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[29]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[30]	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- lsasBus[31]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA


ARCHITECTURE structure OF top_level_entity IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_mainClk : std_logic;
SIGNAL ww_slowClk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_mcuUartTx : std_logic;
SIGNAL ww_mcuUartRx : std_logic;
SIGNAL ww_mcuI2cScl : std_logic;
SIGNAL ww_mcuI2cSda : std_logic;
SIGNAL ww_lsasBus : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_switches : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(3 DOWNTO 0);
SIGNAL \mainClk~input_o\ : std_logic;
SIGNAL \slowClk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \mcuUartTx~input_o\ : std_logic;
SIGNAL \mcuI2cScl~input_o\ : std_logic;
SIGNAL \switches[0]~input_o\ : std_logic;
SIGNAL \switches[1]~input_o\ : std_logic;
SIGNAL \switches[2]~input_o\ : std_logic;
SIGNAL \switches[3]~input_o\ : std_logic;
SIGNAL \switches[4]~input_o\ : std_logic;
SIGNAL \switches[5]~input_o\ : std_logic;
SIGNAL \switches[6]~input_o\ : std_logic;
SIGNAL \switches[7]~input_o\ : std_logic;
SIGNAL \mcuI2cSda~input_o\ : std_logic;
SIGNAL \lsasBus[0]~input_o\ : std_logic;
SIGNAL \lsasBus[1]~input_o\ : std_logic;
SIGNAL \lsasBus[2]~input_o\ : std_logic;
SIGNAL \lsasBus[3]~input_o\ : std_logic;
SIGNAL \lsasBus[4]~input_o\ : std_logic;
SIGNAL \lsasBus[5]~input_o\ : std_logic;
SIGNAL \lsasBus[6]~input_o\ : std_logic;
SIGNAL \lsasBus[7]~input_o\ : std_logic;
SIGNAL \lsasBus[8]~input_o\ : std_logic;
SIGNAL \lsasBus[9]~input_o\ : std_logic;
SIGNAL \lsasBus[10]~input_o\ : std_logic;
SIGNAL \lsasBus[11]~input_o\ : std_logic;
SIGNAL \lsasBus[12]~input_o\ : std_logic;
SIGNAL \lsasBus[13]~input_o\ : std_logic;
SIGNAL \lsasBus[14]~input_o\ : std_logic;
SIGNAL \lsasBus[15]~input_o\ : std_logic;
SIGNAL \lsasBus[16]~input_o\ : std_logic;
SIGNAL \lsasBus[17]~input_o\ : std_logic;
SIGNAL \lsasBus[18]~input_o\ : std_logic;
SIGNAL \lsasBus[19]~input_o\ : std_logic;
SIGNAL \lsasBus[20]~input_o\ : std_logic;
SIGNAL \lsasBus[21]~input_o\ : std_logic;
SIGNAL \lsasBus[22]~input_o\ : std_logic;
SIGNAL \lsasBus[23]~input_o\ : std_logic;
SIGNAL \lsasBus[24]~input_o\ : std_logic;
SIGNAL \lsasBus[25]~input_o\ : std_logic;
SIGNAL \lsasBus[26]~input_o\ : std_logic;
SIGNAL \lsasBus[27]~input_o\ : std_logic;
SIGNAL \lsasBus[28]~input_o\ : std_logic;
SIGNAL \lsasBus[29]~input_o\ : std_logic;
SIGNAL \lsasBus[30]~input_o\ : std_logic;
SIGNAL \lsasBus[31]~input_o\ : std_logic;
SIGNAL \mcuI2cSda~output_o\ : std_logic;
SIGNAL \lsasBus[0]~output_o\ : std_logic;
SIGNAL \lsasBus[1]~output_o\ : std_logic;
SIGNAL \lsasBus[2]~output_o\ : std_logic;
SIGNAL \lsasBus[3]~output_o\ : std_logic;
SIGNAL \lsasBus[4]~output_o\ : std_logic;
SIGNAL \lsasBus[5]~output_o\ : std_logic;
SIGNAL \lsasBus[6]~output_o\ : std_logic;
SIGNAL \lsasBus[7]~output_o\ : std_logic;
SIGNAL \lsasBus[8]~output_o\ : std_logic;
SIGNAL \lsasBus[9]~output_o\ : std_logic;
SIGNAL \lsasBus[10]~output_o\ : std_logic;
SIGNAL \lsasBus[11]~output_o\ : std_logic;
SIGNAL \lsasBus[12]~output_o\ : std_logic;
SIGNAL \lsasBus[13]~output_o\ : std_logic;
SIGNAL \lsasBus[14]~output_o\ : std_logic;
SIGNAL \lsasBus[15]~output_o\ : std_logic;
SIGNAL \lsasBus[16]~output_o\ : std_logic;
SIGNAL \lsasBus[17]~output_o\ : std_logic;
SIGNAL \lsasBus[18]~output_o\ : std_logic;
SIGNAL \lsasBus[19]~output_o\ : std_logic;
SIGNAL \lsasBus[20]~output_o\ : std_logic;
SIGNAL \lsasBus[21]~output_o\ : std_logic;
SIGNAL \lsasBus[22]~output_o\ : std_logic;
SIGNAL \lsasBus[23]~output_o\ : std_logic;
SIGNAL \lsasBus[24]~output_o\ : std_logic;
SIGNAL \lsasBus[25]~output_o\ : std_logic;
SIGNAL \lsasBus[26]~output_o\ : std_logic;
SIGNAL \lsasBus[27]~output_o\ : std_logic;
SIGNAL \lsasBus[28]~output_o\ : std_logic;
SIGNAL \lsasBus[29]~output_o\ : std_logic;
SIGNAL \lsasBus[30]~output_o\ : std_logic;
SIGNAL \lsasBus[31]~output_o\ : std_logic;
SIGNAL \mcuUartRx~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_mainClk <= mainClk;
ww_slowClk <= slowClk;
ww_reset <= reset;
ww_mcuUartTx <= mcuUartTx;
mcuUartRx <= ww_mcuUartRx;
ww_mcuI2cScl <= mcuI2cScl;
mcuI2cSda <= ww_mcuI2cSda;
lsasBus <= ww_lsasBus;
ww_switches <= switches;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y26_N16
\mcuI2cSda~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \mcuI2cSda~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\lsasBus[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[0]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\lsasBus[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[1]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\lsasBus[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[2]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\lsasBus[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[3]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\lsasBus[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[4]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\lsasBus[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[5]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\lsasBus[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[6]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\lsasBus[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[7]~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\lsasBus[8]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[8]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\lsasBus[9]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[9]~output_o\);

-- Location: IOOBUF_X53_Y21_N16
\lsasBus[10]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[10]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\lsasBus[11]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[11]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\lsasBus[12]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[12]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\lsasBus[13]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[13]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\lsasBus[14]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[14]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\lsasBus[15]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[15]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\lsasBus[16]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[16]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\lsasBus[17]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[17]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\lsasBus[18]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[18]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\lsasBus[19]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[19]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\lsasBus[20]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[20]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\lsasBus[21]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[21]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\lsasBus[22]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[22]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\lsasBus[23]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[23]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\lsasBus[24]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[24]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\lsasBus[25]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[25]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\lsasBus[26]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[26]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\lsasBus[27]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[27]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\lsasBus[28]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[28]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\lsasBus[29]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[29]~output_o\);

-- Location: IOOBUF_X1_Y34_N2
\lsasBus[30]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[30]~output_o\);

-- Location: IOOBUF_X1_Y34_N9
\lsasBus[31]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \lsasBus[31]~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\mcuUartRx~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \mcuUartRx~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\leds[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\leds[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\leds[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\leds[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOIBUF_X0_Y16_N1
\mainClk~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mainClk,
	o => \mainClk~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\slowClk~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_slowClk,
	o => \slowClk~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\reset~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\mcuUartTx~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mcuUartTx,
	o => \mcuUartTx~input_o\);

-- Location: IOIBUF_X0_Y27_N8
\mcuI2cScl~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mcuI2cScl,
	o => \mcuI2cScl~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\switches[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(0),
	o => \switches[0]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\switches[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(1),
	o => \switches[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\switches[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(2),
	o => \switches[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\switches[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(3),
	o => \switches[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\switches[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(4),
	o => \switches[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N22
\switches[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(5),
	o => \switches[5]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\switches[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(6),
	o => \switches[6]~input_o\);

-- Location: IOIBUF_X43_Y0_N22
\switches[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches(7),
	o => \switches[7]~input_o\);

-- Location: IOIBUF_X0_Y26_N15
\mcuI2cSda~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mcuI2cSda,
	o => \mcuI2cSda~input_o\);

-- Location: IOIBUF_X53_Y6_N22
\lsasBus[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(0),
	o => \lsasBus[0]~input_o\);

-- Location: IOIBUF_X53_Y6_N15
\lsasBus[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(1),
	o => \lsasBus[1]~input_o\);

-- Location: IOIBUF_X53_Y9_N8
\lsasBus[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(2),
	o => \lsasBus[2]~input_o\);

-- Location: IOIBUF_X53_Y11_N1
\lsasBus[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(3),
	o => \lsasBus[3]~input_o\);

-- Location: IOIBUF_X53_Y13_N8
\lsasBus[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(4),
	o => \lsasBus[4]~input_o\);

-- Location: IOIBUF_X53_Y14_N8
\lsasBus[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(5),
	o => \lsasBus[5]~input_o\);

-- Location: IOIBUF_X53_Y14_N1
\lsasBus[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(6),
	o => \lsasBus[6]~input_o\);

-- Location: IOIBUF_X53_Y20_N22
\lsasBus[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(7),
	o => \lsasBus[7]~input_o\);

-- Location: IOIBUF_X53_Y20_N15
\lsasBus[8]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(8),
	o => \lsasBus[8]~input_o\);

-- Location: IOIBUF_X53_Y21_N22
\lsasBus[9]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(9),
	o => \lsasBus[9]~input_o\);

-- Location: IOIBUF_X53_Y21_N15
\lsasBus[10]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(10),
	o => \lsasBus[10]~input_o\);

-- Location: IOIBUF_X53_Y22_N8
\lsasBus[11]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(11),
	o => \lsasBus[11]~input_o\);

-- Location: IOIBUF_X53_Y24_N22
\lsasBus[12]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(12),
	o => \lsasBus[12]~input_o\);

-- Location: IOIBUF_X53_Y30_N8
\lsasBus[13]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(13),
	o => \lsasBus[13]~input_o\);

-- Location: IOIBUF_X49_Y34_N8
\lsasBus[14]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(14),
	o => \lsasBus[14]~input_o\);

-- Location: IOIBUF_X47_Y34_N22
\lsasBus[15]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(15),
	o => \lsasBus[15]~input_o\);

-- Location: IOIBUF_X45_Y34_N1
\lsasBus[16]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(16),
	o => \lsasBus[16]~input_o\);

-- Location: IOIBUF_X45_Y34_N8
\lsasBus[17]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(17),
	o => \lsasBus[17]~input_o\);

-- Location: IOIBUF_X45_Y34_N15
\lsasBus[18]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(18),
	o => \lsasBus[18]~input_o\);

-- Location: IOIBUF_X38_Y34_N1
\lsasBus[19]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(19),
	o => \lsasBus[19]~input_o\);

-- Location: IOIBUF_X38_Y34_N15
\lsasBus[20]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(20),
	o => \lsasBus[20]~input_o\);

-- Location: IOIBUF_X34_Y34_N1
\lsasBus[21]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(21),
	o => \lsasBus[21]~input_o\);

-- Location: IOIBUF_X29_Y34_N15
\lsasBus[22]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(22),
	o => \lsasBus[22]~input_o\);

-- Location: IOIBUF_X20_Y34_N8
\lsasBus[23]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(23),
	o => \lsasBus[23]~input_o\);

-- Location: IOIBUF_X20_Y34_N15
\lsasBus[24]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(24),
	o => \lsasBus[24]~input_o\);

-- Location: IOIBUF_X18_Y34_N1
\lsasBus[25]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(25),
	o => \lsasBus[25]~input_o\);

-- Location: IOIBUF_X18_Y34_N22
\lsasBus[26]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(26),
	o => \lsasBus[26]~input_o\);

-- Location: IOIBUF_X16_Y34_N15
\lsasBus[27]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(27),
	o => \lsasBus[27]~input_o\);

-- Location: IOIBUF_X7_Y34_N15
\lsasBus[28]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(28),
	o => \lsasBus[28]~input_o\);

-- Location: IOIBUF_X3_Y34_N1
\lsasBus[29]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(29),
	o => \lsasBus[29]~input_o\);

-- Location: IOIBUF_X1_Y34_N1
\lsasBus[30]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(30),
	o => \lsasBus[30]~input_o\);

-- Location: IOIBUF_X1_Y34_N8
\lsasBus[31]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => lsasBus(31),
	o => \lsasBus[31]~input_o\);

ww_mcuUartRx <= \mcuUartRx~output_o\;

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_mcuI2cSda <= \mcuI2cSda~output_o\;

lsasBus(0) <= \lsasBus[0]~output_o\;

lsasBus(1) <= \lsasBus[1]~output_o\;

lsasBus(2) <= \lsasBus[2]~output_o\;

lsasBus(3) <= \lsasBus[3]~output_o\;

lsasBus(4) <= \lsasBus[4]~output_o\;

lsasBus(5) <= \lsasBus[5]~output_o\;

lsasBus(6) <= \lsasBus[6]~output_o\;

lsasBus(7) <= \lsasBus[7]~output_o\;

lsasBus(8) <= \lsasBus[8]~output_o\;

lsasBus(9) <= \lsasBus[9]~output_o\;

lsasBus(10) <= \lsasBus[10]~output_o\;

lsasBus(11) <= \lsasBus[11]~output_o\;

lsasBus(12) <= \lsasBus[12]~output_o\;

lsasBus(13) <= \lsasBus[13]~output_o\;

lsasBus(14) <= \lsasBus[14]~output_o\;

lsasBus(15) <= \lsasBus[15]~output_o\;

lsasBus(16) <= \lsasBus[16]~output_o\;

lsasBus(17) <= \lsasBus[17]~output_o\;

lsasBus(18) <= \lsasBus[18]~output_o\;

lsasBus(19) <= \lsasBus[19]~output_o\;

lsasBus(20) <= \lsasBus[20]~output_o\;

lsasBus(21) <= \lsasBus[21]~output_o\;

lsasBus(22) <= \lsasBus[22]~output_o\;

lsasBus(23) <= \lsasBus[23]~output_o\;

lsasBus(24) <= \lsasBus[24]~output_o\;

lsasBus(25) <= \lsasBus[25]~output_o\;

lsasBus(26) <= \lsasBus[26]~output_o\;

lsasBus(27) <= \lsasBus[27]~output_o\;

lsasBus(28) <= \lsasBus[28]~output_o\;

lsasBus(29) <= \lsasBus[29]~output_o\;

lsasBus(30) <= \lsasBus[30]~output_o\;

lsasBus(31) <= \lsasBus[31]~output_o\;
END structure;


