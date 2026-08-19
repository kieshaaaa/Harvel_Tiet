module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 totalSeconds,
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
parameter ap_ST_fsm_state1 = 4'd1;
parameter ap_ST_fsm_state2 = 4'd2;
parameter ap_ST_fsm_state3 = 4'd4;
parameter ap_ST_fsm_state4 = 4'd8;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] totalSeconds;
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
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg signed [31:0] totalSeconds_read_reg_339;
wire signed [31:0] sext_ln7_fu_213_p1;
wire signed [31:0] sext_ln7_1_fu_286_p1;
wire ap_CS_fsm_state4;
(* use_dsp48 = "no" *) wire [31:0] seconds_fu_322_p2;
reg signed [31:0] grp_fu_132_p0;
wire signed [64:0] sext_ln9_fu_144_p1;
wire signed [64:0] sext_ln10_fu_219_p1;
reg [33:0] grp_fu_132_p1;
wire [64:0] grp_fu_132_p2;
wire signed [31:0] sext_ln9_fu_144_p0;
wire signed [31:0] tmp_fu_149_p1;
wire [64:0] grp_fu_138_p2;
wire [0:0] tmp_fu_149_p3;
wire [19:0] tmp_cast_fu_157_p4;
wire [19:0] tmp_1_cast_fu_177_p4;
wire [19:0] select_ln9_fu_187_p3;
wire [20:0] zext_ln9_fu_195_p1;
wire [20:0] sub_ln9_1_fu_199_p2;
wire [20:0] tmp_1_cast1_fu_167_p4;
wire [20:0] hours_fu_205_p3;
wire signed [31:0] grp_fu_329_p3;
wire [0:0] tmp_1_fu_223_p3;
wire [25:0] tmp_2_cast_fu_230_p4;
wire [25:0] tmp_3_cast_fu_250_p4;
wire [25:0] select_ln10_fu_260_p3;
wire [26:0] zext_ln10_fu_268_p1;
wire [26:0] sub_ln10_1_fu_272_p2;
wire [26:0] tmp_3_cast1_fu_240_p4;
wire signed [26:0] minutes_fu_278_p3;
wire [25:0] trunc_ln11_fu_292_p1;
wire [28:0] tmp_2_fu_304_p3;
wire signed [31:0] sext_ln11_fu_312_p1;
wire [31:0] p_shl_fu_296_p3;
wire [31:0] sub_ln11_fu_316_p2;
wire signed [20:0] grp_fu_329_p0;
wire signed [12:0] grp_fu_329_p1;
wire ap_CS_fsm_state3;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
end
entry_point_mul_32s_34ns_65_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 34 ),
 .dout_WIDTH( 65 ))
