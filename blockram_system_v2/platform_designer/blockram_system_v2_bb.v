
module blockram_system_v2 (
	clk_clk,
	leds_export,
	reset_reset_n,
	switches_export);	

	input		clk_clk;
	output	[3:0]	leds_export;
	input		reset_reset_n;
	input	[3:0]	switches_export;
endmodule
