module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 coeff_a,
 coeff_b,
 coeff_c,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 27'd1;
parameter ap_ST_fsm_state2 = 27'd2;
parameter ap_ST_fsm_state3 = 27'd4;
parameter ap_ST_fsm_state4 = 27'd8;
parameter ap_ST_fsm_state5 = 27'd16;
parameter ap_ST_fsm_state6 = 27'd32;
parameter ap_ST_fsm_state7 = 27'd64;
parameter ap_ST_fsm_state8 = 27'd128;
parameter ap_ST_fsm_state9 = 27'd256;
parameter ap_ST_fsm_state10 = 27'd512;
parameter ap_ST_fsm_state11 = 27'd1024;
parameter ap_ST_fsm_state12 = 27'd2048;
parameter ap_ST_fsm_state13 = 27'd4096;
parameter ap_ST_fsm_state14 = 27'd8192;
parameter ap_ST_fsm_state15 = 27'd16384;
parameter ap_ST_fsm_state16 = 27'd32768;
parameter ap_ST_fsm_state17 = 27'd65536;
parameter ap_ST_fsm_state18 = 27'd131072;
parameter ap_ST_fsm_state19 = 27'd262144;
parameter ap_ST_fsm_state20 = 27'd524288;
parameter ap_ST_fsm_state21 = 27'd1048576;
parameter ap_ST_fsm_state22 = 27'd2097152;
parameter ap_ST_fsm_state23 = 27'd4194304;
parameter ap_ST_fsm_state24 = 27'd8388608;
parameter ap_ST_fsm_state25 = 27'd16777216;
parameter ap_ST_fsm_state26 = 27'd33554432;
parameter ap_ST_fsm_state27 = 27'd67108864;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] coeff_a;
input [31:0] coeff_b;
input [31:0] coeff_c;
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
(* fsm_encoding = "none" *) reg [26:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [63:0] grp_fu_112_p1;
reg [63:0] reg_132;
wire ap_CS_fsm_state3;
wire ap_CS_fsm_state13;
wire ap_CS_fsm_state16;
reg signed [31:0] coeff_b_read_reg_437;
reg signed [31:0] coeff_a_read_reg_442;
wire [31:0] sub_ln12_fu_147_p2;
reg [31:0] sub_ln12_reg_447;
wire [31:0] sub_ln11_fu_153_p2;
wire ap_CS_fsm_state12;
wire [63:0] grp_fu_115_p2;
reg [63:0] tmp_reg_457;
wire [31:0] shl_ln13_fu_159_p2;
wire ap_CS_fsm_state15;
wire [63:0] grp_fu_96_p2;
reg [63:0] add_reg_468;
wire [63:0] grp_fu_100_p2;
reg [63:0] sub_reg_473;
wire [63:0] grp_fu_104_p2;
reg [63:0] dc_reg_478;
wire ap_CS_fsm_state26;
wire [63:0] grp_fu_108_p2;
reg [63:0] dc_1_reg_483;
wire ap_CS_fsm_state27;
wire ap_CS_fsm_state14;
wire ap_CS_fsm_state17;
reg [31:0] grp_fu_112_p0;
wire ap_CS_fsm_state2;
wire ap_CS_fsm_state4;
wire [31:0] mul_ln12_1_fu_126_p2;
wire [31:0] mul_ln12_fu_120_p2;
wire [31:0] shl_ln12_fu_141_p2;
wire [63:0] data_fu_165_p1;
wire [51:0] trunc_ln505_fu_184_p1;
wire [53:0] mantissa_fu_188_p4;
wire [10:0] xs_exp_fu_176_p3;
wire [11:0] zext_ln486_fu_202_p1;
wire [11:0] add_ln486_fu_206_p2;
wire [10:0] sub_ln18_fu_220_p2;
wire [0:0] tmp_2_fu_212_p3;
wire signed [11:0] sext_ln18_fu_226_p1;
wire [11:0] select_ln18_fu_230_p3;
wire signed [31:0] sext_ln18_1_fu_238_p1;
wire [136:0] zext_ln15_fu_198_p1;
wire [136:0] zext_ln18_fu_242_p1;
wire [136:0] lshr_ln18_fu_246_p2;
wire [136:0] shl_ln18_fu_252_p2;
wire [31:0] tmp_3_fu_258_p4;
wire [31:0] tmp_5_fu_268_p4;
wire [31:0] val_fu_278_p3;
wire [0:0] xs_sign_fu_168_p3;
wire [31:0] result_2_fu_286_p2;
wire [63:0] data_1_fu_301_p1;
wire [51:0] trunc_ln505_1_fu_320_p1;
wire [53:0] mantissa_1_fu_324_p4;
wire [10:0] xs_exp_1_fu_312_p3;
wire [11:0] zext_ln486_1_fu_338_p1;
wire [11:0] add_ln486_1_fu_342_p2;
wire [10:0] sub_ln18_1_fu_356_p2;
wire [0:0] tmp_8_fu_348_p3;
wire signed [11:0] sext_ln18_2_fu_362_p1;
wire [11:0] select_ln18_2_fu_366_p3;
wire signed [31:0] sext_ln18_3_fu_374_p1;
wire [136:0] zext_ln15_1_fu_334_p1;
wire [136:0] zext_ln18_1_fu_378_p1;
wire [136:0] lshr_ln18_1_fu_382_p2;
wire [136:0] shl_ln18_1_fu_388_p2;
wire [31:0] tmp_6_fu_394_p4;
wire [31:0] tmp_7_fu_404_p4;
wire [31:0] val_1_fu_414_p3;
wire [0:0] xs_sign_1_fu_304_p3;
wire [31:0] result_6_fu_422_p2;
reg [26:0] ap_NS_fsm;
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
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 27'd1;
end
entry_point_dadd_64ns_64ns_64_3_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 3 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dadd_64ns_64ns_64_3_full_dsp_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(reg_132),
 .din1(tmp_reg_457),
 .ce(1'b1),
 .dout(grp_fu_96_p2)
);
entry_point_dsub_64ns_64ns_64_3_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 3 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dsub_64ns_64ns_64_3_full_dsp_1_U2(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(reg_132),
 .din1(tmp_reg_457),
 .ce(1'b1),
 .dout(grp_fu_100_p2)
);
entry_point_ddiv_64ns_64ns_64_10_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 10 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_10_no_dsp_1_U3(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(add_reg_468),
 .din1(reg_132),
 .ce(1'b1),
 .dout(grp_fu_104_p2)
);
entry_point_ddiv_64ns_64ns_64_10_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 10 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_10_no_dsp_1_U4(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(sub_reg_473),
 .din1(reg_132),
 .ce(1'b1),
 .dout(grp_fu_108_p2)
);
entry_point_sitodp_32ns_64_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
sitodp_32ns_64_2_no_dsp_1_U5(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_112_p0),
 .ce(1'b1),
 .dout(grp_fu_112_p1)
);
entry_point_dsqrt_64ns_64ns_64_10_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 10 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_10_no_dsp_1_U6(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(64'd0),
 .din1(reg_132),
 .ce(1'b1),
 .dout(grp_fu_115_p2)
);
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U7(
 .din0(coeff_b),
 .din1(coeff_b),
 .dout(mul_ln12_fu_120_p2)
);
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U8(
 .din0(coeff_a),
 .din1(coeff_c),
 .dout(mul_ln12_1_fu_126_p2)
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
 add_reg_468 <= grp_fu_96_p2;
 sub_reg_473 <= grp_fu_100_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 coeff_a_read_reg_442 <= coeff_a;
 coeff_b_read_reg_437 <= coeff_b;
 sub_ln12_reg_447 <= sub_ln12_fu_147_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state26)) begin
 dc_1_reg_483 <= grp_fu_108_p2;
 dc_reg_478 <= grp_fu_104_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state3))) begin
 reg_132 <= grp_fu_112_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state13)) begin
 tmp_reg_457 <= grp_fu_115_p2;
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
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state27)) begin
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
 if ((1'b1 == ap_CS_fsm_state27)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state15)) begin
 grp_fu_112_p0 = shl_ln13_fu_159_p2;
 end else if ((1'b1 == ap_CS_fsm_state12)) begin
 grp_fu_112_p0 = sub_ln11_fu_153_p2;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_112_p0 = sub_ln12_reg_447;
 end else begin
 grp_fu_112_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state27)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state27)) begin
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln486_1_fu_342_p2 = ($signed(zext_ln486_1_fu_338_p1) + $signed(12'd3073));
assign add_ln486_fu_206_p2 = ($signed(zext_ln486_fu_202_p1) + $signed(12'd3073));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_return = 32'd0;
assign data_1_fu_301_p1 = dc_1_reg_483;
assign data_fu_165_p1 = dc_reg_478;
assign lshr_ln18_1_fu_382_p2 = zext_ln15_1_fu_334_p1 >> zext_ln18_1_fu_378_p1;
assign lshr_ln18_fu_246_p2 = zext_ln15_fu_198_p1 >> zext_ln18_fu_242_p1;
assign mantissa_1_fu_324_p4 = {{{{1'd1}, {trunc_ln505_1_fu_320_p1}}}, {1'd0}};
assign mantissa_fu_188_p4 = {{{{1'd1}, {trunc_ln505_fu_184_p1}}}, {1'd0}};
assign result_2_fu_286_p2 = (32'd0 - val_fu_278_p3);
assign result_6_fu_422_p2 = (32'd0 - val_1_fu_414_p3);
assign select_ln18_2_fu_366_p3 = ((tmp_8_fu_348_p3[0:0] == 1'b1) ? sext_ln18_2_fu_362_p1 : add_ln486_1_fu_342_p2);
assign select_ln18_fu_230_p3 = ((tmp_2_fu_212_p3[0:0] == 1'b1) ? sext_ln18_fu_226_p1 : add_ln486_fu_206_p2);
assign sext_ln18_1_fu_238_p1 = $signed(select_ln18_fu_230_p3);
assign sext_ln18_2_fu_362_p1 = $signed(sub_ln18_1_fu_356_p2);
assign sext_ln18_3_fu_374_p1 = $signed(select_ln18_2_fu_366_p3);
assign sext_ln18_fu_226_p1 = $signed(sub_ln18_fu_220_p2);
assign shl_ln12_fu_141_p2 = mul_ln12_1_fu_126_p2 << 32'd2;
assign shl_ln13_fu_159_p2 = coeff_a_read_reg_442 << 32'd1;
assign shl_ln18_1_fu_388_p2 = zext_ln15_1_fu_334_p1 << zext_ln18_1_fu_378_p1;
assign shl_ln18_fu_252_p2 = zext_ln15_fu_198_p1 << zext_ln18_fu_242_p1;
assign sub_ln11_fu_153_p2 = ($signed(32'd0) - $signed(coeff_b_read_reg_437));
assign sub_ln12_fu_147_p2 = (mul_ln12_fu_120_p2 - shl_ln12_fu_141_p2);
assign sub_ln18_1_fu_356_p2 = (11'd1023 - xs_exp_1_fu_312_p3);
assign sub_ln18_fu_220_p2 = (11'd1023 - xs_exp_fu_176_p3);
assign temptemp1 = ((xs_sign_fu_168_p3[0:0] == 1'b1) ? result_2_fu_286_p2 : val_fu_278_p3);
assign temptemp2 = ((xs_sign_1_fu_304_p3[0:0] == 1'b1) ? result_6_fu_422_p2 : val_1_fu_414_p3);
assign tmp_2_fu_212_p3 = add_ln486_fu_206_p2[32'd11];
assign tmp_3_fu_258_p4 = {{lshr_ln18_fu_246_p2[84:53]}};
assign tmp_5_fu_268_p4 = {{shl_ln18_fu_252_p2[84:53]}};
assign tmp_6_fu_394_p4 = {{lshr_ln18_1_fu_382_p2[84:53]}};
assign tmp_7_fu_404_p4 = {{shl_ln18_1_fu_388_p2[84:53]}};
assign tmp_8_fu_348_p3 = add_ln486_1_fu_342_p2[32'd11];
assign trunc_ln505_1_fu_320_p1 = data_1_fu_301_p1[51:0];
assign trunc_ln505_fu_184_p1 = data_fu_165_p1[51:0];
assign val_1_fu_414_p3 = ((tmp_8_fu_348_p3[0:0] == 1'b1) ? tmp_6_fu_394_p4 : tmp_7_fu_404_p4);
assign val_fu_278_p3 = ((tmp_2_fu_212_p3[0:0] == 1'b1) ? tmp_3_fu_258_p4 : tmp_5_fu_268_p4);
assign xs_exp_1_fu_312_p3 = {{data_1_fu_301_p1[62:52]}};
assign xs_exp_fu_176_p3 = {{data_fu_165_p1[62:52]}};
assign xs_sign_1_fu_304_p3 = data_1_fu_301_p1[32'd63];
assign xs_sign_fu_168_p3 = data_fu_165_p1[32'd63];
assign zext_ln15_1_fu_334_p1 = mantissa_1_fu_324_p4;
assign zext_ln15_fu_198_p1 = mantissa_fu_188_p4;
assign zext_ln18_1_fu_378_p1 = $unsigned(sext_ln18_3_fu_374_p1);
assign zext_ln18_fu_242_p1 = $unsigned(sext_ln18_1_fu_238_p1);
assign zext_ln486_1_fu_338_p1 = xs_exp_1_fu_312_p3;
assign zext_ln486_fu_202_p1 = xs_exp_fu_176_p3;
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
 module entry_point_mul_32s_32s_32_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed(din0) * $signed(din1);
assign dout = tmp_product;
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
