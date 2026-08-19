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
parameter ap_ST_fsm_state1 = 20'd1;
parameter ap_ST_fsm_state2 = 20'd2;
parameter ap_ST_fsm_state3 = 20'd4;
parameter ap_ST_fsm_state4 = 20'd8;
parameter ap_ST_fsm_state5 = 20'd16;
parameter ap_ST_fsm_state6 = 20'd32;
parameter ap_ST_fsm_state7 = 20'd64;
parameter ap_ST_fsm_state8 = 20'd128;
parameter ap_ST_fsm_state9 = 20'd256;
parameter ap_ST_fsm_state10 = 20'd512;
parameter ap_ST_fsm_state11 = 20'd1024;
parameter ap_ST_fsm_state12 = 20'd2048;
parameter ap_ST_fsm_state13 = 20'd4096;
parameter ap_ST_fsm_state14 = 20'd8192;
parameter ap_ST_fsm_state15 = 20'd16384;
parameter ap_ST_fsm_state16 = 20'd32768;
parameter ap_ST_fsm_state17 = 20'd65536;
parameter ap_ST_fsm_state18 = 20'd131072;
parameter ap_ST_fsm_state19 = 20'd262144;
parameter ap_ST_fsm_state20 = 20'd524288;
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
(* fsm_encoding = "none" *) reg [19:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [63:0] grp_fu_96_p1;
reg [63:0] reg_125;
wire ap_CS_fsm_state11;
wire [63:0] grp_fu_109_p2;
reg [63:0] reg_132;
wire ap_CS_fsm_state5;
wire ap_CS_fsm_state15;
wire [63:0] grp_fu_114_p2;
reg [63:0] reg_137;
reg [0:0] and_ln13_reg_254;
wire [31:0] grp_fu_78_p2;
reg [31:0] reg_142;
wire ap_CS_fsm_state8;
wire ap_CS_fsm_state10;
wire ap_CS_fsm_state18;
wire [31:0] bitcast_ln13_fu_148_p1;
reg [31:0] bitcast_ln13_reg_248;
wire [0:0] and_ln13_fu_187_p2;
wire [0:0] and_ln13_1_fu_193_p2;
reg [0:0] and_ln13_1_reg_261;
wire [63:0] select_ln13_fu_199_p3;
wire ap_CS_fsm_state2;
wire [63:0] grp_fu_119_p2;
reg [63:0] mul2_reg_272;
wire [31:0] grp_fu_87_p1;
reg [31:0] pf_reg_277;
wire ap_CS_fsm_state6;
wire [31:0] conv1_fu_90_p1;
reg [31:0] conv1_reg_282;
wire [31:0] grp_fu_82_p2;
reg [31:0] da_reg_287;
wire [31:0] hra_fu_93_p1;
reg [31:0] hra_reg_292;
wire [31:0] select_ln13_1_fu_232_p3;
wire ap_CS_fsm_state7;
reg [31:0] tax_reg_302;
wire ap_CS_fsm_state16;
wire ap_CS_fsm_state20;
reg [31:0] grp_fu_78_p0;
reg [31:0] grp_fu_78_p1;
wire ap_CS_fsm_state9;
wire ap_CS_fsm_state17;
wire ap_CS_fsm_state19;
wire [63:0] hra_fu_93_p0;
reg [31:0] grp_fu_96_p0;
reg [63:0] grp_fu_109_p1;
wire ap_CS_fsm_state12;
reg [63:0] grp_fu_114_p1;
wire [7:0] tmp_fu_155_p4;
wire [22:0] trunc_ln13_fu_165_p1;
wire [0:0] icmp_ln13_1_fu_175_p2;
wire [0:0] icmp_ln13_fu_169_p2;
wire [0:0] or_ln13_fu_181_p2;
wire [0:0] tmp_1_fu_99_p2;
wire [0:0] tmp_3_fu_104_p2;
wire [0:0] xor_ln13_fu_207_p2;
wire [0:0] and_ln13_2_fu_219_p2;
wire [63:0] select_ln13_2_fu_212_p3;
reg [1:0] grp_fu_78_opcode;
reg [19:0] ap_NS_fsm;
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
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 20'd1;
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
 .din0(bitcast_ln13_reg_248),
 .din1(32'd1056964608),
 .ce(1'b1),
 .dout(grp_fu_82_p2)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U3(
 .din0(reg_132),
 .dout(grp_fu_87_p1)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U4(
 .din0(reg_137),
 .dout(conv1_fu_90_p1)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U5(
 .din0(hra_fu_93_p0),
 .dout(hra_fu_93_p1)
);
entry_point_fpext_32ns_64_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
fpext_32ns_64_1_no_dsp_1_U6(
 .din0(grp_fu_96_p0),
 .dout(grp_fu_96_p1)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U7(
 .din0(bitcast_ln13_fu_148_p1),
 .din1(32'd1176256512),
 .opcode(5'd3),
 .dout(tmp_1_fu_99_p2)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U8(
 .din0(bitcast_ln13_fu_148_p1),
 .din1(32'd1167867904),
 .opcode(5'd3),
 .dout(tmp_3_fu_104_p2)
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
 .din0(reg_125),
 .din1(grp_fu_109_p1),
 .ce(1'b1),
 .dout(grp_fu_109_p2)
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
 .din0(reg_125),
 .din1(grp_fu_114_p1),
 .ce(1'b1),
 .dout(grp_fu_114_p2)
);
entry_point_dmul_64ns_64ns_64_4_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dmul_64ns_64ns_64_4_max_dsp_1_U11(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(reg_125),
 .din1(64'd4591870180066957722),
 .ce(1'b1),
 .dout(grp_fu_119_p2)
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
 and_ln13_1_reg_261 <= and_ln13_1_fu_193_p2;
 and_ln13_reg_254 <= and_ln13_fu_187_p2;
 bitcast_ln13_reg_248 <= bitcast_ln13_fu_148_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'd0 == and_ln13_reg_254) & (1'b1 == ap_CS_fsm_state6))) begin
 conv1_reg_282 <= conv1_fu_90_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'd1 == and_ln13_reg_254) & (1'b1 == ap_CS_fsm_state6))) begin
 da_reg_287 <= grp_fu_82_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 hra_reg_292 <= hra_fu_93_p1;
 pf_reg_277 <= grp_fu_87_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 mul2_reg_272 <= grp_fu_119_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state1))) begin
 reg_125 <= grp_fu_96_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state5))) begin
 reg_132 <= grp_fu_109_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((((1'd1 == and_ln13_reg_254) & (1'b1 == ap_CS_fsm_state5)) | ((1'd0 == and_ln13_reg_254) & (1'b1 == ap_CS_fsm_state5)))) begin
 reg_137 <= grp_fu_114_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8))) begin
 reg_142 <= grp_fu_78_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state16)) begin
 tax_reg_302 <= grp_fu_87_p1;
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
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state20)) begin
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
 if ((1'b1 == ap_CS_fsm_state20)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state12)) begin
 grp_fu_109_p1 = 64'd4589708452245819884;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_109_p1 = 64'd4590429028186199163;
 end else begin
 grp_fu_109_p1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 if ((1'd1 == and_ln13_reg_254)) begin
 grp_fu_114_p1 = 64'd4596373779694328218;
 end else if ((1'd0 == and_ln13_reg_254)) begin
 grp_fu_114_p1 = select_ln13_fu_199_p3;
 end else begin
 grp_fu_114_p1 = 'bx;
 end
 end else begin
 grp_fu_114_p1 = 'bx;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state17))) begin
 grp_fu_78_opcode = 2'd1;
 end else if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state7))) begin
 grp_fu_78_opcode = 2'd0;
 end else begin
 grp_fu_78_opcode = 'bx;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state9))) begin
 grp_fu_78_p0 = reg_142;
 end else if ((1'b1 == ap_CS_fsm_state7)) begin
 grp_fu_78_p0 = bitcast_ln13_reg_248;
 end else begin
 grp_fu_78_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state19)) begin
 grp_fu_78_p1 = pf_reg_277;
 end else if ((1'b1 == ap_CS_fsm_state17)) begin
 grp_fu_78_p1 = tax_reg_302;
 end else if ((1'b1 == ap_CS_fsm_state9)) begin
 grp_fu_78_p1 = hra_reg_292;
 end else if ((1'b1 == ap_CS_fsm_state7)) begin
 grp_fu_78_p1 = select_ln13_1_fu_232_p3;
 end else begin
 grp_fu_78_p1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state11)) begin
 grp_fu_96_p0 = reg_142;
 end else if ((1'b1 == ap_CS_fsm_state1)) begin
 grp_fu_96_p0 = bitcast_ln13_fu_148_p1;
 end else begin
 grp_fu_96_p0 = 'bx;
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
 if ((1'b1 == ap_CS_fsm_state20)) begin
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
 ap_NS_fsm = ap_ST_fsm_state18;
 end
 ap_ST_fsm_state18 : begin
 ap_NS_fsm = ap_ST_fsm_state19;
 end
 ap_ST_fsm_state19 : begin
 ap_NS_fsm = ap_ST_fsm_state20;
 end
 ap_ST_fsm_state20 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign and_ln13_1_fu_193_p2 = (tmp_3_fu_104_p2 & or_ln13_fu_181_p2);
assign and_ln13_2_fu_219_p2 = (xor_ln13_fu_207_p2 & and_ln13_1_reg_261);
assign and_ln13_fu_187_p2 = (tmp_1_fu_99_p2 & or_ln13_fu_181_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign bitcast_ln13_fu_148_p1 = basic;
assign hra_fu_93_p0 = ((and_ln13_2_fu_219_p2[0:0] == 1'b1) ? mul2_reg_272 : select_ln13_2_fu_212_p3);
assign icmp_ln13_1_fu_175_p2 = ((trunc_ln13_fu_165_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln13_fu_169_p2 = ((tmp_fu_155_p4 != 8'd255) ? 1'b1 : 1'b0);
assign or_ln13_fu_181_p2 = (icmp_ln13_fu_169_p2 | icmp_ln13_1_fu_175_p2);
assign select_ln13_1_fu_232_p3 = ((and_ln13_reg_254[0:0] == 1'b1) ? da_reg_287 : conv1_reg_282);
assign select_ln13_2_fu_212_p3 = ((and_ln13_reg_254[0:0] == 1'b1) ? reg_137 : reg_132);
assign select_ln13_fu_199_p3 = ((and_ln13_1_reg_261[0:0] == 1'b1) ? 64'd4600877379321698714 : 64'd4599075939470750515);
assign temptemp1 = grp_fu_78_p2;
assign temptemp2 = grp_fu_78_p2;
assign tmp_fu_155_p4 = {{basic[30:23]}};
assign trunc_ln13_fu_165_p1 = basic[22:0];
assign xor_ln13_fu_207_p2 = (1'd1 ^ and_ln13_reg_254);
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
