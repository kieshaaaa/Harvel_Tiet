module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 rad,
 h,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 23'd1;
parameter ap_ST_fsm_state2 = 23'd2;
parameter ap_ST_fsm_state3 = 23'd4;
parameter ap_ST_fsm_state4 = 23'd8;
parameter ap_ST_fsm_state5 = 23'd16;
parameter ap_ST_fsm_state6 = 23'd32;
parameter ap_ST_fsm_state7 = 23'd64;
parameter ap_ST_fsm_state8 = 23'd128;
parameter ap_ST_fsm_state9 = 23'd256;
parameter ap_ST_fsm_state10 = 23'd512;
parameter ap_ST_fsm_state11 = 23'd1024;
parameter ap_ST_fsm_state12 = 23'd2048;
parameter ap_ST_fsm_state13 = 23'd4096;
parameter ap_ST_fsm_state14 = 23'd8192;
parameter ap_ST_fsm_state15 = 23'd16384;
parameter ap_ST_fsm_state16 = 23'd32768;
parameter ap_ST_fsm_state17 = 23'd65536;
parameter ap_ST_fsm_state18 = 23'd131072;
parameter ap_ST_fsm_state19 = 23'd262144;
parameter ap_ST_fsm_state20 = 23'd524288;
parameter ap_ST_fsm_state21 = 23'd1048576;
parameter ap_ST_fsm_state22 = 23'd2097152;
parameter ap_ST_fsm_state23 = 23'd4194304;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] rad;
input [31:0] h;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [22:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [63:0] grp_fu_71_p2;
reg [63:0] reg_81;
wire ap_CS_fsm_state18;
wire ap_CS_fsm_state22;
wire [31:0] bitcast_ln9_fu_87_p1;
reg [31:0] bitcast_ln9_reg_104;
wire [31:0] bitcast_ln9_1_fu_93_p1;
wire [31:0] grp_fu_53_p2;
reg [31:0] mul2_reg_117;
wire ap_CS_fsm_state2;
wire [31:0] grp_fu_57_p2;
reg [31:0] mul3_reg_122;
wire [31:0] grp_fu_49_p2;
reg [31:0] add_reg_127;
wire ap_CS_fsm_state4;
wire [63:0] grp_fu_64_p1;
reg [63:0] conv4_reg_132;
wire ap_CS_fsm_state5;
reg [63:0] conv_reg_137;
wire ap_CS_fsm_state14;
wire [63:0] grp_fu_76_p2;
reg [63:0] tmp_reg_143;
wire ap_CS_fsm_state15;
wire [63:0] grp_fu_67_p2;
reg [63:0] add5_reg_148;
wire ap_CS_fsm_state23;
wire ap_CS_fsm_state3;
reg [31:0] grp_fu_64_p0;
wire ap_CS_fsm_state16;
reg [63:0] grp_fu_71_p0;
reg [63:0] grp_fu_71_p1;
wire ap_CS_fsm_state19;
wire ap_CS_fsm_state6;
wire [31:0] surfaceArea_fu_61_p1;
reg [22:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ST_fsm_state6_blk;
wire ap_ST_fsm_state7_blk;
wire ap_ST_fsm_state8_blk;
wire ap_ST_fsm_state9_blk;
wire ap_ST_fsm_state10_blk;
wire ap_ST_fsm_state11_blk;
wire ap_ST_fsm_state12_blk;
wire ap_ST_fsm_state13_blk;
wire ap_ST_fsm_state14_blk;
wire ap_ST_fsm_state15_blk;
wire ap_ST_fsm_state16_blk;
wire ap_ST_fsm_state17_blk;
wire ap_ST_fsm_state18_blk;
wire ap_ST_fsm_state19_blk;
wire ap_ST_fsm_state20_blk;
wire ap_ST_fsm_state21_blk;
wire ap_ST_fsm_state22_blk;
wire ap_ST_fsm_state23_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 23'd1;
end
entry_point_fadd_32ns_32ns_32_2_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_2_full_dsp_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(mul2_reg_117),
 .din1(mul3_reg_122),
 .ce(1'b1),
 .dout(grp_fu_49_p2)
);
entry_point_fmul_32ns_32ns_32_2_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U2(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(bitcast_ln9_fu_87_p1),
 .din1(bitcast_ln9_fu_87_p1),
 .ce(1'b1),
 .dout(grp_fu_53_p2)
);
entry_point_fmul_32ns_32ns_32_2_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U3(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(bitcast_ln9_1_fu_93_p1),
 .din1(bitcast_ln9_1_fu_93_p1),
 .ce(1'b1),
 .dout(grp_fu_57_p2)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U4(
 .din0(reg_81),
 .dout(surfaceArea_fu_61_p1)
);
entry_point_fpext_32ns_64_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
fpext_32ns_64_1_no_dsp_1_U5(
 .din0(grp_fu_64_p0),
 .dout(grp_fu_64_p1)
);
entry_point_dadd_64ns_64ns_64_3_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 3 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dadd_64ns_64ns_64_3_full_dsp_1_U6(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(conv_reg_137),
 .din1(tmp_reg_143),
 .ce(1'b1),
 .dout(grp_fu_67_p2)
);
entry_point_dmul_64ns_64ns_64_4_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dmul_64ns_64ns_64_4_max_dsp_1_U7(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_71_p0),
 .din1(grp_fu_71_p1),
 .ce(1'b1),
 .dout(grp_fu_71_p2)
);
entry_point_dsqrt_64ns_64ns_64_10_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 10 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_10_no_dsp_1_U8(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(64'd0),
 .din1(conv4_reg_132),
 .ce(1'b1),
 .dout(grp_fu_76_p2)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state18)) begin
 add5_reg_148 <= grp_fu_67_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 add_reg_127 <= grp_fu_49_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 bitcast_ln9_reg_104 <= bitcast_ln9_fu_87_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 conv4_reg_132 <= grp_fu_64_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
 conv_reg_137 <= grp_fu_64_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 mul2_reg_117 <= grp_fu_53_p2;
 mul3_reg_122 <= grp_fu_57_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18))) begin
 reg_81 <= grp_fu_71_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state15)) begin
 tmp_reg_143 <= grp_fu_76_p2;
 end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
 if ((ap_start == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state23)) begin
 ap_done = 1'b1;
 end else begin
 ap_done = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state23)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
 grp_fu_64_p0 = bitcast_ln9_reg_104;
 end else if ((1'b1 == ap_CS_fsm_state5)) begin
 grp_fu_64_p0 = add_reg_127;
 end else begin
 grp_fu_64_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state19)) begin
 grp_fu_71_p0 = reg_81;
 end else if ((1'b1 == ap_CS_fsm_state15)) begin
 grp_fu_71_p0 = conv_reg_137;
 end else begin
 grp_fu_71_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state19)) begin
 grp_fu_71_p1 = add5_reg_148;
 end else if ((1'b1 == ap_CS_fsm_state15)) begin
 grp_fu_71_p1 = 64'd4614256650576692846;
 end else begin
 grp_fu_71_p1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state23)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 ap_ST_fsm_state6 : begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end
 ap_ST_fsm_state7 : begin
 ap_NS_fsm = ap_ST_fsm_state8;
 end
 ap_ST_fsm_state8 : begin
 ap_NS_fsm = ap_ST_fsm_state9;
 end
 ap_ST_fsm_state9 : begin
 ap_NS_fsm = ap_ST_fsm_state10;
 end
 ap_ST_fsm_state10 : begin
 ap_NS_fsm = ap_ST_fsm_state11;
 end
 ap_ST_fsm_state11 : begin
 ap_NS_fsm = ap_ST_fsm_state12;
 end
 ap_ST_fsm_state12 : begin
 ap_NS_fsm = ap_ST_fsm_state13;
 end
 ap_ST_fsm_state13 : begin
 ap_NS_fsm = ap_ST_fsm_state14;
 end
 ap_ST_fsm_state14 : begin
 ap_NS_fsm = ap_ST_fsm_state15;
 end
 ap_ST_fsm_state15 : begin
 ap_NS_fsm = ap_ST_fsm_state16;
 end
 ap_ST_fsm_state16 : begin
 ap_NS_fsm = ap_ST_fsm_state17;
 end
 ap_ST_fsm_state17 : begin
 ap_NS_fsm = ap_ST_fsm_state18;
 end
 ap_ST_fsm_state18 : begin
 ap_NS_fsm = ap_ST_fsm_state19;
 end
 ap_ST_fsm_state19 : begin
 ap_NS_fsm = ap_ST_fsm_state20;
 end
 ap_ST_fsm_state20 : begin
 ap_NS_fsm = ap_ST_fsm_state21;
 end
 ap_ST_fsm_state21 : begin
 ap_NS_fsm = ap_ST_fsm_state22;
 end
 ap_ST_fsm_state22 : begin
 ap_NS_fsm = ap_ST_fsm_state23;
 end
 ap_ST_fsm_state23 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_return = 32'd0;
assign bitcast_ln9_1_fu_93_p1 = h;
assign bitcast_ln9_fu_87_p1 = rad;
assign temptemp1 = surfaceArea_fu_61_p1;
endmodule
module entry_point_dadd_64ns_64ns_64_3_full_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 3,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 dout_WIDTH = 32
)(
 input wire clk,
 input wire reset,
 input wire ce,
 input wire [din0_WIDTH-1:0] din0,
 input wire [din1_WIDTH-1:0] din1,
 output wire [dout_WIDTH-1:0] dout
);
wire aclk;
wire aclken;
wire a_tvalid;
wire [din0_WIDTH-1:0] a_tdata;
wire b_tvalid;
wire [din1_WIDTH-1:0] b_tdata;
wire r_tvalid;
wire [dout_WIDTH-1:0] r_tdata;
reg [din0_WIDTH-1:0] din0_buf1;
reg [din1_WIDTH-1:0] din1_buf1;
reg ce_r;
wire [dout_WIDTH-1:0] dout_i;
reg [dout_WIDTH-1:0] dout_r;
                                                                                                                                                                                                                                                                                                                                            assign aclk = clk;
assign aclken = ce_r;
assign a_tvalid = 1'b1;
assign a_tdata = din0_buf1;
assign b_tvalid = 1'b1;
assign b_tdata = din1_buf1;
assign dout_i = r_tdata;
always @(posedge clk) begin
 if (ce) begin
 din0_buf1 <= din0;
 din1_buf1 <= din1;
 end
end
always @ (posedge clk) begin
 ce_r <= ce;
end
always @ (posedge clk) begin
 if (ce_r) begin
 dout_r <= dout_i;
 end
end
assign dout = ce_r?dout_i:dout_r;
endmodule
module entry_point_dmul_64ns_64ns_64_4_max_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 3,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 dout_WIDTH = 32
)(
 input wire clk,
 input wire reset,
 input wire ce,
 input wire [din0_WIDTH-1:0] din0,
 input wire [din1_WIDTH-1:0] din1,
 output wire [dout_WIDTH-1:0] dout
);
wire aclk;
wire aclken;
wire a_tvalid;
wire [din0_WIDTH-1:0] a_tdata;
wire b_tvalid;
wire [din1_WIDTH-1:0] b_tdata;
wire r_tvalid;
wire [dout_WIDTH-1:0] r_tdata;
reg [din0_WIDTH-1:0] din0_buf1;
reg [din1_WIDTH-1:0] din1_buf1;
reg ce_r;
wire [dout_WIDTH-1:0] dout_i;
reg [dout_WIDTH-1:0] dout_r;
                                                                                                                                                                                                                                                                                                                                          assign aclk = clk;
