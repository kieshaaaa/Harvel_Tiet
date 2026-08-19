module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 num,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 16'd1;
parameter ap_ST_fsm_state2 = 16'd2;
parameter ap_ST_fsm_state3 = 16'd4;
parameter ap_ST_fsm_state4 = 16'd8;
parameter ap_ST_fsm_state5 = 16'd16;
parameter ap_ST_fsm_state6 = 16'd32;
parameter ap_ST_fsm_state7 = 16'd64;
parameter ap_ST_fsm_state8 = 16'd128;
parameter ap_ST_fsm_state9 = 16'd256;
parameter ap_ST_fsm_state10 = 16'd512;
parameter ap_ST_fsm_state11 = 16'd1024;
parameter ap_ST_fsm_state12 = 16'd2048;
parameter ap_ST_fsm_state13 = 16'd4096;
parameter ap_ST_fsm_state14 = 16'd8192;
parameter ap_ST_fsm_state15 = 16'd16384;
parameter ap_ST_fsm_state16 = 16'd32768;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] num;
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
(* fsm_encoding = "none" *) reg [15:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [63:0] grp_fu_94_p1;
reg [63:0] conv_reg_323;
wire ap_CS_fsm_state2;
wire [63:0] grp_fu_98_p2;
reg [63:0] tmp_reg_328;
wire ap_CS_fsm_state12;
wire [31:0] fVar_fu_87_p1;
reg [31:0] fVar_reg_333;
wire ap_CS_fsm_state13;
wire ap_CS_fsm_state14;
wire [0:0] icmp_ln11_2_fu_253_p2;
reg [0:0] icmp_ln11_2_reg_344;
wire [0:0] icmp_ln11_3_fu_259_p2;
reg [0:0] icmp_ln11_3_reg_349;
wire [31:0] grp_fu_84_p1;
reg [31:0] conv3_reg_354;
wire ap_CS_fsm_state15;
wire ap_CS_fsm_state16;
wire [0:0] and_ln11_1_fu_310_p2;
wire [31:0] grp_fu_84_p0;
wire ap_CS_fsm_state3;
wire [31:0] data_V_fu_103_p1;
wire [22:0] p_Result_1_fu_124_p1;
wire [24:0] mantissa_fu_128_p4;
wire [7:0] xs_exp_V_fu_114_p4;
wire [8:0] zext_ln346_fu_142_p1;
wire [8:0] add_ln346_fu_146_p2;
wire [7:0] sub_ln1512_fu_160_p2;
wire [0:0] isNeg_fu_152_p3;
wire signed [8:0] sext_ln1512_fu_166_p1;
wire [8:0] ush_fu_170_p3;
wire signed [31:0] sext_ln1488_fu_178_p1;
wire [78:0] zext_ln15_fu_138_p1;
wire [78:0] zext_ln1488_fu_182_p1;
wire [78:0] r_V_fu_186_p2;
wire [0:0] tmp_8_fu_198_p3;
wire [78:0] r_V_1_fu_192_p2;
wire [31:0] zext_ln818_fu_206_p1;
wire [31:0] tmp_6_fu_210_p4;
wire [31:0] val_fu_220_p3;
wire [0:0] p_Result_s_fu_106_p3;
wire [31:0] result_V_2_fu_228_p2;
wire [7:0] tmp_3_fu_243_p4;
wire [31:0] bitcast_ln11_fu_265_p1;
wire [7:0] tmp_2_fu_268_p4;
wire [22:0] trunc_ln11_fu_278_p1;
wire [0:0] icmp_ln11_1_fu_288_p2;
wire [0:0] icmp_ln11_fu_282_p2;
wire [0:0] or_ln11_fu_294_p2;
wire [0:0] or_ln11_1_fu_300_p2;
wire [0:0] and_ln11_fu_304_p2;
wire [0:0] tmp_4_fu_90_p2;
reg [15:0] ap_NS_fsm;
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
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
end
entry_point_sitofp_32ns_32_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
sitofp_32ns_32_2_no_dsp_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_84_p0),
 .ce(1'b1),
 .dout(grp_fu_84_p1)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U2(
 .din0(tmp_reg_328),
 .dout(fVar_fu_87_p1)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U3(
 .din0(conv3_reg_354),
 .din1(fVar_reg_333),
 .opcode(5'd1),
 .dout(tmp_4_fu_90_p2)
);
entry_point_sitodp_32ns_64_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
sitodp_32ns_64_2_no_dsp_1_U4(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(num),
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
 .din1(conv_reg_323),
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
 if ((1'b1 == ap_CS_fsm_state15)) begin
 conv3_reg_354 <= grp_fu_84_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 conv_reg_323 <= grp_fu_94_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state13)) begin
 fVar_reg_333 <= fVar_fu_87_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
 icmp_ln11_2_reg_344 <= icmp_ln11_2_fu_253_p2;
 icmp_ln11_3_reg_349 <= icmp_ln11_3_fu_259_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state12)) begin
 tmp_reg_328 <= grp_fu_98_p2;
 end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
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
 if ((1'b1 == ap_CS_fsm_state16)) begin
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
 if ((1'b1 == ap_CS_fsm_state16)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((1'd1 == and_ln11_1_fu_310_p2) & (1'b1 == ap_CS_fsm_state16))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'd0 == and_ln11_1_fu_310_p2) & (1'b1 == ap_CS_fsm_state16))) begin
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln346_fu_146_p2 = ($signed(zext_ln346_fu_142_p1) + $signed(9'd385));
assign and_ln11_1_fu_310_p2 = (tmp_4_fu_90_p2 & and_ln11_fu_304_p2);
assign and_ln11_fu_304_p2 = (or_ln11_fu_294_p2 & or_ln11_1_fu_300_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign bitcast_ln11_fu_265_p1 = conv3_reg_354;
assign data_V_fu_103_p1 = fVar_reg_333;
assign grp_fu_84_p0 = ((p_Result_s_fu_106_p3[0:0] == 1'b1) ? result_V_2_fu_228_p2 : val_fu_220_p3);
assign icmp_ln11_1_fu_288_p2 = ((trunc_ln11_fu_278_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln11_2_fu_253_p2 = ((tmp_3_fu_243_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln11_3_fu_259_p2 = ((p_Result_1_fu_124_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln11_fu_282_p2 = ((tmp_2_fu_268_p4 != 8'd255) ? 1'b1 : 1'b0);
assign isNeg_fu_152_p3 = add_ln346_fu_146_p2[32'd8];
assign mantissa_fu_128_p4 = {{{{1'd1}, {p_Result_1_fu_124_p1}}}, {1'd0}};
assign or_ln11_1_fu_300_p2 = (icmp_ln11_3_reg_349 | icmp_ln11_2_reg_344);
assign or_ln11_fu_294_p2 = (icmp_ln11_fu_282_p2 | icmp_ln11_1_fu_288_p2);
assign p_Result_1_fu_124_p1 = data_V_fu_103_p1[22:0];
assign p_Result_s_fu_106_p3 = data_V_fu_103_p1[32'd31];
assign r_V_1_fu_192_p2 = zext_ln15_fu_138_p1 << zext_ln1488_fu_182_p1;
assign r_V_fu_186_p2 = zext_ln15_fu_138_p1 >> zext_ln1488_fu_182_p1;
assign result_V_2_fu_228_p2 = (32'd0 - val_fu_220_p3);
assign sext_ln1488_fu_178_p1 = $signed(ush_fu_170_p3);
assign sext_ln1512_fu_166_p1 = $signed(sub_ln1512_fu_160_p2);
assign sub_ln1512_fu_160_p2 = (8'd127 - xs_exp_V_fu_114_p4);
assign temptemp1 = num;
assign temptemp2 = num;
assign tmp_2_fu_268_p4 = {{bitcast_ln11_fu_265_p1[30:23]}};
assign tmp_3_fu_243_p4 = {{data_V_fu_103_p1[30:23]}};
assign tmp_6_fu_210_p4 = {{r_V_1_fu_192_p2[55:24]}};
assign tmp_8_fu_198_p3 = r_V_fu_186_p2[32'd24];
assign trunc_ln11_fu_278_p1 = bitcast_ln11_fu_265_p1[22:0];
assign ush_fu_170_p3 = ((isNeg_fu_152_p3[0:0] == 1'b1) ? sext_ln1512_fu_166_p1 : add_ln346_fu_146_p2);
assign val_fu_220_p3 = ((isNeg_fu_152_p3[0:0] == 1'b1) ? zext_ln818_fu_206_p1 : tmp_6_fu_210_p4);
assign xs_exp_V_fu_114_p4 = {{data_V_fu_103_p1[30:23]}};
assign zext_ln1488_fu_182_p1 = $unsigned(sext_ln1488_fu_178_p1);
assign zext_ln15_fu_138_p1 = mantissa_fu_128_p4;
assign zext_ln346_fu_142_p1 = xs_exp_V_fu_114_p4;
assign zext_ln818_fu_206_p1 = tmp_8_fu_198_p3;
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
