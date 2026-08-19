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
 ap_return
);
parameter ap_ST_fsm_state1 = 44'd1;
parameter ap_ST_fsm_state2 = 44'd2;
parameter ap_ST_fsm_state3 = 44'd4;
parameter ap_ST_fsm_state4 = 44'd8;
parameter ap_ST_fsm_state5 = 44'd16;
parameter ap_ST_fsm_state6 = 44'd32;
parameter ap_ST_fsm_state7 = 44'd64;
parameter ap_ST_fsm_state8 = 44'd128;
parameter ap_ST_fsm_state9 = 44'd256;
parameter ap_ST_fsm_state10 = 44'd512;
parameter ap_ST_fsm_state11 = 44'd1024;
parameter ap_ST_fsm_state12 = 44'd2048;
parameter ap_ST_fsm_state13 = 44'd4096;
parameter ap_ST_fsm_state14 = 44'd8192;
parameter ap_ST_fsm_state15 = 44'd16384;
parameter ap_ST_fsm_state16 = 44'd32768;
parameter ap_ST_fsm_state17 = 44'd65536;
parameter ap_ST_fsm_state18 = 44'd131072;
parameter ap_ST_fsm_state19 = 44'd262144;
parameter ap_ST_fsm_state20 = 44'd524288;
parameter ap_ST_fsm_state21 = 44'd1048576;
parameter ap_ST_fsm_state22 = 44'd2097152;
parameter ap_ST_fsm_state23 = 44'd4194304;
parameter ap_ST_fsm_state24 = 44'd8388608;
parameter ap_ST_fsm_state25 = 44'd16777216;
parameter ap_ST_fsm_state26 = 44'd33554432;
parameter ap_ST_fsm_state27 = 44'd67108864;
parameter ap_ST_fsm_state28 = 44'd134217728;
parameter ap_ST_fsm_state29 = 44'd268435456;
parameter ap_ST_fsm_state30 = 44'd536870912;
parameter ap_ST_fsm_state31 = 44'd1073741824;
parameter ap_ST_fsm_state32 = 44'd2147483648;
parameter ap_ST_fsm_state33 = 44'd4294967296;
parameter ap_ST_fsm_state34 = 44'd8589934592;
parameter ap_ST_fsm_state35 = 44'd17179869184;
parameter ap_ST_fsm_state36 = 44'd34359738368;
parameter ap_ST_fsm_state37 = 44'd68719476736;
parameter ap_ST_fsm_state38 = 44'd137438953472;
parameter ap_ST_fsm_state39 = 44'd274877906944;
parameter ap_ST_fsm_state40 = 44'd549755813888;
parameter ap_ST_fsm_state41 = 44'd1099511627776;
parameter ap_ST_fsm_state42 = 44'd2199023255552;
parameter ap_ST_fsm_state43 = 44'd4398046511104;
parameter ap_ST_fsm_state44 = 44'd8796093022208;
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
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
(* fsm_encoding = "none" *) reg [43:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [63:0] grp_fu_134_p1;
reg [63:0] reg_148;
wire ap_CS_fsm_state5;
wire ap_CS_fsm_state9;
wire ap_CS_fsm_state30;
wire ap_CS_fsm_state33;
wire [31:0] grp_fu_142_p2;
wire ap_CS_fsm_state8;
wire ap_CS_fsm_state29;
wire [63:0] grp_fu_126_p2;
reg [63:0] reg_163;
wire ap_CS_fsm_state19;
wire ap_CS_fsm_state43;
wire [31:0] sub_ln9_fu_186_p2;
reg [31:0] sub_ln9_reg_271;
wire [31:0] grp_fu_91_p1;
reg [31:0] discriminant_reg_276;
wire ap_CS_fsm_state3;
wire [0:0] and_ln10_fu_227_p2;
reg [0:0] and_ln10_reg_284;
wire ap_CS_fsm_state4;
wire [0:0] and_ln18_fu_233_p2;
reg [0:0] and_ln18_reg_288;
wire [63:0] conv5_fu_100_p1;
reg [63:0] conv5_reg_292;
wire [63:0] grp_fu_121_p2;
reg [63:0] mul_reg_297;
wire [63:0] grp_fu_137_p2;
reg [63:0] tmp_reg_302;
wire [31:0] shl_ln11_fu_244_p2;
wire ap_CS_fsm_state32;
wire [63:0] grp_fu_113_p2;
reg [63:0] add_reg_313;
wire [63:0] grp_fu_117_p2;
reg [63:0] sub_reg_318;
wire [63:0] grp_fu_130_p2;
reg [63:0] div1_reg_323;
wire ap_CS_fsm_state20;
wire ap_CS_fsm_state44;
wire ap_CS_fsm_state2;
wire ap_CS_fsm_state31;
wire ap_CS_fsm_state6;
reg [63:0] grp_fu_126_p0;
reg [63:0] grp_fu_126_p1;
wire ap_CS_fsm_state10;
wire ap_CS_fsm_state34;
reg signed [31:0] grp_fu_134_p0;
wire ap_CS_fsm_state21;
wire signed [31:0] grp_fu_142_p1;
wire [31:0] mul_ln9_1_fu_174_p2;
wire [31:0] mul_ln9_fu_168_p2;
wire [31:0] shl_ln9_fu_180_p2;
wire [31:0] bitcast_ln10_fu_192_p1;
wire [7:0] tmp_1_fu_195_p4;
wire [22:0] trunc_ln10_fu_205_p1;
wire [0:0] icmp_ln10_1_fu_215_p2;
wire [0:0] icmp_ln10_fu_209_p2;
wire [0:0] or_ln10_fu_221_p2;
wire [0:0] tmp_2_fu_103_p2;
wire [0:0] tmp_4_fu_108_p2;
wire [31:0] grp_fu_94_p1;
wire signed [31:0] shl_ln11_fu_244_p0;
wire [31:0] root2_fu_97_p1;
reg [43:0] ap_NS_fsm;
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
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 44'd1;
end
entry_point_sitofp_32ns_32_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
sitofp_32ns_32_2_no_dsp_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(sub_ln9_reg_271),
 .ce(1'b1),
 .dout(grp_fu_91_p1)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U2(
 .din0(reg_163),
 .dout(grp_fu_94_p1)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U3(
 .din0(div1_reg_323),
 .dout(root2_fu_97_p1)
);
entry_point_fpext_32ns_64_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
fpext_32ns_64_1_no_dsp_1_U4(
 .din0(discriminant_reg_276),
 .dout(conv5_fu_100_p1)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U5(
 .din0(discriminant_reg_276),
 .din1(32'd0),
 .opcode(5'd2),
 .dout(tmp_2_fu_103_p2)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U6(
 .din0(discriminant_reg_276),
 .din1(32'd0),
 .opcode(5'd1),
 .dout(tmp_4_fu_108_p2)
);
entry_point_dadd_64ns_64ns_64_3_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 3 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dadd_64ns_64ns_64_3_full_dsp_1_U7(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(reg_148),
 .din1(tmp_reg_302),
 .ce(1'b1),
 .dout(grp_fu_113_p2)
);
entry_point_dsub_64ns_64ns_64_3_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 3 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dsub_64ns_64ns_64_3_full_dsp_1_U8(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(reg_148),
 .din1(tmp_reg_302),
 .ce(1'b1),
 .dout(grp_fu_117_p2)
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
 .din0(reg_148),
 .din1(64'd4611686018427387904),
 .ce(1'b1),
 .dout(grp_fu_121_p2)
);
entry_point_ddiv_64ns_64ns_64_10_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 10 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_10_no_dsp_1_U10(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_126_p0),
 .din1(grp_fu_126_p1),
 .ce(1'b1),
 .dout(grp_fu_126_p2)
);
entry_point_ddiv_64ns_64ns_64_10_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 10 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_10_no_dsp_1_U11(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(sub_reg_318),
 .din1(reg_148),
 .ce(1'b1),
 .dout(grp_fu_130_p2)
);
entry_point_sitodp_32s_64_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
sitodp_32s_64_2_no_dsp_1_U12(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_134_p0),
 .ce(1'b1),
 .dout(grp_fu_134_p1)
);
entry_point_dsqrt_64ns_64ns_64_10_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 10 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_10_no_dsp_1_U13(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(64'd0),
 .din1(conv5_reg_292),
 .ce(1'b1),
 .dout(grp_fu_137_p2)
);
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U14(
 .din0(b),
 .din1(b),
 .dout(mul_ln9_fu_168_p2)
);
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U15(
 .din0(a),
 .din1(c),
 .dout(mul_ln9_1_fu_174_p2)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state33)) begin
 add_reg_313 <= grp_fu_113_p2;
 sub_reg_318 <= grp_fu_117_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 and_ln10_reg_284 <= and_ln10_fu_227_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == and_ln10_fu_227_p2))) begin
 and_ln18_reg_288 <= and_ln18_fu_233_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state4) & (1'd1 == and_ln10_fu_227_p2))) begin
 conv5_reg_292 <= conv5_fu_100_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 discriminant_reg_276 <= grp_fu_91_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state43)) begin
 div1_reg_323 <= grp_fu_130_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state9)) begin
 mul_reg_297 <= grp_fu_121_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state33) | (1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5))) begin
 reg_148 <= grp_fu_134_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state43) | (1'b1 == ap_CS_fsm_state19))) begin
 reg_163 <= grp_fu_126_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 sub_ln9_reg_271 <= sub_ln9_fu_186_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state30)) begin
 tmp_reg_302 <= grp_fu_137_p2;
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
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state44)) begin
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
 if ((1'b1 == ap_CS_fsm_state44)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state34)) begin
 grp_fu_126_p0 = add_reg_313;
 end else if ((1'b1 == ap_CS_fsm_state10)) begin
 grp_fu_126_p0 = reg_148;
 end else begin
 grp_fu_126_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state34)) begin
 grp_fu_126_p1 = reg_148;
 end else if ((1'b1 == ap_CS_fsm_state10)) begin
 grp_fu_126_p1 = mul_reg_297;
 end else begin
 grp_fu_126_p1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state32)) begin
 grp_fu_134_p0 = shl_ln11_fu_244_p2;
 end else if (((1'b1 == ap_CS_fsm_state29) | (1'b1 == ap_CS_fsm_state8))) begin
 grp_fu_134_p0 = grp_fu_142_p2;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 grp_fu_134_p0 = a;
 end else begin
 grp_fu_134_p0 = 'bx;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state44) & (1'd1 == and_ln10_reg_284))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state44) & (1'd1 == and_ln10_reg_284))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state20) & (1'd1 == and_ln18_reg_288))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
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
 if (((1'b1 == ap_CS_fsm_state4) & (1'd0 == and_ln18_fu_233_p2) & (1'd0 == and_ln10_fu_227_p2))) begin
 ap_NS_fsm = ap_ST_fsm_state20;
 end else if (((1'b1 == ap_CS_fsm_state4) & (1'd1 == and_ln18_fu_233_p2) & (1'd0 == and_ln10_fu_227_p2))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state21;
 end
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
 ap_NS_fsm = ap_ST_fsm_state44;
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
 ap_NS_fsm = ap_ST_fsm_state34;
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign and_ln10_fu_227_p2 = (tmp_2_fu_103_p2 & or_ln10_fu_221_p2);
assign and_ln18_fu_233_p2 = (tmp_4_fu_108_p2 & or_ln10_fu_221_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_state33 = ap_CS_fsm[32'd32];
assign ap_CS_fsm_state34 = ap_CS_fsm[32'd33];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state43 = ap_CS_fsm[32'd42];
assign ap_CS_fsm_state44 = ap_CS_fsm[32'd43];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign bitcast_ln10_fu_192_p1 = discriminant_reg_276;
assign grp_fu_142_p1 = b;
assign grp_fu_142_p2 = ($signed(32'd0) - $signed(grp_fu_142_p1));
assign icmp_ln10_1_fu_215_p2 = ((trunc_ln10_fu_205_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln10_fu_209_p2 = ((tmp_1_fu_195_p4 != 8'd255) ? 1'b1 : 1'b0);
assign or_ln10_fu_221_p2 = (icmp_ln10_fu_209_p2 | icmp_ln10_1_fu_215_p2);
assign shl_ln11_fu_244_p0 = a;
assign shl_ln11_fu_244_p2 = shl_ln11_fu_244_p0 << 32'd1;
assign shl_ln9_fu_180_p2 = mul_ln9_1_fu_174_p2 << 32'd2;
assign sub_ln9_fu_186_p2 = (mul_ln9_fu_168_p2 - shl_ln9_fu_180_p2);
assign temptemp1 = grp_fu_94_p1;
assign temptemp2 = root2_fu_97_p1;
assign temptemp3 = grp_fu_94_p1;
assign tmp_1_fu_195_p4 = {{bitcast_ln10_fu_192_p1[30:23]}};
assign trunc_ln10_fu_205_p1 = bitcast_ln10_fu_192_p1[22:0];
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
module entry_point_mul_32s_32s_32_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed(din0) * $signed(din1);
endmodule
module entry_point_sitodp_32s_64_2_no_dsp_1
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
