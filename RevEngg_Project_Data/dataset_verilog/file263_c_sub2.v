module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n,
 arr,
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
input [31:0] arr;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg [31:0] ap_phi_mux_sum_0_lcssa_phi_fu_58_p4;
wire [0:0] icmp_ln7_fu_66_p2;
wire [31:0] sum_fu_72_p2;
wire signed [31:0] icmp_ln7_fu_66_p0;
wire ap_ce_reg;
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U1(
 .din0(arr),
 .din1(n),
 .dout(sum_fu_72_p2)
);
always @ (*) begin
 if ((icmp_ln7_fu_66_p2 == 1'd1)) begin
 ap_phi_mux_sum_0_lcssa_phi_fu_58_p4 = sum_fu_72_p2;
 end else if ((icmp_ln7_fu_66_p2 == 1'd0)) begin
 ap_phi_mux_sum_0_lcssa_phi_fu_58_p4 = 32'd0;
 end else begin
 ap_phi_mux_sum_0_lcssa_phi_fu_58_p4 = 'bx;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln7_fu_66_p2 == 1'd1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((ap_start == 1'b1)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign icmp_ln7_fu_66_p2 = (($signed(icmp_ln7_fu_66_p0) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign temptemp1 = n;
assign temptemp2 = ap_phi_mux_sum_0_lcssa_phi_fu_58_p4;
assign icmp_ln7_fu_66_p0 = n;
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
