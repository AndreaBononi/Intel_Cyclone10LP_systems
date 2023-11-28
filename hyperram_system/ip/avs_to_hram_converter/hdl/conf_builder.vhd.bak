-- BRIEF DESCRIPTION: it generates the content of the hram configuration registers

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;

entity conf_builder is
generic
(
  hybrid_burst_enable						: std_logic := '1';
	burst_lenght									: std_logic_vector(1 downto 0) := "11";
	initial_latency								: std_logic_vector(3 downto 0) := "0001";
	drive_strength								: std_logic_vector(2 downto 0) := "000";
	distributed_refresh_interval	: std_logic_vector(1 downto 0) := "10"
);
port
(
	conf_virtual  : in 	std_logic_vector(1 downto 0);
	conf0_real    : out std_logic_vector(15 downto 0);
  conf1_real    : out std_logic_vector(15 downto 0)
);
end conf_builder;

architecture rtl of conf_builder is

	begin

  -- configuration register 0 -------------------------------------------------
  conf0_real(15)						<= not(virtual_config_out(0));
	conf0_real(14 downto 12)	<= drive_strength;
	conf0_real(11 downto 8)		<= "1111";
	conf0_real(7 downto 4) 		<= initial_latency;
	conf0_real(3)							<= not(virtual_config_out(1));
	conf0_real(2) 						<= hybrid_burst_enable;
	conf0_real(1 downto 0) 		<= burst_lenght;
  -----------------------------------------------------------------------------

  -- configuration register 1 -------------------------------------------------
	conf1_real(1 downto 0)		<= distributed_refresh_interval;
	conf1_real(15 downto 2)		<= (others => '0');
  -----------------------------------------------------------------------------

end rtl;
