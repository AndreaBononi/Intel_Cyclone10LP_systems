// avs_hram_converter_TEST_advanced_avs_hram_converter.v

// This file was auto-generated from avs_hram_converter_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 22.1 917

`timescale 1 ps / 1 ps
module avs_hram_converter_TEST_advanced_avs_hram_converter (
		input  wire [22:0] avalon_slave_address,       //    avalon_slave.address
		input  wire        avalon_slave_read,          //                .read
		output wire [15:0] avalon_slave_readdata,      //                .readdata
		input  wire        avalon_slave_write,         //                .write
		input  wire [15:0] avalon_slave_writedata,     //                .writedata
		output wire        avalon_slave_waitrequest,   //                .waitrequest
		output wire        avalon_slave_readdatavalid, //                .readdatavalid
		input  wire [10:0] avalon_slave_burstcount,    //                .burstcount
		input  wire        clk_clk,                    //             clk.clk
		output wire        hyperbus_clock_outclk,      //  hyperbus_clock.outclk
		output wire        hyperbus_master_cs_n,       // hyperbus_master.cs_n
		inout  wire [7:0]  hyperbus_master_dq,         //                .dq
		output wire        hyperbus_master_reset_n,    //                .reset_n
		inout  wire        hyperbus_master_rwds,       //                .rwds
		input  wire        reset_reset_n               //           reset.reset_n
	);

	wire    avs_hram_mainconv_hyperbus_clkctrl_master_inclk; // avs_hram_mainconv:clk90 -> clkctrl:inclk
	wire    avs_hram_mainconv_hyperbus_clkctrl_master_ena;   // avs_hram_mainconv:hCK_enable -> clkctrl:ena
	wire    rst_controller_reset_out_reset;                  // rst_controller:reset_out -> avs_hram_mainconv:reset_n

	avs_hram_mainconv #(
		.drive_strength (3'b000)
	) avs_hram_mainconv (
		.clk               (clk_clk),                                         //                   clock.clk
		.reset_n           (~rst_controller_reset_out_reset),                 //                   reset.reset_n
		.avs_address       (avalon_slave_address),                            //            avalon_slave.address
		.avs_read          (avalon_slave_read),                               //                        .read
		.avs_readdata      (avalon_slave_readdata),                           //                        .readdata
		.avs_write         (avalon_slave_write),                              //                        .write
		.avs_writedata     (avalon_slave_writedata),                          //                        .writedata
		.avs_waitrequest   (avalon_slave_waitrequest),                        //                        .waitrequest
		.avs_readdatavalid (avalon_slave_readdatavalid),                      //                        .readdatavalid
		.avs_burstcount    (avalon_slave_burstcount),                         //                        .burstcount
		.hram_CS_n         (hyperbus_master_cs_n),                            //         hyperbus_master.cs_n
		.hram_DQ           (hyperbus_master_dq),                              //                        .dq
		.hram_RESET_n      (hyperbus_master_reset_n),                         //                        .reset_n
		.hram_RWDS         (hyperbus_master_rwds),                            //                        .rwds
		.clk90             (avs_hram_mainconv_hyperbus_clkctrl_master_inclk), // hyperbus_clkctrl_master.inclk
		.hCK_enable        (avs_hram_mainconv_hyperbus_clkctrl_master_ena)    //                        .ena
	);

	avs_hram_converter_TEST_advanced_avs_hram_converter_clkctrl clkctrl (
		.inclk  (avs_hram_mainconv_hyperbus_clkctrl_master_inclk), //  altclkctrl_input.inclk
		.ena    (avs_hram_mainconv_hyperbus_clkctrl_master_ena),   //                  .ena
		.outclk (hyperbus_clock_outclk)                            // altclkctrl_output.outclk
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                 // reset_in0.reset
		.clk            (clk_clk),                        //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_in1      (1'b0),                           // (terminated)
		.reset_req_in1  (1'b0),                           // (terminated)
		.reset_in2      (1'b0),                           // (terminated)
		.reset_req_in2  (1'b0),                           // (terminated)
		.reset_in3      (1'b0),                           // (terminated)
		.reset_req_in3  (1'b0),                           // (terminated)
		.reset_in4      (1'b0),                           // (terminated)
		.reset_req_in4  (1'b0),                           // (terminated)
		.reset_in5      (1'b0),                           // (terminated)
		.reset_req_in5  (1'b0),                           // (terminated)
		.reset_in6      (1'b0),                           // (terminated)
		.reset_req_in6  (1'b0),                           // (terminated)
		.reset_in7      (1'b0),                           // (terminated)
		.reset_req_in7  (1'b0),                           // (terminated)
		.reset_in8      (1'b0),                           // (terminated)
		.reset_req_in8  (1'b0),                           // (terminated)
		.reset_in9      (1'b0),                           // (terminated)
		.reset_req_in9  (1'b0),                           // (terminated)
		.reset_in10     (1'b0),                           // (terminated)
		.reset_req_in10 (1'b0),                           // (terminated)
		.reset_in11     (1'b0),                           // (terminated)
		.reset_req_in11 (1'b0),                           // (terminated)
		.reset_in12     (1'b0),                           // (terminated)
		.reset_req_in12 (1'b0),                           // (terminated)
		.reset_in13     (1'b0),                           // (terminated)
		.reset_req_in13 (1'b0),                           // (terminated)
		.reset_in14     (1'b0),                           // (terminated)
		.reset_req_in14 (1'b0),                           // (terminated)
		.reset_in15     (1'b0),                           // (terminated)
		.reset_req_in15 (1'b0)                            // (terminated)
	);

endmodule
