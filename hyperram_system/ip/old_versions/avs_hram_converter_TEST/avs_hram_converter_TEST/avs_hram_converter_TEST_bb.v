
module avs_hram_converter_TEST (
	avalon_slave_address,
	avalon_slave_read,
	avalon_slave_readdata,
	avalon_slave_write,
	avalon_slave_writedata,
	avalon_slave_waitrequest,
	avalon_slave_readdatavalid,
	avalon_slave_burstcount,
	hyperbus_data,
	hyperbus_chipselect_n,
	hyperbus_localreset_n,
	hyperbus_strobe_to_memory,
	hyperbus_shiftedstrobe_to_memory,
	hyperbus_strobe_from_memory,
	clk_clk,
	hbus_clock_outclk,
	reset_n_reset_n);	

	input	[31:0]	avalon_slave_address;
	input		avalon_slave_read;
	output	[15:0]	avalon_slave_readdata;
	input		avalon_slave_write;
	input	[15:0]	avalon_slave_writedata;
	output		avalon_slave_waitrequest;
	output		avalon_slave_readdatavalid;
	input	[10:0]	avalon_slave_burstcount;
	inout	[7:0]	hyperbus_data;
	output		hyperbus_chipselect_n;
	output		hyperbus_localreset_n;
	input		hyperbus_strobe_to_memory;
	input		hyperbus_shiftedstrobe_to_memory;
	output		hyperbus_strobe_from_memory;
	input		clk_clk;
	output		hbus_clock_outclk;
	input		reset_n_reset_n;
endmodule
