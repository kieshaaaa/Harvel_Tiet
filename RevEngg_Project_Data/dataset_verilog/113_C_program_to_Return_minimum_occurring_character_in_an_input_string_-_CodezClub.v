module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 string_r,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 8'd1;
parameter ap_ST_fsm_state2 = 8'd2;
parameter ap_ST_fsm_state3 = 8'd4;
parameter ap_ST_fsm_state4 = 8'd8;
parameter ap_ST_fsm_state5 = 8'd16;
parameter ap_ST_fsm_state6 = 8'd32;
parameter ap_ST_fsm_state7 = 8'd64;
parameter ap_ST_fsm_state8 = 8'd128;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [7:0] string_r;
output [7:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [7:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire ap_CS_fsm_state3;
wire [0:0] icmp_ln15_fu_101_p2;
reg [0:0] icmp_ln15_reg_128;
wire ap_CS_fsm_state7;
reg [7:0] frequency_address0;
reg frequency_ce0;
reg frequency_we0;
reg [31:0] frequency_d0;
wire [31:0] frequency_q0;
reg [7:0] frequency_address1;
reg frequency_ce1;
wire [31:0] frequency_q1;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_ap_ready;
wire [7:0] grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_frequency_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_frequency_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_frequency_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_frequency_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_ap_ready;
wire [7:0] grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_frequency_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_frequency_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_frequency_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_frequency_d0;
wire [7:0] grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_frequency_address1;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_frequency_ce1;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_ap_ready;
wire [7:0] grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_frequency_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_frequency_ce0;
wire [7:0] grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_frequency_address1;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_frequency_ce1;
wire [7:0] grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_min_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_min_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_ap_start_reg;
wire ap_CS_fsm_state4;
reg grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_ap_start_reg;
reg [7:0] ap_NS_fsm;
wire ap_NS_fsm_state5;
wire ap_CS_fsm_state6;
reg [7:0] min_loc_fu_40;
wire [63:0] zext_ln32_fu_112_p1;
wire ap_CS_fsm_state8;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
reg ap_ST_fsm_state6_blk;
wire ap_ST_fsm_state7_blk;
wire ap_ST_fsm_state8_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_ap_start_reg = 1'b0;
end
entry_point_frequency_RAM_AUTO_1R1W #(
 .DataWidth( 32 ),
 .AddressRange( 255 ),
 .AddressWidth( 8 ))
frequency_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(frequency_address0),
 .ce0(frequency_ce0),
 .we0(frequency_we0),
 .d0(frequency_d0),
 .q0(frequency_q0),
 .address1(frequency_address1),
 .ce1(frequency_ce1),
 .q1(frequency_q1)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_10_1 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_ap_ready),
 .frequency_address0(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_frequency_address0),
 .frequency_ce0(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_frequency_ce0),
 .frequency_we0(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_frequency_we0),
 .frequency_d0(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_frequency_d0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_15_2 grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_ap_ready),
 .frequency_address0(grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_frequency_address0),
 .frequency_ce0(grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_frequency_ce0),
 .frequency_we0(grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_frequency_we0),
 .frequency_d0(grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_frequency_d0),
 .frequency_address1(grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_frequency_address1),
 .frequency_ce1(grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_frequency_ce1),
 .frequency_q1(frequency_q1),
 .sext_ln18(string_r),
 .icmp_ln15(icmp_ln15_reg_128)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_22_3 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_ap_ready),
 .frequency_address0(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_frequency_address0),
 .frequency_ce0(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_frequency_ce0),
 .frequency_q0(frequency_q0),
 .frequency_address1(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_frequency_address1),
 .frequency_ce1(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_frequency_ce1),
 .frequency_q1(frequency_q1),
 .min_out(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_min_out),
 .min_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_min_out_ap_vld)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_NS_fsm_state5) & (1'b1 == ap_CS_fsm_state4))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 icmp_ln15_reg_128 <= icmp_ln15_fu_101_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state6) & (grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_min_out_ap_vld == 1'b1))) begin
 min_loc_fu_40 <= grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_min_out;
 end
