//`timescale 1ns

module testbench ();

  // clock and reset signals ---------------------------------------------------------------
  wire        clk;
  wire        rst_n;

  // DUT - hRAM signals --------------------------------------------------------------------
  wire        hram_CS_n;
  wire        hram_RESET_n;
  wire        hram_RWDS;
  wire [7:0]  hram_DQ;
  wire        hram_CK;
  // wire        hram_CK_n;

  // avs - DUT signals --------------------------------------------------------------------
  wire [31:0] avs_address;       
	wire        avs_read;              
	wire [15:0] avs_readdata;           
	wire        avs_write;             
	wire [15:0] avs_writedata;          
	wire        avs_waitrequest;       
	wire        avs_readdatavalid;     
	wire [10:0] avs_burstcount;         

  // simulation signals ---------------------------------------------------------------------
  wire        start_sim;
	wire        stop_sim;
  wire        clock_enable = start_sim && ( ! stop_sim );

	// clock and reset generator --------------------------------------------------------------
  clk_rst_generator clk_rst_generator_inst
  (
    .reset_n      ( rst_n         ),
    .clock        ( clk           ),
    .clock_enable ( clock_enable  )
  );

	// DUT -----------------------------------------------------------------------------------
  avs_hram_converter_TEST_basic DUT
	(
		.avalon_slave_address               ( avs_address       ),     
		.avalon_slave_read                  ( avs_read          ),
		.avalon_slave_readdata              ( avs_readdata      ),
		.avalon_slave_write                 ( avs_write         ),
		.avalon_slave_writedata             ( avs_writedata     ),
		.avalon_slave_waitrequest           ( avs_waitrequest   ),
		.avalon_slave_readdatavalid         ( avs_readdatavalid ),
		.avalon_slave_burstcount            ( avs_burstcount    ),
		.clk_clk                            ( clk               ), 
		.hyperbus_clock_outclk              ( hram_CK           ),
		.hyperbus_master_chipselect         ( hram_CS_n         ),
    .hyperbus_master_data               ( hram_DQ           ),
		.hyperbus_master_memory_reset       ( hram_RESET_n      ),
		.hyperbus_master_strobe             ( hram_RWDS         ),
		.reset_reset_n                      ( rst_n             )
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

  // driver --------------------------------------------------------------------------------
  driver driver_inst
  (
    .clk							  ( clk               ), 
    .rst_n  						( rst_n             ),    
    .driver_enable      ( rst_n             ),      
    .start_sim					( start_sim         ),      
    .stop_sim					  ( stop_sim          ),  
    .avs_waitrequest    ( avs_waitrequest   ),     
    .avs_address				( avs_address       ),      
    .avs_read       		( avs_read          ),      
    .avs_write      		( avs_write         ),      
    .avs_writedata  		( avs_writedata     ),
    .avs_readdata	      ( avs_readdata      ),		      
    .avs_readdatavalid  ( avs_readdatavalid ),	      
    .avs_burstcount     ( avs_burstcount    )
  );

  // monitor -------------------------------------------------------------------------------
  monitor monitor_inst
  (
    .clk								( clk               ),	
    .avs_readdatavalid  ( avs_readdatavalid ),
    .avs_readdata	 			( avs_readdata      ),
    .start_sim					( start_sim         ),	
    .stop_sim					  ( stop_sim          )
  );

endmodule
