-- BRIEF DESCRIPTION: synchronous counter N bit
-- it can count up to (2^N)-1
-- it is implemented as a chain of T flip flop

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;

entity counter_Nbit is
generic
(
	N	: integer := 4
);
port
(
	clk				: in 		std_logic;
	enable		: in 		std_logic;
	clear_n		: in 		std_logic;
	cnt_out		: out 	std_logic_vector(N-1 downto 0)
);
end counter_Nbit;

architecture rtl of counter_Nbit is

	-- COMPONENT: flip flop type T ----------------------------------------------------------------------
	component t_flip_flop is
		port
		(
			clk				: in 	std_logic;
			enable		: in 	std_logic;
			clear_n		: in 	std_logic;
			tff_in		: in 	std_logic;
			tff_out		: out std_logic
		);
	end component; -------------------------------------------------------------------------------------

	-- SIGNALS -----------------------------------------------------------------------------------------
	signal tgl_in 	: std_logic_vector(N-1 downto 0);
	signal tgl_out	: std_logic_vector(N-1 downto 0);
	----------------------------------------------------------------------------------------------------

	begin

		tgl_in(0) <= enable;

		-- first flip flop of the chain ------------------------------------------------------------------
		entry_tff: t_flip_flop 
		port map 
		(
			clk 			=> clk, 
			enable 		=> '1', 
			clear_n 	=> clear_n, 
			tff_in		=> tgl_in(0), 
			tff_out		=> tgl_out(0)
		); -----------------------------------------------------------------------------------------------
		
		-- chain generation ------------------------------------------------------------------------------
		g1: for i in 1 to N-1 generate
			 tgl_in(i) <= tgl_in(i-1) and tgl_out(i-1);
			 chain_tff: t_flip_flop 
			 port map 
			 (
				clk 			=> clk, 
				enable 		=> '1', 
				clear_n 	=> clear_n, 
				tff_in		=> tgl_in(i), 
				tff_out		=> tgl_out(i)
			 );
		end generate; -------------------------------------------------------------------------------------

		cnt_out <= tgl_out;

end rtl;
