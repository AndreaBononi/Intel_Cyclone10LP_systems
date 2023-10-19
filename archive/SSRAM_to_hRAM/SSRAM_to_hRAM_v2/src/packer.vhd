-- packer.vhd ----------------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- SSRAM to hRAM converter: ddr bytes to 16 bit parallel converter

------------------------------------------------------------------------------------------------------------

entity packer is
	port
	(
		clk           : in 	std_logic;
		enable		    : in 	std_logic;
		ddrbyte_in		: in 	std_logic_vector(7 downto 0);
		packed_out		: out std_logic_vector(15 downto 0)
	);
end packer;

------------------------------------------------------------------------------------------------------------

architecture rtl of packer is

  -- positive edge triggered register ----------------------------------------------------------------------
  component reg is
  	generic
  	(
  		N : integer := 8
  	);
  	port
  	(
  		clk				: in 	std_logic;
  		enable		: in 	std_logic;
  		clear_n		: in 	std_logic;
  		reg_in		: in 	std_logic_vector(N-1 downto 0);
  		reg_out		: out std_logic_vector(N-1 downto 0)
  	);
  end component;

  -- negative edge triggered register ----------------------------------------------------------------------
  component reg_negedge is
  	generic
  	(
  		N : integer := 8
  	);
  	port
  	(
  		clk				: in 	std_logic;
  		enable		: in 	std_logic;
  		clear_n		: in 	std_logic;
  		reg_in		: in 	std_logic_vector(N-1 downto 0);
  		reg_out		: out std_logic_vector(N-1 downto 0)
  	);
  end component;

  -- internal signals --------------------------------------------------------------------------------------
  signal reg_posedge_out, reg_negedge_out: std_logic_vector(7 downto 0);

  begin

    lsbin: reg_negedge generic map(8) port map(clk, enable, '1', ddrbyte_in, reg_negedge_out);
    msbin: reg generic map(8) port map(clk, enable, '1', ddrbyte_in, reg_posedge_out);

    packed_out(7 downto 0) <= reg_negedge_out;
    packed_out(15 downto 8) <= reg_posedge_out;

end rtl;

------------------------------------------------------------------------------------------------------------