assign aclken = ce_r;
assign a_tvalid = 1'b1;
assign a_tdata = din0_buf1;
assign b_tvalid = 1'b1;
assign b_tdata = din1_buf1;
assign dout_i = r_tdata;
always @(posedge clk) begin
 if (ce) begin
 din0_buf1 <= din0;
 din1_buf1 <= din1;
 end
end
always @ (posedge clk) begin
 ce_r <= ce;
end
always @ (posedge clk) begin
 if (ce_r) begin
 dout_r <= dout_i;
 end
end
assign dout = ce_r?dout_i:dout_r;
endmodule
module entry_point_dsqrt_64ns_64ns_64_10_no_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 3,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 dout_WIDTH = 32
)(
 input wire clk,
 input wire reset,
 input wire ce,
 input wire [din0_WIDTH-1:0] din0,
 input wire [din1_WIDTH-1:0] din1,
 output wire [dout_WIDTH-1:0] dout
);
wire aclk;
wire aclken;
wire a_tvalid;
wire [din0_WIDTH-1:0] a_tdata;
wire r_tvalid;
wire [dout_WIDTH-1:0] r_tdata;
reg [din1_WIDTH-1:0] din1_buf1;
reg ce_r;
wire [dout_WIDTH-1:0] dout_i;
reg [dout_WIDTH-1:0] dout_r;
                                                                                                                                                                                                                                                                              assign aclk = clk;
