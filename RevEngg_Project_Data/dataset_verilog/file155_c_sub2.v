module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 x,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 8'd1;
parameter ap_ST_fsm_state2 = 8'd2;
parameter ap_ST_fsm_state3 = 8'd4;
parameter ap_ST_fsm_state4 = 8'd8;
parameter ap_ST_fsm_state5 = 8'd16;
parameter ap_ST_fsm_state6 = 8'd32;
parameter ap_ST_fsm_state7 = 8'd64;
parameter ap_ST_fsm_state8 = 8'd128;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] x;
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
(* fsm_encoding = "none" *) reg [7:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg grp_pow_generic_float_s_fu_53_ap_start;
wire grp_pow_generic_float_s_fu_53_ap_done;
wire grp_pow_generic_float_s_fu_53_ap_idle;
wire grp_pow_generic_float_s_fu_53_ap_ready;
wire [31:0] grp_pow_generic_float_s_fu_53_exp;
wire [31:0] grp_pow_generic_float_s_fu_53_ap_return;
wire ap_CS_fsm_state8;
reg [7:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ST_fsm_state6_blk;
wire ap_ST_fsm_state7_blk;
wire ap_ST_fsm_state8_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
end
entry_point_pow_generic_float_s grp_pow_generic_float_s_fu_53(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_pow_generic_float_s_fu_53_ap_start),
 .ap_done(grp_pow_generic_float_s_fu_53_ap_done),
 .ap_idle(grp_pow_generic_float_s_fu_53_ap_idle),
 .ap_ready(grp_pow_generic_float_s_fu_53_ap_ready),
 .exp(grp_pow_generic_float_s_fu_53_exp),
 .ap_return(grp_pow_generic_float_s_fu_53_ap_return)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
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
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state8)) begin
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
 if ((1'b1 == ap_CS_fsm_state8)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_pow_generic_float_s_fu_53_ap_start = 1'b1;
 end else begin
 grp_pow_generic_float_s_fu_53_ap_start = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state8)) begin
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_return = 32'd0;
assign grp_pow_generic_float_s_fu_53_exp = x;
assign temptemp1 = x;
assign temptemp2 = grp_pow_generic_float_s_fu_53_ap_return;
endmodule
module entry_point_mac_muladd_13s_12ns_16s_25_4_1_DSP48_0(
 input clk,
 input rst,
 input ce,
 input [13 - 1:0] in0,
 input [12 - 1:0] in1,
 input [16 - 1:0] in2,
 output [25 - 1:0] dout);
wire signed [27 - 1:0] a;
wire signed [18 - 1:0] b;
wire signed [48 - 1:0] c;
wire signed [45 - 1:0] m;
wire signed [48 - 1:0] p;
reg signed [45 - 1:0] m_reg;
reg signed [27 - 1:0] a_reg;
reg signed [18 - 1:0] b_reg;
reg signed [48 - 1:0] p_reg;
assign a = $signed(in0);
assign b = $unsigned(in1);
assign c = $signed(in2);
assign m = a_reg * b_reg;
assign p = m_reg + c;
always @(posedge clk) begin
 if (ce) begin
 m_reg <= m;
 a_reg <= a;
 b_reg <= b;
 p_reg <= p;
 end
end
assign dout = p_reg;
endmodule
module entry_point_mac_muladd_13s_12ns_16s_25_4_1(
 clk,
 reset,
 ce,
 din0,
 din1,
 din2,
 dout);
parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter din2_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
input[din2_WIDTH - 1:0] din2;
output[dout_WIDTH - 1:0] dout;
entry_point_mac_muladd_13s_12ns_16s_25_4_1_DSP48_0 entry_point_mac_muladd_13s_12ns_16s_25_4_1_DSP48_0_U(
 .clk( clk ),
 .rst( reset ),
 .ce( ce ),
 .in0( din0 ),
 .in1( din1 ),
 .in2( din2 ),
 .dout( dout ));
endmodule
module entry_point_mul_10s_36s_36_1_1(din0, din1, dout);
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
module entry_point_mul_25s_35ns_59_1_1(din0, din1, dout);
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
 module entry_point_mul_mul_18ns_18ns_36_4_1_DSP48_1(clk, rst, ce, a, b, p);
input clk;
input rst;
input ce;
input [18 - 1 : 0] a;
input [18 - 1 : 0] b;
output [36 - 1 : 0] p;
reg [36 - 1 : 0] p_reg; 
reg [18 - 1 : 0] a_reg; 
reg [18 - 1 : 0] b_reg; 
reg [36 - 1 : 0] p_reg_tmp; 
always @ (posedge clk) begin
 if (ce) begin
 a_reg <= a;
 b_reg <= b;
 p_reg_tmp <= $signed({1'b0, a_reg}) * $signed({1'b0, b_reg});
 p_reg <= p_reg_tmp;
 end
