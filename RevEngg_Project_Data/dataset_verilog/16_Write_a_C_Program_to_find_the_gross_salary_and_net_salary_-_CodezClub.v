module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 name,
 basic,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 14'd1;
parameter ap_ST_fsm_state2 = 14'd2;
parameter ap_ST_fsm_state3 = 14'd4;
parameter ap_ST_fsm_state4 = 14'd8;
parameter ap_ST_fsm_state5 = 14'd16;
parameter ap_ST_fsm_state6 = 14'd32;
parameter ap_ST_fsm_state7 = 14'd64;
parameter ap_ST_fsm_state8 = 14'd128;
parameter ap_ST_fsm_state9 = 14'd256;
parameter ap_ST_fsm_state10 = 14'd512;
parameter ap_ST_fsm_state11 = 14'd1024;
parameter ap_ST_fsm_state12 = 14'd2048;
parameter ap_ST_fsm_state13 = 14'd4096;
parameter ap_ST_fsm_state14 = 14'd8192;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [7:0] name;
input [31:0] basic;
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
(* fsm_encoding = "none" *) reg [13:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [63:0] grp_fu_112_p2;
reg [63:0] reg_125;
wire ap_CS_fsm_state5;
wire ap_CS_fsm_state6;
reg [0:0] and_ln19_2_reg_264;
reg [0:0] and_ln14_reg_258;
wire [63:0] grp_fu_117_p2;
reg [63:0] reg_130;
wire [31:0] grp_fu_78_p2;
reg [31:0] reg_135;
wire ap_CS_fsm_state8;
wire ap_CS_fsm_state10;
wire ap_CS_fsm_state12;
wire [31:0] bitcast_ln26_fu_140_p1;
reg [31:0] bitcast_ln26_reg_246;
wire [63:0] conv_fu_94_p1;
reg [63:0] conv_reg_252;
wire [0:0] and_ln14_fu_180_p2;
wire [0:0] and_ln19_2_fu_204_p2;
wire [31:0] grp_fu_83_p2;
reg [31:0] da_2_reg_270;
wire [31:0] grp_fu_88_p1;
reg [31:0] pf_reg_275;
wire [31:0] da_4_fu_216_p3;
reg [31:0] da_4_reg_281;
wire [31:0] hra_4_fu_229_p3;
reg [31:0] hra_4_reg_286;
wire ap_CS_fsm_state7;
wire ap_CS_fsm_state14;
reg [31:0] grp_fu_78_p0;
reg [31:0] grp_fu_78_p1;
wire ap_CS_fsm_state9;
wire ap_CS_fsm_state11;
wire ap_CS_fsm_state13;
wire ap_CS_fsm_state4;
reg [63:0] grp_fu_112_p1;
wire ap_CS_fsm_state2;
wire ap_CS_fsm_state3;
reg [63:0] grp_fu_117_p1;
wire [7:0] tmp_1_fu_148_p4;
wire [22:0] trunc_ln14_fu_158_p1;
wire [0:0] icmp_ln14_1_fu_168_p2;
wire [0:0] icmp_ln14_fu_162_p2;
wire [0:0] or_ln14_fu_174_p2;
wire [0:0] tmp_2_fu_97_p2;
wire [0:0] tmp_6_fu_107_p2;
wire [0:0] and_ln19_fu_186_p2;
wire [0:0] xor_ln14_fu_192_p2;
wire [0:0] and_ln19_1_fu_198_p2;
wire [0:0] tmp_4_fu_102_p2;
wire [31:0] grp_fu_91_p1;
wire [31:0] da_3_fu_210_p3;
wire [31:0] hra_3_fu_223_p3;
reg [1:0] grp_fu_78_opcode;
reg [13:0] ap_NS_fsm;
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
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
end
entry_point_faddfsub_32ns_32ns_32_2_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
faddfsub_32ns_32ns_32_2_full_dsp_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_78_p0),
 .din1(grp_fu_78_p1),
 .opcode(grp_fu_78_opcode),
 .ce(1'b1),
 .dout(grp_fu_78_p2)
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
 .din0(bitcast_ln26_reg_246),
 .din1(32'd1056964608),
 .ce(1'b1),
 .dout(grp_fu_83_p2)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U3(
 .din0(reg_125),
 .dout(grp_fu_88_p1)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U4(
 .din0(reg_130),
 .dout(grp_fu_91_p1)
);
entry_point_fpext_32ns_64_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
fpext_32ns_64_1_no_dsp_1_U5(
 .din0(bitcast_ln26_fu_140_p1),
 .dout(conv_fu_94_p1)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U6(
 .din0(bitcast_ln26_fu_140_p1),
 .din1(32'd1167867904),
 .opcode(5'd4),
 .dout(tmp_2_fu_97_p2)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U7(
 .din0(bitcast_ln26_fu_140_p1),
 .din1(32'd1167867904),
 .opcode(5'd3),
 .dout(tmp_4_fu_102_p2)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U8(
 .din0(bitcast_ln26_fu_140_p1),
 .din1(32'd1176256512),
 .opcode(5'd4),
 .dout(tmp_6_fu_107_p2)
);
entry_point_dmul_64ns_64ns_64_4_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dmul_64ns_64ns_64_4_max_dsp_1_U9(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(conv_reg_252),
 .din1(grp_fu_112_p1),
 .ce(1'b1),
 .dout(grp_fu_112_p2)
);
entry_point_dmul_64ns_64ns_64_4_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dmul_64ns_64ns_64_4_max_dsp_1_U10(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(conv_reg_252),
 .din1(grp_fu_117_p1),
 .ce(1'b1),
 .dout(grp_fu_117_p2)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 and_ln14_reg_258 <= and_ln14_fu_180_p2;
 and_ln19_2_reg_264 <= and_ln19_2_fu_204_p2;
 bitcast_ln26_reg_246 <= bitcast_ln26_fu_140_p1;
 conv_reg_252 <= conv_fu_94_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'd0 == and_ln14_reg_258) & (1'd0 == and_ln19_2_reg_264) & (1'b1 == ap_CS_fsm_state5))) begin
 da_2_reg_270 <= grp_fu_83_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 da_4_reg_281 <= da_4_fu_216_p3;
 pf_reg_275 <= grp_fu_88_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 hra_4_reg_286 <= hra_4_fu_229_p3;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state5) | ((1'd0 == and_ln14_reg_258) & (1'd0 == and_ln19_2_reg_264) & (1'b1 == ap_CS_fsm_state6)) | ((1'd1 == and_ln19_2_reg_264) & (1'b1 == ap_CS_fsm_state6)))) begin
 reg_125 <= grp_fu_112_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((((1'd0 == and_ln19_2_reg_264) & (1'd1 == and_ln14_reg_258) & (1'b1 == ap_CS_fsm_state5)) | ((1'd1 == and_ln19_2_reg_264) & (1'b1 == ap_CS_fsm_state5)))) begin
 reg_130 <= grp_fu_117_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8))) begin
 reg_135 <= grp_fu_78_p2;
 end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
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
 if ((1'b1 == ap_CS_fsm_state14)) begin
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
 if ((1'b1 == ap_CS_fsm_state14)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((1'd0 == and_ln14_reg_258) & (1'd0 == and_ln19_2_reg_264) & (1'b1 == ap_CS_fsm_state3))) begin
 grp_fu_112_p1 = 64'd4596373779694328218;
 end else if (((1'd1 == and_ln19_2_reg_264) & (1'b1 == ap_CS_fsm_state3))) begin
 grp_fu_112_p1 = 64'd4591870180066957722;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_112_p1 = 64'd4590429028186199163;
 end else begin
 grp_fu_112_p1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 if ((1'd1 == and_ln19_2_reg_264)) begin
 grp_fu_117_p1 = 64'd4600877379321698714;
 end else if (((1'd0 == and_ln19_2_reg_264) & (1'd1 == and_ln14_reg_258))) begin
 grp_fu_117_p1 = 64'd4599075939470750515;
 end else begin
 grp_fu_117_p1 = 'bx;
 end
 end else begin
 grp_fu_117_p1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state11)) begin
 grp_fu_78_opcode = 2'd1;
 end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state7))) begin
 grp_fu_78_opcode = 2'd0;
 end else begin
 grp_fu_78_opcode = 'bx;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9))) begin
 grp_fu_78_p0 = reg_135;
 end else if ((1'b1 == ap_CS_fsm_state7)) begin
 grp_fu_78_p0 = bitcast_ln26_reg_246;
 end else begin
 grp_fu_78_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state13)) begin
 grp_fu_78_p1 = pf_reg_275;
 end else if ((1'b1 == ap_CS_fsm_state11)) begin
 grp_fu_78_p1 = 32'd0;
 end else if ((1'b1 == ap_CS_fsm_state9)) begin
 grp_fu_78_p1 = hra_4_reg_286;
 end else if ((1'b1 == ap_CS_fsm_state7)) begin
 grp_fu_78_p1 = da_4_reg_281;
 end else begin
 grp_fu_78_p1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state10)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign and_ln14_fu_180_p2 = (tmp_2_fu_97_p2 & or_ln14_fu_174_p2);
assign and_ln19_1_fu_198_p2 = (xor_ln14_fu_192_p2 & and_ln19_fu_186_p2);
assign and_ln19_2_fu_204_p2 = (tmp_4_fu_102_p2 & and_ln19_1_fu_198_p2);
assign and_ln19_fu_186_p2 = (tmp_6_fu_107_p2 & or_ln14_fu_174_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign bitcast_ln26_fu_140_p1 = basic;
assign da_3_fu_210_p3 = ((and_ln14_reg_258[0:0] == 1'b1) ? grp_fu_91_p1 : da_2_reg_270);
assign da_4_fu_216_p3 = ((and_ln19_2_reg_264[0:0] == 1'b1) ? grp_fu_91_p1 : da_3_fu_210_p3);
assign hra_3_fu_223_p3 = ((and_ln14_reg_258[0:0] == 1'b1) ? pf_reg_275 : grp_fu_88_p1);
assign hra_4_fu_229_p3 = ((and_ln19_2_reg_264[0:0] == 1'b1) ? grp_fu_88_p1 : hra_3_fu_223_p3);
assign icmp_ln14_1_fu_168_p2 = ((trunc_ln14_fu_158_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln14_fu_162_p2 = ((tmp_1_fu_148_p4 != 8'd255) ? 1'b1 : 1'b0);
assign or_ln14_fu_174_p2 = (icmp_ln14_fu_162_p2 | icmp_ln14_1_fu_168_p2);
assign temptemp1 = grp_fu_78_p2;
assign temptemp2 = grp_fu_78_p2;
assign tmp_1_fu_148_p4 = {{basic[30:23]}};
assign trunc_ln14_fu_158_p1 = basic[22:0];
assign xor_ln14_fu_192_p2 = (1'd1 ^ and_ln14_fu_180_p2);
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
module entry_point_faddfsub_32ns_32ns_32_2_full_dsp_1
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
 input wire [1:0] opcode,
 output wire [dout_WIDTH-1:0] dout
);
wire a_tvalid;
wire [din0_WIDTH-1:0] a_tdata;
wire b_tvalid;
wire [din1_WIDTH-1:0] b_tdata;
wire op_tvalid;
wire [7:0] op_tdata;
wire r_tvalid;
wire [dout_WIDTH-1:0] r_tdata;
reg [din0_WIDTH-1:0] din0_buf1;
reg [din1_WIDTH-1:0] din1_buf1;
reg [1:0] opcode_buf1;
reg ce_r;
wire [dout_WIDTH-1:0] dout_i;
reg [dout_WIDTH-1:0] dout_r;
                                                                                                                                                                                                                                                                                                                                                                                              assign a_tvalid = 1'b1;
assign a_tdata = din0_buf1;
assign b_tvalid = 1'b1;
assign b_tdata = din1_buf1;
assign op_tvalid = 1'b1;
assign op_tdata = {6'b0, opcode_buf1};
assign dout_i = r_tdata;
always @(posedge clk) begin
 if (ce) begin
 din0_buf1 <= din0;
 din1_buf1 <= din1;
 opcode_buf1 <= opcode;
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
