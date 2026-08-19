module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 sec,
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
input [31:0] sec;
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
wire signed [31:0] hh_fu_186_p3;
wire [31:0] mm_fu_260_p3;
wire ap_CS_fsm_state4;
(* use_dsp48 = "no" *) wire [31:0] ss_fu_298_p2;
wire [33:0] mul_ln8_fu_124_p1;
wire [64:0] mul_ln8_fu_124_p2;
wire signed [31:0] tmp_fu_136_p1;
wire [64:0] sub_ln8_fu_130_p2;
wire signed [20:0] tmp_4_fu_154_p4;
wire [0:0] tmp_fu_136_p3;
wire [20:0] tmp_2_fu_144_p4;
wire [20:0] select_ln8_1_fu_168_p3;
wire signed [31:0] sext_ln8_2_fu_176_p1;
wire [31:0] sub_ln8_1_fu_180_p2;
wire signed [31:0] sext_ln8_1_fu_164_p1;
wire signed [31:0] grp_fu_305_p3;
wire [33:0] mul_ln9_1_fu_199_p1;
wire [64:0] mul_ln9_1_fu_199_p2;
wire [64:0] sub_ln9_fu_205_p2;
wire signed [26:0] tmp_7_fu_228_p4;
wire [0:0] tmp_5_fu_211_p3;
wire [26:0] tmp_6_fu_218_p4;
wire [26:0] select_ln9_1_fu_242_p3;
wire signed [31:0] sext_ln9_2_fu_250_p1;
wire [31:0] sub_ln9_1_fu_254_p2;
wire signed [31:0] sext_ln9_1_fu_238_p1;
wire [26:0] trunc_ln10_fu_276_p1;
wire [28:0] shl_ln10_1_fu_280_p3;
wire signed [31:0] sext_ln10_fu_288_p1;
wire [31:0] shl_ln10_fu_270_p2;
wire [31:0] sub_ln10_fu_292_p2;
wire signed [22:0] grp_fu_305_p0;
wire signed [12:0] grp_fu_305_p1;
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
 .din0(sec),
 .din1(mul_ln8_fu_124_p1),
 .dout(mul_ln8_fu_124_p2)
);
entry_point_mul_32s_34ns_65_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 34 ),
 .dout_WIDTH( 65 ))
mul_32s_34ns_65_1_1_U2(
 .din0(grp_fu_305_p3),
 .din1(mul_ln9_1_fu_199_p1),
 .dout(mul_ln9_1_fu_199_p2)
);
entry_point_mac_muladd_23s_13s_32s_32_4_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 23 ),
 .din1_WIDTH( 13 ),
 .din2_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mac_muladd_23s_13s_32s_32_4_1_U3(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_305_p0),
 .din1(grp_fu_305_p1),
 .din2(sec),
 .ce(1'b1),
 .dout(grp_fu_305_p3)
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
assign grp_fu_305_p0 = hh_fu_186_p3;
assign grp_fu_305_p1 = 32'd4294963696;
assign hh_fu_186_p3 = ((tmp_fu_136_p3[0:0] == 1'b1) ? sub_ln8_1_fu_180_p2 : sext_ln8_1_fu_164_p1);
assign mm_fu_260_p3 = ((tmp_5_fu_211_p3[0:0] == 1'b1) ? sub_ln9_1_fu_254_p2 : sext_ln9_1_fu_238_p1);
assign mul_ln8_fu_124_p1 = 65'd4886718346;
assign mul_ln9_1_fu_199_p1 = 65'd4581298450;
assign select_ln8_1_fu_168_p3 = ((tmp_fu_136_p3[0:0] == 1'b1) ? tmp_2_fu_144_p4 : tmp_4_fu_154_p4);
assign select_ln9_1_fu_242_p3 = ((tmp_5_fu_211_p3[0:0] == 1'b1) ? tmp_6_fu_218_p4 : tmp_7_fu_228_p4);
assign sext_ln10_fu_288_p1 = $signed(shl_ln10_1_fu_280_p3);
assign sext_ln8_1_fu_164_p1 = tmp_4_fu_154_p4;
assign sext_ln8_2_fu_176_p1 = $signed(select_ln8_1_fu_168_p3);
assign sext_ln9_1_fu_238_p1 = tmp_7_fu_228_p4;
assign sext_ln9_2_fu_250_p1 = $signed(select_ln9_1_fu_242_p3);
assign shl_ln10_1_fu_280_p3 = {{trunc_ln10_fu_276_p1}, {2'd0}};
assign shl_ln10_fu_270_p2 = mm_fu_260_p3 << 32'd6;
assign ss_fu_298_p2 = ($signed(grp_fu_305_p3) + $signed(sub_ln10_fu_292_p2));
assign sub_ln10_fu_292_p2 = ($signed(sext_ln10_fu_288_p1) - $signed(shl_ln10_fu_270_p2));
assign sub_ln8_1_fu_180_p2 = ($signed(32'd0) - $signed(sext_ln8_2_fu_176_p1));
assign sub_ln8_fu_130_p2 = (65'd0 - mul_ln8_fu_124_p2);
assign sub_ln9_1_fu_254_p2 = ($signed(32'd0) - $signed(sext_ln9_2_fu_250_p1));
assign sub_ln9_fu_205_p2 = (65'd0 - mul_ln9_1_fu_199_p2);
assign temptemp1 = sec;
assign temptemp2 = hh_fu_186_p3;
assign temptemp3 = mm_fu_260_p3;
assign temptemp4 = ss_fu_298_p2;
assign temptemp5 = hh_fu_186_p3;
assign temptemp6 = mm_fu_260_p3;
assign temptemp7 = ss_fu_298_p2;
assign tmp_2_fu_144_p4 = {{sub_ln8_fu_130_p2[64:44]}};
assign tmp_4_fu_154_p4 = {{mul_ln8_fu_124_p2[64:44]}};
assign tmp_5_fu_211_p3 = grp_fu_305_p3[32'd31];
assign tmp_6_fu_218_p4 = {{sub_ln9_fu_205_p2[64:38]}};
assign tmp_7_fu_228_p4 = {{mul_ln9_1_fu_199_p2[64:38]}};
assign tmp_fu_136_p1 = sec;
assign tmp_fu_136_p3 = tmp_fu_136_p1[32'd31];
assign trunc_ln10_fu_276_p1 = mm_fu_260_p3[26:0];
endmodule
module entry_point_mac_muladd_23s_13s_32s_32_4_1_DSP48_0(
 input clk,
 input rst,
 input ce,
 input [23 - 1:0] in0,
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
module entry_point_mac_muladd_23s_13s_32s_32_4_1(
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
entry_point_mac_muladd_23s_13s_32s_32_4_1_DSP48_0 entry_point_mac_muladd_23s_13s_32s_32_4_1_DSP48_0_U(
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
assign dout = $signed(din0) * $signed({1'b0, din1});
endmodule
