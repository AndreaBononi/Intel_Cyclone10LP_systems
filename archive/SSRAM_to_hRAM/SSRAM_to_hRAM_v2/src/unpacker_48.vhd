-- unpacker_48.vhd --------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

---------------------------------------------------------------------------------------------------------

entity unpacker_48 is
	port
	(
		clk           : in 	std_logic;
		load  		    : in 	std_logic;
		sel	  		    : in 	std_logic_vector(1 downto 0);
		packed_in 		: in 	std_logic_vector(47 downto 0);
		unpacked_out	: out std_logic_vector(15 downto 0)
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
  signal CA0_out			: std_logic_vector(15 downto 0);
	signal CA1_out			: std_logic_vector(15 downto 0);
	signal CA2_out			: std_logic_vector(15 downto 0);

  begin

		CA0				: reg generic map(16) port map(clk, load, '1', packed_in(47 downto 32), CA0_out);
		CA1				: reg generic map(16) port map(clk, load, '1', packed_in(31 downto 16), CA1_out);
		CA2				: reg generic map(16) port map(clk, load, '1', packed_in(15 downto 0), CA2_out);
		CA_mux		: mux_4to1 generic map(16) port map(CA0_out, CA1_out, CA2_out, "0000000000000000", sel, unpacked_out);

end rtl;

---------------------------------------------------------------------------------------------------------