end
assign p = p_reg;
endmodule
module entry_point_mul_mul_18ns_18ns_36_4_1(
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
entry_point_mul_mul_18ns_18ns_36_4_1_DSP48_1 entry_point_mul_mul_18ns_18ns_36_4_1_DSP48_1_U(
 .clk( clk ),
 .rst( reset ),
 .ce( ce ),
 .a( din0 ),
 .b( din1 ),
 .p( dout ));
endmodule
module entry_point_pow_generic_float_s (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 exp,
 ap_return
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] exp;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_enable_reg_pp0_iter2;
reg ap_enable_reg_pp0_iter3;
reg ap_enable_reg_pp0_iter4;
reg ap_enable_reg_pp0_iter5;
reg ap_enable_reg_pp0_iter6;
reg ap_enable_reg_pp0_iter7;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_state3_pp0_stage0_iter2;
wire ap_block_state4_pp0_stage0_iter3;
wire ap_block_state5_pp0_stage0_iter4;
wire ap_block_state6_pp0_stage0_iter5;
wire ap_block_state7_pp0_stage0_iter6;
wire ap_block_state8_pp0_stage0_iter7;
wire ap_block_pp0_stage0_subdone;
wire [8:0] pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_address0;
reg pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_ce0;
wire [26:0] pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_q0;
wire [4:0] pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_address0;
reg pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_ce0;
wire [7:0] pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_q0;
wire [0:0] p_Result_5_fu_196_p3;
reg [0:0] p_Result_5_reg_991;
wire ap_block_pp0_stage0_11001;
reg [0:0] p_Result_5_reg_991_pp0_iter1_reg;
reg [0:0] p_Result_5_reg_991_pp0_iter2_reg;
reg [0:0] p_Result_5_reg_991_pp0_iter3_reg;
reg [0:0] p_Result_5_reg_991_pp0_iter4_reg;
reg [0:0] p_Result_5_reg_991_pp0_iter5_reg;
reg [0:0] p_Result_5_reg_991_pp0_iter6_reg;
wire [0:0] y_is_0_fu_228_p2;
reg [0:0] y_is_0_reg_998;
reg [0:0] y_is_0_reg_998_pp0_iter1_reg;
reg [0:0] y_is_0_reg_998_pp0_iter2_reg;
reg [0:0] y_is_0_reg_998_pp0_iter3_reg;
reg [0:0] y_is_0_reg_998_pp0_iter4_reg;
reg [0:0] y_is_0_reg_998_pp0_iter5_reg;
reg [0:0] y_is_0_reg_998_pp0_iter6_reg;
wire [0:0] icmp_ln1019_fu_234_p2;
reg [0:0] icmp_ln1019_reg_1004;
reg [0:0] icmp_ln1019_reg_1004_pp0_iter1_reg;
wire [0:0] icmp_ln1019_1_fu_240_p2;
reg [0:0] icmp_ln1019_1_reg_1010;
reg [0:0] icmp_ln1019_1_reg_1010_pp0_iter1_reg;
wire signed [58:0] m_frac_l_V_fu_280_p2;
reg signed [58:0] m_frac_l_V_reg_1016;
reg signed [58:0] m_frac_l_V_reg_1016_pp0_iter1_reg;
reg signed [58:0] m_frac_l_V_reg_1016_pp0_iter2_reg;
reg signed [58:0] m_frac_l_V_reg_1016_pp0_iter3_reg;
reg signed [58:0] m_frac_l_V_reg_1016_pp0_iter4_reg;
reg signed [58:0] m_frac_l_V_reg_1016_pp0_iter5_reg;
reg signed [58:0] m_frac_l_V_reg_1016_pp0_iter6_reg;
reg [0:0] p_Result_8_reg_1021;
reg [0:0] p_Result_8_reg_1021_pp0_iter1_reg;
reg [26:0] trunc_ln2_reg_1031;
reg [26:0] trunc_ln2_reg_1031_pp0_iter1_reg;
reg [26:0] trunc_ln2_reg_1031_pp0_iter2_reg;
wire [0:0] icmp_ln657_fu_506_p2;
reg [0:0] icmp_ln657_reg_1036;
reg [0:0] icmp_ln657_reg_1036_pp0_iter1_reg;
reg [0:0] icmp_ln657_reg_1036_pp0_iter2_reg;
reg [0:0] icmp_ln657_reg_1036_pp0_iter3_reg;
reg [0:0] icmp_ln657_reg_1036_pp0_iter4_reg;
reg [0:0] icmp_ln657_reg_1036_pp0_iter5_reg;
reg [0:0] icmp_ln657_reg_1036_pp0_iter6_reg;
wire [0:0] icmp_ln1654_fu_512_p2;
reg [0:0] icmp_ln1654_reg_1041;
reg [0:0] icmp_ln1654_reg_1041_pp0_iter1_reg;
reg [0:0] icmp_ln1654_reg_1041_pp0_iter2_reg;
reg [0:0] icmp_ln1654_reg_1041_pp0_iter3_reg;
reg [0:0] icmp_ln1654_reg_1041_pp0_iter4_reg;
reg [0:0] icmp_ln1654_reg_1041_pp0_iter5_reg;
reg [0:0] icmp_ln1654_reg_1041_pp0_iter6_reg;
wire [0:0] y_is_inf_fu_518_p2;
reg [0:0] y_is_inf_reg_1046;
reg [0:0] y_is_inf_reg_1046_pp0_iter3_reg;
reg [0:0] y_is_inf_reg_1046_pp0_iter4_reg;
reg [0:0] y_is_inf_reg_1046_pp0_iter5_reg;
reg [0:0] y_is_inf_reg_1046_pp0_iter6_reg;
wire [0:0] or_ln407_fu_532_p2;
reg [0:0] or_ln407_reg_1053;
reg [0:0] or_ln407_reg_1053_pp0_iter3_reg;
reg [0:0] or_ln407_reg_1053_pp0_iter4_reg;
reg [0:0] or_ln407_reg_1053_pp0_iter5_reg;
reg [0:0] or_ln407_reg_1053_pp0_iter6_reg;
wire signed [9:0] ret_V_7_fu_587_p3;
reg signed [9:0] ret_V_7_reg_1064;
reg signed [9:0] ret_V_7_reg_1064_pp0_iter4_reg;
reg signed [9:0] ret_V_7_reg_1064_pp0_iter5_reg;
reg signed [9:0] ret_V_7_reg_1064_pp0_iter6_reg;
wire [17:0] m_diff_lo_V_fu_630_p1;
reg [17:0] m_diff_lo_V_reg_1070;
reg [26:0] exp_Z1_V_reg_1085;
reg [26:0] exp_Z1_V_reg_1085_pp0_iter5_reg;
reg [26:0] exp_Z1_V_reg_1085_pp0_iter6_reg;
wire [63:0] zext_ln541_fu_634_p1;
wire ap_block_pp0_stage0;
wire [63:0] zext_ln541_1_fu_649_p1;
wire [31:0] data_V_fu_192_p1;
wire [7:0] es_exp_V_fu_204_p4;
wire [8:0] zext_ln346_fu_218_p1;
wire [22:0] es_sig_V_fu_214_p1;
wire [22:0] p_Result_6_fu_246_p1;
wire [23:0] p_Result_7_fu_250_p3;
wire [24:0] zext_ln294_fu_258_p1;
wire [24:0] e_frac_V_1_fu_262_p2;
wire signed [24:0] e_frac_V_2_fu_268_p3;
wire [34:0] m_frac_l_V_fu_280_p1;
wire signed [8:0] m_exp_fu_222_p2;
wire signed [7:0] sub_ln1512_fu_302_p2;
wire [0:0] isNeg_fu_294_p3;
wire signed [8:0] sext_ln1512_fu_308_p1;
wire [8:0] ush_fu_312_p3;
wire signed [31:0] sext_ln1488_fu_320_p1;
wire [58:0] sext_ln1488cast_fu_328_p1;
wire [58:0] r_V_fu_332_p2;
wire signed [66:0] sext_ln568_fu_286_p1;
wire [66:0] zext_ln1488_fu_324_p1;
wire [66:0] r_V_1_fu_342_p2;
wire signed [65:0] sext_ln1487_fu_338_p1;
wire [65:0] trunc_ln1487_1_fu_348_p1;
wire [65:0] m_fix_l_V_fu_352_p3;
wire [65:0] zext_ln1454_fu_360_p1;
wire [65:0] r_V_2_fu_364_p2;
wire [65:0] r_V_3_fu_370_p2;
wire signed [31:0] sext_ln1454_fu_392_p1;
wire [66:0] zext_ln1454_1_fu_396_p1;
wire [66:0] r_V_5_fu_400_p2;
wire [0:0] isNeg_1_fu_410_p3;
wire [8:0] ush_2_fu_418_p3;
wire signed [31:0] sext_ln1454_1_fu_426_p1;
wire [66:0] zext_ln1454_2_fu_430_p1;
wire [66:0] r_V_6_fu_434_p2;
wire [58:0] sext_ln1454_1cast_fu_444_p1;
wire [58:0] r_V_7_fu_448_p2;
wire [65:0] trunc_ln1453_fu_440_p1;
wire signed [65:0] sext_ln1453_fu_454_p1;
wire [0:0] tmp_5_fu_384_p3;
wire [65:0] r_V_8_fu_458_p3;
wire [65:0] trunc_ln1487_2_fu_406_p1;
wire [65:0] select_ln578_fu_466_p3;
wire signed [12:0] m_fix_hi_V_fu_474_p4;
wire signed [65:0] sext_ln568_1_fu_290_p1;
wire [65:0] r_V_13_fu_376_p3;
wire [0:0] xor_ln1023_fu_522_p2;
wire [0:0] y_is_NaN_fu_527_p2;
wire signed [15:0] rhs_fu_537_p3;
wire signed [24:0] grp_fu_972_p3;
wire [14:0] trunc_ln1003_fu_564_p1;
wire [9:0] ret_V_cast_fu_548_p4;
wire [0:0] icmp_ln1003_fu_567_p2;
wire [9:0] ret_V_fu_573_p2;
wire [0:0] p_Result_s_fu_557_p3;
wire [9:0] select_ln1002_fu_579_p3;
wire [35:0] mul_ln1270_fu_599_p2;
wire [26:0] trunc_ln813_1_fu_605_p4;
wire [26:0] m_diff_V_fu_615_p2;
wire [8:0] m_diff_hi_V_fu_620_p4;
wire [4:0] Z2_ind_fu_639_p4;
wire [18:0] zext_ln813_fu_654_p1;
wire [18:0] zext_ln813_1_fu_657_p1;
wire [18:0] ret_V_3_fu_661_p2;
wire [17:0] exp_Z1_hi_V_fu_677_p4;
wire [17:0] exp_Z1P_m_1_V_fu_667_p4;
wire [26:0] ret_V_8_fu_711_p2;
wire [35:0] grp_fu_983_p2;
wire [24:0] trunc_ln1347_fu_730_p1;
wire [43:0] lhs_V_3_fu_716_p3;
wire [43:0] zext_ln1347_fu_724_p1;
wire [41:0] trunc_ln3_fu_734_p3;
wire [41:0] zext_ln1347_1_fu_727_p1;
wire [43:0] ret_V_5_fu_742_p2;
wire [0:0] p_Result_1_fu_754_p3;
wire [9:0] r_exp_V_fu_762_p2;
wire [9:0] r_exp_V_2_fu_767_p3;
wire [2:0] tmp_10_fu_778_p4;
wire [0:0] and_ln657_fu_774_p2;
wire [0:0] icmp_ln1035_fu_788_p2;
wire [0:0] tmp_11_fu_800_p3;
wire [41:0] add_ln1347_1_fu_748_p2;
wire [22:0] tmp_fu_815_p4;
wire [22:0] tmp_1_fu_825_p4;
wire [7:0] trunc_ln186_fu_843_p1;
wire [7:0] out_exp_V_fu_847_p2;
wire [22:0] tmp_13_fu_835_p3;
wire [31:0] p_Result_9_fu_853_p4;
wire [0:0] xor_ln460_fu_872_p2;
wire [0:0] and_ln467_fu_707_p2;
wire [0:0] xor_ln407_fu_867_p2;
wire [0:0] xor_ln467_fu_882_p2;
wire [0:0] and_ln467_1_fu_888_p2;
wire [0:0] or_ln460_fu_877_p2;
wire [0:0] and_ln467_2_fu_894_p2;
wire [0:0] or_ln657_fu_794_p2;
wire [0:0] and_ln657_1_fu_900_p2;
wire [31:0] select_ln658_fu_807_p3;
wire [0:0] icmp_ln1039_fu_920_p2;
wire [0:0] xor_ln657_fu_914_p2;
wire [0:0] and_ln1039_fu_926_p2;
wire [0:0] and_ln1039_1_fu_932_p2;
wire [31:0] bitcast_ln356_fu_863_p1;
wire [31:0] select_ln657_fu_906_p3;
wire [31:0] select_ln407_fu_695_p3;
wire [31:0] select_ln1039_fu_938_p3;
wire [0:0] xor_ln970_fu_702_p2;
wire [0:0] and_ln460_fu_953_p2;
wire [0:0] and_ln460_1_fu_959_p2;
wire [31:0] select_ln407_1_fu_946_p3;
wire [11:0] grp_fu_972_p1;
wire [17:0] grp_fu_983_p0;
wire [17:0] grp_fu_983_p1;
reg [0:0] ap_NS_fsm;
reg ap_idle_pp0_0to6;
reg ap_reset_idle_pp0;
wire ap_enable_pp0;
wire [35:0] grp_fu_983_p00;
wire [35:0] grp_fu_983_p10;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
end
entry_point_pow_generic_float_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_arrbkb #(
 .DataWidth( 27 ),
 .AddressRange( 512 ),
 .AddressWidth( 9 ))
pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_address0),
 .ce0(pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_ce0),
 .q0(pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_q0)
);
entry_point_pow_generic_float_s_pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_arraycud #(
 .DataWidth( 8 ),
 .AddressRange( 32 ),
 .AddressWidth( 5 ))
pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_address0),
 .ce0(pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_ce0),
 .q0(pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_q0)
);
entry_point_mul_25s_35ns_59_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 25 ),
 .din1_WIDTH( 35 ),
 .dout_WIDTH( 59 ))
mul_25s_35ns_59_1_1_U1(
 .din0(e_frac_V_2_fu_268_p3),
 .din1(m_frac_l_V_fu_280_p1),
 .dout(m_frac_l_V_fu_280_p2)
);
entry_point_mul_10s_36s_36_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 10 ),
 .din1_WIDTH( 36 ),
 .dout_WIDTH( 36 ))
mul_10s_36s_36_1_1_U2(
 .din0(ret_V_7_fu_587_p3),
 .din1(36'd47632711549),
 .dout(mul_ln1270_fu_599_p2)
);
entry_point_mac_muladd_13s_12ns_16s_25_4_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 13 ),
 .din1_WIDTH( 12 ),
 .din2_WIDTH( 16 ),
 .dout_WIDTH( 25 ))
mac_muladd_13s_12ns_16s_25_4_1_U3(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(m_fix_hi_V_fu_474_p4),
 .din1(grp_fu_972_p1),
 .din2(rhs_fu_537_p3),
 .ce(1'b1),
 .dout(grp_fu_972_p3)
);
entry_point_mul_mul_18ns_18ns_36_4_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 18 ),
 .din1_WIDTH( 18 ),
 .dout_WIDTH( 36 ))
