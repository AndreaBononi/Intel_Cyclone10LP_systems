-- BRIEF DESCRIPTION: 16-bit SDR to 8-bit DDR (msb-first) converter

library   ieee;
use       ieee.std_logic_1164.all;
use       ieee.numeric_std.all;

entity SDR_to_DDR_converter is
port
(
	clk       : in 	std_logic;
	load  		: in 	std_logic;
	SDR_in 		: in 	std_logic_vector(15 downto 0);
	DDR_out	  : out std_logic_vector(7 downto 0)
);
end SDR_to_DDR_converter;

architecture rtl of SDR_to_DDR_converter is

  -- COMPONENT: register --------------------------------------------------------------------------------
  component reg is
  generic
  (
  	N : integer := 8
  );
  port
  (
    clk				: in 	std_logic;
    enable		: in 	std_logic;
    clear_n		: in 	std_logic;	-- synchronous clear, active low
    reset_n		:	in	std_logic;	-- asynchronous clear, active low
    din				: in 	std_logic_vector(N-1 downto 0);
    dout			: out std_logic_vector(N-1 downto 0) := (others => '0')
  );
  end component; ---------------------------------------------------------------------------------------

  -- COMPONENT: multiplexer 2 to 1 ---------------------------------------------------------------------
  component mux_2to1 is
  generic
  (
    N : integer := 1
  );
  port
  (
    din_0		: in	std_logic_vector((N-1) downto 0);
    din_1		: in	std_logic_vector((N-1) downto 0);
    sel			: in 	std_logic;
    dout		: out std_logic_vector((N-1) downto 0)
  );
  end component; ----------------------------------------------------------------------------------------

  -- SIGNALS --------------------------------------------------------------------------------------------
  signal reg_out      : std_logic_vector(15 downto 0);
  signal outmux_in0   : std_logic_vector(7 downto 0);
  signal outmux_in1   : std_logic_vector(7 downto 0);
  -------------------------------------------------------------------------------------------------------

  begin

    -- input register -----------------------------------------------------------------------------------
    input_reg: reg 
    generic map
    (
      N => 16
    ) 
    port map
    (
      clk       => clk, 
      enable    => load, 
      clear_n   => '1', 
      reset_n   => '1', 
      din       => SDR_in,
      dout      => reg_out
    ); --------------------------------------------------------------------------------------------------

    outmux_in0 <= reg_out(7 downto 0);
    outmux_in1 <= reg_out(15 downto 8);
    
    -- clocked multiplexer ------------------------------------------------------------------------------
    outmux: mux_2to1 
    generic map
    (
      N => 8
    ) 
    port map
    (
      din_0   => outmux_in0, 
      din_1   => outmux_in1, 
      sel     => clk, 
      dout    => DDR_out
    ); --------------------------------------------------------------------------------------------------

end rtl;