assign aclken = ce_r;
assign a_tvalid = 1'b1;
assign a_tdata = din1_buf1;
assign dout_i = r_tdata;
always @(posedge clk) begin
 if (ce) begin
 din1_buf1 <= din1;
 end
end
always @ (posedge clk) begin
 ce_r <= ce;
end
always @ (posedge clk) begin
 if (ce_r) begin
 dout_r <= dout_i;
 end
end
assign dout = ce_r?dout_i:dout_r;
endmodule
module entry_point_fadd_32ns_32ns_32_2_full_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 2,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 dout_WIDTH = 32
)(
 input wire clk,
 input wire reset,
 input wire ce,
 input wire [din0_WIDTH-1:0] din0,
 input wire [din1_WIDTH-1:0] din1,
 output wire [dout_WIDTH-1:0] dout
);
wire a_tvalid;
wire [31:0] a_tdata;
wire b_tvalid;
wire [31:0] b_tdata;
wire r_tvalid;
wire [31:0] r_tdata;
reg [din0_WIDTH-1:0] din0_buf1;
reg [din1_WIDTH-1:0] din1_buf1;
reg ce_r;
wire [dout_WIDTH-1:0] dout_i;
reg [dout_WIDTH-1:0] dout_r;
                                                                                                                                                                                                                                                                                                      assign a_tvalid = 1'b1;