mul_mul_18ns_18ns_36_4_1_U4(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_983_p0),
 .din1(grp_fu_983_p1),
 .ce(1'b1),
 .dout(grp_fu_983_p2)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_enable_reg_pp0_iter1 <= ap_start;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter2 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter3 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter4 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter5 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter6 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter7 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (or_ln407_reg_1053_pp0_iter3_reg == 1'd0))) begin
 exp_Z1_V_reg_1085 <= pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_q0;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 exp_Z1_V_reg_1085_pp0_iter5_reg <= exp_Z1_V_reg_1085;
 exp_Z1_V_reg_1085_pp0_iter6_reg <= exp_Z1_V_reg_1085_pp0_iter5_reg;
 icmp_ln1654_reg_1041_pp0_iter2_reg <= icmp_ln1654_reg_1041_pp0_iter1_reg;
 icmp_ln1654_reg_1041_pp0_iter3_reg <= icmp_ln1654_reg_1041_pp0_iter2_reg;
 icmp_ln1654_reg_1041_pp0_iter4_reg <= icmp_ln1654_reg_1041_pp0_iter3_reg;
 icmp_ln1654_reg_1041_pp0_iter5_reg <= icmp_ln1654_reg_1041_pp0_iter4_reg;
 icmp_ln1654_reg_1041_pp0_iter6_reg <= icmp_ln1654_reg_1041_pp0_iter5_reg;
 icmp_ln657_reg_1036_pp0_iter2_reg <= icmp_ln657_reg_1036_pp0_iter1_reg;
 icmp_ln657_reg_1036_pp0_iter3_reg <= icmp_ln657_reg_1036_pp0_iter2_reg;
 icmp_ln657_reg_1036_pp0_iter4_reg <= icmp_ln657_reg_1036_pp0_iter3_reg;
 icmp_ln657_reg_1036_pp0_iter5_reg <= icmp_ln657_reg_1036_pp0_iter4_reg;
 icmp_ln657_reg_1036_pp0_iter6_reg <= icmp_ln657_reg_1036_pp0_iter5_reg;
 m_frac_l_V_reg_1016_pp0_iter2_reg <= m_frac_l_V_reg_1016_pp0_iter1_reg;
 m_frac_l_V_reg_1016_pp0_iter3_reg <= m_frac_l_V_reg_1016_pp0_iter2_reg;
 m_frac_l_V_reg_1016_pp0_iter4_reg <= m_frac_l_V_reg_1016_pp0_iter3_reg;
 m_frac_l_V_reg_1016_pp0_iter5_reg <= m_frac_l_V_reg_1016_pp0_iter4_reg;
 m_frac_l_V_reg_1016_pp0_iter6_reg <= m_frac_l_V_reg_1016_pp0_iter5_reg;
 or_ln407_reg_1053 <= or_ln407_fu_532_p2;
 or_ln407_reg_1053_pp0_iter3_reg <= or_ln407_reg_1053;
 or_ln407_reg_1053_pp0_iter4_reg <= or_ln407_reg_1053_pp0_iter3_reg;
 or_ln407_reg_1053_pp0_iter5_reg <= or_ln407_reg_1053_pp0_iter4_reg;
 or_ln407_reg_1053_pp0_iter6_reg <= or_ln407_reg_1053_pp0_iter5_reg;
 p_Result_5_reg_991_pp0_iter2_reg <= p_Result_5_reg_991_pp0_iter1_reg;
 p_Result_5_reg_991_pp0_iter3_reg <= p_Result_5_reg_991_pp0_iter2_reg;
 p_Result_5_reg_991_pp0_iter4_reg <= p_Result_5_reg_991_pp0_iter3_reg;
 p_Result_5_reg_991_pp0_iter5_reg <= p_Result_5_reg_991_pp0_iter4_reg;
 p_Result_5_reg_991_pp0_iter6_reg <= p_Result_5_reg_991_pp0_iter5_reg;
 ret_V_7_reg_1064_pp0_iter4_reg <= ret_V_7_reg_1064;
 ret_V_7_reg_1064_pp0_iter5_reg <= ret_V_7_reg_1064_pp0_iter4_reg;
 ret_V_7_reg_1064_pp0_iter6_reg <= ret_V_7_reg_1064_pp0_iter5_reg;
 trunc_ln2_reg_1031_pp0_iter2_reg <= trunc_ln2_reg_1031_pp0_iter1_reg;
 y_is_0_reg_998_pp0_iter2_reg <= y_is_0_reg_998_pp0_iter1_reg;
 y_is_0_reg_998_pp0_iter3_reg <= y_is_0_reg_998_pp0_iter2_reg;
 y_is_0_reg_998_pp0_iter4_reg <= y_is_0_reg_998_pp0_iter3_reg;
 y_is_0_reg_998_pp0_iter5_reg <= y_is_0_reg_998_pp0_iter4_reg;
 y_is_0_reg_998_pp0_iter6_reg <= y_is_0_reg_998_pp0_iter5_reg;
 y_is_inf_reg_1046 <= y_is_inf_fu_518_p2;
 y_is_inf_reg_1046_pp0_iter3_reg <= y_is_inf_reg_1046;
 y_is_inf_reg_1046_pp0_iter4_reg <= y_is_inf_reg_1046_pp0_iter3_reg;
 y_is_inf_reg_1046_pp0_iter5_reg <= y_is_inf_reg_1046_pp0_iter4_reg;
 y_is_inf_reg_1046_pp0_iter6_reg <= y_is_inf_reg_1046_pp0_iter5_reg;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 icmp_ln1019_1_reg_1010 <= icmp_ln1019_1_fu_240_p2;
 icmp_ln1019_1_reg_1010_pp0_iter1_reg <= icmp_ln1019_1_reg_1010;
 icmp_ln1019_reg_1004 <= icmp_ln1019_fu_234_p2;
 icmp_ln1019_reg_1004_pp0_iter1_reg <= icmp_ln1019_reg_1004;
 icmp_ln1654_reg_1041 <= icmp_ln1654_fu_512_p2;
 icmp_ln1654_reg_1041_pp0_iter1_reg <= icmp_ln1654_reg_1041;
 icmp_ln657_reg_1036 <= icmp_ln657_fu_506_p2;
 icmp_ln657_reg_1036_pp0_iter1_reg <= icmp_ln657_reg_1036;
 m_frac_l_V_reg_1016 <= m_frac_l_V_fu_280_p2;
 m_frac_l_V_reg_1016_pp0_iter1_reg <= m_frac_l_V_reg_1016;
 p_Result_5_reg_991 <= data_V_fu_192_p1[32'd31];
 p_Result_5_reg_991_pp0_iter1_reg <= p_Result_5_reg_991;
 p_Result_8_reg_1021 <= select_ln578_fu_466_p3[32'd65];
 p_Result_8_reg_1021_pp0_iter1_reg <= p_Result_8_reg_1021;
 trunc_ln2_reg_1031 <= {{select_ln578_fu_466_p3[56:30]}};
 trunc_ln2_reg_1031_pp0_iter1_reg <= trunc_ln2_reg_1031;
 y_is_0_reg_998 <= y_is_0_fu_228_p2;
 y_is_0_reg_998_pp0_iter1_reg <= y_is_0_reg_998;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (or_ln407_reg_1053 == 1'd0))) begin
 m_diff_lo_V_reg_1070 <= m_diff_lo_V_fu_630_p1;
 ret_V_7_reg_1064 <= ret_V_7_fu_587_p3;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
 ap_done = 1'b1;
 end else begin
 ap_done = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
 ap_idle_pp0 = 1'b1;
 end else begin
 ap_idle_pp0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
 ap_idle_pp0_0to6 = 1'b1;
 end else begin
 ap_idle_pp0_0to6 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((ap_idle_pp0_0to6 == 1'b1) & (ap_start == 1'b0))) begin
 ap_reset_idle_pp0 = 1'b1;
 end else begin
 ap_reset_idle_pp0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
 pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_ce0 = 1'b1;
 end else begin
 pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
 pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_ce0 = 1'b1;
 end else begin
 pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_ce0 = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_pp0_stage0 : begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign Z2_ind_fu_639_p4 = {{m_diff_V_fu_615_p2[17:13]}};
assign add_ln1347_1_fu_748_p2 = (trunc_ln3_fu_734_p3 + zext_ln1347_1_fu_727_p1);
assign and_ln1039_1_fu_932_p2 = (and_ln467_2_fu_894_p2 & and_ln1039_fu_926_p2);
assign and_ln1039_fu_926_p2 = (xor_ln657_fu_914_p2 & icmp_ln1039_fu_920_p2);
assign and_ln460_1_fu_959_p2 = (y_is_inf_reg_1046_pp0_iter6_reg & and_ln460_fu_953_p2);
assign and_ln460_fu_953_p2 = (xor_ln970_fu_702_p2 & xor_ln407_fu_867_p2);
assign and_ln467_1_fu_888_p2 = (xor_ln467_fu_882_p2 & xor_ln407_fu_867_p2);
assign and_ln467_2_fu_894_p2 = (or_ln460_fu_877_p2 & and_ln467_1_fu_888_p2);
assign and_ln467_fu_707_p2 = (y_is_inf_reg_1046_pp0_iter6_reg & p_Result_5_reg_991_pp0_iter6_reg);
assign and_ln657_1_fu_900_p2 = (or_ln657_fu_794_p2 & and_ln467_2_fu_894_p2);
assign and_ln657_fu_774_p2 = (icmp_ln657_reg_1036_pp0_iter6_reg & icmp_ln1654_reg_1041_pp0_iter6_reg);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);
assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);
assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);
assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);
assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);
assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start;
assign ap_return = ((and_ln460_1_fu_959_p2[0:0] == 1'b1) ? 32'd2139095040 : select_ln407_1_fu_946_p3);
assign bitcast_ln356_fu_863_p1 = p_Result_9_fu_853_p4;
assign data_V_fu_192_p1 = exp;
assign e_frac_V_1_fu_262_p2 = (25'd0 - zext_ln294_fu_258_p1);
assign e_frac_V_2_fu_268_p3 = ((p_Result_5_fu_196_p3[0:0] == 1'b1) ? e_frac_V_1_fu_262_p2 : zext_ln294_fu_258_p1);
assign es_exp_V_fu_204_p4 = {{data_V_fu_192_p1[30:23]}};
assign es_sig_V_fu_214_p1 = data_V_fu_192_p1[22:0];
assign exp_Z1P_m_1_V_fu_667_p4 = {{ret_V_3_fu_661_p2[18:1]}};
assign exp_Z1_hi_V_fu_677_p4 = {{pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_q0[26:9]}};
assign grp_fu_972_p1 = 25'd2954;
assign grp_fu_983_p0 = grp_fu_983_p00;
assign grp_fu_983_p00 = exp_Z1P_m_1_V_fu_667_p4;
assign grp_fu_983_p1 = grp_fu_983_p10;
assign grp_fu_983_p10 = exp_Z1_hi_V_fu_677_p4;
assign icmp_ln1003_fu_567_p2 = ((trunc_ln1003_fu_564_p1 == 15'd0) ? 1'b1 : 1'b0);
assign icmp_ln1019_1_fu_240_p2 = ((es_sig_V_fu_214_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln1019_fu_234_p2 = ((es_exp_V_fu_204_p4 == 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln1035_fu_788_p2 = (($signed(tmp_10_fu_778_p4) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign icmp_ln1039_fu_920_p2 = (($signed(r_exp_V_2_fu_767_p3) > $signed(10'd897)) ? 1'b1 : 1'b0);
assign icmp_ln1654_fu_512_p2 = ((sext_ln568_1_fu_290_p1 != r_V_13_fu_376_p3) ? 1'b1 : 1'b0);
assign icmp_ln657_fu_506_p2 = (($signed(m_exp_fu_222_p2) > $signed(9'd0)) ? 1'b1 : 1'b0);
assign isNeg_1_fu_410_p3 = sub_ln1512_fu_302_p2[32'd7];
assign isNeg_fu_294_p3 = m_exp_fu_222_p2[32'd8];
assign lhs_V_3_fu_716_p3 = {{ret_V_8_fu_711_p2}, {17'd0}};
assign m_diff_V_fu_615_p2 = (trunc_ln2_reg_1031_pp0_iter2_reg - trunc_ln813_1_fu_605_p4);
assign m_diff_hi_V_fu_620_p4 = {{m_diff_V_fu_615_p2[26:18]}};
assign m_diff_lo_V_fu_630_p1 = m_diff_V_fu_615_p2[17:0];
assign m_exp_fu_222_p2 = ($signed(zext_ln346_fu_218_p1) + $signed(9'd385));
assign m_fix_hi_V_fu_474_p4 = {{select_ln578_fu_466_p3[65:53]}};
assign m_fix_l_V_fu_352_p3 = ((isNeg_fu_294_p3[0:0] == 1'b1) ? sext_ln1487_fu_338_p1 : trunc_ln1487_1_fu_348_p1);
assign m_frac_l_V_fu_280_p1 = 59'd17179868662;
assign or_ln407_fu_532_p2 = (y_is_NaN_fu_527_p2 | y_is_0_reg_998_pp0_iter1_reg);
assign or_ln460_fu_877_p2 = (xor_ln460_fu_872_p2 | p_Result_5_reg_991_pp0_iter6_reg);
assign or_ln657_fu_794_p2 = (icmp_ln1035_fu_788_p2 | and_ln657_fu_774_p2);
assign out_exp_V_fu_847_p2 = (trunc_ln186_fu_843_p1 + 8'd127);
assign p_Result_1_fu_754_p3 = ret_V_5_fu_742_p2[32'd43];
assign p_Result_5_fu_196_p3 = data_V_fu_192_p1[32'd31];
assign p_Result_6_fu_246_p1 = data_V_fu_192_p1[22:0];
assign p_Result_7_fu_250_p3 = {{1'd1}, {p_Result_6_fu_246_p1}};
assign p_Result_9_fu_853_p4 = {{{{1'd0}, {out_exp_V_fu_847_p2}}}, {tmp_13_fu_835_p3}};
assign p_Result_s_fu_557_p3 = grp_fu_972_p3[32'd24];
assign pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_address0 = zext_ln541_fu_634_p1;
assign pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_address0 = zext_ln541_1_fu_649_p1;
assign r_V_13_fu_376_p3 = ((isNeg_fu_294_p3[0:0] == 1'b1) ? r_V_2_fu_364_p2 : r_V_3_fu_370_p2);
assign r_V_1_fu_342_p2 = sext_ln568_fu_286_p1 << zext_ln1488_fu_324_p1;
assign r_V_2_fu_364_p2 = m_fix_l_V_fu_352_p3 << zext_ln1454_fu_360_p1;
assign r_V_3_fu_370_p2 = $signed(m_fix_l_V_fu_352_p3) >>> zext_ln1454_fu_360_p1;
assign r_V_5_fu_400_p2 = sext_ln568_fu_286_p1 << zext_ln1454_1_fu_396_p1;
assign r_V_6_fu_434_p2 = sext_ln568_fu_286_p1 << zext_ln1454_2_fu_430_p1;
assign r_V_7_fu_448_p2 = $signed(m_frac_l_V_fu_280_p2) >>> sext_ln1454_1cast_fu_444_p1;
assign r_V_8_fu_458_p3 = ((isNeg_1_fu_410_p3[0:0] == 1'b1) ? trunc_ln1453_fu_440_p1 : sext_ln1453_fu_454_p1);
assign r_V_fu_332_p2 = $signed(m_frac_l_V_fu_280_p2) >>> sext_ln1488cast_fu_328_p1;
assign r_exp_V_2_fu_767_p3 = ((p_Result_1_fu_754_p3[0:0] == 1'b1) ? ret_V_7_reg_1064_pp0_iter6_reg : r_exp_V_fu_762_p2);
assign r_exp_V_fu_762_p2 = ($signed(ret_V_7_reg_1064_pp0_iter6_reg) + $signed(10'd1023));
assign ret_V_3_fu_661_p2 = (zext_ln813_fu_654_p1 + zext_ln813_1_fu_657_p1);
assign ret_V_5_fu_742_p2 = (lhs_V_3_fu_716_p3 + zext_ln1347_fu_724_p1);
assign ret_V_7_fu_587_p3 = ((p_Result_s_fu_557_p3[0:0] == 1'b1) ? select_ln1002_fu_579_p3 : ret_V_cast_fu_548_p4);
assign ret_V_8_fu_711_p2 = (exp_Z1_V_reg_1085_pp0_iter6_reg + 27'd4);
assign ret_V_cast_fu_548_p4 = {{grp_fu_972_p3[24:15]}};
assign ret_V_fu_573_p2 = (ret_V_cast_fu_548_p4 + 10'd1);
assign rhs_fu_537_p3 = {{p_Result_8_reg_1021_pp0_iter1_reg}, {15'd16384}};
assign select_ln1002_fu_579_p3 = ((icmp_ln1003_fu_567_p2[0:0] == 1'b1) ? ret_V_cast_fu_548_p4 : ret_V_fu_573_p2);
assign select_ln1039_fu_938_p3 = ((and_ln1039_1_fu_932_p2[0:0] == 1'b1) ? bitcast_ln356_fu_863_p1 : select_ln657_fu_906_p3);
assign select_ln407_1_fu_946_p3 = ((or_ln407_reg_1053_pp0_iter6_reg[0:0] == 1'b1) ? select_ln407_fu_695_p3 : select_ln1039_fu_938_p3);
assign select_ln407_fu_695_p3 = ((y_is_0_reg_998_pp0_iter6_reg[0:0] == 1'b1) ? 32'd1065353216 : 32'd2147483647);
assign select_ln578_fu_466_p3 = ((tmp_5_fu_384_p3[0:0] == 1'b1) ? r_V_8_fu_458_p3 : trunc_ln1487_2_fu_406_p1);
assign select_ln657_fu_906_p3 = ((and_ln657_1_fu_900_p2[0:0] == 1'b1) ? select_ln658_fu_807_p3 : 32'd0);
assign select_ln658_fu_807_p3 = ((tmp_11_fu_800_p3[0:0] == 1'b1) ? 32'd0 : 32'd2139095040);
assign sext_ln1453_fu_454_p1 = $signed(r_V_7_fu_448_p2);
assign sext_ln1454_1_fu_426_p1 = $signed(ush_2_fu_418_p3);
assign sext_ln1454_1cast_fu_444_p1 = $unsigned(sext_ln1454_1_fu_426_p1);
assign sext_ln1454_fu_392_p1 = m_exp_fu_222_p2;
assign sext_ln1487_fu_338_p1 = $signed(r_V_fu_332_p2);
assign sext_ln1488_fu_320_p1 = $signed(ush_fu_312_p3);
assign sext_ln1488cast_fu_328_p1 = $unsigned(sext_ln1488_fu_320_p1);
assign sext_ln1512_fu_308_p1 = sub_ln1512_fu_302_p2;
assign sext_ln568_1_fu_290_p1 = m_frac_l_V_fu_280_p2;
assign sext_ln568_fu_286_p1 = m_frac_l_V_fu_280_p2;
assign sub_ln1512_fu_302_p2 = (8'd127 - es_exp_V_fu_204_p4);
assign tmp_10_fu_778_p4 = {{r_exp_V_2_fu_767_p3[9:7]}};
assign tmp_11_fu_800_p3 = m_frac_l_V_reg_1016_pp0_iter6_reg[32'd58];
assign tmp_13_fu_835_p3 = ((p_Result_1_fu_754_p3[0:0] == 1'b1) ? tmp_fu_815_p4 : tmp_1_fu_825_p4);
assign tmp_1_fu_825_p4 = {{add_ln1347_1_fu_748_p2[41:19]}};
assign tmp_5_fu_384_p3 = m_exp_fu_222_p2[32'd8];
assign tmp_fu_815_p4 = {{ret_V_5_fu_742_p2[42:20]}};
assign trunc_ln1003_fu_564_p1 = grp_fu_972_p3[14:0];
assign trunc_ln1347_fu_730_p1 = ret_V_8_fu_711_p2[24:0];
assign trunc_ln1453_fu_440_p1 = r_V_6_fu_434_p2[65:0];
assign trunc_ln1487_1_fu_348_p1 = r_V_1_fu_342_p2[65:0];
assign trunc_ln1487_2_fu_406_p1 = r_V_5_fu_400_p2[65:0];
assign trunc_ln186_fu_843_p1 = r_exp_V_2_fu_767_p3[7:0];
assign trunc_ln3_fu_734_p3 = {{trunc_ln1347_fu_730_p1}, {17'd0}};
assign trunc_ln813_1_fu_605_p4 = {{mul_ln1270_fu_599_p2[35:9]}};
assign ush_2_fu_418_p3 = ((isNeg_1_fu_410_p3[0:0] == 1'b1) ? m_exp_fu_222_p2 : sext_ln1512_fu_308_p1);
assign ush_fu_312_p3 = ((isNeg_fu_294_p3[0:0] == 1'b1) ? sext_ln1512_fu_308_p1 : m_exp_fu_222_p2);
assign xor_ln1023_fu_522_p2 = (icmp_ln1019_1_reg_1010_pp0_iter1_reg ^ 1'd1);
assign xor_ln407_fu_867_p2 = (or_ln407_reg_1053_pp0_iter6_reg ^ 1'd1);
assign xor_ln460_fu_872_p2 = (y_is_inf_reg_1046_pp0_iter6_reg ^ 1'd1);
assign xor_ln467_fu_882_p2 = (1'd1 ^ and_ln467_fu_707_p2);
assign xor_ln657_fu_914_p2 = (or_ln657_fu_794_p2 ^ 1'd1);
assign xor_ln970_fu_702_p2 = (p_Result_5_reg_991_pp0_iter6_reg ^ 1'd1);
assign y_is_0_fu_228_p2 = ((es_exp_V_fu_204_p4 == 8'd0) ? 1'b1 : 1'b0);
assign y_is_NaN_fu_527_p2 = (xor_ln1023_fu_522_p2 & icmp_ln1019_reg_1004_pp0_iter1_reg);
assign y_is_inf_fu_518_p2 = (icmp_ln1019_reg_1004_pp0_iter1_reg & icmp_ln1019_1_reg_1010_pp0_iter1_reg);
assign zext_ln1347_1_fu_727_p1 = grp_fu_983_p2;
assign zext_ln1347_fu_724_p1 = grp_fu_983_p2;
assign zext_ln1454_1_fu_396_p1 = $unsigned(sext_ln1454_fu_392_p1);
assign zext_ln1454_2_fu_430_p1 = $unsigned(sext_ln1454_1_fu_426_p1);
assign zext_ln1454_fu_360_p1 = $unsigned(sext_ln1488_fu_320_p1);
assign zext_ln1488_fu_324_p1 = $unsigned(sext_ln1488_fu_320_p1);
assign zext_ln294_fu_258_p1 = p_Result_7_fu_250_p3;
assign zext_ln346_fu_218_p1 = es_exp_V_fu_204_p4;
assign zext_ln541_1_fu_649_p1 = Z2_ind_fu_639_p4;
assign zext_ln541_fu_634_p1 = m_diff_hi_V_fu_620_p4;
assign zext_ln813_1_fu_657_p1 = pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_q0;
assign zext_ln813_fu_654_p1 = m_diff_lo_V_reg_1070;
endmodule
module entry_point_pow_generic_float_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_arrbkb (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 27;
parameter AddressWidth = 9;
parameter AddressRange = 512;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h4000000;
 rom0[1]=8'h4020080;
 rom0[2]=8'h4040200;
 rom0[3]=8'h4060482;
 rom0[4]=8'h4080805;
 rom0[5]=8'h40A0C8A;
 rom0[6]=8'h40C1212;
 rom0[7]=8'h40E189C;
 rom0[8]=8'h410202A;
 rom0[9]=8'h41228BD;
 rom0[10]=8'h4143253;
 rom0[11]=8'h4163CEF;
 rom0[12]=8'h4184890;
 rom0[13]=8'h41A5538;
 rom0[14]=8'h41C62E6;
 rom0[15]=8'h41E719B;
 rom0[16]=8'h4208158;
 rom0[17]=8'h422921C;
 rom0[18]=8'h424A3EA;
 rom0[19]=8'h426B6C0;
 rom0[20]=8'h428CAA1;
 rom0[21]=8'h42ADF8B;
 rom0[22]=8'h42CF580;
 rom0[23]=8'h42F0C81;
 rom0[24]=8'h431248D;
 rom0[25]=8'h4333DA6;
 rom0[26]=8'h43557CB;
 rom0[27]=8'h43772FE;
 rom0[28]=8'h4398F3E;
 rom0[29]=8'h43BAC8D;
 rom0[30]=8'h43DCAEB;
 rom0[31]=8'h43FEA58;
 rom0[32]=8'h4420AD5;
 rom0[33]=8'h4442C63;
 rom0[34]=8'h4464F02;
 rom0[35]=8'h44872B2;
 rom0[36]=8'h44A9775;
 rom0[37]=8'h44CBD4A;
 rom0[38]=8'h44EE432;
 rom0[39]=8'h4510C2E;
 rom0[40]=8'h453353F;
 rom0[41]=8'h4555F64;
 rom0[42]=8'h4578A9E;
 rom0[43]=8'h459B6EF;
 rom0[44]=8'h45BE455;
 rom0[45]=8'h45E12D3;
 rom0[46]=8'h4604268;
 rom0[47]=8'h4627316;
 rom0[48]=8'h464A4DC;
 rom0[49]=8'h466D7BB;
 rom0[50]=8'h4690BB4;
 rom0[51]=8'h46B40C7;
 rom0[52]=8'h46D76F4;
 rom0[53]=8'h46FAE3E;
 rom0[54]=8'h471E6A3;
 rom0[55]=8'h4742025;
 rom0[56]=8'h4765AC3;
 rom0[57]=8'h4789680;
 rom0[58]=8'h47AD35A;
 rom0[59]=8'h47D1153;
 rom0[60]=8'h47F506B;
 rom0[61]=8'h48190A4;
 rom0[62]=8'h483D1FC;
 rom0[63]=8'h4861476;
 rom0[64]=8'h4885811;
 rom0[65]=8'h48A9CCE;
 rom0[66]=8'h48CE2AE;
 rom0[67]=8'h48F29B1;
 rom0[68]=8'h49171D8;
 rom0[69]=8'h493BB23;
 rom0[70]=8'h4960593;
 rom0[71]=8'h4985129;
 rom0[72]=8'h49A9DE4;
 rom0[73]=8'h49CEBC7;
 rom0[74]=8'h49F3AD0;
 rom0[75]=8'h4A18B02;
 rom0[76]=8'h4A3DC5C;
 rom0[77]=8'h4A62EDE;
 rom0[78]=8'h4A8828B;
 rom0[79]=8'h4AAD761;
 rom0[80]=8'h4AD2D62;
 rom0[81]=8'h4AF848F;
 rom0[82]=8'h4B1DCE7;
 rom0[83]=8'h4B4366C;
 rom0[84]=8'h4B6911E;
 rom0[85]=8'h4B8ECFD;
 rom0[86]=8'h4BB4A0B;
 rom0[87]=8'h4BDA847;
 rom0[88]=8'h4C007B3;
 rom0[89]=8'h4C2684F;
 rom0[90]=8'h4C4CA1C;
 rom0[91]=8'h4C72D1A;
 rom0[92]=8'h4C99149;
 rom0[93]=8'h4CBF6AB;
 rom0[94]=8'h4CE5D40;
 rom0[95]=8'h4D0C509;
 rom0[96]=8'h4D32E05;
 rom0[97]=8'h4D59837;
 rom0[98]=8'h4D8039E;
 rom0[99]=8'h4DA703B;
 rom0[100]=8'h4DCDE0E;
 rom0[101]=8'h4DF4D19;
 rom0[102]=8'h4E1BD5B;
 rom0[103]=8'h4E42ED6;
 rom0[104]=8'h4E6A18A;
 rom0[105]=8'h4E91578;
 rom0[106]=8'h4EB8AA0;
 rom0[107]=8'h4EE0103;
 rom0[108]=8'h4F078A1;
 rom0[109]=8'h4F2F17C;
 rom0[110]=8'h4F56B93;
 rom0[111]=8'h4F7E6E8;
 rom0[112]=8'h4FA637A;
 rom0[113]=8'h4FCE14B;
 rom0[114]=8'h4FF605C;
 rom0[115]=8'h501E0AC;
 rom0[116]=8'h504623D;
 rom0[117]=8'h506E50E;
 rom0[118]=8'h5096922;
 rom0[119]=8'h50BEE78;
 rom0[120]=8'h50E7510;
 rom0[121]=8'h510FCED;
 rom0[122]=8'h513860E;
 rom0[123]=8'h5161073;
 rom0[124]=8'h5189C1E;
 rom0[125]=8'h51B2910;
 rom0[126]=8'h51DB748;
 rom0[127]=8'h52046C7;
 rom0[128]=8'h522D78F;
 rom0[129]=8'h525699F;
 rom0[130]=8'h527FCF8;
 rom0[131]=8'h52A919C;
 rom0[132]=8'h52D278A;
 rom0[133]=8'h52FBEC4;
 rom0[134]=8'h5325749;
 rom0[135]=8'h534F11B;
 rom0[136]=8'h5378C3B;
 rom0[137]=8'h53A28A8;
 rom0[138]=8'h53CC663;
 rom0[139]=8'h53F656E;
 rom0[140]=8'h54205C9;
 rom0[141]=8'h544A774;
 rom0[142]=8'h5474A71;
 rom0[143]=8'h549EEBF;
 rom0[144]=8'h54C9460;
 rom0[145]=8'h54F3B54;
 rom0[146]=8'h551E39B;
 rom0[147]=8'h5548D37;
 rom0[148]=8'h5573829;
 rom0[149]=8'h559E470;
 rom0[150]=8'h55C920D;
 rom0[151]=8'h55F4102;
 rom0[152]=8'h561F14F;
 rom0[153]=8'h564A2F4;
 rom0[154]=8'h56755F2;
 rom0[155]=8'h56A0A4A;
 rom0[156]=8'h56CBFFC;
 rom0[157]=8'h56F770A;
 rom0[158]=8'h5722F74;
 rom0[159]=8'h574E93A;
 rom0[160]=8'h577A45D;
 rom0[161]=8'h57A60DE;
 rom0[162]=8'h57D1EBE;
 rom0[163]=8'h57FDDFD;
 rom0[164]=8'h5829E9C;
 rom0[165]=8'h585609C;
 rom0[166]=8'h58823FD;
 rom0[167]=8'h58AE8C0;
 rom0[168]=8'h58DAEE6;
 rom0[169]=8'h590766F;
 rom0[170]=8'h5933F5D;
 rom0[171]=8'h59609AF;
 rom0[172]=8'h598D567;
 rom0[173]=8'h59BA285;
 rom0[174]=8'h59E7109;
 rom0[175]=8'h5A140F6;
 rom0[176]=8'h5A4124B;
 rom0[177]=8'h5A6E508;
 rom0[178]=8'h5A9B930;
 rom0[179]=8'h5AC8EC2;
 rom0[180]=8'h5AF65BF;
 rom0[181]=8'h5B23E28;
 rom0[182]=8'h5B517FD;
 rom0[183]=8'h5B7F340;
 rom0[184]=8'h5BACFF1;
 rom0[185]=8'h5BDAE10;
 rom0[186]=8'h5C08D9F;
 rom0[187]=8'h5C36E9E;
 rom0[188]=8'h5C6510E;
 rom0[189]=8'h5C934EF;
 rom0[190]=8'h5CC1A43;
 rom0[191]=8'h5CF010A;
 rom0[192]=8'h5D1E944;
 rom0[193]=8'h5D4D2F3;
 rom0[194]=8'h5D7BE18;
 rom0[195]=8'h5DAAAB2;
 rom0[196]=8'h5DD98C3;
 rom0[197]=8'h5E0884B;
 rom0[198]=8'h5E3794B;
 rom0[199]=8'h5E66BC4;
 rom0[200]=8'h5E95FB7;
 rom0[201]=8'h5EC5524;
 rom0[202]=8'h5EF4C0D;
 rom0[203]=8'h5F24471;
 rom0[204]=8'h5F53E51;
 rom0[205]=8'h5F839AF;
 rom0[206]=8'h5FB368B;
 rom0[207]=8'h5FE34E6;
 rom0[208]=8'h60134C0;
 rom0[209]=8'h604361B;
 rom0[210]=8'h60738F7;
 rom0[211]=8'h60A3D54;
 rom0[212]=8'h60D4334;
 rom0[213]=8'h6104A98;
 rom0[214]=8'h613537F;
 rom0[215]=8'h6165DEB;
 rom0[216]=8'h61969DD;
 rom0[217]=8'h61C7756;
 rom0[218]=8'h61F8655;
 rom0[219]=8'h62296DC;
 rom0[220]=8'h625A8EC;
 rom0[221]=8'h628BC85;
 rom0[222]=8'h62BD1A9;
 rom0[223]=8'h62EE857;
 rom0[224]=8'h6320091;
 rom0[225]=8'h6351A58;
 rom0[226]=8'h63835AC;
 rom0[227]=8'h63B528E;
 rom0[228]=8'h63E70FF;
 rom0[229]=8'h64190FF;
 rom0[230]=8'h644B290;
 rom0[231]=8'h647D5B2;
 rom0[232]=8'h64AFA66;
 rom0[233]=8'h64E20AD;
 rom0[234]=8'h6514887;
 rom0[235]=8'h65471F6;
 rom0[236]=8'h6579CF9;
 rom0[237]=8'h65AC993;
 rom0[238]=8'h65DF7C3;
 rom0[239]=8'h661278B;
 rom0[240]=8'h66458EB;
 rom0[241]=8'h6678BE4;
 rom0[242]=8'h66AC077;
 rom0[243]=8'h66DF6A5;
 rom0[244]=8'h6712E6E;
 rom0[245]=8'h67467D3;
 rom0[246]=8'h677A2D6;
 rom0[247]=8'h67ADF77;
 rom0[248]=8'h67E1DB6;
 rom0[249]=8'h6815D94;
 rom0[250]=8'h6849F14;
 rom0[251]=8'h687E234;
 rom0[252]=8'h68B26F6;
 rom0[253]=8'h68E6D5B;
 rom0[254]=8'h691B564;
 rom0[255]=8'h694FF11;
 rom0[256]=8'h26D165F;
 rom0[257]=8'h26E4D38;
 rom0[258]=8'h26F84AC;
 rom0[259]=8'h270BCBD;
 rom0[260]=8'h271F569;
 rom0[261]=8'h2732EB2;
 rom0[262]=8'h2746898;
 rom0[263]=8'h275A31B;
 rom0[264]=8'h276DE3B;
 rom0[265]=8'h27819F9;
 rom0[266]=8'h2795655;
 rom0[267]=8'h27A9350;
 rom0[268]=8'h27BD0E9;
 rom0[269]=8'h27D0F21;
 rom0[270]=8'h27E4DF8;
 rom0[271]=8'h27F8D6F;
 rom0[272]=8'h280CD85;
 rom0[273]=8'h2820E3C;
 rom0[274]=8'h2834F94;
 rom0[275]=8'h284918C;
 rom0[276]=8'h285D425;
 rom0[277]=8'h2871760;
 rom0[278]=8'h2885B3D;
 rom0[279]=8'h2899FBC;
 rom0[280]=8'h28AE4DD;
 rom0[281]=8'h28C2AA1;
 rom0[282]=8'h28D7108;
 rom0[283]=8'h28EB812;
 rom0[284]=8'h28FFFC0;
 rom0[285]=8'h2914812;
 rom0[286]=8'h2929108;
 rom0[287]=8'h293DAA3;
 rom0[288]=8'h29524E3;
 rom0[289]=8'h2966FC8;
 rom0[290]=8'h297BB53;
 rom0[291]=8'h2990783;
 rom0[292]=8'h29A545A;
 rom0[293]=8'h29BA1D8;
 rom0[294]=8'h29CEFFC;
 rom0[295]=8'h29E3EC8;
 rom0[296]=8'h29F8E3B;
 rom0[297]=8'h2A0DE56;
 rom0[298]=8'h2A22F19;
 rom0[299]=8'h2A38085;
 rom0[300]=8'h2A4D29A;
 rom0[301]=8'h2A62558;
 rom0[302]=8'h2A778C0;
 rom0[303]=8'h2A8CCD1;
 rom0[304]=8'h2AA218C;
 rom0[305]=8'h2AB76F3;
 rom0[306]=8'h2ACCD04;
 rom0[307]=8'h2AE23C0;
 rom0[308]=8'h2AF7B27;
 rom0[309]=8'h2B0D33B;
 rom0[310]=8'h2B22BFB;
 rom0[311]=8'h2B38567;
 rom0[312]=8'h2B4DF80;
 rom0[313]=8'h2B63A47;
 rom0[314]=8'h2B795BB;
 rom0[315]=8'h2B8F1DD;
 rom0[316]=8'h2BA4EAD;
 rom0[317]=8'h2BBAC2B;
 rom0[318]=8'h2BD0A59;
 rom0[319]=8'h2BE6936;
 rom0[320]=8'h2BFC8C2;
 rom0[321]=8'h2C128FF;
 rom0[322]=8'h2C289EB;
 rom0[323]=8'h2C3EB89;
 rom0[324]=8'h2C54DD7;
 rom0[325]=8'h2C6B0D7;
 rom0[326]=8'h2C81488;
 rom0[327]=8'h2C978EB;
 rom0[328]=8'h2CADE01;
 rom0[329]=8'h2CC43C9;
 rom0[330]=8'h2CDAA45;
 rom0[331]=8'h2CF1174;
 rom0[332]=8'h2D07956;
 rom0[333]=8'h2D1E1ED;
 rom0[334]=8'h2D34B39;
 rom0[335]=8'h2D4B539;
 rom0[336]=8'h2D61FEE;
 rom0[337]=8'h2D78B59;
 rom0[338]=8'h2D8F779;
 rom0[339]=8'h2DA6450;
 rom0[340]=8'h2DBD1DE;
 rom0[341]=8'h2DD4022;
 rom0[342]=8'h2DEAF1E;
 rom0[343]=8'h2E01ED1;
 rom0[344]=8'h2E18F3D;
 rom0[345]=8'h2E30061;
 rom0[346]=8'h2E4723D;
 rom0[347]=8'h2E5E4D3;
 rom0[348]=8'h2E75822;
 rom0[349]=8'h2E8CC2B;
 rom0[350]=8'h2EA40EF;
 rom0[351]=8'h2EBB66D;
 rom0[352]=8'h2ED2CA5;
 rom0[353]=8'h2EEA399;
 rom0[354]=8'h2F01B49;
 rom0[355]=8'h2F193B5;
 rom0[356]=8'h2F30CDD;
 rom0[357]=8'h2F486C2;
 rom0[358]=8'h2F60164;
 rom0[359]=8'h2F77CC3;
 rom0[360]=8'h2F8F8E1;
 rom0[361]=8'h2FA75BC;
 rom0[362]=8'h2FBF356;
 rom0[363]=8'h2FD71B0;
 rom0[364]=8'h2FEF0C8;
 rom0[365]=8'h30070A1;
 rom0[366]=8'h301F139;
 rom0[367]=8'h3037292;
 rom0[368]=8'h304F4AC;
 rom0[369]=8'h3067787;
 rom0[370]=8'h307FB23;
 rom0[371]=8'h3097F82;
 rom0[372]=8'h30B04A3;
 rom0[373]=8'h30C8A87;
 rom0[374]=8'h30E112E;
 rom0[375]=8'h30F9898;
 rom0[376]=8'h31120C6;
 rom0[377]=8'h312A9B9;
 rom0[378]=8'h3143370;
 rom0[379]=8'h315BDED;
 rom0[380]=8'h317492E;
 rom0[381]=8'h318D536;
 rom0[382]=8'h31A6204;
 rom0[383]=8'h31BEF98;
 rom0[384]=8'h31D7DF3;
 rom0[385]=8'h31F0D16;
 rom0[386]=8'h3209D01;
 rom0[387]=8'h3222DB3;
 rom0[388]=8'h323BF2E;
 rom0[389]=8'h3255173;
 rom0[390]=8'h326E480;
 rom0[391]=8'h3287857;
 rom0[392]=8'h32A0CF8;
 rom0[393]=8'h32BA264;
 rom0[394]=8'h32D389B;
 rom0[395]=8'h32ECF9D;
 rom0[396]=8'h330676B;
 rom0[397]=8'h3320005;
 rom0[398]=8'h333996B;
 rom0[399]=8'h335339E;
 rom0[400]=8'h336CE9F;
 rom0[401]=8'h3386A6D;
 rom0[402]=8'h33A0709;
 rom0[403]=8'h33BA474;
 rom0[404]=8'h33D42AE;
 rom0[405]=8'h33EE1B7;
 rom0[406]=8'h3408190;
 rom0[407]=8'h3422239;
 rom0[408]=8'h343C3B2;
 rom0[409]=8'h34565FC;
 rom0[410]=8'h3470918;
 rom0[411]=8'h348AD06;
 rom0[412]=8'h34A51C5;
 rom0[413]=8'h34BF758;
 rom0[414]=8'h34D9DBD;
 rom0[415]=8'h34F44F5;
 rom0[416]=8'h350ED02;
 rom0[417]=8'h35295E3;
 rom0[418]=8'h3543F98;
 rom0[419]=8'h355EA22;
 rom0[420]=8'h3579582;
 rom0[421]=8'h35941B8;
 rom0[422]=8'h35AEEC4;
 rom0[423]=8'h35C9CA7;
 rom0[424]=8'h35E4B61;
 rom0[425]=8'h35FFAF2;
 rom0[426]=8'h361AB5C;
 rom0[427]=8'h3635C9E;
 rom0[428]=8'h3650EB9;
 rom0[429]=8'h366C1AD;
 rom0[430]=8'h368757A;
 rom0[431]=8'h36A2A22;
 rom0[432]=8'h36BDFA5;
 rom0[433]=8'h36D9602;
 rom0[434]=8'h36F4D3B;
 rom0[435]=8'h371054F;
 rom0[436]=8'h372BE40;
 rom0[437]=8'h374780E;
 rom0[438]=8'h37632B9;
 rom0[439]=8'h377EE41;
 rom0[440]=8'h379AAA7;
 rom0[441]=8'h37B67EC;
 rom0[442]=8'h37D260F;
 rom0[443]=8'h37EE512;
 rom0[444]=8'h380A4F4;
 rom0[445]=8'h38265B7;
 rom0[446]=8'h384275A;
 rom0[447]=8'h385E9DE;
 rom0[448]=8'h387AD44;
 rom0[449]=8'h389718C;
 rom0[450]=8'h38B36B6;
 rom0[451]=8'h38CFCC3;
 rom0[452]=8'h38EC3B3;
 rom0[453]=8'h3908B86;
 rom0[454]=8'h392543E;
 rom0[455]=8'h3941DDB;
 rom0[456]=8'h395E85C;
 rom0[457]=8'h397B3C3;
 rom0[458]=8'h3998010;
 rom0[459]=8'h39B4D44;
 rom0[460]=8'h39D1B5E;
 rom0[461]=8'h39EEA5F;
 rom0[462]=8'h3A0BA48;
 rom0[463]=8'h3A28B1A;
 rom0[464]=8'h3A45CD4;
 rom0[465]=8'h3A62F77;
 rom0[466]=8'h3A80303;
 rom0[467]=8'h3A9D77A;
 rom0[468]=8'h3ABACDB;
 rom0[469]=8'h3AD8327;
 rom0[470]=8'h3AF5A5E;
 rom0[471]=8'h3B13281;
 rom0[472]=8'h3B30B91;
 rom0[473]=8'h3B4E58D;
 rom0[474]=8'h3B6C076;
 rom0[475]=8'h3B89C4E;
 rom0[476]=8'h3BA7913;
 rom0[477]=8'h3BC56C7;
 rom0[478]=8'h3BE356A;
 rom0[479]=8'h3C014FC;
 rom0[480]=8'h3C1F57F;
 rom0[481]=8'h3C3D6F2;
 rom0[482]=8'h3C5B956;
 rom0[483]=8'h3C79CAC;
 rom0[484]=8'h3C980F3;
 rom0[485]=8'h3CB662D;
 rom0[486]=8'h3CD4C59;
 rom0[487]=8'h3CF3379;
 rom0[488]=8'h3D11B8D;
 rom0[489]=8'h3D30495;
 rom0[490]=8'h3D4EE92;
 rom0[491]=8'h3D6D984;
 rom0[492]=8'h3D8C56B;
 rom0[493]=8'h3DAB249;
 rom0[494]=8'h3DCA01E;
 rom0[495]=8'h3DE8EE9;
 rom0[496]=8'h3E07EAD;
 rom0[497]=8'h3E26F68;
 rom0[498]=8'h3E4611C;
 rom0[499]=8'h3E653CA;
 rom0[500]=8'h3E84770;
 rom0[501]=8'h3EA3C11;
 rom0[502]=8'h3EC31AD;
 rom0[503]=8'h3EE2843;
 rom0[504]=8'h3F01FD5;
 rom0[505]=8'h3F21863;
 rom0[506]=8'h3F411EE;
 rom0[507]=8'h3F60C75;
 rom0[508]=8'h3F807FA;
 rom0[509]=8'h3FA047D;
 rom0[510]=8'h3FC01FF;
 rom0[511]=8'h3FE007F;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_pow_generic_float_s_pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_arraycud (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 8;
parameter AddressWidth = 5;
parameter AddressRange = 32;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h00;
 rom0[1]=8'h00;
 rom0[2]=8'h01;
 rom0[3]=8'h02;
 rom0[4]=8'h04;
 rom0[5]=8'h06;
 rom0[6]=8'h09;
 rom0[7]=8'h0C;
 rom0[8]=8'h10;
 rom0[9]=8'h14;
 rom0[10]=8'h19;
 rom0[11]=8'h1E;
 rom0[12]=8'h24;
 rom0[13]=8'h2A;
 rom0[14]=8'h31;
 rom0[15]=8'h38;
 rom0[16]=8'h40;
 rom0[17]=8'h48;
 rom0[18]=8'h51;
 rom0[19]=8'h5A;
 rom0[20]=8'h64;
 rom0[21]=8'h6E;
 rom0[22]=8'h79;
 rom0[23]=8'h84;
 rom0[24]=8'h90;
 rom0[25]=8'h9C;
 rom0[26]=8'hA9;
 rom0[27]=8'hB6;
 rom0[28]=8'hC4;
 rom0[29]=8'hD2;
 rom0[30]=8'hE1;
 rom0[31]=8'hF0;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
