module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 seconds_i,
 seconds_o,
 seconds_o_ap_vld,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 52'd1;
parameter ap_ST_fsm_state2 = 52'd2;
parameter ap_ST_fsm_state3 = 52'd4;
parameter ap_ST_fsm_state4 = 52'd8;
parameter ap_ST_fsm_state5 = 52'd16;
parameter ap_ST_fsm_state6 = 52'd32;
parameter ap_ST_fsm_state7 = 52'd64;
parameter ap_ST_fsm_state8 = 52'd128;
parameter ap_ST_fsm_state9 = 52'd256;
parameter ap_ST_fsm_state10 = 52'd512;
parameter ap_ST_fsm_state11 = 52'd1024;
parameter ap_ST_fsm_state12 = 52'd2048;
parameter ap_ST_fsm_state13 = 52'd4096;
parameter ap_ST_fsm_state14 = 52'd8192;
parameter ap_ST_fsm_state15 = 52'd16384;
parameter ap_ST_fsm_state16 = 52'd32768;
parameter ap_ST_fsm_state17 = 52'd65536;
parameter ap_ST_fsm_state18 = 52'd131072;
parameter ap_ST_fsm_state19 = 52'd262144;
parameter ap_ST_fsm_state20 = 52'd524288;
parameter ap_ST_fsm_state21 = 52'd1048576;
parameter ap_ST_fsm_state22 = 52'd2097152;
parameter ap_ST_fsm_state23 = 52'd4194304;
parameter ap_ST_fsm_state24 = 52'd8388608;
parameter ap_ST_fsm_state25 = 52'd16777216;
parameter ap_ST_fsm_state26 = 52'd33554432;
parameter ap_ST_fsm_state27 = 52'd67108864;
parameter ap_ST_fsm_state28 = 52'd134217728;
parameter ap_ST_fsm_state29 = 52'd268435456;
parameter ap_ST_fsm_state30 = 52'd536870912;
parameter ap_ST_fsm_state31 = 52'd1073741824;
parameter ap_ST_fsm_state32 = 52'd2147483648;
parameter ap_ST_fsm_state33 = 52'd4294967296;
parameter ap_ST_fsm_state34 = 52'd8589934592;
parameter ap_ST_fsm_state35 = 52'd17179869184;
parameter ap_ST_fsm_state36 = 52'd34359738368;
parameter ap_ST_fsm_state37 = 52'd68719476736;
parameter ap_ST_fsm_state38 = 52'd137438953472;
parameter ap_ST_fsm_state39 = 52'd274877906944;
parameter ap_ST_fsm_state40 = 52'd549755813888;
parameter ap_ST_fsm_state41 = 52'd1099511627776;
parameter ap_ST_fsm_state42 = 52'd2199023255552;
parameter ap_ST_fsm_state43 = 52'd4398046511104;
parameter ap_ST_fsm_state44 = 52'd8796093022208;
parameter ap_ST_fsm_state45 = 52'd17592186044416;
parameter ap_ST_fsm_state46 = 52'd35184372088832;
parameter ap_ST_fsm_state47 = 52'd70368744177664;
parameter ap_ST_fsm_state48 = 52'd140737488355328;
parameter ap_ST_fsm_state49 = 52'd281474976710656;
parameter ap_ST_fsm_state50 = 52'd562949953421312;
parameter ap_ST_fsm_state51 = 52'd1125899906842624;
parameter ap_ST_fsm_state52 = 52'd2251799813685248;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] seconds_i;
output [31:0] seconds_o;
output seconds_o_ap_vld;
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
reg seconds_o_ap_vld;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
(* fsm_encoding = "none" *) reg [51:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire signed [12:0] trunc_ln4_fu_179_p1;
wire ap_CS_fsm_state36;
reg [0:0] tmp_6_reg_291;
wire ap_CS_fsm_state39;
wire signed [31:0] sext_ln11_fu_262_p1;
wire ap_CS_fsm_state52;
wire [33:0] mul_ln8_fu_102_p1;
wire [64:0] mul_ln8_fu_102_p2;
wire signed [31:0] tmp_fu_114_p1;
wire [64:0] sub_ln8_fu_108_p2;
wire signed [20:0] tmp_5_fu_132_p4;
wire [0:0] tmp_fu_114_p3;
wire [20:0] tmp_4_fu_122_p4;
wire [20:0] select_ln8_1_fu_146_p3;
wire signed [31:0] sext_ln8_2_fu_154_p1;
wire [31:0] sub_ln8_1_fu_158_p2;
wire signed [31:0] sext_ln8_1_fu_142_p1;
wire [12:0] grp_fu_173_p1;
wire [31:0] grp_fu_173_p2;
wire [6:0] grp_fu_195_p1;
wire signed [27:0] grp_fu_268_p2;
wire [26:0] trunc_ln10_fu_201_p1;
wire [26:0] sub_ln10_fu_204_p2;
wire [7:0] tmp_7_fu_210_p4;
wire [8:0] tmp_8_fu_224_p4;
wire signed [12:0] sext_ln10_2_fu_220_p1;
wire signed [12:0] sext_ln10_3_fu_233_p1;
wire [12:0] select_ln10_fu_237_p3;
wire [12:0] sub_ln10_1_fu_244_p2;
wire [12:0] minutes_fu_250_p3;
wire [12:0] grp_fu_195_p2;
wire [13:0] grp_fu_268_p1;
reg grp_fu_173_ap_start;
wire grp_fu_173_ap_done;
reg grp_fu_195_ap_start;
wire grp_fu_195_ap_done;
reg [51:0] ap_NS_fsm;
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
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 52'd1;
end
entry_point_mul_32s_34ns_65_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 34 ),
 .dout_WIDTH( 65 ))
