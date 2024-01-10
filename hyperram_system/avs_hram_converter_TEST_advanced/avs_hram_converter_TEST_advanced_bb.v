
module avs_hram_converter_TEST_advanced (
	clk_clk,
	hyperbus_clock_outclk,
	hyperbus_master_chipselect,
	hyperbus_master_data,
	hyperbus_master_memory_reset,
	hyperbus_master_strobe,
	leds_export,
	reset_reset_n,
	switches_export);	

	input		clk_clk;
	output		hyperbus_clock_outclk;
	output		hyperbus_master_chipselect;
	inout	[7:0]	hyperbus_master_data;
	output		hyperbus_master_memory_reset;
	inout		hyperbus_master_strobe;
	output	[3:0]	leds_export;
	input		reset_reset_n;
	input	[3:0]	switches_export;
endmodule
