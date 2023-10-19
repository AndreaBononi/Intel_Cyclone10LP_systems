-- unpacker_16.vhd --------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- 16 bit parallel to ddr bytes converter

---------------------------------------------------------------------------------------------------------

entity unpacker_16 is
	port
	(
		clk           : in 	std_logic;
		load  		    : in 	std_logic;
		packed_in 		: in 	std_logic_vector(15 downto 0);
		unpacked_out	: out std_logic_vector(7 downto 0)
	);
end unpacker_16;

---------------------------------------------------------------------------------------------------------

architecture rtl of unpacker_16 is

  -- register -------------------------------------------------------------------------------------------
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

  -- multiplexer 2 to 1 --------------------------------------------------------------------------------
  component mux_2to1 is
  	generic
  	(
  		N : integer := 1
  	);
  	port
  	(
  		mux_in_0		: in		std_logic_vector((N-1) downto 0);
  		mux_in_1		: in		std_logic_vector((N-1) downto 0);
  		sel					: in 		std_logic;
  		out_mux			: out 	std_logic_vector((N-1) downto 0)
  	);
  end component;

  -- internal signals -----------------------------------------------------------------------------------
  signal outmux_in0, outmux_in1: std_logic_vector(7 downto 0);

  begin

    lsbout: reg generic map(8) port map(clk, load, '1', packed_in(7 downto 0), outmux_in0);
    msbout: reg generic map(8) port map(clk, load, '1', packed_in(15 downto 8), outmux_in1);
    outmux: mux_2to1 generic map(8) port map(outmux_in0, outmux_in1, clk, unpacked_out);

end rtl;

---------------------------------------------------------------------------------------------------------
