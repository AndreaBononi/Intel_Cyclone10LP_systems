-- BRIEF DESCRIPTION: it generates CA starting from all the required parameters

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;

entity CA_builder is
port
(
	read_writeN   : in 	std_logic;
	config_access : in 	std_logic;
  address       : in  std_logic_vector(31 downto 0);
  CA            : out std_logic_vector(47 downto 0)
);
end CA_builder;

architecture rtl of CA_builder is

  signal up_address   : std_logic_vector(18 downto 0);
  signal low_address  : std_logic_vector(2 downto 0);

  signal CA0A : std_logic_vector(7 downto 0);
  signal CA0B : std_logic_vector(7 downto 0);
  signal CA1A : std_logic_vector(7 downto 0);
  signal CA1B : std_logic_vector(7 downto 0);
  signal CA2A : std_logic_vector(7 downto 0);
  signal CA2B : std_logic_vector(7 downto 0);

	begin

    up_address <= address(21 downto 3);
    low_address <= address(2 downto 0);

    CA0A(7)           <= read_writeN;
    CA0A(6)           <= config_access;
    CA0A(5 downto 0)  <= "000000";
    CA0B(7 downto 3)  <= "00000";
    CA0B(2 downto 0)  <= up_address(18 downto 16);
    CA1A              <= up_address(15 downto 8);
    CA1B              <= up_address(7 downto 0);
    CA2A              <= "00000000";
    CA2B(7 downto 3)  <= "00000";
    CA2B(2 downto 0)  <= low_address;

		CA(47 downto 40)  <= CA0A;
		CA(39 downto 32)  <= CA0B;
		CA(31 downto 24)  <= CA1A;
		CA(23 downto 16)  <= CA1B;
		CA(15 downto 8)   <= CA2A;
		CA(7 downto 0)    <= CA2B;

end rtl;
