	avs_hram_converter_TEST_advanced u0 (
		.clk_clk            (<connected-to-clk_clk>),            //         clk.clk
		.hyperbus_cs_n      (<connected-to-hyperbus_cs_n>),      //    hyperbus.cs_n
		.hyperbus_dq        (<connected-to-hyperbus_dq>),        //            .dq
		.hyperbus_reset_n   (<connected-to-hyperbus_reset_n>),   //            .reset_n
		.hyperbus_rwds      (<connected-to-hyperbus_rwds>),      //            .rwds
		.hyperbus_ck_outclk (<connected-to-hyperbus_ck_outclk>), // hyperbus_ck.outclk
		.leds_export        (<connected-to-leds_export>),        //        leds.export
		.reset_reset_n      (<connected-to-reset_reset_n>),      //       reset.reset_n
		.switches_export    (<connected-to-switches_export>)     //    switches.export
	);

