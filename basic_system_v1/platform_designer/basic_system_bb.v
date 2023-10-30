
module basic_system (
	clk_clk,
	leds_export,
	reset_reset_n,
	rst_switch_export,
	switches_export);	

	input		clk_clk;
	output	[3:0]	leds_export;
	input		reset_reset_n;
	input		rst_switch_export;
	input	[3:0]	switches_export;
endmodule
