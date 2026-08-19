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
reg [0:0] ap_phi_mux_retval_0_phi_fu_56_p4;
wire [0:0] icmp_ln8_fu_64_p2;
wire [31:0] temp2_fu_76_p2;
wire signed [31:0] icmp_ln8_fu_64_p0;
wire signed [31:0] mul_ln13_fu_70_p2;
wire ap_ce_reg;
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U1(
 .din0(n),
 .din1(n),
 .dout(mul_ln13_fu_70_p2)
);
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U2(
 .din0(mul_ln13_fu_70_p2),
 .din1(n),
 .dout(temp2_fu_76_p2)
);
always @ (*) begin
 if ((icmp_ln8_fu_64_p2 == 1'd1)) begin
 ap_phi_mux_retval_0_phi_fu_56_p4 = 1'd1;
 end else if ((icmp_ln8_fu_64_p2 == 1'd0)) begin
 ap_phi_mux_retval_0_phi_fu_56_p4 = 1'd0;
 end else begin
 ap_phi_mux_retval_0_phi_fu_56_p4 = 'bx;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln8_fu_64_p2 == 1'd0))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln8_fu_64_p2 == 1'd0))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = ap_phi_mux_retval_0_phi_fu_56_p4;
assign icmp_ln8_fu_64_p2 = (($signed(icmp_ln8_fu_64_p0) < $signed(32'd1)) ? 1'b1 : 1'b0);
assign temptemp1 = n;
assign temptemp2 = temp2_fu_76_p2;
assign icmp_ln8_fu_64_p0 = n;
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
