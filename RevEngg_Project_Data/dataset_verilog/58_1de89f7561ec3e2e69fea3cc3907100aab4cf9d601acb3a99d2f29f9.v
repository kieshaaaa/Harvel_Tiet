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
wire [0:0] icmp_ln9_fu_67_p2;
reg [0:0] icmp_ln9_reg_209;
wire [31:0] add_ln9_fu_73_p2;
reg [31:0] add_ln9_reg_214;
wire [31:0] add_ln9_1_fu_79_p2;
reg [31:0] add_ln9_1_reg_220;
reg signed [63:0] trunc_ln9_reg_225;
wire ap_CS_fsm_state2;
reg [62:0] lshr_ln9_1_reg_230;
reg [61:0] tmp_reg_235;
wire ap_CS_fsm_state3;
wire [31:0] mul_ln9_fu_91_p0;
wire [31:0] mul_ln9_fu_91_p1;
wire [63:0] mul_ln9_fu_91_p2;
wire [31:0] add_ln9_2_fu_101_p2;
wire [63:0] mul_ln9_1_fu_110_p0;
wire [31:0] mul_ln9_1_fu_110_p1;
wire [64:0] mul_ln9_1_fu_110_p2;
wire [33:0] shl_ln9_fu_156_p3;
wire [33:0] or_ln9_fu_168_p2;
wire [63:0] and_ln9_fu_149_p3;
wire [63:0] zext_ln9_4_fu_146_p1;
wire [63:0] zext_ln9_5_fu_174_p1;
wire [63:0] mul_ln9_2_fu_163_p2;
wire [63:0] add_ln9_5_fu_184_p2;
wire [63:0] add_ln9_3_fu_178_p2;
wire [63:0] add_ln9_4_fu_190_p2;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire [64:0] mul_ln9_1_fu_110_p00;
wire [64:0] mul_ln9_1_fu_110_p10;
wire [63:0] mul_ln9_fu_91_p00;
wire [63:0] mul_ln9_fu_91_p10;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
end
entry_point_mul_32ns_32ns_64_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
mul_32ns_32ns_64_1_1_U1(
 .din0(mul_ln9_fu_91_p0),
 .din1(mul_ln9_fu_91_p1),
 .dout(mul_ln9_fu_91_p2)
);
entry_point_mul_64ns_32ns_65_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 65 ))
mul_64ns_32ns_65_1_1_U2(
 .din0(mul_ln9_1_fu_110_p0),
 .din1(mul_ln9_1_fu_110_p1),
 .dout(mul_ln9_1_fu_110_p2)
);
entry_point_mul_64s_64ns_64_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
mul_64s_64ns_64_1_1_U3(
 .din0(trunc_ln9_reg_225),
 .din1(64'd6148914691236517206),
 .dout(mul_ln9_2_fu_163_p2)
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
 add_ln9_1_reg_220 <= add_ln9_1_fu_79_p2;
 add_ln9_reg_214 <= add_ln9_fu_73_p2;
 icmp_ln9_reg_209 <= icmp_ln9_fu_67_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln9_reg_209 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 lshr_ln9_1_reg_230 <= {{mul_ln9_fu_91_p2[63:1]}};
 tmp_reg_235 <= {{mul_ln9_fu_91_p2[62:1]}};
 trunc_ln9_reg_225 <= {{mul_ln9_1_fu_110_p2[64:1]}};
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
assign add_ln9_1_fu_79_p2 = ($signed(N) + $signed(32'd4294967294));
assign add_ln9_2_fu_101_p2 = ($signed(N) + $signed(32'd4294967293));
assign add_ln9_3_fu_178_p2 = (and_ln9_fu_149_p3 + zext_ln9_4_fu_146_p1);
assign add_ln9_4_fu_190_p2 = (add_ln9_5_fu_184_p2 + add_ln9_3_fu_178_p2);
assign add_ln9_5_fu_184_p2 = (zext_ln9_5_fu_174_p1 + mul_ln9_2_fu_163_p2);
assign add_ln9_fu_73_p2 = ($signed(N) + $signed(32'd4294967295));
assign and_ln9_fu_149_p3 = {{tmp_reg_235}, {2'd0}};
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign icmp_ln9_fu_67_p2 = (($signed(N) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign mul_ln9_1_fu_110_p0 = mul_ln9_1_fu_110_p00;
assign mul_ln9_1_fu_110_p00 = mul_ln9_fu_91_p2;
assign mul_ln9_1_fu_110_p1 = mul_ln9_1_fu_110_p10;
assign mul_ln9_1_fu_110_p10 = add_ln9_2_fu_101_p2;
assign mul_ln9_fu_91_p0 = mul_ln9_fu_91_p00;
assign mul_ln9_fu_91_p00 = add_ln9_reg_214;
assign mul_ln9_fu_91_p1 = mul_ln9_fu_91_p10;
assign mul_ln9_fu_91_p10 = add_ln9_1_reg_220;
assign or_ln9_fu_168_p2 = (shl_ln9_fu_156_p3 | 34'd1);
assign shl_ln9_fu_156_p3 = {{add_ln9_reg_214}, {2'd0}};
assign temptemp1 = ((icmp_ln9_reg_209[0:0] == 1'b1) ? add_ln9_4_fu_190_p2 : 64'd0);
assign zext_ln9_4_fu_146_p1 = lshr_ln9_1_reg_230;
assign zext_ln9_5_fu_174_p1 = or_ln9_fu_168_p2;
endmodule
module entry_point_mul_32ns_32ns_64_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed({1'b0, din0}) * $signed({1'b0, din1});
endmodule
module entry_point_mul_64ns_32ns_65_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed({1'b0, din0}) * $signed({1'b0, din1});
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
assign dout = $signed(din0) * $signed({1'b0, din1});
endmodule
