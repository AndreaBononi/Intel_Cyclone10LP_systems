
module avs_hram_converter_TEST_advanced (
	clk_clk,
	hyperbus_cs_n,
	hyperbus_dq,
	hyperbus_reset_n,
	hyperbus_rwds,
	hyperbus_ck_outclk,
	leds_export,
	reset_reset_n,
	switches_export);	

	input		clk_clk;
	output		hyperbus_cs_n;
	inout	[7:0]	hyperbus_dq;
	output		hyperbus_reset_n;
	inout		hyperbus_rwds;
	output		hyperbus_ck_outclk;
	output	[3:0]	leds_export;
	input		reset_reset_n;
	input	[3:0]	switches_export;
endmodule
