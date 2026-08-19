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
 ap_return
);
parameter ap_ST_fsm_state1 = 25'd1;
parameter ap_ST_fsm_state2 = 25'd2;
parameter ap_ST_fsm_state3 = 25'd4;
parameter ap_ST_fsm_state4 = 25'd8;
parameter ap_ST_fsm_state5 = 25'd16;
parameter ap_ST_fsm_state6 = 25'd32;
parameter ap_ST_fsm_state7 = 25'd64;
parameter ap_ST_fsm_state8 = 25'd128;
parameter ap_ST_fsm_state9 = 25'd256;
parameter ap_ST_fsm_state10 = 25'd512;
parameter ap_ST_fsm_state11 = 25'd1024;
parameter ap_ST_fsm_state12 = 25'd2048;
parameter ap_ST_fsm_state13 = 25'd4096;
parameter ap_ST_fsm_state14 = 25'd8192;
parameter ap_ST_fsm_state15 = 25'd16384;
parameter ap_ST_fsm_state16 = 25'd32768;
parameter ap_ST_fsm_state17 = 25'd65536;
parameter ap_ST_fsm_state18 = 25'd131072;
parameter ap_ST_fsm_state19 = 25'd262144;
parameter ap_ST_fsm_state20 = 25'd524288;
parameter ap_ST_fsm_state21 = 25'd1048576;
parameter ap_ST_fsm_state22 = 25'd2097152;
parameter ap_ST_fsm_state23 = 25'd4194304;
parameter ap_ST_fsm_state24 = 25'd8388608;
parameter ap_ST_fsm_state25 = 25'd16777216;
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
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [24:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [63:0] grp_fu_113_p1;
reg [63:0] reg_121;
wire ap_CS_fsm_state3;
wire ap_CS_fsm_state17;
wire ap_CS_fsm_state21;
wire [63:0] grp_fu_108_p2;
reg [63:0] reg_129;
wire [31:0] mul_ln11_fu_136_p2;
reg [31:0] mul_ln11_reg_451;
wire ap_CS_fsm_state2;
wire [31:0] xor_ln11_fu_153_p2;
wire [63:0] grp_fu_116_p2;
reg [63:0] tmp_reg_466;
wire ap_CS_fsm_state13;
wire [31:0] sub_ln11_fu_160_p2;
wire ap_CS_fsm_state20;
wire [63:0] grp_fu_100_p2;
reg [63:0] dc_reg_476;
wire ap_CS_fsm_state24;
wire [63:0] grp_fu_104_p2;
reg [63:0] dc_1_reg_481;
wire ap_CS_fsm_state25;
wire ap_CS_fsm_state22;
reg [63:0] grp_fu_108_p0;
reg [63:0] grp_fu_108_p1;
wire ap_CS_fsm_state14;
wire ap_CS_fsm_state18;
reg [31:0] grp_fu_113_p0;
wire ap_CS_fsm_state16;
wire ap_CS_fsm_state4;
wire [31:0] shl_ln11_fu_142_p2;
wire [31:0] sub_ln11_1_fu_147_p2;
wire [63:0] data_V_fu_166_p1;
wire [51:0] p_Result_1_fu_187_p1;
wire [53:0] mantissa_fu_191_p4;
wire [10:0] xs_exp_V_fu_177_p4;
wire [11:0] zext_ln515_fu_205_p1;
wire [11:0] add_ln515_fu_209_p2;
wire [10:0] sub_ln1512_fu_223_p2;
wire [0:0] isNeg_fu_215_p3;
wire signed [11:0] sext_ln1512_fu_229_p1;
wire [11:0] ush_fu_233_p3;
wire signed [31:0] sext_ln1488_fu_241_p1;
wire [136:0] zext_ln15_fu_201_p1;
wire [136:0] zext_ln1488_fu_245_p1;
wire [136:0] r_V_fu_249_p2;
wire [0:0] tmp_5_fu_261_p3;
wire [136:0] r_V_1_fu_255_p2;
wire [31:0] zext_ln818_fu_269_p1;
wire [31:0] tmp_4_fu_273_p4;
wire [31:0] val_fu_283_p3;
wire [0:0] p_Result_s_fu_169_p3;
wire [31:0] result_V_2_fu_291_p2;
wire [63:0] data_V_1_fu_306_p1;
wire [51:0] p_Result_3_fu_327_p1;
wire [53:0] mantissa_1_fu_331_p4;
wire [10:0] xs_exp_V_1_fu_317_p4;
wire [11:0] zext_ln515_1_fu_345_p1;
wire [11:0] add_ln515_1_fu_349_p2;
wire [10:0] sub_ln1512_1_fu_363_p2;
wire [0:0] isNeg_1_fu_355_p3;
wire signed [11:0] sext_ln1512_1_fu_369_p1;
wire [11:0] ush_1_fu_373_p3;
wire signed [31:0] sext_ln1488_1_fu_381_p1;
wire [136:0] zext_ln15_1_fu_341_p1;
wire [136:0] zext_ln1488_1_fu_385_p1;
wire [136:0] r_V_2_fu_389_p2;
wire [0:0] tmp_10_fu_401_p3;
wire [136:0] r_V_3_fu_395_p2;
wire [31:0] zext_ln818_1_fu_409_p1;
wire [31:0] tmp_7_fu_413_p4;
wire [31:0] val_1_fu_423_p3;
wire [0:0] p_Result_2_fu_309_p3;
wire [31:0] result_V_6_fu_431_p2;
reg [24:0] ap_NS_fsm;
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
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 25'd1;
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
 .din0(reg_121),
 .din1(reg_129),
 .ce(1'b1),
 .dout(grp_fu_100_p2)
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
 .din0(reg_121),
 .din1(reg_129),
 .ce(1'b1),
 .dout(grp_fu_104_p2)
);
entry_point_dmul_64ns_64ns_64_4_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dmul_64ns_64ns_64_4_max_dsp_1_U3(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_108_p0),
 .din1(grp_fu_108_p1),
 .ce(1'b1),
 .dout(grp_fu_108_p2)
);
entry_point_sitodp_32ns_64_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
sitodp_32ns_64_2_no_dsp_1_U4(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_113_p0),
 .ce(1'b1),
 .dout(grp_fu_113_p1)
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
 .din1(reg_121),
 .ce(1'b1),
 .dout(grp_fu_116_p2)
);
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U6(
 .din0(a),
 .din1(c),
 .dout(mul_ln11_fu_136_p2)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state24)) begin
 dc_1_reg_481 <= grp_fu_104_p2;
 dc_reg_476 <= grp_fu_100_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 mul_ln11_reg_451 <= mul_ln11_fu_136_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state3))) begin
 reg_121 <= grp_fu_113_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state17))) begin
 reg_129 <= grp_fu_108_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state13)) begin
 tmp_reg_466 <= grp_fu_116_p2;
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
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state25)) begin
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
 if ((1'b1 == ap_CS_fsm_state25)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state18)) begin
 grp_fu_108_p0 = reg_129;
 end else if ((1'b1 == ap_CS_fsm_state14)) begin
 grp_fu_108_p0 = tmp_reg_466;
 end else begin
 grp_fu_108_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state18)) begin
 grp_fu_108_p1 = reg_121;
 end else if ((1'b1 == ap_CS_fsm_state14)) begin
 grp_fu_108_p1 = 64'd4602678819172646912;
 end else begin
 grp_fu_108_p1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state20)) begin
 grp_fu_113_p0 = sub_ln11_fu_160_p2;
 end else if ((1'b1 == ap_CS_fsm_state16)) begin
 grp_fu_113_p0 = a;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_113_p0 = xor_ln11_fu_153_p2;
 end else begin
 grp_fu_113_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state25)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state25)) begin
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln515_1_fu_349_p2 = ($signed(zext_ln515_1_fu_345_p1) + $signed(12'd3073));
assign add_ln515_fu_209_p2 = ($signed(zext_ln515_fu_205_p1) + $signed(12'd3073));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_return = 32'd0;
assign data_V_1_fu_306_p1 = dc_1_reg_481;
assign data_V_fu_166_p1 = dc_reg_476;
assign isNeg_1_fu_355_p3 = add_ln515_1_fu_349_p2[32'd11];
assign isNeg_fu_215_p3 = add_ln515_fu_209_p2[32'd11];
assign mantissa_1_fu_331_p4 = {{{{1'd1}, {p_Result_3_fu_327_p1}}}, {1'd0}};
assign mantissa_fu_191_p4 = {{{{1'd1}, {p_Result_1_fu_187_p1}}}, {1'd0}};
assign p_Result_1_fu_187_p1 = data_V_fu_166_p1[51:0];
assign p_Result_2_fu_309_p3 = data_V_1_fu_306_p1[32'd63];
assign p_Result_3_fu_327_p1 = data_V_1_fu_306_p1[51:0];
assign p_Result_s_fu_169_p3 = data_V_fu_166_p1[32'd63];
assign r_V_1_fu_255_p2 = zext_ln15_fu_201_p1 << zext_ln1488_fu_245_p1;
assign r_V_2_fu_389_p2 = zext_ln15_1_fu_341_p1 >> zext_ln1488_1_fu_385_p1;
assign r_V_3_fu_395_p2 = zext_ln15_1_fu_341_p1 << zext_ln1488_1_fu_385_p1;
assign r_V_fu_249_p2 = zext_ln15_fu_201_p1 >> zext_ln1488_fu_245_p1;
assign result_V_2_fu_291_p2 = (32'd0 - val_fu_283_p3);
assign result_V_6_fu_431_p2 = (32'd0 - val_1_fu_423_p3);
assign sext_ln1488_1_fu_381_p1 = $signed(ush_1_fu_373_p3);
assign sext_ln1488_fu_241_p1 = $signed(ush_fu_233_p3);
assign sext_ln1512_1_fu_369_p1 = $signed(sub_ln1512_1_fu_363_p2);
assign sext_ln1512_fu_229_p1 = $signed(sub_ln1512_fu_223_p2);
assign shl_ln11_fu_142_p2 = mul_ln11_reg_451 << 32'd2;
assign sub_ln11_1_fu_147_p2 = (32'd2 - shl_ln11_fu_142_p2);
assign sub_ln11_fu_160_p2 = (32'd0 - b);
assign sub_ln1512_1_fu_363_p2 = (11'd1023 - xs_exp_V_1_fu_317_p4);
assign sub_ln1512_fu_223_p2 = (11'd1023 - xs_exp_V_fu_177_p4);
assign temptemp1 = ((p_Result_s_fu_169_p3[0:0] == 1'b1) ? result_V_2_fu_291_p2 : val_fu_283_p3);
assign temptemp2 = ((p_Result_2_fu_309_p3[0:0] == 1'b1) ? result_V_6_fu_431_p2 : val_1_fu_423_p3);
assign tmp_10_fu_401_p3 = r_V_2_fu_389_p2[32'd53];
assign tmp_4_fu_273_p4 = {{r_V_1_fu_255_p2[84:53]}};
assign tmp_5_fu_261_p3 = r_V_fu_249_p2[32'd53];
assign tmp_7_fu_413_p4 = {{r_V_3_fu_395_p2[84:53]}};
assign ush_1_fu_373_p3 = ((isNeg_1_fu_355_p3[0:0] == 1'b1) ? sext_ln1512_1_fu_369_p1 : add_ln515_1_fu_349_p2);
assign ush_fu_233_p3 = ((isNeg_fu_215_p3[0:0] == 1'b1) ? sext_ln1512_fu_229_p1 : add_ln515_fu_209_p2);
assign val_1_fu_423_p3 = ((isNeg_1_fu_355_p3[0:0] == 1'b1) ? zext_ln818_1_fu_409_p1 : tmp_7_fu_413_p4);
assign val_fu_283_p3 = ((isNeg_fu_215_p3[0:0] == 1'b1) ? zext_ln818_fu_269_p1 : tmp_4_fu_273_p4);
assign xor_ln11_fu_153_p2 = (sub_ln11_1_fu_147_p2 ^ b);
assign xs_exp_V_1_fu_317_p4 = {{data_V_1_fu_306_p1[62:52]}};
assign xs_exp_V_fu_177_p4 = {{data_V_fu_166_p1[62:52]}};
assign zext_ln1488_1_fu_385_p1 = $unsigned(sext_ln1488_1_fu_381_p1);
assign zext_ln1488_fu_245_p1 = $unsigned(sext_ln1488_fu_241_p1);
assign zext_ln15_1_fu_341_p1 = mantissa_1_fu_331_p4;
assign zext_ln15_fu_201_p1 = mantissa_fu_191_p4;
assign zext_ln515_1_fu_345_p1 = xs_exp_V_1_fu_317_p4;
assign zext_ln515_fu_205_p1 = xs_exp_V_fu_177_p4;
assign zext_ln818_1_fu_409_p1 = tmp_10_fu_401_p3;
assign zext_ln818_fu_269_p1 = tmp_5_fu_261_p3;
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
assign dout = $signed(din0) * $signed(din1);
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
