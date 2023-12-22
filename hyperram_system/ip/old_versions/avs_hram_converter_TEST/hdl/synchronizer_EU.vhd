-- BRIEF DESCRIPTION: synchronizer execution unit
-- COMMENTS:
-- use it together with synchronizer_CU.vhd to create synchronizer.vhd

library 	ieee;
use 			ieee.std_logic_1164.all;
use 			ieee.numeric_std.all;

entity synchronizer_EU is
port
(
  -- clock and reset
  clk                       : in    std_logic;
  rst_n                     : in    std_logic;
  -- data signals
  synch_enable              : in		std_logic;
  synch_clear_n             : in		std_logic;
  synch_strobe              : in		std_logic;
	synch_validout            : out		std_logic;
  synch_busy                : out		std_logic;
	synch_din                 : in		std_logic_vector(15 downto 0);
  synch_dout                : out		std_logic_vector(15 downto 0);
	burstcount                : in		std_logic_vector(10 downto 0);
	counter_enable						: in    std_logic;
	counter_clear_n						: in    std_logic;
	counter_up_downN					: in    std_logic;
	counter_out								: out		std_logic_vector(10 downto 0);
  -- control signals
  system_clear_n            : in		std_logic;
  system_enable             : in		std_logic;
  burstlen_enable           : in		std_logic;
  burstlen_counter_enable   : in		std_logic;
  outreg_enable            	: in		std_logic;
  data_counter_enable       : in    std_logic;
  busy                      : in		std_logic;
  validout                  : in		std_logic;
	outpipe_enable            : in		std_logic;
	outpipe_clear_n           : in		std_logic;
  -- status signals
  burst_end                 : out		std_logic;
  start_sampling            : out		std_logic;
  enable                    : out		std_logic;
  clear_n                   : out		std_logic
);
end synchronizer_EU;

