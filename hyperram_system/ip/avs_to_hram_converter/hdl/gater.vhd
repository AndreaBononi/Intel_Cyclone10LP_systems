-- BRIEF DESCRIPTION: clock gater
-- COMMENTS:
-- an AND port is employed to gate the clock
-- the signal controlling the gating is preceded by a D-flipflop to filter out glitches 

library   ieee;
use       ieee.std_logic_1164.all;
use       ieee.numeric_std.all;

entity gater is
port
(
	clk           : in 	std_logic;   -- input clock
	enable_n      : in 	std_logic;   -- gating enable, active low
	gated_clock		: out std_logic    -- gated clock
);
end gater;

architecture rtl of gater is

  -- COMPONENT: flip flop type d ----------------------------------------------------------------------
  component d_flipflop is
  port
  (
    clk				: in 	std_logic;
    enable		: in 	std_logic;
    clear_n		: in 	std_logic;	-- synchronous clear, active low
    reset_n		: in	std_logic;	-- asynchronous reset, active low
    din				: in 	std_logic;
    dout			: out std_logic
  );
  end component; --------------------------------------------------------------------------------------

  signal filtered_enable_n: std_logic;

	begin

    -- anti-glitch flifplop ---------------------------------------------------------------------------
		antiglitch: d_flipflop 
    port map
    (
      clk       => clk, 
      enable    => '1', 
      clear_n   => '1',
      reset_n   => '1',
      din       => enable_n, 
      dout      => filtered_enable_n
    ); ------------------------------------------------------------------------------------------------
    
    gated_clock <= clk and filtered_enable_n;

end rtl;