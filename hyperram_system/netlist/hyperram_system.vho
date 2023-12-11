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

-- DATE "12/08/2023 18:45:52"

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


LIBRARY ALTERA;
LIBRARY CYCLONE10LP;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONE10LP.CYCLONE10LP_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level_entity IS
    PORT (
	hBusD : BUFFER std_logic_vector(7 DOWNTO 0);
	hBusRwds : BUFFER std_logic;
	mainClk : IN std_logic;
	slowClk : IN std_logic;
	reset : IN std_logic;
	hBusCk : BUFFER std_logic;
	hBusnCk : BUFFER std_logic;
	hBusCs : BUFFER std_logic;
	hBusRst : BUFFER std_logic;
	mcuSpiCk : IN std_logic;
	mcuSpiCs : IN std_logic;
	mcuSpiIo : BUFFER std_logic_vector(3 DOWNTO 0);
	mcuUartTx : IN std_logic;
	mcuUartRx : BUFFER std_logic;
	mcuI2cScl : IN std_logic;
	mcuI2cSda : BUFFER std_logic;
	lsasBus : BUFFER std_logic_vector(31 DOWNTO 0);
	leds : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END top_level_entity;

-- Design Ports Information
-- mainClk	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- slowClk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- hBusCk	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hBusnCk	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hBusCs	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hBusRst	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- mcuSpiCk	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mcuSpiCs	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mcuUartTx	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mcuUartRx	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mcuI2cScl	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- leds[1]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- leds[2]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- leds[3]	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- mcuSpiIo[0]	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- mcuSpiIo[1]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- mcuSpiIo[2]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- mcuSpiIo[3]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- mcuI2cSda	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[8]	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[9]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[10]	=>  Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[11]	=>  Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[12]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[13]	=>  Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[14]	=>  Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[15]	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[16]	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[17]	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[18]	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[19]	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[20]	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[21]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[22]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[23]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[24]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[25]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[26]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[27]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[28]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[29]	=>  Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[30]	=>  Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[31]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hBusD[0]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hBusD[1]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hBusD[2]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hBusD[3]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hBusD[4]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hBusD[5]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hBusD[6]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hBusD[7]	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- hBusRwds	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[0]	=>  Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[1]	=>  Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[2]	=>  Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[3]	=>  Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[4]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[5]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[6]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- lsasBus[7]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA


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
SIGNAL ww_hBusD : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_hBusRwds : std_logic;
SIGNAL ww_mainClk : std_logic;
SIGNAL ww_slowClk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_hBusCk : std_logic;
SIGNAL ww_hBusnCk : std_logic;
SIGNAL ww_hBusCs : std_logic;
SIGNAL ww_hBusRst : std_logic;
SIGNAL ww_mcuSpiCk : std_logic;
SIGNAL ww_mcuSpiCs : std_logic;
SIGNAL ww_mcuSpiIo : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mcuUartTx : std_logic;
SIGNAL ww_mcuUartRx : std_logic;
SIGNAL ww_mcuI2cScl : std_logic;
SIGNAL ww_mcuI2cSda : std_logic;
SIGNAL ww_lsasBus : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(3 DOWNTO 0);
SIGNAL \mainClk~input_o\ : std_logic;
SIGNAL \slowClk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \mcuSpiCk~input_o\ : std_logic;
SIGNAL \mcuSpiCs~input_o\ : std_logic;
SIGNAL \mcuUartTx~input_o\ : std_logic;
SIGNAL \mcuI2cScl~input_o\ : std_logic;
SIGNAL \mcuSpiIo[0]~input_o\ : std_logic;
SIGNAL \mcuSpiIo[1]~input_o\ : std_logic;
SIGNAL \mcuSpiIo[2]~input_o\ : std_logic;
SIGNAL \mcuSpiIo[3]~input_o\ : std_logic;
SIGNAL \mcuI2cSda~input_o\ : std_logic;
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
SIGNAL \lsasBus[0]~input_o\ : std_logic;
SIGNAL \lsasBus[1]~input_o\ : std_logic;
SIGNAL \lsasBus[2]~input_o\ : std_logic;
SIGNAL \lsasBus[3]~input_o\ : std_logic;
SIGNAL \lsasBus[4]~input_o\ : std_logic;
SIGNAL \lsasBus[5]~input_o\ : std_logic;
SIGNAL \lsasBus[6]~input_o\ : std_logic;
SIGNAL \lsasBus[7]~input_o\ : std_logic;
SIGNAL \mcuSpiIo[0]~output_o\ : std_logic;
SIGNAL \mcuSpiIo[1]~output_o\ : std_logic;
SIGNAL \mcuSpiIo[2]~output_o\ : std_logic;
SIGNAL \mcuSpiIo[3]~output_o\ : std_logic;
SIGNAL \mcuI2cSda~output_o\ : std_logic;
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
SIGNAL \hBusD[0]~output_o\ : std_logic;
SIGNAL \hBusD[1]~output_o\ : std_logic;
SIGNAL \hBusD[2]~output_o\ : std_logic;
SIGNAL \hBusD[3]~output_o\ : std_logic;
SIGNAL \hBusD[4]~output_o\ : std_logic;
SIGNAL \hBusD[5]~output_o\ : std_logic;
SIGNAL \hBusD[6]~output_o\ : std_logic;
SIGNAL \hBusD[7]~output_o\ : std_logic;
SIGNAL \hBusRwds~output_o\ : std_logic;
SIGNAL \lsasBus[0]~output_o\ : std_logic;
SIGNAL \lsasBus[1]~output_o\ : std_logic;
SIGNAL \lsasBus[2]~output_o\ : std_logic;
SIGNAL \lsasBus[3]~output_o\ : std_logic;
SIGNAL \lsasBus[4]~output_o\ : std_logic;
SIGNAL \lsasBus[5]~output_o\ : std_logic;
SIGNAL \lsasBus[6]~output_o\ : std_logic;
SIGNAL \lsasBus[7]~output_o\ : std_logic;
SIGNAL \hBusCk~output_o\ : std_logic;
SIGNAL \hBusnCk~output_o\ : std_logic;
SIGNAL \hBusCs~output_o\ : std_logic;
SIGNAL \hBusRst~output_o\ : std_logic;
SIGNAL \mcuUartRx~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \hBusRwds~input_o\ : std_logic;
SIGNAL \hBusD[0]~input_o\ : std_logic;
SIGNAL \hBusD[1]~input_o\ : std_logic;
SIGNAL \dummy_reg|dout[1]~feeder_combout\ : std_logic;
SIGNAL \hBusD[2]~input_o\ : std_logic;
SIGNAL \dummy_reg|dout[2]~feeder_combout\ : std_logic;
SIGNAL \hBusD[3]~input_o\ : std_logic;
SIGNAL \hBusD[4]~input_o\ : std_logic;
SIGNAL \dummy_reg|dout[4]~feeder_combout\ : std_logic;
SIGNAL \hBusD[5]~input_o\ : std_logic;
SIGNAL \dummy_reg|dout[5]~feeder_combout\ : std_logic;
SIGNAL \hBusD[6]~input_o\ : std_logic;
SIGNAL \dummy_reg|dout[6]~feeder_combout\ : std_logic;
SIGNAL \hBusD[7]~input_o\ : std_logic;
SIGNAL \dummy_reg|dout\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

hBusD <= ww_hBusD;
hBusRwds <= ww_hBusRwds;
ww_mainClk <= mainClk;
ww_slowClk <= slowClk;
ww_reset <= reset;
hBusCk <= ww_hBusCk;
hBusnCk <= ww_hBusnCk;
hBusCs <= ww_hBusCs;
hBusRst <= ww_hBusRst;
ww_mcuSpiCk <= mcuSpiCk;
ww_mcuSpiCs <= mcuSpiCs;
mcuSpiIo <= ww_mcuSpiIo;
ww_mcuUartTx <= mcuUartTx;
mcuUartRx <= ww_mcuUartRx;
ww_mcuI2cScl <= mcuI2cScl;
mcuI2cSda <= ww_mcuI2cSda;
lsasBus <= ww_lsasBus;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N16
\mcuSpiIo[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \mcuSpiIo[0]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\mcuSpiIo[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \mcuSpiIo[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\mcuSpiIo[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \mcuSpiIo[2]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\mcuSpiIo[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \mcuSpiIo[3]~output_o\);

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

-- Location: IOOBUF_X34_Y0_N23
\hBusD[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hBusD[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\hBusD[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hBusD[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\hBusD[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hBusD[2]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\hBusD[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hBusD[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\hBusD[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hBusD[4]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\hBusD[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hBusD[5]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\hBusD[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hBusD[6]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\hBusD[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hBusD[7]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\hBusRwds~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \hBusRwds~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\lsasBus[0]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dummy_reg|dout\(0),
	oe => VCC,
	devoe => ww_devoe,
	o => \lsasBus[0]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\lsasBus[1]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dummy_reg|dout\(1),
	oe => VCC,
	devoe => ww_devoe,
	o => \lsasBus[1]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\lsasBus[2]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dummy_reg|dout\(2),
	oe => VCC,
	devoe => ww_devoe,
	o => \lsasBus[2]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\lsasBus[3]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dummy_reg|dout\(3),
	oe => VCC,
	devoe => ww_devoe,
	o => \lsasBus[3]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\lsasBus[4]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dummy_reg|dout\(4),
	oe => VCC,
	devoe => ww_devoe,
	o => \lsasBus[4]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\lsasBus[5]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dummy_reg|dout\(5),
	oe => VCC,
	devoe => ww_devoe,
	o => \lsasBus[5]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\lsasBus[6]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dummy_reg|dout\(6),
	oe => VCC,
	devoe => ww_devoe,
	o => \lsasBus[6]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\lsasBus[7]~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dummy_reg|dout\(7),
	oe => VCC,
	devoe => ww_devoe,
	o => \lsasBus[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\hBusCk~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hBusCk~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\hBusnCk~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hBusnCk~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\hBusCs~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hBusCs~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\hBusRst~output\ : cyclone10lp_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \hBusRst~output_o\);

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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOIBUF_X20_Y0_N1
\hBusRwds~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_hBusRwds,
	o => \hBusRwds~input_o\);

-- Location: IOIBUF_X34_Y0_N22
\hBusD[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hBusD(0),
	o => \hBusD[0]~input_o\);

-- Location: FF_X21_Y1_N1
\dummy_reg|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hBusRwds~input_o\,
	asdata => \hBusD[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dummy_reg|dout\(0));

-- Location: IOIBUF_X34_Y0_N1
\hBusD[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hBusD(1),
	o => \hBusD[1]~input_o\);

-- Location: LCCOMB_X21_Y1_N10
\dummy_reg|dout[1]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \dummy_reg|dout[1]~feeder_combout\ = \hBusD[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hBusD[1]~input_o\,
	combout => \dummy_reg|dout[1]~feeder_combout\);

-- Location: FF_X21_Y1_N11
\dummy_reg|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hBusRwds~input_o\,
	d => \dummy_reg|dout[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dummy_reg|dout\(1));

-- Location: IOIBUF_X18_Y0_N8
\hBusD[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hBusD(2),
	o => \hBusD[2]~input_o\);

-- Location: LCCOMB_X21_Y1_N28
\dummy_reg|dout[2]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \dummy_reg|dout[2]~feeder_combout\ = \hBusD[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hBusD[2]~input_o\,
	combout => \dummy_reg|dout[2]~feeder_combout\);

-- Location: FF_X21_Y1_N29
\dummy_reg|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hBusRwds~input_o\,
	d => \dummy_reg|dout[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dummy_reg|dout\(2));

-- Location: IOIBUF_X20_Y0_N8
\hBusD[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hBusD(3),
	o => \hBusD[3]~input_o\);

-- Location: FF_X21_Y1_N23
\dummy_reg|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hBusRwds~input_o\,
	asdata => \hBusD[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dummy_reg|dout\(3));

-- Location: IOIBUF_X11_Y0_N22
\hBusD[4]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hBusD(4),
	o => \hBusD[4]~input_o\);

-- Location: LCCOMB_X21_Y1_N24
\dummy_reg|dout[4]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \dummy_reg|dout[4]~feeder_combout\ = \hBusD[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hBusD[4]~input_o\,
	combout => \dummy_reg|dout[4]~feeder_combout\);

-- Location: FF_X21_Y1_N25
\dummy_reg|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hBusRwds~input_o\,
	d => \dummy_reg|dout[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dummy_reg|dout\(4));

-- Location: IOIBUF_X36_Y0_N22
\hBusD[5]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hBusD(5),
	o => \hBusD[5]~input_o\);

-- Location: LCCOMB_X21_Y1_N26
\dummy_reg|dout[5]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \dummy_reg|dout[5]~feeder_combout\ = \hBusD[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hBusD[5]~input_o\,
	combout => \dummy_reg|dout[5]~feeder_combout\);

-- Location: FF_X21_Y1_N27
\dummy_reg|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hBusRwds~input_o\,
	d => \dummy_reg|dout[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dummy_reg|dout\(5));

-- Location: IOIBUF_X38_Y0_N1
\hBusD[6]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hBusD(6),
	o => \hBusD[6]~input_o\);

-- Location: LCCOMB_X21_Y1_N12
\dummy_reg|dout[6]~feeder\ : cyclone10lp_lcell_comb
-- Equation(s):
-- \dummy_reg|dout[6]~feeder_combout\ = \hBusD[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \hBusD[6]~input_o\,
	combout => \dummy_reg|dout[6]~feeder_combout\);

-- Location: FF_X21_Y1_N13
\dummy_reg|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hBusRwds~input_o\,
	d => \dummy_reg|dout[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dummy_reg|dout\(6));

-- Location: IOIBUF_X43_Y0_N22
\hBusD[7]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => hBusD(7),
	o => \hBusD[7]~input_o\);

-- Location: FF_X21_Y1_N7
\dummy_reg|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \hBusRwds~input_o\,
	asdata => \hBusD[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dummy_reg|dout\(7));

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

-- Location: IOIBUF_X0_Y16_N22
\mcuSpiCk~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mcuSpiCk,
	o => \mcuSpiCk~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\mcuSpiCs~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mcuSpiCs,
	o => \mcuSpiCs~input_o\);

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

-- Location: IOIBUF_X0_Y6_N15
\mcuSpiIo[0]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mcuSpiIo(0),
	o => \mcuSpiIo[0]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\mcuSpiIo[1]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mcuSpiIo(1),
	o => \mcuSpiIo[1]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\mcuSpiIo[2]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mcuSpiIo(2),
	o => \mcuSpiIo[2]~input_o\);

-- Location: IOIBUF_X0_Y14_N1
\mcuSpiIo[3]~input\ : cyclone10lp_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mcuSpiIo(3),
	o => \mcuSpiIo[3]~input_o\);

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

ww_hBusCk <= \hBusCk~output_o\;

ww_hBusnCk <= \hBusnCk~output_o\;

ww_hBusCs <= \hBusCs~output_o\;

ww_hBusRst <= \hBusRst~output_o\;

ww_mcuUartRx <= \mcuUartRx~output_o\;

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

mcuSpiIo(0) <= \mcuSpiIo[0]~output_o\;

mcuSpiIo(1) <= \mcuSpiIo[1]~output_o\;

mcuSpiIo(2) <= \mcuSpiIo[2]~output_o\;

mcuSpiIo(3) <= \mcuSpiIo[3]~output_o\;

ww_mcuI2cSda <= \mcuI2cSda~output_o\;

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

hBusD(0) <= \hBusD[0]~output_o\;

hBusD(1) <= \hBusD[1]~output_o\;

hBusD(2) <= \hBusD[2]~output_o\;

hBusD(3) <= \hBusD[3]~output_o\;

hBusD(4) <= \hBusD[4]~output_o\;

hBusD(5) <= \hBusD[5]~output_o\;

hBusD(6) <= \hBusD[6]~output_o\;

hBusD(7) <= \hBusD[7]~output_o\;

ww_hBusRwds <= \hBusRwds~output_o\;

lsasBus(0) <= \lsasBus[0]~output_o\;

lsasBus(1) <= \lsasBus[1]~output_o\;

lsasBus(2) <= \lsasBus[2]~output_o\;

lsasBus(3) <= \lsasBus[3]~output_o\;

lsasBus(4) <= \lsasBus[4]~output_o\;

lsasBus(5) <= \lsasBus[5]~output_o\;

lsasBus(6) <= \lsasBus[6]~output_o\;

lsasBus(7) <= \lsasBus[7]~output_o\;
END structure;


