module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 num,
 r,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 ap_return,
 ap_rst
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] num;
input [31:0] r;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] ap_return;
input ap_rst;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
wire [0:0] icmp_ln9_fu_80_p2;
wire [31:0] zext_ln13_fu_106_p1;
wire [31:0] mul_ln13_fu_70_p2;
wire [30:0] mul_ln13_fu_70_p1;
wire [31:0] add_ln9_fu_86_p2;
wire [0:0] icmp_ln9_1_fu_92_p2;
wire [30:0] trunc_ln9_fu_76_p1;
wire [30:0] select_ln9_fu_98_p3;
wire ap_ce_reg;
entry_point_mul_32s_31ns_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 31 ),
 .dout_WIDTH( 32 ))
mul_32s_31ns_32_1_1_U1(
 .din0(num),
 .din1(mul_ln13_fu_70_p1),
 .dout(mul_ln13_fu_70_p2)
);
always @ (*) begin
 if (((icmp_ln9_fu_80_p2 == 1'd1) & (ap_start == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln9_fu_80_p2 == 1'd1) & (ap_start == 1'b1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln9_fu_80_p2 == 1'd1) & (ap_start == 1'b1))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
assign add_ln9_fu_86_p2 = (r + 32'd1);
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign icmp_ln9_1_fu_92_p2 = (($signed(add_ln9_fu_86_p2) > $signed(32'd2)) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_80_p2 = (($signed(r) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign select_ln9_fu_98_p3 = ((icmp_ln9_1_fu_92_p2[0:0] == 1'b1) ? trunc_ln9_fu_76_p1 : 31'd1);
assign temptemp1 = num;
assign temptemp2 = zext_ln13_fu_106_p1;
assign temptemp3 = mul_ln13_fu_70_p2;
assign trunc_ln9_fu_76_p1 = r[30:0];
assign zext_ln13_fu_106_p1 = select_ln9_fu_98_p3;
assign mul_ln13_fu_70_p1 = zext_ln13_fu_106_p1;
endmodule
 module entry_point_mul_32s_31ns_32_1_1(din0, din1, dout);
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
