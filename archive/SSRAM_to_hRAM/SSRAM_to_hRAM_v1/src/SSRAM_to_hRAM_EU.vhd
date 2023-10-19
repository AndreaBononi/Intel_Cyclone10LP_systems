-- SSRAM_to_hRAM_EU.vhd ------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- SSRAM to hRAM: execution unit

-------------------------------------------------------------------------------------------------------

entity SSRAM_to_hRAM_EU is
	port
	(
    -- clock and reset -------------------------------------------------------------------------------
    clk                     : in    std_logic;
    rst_n                   : in    std_logic;
    -- SSRAM data signals -----------------------------------------------------------------------------
    SSRAM_CS                : in    std_logic;
    SSRAM_OE                : in    std_logic;
    SSRAM_WE                : in    std_logic;
    SSRAM_address_spacing   : in    std_logic;
    SSRAM_burstcount        : in    std_logic_vector(10 downto 0);
    SSRAM_address           : in    std_logic_vector(31 downto 0);
    SSRAM_in                : in    std_logic_vector(15 downto 0);
    SSRAM_out               : out   std_logic_vector(15 downto 0);
    SSRAM_validout          : out   std_logic;
    SSRAM_busy              : out   std_logic;
    SSRAM_haltdata          : out   std_logic;
    -- hRAM data signals -----------------------------------------------------------------------------
    hbus_CS_n               : out   std_logic;
    hbus_RESET_n            : out   std_logic;
    hbus_DQ                 : inout std_logic_vector(7 downto 0);
    hCK_edgeal              : out   std_logic;
    RWDS_360                : in    std_logic;
    RWDS_90                 : in    std_logic;
		RWDS		                : in    std_logic;
		drive_RWDS_low					: out   std_logic;
    -- control signals --------------------------------------------------------------------------------
    busy                    : in    std_logic;
    haltdata                : in    std_logic;
    datain_load             : in    std_logic;
    cmd_load                : in    std_logic;
    writedata_load          : in    std_logic;
    synch_enable            : in    std_logic;
    synch_clear_n           : in    std_logic;
    CK_gating_enable_n      : in    std_logic;
    RWDS_sampling_enable    : in    std_logic;
    dqout_sel               : in    std_logic;
    burst_type              : in    std_logic;
    config_access           : in    std_logic;
    read_writeN             : in    std_logic;
    CA_load                 : in    std_logic;
    CA_sel                  : in    std_logic_vector(1 downto 0);
    dq_OE                   : in    std_logic;
    set_dpd_status          : in    std_logic;
    clear_dpd_status_n      : in    std_logic;
    deadline_tim_enable     : in    std_logic;
    deadline_tim_clear_n    : in    std_logic;
    h_RESET_n               : in    std_logic;
    h_CS_n                  : in    std_logic;
		force_RWDS_low          : in	  std_logic;
		check_latency	          : in	  std_logic;
    -- status signals ---------------------------------------------------------------------------------
    WE                      : out   std_logic;
    CS                      : out   std_logic;
    OE                      : out   std_logic;
    address_space           : out   std_logic;
    dpd_req                 : out   std_logic;
    active_dpd_req          : out   std_logic;
    synch_busy              : out   std_logic;
    current_operation       : out   std_logic;
    dpd_mode_on             : out   std_logic;
		t_acc1	                : out   std_logic;
		t_acc2	                : out   std_logic;
    t_dpdcsl                : out   std_logic;
    t_dpdin                 : out   std_logic;
    t_dpdout                : out   std_logic;
		doubled_latency					: out		std_logic
	);
end SSRAM_to_hRAM_EU;

-------------------------------------------------------------------------------------------------------

architecture rtl of SSRAM_to_hRAM_EU is

  -- flip flop set reset ------------------------------------------------------------------------------
  component sr_flipflop is
  	port
  	(
  		clk				: in std_logic;
  		set				: in std_logic;
  		clear_n		: in std_logic;
  		rst_n			: in std_logic;
  		sr_out		: out std_logic
  	);
  end component;

  -- flip flop type D ---------------------------------------------------------------------------------
  component d_flipflop is
  	port
  	(
  		clk				: in 	std_logic;
  		enable		: in 	std_logic;
  		clear_n		: in 	std_logic;
  		dff_in		: in 	std_logic;
  		dff_out		: out std_logic
  	);
  end component;

