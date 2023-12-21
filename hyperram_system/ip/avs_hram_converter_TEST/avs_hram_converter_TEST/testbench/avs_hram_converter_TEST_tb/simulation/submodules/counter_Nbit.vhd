-- BRIEF DESCRIPTION: synchronous counter N bit
-- it can count up to (2^N)-1
-- it is implemented as a chain of T flipflops

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
	clk				: in 	std_logic;
	enable		: in 	std_logic;
	clear_n		: in 	std_logic;
	reset_n		: in	std_logic;
	dout			: out std_logic_vector(N-1 downto 0)
);
end counter_Nbit;

architecture rtl of counter_Nbit is

	-- COMPONENT: flip flop type T ----------------------------------------------------------------------
	component t_flipflop is
		port
		(
			clk				: in 	std_logic;
			enable		: in 	std_logic;
			clear_n		: in 	std_logic;	-- synchronous clear, active low
			reset_n		: in	std_logic;	-- asynchronous reset, active low
			din				: in 	std_logic;
			dout			: out std_logic := '0'
		);
	end component; -------------------------------------------------------------------------------------

	-- SIGNALS -----------------------------------------------------------------------------------------
	signal tff_in 	: std_logic_vector(N-1 downto 0);
	signal tff_out	: std_logic_vector(N-1 downto 0);
	----------------------------------------------------------------------------------------------------

	begin

		tff_in(0) <= enable;

		-- first flip flop of the chain ------------------------------------------------------------------
		entry_tff: t_flipflop 
		port map 
		(
			clk 			=> clk, 
			enable 		=> '1', 
			clear_n 	=> clear_n,
			reset_n		=> reset_n,
			din				=> tff_in(0), 
			dout			=> tff_out(0)
		); -----------------------------------------------------------------------------------------------
		
		-- chain generation ------------------------------------------------------------------------------
		g1: for i in 1 to N-1 generate
			 tff_in(i) <= tff_in(i-1) and tff_out(i-1);
			 chain_tff: t_flipflop 
			 port map 
			 (
				clk 			=> clk, 
				enable 		=> '1', 
				clear_n 	=> clear_n,
				reset_n		=> reset_n, 
				din				=> tff_in(i), 
				dout			=> tff_out(i)
			 );
		end generate; -------------------------------------------------------------------------------------

		dout <= tff_out;

end rtl;
