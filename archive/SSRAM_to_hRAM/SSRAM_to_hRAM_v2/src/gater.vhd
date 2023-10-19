-- gater.vhd -------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- clock gater

-------------------------------------------------------------------------------------------------------

entity gater is
	port
	(
		clk           : in 	std_logic;
		enable_n      : in 	std_logic;
		gated_clock		: out std_logic
	);
end gater;

-------------------------------------------------------------------------------------------------------

architecture rtl of gater is

  -- flip flop type d ---------------------------------------------------------------------------------
  component d_flipflop is
  	port
  	(
  		clk				: in 	std_logic;
  		enable		: in 	std_logic;
  		clear_n		: in 	std_logic;
  		dff_in		: in 	std_logic;
  		dff_out		: out std_logic
  	);
  end component;

  -- internal signals ---------------------------------------------------------------------------------
  signal gating_enable_n: std_logic;

	begin

		antiglitch: d_flipflop port map(clk, '1', '1', enable_n, gating_enable_n);
    gated_clock <= clk and gating_enable_n;

end rtl;

-------------------------------------------------------------------------------------------------------
