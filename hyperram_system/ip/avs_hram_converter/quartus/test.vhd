library   ieee;
use       ieee.std_logic_1164.all;
use       ieee.numeric_std.all;

entity test is
port
(
  -- clock and reset
  clk_x8            : in 	std_logic;
  rst_n 		        : in 	std_logic;
  -- IO signals
  enable		        : in 	std_logic;
  rwds_in           : in  std_logic;
  DDR_in		        : in 	std_logic_vector(7 downto 0);
  dout		          : out std_logic_vector(15 downto 0)
);
end test;

architecture rtl of test is

  component DDR_to_SDR_converter is
  port
  (
    -- clock and reset
    clk_x8            : in 	std_logic;
    rst_n 		        : in 	std_logic;
    -- IO signals
    enable		        : in 	std_logic;
    rwds_in           : in  std_logic;
    rwds_out          : out std_logic;
    DDR_in		        : in 	std_logic_vector(7 downto 0);
    SDR_out		        : out std_logic_vector(15 downto 0)
  );
  end component;

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
  end component;

  -- SIGNALS -----------------------------------------------------------------------------------------------
  signal rwds_out   : std_logic;
  signal SDR_out    : std_logic_vector(15 downto 0);
  ----------------------------------------------------------------------------------------------------------

  begin

    sampler: DDR_to_SDR_converter
    port map
    (
      clk_x8     => clk_x8,
      rst_n 		 => rst_n,
      enable		 => enable,
      rwds_in    => rwds_in,
      rwds_out   => rwds_out,
      DDR_in		 => DDR_in,
      SDR_out		 => SDR_out
    );

    outreg: reg
    generic map
    (
      N => 16
    )
    port map
    (
      clk				=> rwds_out,
      enable		=> enable,
      clear_n		=> '1',
      reset_n	  => '1',
      din				=> SDR_out,
      dout			=> dout
    );

end rtl;