-- register -------------------------------------------------------------------------------------------
  component reg is
  	generic
  	(
  		N : integer := 8
  	);
  	port
  	(
  		clk				: in 	std_logic;
  		enable		: in 	std_logic;
  		clear_n		: in 	std_logic;
  		reg_in		: in 	std_logic_vector(N-1 downto 0);
  		reg_out		: out std_logic_vector(N-1 downto 0)
  	);
  end component;

  -- timer --------------------------------------------------------------------------------------------
  component timer_14bit is
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
  end component;

  -- unpacker 48 bit ---------------------------------------------------------------------------------
  component unpacker_48 is
  	port
  	(
  		clk           : in 	std_logic;
  		load  		    : in 	std_logic;
  		sel	  		    : in 	std_logic_vector(1 downto 0);
  		packed_in 		: in 	std_logic_vector(47 downto 0);
  		ddrbyte_out		: out std_logic_vector(7 downto 0)
  	);
  end component;

  -- unpacker 16 bit ---------------------------------------------------------------------------------
  component unpacker_16 is
  	port
  	(
  		clk           : in 	std_logic;
  		load  		    : in 	std_logic;
  		packed_in 		: in 	std_logic_vector(15 downto 0);
  		ddrbyte_out		: out std_logic_vector(7 downto 0)
  	);
  end component;

  -- multiplexer 2 to 1 ------------------------------------------------------------------------------
  component mux_2to1 is
  	generic
  	(
  		N : integer := 1
  	);
  	port
  	(
  		mux_in_0		: in		std_logic_vector((N-1) downto 0);
  		mux_in_1		: in		std_logic_vector((N-1) downto 0);
  		sel					: in 		std_logic;
  		out_mux			: out 	std_logic_vector((N-1) downto 0)
  	);
  end component;

  -- packer -----------------------------------------------------------------------------------------
  component packer is
  	port
  	(
  		clk           : in 	std_logic;
  		enable		    : in 	std_logic;
  		ddrbyte_in		: in 	std_logic_vector(7 downto 0);
  		packed_out		: out std_logic_vector(15 downto 0)
  	);
  end component;

  -- synchronizer -----------------------------------------------------------------------------------
  component synchronizer is
  	port
  	(
  		clk                       : in    std_logic;
  		rst_n											: in    std_logic;
  		synch_enable              : in		std_logic;
  		synch_clear_n             : in		std_logic;
  		burstcount                : in		std_logic_vector(10 downto 0);
  		din_strobe                : in		std_logic;
  		din                       : in		std_logic_vector(15 downto 0);
  		dout                      : out		std_logic_vector(15 downto 0);
  		synch_validout            : out		std_logic;
  		synch_busy                : out		std_logic
  	);
  end component;

  -- gater ------------------------------------------------------------------------------------------
  component gater is
  	port
  	(
  		clk           : in 	std_logic;
  		enable_n      : in 	std_logic;
  		gated_clock		: out std_logic
  	);
  end component;

	-- non-inverting tristate buffer ------------------------------------------------------------------
	component tristate_buffer is
		generic
		(
			N : integer := 8
		);
		port
		(
			output_enable		: in 	std_logic;
			buffer_in   		: in 	std_logic_vector(N-1 downto 0);
			buffer_out  		: out std_logic_vector(N-1 downto 0)
		);
	end component;

  -- internal signals -------------------------------------------------------------------------------
  signal up_address_out       : std_logic_vector(18 downto 0);
  signal low_address_out      : std_logic_vector(2 downto 0);
  signal CA_packed_in         : std_logic_vector(47 downto 0);
  signal CA0A                 : std_logic_vector(7 downto 0);
  signal CA0B                 : std_logic_vector(7 downto 0);
  signal CA1A                 : std_logic_vector(7 downto 0);
  signal CA1B                 : std_logic_vector(7 downto 0);
  signal CA2A                 : std_logic_vector(7 downto 0);
  signal CA2B                 : std_logic_vector(7 downto 0);
  signal CA_out               : std_logic_vector(7 downto 0);
  signal writedata_packed_in  : std_logic_vector(15 downto 0);
  signal writedata_out        : std_logic_vector(7 downto 0);
  signal dqmux_out            : std_logic_vector(7 downto 0);
  signal burstcount           : std_logic_vector(10 downto 0);
  signal readdata_out         : std_logic_vector(15 downto 0);
  signal dpd                  : std_logic;
	signal dq_OE_noglitch       : std_logic;

	begin

    up_address    : reg generic map(19) port map(clk, cmd_load, '1', SSRAM_address(21 downto 3), up_address_out);
    low_address   : reg generic map(3) port map(clk, cmd_load, '1', SSRAM_address(2 downto 0), low_address_out);

    CA0A(7) <= read_writeN;
    CA0A(6) <= config_access;
    CA0A(5) <= burst_type;
    CA0A(4 downto 0) <= "00000";
    CA0B(7 downto 3) <= "00000";
    CA0B(2 downto 0) <= up_address_out(18 downto 16);
    CA1A <= up_address_out(15 downto 8);
    CA1B <= up_address_out(7 downto 0);
    CA2A <= "00000000";
    CA2B(7 downto 3) <= "00000";
    CA2B(2 downto 0) <= low_address_out;

		CA_packed_in(47 downto 40) <= CA0A;
		CA_packed_in(39 downto 32) <= CA0B;
		CA_packed_in(31 downto 24) <= CA1A;
		CA_packed_in(23 downto 16) <= CA1B;
		CA_packed_in(15 downto 8) <= CA2A;
		CA_packed_in(7 downto 0) <= CA2B;

    CA            	: unpacker_48 port map(clk, CA_load, CA_sel, CA_packed_in, CA_out);
    deadline_tim  	: timer_14bit port map(clk, deadline_tim_enable, deadline_tim_clear_n, t_acc1, t_acc2, t_dpdcsl, t_dpdin, t_dpdout);
    datain       		: reg generic map(16) port map(clk, datain_load, '1', SSRAM_in, writedata_packed_in);
    writedata     	: unpacker_16 port map(clk, writedata_load, writedata_packed_in, writedata_out);
    dqmux         	: mux_2to1 generic map(8) port map(writedata_out, CA_out, dqout_sel, dqmux_out);
		antiglitch			: d_flipflop port map(clk, '1', '1', dq_OE, dq_OE_noglitch);
		dq_buf					: tristate_buffer generic map(8) port map(dq_OE_noglitch, dqmux_out, hbus_DQ);
    burstcnt        : reg generic map(11) port map(clk, cmd_load, '1', SSRAM_burstcount, burstcount);
    readdata        : packer port map(RWDS_90, RWDS_sampling_enable, hbus_DQ, readdata_out);
    CK_gater        : gater port map(clk, CK_gating_enable_n, hCK_edgeal);
    dpd_tracker     : sr_flipflop port map(clk, set_dpd_status, clear_dpd_status_n, '1', dpd_mode_on);
    op_tracker      : d_flipflop port map(clk, cmd_load, '1', SSRAM_OE, current_operation);
    dpd_req_tracker : d_flipflop port map(clk, cmd_load, '1', dpd, active_dpd_req);
		rwds_tracker		: d_flipflop port map(clk, check_latency, '1', RWDS, doubled_latency);

    dpd <= SSRAM_in(15) nor SSRAM_address(0);

    snc: synchronizer
    port map
    (
      clk,
      rst_n,
      synch_enable,
      synch_clear_n,
      burstcount,
      RWDS_360,
      readdata_out,
      SSRAM_out,
      SSRAM_validout,
      synch_busy
    );

    address_space <= SSRAM_address_spacing;
    CS <= SSRAM_CS;
    WE <= SSRAM_WE;
    OE <= SSRAM_OE;
    hbus_CS_n <= h_CS_n;
    hbus_RESET_n <= h_RESET_n;
    SSRAM_busy <= busy;
    SSRAM_haltdata <= haltdata;
    dpd_req <= dpd;
		drive_RWDS_low <= force_RWDS_low;

end rtl;

------------------------------------------------------------------------------------------------------
