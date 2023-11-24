-- BRIEF DESCRIPTION: 14-bit timer with alert on 3, 7, 20, 1000 and 15000

library   ieee;
use       ieee.std_logic_1164.all;
use       ieee.numeric_std.all;

entity timer_14bit is
port
(
	clk				  : in 	std_logic;
	enable		  : in 	std_logic;
	clear_n		  : in 	std_logic;
	tim_3			  : out std_logic;
	tim_7			  : out std_logic;
	tim_20		  : out std_logic;
  tim_1000    : out std_logic;
  tim_15000		: out std_logic
);
end timer_14bit;

architecture rtl of timer_14bit is

  -- COMPONENT: counter N-bit ------------------------------------------------------------------------------
  component counter_Nbit is
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
  end component; -------------------------------------------------------------------------------------------

  signal cnt_out: std_logic_vector(13 downto 0);

  begin

    -- counter 14-bit --------------------------------------------------------------------------------------
    cnt: counter_Nbit 
    generic map
    (
      N => 14
    ) 
    port map
    (
      clk       => clk, 
      enable    => enable, 
      clear_n   => clear_n, 
      reset_n   => '1', 
      dout      => cnt_out
    ); -----------------------------------------------------------------------------------------------------

    -- alert on dout = 3 -----------------------------------------------------------------------------------
		tim_3 		<= 	(cnt_out(0))			and (cnt_out(1)) 			and (not cnt_out(2)) 	and (not cnt_out(3)) 	and
              		(not cnt_out(4))	and (not cnt_out(5)) 	and (not cnt_out(6)) 	and (not cnt_out(7)) 	and
              		(not cnt_out(8)) 	and (not cnt_out(9)) 	and (not cnt_out(10)) and (not cnt_out(11)) and
              		(not cnt_out(12)) and (not cnt_out(13));
    --------------------------------------------------------------------------------------------------------

    -- alert on dout = 7 -----------------------------------------------------------------------------------
		tim_7 		<= 	(cnt_out(0))			and (cnt_out(1)) 			and (cnt_out(2)) 			and (not cnt_out(3)) 	and
									(not cnt_out(4)) 	and (not cnt_out(5)) 	and (not cnt_out(6)) 	and (not cnt_out(7)) 	and
									(not cnt_out(8)) 	and (not cnt_out(9)) 	and (not cnt_out(10)) and (not cnt_out(11)) and
									(not cnt_out(12)) and (not cnt_out(13));
    --------------------------------------------------------------------------------------------------------

    -- alert on dout = 20 ----------------------------------------------------------------------------------
    tim_20 		<= 	(not cnt_out(0))	and (not cnt_out(1)) 	and (cnt_out(2)) 			and (not cnt_out(3)) 	and
              		(cnt_out(4)) 			and (not cnt_out(5)) 	and (not cnt_out(6)) 	and (not cnt_out(7)) 	and
              		(not cnt_out(8)) 	and (not cnt_out(9)) 	and (not cnt_out(10)) and (not cnt_out(11)) and
              		(not cnt_out(12)) and (not cnt_out(13));
    --------------------------------------------------------------------------------------------------------

    -- alert on dout = 1000 --------------------------------------------------------------------------------
    tim_1000 	<= 	(not cnt_out(0)) 	and (not cnt_out(1)) 	and (not cnt_out(2)) 	and (cnt_out(3)) 			and
                	(not cnt_out(4)) 	and (cnt_out(5)) 			and (cnt_out(6)) 			and (cnt_out(7)) 			and
                	(cnt_out(8)) 			and (cnt_out(9)) 			and (not cnt_out(10)) and (not cnt_out(11)) and
                	(not cnt_out(12)) and (not cnt_out(13));
    --------------------------------------------------------------------------------------------------------

    -- alert on dout = 15000 -------------------------------------------------------------------------------
    tim_15000 <= 	(not cnt_out(0)) 	and (not cnt_out(1)) 	and (not cnt_out(2)) 	and (cnt_out(3)) 			and
                	(cnt_out(4)) 			and (not cnt_out(5)) 	and (not cnt_out(6)) 	and (cnt_out(7)) 			and
                	(not cnt_out(8)) 	and (cnt_out(9)) 			and (not cnt_out(10)) and (cnt_out(11)) 		and
                	(cnt_out(12)) 		and (cnt_out(13));
    --------------------------------------------------------------------------------------------------------

end rtl;