mul_32s_34ns_65_1_1_U1(
 .din0(seconds_i),
 .din1(mul_ln8_fu_102_p1),
 .dout(mul_ln8_fu_102_p2)
);
entry_point_srem_32s_13ns_32_36_seq_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 13 ),
 .dout_WIDTH( 32 ))
srem_32s_13ns_32_36_seq_1_U2(
 .clk(ap_clk),
 .reset(ap_rst),
 .start(grp_fu_173_ap_start),
 .done(grp_fu_173_ap_done),
 .din0(seconds_i),
 .din1(grp_fu_173_p1),
 .ce(1'b1),
 .dout(grp_fu_173_p2)
);
entry_point_srem_13s_7ns_13_17_seq_1 #(
 .ID( 1 ),
 .NUM_STAGE( 17 ),
 .din0_WIDTH( 13 ),
 .din1_WIDTH( 7 ),
 .dout_WIDTH( 13 ))
srem_13s_7ns_13_17_seq_1_U3(
 .clk(ap_clk),
 .reset(ap_rst),
 .start(grp_fu_195_ap_start),
 .done(grp_fu_195_ap_done),
 .din0(trunc_ln4_fu_179_p1),
 .din1(grp_fu_195_p1),
 .ce(1'b1),
 .dout(grp_fu_195_p2)
);
entry_point_mul_mul_13s_14ns_28_4_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 13 ),
 .din1_WIDTH( 14 ),
 .dout_WIDTH( 28 ))
