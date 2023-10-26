-- new_component.vhd

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity my_OCRAM is
	port (
		clk               : in  std_logic                     := '0';             -- clock.clk
		reset             : in  std_logic                     := '0';             -- reset.reset
		avs_address       : in  std_logic_vector(7 downto 0)  := (others => '0'); --   avs.address
		avs_read          : in  std_logic                     := '0';             --      .read
		avs_readdata      : out std_logic_vector(15 downto 0);                    --      .readdata
		avs_write         : in  std_logic                     := '0';             --      .write
		avs_writedata     : in  std_logic_vector(15 downto 0) := (others => '0'); --      .writedata
		avs_waitrequest   : out std_logic;                                        --      .waitrequest
		avs_readdatavalid : out std_logic                                         --      .readdatavalid
	);
end entity my_OCRAM;

architecture rtl of my_OCRAM is
begin

	-- TODO: Auto-generated HDL template

	avs_readdata <= "0000000000000000";

	avs_waitrequest <= '0';

	avs_readdatavalid <= '0';

end architecture rtl; -- of new_component