architecture rtl of synchronizer_EU is

  -- COMPONENT: N-bit register --------------------------------------------------------------------------------
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
  end component; ---------------------------------------------------------------------------------------------

  -- COMPONENT: set-reset flipflop ---------------------------------------------------------------------------
  component sr_flipflop is
  port
	(
		clk				: in std_logic;
		set				: in std_logic;
		clear_n		: in std_logic;
		rst_n			: in std_logic;
		dout			: out std_logic
	);
  end component; ---------------------------------------------------------------------------------------------
	
	-- COMPONENT: flipflop type D ------------------------------------------------------------------------------
	component d_flipflop is
	port
	(
		clk				: in 	std_logic;
		enable		: in 	std_logic;
		clear_n		: in 	std_logic;	-- synchronous clear, active low
		reset_n		: in	std_logic;	-- asynchronous reset, active low
		din				: in 	std_logic;
		dout			: out std_logic
	);
	end component; ---------------------------------------------------------------------------------------------

  -- COMPONENT: multiplexer 4-inputs 1-output N-bit ----------------------------------------------------------
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
  end component; ----------------------------------------------------------------------------------------------

  -- COMPONENT: comparation between two inputs (N bit) --------------------------------------------------------
  component comparator_Nbit is
	generic
	(
		N : integer := 1
	);
	port
	(
		din_0		: in		std_logic_vector((N-1) downto 0);
		din_1		: in		std_logic_vector((N-1) downto 0);
		equal 	: out 	std_logic
	);
  end component; ----------------------------------------------------------------------------------------------

  -- COMPONENT: decoder with a 2-bit input (i.e. 4 decoded outputs) -------------------------------------------
  component decoder_2bit is
  	port
  	(
  		code				: in		std_logic_vector(1 downto 0);
  		dec00				: out 	std_logic;
  		dec01				: out 	std_logic;
  		dec10				: out 	std_logic;
  		dec11				: out 	std_logic
  	);
  end component; ----------------------------------------------------------------------------------------------

  -- COMPONENT: synchronous up-counter N bit ------------------------------------------------------------------
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
  end component; ----------------------------------------------------------------------------------------------

	-- COMPONENT: synchronous up-down counter 11 bit ------------------------------------------------------------
	component counter_11bit_updown is
	port
	(
		clock		: in 	std_logic ;
		cnt_en	: in 	std_logic ;
		sclr		: in 	std_logic ;
		updown	: in 	std_logic ;
		q				: out std_logic_vector (10 downto 0)
	);
	end component; ----------------------------------------------------------------------------------------------

  -- SIGNALS --------------------------------------------------------------------------------------------------
  signal code_counter_out       					: std_logic_vector(1 downto 0);
  signal dec00                  					: std_logic;
  signal dec01                  					: std_logic;
  signal dec10                  					: std_logic;
  signal dec11                  					: std_logic;
  signal din00_out         								: std_logic_vector(15 downto 0);
  signal din01_out         								: std_logic_vector(15 downto 0);
  signal din10_out         								: std_logic_vector(15 downto 0);
  signal din11_out         								: std_logic_vector(15 downto 0);
  signal din00_enable      								: std_logic;
  signal datamux_out       								: std_logic_vector(15 downto 0);
  signal burstlen_reg_out       					: std_logic_vector(10 downto 0);
  signal burstlen_counter_out   					: std_logic_vector(10 downto 0);
	signal effective_burstlen_cnt_en				: std_logic;
	signal effective_burstlen_cnt_clear 		: std_logic;
	signal effective_burstlen_cnt_up_downN	: std_logic;
  signal data_counter_out       					: std_logic_vector(1 downto 0);
	signal outreg_out        								: std_logic_vector(15 downto 0); 
	-------------------------------------------------------------------------------------------------------------

  begin

    clear_n <= synch_clear_n;
    enable <= synch_enable;
		counter_out <= burstlen_counter_out;

		din00_enable <= dec00 and system_enable;
		effective_burstlen_cnt_en <= burstlen_counter_enable or counter_enable;
		effective_burstlen_cnt_clear <= not( system_clear_n and counter_clear_n );
		effective_burstlen_cnt_up_downN <= burstlen_counter_enable or counter_up_downN;

		-- code counter -------------------------------------------------------------------------------------------
    code_counter : counter_Nbit 
		generic map
		(
			N => 2
		) 
		port map
		(
			clk 			=> synch_strobe, 
			enable 		=> system_enable, 
			clear_n		=> system_clear_n, 
			reset_n 	=> rst_n, 
			dout 			=> code_counter_out
		); --------------------------------------------------------------------------------------------------------

		-- synchronizer (synchronizing flipflop) ------------------------------------------------------------------
    synchronizer : sr_flipflop 
		port map
		(
			clk 			=> synch_strobe, 
			set 			=> system_enable, 
			clear_n 	=> system_clear_n, 
			rst_n 		=> rst_n, 
			dout 			=> start_sampling
		); --------------------------------------------------------------------------------------------------------

		-- enabler (enabling decoder) -----------------------------------------------------------------------------
    dec : decoder_2bit 
		port map
		(
			code 	=> code_counter_out, 
			dec00 => dec00, 
			dec01 => dec01, 
			dec10 => dec10, 
			dec11 => dec11
		); --------------------------------------------------------------------------------------------------------

		-- din11 register -----------------------------------------------------------------------------------------
    din11 : reg 
		generic map
		(
			N => 16
		) 
		port map
		(
			clk 			=> synch_strobe, 
			enable 		=> dec11, 
			clear_n 	=> '1',
			reset_n 	=> '1',
			din 			=> synch_din, 
			dout 			=> din11_out
		); --------------------------------------------------------------------------------------------------------

		-- din10 register -----------------------------------------------------------------------------------------
   din10 : reg 
		generic map
		(
			N => 16
		) 
		port map
		(
			clk 			=> synch_strobe, 
			enable 		=> dec10, 
			clear_n 	=> '1',
			reset_n 	=> '1',
			din 			=> synch_din, 
			dout 			=> din10_out
		); --------------------------------------------------------------------------------------------------------

		-- din01 register -----------------------------------------------------------------------------------------
    din01 : reg 
		generic map
		(
			N => 16
		) 
		port map
		(
			clk 			=> synch_strobe, 
			enable 		=> dec01, 
			clear_n 	=> '1',
			reset_n 	=> '1',
			din 			=> synch_din, 
			dout 			=> din01_out
		); --------------------------------------------------------------------------------------------------------

		-- din00 register -----------------------------------------------------------------------------------------
    din00 : reg 
		generic map
		(
			N => 16
		) 
		port map
		(
			clk 			=> synch_strobe, 
			enable 		=> din00_enable, 
			clear_n 	=> '1',
			reset_n 	=> '1',
			din 			=> synch_din, 
			dout 			=> din00_out
		); --------------------------------------------------------------------------------------------------------

		-- data mux -----------------------------------------------------------------------------------------------
    datamux : mux_4to1 
		generic map
		(
			N => 16
		) 
		port map
		(
			din_00 	=> din00_out, 
			din_01 	=> din01_out, 
			din_10 	=> din10_out, 
			din_11 	=> din11_out, 
			sel 		=> data_counter_out, 
			dout 		=> datamux_out
		); -------------------------------------------------------------------------------------------------------

		-- outreg (output register) ------------------------------------------------------------------------------
    outreg : reg 
		generic map
		(
			N => 16
		) 
		port map
		(
			clk 			=> clk, 
			enable 		=> outreg_enable, 
			clear_n 	=> '1', 
			reset_n 	=> '1',
			din 			=> datamux_out, 
			dout 			=> outreg_out
		); -------------------------------------------------------------------------------------------------------

		-- burstlen register -------------------------------------------------------------------------------------
    burstlen : reg 
		generic map
		(
			N => 11
		) 
		port map
		(
			clk 			=> synch_strobe, 
			enable 		=> burstlen_enable, 
			clear_n 	=> '1', 
			reset_n 	=> '1',
			din 			=> burstcount, 
			dout 			=> burstlen_reg_out
		); ------------------------------------------------------------------------------------------------------

		-- burstlen_counter -------------------------------------------------------------------------------------
    burstlen_counter : counter_11bit_updown
		port map
		(
			clock 	=> clk, 
			cnt_en 	=> effective_burstlen_cnt_en, 
			sclr 		=> effective_burstlen_cnt_clear,
			updown 	=> effective_burstlen_cnt_up_downN,
			q 			=> burstlen_counter_out
		); ------------------------------------------------------------------------------------------------------

		-- burstlen comparator ----------------------------------------------------------------------------------
    burstlen_cmp : comparator_Nbit 
		generic map
		(
			N => 11
		) 
		port map
		(
			din_0 => burstlen_reg_out, 
			din_1 => burstlen_counter_out, 
			equal => burst_end
		); ------------------------------------------------------------------------------------------------------

		-- data counter -----------------------------------------------------------------------------------------
    data_counter : counter_Nbit 
		generic map
		(
			N => 2
		) 
		port map
		(
			clk 			=> clk, 
			enable 		=> data_counter_enable, 
			clear_n		=> system_clear_n, 
			reset_n 	=> '1', 
			dout 			=> data_counter_out
		); -----------------------------------------------------------------------------------------------------

		-- validout pipeline -----------------------------------------------------------------------------------
		valid_pipe : d_flipflop 
		port map
		(
			clk 			=> clk, 
			enable 		=> outpipe_enable, 
			clear_n 	=> outpipe_clear_n,
			reset_n 	=> '1',
			din 			=> validout, 
			dout 			=> synch_validout
		); -----------------------------------------------------------------------------------------------------

		-- busy pipeline ---------------------------------------------------------------------------------------
		busy_pipe	: d_flipflop 
		port map
		(
			clk 			=> clk, 
			enable 		=> outpipe_enable, 
			clear_n 	=> outpipe_clear_n,
			reset_n 	=> '1',
			din 			=> busy, 
			dout 			=> synch_busy
		); -----------------------------------------------------------------------------------------------------

		-- outreg pipeline -------------------------------------------------------------------------------------
		outpipe	: reg 
		generic map
		(
			N => 16
		) 
		port map
		(
			clk 			=> clk, 
			enable 		=> outpipe_enable, 
			clear_n 	=> outpipe_clear_n,
			reset_n 	=> '1', 
			din				=> outreg_out, 
			dout			=> synch_dout
		); -----------------------------------------------------------------------------------------------------

end rtl;