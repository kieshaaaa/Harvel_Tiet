module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 ap_return
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg [0:0] ap_phi_mux_retval_0_phi_fu_64_p4;
wire [0:0] icmp_ln5_fu_72_p2;
wire signed [31:0] icmp_ln5_fu_72_p0;
wire signed [31:0] shl_ln6_fu_78_p0;
wire [31:0] shl_ln6_fu_78_p2;
wire signed [31:0] sub_ln6_fu_84_p1;
wire [31:0] sub_ln6_fu_84_p2;
wire signed [31:0] mul_ln6_fu_96_p1;
wire [31:0] mul_ln6_fu_96_p2;
wire [31:0] sub_ln6_1_fu_110_p2;
wire [30:0] lshr_ln6_1_fu_116_p4;
wire [31:0] zext_ln6_fu_126_p1;
wire [30:0] lshr_ln6_2_fu_136_p4;
wire [0:0] tmp_fu_102_p3;
wire [31:0] sub_ln6_2_fu_130_p2;
wire [31:0] zext_ln6_1_fu_146_p1;
wire ap_ce_reg;
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U1(
 .din0(n),
 .din1(mul_ln6_fu_96_p1),
 .dout(mul_ln6_fu_96_p2)
);
always @ (*) begin
 if ((icmp_ln5_fu_72_p2 == 1'd0)) begin
 ap_phi_mux_retval_0_phi_fu_64_p4 = 1'd1;
 end else if ((icmp_ln5_fu_72_p2 == 1'd1)) begin
 ap_phi_mux_retval_0_phi_fu_64_p4 = 1'd0;
 end else begin
 ap_phi_mux_retval_0_phi_fu_64_p4 = 'bx;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln5_fu_72_p2 == 1'd1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln5_fu_72_p2 == 1'd1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = ap_phi_mux_retval_0_phi_fu_64_p4;
assign icmp_ln5_fu_72_p2 = (($signed(icmp_ln5_fu_72_p0) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign lshr_ln6_1_fu_116_p4 = {{sub_ln6_1_fu_110_p2[31:1]}};
assign lshr_ln6_2_fu_136_p4 = {{mul_ln6_fu_96_p2[31:1]}};
assign shl_ln6_fu_78_p2 = shl_ln6_fu_78_p0 << 32'd2;
assign sub_ln6_1_fu_110_p2 = (32'd0 - mul_ln6_fu_96_p2);
assign sub_ln6_2_fu_130_p2 = (32'd0 - zext_ln6_fu_126_p1);
assign sub_ln6_fu_84_p2 = ($signed(shl_ln6_fu_78_p2) - $signed(sub_ln6_fu_84_p1));
assign temptemp1 = n;
assign temptemp2 = ((tmp_fu_102_p3[0:0] == 1'b1) ? sub_ln6_2_fu_130_p2 : zext_ln6_1_fu_146_p1);
assign tmp_fu_102_p3 = mul_ln6_fu_96_p2[32'd31];
assign zext_ln6_1_fu_146_p1 = lshr_ln6_2_fu_136_p4;
assign zext_ln6_fu_126_p1 = lshr_ln6_1_fu_116_p4;
assign icmp_ln5_fu_72_p0 = n;
assign mul_ln6_fu_96_p1 = ($signed(sub_ln6_fu_84_p2) + $signed(32'd4294967295));
assign shl_ln6_fu_78_p0 = n;
assign sub_ln6_fu_84_p1 = n;
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
