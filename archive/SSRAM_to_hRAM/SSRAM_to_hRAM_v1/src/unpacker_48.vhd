-- unpacker_48.vhd --------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- SSRAM to hRAM converter: 16 bit parallel to ddr bytes converter

---------------------------------------------------------------------------------------------------------

entity unpacker_48 is
	port
	(
		clk           : in 	std_logic;
		load  		    : in 	std_logic;
		sel	  		    : in 	std_logic_vector(1 downto 0);
		packed_in 		: in 	std_logic_vector(47 downto 0);
		ddrbyte_out		: out std_logic_vector(7 downto 0)
	);
end unpacker_48;

---------------------------------------------------------------------------------------------------------

architecture rtl of unpacker_48 is

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

	-- multiplexer 4 to 1 --------------------------------------------------------------------------------
	component mux_4to1 is
		generic
		(
			N : integer := 1
		);
		port
		(
			mux_in_00		: in		std_logic_vector((N-1) downto 0);
			mux_in_01		: in		std_logic_vector((N-1) downto 0);
			mux_in_10		: in		std_logic_vector((N-1) downto 0);
			mux_in_11		: in		std_logic_vector((N-1) downto 0);
			sel					: in 		std_logic_vector(1 downto 0);
			out_mux			: out 	std_logic_vector((N-1) downto 0)
		);
	end component;

  -- internal signals ----------------------------------------------------------------------------------
  signal CA0A_out			: std_logic_vector(7 downto 0);
	signal CA0B_out			: std_logic_vector(7 downto 0);
	signal CA1A_out			: std_logic_vector(7 downto 0);
	signal CA1B_out			: std_logic_vector(7 downto 0);
	signal CA2A_out			: std_logic_vector(7 downto 0);
	signal CA2B_out			: std_logic_vector(7 downto 0);
	signal CA0_mux_out	: std_logic_vector(7 downto 0);
	signal CA1_mux_out	: std_logic_vector(7 downto 0);
	signal CA2_mux_out	: std_logic_vector(7 downto 0);

  begin

		CA0A: reg generic map(8) port map(clk, load, '1', packed_in(47 downto 40), CA0A_out);
		CA0B: reg generic map(8) port map(clk, load, '1', packed_in(39 downto 32), CA0B_out);
		CA1A: reg generic map(8) port map(clk, load, '1', packed_in(31 downto 24), CA1A_out);
		CA1B: reg generic map(8) port map(clk, load, '1', packed_in(23 downto 16), CA1B_out);
		CA2A: reg generic map(8) port map(clk, load, '1', packed_in(15 downto 8), CA2A_out);
		CA2B: reg generic map(8) port map(clk, load, '1', packed_in(7 downto 0), CA2B_out);

		CA0_mux: mux_2to1 generic map(8) port map(CA0B_out, CA0A_out, clk, CA0_mux_out);
		CA1_mux: mux_2to1 generic map(8) port map(CA1B_out, CA1A_out, clk, CA1_mux_out);
		CA2_mux: mux_2to1 generic map(8) port map(CA2B_out, CA2A_out, clk, CA2_mux_out);

		outmux: mux_4to1 generic map(8) port map(CA0_mux_out, CA1_mux_out, CA2_mux_out, "00000000", sel, ddrbyte_out);

end rtl;

---------------------------------------------------------------------------------------------------------
