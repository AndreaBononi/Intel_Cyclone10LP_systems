--altclkctrl CBX_SINGLE_OUTPUT_FILE="ON" CLOCK_TYPE="Global Clock" DEVICE_FAMILY="Cyclone 10 LP" ENA_REGISTER_MODE="falling edge" USE_GLITCH_FREE_SWITCH_OVER_IMPLEMENTATION="OFF" ena inclk outclk
--VERSION_BEGIN 22.1 cbx_altclkbuf 2023:02:14:18:02:23:SC cbx_cycloneii 2023:02:14:18:02:23:SC cbx_lpm_add_sub 2023:02:14:18:02:23:SC cbx_lpm_compare 2023:02:14:18:02:23:SC cbx_lpm_decode 2023:02:14:18:02:23:SC cbx_lpm_mux 2023:02:14:18:02:23:SC cbx_mgl 2023:02:14:18:15:38:SC cbx_nadder 2023:02:14:18:02:23:SC cbx_stratix 2023:02:14:18:02:23:SC cbx_stratixii 2023:02:14:18:02:23:SC cbx_stratixiii 2023:02:14:18:02:23:SC cbx_stratixv 2023:02:14:18:02:23:SC  VERSION_END


-- Copyright (C) 2023  Intel Corporation. All rights reserved.
--  Your use of Intel Corporation's design tools, logic functions 
--  and other software and tools, and any partner logic 
--  functions, and any output files from any of the foregoing 
--  (including device programming or simulation files), and any 
--  associated documentation or information are expressly subject 
--  to the terms and conditions of the Intel Program License 
--  Subscription Agreement, the Intel Quartus Prime License Agreement,
--  the Intel FPGA IP License Agreement, or other applicable license
--  agreement, including, without limitation, that your use is for
--  the sole purpose of programming logic devices manufactured by
--  Intel and sold by Intel or its authorized distributors.  Please
--  refer to the applicable agreement for further details, at
--  https://fpgasoftware.intel.com/eula.



 LIBRARY cyclone10lp;
 USE cyclone10lp.all;

--synthesis_resources = clkctrl 1 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  avs_hram_converter_TEST_basic_avs_hram_converter_inst_clkctrl_altclkctrl_0_sub IS 
	 PORT 
	 ( 
		 ena	:	IN  STD_LOGIC := '1';
		 inclk	:	IN  STD_LOGIC_VECTOR (3 DOWNTO 0) := (OTHERS => '0');
		 outclk	:	OUT  STD_LOGIC
	 ); 
 END avs_hram_converter_TEST_basic_avs_hram_converter_inst_clkctrl_altclkctrl_0_sub;

 ARCHITECTURE RTL OF avs_hram_converter_TEST_basic_avs_hram_converter_inst_clkctrl_altclkctrl_0_sub IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL  wire_clkctrl1_outclk	:	STD_LOGIC;
	 SIGNAL  clkselect	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  clkselect_wire :	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  inclk_wire :	STD_LOGIC_VECTOR (3 DOWNTO 0);
	 COMPONENT  cyclone10lp_clkctrl
	 GENERIC 
	 (
		clock_type	:	STRING;
		ena_register_mode	:	STRING := "falling edge";
		lpm_type	:	STRING := "cyclone10lp_clkctrl"
	 );
	 PORT
	 ( 
		clkselect	:	IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		ena	:	IN STD_LOGIC;
		inclk	:	IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		outclk	:	OUT STD_LOGIC
	 ); 
	 END COMPONENT;
 BEGIN

	clkselect <= (OTHERS => '0');
	clkselect_wire <= ( clkselect);
	inclk_wire <= ( inclk);
	outclk <= wire_clkctrl1_outclk;
	clkctrl1 :  cyclone10lp_clkctrl
	  GENERIC MAP (
		clock_type => "Global Clock",
		ena_register_mode => "falling edge"
	  )
	  PORT MAP ( 
		clkselect => clkselect_wire,
		ena => ena,
		inclk => inclk_wire,
		outclk => wire_clkctrl1_outclk
	  );

 END RTL; --avs_hram_converter_TEST_basic_avs_hram_converter_inst_clkctrl_altclkctrl_0_sub
--VALID FILE -- (C) 2001-2023 Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions and other 
-- software and tools, and its AMPP partner logic functions, and any output 
-- files from any of the foregoing (including device programming or simulation 
-- files), and any associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License Subscription 
-- Agreement, Intel FPGA IP License Agreement, or other applicable 
-- license agreement, including, without limitation, that your use is for the 
-- sole purpose of programming logic devices manufactured by Intel and sold by 
-- Intel or its authorized distributors.  Please refer to the applicable 
-- agreement for further details.




LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY avs_hram_converter_TEST_basic_avs_hram_converter_inst_clkctrl_altclkctrl_0 IS
    PORT
    (
        ena       : IN STD_LOGIC  := '1';
        inclk       : IN STD_LOGIC;
        outclk       : OUT STD_LOGIC
    );
END avs_hram_converter_TEST_basic_avs_hram_converter_inst_clkctrl_altclkctrl_0;


ARCHITECTURE RTL OF avs_hram_converter_TEST_basic_avs_hram_converter_inst_clkctrl_altclkctrl_0 IS

    SIGNAL sub_wire0    : STD_LOGIC ;
    SIGNAL sub_wire1    : STD_LOGIC ;
    SIGNAL sub_wire2    : STD_LOGIC_VECTOR  (3 DOWNTO 0);
    SIGNAL sub_wire3_bv : BIT_VECTOR (2 DOWNTO 0);
    SIGNAL sub_wire3    : STD_LOGIC_VECTOR  (2 DOWNTO 0);


    COMPONENT  avs_hram_converter_TEST_basic_avs_hram_converter_inst_clkctrl_altclkctrl_0_sub
    PORT (
            ena : IN STD_LOGIC;
            inclk   : IN STD_LOGIC_VECTOR  (3 DOWNTO 0);
            outclk  : OUT STD_LOGIC
    );
    END COMPONENT;


BEGIN
    outclk     <= sub_wire0;
    sub_wire1     <= inclk;
    sub_wire2     <= sub_wire3 &  sub_wire1;
    sub_wire3_bv(2 DOWNTO 0)  <= "000";
    sub_wire3   <= To_stdlogicvector(sub_wire3_bv);

    avs_hram_converter_TEST_basic_avs_hram_converter_inst_clkctrl_altclkctrl_0_sub_component : avs_hram_converter_TEST_basic_avs_hram_converter_inst_clkctrl_altclkctrl_0_sub
    PORT MAP (
        ena => ena,
        inclk => sub_wire2,
        outclk => sub_wire0
    );



END RTL;