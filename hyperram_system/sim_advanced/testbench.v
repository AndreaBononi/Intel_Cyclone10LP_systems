//`timescale 1ns

module testbench ();

  // clock and reset signals ---------------------------------------------------------------
  wire        clk_10MHz;
  wire        rst_n;
  wire        rst;

  // DUT - hRAM signals --------------------------------------------------------------------
  wire        hram_CS_n;
  wire        hram_RESET_n;
  wire        hram_RWDS;
  wire [7:0]  hram_DQ;
  wire        hram_CK;
  wire        hram_CK_n;

  // DUT-only signals -----------------------------------------------------------------------
  wire        slowClk;
  wire        mcuSpiCk;
  wire        mcuSpiCs;
  wire [3:0]  mcuSpiIo;
  wire        mcuUartTx;
  wire        mcuUartRx;
  wire        mcuI2cScl;
  wire        mcuI2cSda;
  wire [31:0] lsasBus;
  wire [3:0]  leds;

	// clock and reset generator --------------------------------------------------------------
  clk_rst_generator clk_rst_generator_inst
  (
    .clock        ( clk_10MHz ),
    .reset        ( rst       ),
    .reset_n      ( rst_n     )
  );

	// DUT -----------------------------------------------------------------------------------
  top_level top_level_inst
	(
    .mainClk	  ( clk_10MHz     ),
    .slowClk	  ( slowClk       ),
    .reset		  ( rst           ),
    .hBusCk	    ( hram_CK       ),
    .hBusnCk	  ( hram_CK_n     ),
    .hBusCs	    ( hram_CS_n     ),
    .hBusRst	  ( hram_RESET_n  ),
    .hBusD		  ( hram_DQ       ),
    .hBusRwds	  ( hram_RWDS     ),
    .mcuSpiCk	  ( mcuSpiCk      ),
    .mcuSpiCs	  ( mcuSpiCs      ),
    .mcuSpiIo	  ( mcuSpiIo      ),
    .mcuUartTx	( mcuUartTx     ),
    .mcuUartRx	( mcuUartRx     ),
    .mcuI2cScl	( mcuI2cScl     ),
    .mcuI2cSda	( mcuI2cSda     ),
    .lsasBus	  ( lsasBus       ),
    .leds		    ( leds          )
	);

  // hRAM model ----------------------------------------------------------------------------
  s27kl0641 hRAM
  (
    .DQ7      ( hram_DQ[7:7]  ),
    .DQ6      ( hram_DQ[6:6]  ),
    .DQ5      ( hram_DQ[5:5]  ),
    .DQ4      ( hram_DQ[4:4]  ),
    .DQ3      ( hram_DQ[3:3]  ),
    .DQ2      ( hram_DQ[2:2]  ),
    .DQ1      ( hram_DQ[1:1]  ),
    .DQ0      ( hram_DQ[0:0]  ),
    .RWDS     ( hram_RWDS     ),
    .CSNeg    ( hram_CS_n     ),
    .CK       ( hram_CK       ),
    .RESETNeg ( hram_RESET_n  )
  );

endmodule