mul_32s_34ns_65_1_1_U1(
 .din0(grp_fu_132_p0),
 .din1(grp_fu_132_p1),
 .dout(grp_fu_132_p2)
);
entry_point_mac_muladd_21s_13s_32s_32_4_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 21 ),
 .din1_WIDTH( 13 ),
 .din2_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mac_muladd_21s_13s_32s_32_4_1_U2(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_329_p0),
 .din1(grp_fu_329_p1),
 .din2(totalSeconds_read_reg_339),
 .ce(1'b1),
 .dout(grp_fu_329_p3)
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
 totalSeconds_read_reg_339 <= totalSeconds;
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
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
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
 if ((1'b1 == ap_CS_fsm_state4)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 grp_fu_132_p0 = sext_ln10_fu_219_p1;
 end else if ((1'b1 == ap_CS_fsm_state1)) begin
 grp_fu_132_p0 = sext_ln9_fu_144_p1;
 end else begin
 grp_fu_132_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 grp_fu_132_p1 = 65'd4581298450;
 end else if ((1'b1 == ap_CS_fsm_state1)) begin
 grp_fu_132_p1 = 65'd4886718346;
 end else begin
 grp_fu_132_p1 = 'bx;
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
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp5_ap_vld = 1'b1;
 end else begin
 temptemp5_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 temptemp6_ap_vld = 1'b1;
 end else begin
 temptemp6_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_return = 32'd0;
assign grp_fu_138_p2 = (65'd0 - grp_fu_132_p2);
assign grp_fu_329_p0 = sext_ln7_fu_213_p1;
assign grp_fu_329_p1 = 32'd4294963696;
assign hours_fu_205_p3 = ((tmp_fu_149_p3[0:0] == 1'b1) ? sub_ln9_1_fu_199_p2 : tmp_1_cast1_fu_167_p4);
assign minutes_fu_278_p3 = ((tmp_1_fu_223_p3[0:0] == 1'b1) ? sub_ln10_1_fu_272_p2 : tmp_3_cast1_fu_240_p4);
assign p_shl_fu_296_p3 = {{trunc_ln11_fu_292_p1}, {6'd0}};
assign seconds_fu_322_p2 = ($signed(grp_fu_329_p3) + $signed(sub_ln11_fu_316_p2));
assign select_ln10_fu_260_p3 = ((tmp_1_fu_223_p3[0:0] == 1'b1) ? tmp_2_cast_fu_230_p4 : tmp_3_cast_fu_250_p4);
assign select_ln9_fu_187_p3 = ((tmp_fu_149_p3[0:0] == 1'b1) ? tmp_cast_fu_157_p4 : tmp_1_cast_fu_177_p4);
assign sext_ln10_fu_219_p1 = grp_fu_329_p3;
assign sext_ln11_fu_312_p1 = $signed(tmp_2_fu_304_p3);
assign sext_ln7_1_fu_286_p1 = minutes_fu_278_p3;
assign sext_ln7_fu_213_p1 = $signed(hours_fu_205_p3);
assign sext_ln9_fu_144_p0 = totalSeconds;
assign sext_ln9_fu_144_p1 = sext_ln9_fu_144_p0;
assign sub_ln10_1_fu_272_p2 = (27'd0 - zext_ln10_fu_268_p1);
assign sub_ln11_fu_316_p2 = ($signed(sext_ln11_fu_312_p1) - $signed(p_shl_fu_296_p3));
assign sub_ln9_1_fu_199_p2 = (21'd0 - zext_ln9_fu_195_p1);
assign temptemp1 = totalSeconds;
assign temptemp2 = sext_ln7_fu_213_p1;
assign temptemp3 = sext_ln7_1_fu_286_p1;
assign temptemp4 = seconds_fu_322_p2;
assign temptemp5 = sext_ln7_fu_213_p1;
assign temptemp6 = sext_ln7_1_fu_286_p1;
assign temptemp7 = seconds_fu_322_p2;
assign tmp_1_cast1_fu_167_p4 = {{grp_fu_132_p2[64:44]}};
assign tmp_1_cast_fu_177_p4 = {{grp_fu_132_p2[63:44]}};
assign tmp_1_fu_223_p3 = grp_fu_329_p3[32'd31];
assign tmp_2_cast_fu_230_p4 = {{grp_fu_138_p2[63:38]}};
assign tmp_2_fu_304_p3 = {{minutes_fu_278_p3}, {2'd0}};
assign tmp_3_cast1_fu_240_p4 = {{grp_fu_132_p2[64:38]}};
assign tmp_3_cast_fu_250_p4 = {{grp_fu_132_p2[63:38]}};
assign tmp_cast_fu_157_p4 = {{grp_fu_138_p2[63:44]}};
assign tmp_fu_149_p1 = totalSeconds;
assign tmp_fu_149_p3 = tmp_fu_149_p1[32'd31];
assign trunc_ln11_fu_292_p1 = minutes_fu_278_p3[25:0];
assign zext_ln10_fu_268_p1 = select_ln10_fu_260_p3;
assign zext_ln9_fu_195_p1 = select_ln9_fu_187_p3;
endmodule
module entry_point_mac_muladd_21s_13s_32s_32_4_1_DSP48_0(
 input clk,
 input rst,
 input ce,
 input [21 - 1:0] in0,
 input [13 - 1:0] in1,
 input [32 - 1:0] in2,
 output [32 - 1:0] dout);
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
assign b = $signed(in1);
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
module entry_point_mac_muladd_21s_13s_32s_32_4_1(
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
entry_point_mac_muladd_21s_13s_32s_32_4_1_DSP48_0 entry_point_mac_muladd_21s_13s_32s_32_4_1_DSP48_0_U(
 .clk( clk ),
 .rst( reset ),
 .ce( ce ),
 .in0( din0 ),
 .in1( din1 ),
 .in2( din2 ),
 .dout( dout ));
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
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed(din0) * $signed({1'b0, din1});
assign dout = tmp_product;
endmodule
