-- BRIEF DESCRIPTION: 8-bit DDR (msb-first) to 16-bit SDR converter

library   ieee;
use       ieee.std_logic_1164.all;
use       ieee.numeric_std.all;

entity DDR_to_SDR_converter is
port
(
	clk       : in 	std_logic;
	enable		: in 	std_logic;
	DDR_in		: in 	std_logic_vector(7 downto 0);
	SDR_out		: out std_logic_vector(15 downto 0)
);
end DDR_to_SDR_converter;

------------------------------------------------------------------------------------------------------------

architecture rtl of DDR_to_SDR_converter is

  -- positive-edge triggered register ----------------------------------------------------------------------
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
  end component; -------------------------------------------------------------------------------------------

  -- negative-edge triggered register ----------------------------------------------------------------------
  component reg_negedge is
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
  end component; -------------------------------------------------------------------------------------------

  -- SIGNALS -----------------------------------------------------------------------------------------------
  signal reg_posedge_out : std_logic_vector(7 downto 0);
  signal reg_negedge_out : std_logic_vector(7 downto 0);
  ----------------------------------------------------------------------------------------------------------

  begin

    -- negative-edge triggered register containing the lsb -------------------------------------------------
    lsb: reg_negedge 
    generic map
    (
      N => 8
    ) 
    port map
    (
      clk       => clk, 
      enable    => enable, 
      clear_n   => '1', 
      reset_n   => '1', 
      din       => DDR_in, 
      dout      => reg_negedge_out
    ); -----------------------------------------------------------------------------------------------------

    -- positive-edge triggered register containing the msb -------------------------------------------------
    msb: reg 
    generic map
    (
      N => 8
    ) 
    port map
    (
      clk       => clk, 
      enable    => enable, 
      clear_n   => '1', 
      reset_n   => '1', 
      din       => DDR_in, 
      dout      => reg_posedge_out
    ); -----------------------------------------------------------------------------------------------------
    
    SDR_out(7 downto 0) <= reg_negedge_out;
    SDR_out(15 downto 8) <= reg_posedge_out;

end rtl;

------------------------------------------------------------------------------------------------------------
