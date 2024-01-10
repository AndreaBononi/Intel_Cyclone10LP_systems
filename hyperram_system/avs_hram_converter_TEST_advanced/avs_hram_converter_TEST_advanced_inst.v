	avs_hram_converter_TEST_advanced u0 (
		.clk_clk                      (<connected-to-clk_clk>),                      //             clk.clk
		.hyperbus_clock_outclk        (<connected-to-hyperbus_clock_outclk>),        //  hyperbus_clock.outclk
		.hyperbus_master_chipselect   (<connected-to-hyperbus_master_chipselect>),   // hyperbus_master.chipselect
		.hyperbus_master_data         (<connected-to-hyperbus_master_data>),         //                .data
		.hyperbus_master_memory_reset (<connected-to-hyperbus_master_memory_reset>), //                .memory_reset
		.hyperbus_master_strobe       (<connected-to-hyperbus_master_strobe>),       //                .strobe
		.leds_export                  (<connected-to-leds_export>),                  //            leds.export
		.reset_reset_n                (<connected-to-reset_reset_n>),                //           reset.reset_n
		.switches_export              (<connected-to-switches_export>)               //        switches.export
	);