end
always @ (*) begin
 if ((ap_start == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_ap_done == 1'b0)) begin
 ap_ST_fsm_state6_blk = 1'b1;
 end else begin
 ap_ST_fsm_state6_blk = 1'b0;
 end
end
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state8)) begin
 ap_done = 1'b1;
 end else begin
 ap_done = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state8)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 frequency_address0 = zext_ln32_fu_112_p1;
 end else if ((1'b1 == ap_CS_fsm_state6)) begin
 frequency_address0 = grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_frequency_address0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 frequency_address0 = grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_frequency_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 frequency_address0 = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_frequency_address0;
 end else begin
 frequency_address0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 frequency_address1 = grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_frequency_address1;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 frequency_address1 = grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_frequency_address1;
 end else begin
 frequency_address1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 frequency_ce0 = 1'b1;
 end else if ((1'b1 == ap_CS_fsm_state6)) begin
 frequency_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_frequency_ce0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 frequency_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_frequency_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 frequency_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_frequency_ce0;
 end else begin
 frequency_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 frequency_ce1 = grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_frequency_ce1;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 frequency_ce1 = grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_frequency_ce1;
 end else begin
 frequency_ce1 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 frequency_d0 = grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_frequency_d0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 frequency_d0 = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_frequency_d0;
 end else begin
 frequency_d0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 frequency_we0 = grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_frequency_we0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 frequency_we0 = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_frequency_we0;
 end else begin
 frequency_we0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state8)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 ap_ST_fsm_state6 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 end
 ap_ST_fsm_state7 : begin
 ap_NS_fsm = ap_ST_fsm_state8;
 end
 ap_ST_fsm_state8 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_NS_fsm_state5 = ap_NS_fsm[32'd4];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_81_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_15_2_fu_87_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_95_ap_start_reg;
assign icmp_ln15_fu_101_p2 = ((string_r == 8'd0) ? 1'b1 : 1'b0);
assign temptemp1 = min_loc_fu_40;
assign temptemp2 = frequency_q0;
assign zext_ln32_fu_112_p1 = min_loc_fu_40;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_10_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 frequency_address0,
 frequency_ce0,
 frequency_we0,
 frequency_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [7:0] frequency_address0;
output frequency_ce0;
output frequency_we0;
output [31:0] frequency_d0;
reg ap_idle;
reg frequency_ce0;
reg frequency_we0;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln10_fu_54_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] i_cast_fu_66_p1;
reg [7:0] i_fu_28;
wire [7:0] add_ln10_fu_60_p2;
wire ap_loop_init;
reg [7:0] ap_sig_allocacmp_i_2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(ap_start),
 .ap_ready(ap_ready),
 .ap_done(ap_done),
 .ap_start_int(ap_start_int),
 .ap_loop_init(ap_loop_init),
 .ap_ready_int(ap_ready_int),
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
 .ap_loop_exit_done(ap_done_int),
 .ap_continue_int(ap_continue_int),
 .ap_done_int(ap_done_int)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_done_reg <= 1'b0;
 end else begin
 if ((ap_continue_int == 1'b1)) begin
 ap_done_reg <= 1'b0;
 end else if (((ap_start_int == 1'b1) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 if ((icmp_ln10_fu_54_p2 == 1'd0)) begin
 i_fu_28 <= add_ln10_fu_60_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_28 <= 8'd0;
 end
 end
end
always @ (*) begin
 if ((ap_start_int == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln10_fu_54_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_i_2 = 8'd0;
 end else begin
 ap_sig_allocacmp_i_2 = i_fu_28;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 frequency_ce0 = 1'b1;
 end else begin
 frequency_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln10_fu_54_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 frequency_we0 = 1'b1;
 end else begin
 frequency_we0 = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln10_fu_60_p2 = (ap_sig_allocacmp_i_2 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign frequency_address0 = i_cast_fu_66_p1;
assign frequency_d0 = 32'd0;
assign i_cast_fu_66_p1 = ap_sig_allocacmp_i_2;
assign icmp_ln10_fu_54_p2 = ((ap_sig_allocacmp_i_2 == 8'd255) ? 1'b1 : 1'b0);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_15_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 frequency_address0,
 frequency_ce0,
 frequency_we0,
 frequency_d0,
 frequency_address1,
 frequency_ce1,
 frequency_q1,
 sext_ln18,
 icmp_ln15
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [7:0] frequency_address0;
output frequency_ce0;
output frequency_we0;
output [31:0] frequency_d0;
output [7:0] frequency_address1;
output frequency_ce1;
input [31:0] frequency_q1;
input [7:0] sext_ln18;
input [0:0] icmp_ln15;
reg ap_idle;
reg frequency_ce0;
reg frequency_we0;
reg frequency_ce1;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_enable_reg_pp0_iter2;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_state3_pp0_stage0_iter2;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln15_read_read_fu_36_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
wire [0:0] icmp_ln15_read_reg_127;
wire signed [63:0] sext_ln18_cast_fu_65_p1;
reg signed [63:0] sext_ln18_cast_reg_131;
reg [7:0] frequency_addr_reg_138;
wire [0:0] addr_cmp_fu_82_p2;
reg [0:0] addr_cmp_reg_144;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_block_pp0_stage0;
reg [63:0] reuse_addr_reg_fu_28;
wire ap_loop_init;
reg [31:0] reuse_reg_fu_32;
wire [31:0] add_ln18_fu_101_p2;
wire [31:0] reuse_select_fu_94_p3;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg ap_loop_exit_ready_pp0_iter1_reg;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(ap_start),
 .ap_ready(ap_ready),
 .ap_done(ap_done),
 .ap_start_int(ap_start_int),
 .ap_loop_init(ap_loop_init),
 .ap_ready_int(ap_ready_int),
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
 .ap_loop_exit_done(ap_done_int),
 .ap_continue_int(ap_continue_int),
 .ap_done_int(ap_done_int)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_done_reg <= 1'b0;
 end else begin
 if ((ap_continue_int == 1'b1)) begin
 ap_done_reg <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_enable_reg_pp0_iter1 <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter2 <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
 ap_enable_reg_pp0_iter2 <= 1'b0;
 end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 reuse_addr_reg_fu_28 <= 64'd18446744073709551615;
 end else if (((icmp_ln15_read_reg_127 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 reuse_addr_reg_fu_28 <= sext_ln18_cast_reg_131;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 reuse_reg_fu_32 <= 32'd0;
 end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
 reuse_reg_fu_32 <= add_ln18_fu_101_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln15_read_reg_127 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 addr_cmp_reg_144 <= addr_cmp_fu_82_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
 frequency_addr_reg_138 <= sext_ln18_cast_reg_131;
 sext_ln18_cast_reg_131 <= sext_ln18_cast_fu_65_p1;
 end
end
always @ (*) begin
 if (((icmp_ln15_read_read_fu_36_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln15_read_reg_127 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter1_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter1_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
 ap_idle_pp0 = 1'b1;
 end else begin
 ap_idle_pp0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
 frequency_ce0 = 1'b1;
 end else begin
 frequency_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 frequency_ce1 = 1'b1;
 end else begin
 frequency_ce1 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
 frequency_we0 = 1'b1;
 end else begin
 frequency_we0 = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_pp0_stage0 : begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln18_fu_101_p2 = (reuse_select_fu_94_p3 + 32'd1);
assign addr_cmp_fu_82_p2 = ((reuse_addr_reg_fu_28 == sext_ln18_cast_reg_131) ? 1'b1 : 1'b0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign frequency_address0 = frequency_addr_reg_138;
assign frequency_address1 = sext_ln18_cast_reg_131;
assign frequency_d0 = (reuse_select_fu_94_p3 + 32'd1);
assign icmp_ln15_read_read_fu_36_p2 = icmp_ln15;
assign icmp_ln15_read_reg_127 = icmp_ln15;
assign reuse_select_fu_94_p3 = ((addr_cmp_reg_144[0:0] == 1'b1) ? reuse_reg_fu_32 : frequency_q1);
assign sext_ln18_cast_fu_65_p1 = $signed(sext_ln18);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_22_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 frequency_address0,
 frequency_ce0,
 frequency_q0,
 frequency_address1,
 frequency_ce1,
 frequency_q1,
 min_out,
 min_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [7:0] frequency_address0;
output frequency_ce0;
input [31:0] frequency_q0;
output [7:0] frequency_address1;
output frequency_ce1;
input [31:0] frequency_q1;
output [7:0] min_out;
output min_out_ap_vld;
reg ap_idle;
reg frequency_ce0;
reg frequency_ce1;
reg min_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_enable_reg_pp0_iter2;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_state3_pp0_stage0_iter2;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln22_fu_93_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg [31:0] min_2_reg_180;
reg [7:0] i_1_reg_186;
wire [63:0] trunc_ln26_cast_fu_105_p1;
wire ap_block_pp0_stage0;
wire [63:0] zext_ln26_fu_110_p1;
reg [31:0] min_fu_32;
wire [31:0] min_3_fu_154_p3;
reg [31:0] ap_sig_allocacmp_min_2;
wire ap_loop_init;
reg [7:0] i_fu_36;
wire [7:0] add_ln22_fu_99_p2;
wire ap_block_pp0_stage0_01001;
wire [0:0] icmp_ln26_fu_126_p2;
wire [0:0] icmp_ln26_1_fu_132_p2;
wire [0:0] or_ln26_fu_138_p2;
wire [31:0] zext_ln26_1_fu_144_p1;
wire [0:0] icmp_ln24_fu_120_p2;
wire [31:0] select_ln26_fu_147_p3;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(ap_start),
 .ap_ready(ap_ready),
 .ap_done(ap_done),
 .ap_start_int(ap_start_int),
 .ap_loop_init(ap_loop_init),
 .ap_ready_int(ap_ready_int),
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
 .ap_loop_exit_done(ap_done_int),
 .ap_continue_int(ap_continue_int),
 .ap_done_int(ap_done_int)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_done_reg <= 1'b0;
 end else begin
 if ((ap_continue_int == 1'b1)) begin
 ap_done_reg <= 1'b0;
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_enable_reg_pp0_iter1 <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter2 <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
 ap_enable_reg_pp0_iter2 <= 1'b0;
 end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_fu_36 <= 8'd0;
 end else if (((icmp_ln22_fu_93_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_fu_36 <= add_ln22_fu_99_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 min_fu_32 <= 32'd0;
 end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
 min_fu_32 <= min_3_fu_154_p3;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 i_1_reg_186 <= i_fu_36;
 min_2_reg_180 <= ap_sig_allocacmp_min_2;
 end
end
always @ (*) begin
 if (((icmp_ln22_fu_93_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter1_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter1_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
 ap_idle_pp0 = 1'b1;
 end else begin
 ap_idle_pp0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
 ap_sig_allocacmp_min_2 = min_3_fu_154_p3;
 end else begin
 ap_sig_allocacmp_min_2 = min_fu_32;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 frequency_ce0 = 1'b1;
 end else begin
 frequency_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 frequency_ce1 = 1'b1;
 end else begin
 frequency_ce1 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln22_fu_93_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 min_out_ap_vld = 1'b1;
 end else begin
 min_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_pp0_stage0 : begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln22_fu_99_p2 = (i_fu_36 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign frequency_address0 = zext_ln26_fu_110_p1;
assign frequency_address1 = trunc_ln26_cast_fu_105_p1;
assign icmp_ln22_fu_93_p2 = ((i_fu_36 == 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_120_p2 = ((frequency_q1 == 32'd0) ? 1'b1 : 1'b0);
assign icmp_ln26_1_fu_132_p2 = (($signed(frequency_q1) < $signed(frequency_q0)) ? 1'b1 : 1'b0);
assign icmp_ln26_fu_126_p2 = ((frequency_q0 == 32'd0) ? 1'b1 : 1'b0);
assign min_3_fu_154_p3 = ((icmp_ln24_fu_120_p2[0:0] == 1'b1) ? min_2_reg_180 : select_ln26_fu_147_p3);
assign min_out = ap_sig_allocacmp_min_2[7:0];
assign or_ln26_fu_138_p2 = (icmp_ln26_fu_126_p2 | icmp_ln26_1_fu_132_p2);
assign select_ln26_fu_147_p3 = ((or_ln26_fu_138_p2[0:0] == 1'b1) ? zext_ln26_1_fu_144_p1 : min_2_reg_180);
assign trunc_ln26_cast_fu_105_p1 = i_fu_36;
assign zext_ln26_1_fu_144_p1 = i_1_reg_186;
assign zext_ln26_fu_110_p1 = ap_sig_allocacmp_min_2;
endmodule
module entry_point_flow_control_loop_pipe_sequential_init(
 ap_clk,
 ap_rst,
 ap_start,
 ap_ready,
 ap_done,
 ap_start_int,
 ap_ready_int,
 ap_done_int,
 ap_continue_int,
 ap_loop_init,
 ap_loop_exit_ready,
 ap_loop_exit_done
);
input ap_clk;
input ap_rst;
input ap_start;
output ap_ready;
output ap_done;
output ap_start_int;
input ap_ready_int;
input ap_done_int;
output ap_continue_int;
output ap_loop_init;
wire ap_loop_init;
reg ap_loop_init_int;
reg ap_done;
reg ap_done_cache;
input ap_loop_exit_ready;
input ap_loop_exit_done;
initial begin
#0 ap_loop_init_int = 1'b1;
#0 ap_done_cache = 1'b0;
end
assign ap_start_int = ap_start;
assign ap_continue_int = 1'b1;
assign ap_ready = ap_loop_exit_ready;
always @ (posedge ap_clk)
begin
 if (ap_rst == 1'b1) begin
 ap_loop_init_int <= 1'b1;
 end else if(ap_loop_exit_done == 1'b1) begin
 ap_loop_init_int <= 1'b1;
 end else if(ap_ready_int == 1'b1) begin
 ap_loop_init_int <= 1'b0;
 end
end
assign ap_loop_init = ap_loop_init_int & ap_start;
always @(posedge ap_clk)
begin
 if (ap_rst == 1'b1) begin
 ap_done_cache <= 1'b0;
 end else if (ap_done_int == 1'b1) begin
 ap_done_cache <= 1'b1;
 end else if (ap_start_int == 1'b1) begin
 ap_done_cache <= 1'b0;
 end
end
always @(*)
begin
 if ((ap_done_int == 1'b1) || ((ap_done_cache == 1'b1) && (ap_start_int == 1'b0))) begin
 ap_done = 1'b1;
 end else begin
 ap_done = 1'b0;
 end
end
endmodule
module entry_point_frequency_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 address1, ce1,
 q1, 
 reset, clk);
parameter DataWidth = 32;
parameter AddressWidth = 8;
parameter AddressRange = 255;
input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input we0; 
output reg[DataWidth-1:0] q0; 
input[AddressWidth-1:0] address1;
input ce1;
output reg[DataWidth-1:0] q1; 
input reset;
input clk;
(* ram_style = "auto" *)reg [DataWidth-1:0] ram[0:AddressRange-1];
always @(posedge clk) 
begin 
 if (ce0) begin
 if (we0) 
 ram[address0] <= d0; 
 q0 <= ram[address0];
 end
end 
always @(posedge clk) 
begin 
 if (ce1) begin
 q1 <= ram[address1];
 end
end 
endmodule
