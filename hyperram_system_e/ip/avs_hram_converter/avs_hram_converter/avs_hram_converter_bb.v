
module avs_hram_converter (
	clk_clk,
	hyperbus_clock_outclk,
	hyperbus_master_chipselect,
	hyperbus_master_data,
	hyperbus_master_memory_reset,
	hyperbus_master_strobe,
	reset_reset_n,
	avalon_slave_address,
	avalon_slave_read,
	avalon_slave_readdata,
	avalon_slave_write,
	avalon_slave_writedata,
	avalon_slave_waitrequest,
	avalon_slave_readdatavalid,
	avalon_slave_burstcount);	

	input		clk_clk;
	output		hyperbus_clock_outclk;
	output		hyperbus_master_chipselect;
	inout	[7:0]	hyperbus_master_data;
	output		hyperbus_master_memory_reset;
	inout		hyperbus_master_strobe;
	input		reset_reset_n;
	input	[31:0]	avalon_slave_address;
	input		avalon_slave_read;
	output	[15:0]	avalon_slave_readdata;
	input		avalon_slave_write;
	input	[15:0]	avalon_slave_writedata;
	output		avalon_slave_waitrequest;
	output		avalon_slave_readdatavalid;
	input	[10:0]	avalon_slave_burstcount;
endmodule
