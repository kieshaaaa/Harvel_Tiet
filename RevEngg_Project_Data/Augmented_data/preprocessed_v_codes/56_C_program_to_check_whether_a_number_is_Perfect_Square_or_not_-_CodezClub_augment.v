module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 number,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 17'd1;
parameter ap_ST_fsm_state2 = 17'd2;
parameter ap_ST_fsm_state3 = 17'd4;
parameter ap_ST_fsm_state4 = 17'd8;
parameter ap_ST_fsm_state5 = 17'd16;
parameter ap_ST_fsm_state6 = 17'd32;
parameter ap_ST_fsm_state7 = 17'd64;
parameter ap_ST_fsm_state8 = 17'd128;
parameter ap_ST_fsm_state9 = 17'd256;
parameter ap_ST_fsm_state10 = 17'd512;
parameter ap_ST_fsm_state11 = 17'd1024;
parameter ap_ST_fsm_state12 = 17'd2048;
parameter ap_ST_fsm_state13 = 17'd4096;
parameter ap_ST_fsm_state14 = 17'd8192;
parameter ap_ST_fsm_state15 = 17'd16384;
parameter ap_ST_fsm_state16 = 17'd32768;
parameter ap_ST_fsm_state17 = 17'd65536;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] number;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [16:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [31:0] number_read_reg_311;
wire [63:0] grp_fu_94_p1;
reg [63:0] conv_reg_318;
wire ap_CS_fsm_state2;
wire [63:0] grp_fu_98_p2;
reg [63:0] tmp_reg_323;
wire ap_CS_fsm_state12;
wire [31:0] floatPart_fu_87_p1;
reg [31:0] floatPart_reg_328;
wire ap_CS_fsm_state13;
wire [31:0] result_fu_230_p3;
reg [31:0] result_reg_334;
wire ap_CS_fsm_state14;
wire [0:0] icmp_ln10_2_fu_248_p2;
reg [0:0] icmp_ln10_2_reg_339;
wire [0:0] icmp_ln10_3_fu_254_p2;
reg [0:0] icmp_ln10_3_reg_344;
wire [31:0] grp_fu_84_p1;
reg [31:0] conv3_reg_349;
wire ap_CS_fsm_state16;
wire ap_CS_fsm_state17;
wire [0:0] and_ln10_1_fu_305_p2;
wire ap_CS_fsm_state15;
wire ap_CS_fsm_state3;
wire [31:0] data_fu_103_p1;
wire [22:0] trunc_ln342_fu_122_p1;
wire [24:0] mantissa_fu_126_p4;
wire [7:0] xs_exp_fu_114_p3;
wire [8:0] zext_ln317_fu_140_p1;
wire [8:0] add_ln317_fu_144_p2;
wire [7:0] sub_ln18_fu_158_p2;
wire [0:0] tmp_7_fu_150_p3;
wire signed [8:0] sext_ln18_fu_164_p1;
wire [8:0] select_ln18_fu_168_p3;
wire signed [31:0] sext_ln18_1_fu_176_p1;
wire [78:0] zext_ln15_fu_136_p1;
wire [78:0] zext_ln18_fu_180_p1;
wire [78:0] lshr_ln18_fu_184_p2;
wire [78:0] shl_ln18_fu_190_p2;
wire [31:0] tmp_5_fu_196_p4;
wire [31:0] tmp_6_fu_206_p4;
wire [31:0] val_fu_216_p3;
wire [0:0] xs_sign_fu_106_p3;
wire [31:0] result_2_fu_224_p2;
wire [7:0] tmp_2_fu_238_p4;
wire [31:0] bitcast_ln10_fu_260_p1;
wire [7:0] tmp_1_fu_263_p4;
wire [22:0] trunc_ln10_fu_273_p1;
wire [0:0] icmp_ln10_1_fu_283_p2;
wire [0:0] icmp_ln10_fu_277_p2;
wire [0:0] or_ln10_fu_289_p2;
wire [0:0] or_ln10_1_fu_295_p2;
wire [0:0] and_ln10_fu_299_p2;
wire [0:0] tmp_3_fu_90_p2;
reg [16:0] ap_NS_fsm;
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
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
end
entry_point_sitofp_32ns_32_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
sitofp_32ns_32_2_no_dsp_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(result_reg_334),
 .ce(1'b1),
 .dout(grp_fu_84_p1)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U2(
 .din0(tmp_reg_323),
 .dout(floatPart_fu_87_p1)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U3(
 .din0(conv3_reg_349),
 .din1(floatPart_reg_328),
 .opcode(5'd1),
 .dout(tmp_3_fu_90_p2)
);
entry_point_sitodp_32ns_64_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
sitodp_32ns_64_2_no_dsp_1_U4(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(number),
 .ce(1'b1),
 .dout(grp_fu_94_p1)
);
entry_point_dsqrt_64ns_64ns_64_10_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 10 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_10_no_dsp_1_U5(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(64'd0),
 .din1(conv_reg_318),
 .ce(1'b1),
 .dout(grp_fu_98_p2)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state16)) begin
 conv3_reg_349 <= grp_fu_84_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 conv_reg_318 <= grp_fu_94_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state13)) begin
 floatPart_reg_328 <= floatPart_fu_87_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
 icmp_ln10_2_reg_339 <= icmp_ln10_2_fu_248_p2;
 icmp_ln10_3_reg_344 <= icmp_ln10_3_fu_254_p2;
 result_reg_334 <= result_fu_230_p3;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 number_read_reg_311 <= number;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state12)) begin
 tmp_reg_323 <= grp_fu_98_p2;
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
always @ (*) begin
 if ((ap_start == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state17)) begin
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
 if ((1'b1 == ap_CS_fsm_state17)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((1'd1 == and_ln10_1_fu_305_p2) & (1'b1 == ap_CS_fsm_state17))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'd0 == and_ln10_1_fu_305_p2) & (1'b1 == ap_CS_fsm_state17))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln317_fu_144_p2 = ($signed(zext_ln317_fu_140_p1) + $signed(9'd385));
assign and_ln10_1_fu_305_p2 = (tmp_3_fu_90_p2 & and_ln10_fu_299_p2);
assign and_ln10_fu_299_p2 = (or_ln10_fu_289_p2 & or_ln10_1_fu_295_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign bitcast_ln10_fu_260_p1 = conv3_reg_349;
assign data_fu_103_p1 = floatPart_reg_328;
assign icmp_ln10_1_fu_283_p2 = ((trunc_ln10_fu_273_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln10_2_fu_248_p2 = ((tmp_2_fu_238_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln10_3_fu_254_p2 = ((trunc_ln342_fu_122_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln10_fu_277_p2 = ((tmp_1_fu_263_p4 != 8'd255) ? 1'b1 : 1'b0);
assign lshr_ln18_fu_184_p2 = zext_ln15_fu_136_p1 >> zext_ln18_fu_180_p1;
assign mantissa_fu_126_p4 = {{{{1'd1}, {trunc_ln342_fu_122_p1}}}, {1'd0}};
assign or_ln10_1_fu_295_p2 = (icmp_ln10_3_reg_344 | icmp_ln10_2_reg_339);
assign or_ln10_fu_289_p2 = (icmp_ln10_fu_277_p2 | icmp_ln10_1_fu_283_p2);
assign result_2_fu_224_p2 = (32'd0 - val_fu_216_p3);
assign result_fu_230_p3 = ((xs_sign_fu_106_p3[0:0] == 1'b1) ? result_2_fu_224_p2 : val_fu_216_p3);
assign select_ln18_fu_168_p3 = ((tmp_7_fu_150_p3[0:0] == 1'b1) ? sext_ln18_fu_164_p1 : add_ln317_fu_144_p2);
assign sext_ln18_1_fu_176_p1 = $signed(select_ln18_fu_168_p3);
assign sext_ln18_fu_164_p1 = $signed(sub_ln18_fu_158_p2);
assign shl_ln18_fu_190_p2 = zext_ln15_fu_136_p1 << zext_ln18_fu_180_p1;
assign sub_ln18_fu_158_p2 = (8'd127 - xs_exp_fu_114_p3);
assign temptemp1 = number_read_reg_311;
assign temptemp2 = number_read_reg_311;
assign tmp_1_fu_263_p4 = {{bitcast_ln10_fu_260_p1[30:23]}};
assign tmp_2_fu_238_p4 = {{data_fu_103_p1[30:23]}};
assign tmp_5_fu_196_p4 = {{lshr_ln18_fu_184_p2[55:24]}};
assign tmp_6_fu_206_p4 = {{shl_ln18_fu_190_p2[55:24]}};
assign tmp_7_fu_150_p3 = add_ln317_fu_144_p2[32'd8];
assign trunc_ln10_fu_273_p1 = bitcast_ln10_fu_260_p1[22:0];
assign trunc_ln342_fu_122_p1 = data_fu_103_p1[22:0];
assign val_fu_216_p3 = ((tmp_7_fu_150_p3[0:0] == 1'b1) ? tmp_5_fu_196_p4 : tmp_6_fu_206_p4);
assign xs_exp_fu_114_p3 = {{data_fu_103_p1[30:23]}};
assign xs_sign_fu_106_p3 = data_fu_103_p1[32'd31];
assign zext_ln15_fu_136_p1 = mantissa_fu_126_p4;
assign zext_ln18_fu_180_p1 = $unsigned(sext_ln18_1_fu_176_p1);
assign zext_ln317_fu_140_p1 = xs_exp_fu_114_p3;
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
module entry_point_fcmp_32ns_32ns_1_1_no_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 1,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 dout_WIDTH = 1
)(
 input wire [din0_WIDTH-1:0] din0,
 input wire [din1_WIDTH-1:0] din1,
 input wire [4:0] opcode,
 output wire [dout_WIDTH-1:0] dout
);
localparam [4:0]
 AP_OEQ = 5'b00001,
 AP_OGT = 5'b00010,
 AP_OGE = 5'b00011,
 AP_OLT = 5'b00100,
 AP_OLE = 5'b00101,
 AP_ONE = 5'b00110,
 AP_UNO = 5'b01000;
localparam [7:0]
 OP_EQ = 8'b00010100,
 OP_GT = 8'b00100100,
 OP_GE = 8'b00110100,
 OP_LT = 8'b00001100,
 OP_LE = 8'b00011100,
 OP_NE = 8'b00101100,
 OP_UO = 8'b00000100;
wire a_tvalid;
wire [31:0] a_tdata;
wire b_tvalid;
wire [31:0] b_tdata;
wire op_tvalid;
reg [7:0] op_tdata;
wire r_tvalid;
wire [7:0] r_tdata;
                                                                                                                                                                                                                                                                                                                                                                                assign a_tvalid = 1'b1;
assign a_tdata = din0;
assign b_tvalid = 1'b1;
assign b_tdata = din1;
assign op_tvalid = 1'b1;
assign dout = r_tdata[0];
always @(*) begin
 case (opcode)
 AP_OEQ : op_tdata = OP_EQ;
 AP_OGT : op_tdata = OP_GT;
 AP_OGE : op_tdata = OP_GE;
 AP_OLT : op_tdata = OP_LT;
 AP_OLE : op_tdata = OP_LE;
 AP_ONE : op_tdata = OP_NE;
 AP_UNO : op_tdata = OP_UO;
 default : op_tdata = OP_EQ;
 endcase
end
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
module entry_point_sitodp_32ns_64_2_no_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 2,
 din0_WIDTH = 32,
 dout_WIDTH = 32
)(
 input wire clk,
 input wire reset,
 input wire ce,
 input wire [din0_WIDTH-1:0] din0,
 output wire [dout_WIDTH-1:0] dout
);
wire a_tvalid;
wire [din0_WIDTH-1:0] a_tdata;
wire r_tvalid;
wire [dout_WIDTH-1:0] r_tdata;
reg [din0_WIDTH-1:0] din0_buf1;
reg ce_r;
wire [dout_WIDTH-1:0] dout_i;
reg [dout_WIDTH-1:0] dout_r;
                                                                                                                                                                                                                              assign a_tvalid = 1'b1;
assign a_tdata = din0_buf1;
assign dout_i = r_tdata;
always @(posedge clk) begin
 if (ce) begin
 din0_buf1 <= din0;
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
module entry_point_sitofp_32ns_32_2_no_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 2,
 din0_WIDTH = 32,
 dout_WIDTH = 32
)(
 input wire clk,
 input wire reset,
 input wire ce,
 input wire [din0_WIDTH-1:0] din0,
 output wire [dout_WIDTH-1:0] dout
);
wire a_tvalid;
wire [din0_WIDTH-1:0] a_tdata;
wire r_tvalid;
wire [dout_WIDTH-1:0] r_tdata;
reg [din0_WIDTH-1:0] din0_buf1;
reg ce_r;
wire [dout_WIDTH-1:0] dout_i;
reg [dout_WIDTH-1:0] dout_r;
                                                                                                                                                                                                                              assign a_tvalid = 1'b1;
assign a_tdata = din0_buf1;
assign dout_i = r_tdata;
always @(posedge clk) begin
 if (ce) begin
 din0_buf1 <= din0;
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
