//`timescale 1ns

module SSRAM_to_hRAM_testbench ();

  // clock and reset signals ---------------------------------------------------------------
  wire        clk;
  wire        rst_n;

  // DUT - hRAM signals --------------------------------------------------------------------
  wire        hbus_CS_n;
  wire        hbus_RESET_n;
  wire [7:0]  hbus_DQ;
  wire        hCK_edgeal;
  wire        RWDS_360;
  wire        RWDS_90;
  wire        RWDS;
  wire        hbus_RWDS;
  wire        drive_RWDS_low;
  wire        hbus_CK;

  // SSRAM - DUT signals --------------------------------------------------------------------
  wire        SSRAM_CS;
  wire        SSRAM_OE;
  wire        SSRAM_WE;
  wire        SSRAM_address_spacing;
  wire [10:0] SSRAM_burstcount;
  wire [31:0] SSRAM_address;
  wire [15:0] SSRAM_in;
  wire [15:0] SSRAM_out;
  wire        SSRAM_validout;
  wire        SSRAM_busy;
  wire        SSRAM_haltdata;

  // simulation signals ---------------------------------------------------------------------
  wire        start_sim;
	wire        stop_sim;

	// clock and reset generator --------------------------------------------------------------
  clk_rst_generator CRG
  (
    .clk (clk),
		.rstN (rst_n),
    .start_sim (start_sim),
    .stop_sim (stop_sim)
  );

	// DUT -----------------------------------------------------------------------------------
  SSRAM_to_hRAM DUT
  (
    .clk (clk),
		.rst_n (rst_n),
    .SSRAM_CS (SSRAM_CS),
    .SSRAM_OE (SSRAM_OE),
    .SSRAM_WE (SSRAM_WE),
    .SSRAM_address_spacing (SSRAM_address_spacing),
    .SSRAM_burstcount (SSRAM_burstcount),
    .SSRAM_address (SSRAM_address),
    .SSRAM_in (SSRAM_in),
    .SSRAM_out (SSRAM_out),
    .SSRAM_validout (SSRAM_validout),
    .SSRAM_busy (SSRAM_busy),
    .SSRAM_haltdata (SSRAM_haltdata),
    .hbus_CS_n (hbus_CS_n),
    .hbus_RESET_n (hbus_RESET_n),
    .hbus_DQ (hbus_DQ),
    .hCK_edgeal (hCK_edgeal),
    .RWDS_360 (RWDS_360),
    .RWDS_90 (RWDS_90),
    .RWDS(RWDS),
    .drive_RWDS_low (drive_RWDS_low)
  );

  // RWDS and memory clock generator -------------------------------------------------------
  SSRAM_to_hRAM_external_generator ext_gen
  (
    .hbus_RWDS (hbus_RWDS),
    .drive_RWDS_low (drive_RWDS_low),
    .RWDS (RWDS),
    .RWDS_90 (RWDS_90),
    .RWDS_360 (RWDS_360),
    .hCK_edgeal (hCK_edgeal),
    .hbus_CK (hbus_CK)
  );

  // hRAM model ----------------------------------------------------------------------------
  s27kl0641 hRAM
  (
    .DQ7 (hbus_DQ[7:7]),
    .DQ6 (hbus_DQ[6:6]),
    .DQ5 (hbus_DQ[5:5]),
    .DQ4 (hbus_DQ[4:4]),
    .DQ3 (hbus_DQ[3:3]),
    .DQ2 (hbus_DQ[2:2]),
    .DQ1 (hbus_DQ[1:1]),
    .DQ0 (hbus_DQ[0:0]),
    .RWDS (hbus_RWDS),
    .CSNeg (hbus_CS_n),
    .CK (hbus_CK),
    .RESETNeg (hbus_RESET_n)
  );

  // driver --------------------------------------------------------------------------------
  SSRAM_to_hRAM_driver driver
  (
    .clk (clk),
		.rst_n (rst_n),
    .start_sim (start_sim),
  	.stop_sim (stop_sim),
    .SSRAM_busy (SSRAM_busy),
    .SSRAM_haltdata (SSRAM_haltdata),
    .SSRAM_CS (SSRAM_CS),
    .SSRAM_OE (SSRAM_OE),
    .SSRAM_WE (SSRAM_WE),
    .SSRAM_address_spacing (SSRAM_address_spacing),
    .SSRAM_burstcount (SSRAM_burstcount),
    .SSRAM_address (SSRAM_address),
    .SSRAM_in (SSRAM_in)
  );

  // monitor -------------------------------------------------------------------------------
  SSRAM_to_hRAM_monitor monitor
  (
    .clk (clk),
		.SSRAM_out (SSRAM_out),
		.SSRAM_validout (SSRAM_validout),
		.start_sim (start_sim),
		.stop_sim (stop_sim)
  );

endmodule
