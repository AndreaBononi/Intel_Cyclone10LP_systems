	avs_hram_converter_TEST_basic u0 (
		.avalon_slave_address         (<connected-to-avalon_slave_address>),         //    avalon_slave.address
		.avalon_slave_read            (<connected-to-avalon_slave_read>),            //                .read
		.avalon_slave_readdata        (<connected-to-avalon_slave_readdata>),        //                .readdata
		.avalon_slave_write           (<connected-to-avalon_slave_write>),           //                .write
		.avalon_slave_writedata       (<connected-to-avalon_slave_writedata>),       //                .writedata
		.avalon_slave_waitrequest     (<connected-to-avalon_slave_waitrequest>),     //                .waitrequest
		.avalon_slave_readdatavalid   (<connected-to-avalon_slave_readdatavalid>),   //                .readdatavalid
		.avalon_slave_burstcount      (<connected-to-avalon_slave_burstcount>),      //                .burstcount
		.clk_clk                      (<connected-to-clk_clk>),                      //             clk.clk
		.hyperbus_clock_outclk        (<connected-to-hyperbus_clock_outclk>),        //  hyperbus_clock.outclk
		.hyperbus_master_chipselect   (<connected-to-hyperbus_master_chipselect>),   // hyperbus_master.chipselect
		.hyperbus_master_data         (<connected-to-hyperbus_master_data>),         //                .data
		.hyperbus_master_memory_reset (<connected-to-hyperbus_master_memory_reset>), //                .memory_reset
		.hyperbus_master_strobe       (<connected-to-hyperbus_master_strobe>),       //                .strobe
		.reset_reset_n                (<connected-to-reset_reset_n>)                 //           reset.reset_n
	);

