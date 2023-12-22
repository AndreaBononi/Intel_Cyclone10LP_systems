	avs_hram_converter_TEST u0 (
		.avalon_slave_address             (<connected-to-avalon_slave_address>),             // avalon_slave.address
		.avalon_slave_read                (<connected-to-avalon_slave_read>),                //             .read
		.avalon_slave_readdata            (<connected-to-avalon_slave_readdata>),            //             .readdata
		.avalon_slave_write               (<connected-to-avalon_slave_write>),               //             .write
		.avalon_slave_writedata           (<connected-to-avalon_slave_writedata>),           //             .writedata
		.avalon_slave_waitrequest         (<connected-to-avalon_slave_waitrequest>),         //             .waitrequest
		.avalon_slave_readdatavalid       (<connected-to-avalon_slave_readdatavalid>),       //             .readdatavalid
		.avalon_slave_burstcount          (<connected-to-avalon_slave_burstcount>),          //             .burstcount
		.hyperbus_data                    (<connected-to-hyperbus_data>),                    //     hyperbus.data
		.hyperbus_chipselect_n            (<connected-to-hyperbus_chipselect_n>),            //             .chipselect_n
		.hyperbus_localreset_n            (<connected-to-hyperbus_localreset_n>),            //             .localreset_n
		.hyperbus_strobe_to_memory        (<connected-to-hyperbus_strobe_to_memory>),        //             .strobe_to_memory
		.hyperbus_shiftedstrobe_to_memory (<connected-to-hyperbus_shiftedstrobe_to_memory>), //             .shiftedstrobe_to_memory
		.hyperbus_strobe_from_memory      (<connected-to-hyperbus_strobe_from_memory>),      //             .strobe_from_memory
		.clk_clk                          (<connected-to-clk_clk>),                          //          clk.clk
		.hbus_clock_outclk                (<connected-to-hbus_clock_outclk>),                //   hbus_clock.outclk
		.reset_n_reset_n                  (<connected-to-reset_n_reset_n>)                   //      reset_n.reset_n
	);