assign a_tdata = din0_buf1;
assign b_tvalid = 1'b1;
assign b_tdata = din1_buf1;
assign dout_i = r_tdata;
always @(posedge clk) begin
 if (ce) begin
 din0_buf1 <= din0;
 din1_buf1 <= din1;
 end
end
always @ (posedge clk) begin
 ce_r <= ce;
end
always @ (posedge clk) begin
 if (ce_r) begin
 dout_r <= dout_i;
 end
end
assign dout = ce_r?dout_i:dout_r;
endmodule
module entry_point_fmul_32ns_32ns_32_2_max_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 2,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 dout_WIDTH = 32
)(
 input wire clk,
 input wire reset,
 input wire ce,
 input wire [din0_WIDTH-1:0] din0,
 input wire [din1_WIDTH-1:0] din1,
 output wire [dout_WIDTH-1:0] dout
);
wire a_tvalid;
wire [31:0] a_tdata;
wire b_tvalid;
wire [31:0] b_tdata;
wire r_tvalid;
wire [31:0] r_tdata;
reg [din0_WIDTH-1:0] din0_buf1;
reg [din1_WIDTH-1:0] din1_buf1;
reg ce_r;
wire [dout_WIDTH-1:0] dout_i;
reg [dout_WIDTH-1:0] dout_r;
                                                                                                                                                                                                                                                                                                    assign a_tvalid = 1'b1;
assign a_tdata = din0_buf1;
assign b_tvalid = 1'b1;
assign b_tdata = din1_buf1;
assign dout_i = r_tdata;
always @(posedge clk) begin
 if (ce) begin
 din0_buf1 <= din0;
 din1_buf1 <= din1;
 end
end
always @ (posedge clk) begin
 ce_r <= ce;
end
always @ (posedge clk) begin
 if (ce_r) begin
 dout_r <= dout_i;
 end
end
assign dout = ce_r?dout_i:dout_r;
endmodule
module entry_point_fpext_32ns_64_1_no_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 1,
 din0_WIDTH = 32,
 dout_WIDTH = 32
)(
 input wire [din0_WIDTH-1:0] din0,
 output wire [dout_WIDTH-1:0] dout
);
wire a_tvalid;
wire [din0_WIDTH-1:0] a_tdata;
wire r_tvalid;
wire [dout_WIDTH:0] r_tdata;
                                                                                                                                                                                                                            assign a_tvalid = 1'b1;
assign a_tdata = din0;
assign dout = r_tdata;
endmodule
module entry_point_fptrunc_64ns_32_1_no_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 1,
 din0_WIDTH = 32,
 dout_WIDTH = 32
)(
 input wire [din0_WIDTH-1:0] din0,
 output wire [dout_WIDTH-1:0] dout
);
wire a_tvalid;
wire [din0_WIDTH-1:0] a_tdata;
wire r_tvalid;
wire [dout_WIDTH:0] r_tdata;
                                                                                                                                                                                                                                assign a_tvalid = 1'b1;
assign a_tdata = din0;
assign dout = r_tdata;
endmodule
