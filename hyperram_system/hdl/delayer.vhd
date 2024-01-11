-- BRIEF DESCRIPTION: input delayer
-- it delays the input by N clock cycles

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;

entity delayer is
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
  din       : in  std_logic;
	dout			: out std_logic
);
end delayer;

architecture rtl of delayer is

  signal delay_chain: std_logic_vector(N-1 downto 0);

	-- COMPONENT: flip flop type D ----------------------------------------------------------------------
	component d_flipflop is
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

	begin

		-- first flip flop of the chain ------------------------------------------------------------------
		entry_dff: d_flipflop 
		port map 
		(
			clk 			=> clk, 
			enable 		=> enable, 
			clear_n 	=> clear_n,
			reset_n		=> reset_n,
			din				=> din, 
			dout			=> delay_chain(0)
		); -----------------------------------------------------------------------------------------------
		
		-- chain generation ------------------------------------------------------------------------------
		chain_generation: for i in 1 to N-1 generate
			chain_dff: d_flipflop 
			port map 
			(
			  clk 			=> clk, 
			  enable 		=> enable, 
			  clear_n 	=> clear_n,
			  reset_n		=> reset_n, 
			  din				=> delay_chain(i-1), 
			  dout			=> delay_chain(i)
			);
		end generate; -------------------------------------------------------------------------------------

		dout <= delay_chain(N-1);

end rtl;
