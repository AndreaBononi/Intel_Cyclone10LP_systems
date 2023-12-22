-- BRIEF DESCRIPTION: it separates CA in CA1, CA2 and CA3

library   ieee;
use       ieee.std_logic_1164.all;
use       ieee.numeric_std.all;

entity CA_unpacker is
port
(
	clk           : in 	std_logic;
	load  		    : in 	std_logic;
	sel	  		    : in 	std_logic_vector(1 downto 0);
	CA_packed 		: in 	std_logic_vector(47 downto 0);
	CA_unpacked	  : out std_logic_vector(15 downto 0)
);
end CA_unpacker;

architecture rtl of CA_unpacker is

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

	-- COMPONENT: multiplexer 4 to 1 ---------------------------------------------------------------------
	component mux_4to1 is
  generic
  (
    N : integer := 1
  );
  port
  (
    din_00		: in		std_logic_vector((N-1) downto 0);
    din_01		: in		std_logic_vector((N-1) downto 0);
    din_10		: in		std_logic_vector((N-1) downto 0);
    din_11		: in		std_logic_vector((N-1) downto 0);
    sel				: in 		std_logic_vector(1 downto 0);
    dout			: out 	std_logic_vector((N-1) downto 0)
  );
	end component; ---------------------------------------------------------------------------------------

  -- SIGNALS -------------------------------------------------------------------------------------------
  signal CA0_out			: std_logic_vector(15 downto 0);
	signal CA1_out			: std_logic_vector(15 downto 0);
	signal CA2_out			: std_logic_vector(15 downto 0);
  ------------------------------------------------------------------------------------------------------

  begin

    -- CA0 register ------------------------------------------------------------------------------------
		CA0	: reg 
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
      din       => CA_packed(47 downto 32), 
      dout      => CA0_out
    ); ------------------------------------------------------------------------------------------------

    -- CA1 register ------------------------------------------------------------------------------------
		CA1	: reg 
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
      din       => CA_packed(31 downto 16), 
      dout      => CA1_out
    ); ------------------------------------------------------------------------------------------------
		
    -- CA1 register ------------------------------------------------------------------------------------
		CA2	: reg 
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
      din       => CA_packed(15 downto 0), 
      dout      => CA2_out
    ); ------------------------------------------------------------------------------------------------

    -- output multiplexer -----------------------------------------------------------------------------		
    CA_mux : mux_4to1 
    generic map
    (
      N => 16
    ) 
    port map
    (
      din_00  => CA0_out, 
      din_01  => CA1_out, 
      din_10  => CA2_out, 
      din_11  => (others => '0'), 
      sel     => sel, 
      dout    => CA_unpacked
    ); ------------------------------------------------------------------------------------------------

end rtl;
