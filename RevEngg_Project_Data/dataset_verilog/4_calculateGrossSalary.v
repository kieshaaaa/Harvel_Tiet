module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 bs,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 temptemp4,
 temptemp4_ap_vld,
 temptemp5,
 temptemp5_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 15'd1;
parameter ap_ST_fsm_state2 = 15'd2;
parameter ap_ST_fsm_state3 = 15'd4;
parameter ap_ST_fsm_state4 = 15'd8;
parameter ap_ST_fsm_state5 = 15'd16;
parameter ap_ST_fsm_state6 = 15'd32;
parameter ap_ST_fsm_state7 = 15'd64;
parameter ap_ST_fsm_state8 = 15'd128;
parameter ap_ST_fsm_state9 = 15'd256;
parameter ap_ST_fsm_state10 = 15'd512;
parameter ap_ST_fsm_state11 = 15'd1024;
parameter ap_ST_fsm_state12 = 15'd2048;
parameter ap_ST_fsm_state13 = 15'd4096;
parameter ap_ST_fsm_state14 = 15'd8192;
parameter ap_ST_fsm_state15 = 15'd16384;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] bs;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] temptemp4;
output temptemp4_ap_vld;
output [31:0] temptemp5;
output temptemp5_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
reg temptemp5_ap_vld;
(* fsm_encoding = "none" *) reg [14:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] grp_fu_116_p2;
reg [31:0] reg_141;
wire ap_CS_fsm_state9;
wire ap_CS_fsm_state11;
wire [31:0] grp_fu_108_p2;
reg [31:0] reg_146;
wire ap_CS_fsm_state13;
wire [31:0] bitcast_ln10_fu_151_p1;
reg [31:0] bitcast_ln10_reg_332;
wire [0:0] and_ln10_fu_191_p2;
reg [0:0] and_ln10_reg_338;
wire [0:0] and_ln16_3_fu_227_p2;
reg [0:0] and_ln16_3_reg_343;
wire [0:0] and_ln22_2_fu_251_p2;
reg [0:0] and_ln22_2_reg_350;
wire [0:0] or_ln22_fu_264_p2;
reg [0:0] or_ln22_reg_357;
wire ap_CS_fsm_state2;
wire [31:0] select_ln22_1_fu_268_p3;
wire [31:0] grp_fu_112_p2;
reg [31:0] da_2_v_reg_367;
wire ap_CS_fsm_state3;
wire [31:0] select_ln22_3_fu_284_p3;
wire ap_CS_fsm_state4;
reg [31:0] hra_2_v_reg_377;
wire ap_CS_fsm_state5;
wire [31:0] cv_fu_313_p3;
wire ap_CS_fsm_state14;
wire ap_CS_fsm_state15;
reg [31:0] grp_fu_108_p0;
reg [31:0] grp_fu_108_p1;
wire ap_CS_fsm_state10;
wire ap_CS_fsm_state12;
reg [31:0] grp_fu_112_p1;
reg [31:0] grp_fu_116_p0;
wire ap_CS_fsm_state6;
wire [7:0] tmp_1_fu_159_p4;
wire [22:0] trunc_ln10_fu_169_p1;
wire [0:0] icmp_ln10_1_fu_179_p2;
wire [0:0] icmp_ln10_fu_173_p2;
wire [0:0] or_ln10_fu_185_p2;
wire [0:0] tmp_2_fu_121_p2;
wire [0:0] tmp_4_fu_126_p2;
wire [0:0] tmp_6_fu_131_p2;
wire [0:0] tmp_8_fu_136_p2;
wire [0:0] and_ln16_1_fu_209_p2;
wire [0:0] xor_ln10_fu_197_p2;
wire [0:0] and_ln16_2_fu_221_p2;
wire [0:0] and_ln16_fu_203_p2;
wire [0:0] and_ln16_4_fu_233_p2;
wire [0:0] and_ln22_fu_215_p2;
wire [0:0] xor_ln16_fu_239_p2;
wire [0:0] and_ln22_1_fu_245_p2;
wire [31:0] select_ln22_fu_257_p3;
wire [31:0] select_ln22_2_fu_277_p3;
wire [0:0] or_ln16_fu_309_p2;
wire [31:0] select_ln16_fu_302_p3;
reg [14:0] ap_NS_fsm;
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
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
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
 .din0(grp_fu_108_p0),
 .din1(grp_fu_108_p1),
 .ce(1'b1),
 .dout(grp_fu_108_p2)
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
 .din0(bitcast_ln10_reg_332),
 .din1(grp_fu_112_p1),
 .ce(1'b1),
 .dout(grp_fu_112_p2)
);
entry_point_fdiv_32ns_32ns_32_6_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 6 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fdiv_32ns_32ns_32_6_no_dsp_1_U3(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_116_p0),
 .din1(32'd1120403456),
 .ce(1'b1),
 .dout(grp_fu_116_p2)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U4(
 .din0(bitcast_ln10_fu_151_p1),
 .din1(32'd1167867904),
 .opcode(5'd3),
 .dout(tmp_2_fu_121_p2)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U5(
 .din0(bitcast_ln10_fu_151_p1),
 .din1(32'd1161527296),
 .opcode(5'd3),
 .dout(tmp_4_fu_126_p2)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U6(
 .din0(bitcast_ln10_fu_151_p1),
 .din1(32'd1167867904),
 .opcode(5'd4),
 .dout(tmp_6_fu_131_p2)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U7(
 .din0(bitcast_ln10_fu_151_p1),
 .din1(32'd1161527296),
 .opcode(5'd4),
 .dout(tmp_8_fu_136_p2)
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
 and_ln10_reg_338 <= and_ln10_fu_191_p2;
 and_ln16_3_reg_343 <= and_ln16_3_fu_227_p2;
 and_ln22_2_reg_350 <= and_ln22_2_fu_251_p2;
 bitcast_ln10_reg_332 <= bitcast_ln10_fu_151_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 da_2_v_reg_367 <= grp_fu_112_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 hra_2_v_reg_377 <= grp_fu_112_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 or_ln22_reg_357 <= or_ln22_fu_264_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9))) begin
 reg_141 <= grp_fu_116_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state11))) begin
 reg_146 <= grp_fu_108_p2;
 end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
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
 if ((1'b1 == ap_CS_fsm_state15)) begin
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
 if ((1'b1 == ap_CS_fsm_state15)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state14))) begin
 grp_fu_108_p0 = reg_146;
 end else if ((1'b1 == ap_CS_fsm_state10)) begin
 grp_fu_108_p0 = bitcast_ln10_reg_332;
 end else begin
 grp_fu_108_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
 grp_fu_108_p1 = cv_fu_313_p3;
 end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10))) begin
 grp_fu_108_p1 = reg_141;
 end else begin
 grp_fu_108_p1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 grp_fu_112_p1 = select_ln22_3_fu_284_p3;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_112_p1 = select_ln22_1_fu_268_p3;
 end else begin
 grp_fu_112_p1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 grp_fu_116_p0 = hra_2_v_reg_377;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 grp_fu_116_p0 = da_2_v_reg_367;
 end else begin
 grp_fu_116_p0 = 'bx;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state9)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state11)) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state15)) begin
 temptemp5_ap_vld = 1'b1;
 end else begin
 temptemp5_ap_vld = 1'b0;
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign and_ln10_fu_191_p2 = (tmp_2_fu_121_p2 & or_ln10_fu_185_p2);
assign and_ln16_1_fu_209_p2 = (tmp_6_fu_131_p2 & or_ln10_fu_185_p2);
assign and_ln16_2_fu_221_p2 = (xor_ln10_fu_197_p2 & and_ln16_1_fu_209_p2);
assign and_ln16_3_fu_227_p2 = (tmp_4_fu_126_p2 & and_ln16_2_fu_221_p2);
assign and_ln16_4_fu_233_p2 = (tmp_6_fu_131_p2 & and_ln16_fu_203_p2);
assign and_ln16_fu_203_p2 = (tmp_4_fu_126_p2 & or_ln10_fu_185_p2);
assign and_ln22_1_fu_245_p2 = (xor_ln16_fu_239_p2 & and_ln22_fu_215_p2);
assign and_ln22_2_fu_251_p2 = (xor_ln10_fu_197_p2 & and_ln22_1_fu_245_p2);
assign and_ln22_fu_215_p2 = (tmp_8_fu_136_p2 & or_ln10_fu_185_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign bitcast_ln10_fu_151_p1 = bs;
assign cv_fu_313_p3 = ((or_ln16_fu_309_p2[0:0] == 1'b1) ? select_ln16_fu_302_p3 : 32'd1133903872);
assign icmp_ln10_1_fu_179_p2 = ((trunc_ln10_fu_169_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln10_fu_173_p2 = ((tmp_1_fu_159_p4 != 8'd255) ? 1'b1 : 1'b0);
assign or_ln10_fu_185_p2 = (icmp_ln10_fu_173_p2 | icmp_ln10_1_fu_179_p2);
assign or_ln16_fu_309_p2 = (and_ln16_3_reg_343 | and_ln10_reg_338);
assign or_ln22_fu_264_p2 = (and_ln22_2_reg_350 | and_ln16_3_reg_343);
assign select_ln16_fu_302_p3 = ((and_ln16_3_reg_343[0:0] == 1'b1) ? 32'd1137180672 : 32'd1140457472);
assign select_ln22_1_fu_268_p3 = ((or_ln22_fu_264_p2[0:0] == 1'b1) ? select_ln22_fu_257_p3 : 32'd1121714176);
assign select_ln22_2_fu_277_p3 = ((and_ln22_2_reg_350[0:0] == 1'b1) ? 32'd1092616192 : 32'd1097859072);
assign select_ln22_3_fu_284_p3 = ((or_ln22_reg_357[0:0] == 1'b1) ? select_ln22_2_fu_277_p3 : 32'd1101004800);
assign select_ln22_fu_257_p3 = ((and_ln22_2_reg_350[0:0] == 1'b1) ? 32'd1119092736 : 32'd1120403456);
assign temptemp1 = bs;
assign temptemp2 = grp_fu_116_p2;
assign temptemp3 = grp_fu_116_p2;
assign temptemp4 = cv_fu_313_p3;
assign temptemp5 = grp_fu_108_p2;
assign tmp_1_fu_159_p4 = {{bs[30:23]}};
assign trunc_ln10_fu_169_p1 = bs[22:0];
assign xor_ln10_fu_197_p2 = (1'd1 ^ and_ln10_fu_191_p2);
assign xor_ln16_fu_239_p2 = (1'd1 ^ and_ln16_4_fu_233_p2);
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
module entry_point_fdiv_32ns_32ns_32_6_no_dsp_1
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
