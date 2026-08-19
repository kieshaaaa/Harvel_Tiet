module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 num_i,
 num_o,
 num_o_ap_vld,
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
input [31:0] num_i;
output [31:0] num_o;
output num_o_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] num_o;
reg num_o_ap_vld;
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [31:0] empty_fu_50;
wire signed [31:0] sext_ln12_1_fu_161_p1;
wire ap_CS_fsm_state2;
wire [0:0] icmp_ln9_fu_80_p2;
wire [33:0] mul_ln12_fu_67_p1;
wire signed [31:0] icmp_ln9_fu_80_p0;
wire signed [31:0] sext_ln12_fu_86_p0;
wire [64:0] mul_ln12_fu_67_p2;
wire signed [31:0] tmp_fu_97_p1;
wire [64:0] sub_ln12_fu_91_p2;
wire [0:0] tmp_fu_97_p3;
wire [27:0] tmp_cast_fu_105_p4;
wire [27:0] tmp_1_cast_fu_125_p4;
wire [27:0] select_ln12_fu_135_p3;
wire [28:0] zext_ln12_fu_143_p1;
wire [28:0] sub_ln12_1_fu_147_p2;
wire [28:0] tmp_1_cast2_fu_115_p4;
wire [28:0] select_ln12_1_fu_153_p3;
wire ap_CS_fsm_state3;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 empty_fu_50 = 32'd0;
end
entry_point_mul_32s_34ns_65_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 34 ),
 .dout_WIDTH( 65 ))
mul_32s_34ns_65_1_1_U1(
 .din0(sext_ln12_fu_86_p0),
 .din1(mul_ln12_fu_67_p1),
 .dout(mul_ln12_fu_67_p2)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 empty_fu_50 <= num_i;
 end else if (((icmp_ln9_fu_80_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 empty_fu_50 <= sext_ln12_1_fu_161_p1;
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
 if (((icmp_ln9_fu_80_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 num_o = sext_ln12_1_fu_161_p1;
 end else begin
 num_o = num_i;
 end
end
always @ (*) begin
 if (((icmp_ln9_fu_80_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 num_o_ap_vld = 1'b1;
 end else begin
 num_o_ap_vld = 1'b0;
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
 if (((icmp_ln9_fu_80_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign icmp_ln9_fu_80_p0 = empty_fu_50;
assign icmp_ln9_fu_80_p2 = ((icmp_ln9_fu_80_p0 == 32'd0) ? 1'b1 : 1'b0);
assign mul_ln12_fu_67_p1 = 65'd6871947674;
assign select_ln12_1_fu_153_p3 = ((tmp_fu_97_p3[0:0] == 1'b1) ? sub_ln12_1_fu_147_p2 : tmp_1_cast2_fu_115_p4);
assign select_ln12_fu_135_p3 = ((tmp_fu_97_p3[0:0] == 1'b1) ? tmp_cast_fu_105_p4 : tmp_1_cast_fu_125_p4);
assign sext_ln12_1_fu_161_p1 = $signed(select_ln12_1_fu_153_p3);
assign sext_ln12_fu_86_p0 = empty_fu_50;
assign sub_ln12_1_fu_147_p2 = (29'd0 - zext_ln12_fu_143_p1);
assign sub_ln12_fu_91_p2 = (65'd0 - mul_ln12_fu_67_p2);
assign tmp_1_cast2_fu_115_p4 = {{mul_ln12_fu_67_p2[64:36]}};
assign tmp_1_cast_fu_125_p4 = {{mul_ln12_fu_67_p2[63:36]}};
assign tmp_cast_fu_105_p4 = {{sub_ln12_fu_91_p2[63:36]}};
assign tmp_fu_97_p1 = empty_fu_50;
assign tmp_fu_97_p3 = tmp_fu_97_p1[32'd31];
assign zext_ln12_fu_143_p1 = select_ln12_fu_135_p3;
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
