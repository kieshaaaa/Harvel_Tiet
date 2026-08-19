module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 N,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 3'd1;
parameter ap_ST_fsm_state2 = 3'd2;
parameter ap_ST_fsm_state3 = 3'd4;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] N;
output [63:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [0:0] icmp_ln9_fu_82_p2;
reg [0:0] icmp_ln9_reg_218;
wire [31:0] zext_ln9_fu_112_p1;
reg [31:0] zext_ln9_reg_223;
wire [30:0] add_ln9_1_fu_116_p2;
reg [30:0] add_ln9_1_reg_228;
wire [31:0] add_ln9_2_fu_122_p2;
reg [31:0] add_ln9_2_reg_234;
reg signed [63:0] trunc_ln9_reg_239;
wire ap_CS_fsm_state2;
reg [61:0] lshr_ln9_1_reg_244;
wire ap_CS_fsm_state3;
wire [30:0] mul_ln9_fu_69_p0;
wire [31:0] mul_ln9_fu_69_p1;
wire [62:0] mul_ln9_1_fu_73_p0;
wire [31:0] mul_ln9_1_fu_73_p1;
wire [31:0] add_ln9_fu_88_p2;
wire [0:0] icmp_ln9_1_fu_98_p2;
wire [30:0] trunc_ln9_1_fu_94_p1;
wire [30:0] select_ln9_fu_104_p3;
wire [62:0] mul_ln9_fu_69_p2;
wire [31:0] add_ln9_3_fu_141_p2;
wire [64:0] mul_ln9_1_fu_73_p2;
wire [63:0] p_shl_fu_174_p3;
wire [63:0] zext_ln9_5_fu_171_p1;
wire [32:0] or_ln9_fu_187_p3;
wire [63:0] zext_ln9_6_fu_194_p1;
wire [63:0] mul_ln9_2_fu_77_p2;
wire [63:0] add_ln9_4_fu_198_p2;
wire [63:0] add_ln9_6_fu_181_p2;
wire [63:0] add_ln9_5_fu_204_p2;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire [64:0] mul_ln9_1_fu_73_p00;
wire [64:0] mul_ln9_1_fu_73_p10;
wire [62:0] mul_ln9_fu_69_p00;
wire [62:0] mul_ln9_fu_69_p10;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
end
entry_point_mul_31ns_32ns_63_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 31 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 63 ))
mul_31ns_32ns_63_1_1_U1(
 .din0(mul_ln9_fu_69_p0),
 .din1(mul_ln9_fu_69_p1),
 .dout(mul_ln9_fu_69_p2)
);
entry_point_mul_63ns_32ns_65_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 63 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 65 ))
mul_63ns_32ns_65_1_1_U2(
 .din0(mul_ln9_1_fu_73_p0),
 .din1(mul_ln9_1_fu_73_p1),
 .dout(mul_ln9_1_fu_73_p2)
);
entry_point_mul_64s_64ns_64_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
mul_64s_64ns_64_1_1_U3(
 .din0(trunc_ln9_reg_239),
 .din1(64'd6148914691236517206),
 .dout(mul_ln9_2_fu_77_p2)
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
 add_ln9_1_reg_228 <= add_ln9_1_fu_116_p2;
 add_ln9_2_reg_234 <= add_ln9_2_fu_122_p2;
 icmp_ln9_reg_218 <= icmp_ln9_fu_82_p2;
 zext_ln9_reg_223[30 : 0] <= zext_ln9_fu_112_p1[30 : 0];
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 lshr_ln9_1_reg_244 <= {{mul_ln9_fu_69_p2[62:1]}};
 trunc_ln9_reg_239 <= {{mul_ln9_1_fu_73_p2[64:1]}};
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
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
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
 if ((1'b1 == ap_CS_fsm_state3)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln9_1_fu_116_p2 = ($signed(select_ln9_fu_104_p3) + $signed(31'd2147483646));
assign add_ln9_2_fu_122_p2 = ($signed(zext_ln9_fu_112_p1) + $signed(32'd4294967293));
assign add_ln9_3_fu_141_p2 = ($signed(zext_ln9_reg_223) + $signed(32'd4294967292));
assign add_ln9_4_fu_198_p2 = (zext_ln9_6_fu_194_p1 + mul_ln9_2_fu_77_p2);
assign add_ln9_5_fu_204_p2 = (add_ln9_4_fu_198_p2 + add_ln9_6_fu_181_p2);
assign add_ln9_6_fu_181_p2 = (p_shl_fu_174_p3 + zext_ln9_5_fu_171_p1);
assign add_ln9_fu_88_p2 = (N + 32'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign icmp_ln9_1_fu_98_p2 = (($signed(add_ln9_fu_88_p2) > $signed(32'd2)) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_82_p2 = (($signed(N) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign mul_ln9_1_fu_73_p0 = mul_ln9_1_fu_73_p00;
assign mul_ln9_1_fu_73_p00 = mul_ln9_fu_69_p2;
assign mul_ln9_1_fu_73_p1 = mul_ln9_1_fu_73_p10;
assign mul_ln9_1_fu_73_p10 = add_ln9_3_fu_141_p2;
assign mul_ln9_fu_69_p0 = mul_ln9_fu_69_p00;
assign mul_ln9_fu_69_p00 = add_ln9_1_reg_228;
assign mul_ln9_fu_69_p1 = mul_ln9_fu_69_p10;
assign mul_ln9_fu_69_p10 = add_ln9_2_reg_234;
assign or_ln9_fu_187_p3 = {{add_ln9_1_reg_228}, {2'd1}};
assign p_shl_fu_174_p3 = {{lshr_ln9_1_reg_244}, {2'd0}};
assign select_ln9_fu_104_p3 = ((icmp_ln9_1_fu_98_p2[0:0] == 1'b1) ? trunc_ln9_1_fu_94_p1 : 31'd2);
assign temptemp1 = ((icmp_ln9_reg_218[0:0] == 1'b1) ? add_ln9_5_fu_204_p2 : 64'd0);
assign trunc_ln9_1_fu_94_p1 = add_ln9_fu_88_p2[30:0];
assign zext_ln9_5_fu_171_p1 = lshr_ln9_1_reg_244;
assign zext_ln9_6_fu_194_p1 = or_ln9_fu_187_p3;
assign zext_ln9_fu_112_p1 = select_ln9_fu_104_p3;
always @ (posedge ap_clk) begin
 zext_ln9_reg_223[31] <= 1'b0;
end
endmodule
 module entry_point_mul_31ns_32ns_63_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed({1'b0, din0}) * $signed({1'b0, din1});
assign dout = tmp_product;
endmodule
 module entry_point_mul_63ns_32ns_65_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed({1'b0, din0}) * $signed({1'b0, din1});
assign dout = tmp_product;
endmodule
 module entry_point_mul_64s_64ns_64_1_1(din0, din1, dout);
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
