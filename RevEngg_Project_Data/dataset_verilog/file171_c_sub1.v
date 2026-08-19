module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 a,
 b,
 c,
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
 temptemp6,
 temptemp6_ap_vld,
 temptemp7,
 temptemp7_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 57'd1;
parameter ap_ST_fsm_state2 = 57'd2;
parameter ap_ST_fsm_state3 = 57'd4;
parameter ap_ST_fsm_state4 = 57'd8;
parameter ap_ST_fsm_state5 = 57'd16;
parameter ap_ST_fsm_state6 = 57'd32;
parameter ap_ST_fsm_state7 = 57'd64;
parameter ap_ST_fsm_state8 = 57'd128;
parameter ap_ST_fsm_state9 = 57'd256;
parameter ap_ST_fsm_state10 = 57'd512;
parameter ap_ST_fsm_state11 = 57'd1024;
parameter ap_ST_fsm_state12 = 57'd2048;
parameter ap_ST_fsm_state13 = 57'd4096;
parameter ap_ST_fsm_state14 = 57'd8192;
parameter ap_ST_fsm_state15 = 57'd16384;
parameter ap_ST_fsm_state16 = 57'd32768;
parameter ap_ST_fsm_state17 = 57'd65536;
parameter ap_ST_fsm_state18 = 57'd131072;
parameter ap_ST_fsm_state19 = 57'd262144;
parameter ap_ST_fsm_state20 = 57'd524288;
parameter ap_ST_fsm_state21 = 57'd1048576;
parameter ap_ST_fsm_state22 = 57'd2097152;
parameter ap_ST_fsm_state23 = 57'd4194304;
parameter ap_ST_fsm_state24 = 57'd8388608;
parameter ap_ST_fsm_state25 = 57'd16777216;
parameter ap_ST_fsm_state26 = 57'd33554432;
parameter ap_ST_fsm_state27 = 57'd67108864;
parameter ap_ST_fsm_state28 = 57'd134217728;
parameter ap_ST_fsm_state29 = 57'd268435456;
parameter ap_ST_fsm_state30 = 57'd536870912;
parameter ap_ST_fsm_state31 = 57'd1073741824;
parameter ap_ST_fsm_state32 = 57'd2147483648;
parameter ap_ST_fsm_state33 = 57'd4294967296;
parameter ap_ST_fsm_state34 = 57'd8589934592;
parameter ap_ST_fsm_state35 = 57'd17179869184;
parameter ap_ST_fsm_state36 = 57'd34359738368;
parameter ap_ST_fsm_state37 = 57'd68719476736;
parameter ap_ST_fsm_state38 = 57'd137438953472;
parameter ap_ST_fsm_state39 = 57'd274877906944;
parameter ap_ST_fsm_state40 = 57'd549755813888;
parameter ap_ST_fsm_state41 = 57'd1099511627776;
parameter ap_ST_fsm_state42 = 57'd2199023255552;
parameter ap_ST_fsm_state43 = 57'd4398046511104;
parameter ap_ST_fsm_state44 = 57'd8796093022208;
parameter ap_ST_fsm_state45 = 57'd17592186044416;
parameter ap_ST_fsm_state46 = 57'd35184372088832;
parameter ap_ST_fsm_state47 = 57'd70368744177664;
parameter ap_ST_fsm_state48 = 57'd140737488355328;
parameter ap_ST_fsm_state49 = 57'd281474976710656;
parameter ap_ST_fsm_state50 = 57'd562949953421312;
parameter ap_ST_fsm_state51 = 57'd1125899906842624;
parameter ap_ST_fsm_state52 = 57'd2251799813685248;
parameter ap_ST_fsm_state53 = 57'd4503599627370496;
parameter ap_ST_fsm_state54 = 57'd9007199254740992;
parameter ap_ST_fsm_state55 = 57'd18014398509481984;
parameter ap_ST_fsm_state56 = 57'd36028797018963968;
parameter ap_ST_fsm_state57 = 57'd72057594037927936;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] a;
input [31:0] b;
input [31:0] c;
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
output [31:0] temptemp6;
output temptemp6_ap_vld;
output [31:0] temptemp7;
output temptemp7_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
reg temptemp5_ap_vld;
reg temptemp6_ap_vld;
reg temptemp7_ap_vld;
(* fsm_encoding = "none" *) reg [56:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] grp_fu_131_p2;
reg [31:0] reg_185;
wire ap_CS_fsm_state2;
wire ap_CS_fsm_state4;
wire ap_CS_fsm_state6;
wire [63:0] grp_fu_151_p1;
reg [63:0] reg_193;
wire ap_CS_fsm_state7;
wire [0:0] and_ln14_fu_265_p2;
wire ap_CS_fsm_state12;
reg [0:0] and_ln25_reg_369;
wire ap_CS_fsm_state22;
wire ap_CS_fsm_state43;
wire ap_CS_fsm_state46;
wire [63:0] grp_fu_180_p2;
reg [63:0] reg_202;
wire [63:0] grp_fu_172_p2;
reg [63:0] reg_209;
wire ap_CS_fsm_state32;
wire ap_CS_fsm_state56;
wire [31:0] bitcast_ln13_1_fu_214_p1;
reg [31:0] bitcast_ln13_1_reg_320;
wire ap_CS_fsm_state3;
wire [31:0] bitcast_ln13_fu_219_p1;
wire [31:0] grp_fu_136_p2;
reg [31:0] mul2_reg_341;
wire [31:0] grp_fu_127_p2;
reg [31:0] discriminant_reg_346;
wire [31:0] bitcast_ln14_fu_230_p1;
reg [31:0] bitcast_ln14_reg_354;
reg [0:0] and_ln14_reg_359;
wire [31:0] bitcast_ln15_fu_276_p1;
reg [31:0] bitcast_ln15_reg_363;
wire [0:0] and_ln25_fu_281_p2;
wire [63:0] grp_fu_164_p2;
reg [63:0] add_reg_373;
wire [63:0] grp_fu_168_p2;
reg [63:0] sub_reg_378;
wire [63:0] grp_fu_176_p2;
reg [63:0] div1_reg_383;
wire [31:0] bitcast_ln35_fu_287_p1;
wire [31:0] bitcast_ln36_fu_304_p1;
wire ap_CS_fsm_state33;
wire ap_CS_fsm_state57;
wire ap_CS_fsm_state5;
reg [31:0] grp_fu_131_p0;
reg [31:0] grp_fu_131_p1;
wire [31:0] grp_fu_136_p1;
wire [31:0] grp_fu_141_p0;
reg [31:0] grp_fu_151_p0;
wire [31:0] bitcast_ln33_fu_299_p1;
wire ap_CS_fsm_state44;
reg [63:0] grp_fu_172_p0;
wire ap_CS_fsm_state23;
wire ap_CS_fsm_state47;
wire ap_CS_fsm_state13;
wire ap_CS_fsm_state34;
wire [7:0] tmp_2_fu_233_p4;
wire [22:0] trunc_ln14_fu_243_p1;
wire [0:0] icmp_ln14_1_fu_253_p2;
wire [0:0] icmp_ln14_fu_247_p2;
wire [0:0] or_ln14_fu_259_p2;
wire [0:0] tmp_3_fu_154_p2;
wire [31:0] xor_ln15_fu_271_p2;
wire [0:0] tmp_5_fu_159_p2;
wire [31:0] grp_fu_141_p2;
wire [31:0] xor_ln33_fu_294_p2;
wire [31:0] grp_fu_145_p1;
wire [31:0] root2_fu_148_p1;
reg [56:0] ap_NS_fsm;
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
wire ap_ST_fsm_state24_blk;
wire ap_ST_fsm_state25_blk;
wire ap_ST_fsm_state26_blk;
wire ap_ST_fsm_state27_blk;
wire ap_ST_fsm_state28_blk;
wire ap_ST_fsm_state29_blk;
wire ap_ST_fsm_state30_blk;
wire ap_ST_fsm_state31_blk;
wire ap_ST_fsm_state32_blk;
wire ap_ST_fsm_state33_blk;
wire ap_ST_fsm_state34_blk;
wire ap_ST_fsm_state35_blk;
wire ap_ST_fsm_state36_blk;
wire ap_ST_fsm_state37_blk;
wire ap_ST_fsm_state38_blk;
wire ap_ST_fsm_state39_blk;
wire ap_ST_fsm_state40_blk;
wire ap_ST_fsm_state41_blk;
wire ap_ST_fsm_state42_blk;
wire ap_ST_fsm_state43_blk;
wire ap_ST_fsm_state44_blk;
wire ap_ST_fsm_state45_blk;
wire ap_ST_fsm_state46_blk;
wire ap_ST_fsm_state47_blk;
wire ap_ST_fsm_state48_blk;
wire ap_ST_fsm_state49_blk;
wire ap_ST_fsm_state50_blk;
wire ap_ST_fsm_state51_blk;
wire ap_ST_fsm_state52_blk;
wire ap_ST_fsm_state53_blk;
wire ap_ST_fsm_state54_blk;
wire ap_ST_fsm_state55_blk;
wire ap_ST_fsm_state56_blk;
wire ap_ST_fsm_state57_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 57'd1;
end
entry_point_fsub_32ns_32ns_32_2_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fsub_32ns_32ns_32_2_full_dsp_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(reg_185),
 .din1(mul2_reg_341),
 .ce(1'b1),
 .dout(grp_fu_127_p2)
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
 .din0(grp_fu_131_p0),
 .din1(grp_fu_131_p1),
 .ce(1'b1),
 .dout(grp_fu_131_p2)
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
 .din0(reg_185),
 .din1(grp_fu_136_p1),
 .ce(1'b1),
 .dout(grp_fu_136_p2)
);
entry_point_fdiv_32ns_32ns_32_6_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 6 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fdiv_32ns_32ns_32_6_no_dsp_1_U4(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_141_p0),
 .din1(reg_185),
 .ce(1'b1),
 .dout(grp_fu_141_p2)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U5(
 .din0(reg_209),
 .dout(grp_fu_145_p1)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U6(
 .din0(div1_reg_383),
 .dout(root2_fu_148_p1)
);
entry_point_fpext_32ns_64_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
fpext_32ns_64_1_no_dsp_1_U7(
 .din0(grp_fu_151_p0),
 .dout(grp_fu_151_p1)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U8(
 .din0(discriminant_reg_346),
 .din1(32'd0),
 .opcode(5'd2),
 .dout(tmp_3_fu_154_p2)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U9(
 .din0(discriminant_reg_346),
 .din1(32'd0),
 .opcode(5'd1),
 .dout(tmp_5_fu_159_p2)
);
entry_point_dadd_64ns_64ns_64_3_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 3 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dadd_64ns_64ns_64_3_full_dsp_1_U10(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(reg_193),
 .din1(reg_202),
 .ce(1'b1),
 .dout(grp_fu_164_p2)
);
entry_point_dsub_64ns_64ns_64_3_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 3 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dsub_64ns_64ns_64_3_full_dsp_1_U11(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(reg_193),
 .din1(reg_202),
 .ce(1'b1),
 .dout(grp_fu_168_p2)
);
entry_point_ddiv_64ns_64ns_64_10_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 10 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_10_no_dsp_1_U12(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_172_p0),
 .din1(reg_193),
 .ce(1'b1),
 .dout(grp_fu_172_p2)
);
entry_point_ddiv_64ns_64ns_64_10_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 10 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_10_no_dsp_1_U13(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(sub_reg_378),
 .din1(reg_193),
 .ce(1'b1),
 .dout(grp_fu_176_p2)
);
entry_point_dsqrt_64ns_64ns_64_10_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 10 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_10_no_dsp_1_U14(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(64'd0),
 .din1(reg_193),
 .ce(1'b1),
 .dout(grp_fu_180_p2)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state46)) begin
 add_reg_373 <= grp_fu_164_p2;
 sub_reg_378 <= grp_fu_168_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 and_ln14_reg_359 <= and_ln14_fu_265_p2;
 bitcast_ln14_reg_354 <= bitcast_ln14_fu_230_p1;
 bitcast_ln15_reg_363 <= bitcast_ln15_fu_276_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state7) & (1'd0 == and_ln14_fu_265_p2))) begin
 and_ln25_reg_369 <= and_ln25_fu_281_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 bitcast_ln13_1_reg_320 <= bitcast_ln13_1_fu_214_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 discriminant_reg_346 <= grp_fu_127_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state56)) begin
 div1_reg_383 <= grp_fu_176_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 mul2_reg_341 <= grp_fu_136_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
 reg_185 <= grp_fu_131_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state12) & (1'd0 == and_ln25_reg_369)) | ((1'b1 == ap_CS_fsm_state7) & (1'd1 == and_ln14_fu_265_p2)))) begin
 reg_193 <= grp_fu_151_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state22))) begin
 reg_202 <= grp_fu_180_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state56) | (1'b1 == ap_CS_fsm_state32))) begin
 reg_209 <= grp_fu_172_p2;
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
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state30_blk = 1'b0;
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
assign ap_ST_fsm_state33_blk = 1'b0;
assign ap_ST_fsm_state34_blk = 1'b0;
assign ap_ST_fsm_state35_blk = 1'b0;
assign ap_ST_fsm_state36_blk = 1'b0;
assign ap_ST_fsm_state37_blk = 1'b0;
assign ap_ST_fsm_state38_blk = 1'b0;
assign ap_ST_fsm_state39_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state40_blk = 1'b0;
assign ap_ST_fsm_state41_blk = 1'b0;
assign ap_ST_fsm_state42_blk = 1'b0;
assign ap_ST_fsm_state43_blk = 1'b0;
assign ap_ST_fsm_state44_blk = 1'b0;
assign ap_ST_fsm_state45_blk = 1'b0;
assign ap_ST_fsm_state46_blk = 1'b0;
assign ap_ST_fsm_state47_blk = 1'b0;
assign ap_ST_fsm_state48_blk = 1'b0;
assign ap_ST_fsm_state49_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state50_blk = 1'b0;
assign ap_ST_fsm_state51_blk = 1'b0;
assign ap_ST_fsm_state52_blk = 1'b0;
assign ap_ST_fsm_state53_blk = 1'b0;
assign ap_ST_fsm_state54_blk = 1'b0;
assign ap_ST_fsm_state55_blk = 1'b0;
assign ap_ST_fsm_state56_blk = 1'b0;
assign ap_ST_fsm_state57_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state33)) begin
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
 if ((1'b1 == ap_CS_fsm_state33)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 grp_fu_131_p0 = bitcast_ln13_1_reg_320;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_fu_131_p0 = bitcast_ln13_fu_219_p1;
 end else if ((1'b1 == ap_CS_fsm_state1)) begin
 grp_fu_131_p0 = bitcast_ln13_1_fu_214_p1;
 end else begin
 grp_fu_131_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 grp_fu_131_p1 = 32'd1073741824;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_fu_131_p1 = bitcast_ln13_fu_219_p1;
 end else if ((1'b1 == ap_CS_fsm_state1)) begin
 grp_fu_131_p1 = 32'd1082130432;
 end else begin
 grp_fu_131_p1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state43)) begin
 grp_fu_151_p0 = bitcast_ln15_reg_363;
 end else if (((1'b1 == ap_CS_fsm_state46) | (1'b1 == ap_CS_fsm_state22))) begin
 grp_fu_151_p0 = reg_185;
 end else if ((1'b1 == ap_CS_fsm_state12)) begin
 grp_fu_151_p0 = bitcast_ln33_fu_299_p1;
 end else if ((1'b1 == ap_CS_fsm_state7)) begin
 grp_fu_151_p0 = discriminant_reg_346;
 end else begin
 grp_fu_151_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state47)) begin
 grp_fu_172_p0 = add_reg_373;
 end else if ((1'b1 == ap_CS_fsm_state23)) begin
 grp_fu_172_p0 = reg_202;
 end else begin
 grp_fu_172_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state57)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state57)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state12) & (1'd1 == and_ln25_reg_369))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state12) & (1'd0 == and_ln25_reg_369))) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state33) & (1'd0 == and_ln14_reg_359) & (1'd0 == and_ln25_reg_369))) begin
 temptemp5_ap_vld = 1'b1;
 end else begin
 temptemp5_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state12) & (1'd0 == and_ln25_reg_369))) begin
 temptemp6_ap_vld = 1'b1;
 end else begin
 temptemp6_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state33) & (1'd0 == and_ln14_reg_359) & (1'd0 == and_ln25_reg_369))) begin
 temptemp7_ap_vld = 1'b1;
 end else begin
 temptemp7_ap_vld = 1'b0;
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
 if (((1'b1 == ap_CS_fsm_state7) & (1'd1 == and_ln14_fu_265_p2))) begin
 ap_NS_fsm = ap_ST_fsm_state34;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state8;
 end
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
 if (((1'b1 == ap_CS_fsm_state12) & (1'd1 == and_ln25_reg_369))) begin
 ap_NS_fsm = ap_ST_fsm_state33;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state13;
 end
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
 ap_NS_fsm = ap_ST_fsm_state24;
 end
 ap_ST_fsm_state24 : begin
 ap_NS_fsm = ap_ST_fsm_state25;
 end
 ap_ST_fsm_state25 : begin
 ap_NS_fsm = ap_ST_fsm_state26;
 end
 ap_ST_fsm_state26 : begin
 ap_NS_fsm = ap_ST_fsm_state27;
 end
 ap_ST_fsm_state27 : begin
 ap_NS_fsm = ap_ST_fsm_state28;
 end
 ap_ST_fsm_state28 : begin
 ap_NS_fsm = ap_ST_fsm_state29;
 end
 ap_ST_fsm_state29 : begin
 ap_NS_fsm = ap_ST_fsm_state30;
 end
 ap_ST_fsm_state30 : begin
 ap_NS_fsm = ap_ST_fsm_state31;
 end
 ap_ST_fsm_state31 : begin
 ap_NS_fsm = ap_ST_fsm_state32;
 end
 ap_ST_fsm_state32 : begin
 ap_NS_fsm = ap_ST_fsm_state33;
 end
 ap_ST_fsm_state33 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 ap_ST_fsm_state34 : begin
 ap_NS_fsm = ap_ST_fsm_state35;
 end
 ap_ST_fsm_state35 : begin
 ap_NS_fsm = ap_ST_fsm_state36;
 end
 ap_ST_fsm_state36 : begin
 ap_NS_fsm = ap_ST_fsm_state37;
 end
 ap_ST_fsm_state37 : begin
 ap_NS_fsm = ap_ST_fsm_state38;
 end
 ap_ST_fsm_state38 : begin
 ap_NS_fsm = ap_ST_fsm_state39;
 end
 ap_ST_fsm_state39 : begin
 ap_NS_fsm = ap_ST_fsm_state40;
 end
 ap_ST_fsm_state40 : begin
 ap_NS_fsm = ap_ST_fsm_state41;
 end
 ap_ST_fsm_state41 : begin
 ap_NS_fsm = ap_ST_fsm_state42;
 end
 ap_ST_fsm_state42 : begin
 ap_NS_fsm = ap_ST_fsm_state43;
 end
 ap_ST_fsm_state43 : begin
 ap_NS_fsm = ap_ST_fsm_state44;
 end
 ap_ST_fsm_state44 : begin
 ap_NS_fsm = ap_ST_fsm_state45;
 end
 ap_ST_fsm_state45 : begin
 ap_NS_fsm = ap_ST_fsm_state46;
 end
 ap_ST_fsm_state46 : begin
 ap_NS_fsm = ap_ST_fsm_state47;
 end
 ap_ST_fsm_state47 : begin
 ap_NS_fsm = ap_ST_fsm_state48;
 end
 ap_ST_fsm_state48 : begin
 ap_NS_fsm = ap_ST_fsm_state49;
 end
 ap_ST_fsm_state49 : begin
 ap_NS_fsm = ap_ST_fsm_state50;
 end
 ap_ST_fsm_state50 : begin
 ap_NS_fsm = ap_ST_fsm_state51;
 end
 ap_ST_fsm_state51 : begin
 ap_NS_fsm = ap_ST_fsm_state52;
 end
 ap_ST_fsm_state52 : begin
 ap_NS_fsm = ap_ST_fsm_state53;
 end
 ap_ST_fsm_state53 : begin
 ap_NS_fsm = ap_ST_fsm_state54;
 end
 ap_ST_fsm_state54 : begin
 ap_NS_fsm = ap_ST_fsm_state55;
 end
 ap_ST_fsm_state55 : begin
 ap_NS_fsm = ap_ST_fsm_state56;
 end
 ap_ST_fsm_state56 : begin
 ap_NS_fsm = ap_ST_fsm_state57;
 end
 ap_ST_fsm_state57 : begin
 ap_NS_fsm = ap_ST_fsm_state33;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign and_ln14_fu_265_p2 = (tmp_3_fu_154_p2 & or_ln14_fu_259_p2);
assign and_ln25_fu_281_p2 = (tmp_5_fu_159_p2 & or_ln14_fu_259_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_state34 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state43 = ap_CS_fsm[32'd42];
assign ap_CS_fsm_state44 = ap_CS_fsm[32'd43];
assign ap_CS_fsm_state46 = ap_CS_fsm[32'd45];
assign ap_CS_fsm_state47 = ap_CS_fsm[32'd46];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state56 = ap_CS_fsm[32'd55];
assign ap_CS_fsm_state57 = ap_CS_fsm[32'd56];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_return = 32'd0;
assign bitcast_ln13_1_fu_214_p1 = a;
assign bitcast_ln13_fu_219_p1 = b;
assign bitcast_ln14_fu_230_p1 = discriminant_reg_346;
assign bitcast_ln15_fu_276_p1 = xor_ln15_fu_271_p2;
assign bitcast_ln33_fu_299_p1 = xor_ln33_fu_294_p2;
assign bitcast_ln35_fu_287_p1 = grp_fu_141_p2;
assign bitcast_ln36_fu_304_p1 = grp_fu_145_p1;
assign grp_fu_136_p1 = c;
assign grp_fu_141_p0 = xor_ln15_fu_271_p2;
assign icmp_ln14_1_fu_253_p2 = ((trunc_ln14_fu_243_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln14_fu_247_p2 = ((tmp_2_fu_233_p4 != 8'd255) ? 1'b1 : 1'b0);
assign or_ln14_fu_259_p2 = (icmp_ln14_fu_247_p2 | icmp_ln14_1_fu_253_p2);
assign temptemp1 = grp_fu_145_p1;
assign temptemp2 = root2_fu_148_p1;
assign temptemp3 = bitcast_ln35_fu_287_p1;
assign temptemp4 = bitcast_ln35_fu_287_p1;
assign temptemp5 = bitcast_ln36_fu_304_p1;
assign temptemp6 = bitcast_ln35_fu_287_p1;
assign temptemp7 = bitcast_ln36_fu_304_p1;
assign tmp_2_fu_233_p4 = {{bitcast_ln14_fu_230_p1[30:23]}};
assign trunc_ln14_fu_243_p1 = bitcast_ln14_fu_230_p1[22:0];
assign xor_ln15_fu_271_p2 = (b ^ 32'd2147483648);
assign xor_ln33_fu_294_p2 = (bitcast_ln14_reg_354 ^ 32'd2147483648);
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
module entry_point_ddiv_64ns_64ns_64_10_no_dsp_1
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
module entry_point_dsub_64ns_64ns_64_3_full_dsp_1
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
module entry_point_fsub_32ns_32ns_32_2_full_dsp_1
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