mul_mul_13s_14ns_28_4_1_U4(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(trunc_ln4_fu_179_p1),
 .din1(grp_fu_268_p1),
 .ce(1'b1),
 .dout(grp_fu_268_p2)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state36)) begin
 tmp_6_reg_291 <= grp_fu_173_p2[32'd12];
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
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state52)) begin
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
 if ((1'b1 == ap_CS_fsm_state52)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_fu_173_ap_start = 1'b1;
 end else begin
 grp_fu_173_ap_start = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state36)) begin
 grp_fu_195_ap_start = 1'b1;
 end else begin
 grp_fu_195_ap_start = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state52)) begin
 seconds_o_ap_vld = 1'b1;
 end else begin
 seconds_o_ap_vld = 1'b0;
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
 if ((1'b1 == ap_CS_fsm_state39)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state52)) begin
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_state39 = ap_CS_fsm[32'd38];
assign ap_CS_fsm_state52 = ap_CS_fsm[32'd51];
assign ap_return = 32'd0;
assign grp_fu_173_p1 = 32'd3600;
assign grp_fu_195_p1 = 13'd60;
assign grp_fu_268_p1 = 28'd8739;
assign minutes_fu_250_p3 = ((tmp_6_reg_291[0:0] == 1'b1) ? sub_ln10_1_fu_244_p2 : sext_ln10_3_fu_233_p1);
assign mul_ln8_fu_102_p1 = 65'd4886718346;
assign seconds_o = sext_ln11_fu_262_p1;
assign select_ln10_fu_237_p3 = ((tmp_6_reg_291[0:0] == 1'b1) ? sext_ln10_2_fu_220_p1 : sext_ln10_3_fu_233_p1);
assign select_ln8_1_fu_146_p3 = ((tmp_fu_114_p3[0:0] == 1'b1) ? tmp_4_fu_122_p4 : tmp_5_fu_132_p4);
assign sext_ln10_2_fu_220_p1 = $signed(tmp_7_fu_210_p4);
assign sext_ln10_3_fu_233_p1 = $signed(tmp_8_fu_224_p4);
assign sext_ln11_fu_262_p1 = $signed(grp_fu_195_p2);
assign sext_ln8_1_fu_142_p1 = tmp_5_fu_132_p4;
assign sext_ln8_2_fu_154_p1 = $signed(select_ln8_1_fu_146_p3);
assign sub_ln10_1_fu_244_p2 = (13'd0 - select_ln10_fu_237_p3);
assign sub_ln10_fu_204_p2 = (27'd0 - trunc_ln10_fu_201_p1);
assign sub_ln8_1_fu_158_p2 = ($signed(32'd0) - $signed(sext_ln8_2_fu_154_p1));
assign sub_ln8_fu_108_p2 = (65'd0 - mul_ln8_fu_102_p2);
assign temptemp1 = ((tmp_fu_114_p3[0:0] == 1'b1) ? sub_ln8_1_fu_158_p2 : sext_ln8_1_fu_142_p1);
assign temptemp2 = $signed(minutes_fu_250_p3);
assign temptemp3 = sext_ln11_fu_262_p1;
assign tmp_4_fu_122_p4 = {{sub_ln8_fu_108_p2[64:44]}};
assign tmp_5_fu_132_p4 = {{mul_ln8_fu_102_p2[64:44]}};
assign tmp_7_fu_210_p4 = {{sub_ln10_fu_204_p2[26:19]}};
assign tmp_8_fu_224_p4 = {{grp_fu_268_p2[27:19]}};
assign tmp_fu_114_p1 = seconds_i;
assign tmp_fu_114_p3 = tmp_fu_114_p1[32'd31];
assign trunc_ln10_fu_201_p1 = grp_fu_268_p2[26:0];
assign trunc_ln4_fu_179_p1 = grp_fu_173_p2[12:0];
endmodule
module entry_point_mul_32s_34ns_65_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed(din0) * $signed({1'b0, din1});
endmodule
 module entry_point_mul_mul_13s_14ns_28_4_1_DSP48_0(clk, rst, ce, a, b, p);
input clk;
input rst;
input ce;
input signed [13 - 1 : 0] a;
input [14 - 1 : 0] b;
output signed [28 - 1 : 0] p;
reg signed [28 - 1 : 0] p_reg; 
reg signed [13 - 1 : 0] a_reg; 
reg [14 - 1 : 0] b_reg; 
reg signed [28 - 1 : 0] p_reg_tmp; 
always @ (posedge clk) begin
 if (ce) begin
 a_reg <= a;
 b_reg <= b;
 p_reg_tmp <= a_reg * $signed({1'b0, b_reg});
 p_reg <= p_reg_tmp;
 end
end
assign p = p_reg;
endmodule
module entry_point_mul_mul_13s_14ns_28_4_1(
 clk,
 reset,
 ce,
 din0,
 din1,
 dout);
parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;
entry_point_mul_mul_13s_14ns_28_4_1_DSP48_0 entry_point_mul_mul_13s_14ns_28_4_1_DSP48_0_U(
 .clk( clk ),
 .rst( reset ),
 .ce( ce ),
 .a( din0 ),
 .b( din1 ),
 .p( dout ));
endmodule
module entry_point_srem_13s_7ns_13_17_seq_1_divseq
#(parameter
 in0_WIDTH = 32,
 in1_WIDTH = 32,
 out_WIDTH = 32
)
(
 input clk,
 input reset,
 input ce,
 input start,
 input [in0_WIDTH-1:0] dividend,
 input [in1_WIDTH-1:0] divisor,
 input [1:0] sign_i,
 output wire [1:0] sign_o,
 output wire done,
 output wire [out_WIDTH-1:0] quot,
 output wire [out_WIDTH-1:0] remd
);
localparam cal_WIDTH = (in0_WIDTH > in1_WIDTH)? in0_WIDTH : in1_WIDTH;
reg [in0_WIDTH-1:0] dividend0;
reg [in1_WIDTH-1:0] divisor0;
reg [1:0] sign0;
reg [in0_WIDTH-1:0] dividend_tmp;
reg [in0_WIDTH-1:0] remd_tmp;
wire [in0_WIDTH-1:0] dividend_tmp_mux;
wire [in0_WIDTH-1:0] remd_tmp_mux;
wire [in0_WIDTH-1:0] comb_tmp;
wire [cal_WIDTH:0] cal_tmp;
assign quot = dividend_tmp;
assign remd = remd_tmp;
assign sign_o = sign0;
always @(posedge clk)
begin
 if (start) begin
 dividend0 <= dividend;
 divisor0 <= divisor;
 sign0 <= sign_i;
 end
end
reg [in0_WIDTH:0] r_stage;
assign done = r_stage[in0_WIDTH];
always @(posedge clk)
begin
 if (reset == 1'b1)
 r_stage[in0_WIDTH:0] <= {in0_WIDTH{1'b0}};
 else if (ce)
 r_stage[in0_WIDTH:0] <= {r_stage[in0_WIDTH-1:0], start};
end
assign dividend_tmp_mux = r_stage[0]? dividend0 : dividend_tmp;
assign remd_tmp_mux = r_stage[0]? {in0_WIDTH{1'b0}} : remd_tmp;
if (in0_WIDTH == 1) assign comb_tmp = dividend_tmp_mux[0];
else assign comb_tmp = {remd_tmp_mux[in0_WIDTH-2:0], dividend_tmp_mux[in0_WIDTH-1]};
assign cal_tmp = {1'b0, comb_tmp} - {1'b0, divisor0};
always @(posedge clk)
begin
 if (ce) begin
 if (in0_WIDTH == 1) dividend_tmp <= ~cal_tmp[cal_WIDTH];
 else dividend_tmp <= {dividend_tmp_mux[in0_WIDTH-2:0], ~cal_tmp[cal_WIDTH]};
 remd_tmp <= cal_tmp[cal_WIDTH]? comb_tmp : cal_tmp[in0_WIDTH-1:0];
 end
end
endmodule
module entry_point_srem_13s_7ns_13_17_seq_1 
#(parameter
 ID = 1,
 NUM_STAGE = 2,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 dout_WIDTH = 32
)
(
 input clk,
 input reset,
 input ce,
 input start,
 output reg done,
 input [din0_WIDTH-1:0] din0,
 input [din1_WIDTH-1:0] din1,
 output [dout_WIDTH-1:0] dout
);
reg start0 = 'b0;
wire done0;
reg [din0_WIDTH-1:0] dividend0;
reg [din1_WIDTH-1:0] divisor0;
wire [din0_WIDTH-1:0] dividend_u;
wire [din1_WIDTH-1:0] divisor_u;
wire [dout_WIDTH-1:0] quot_u;
wire [dout_WIDTH-1:0] remd_u;
reg [dout_WIDTH-1:0] quot;
reg [dout_WIDTH-1:0] remd;
wire [1:0] sign_i;
wire [1:0] sign_o;
entry_point_srem_13s_7ns_13_17_seq_1_divseq #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_srem_13s_7ns_13_17_seq_1_divseq_u (
 .clk ( clk ),
 .reset ( reset ),
 .ce ( ce ),
 .start ( start0 ),
 .done ( done0 ),
 .dividend ( dividend_u ),
 .divisor ( divisor_u ),
 .sign_i ( sign_i ),
 .sign_o ( sign_o ),
 .quot ( quot_u ),
 .remd ( remd_u )
);
assign sign_i = {dividend0[din0_WIDTH-1] ^ divisor0[din1_WIDTH-1], dividend0[din0_WIDTH-1]};
assign dividend_u = dividend0[din0_WIDTH-1]? ~dividend0[din0_WIDTH-1:0] + 1'b1 :
 dividend0[din0_WIDTH-1:0];
assign divisor_u = divisor0[din1_WIDTH-1]? ~divisor0[din1_WIDTH-1:0] + 1'b1 :
 divisor0[din1_WIDTH-1:0];
always @(posedge clk)
begin
 if (ce) begin
 dividend0 <= din0;
 divisor0 <= din1;
 start0 <= start;
 end
end
always @(posedge clk)
begin
 done <= done0;
end
always @(posedge clk)
begin
 if (done0) begin
 if (sign_o[1])
 quot <= ~quot_u + 1'b1;
 else
 quot <= quot_u;
 end
end
always @(posedge clk)
begin
 if (done0) begin
 if (sign_o[0])
 remd <= ~remd_u + 1'b1;
 else
 remd <= remd_u;
 end
end
assign dout = remd;
endmodule
module entry_point_srem_32s_13ns_32_36_seq_1_divseq
#(parameter
 in0_WIDTH = 32,
 in1_WIDTH = 32,
 out_WIDTH = 32
)
(
 input clk,
 input reset,
 input ce,
 input start,
 input [in0_WIDTH-1:0] dividend,
 input [in1_WIDTH-1:0] divisor,
 input [1:0] sign_i,
 output wire [1:0] sign_o,
 output wire done,
 output wire [out_WIDTH-1:0] quot,
 output wire [out_WIDTH-1:0] remd
);
localparam cal_WIDTH = (in0_WIDTH > in1_WIDTH)? in0_WIDTH : in1_WIDTH;
reg [in0_WIDTH-1:0] dividend0;
reg [in1_WIDTH-1:0] divisor0;
reg [1:0] sign0;
reg [in0_WIDTH-1:0] dividend_tmp;
reg [in0_WIDTH-1:0] remd_tmp;
wire [in0_WIDTH-1:0] dividend_tmp_mux;
wire [in0_WIDTH-1:0] remd_tmp_mux;
wire [in0_WIDTH-1:0] comb_tmp;
wire [cal_WIDTH:0] cal_tmp;
assign quot = dividend_tmp;
assign remd = remd_tmp;
assign sign_o = sign0;
always @(posedge clk)
begin
 if (start) begin
 dividend0 <= dividend;
 divisor0 <= divisor;
 sign0 <= sign_i;
 end
end
reg [in0_WIDTH:0] r_stage;
assign done = r_stage[in0_WIDTH];
always @(posedge clk)
begin
 if (reset == 1'b1)
 r_stage[in0_WIDTH:0] <= {in0_WIDTH{1'b0}};
 else if (ce)
 r_stage[in0_WIDTH:0] <= {r_stage[in0_WIDTH-1:0], start};
end
assign dividend_tmp_mux = r_stage[0]? dividend0 : dividend_tmp;
assign remd_tmp_mux = r_stage[0]? {in0_WIDTH{1'b0}} : remd_tmp;
if (in0_WIDTH == 1) assign comb_tmp = dividend_tmp_mux[0];
else assign comb_tmp = {remd_tmp_mux[in0_WIDTH-2:0], dividend_tmp_mux[in0_WIDTH-1]};
assign cal_tmp = {1'b0, comb_tmp} - {1'b0, divisor0};
always @(posedge clk)
begin
 if (ce) begin
 if (in0_WIDTH == 1) dividend_tmp <= ~cal_tmp[cal_WIDTH];
 else dividend_tmp <= {dividend_tmp_mux[in0_WIDTH-2:0], ~cal_tmp[cal_WIDTH]};
 remd_tmp <= cal_tmp[cal_WIDTH]? comb_tmp : cal_tmp[in0_WIDTH-1:0];
 end
end
endmodule
module entry_point_srem_32s_13ns_32_36_seq_1 
#(parameter
 ID = 1,
 NUM_STAGE = 2,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 dout_WIDTH = 32
)
(
 input clk,
 input reset,
 input ce,
 input start,
 output reg done,
 input [din0_WIDTH-1:0] din0,
 input [din1_WIDTH-1:0] din1,
 output [dout_WIDTH-1:0] dout
);
reg start0 = 'b0;
wire done0;
reg [din0_WIDTH-1:0] dividend0;
reg [din1_WIDTH-1:0] divisor0;
wire [din0_WIDTH-1:0] dividend_u;
wire [din1_WIDTH-1:0] divisor_u;
wire [dout_WIDTH-1:0] quot_u;
wire [dout_WIDTH-1:0] remd_u;
reg [dout_WIDTH-1:0] quot;
reg [dout_WIDTH-1:0] remd;
wire [1:0] sign_i;
wire [1:0] sign_o;
entry_point_srem_32s_13ns_32_36_seq_1_divseq #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_srem_32s_13ns_32_36_seq_1_divseq_u (
 .clk ( clk ),
 .reset ( reset ),
 .ce ( ce ),
 .start ( start0 ),
 .done ( done0 ),
 .dividend ( dividend_u ),
 .divisor ( divisor_u ),
 .sign_i ( sign_i ),
 .sign_o ( sign_o ),
 .quot ( quot_u ),
 .remd ( remd_u )
);
assign sign_i = {dividend0[din0_WIDTH-1] ^ divisor0[din1_WIDTH-1], dividend0[din0_WIDTH-1]};
assign dividend_u = dividend0[din0_WIDTH-1]? ~dividend0[din0_WIDTH-1:0] + 1'b1 :
 dividend0[din0_WIDTH-1:0];
assign divisor_u = divisor0[din1_WIDTH-1]? ~divisor0[din1_WIDTH-1:0] + 1'b1 :
 divisor0[din1_WIDTH-1:0];
always @(posedge clk)
begin
 if (ce) begin
 dividend0 <= din0;
 divisor0 <= din1;
 start0 <= start;
 end
end
always @(posedge clk)
begin
 done <= done0;
end
always @(posedge clk)
begin
 if (done0) begin
 if (sign_o[1])
 quot <= ~quot_u + 1'b1;
 else
 quot <= quot_u;
 end
end
always @(posedge clk)
begin
 if (done0) begin
 if (sign_o[0])
 remd <= ~remd_u + 1'b1;
 else
 remd <= remd_u;
 end
end
assign dout = remd;
endmodule
