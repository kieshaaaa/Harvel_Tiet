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
wire [0:0] icmp_ln7_fu_76_p2;
wire [30:0] trunc_ln7_fu_72_p1;
wire [30:0] add_ln11_fu_82_p2;
wire [31:0] add_ln11_1_fu_92_p2;
wire [30:0] mul_ln11_fu_102_p0;
wire [31:0] mul_ln11_fu_102_p1;
wire [32:0] mul_ln11_fu_102_p2;
wire [31:0] trunc_ln_fu_108_p4;
wire [31:0] add_ln11_2_fu_124_p2;
wire [31:0] shl_ln11_fu_118_p2;
wire [32:0] mul_ln11_fu_102_p00;
wire [32:0] mul_ln11_fu_102_p10;
wire ap_ce_reg;
entry_point_mul_31ns_32ns_33_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 31 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 33 ))
mul_31ns_32ns_33_1_1_U1(
 .din0(mul_ln11_fu_102_p0),
 .din1(mul_ln11_fu_102_p1),
 .dout(mul_ln11_fu_102_p2)
);
always @ (*) begin
 if ((icmp_ln7_fu_76_p2 == 1'd1)) begin
 ap_phi_mux_retval_0_phi_fu_64_p4 = 1'd1;
 end else if ((icmp_ln7_fu_76_p2 == 1'd0)) begin
 ap_phi_mux_retval_0_phi_fu_64_p4 = 1'd0;
 end else begin
 ap_phi_mux_retval_0_phi_fu_64_p4 = 'bx;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln7_fu_76_p2 == 1'd0))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln7_fu_76_p2 == 1'd0))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
assign add_ln11_1_fu_92_p2 = ($signed(n) + $signed(32'd4294967294));
assign add_ln11_2_fu_124_p2 = ($signed(trunc_ln_fu_108_p4) + $signed(32'd4294967295));
assign add_ln11_fu_82_p2 = ($signed(trunc_ln7_fu_72_p1) + $signed(31'd2147483647));
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = ap_phi_mux_retval_0_phi_fu_64_p4;
assign icmp_ln7_fu_76_p2 = (($signed(n) < $signed(32'd1)) ? 1'b1 : 1'b0);
assign mul_ln11_fu_102_p00 = add_ln11_fu_82_p2;
assign mul_ln11_fu_102_p10 = add_ln11_1_fu_92_p2;
assign shl_ln11_fu_118_p2 = n << 32'd1;
assign temptemp1 = n;
assign temptemp2 = (add_ln11_2_fu_124_p2 + shl_ln11_fu_118_p2);
assign trunc_ln7_fu_72_p1 = n[30:0];
assign trunc_ln_fu_108_p4 = {{mul_ln11_fu_102_p2[32:1]}};
assign mul_ln11_fu_102_p0 = mul_ln11_fu_102_p00;
assign mul_ln11_fu_102_p1 = mul_ln11_fu_102_p10;
endmodule
module entry_point_mul_31ns_32ns_33_1_1(din0, din1, dout);
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
