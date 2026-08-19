module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n1,
 n2,
 n3,
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
input [31:0] n1;
input [31:0] n2;
input [31:0] n3;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
wire [0:0] icmp_ln9_fu_64_p2;
wire [0:0] icmp_ln16_fu_76_p2;
wire [0:0] xor_ln16_fu_82_p2;
wire [0:0] icmp_ln10_fu_96_p2;
wire [0:0] xor_ln10_fu_102_p2;
wire [0:0] xor_ln9_fu_70_p2;
wire [31:0] select_ln10_fu_108_p3;
wire [31:0] select_ln16_fu_88_p3;
wire [0:0] icmp_ln22_fu_125_p2;
wire [0:0] icmp_ln29_fu_137_p2;
wire [0:0] xor_ln29_fu_143_p2;
wire [0:0] icmp_ln23_fu_157_p2;
wire [0:0] xor_ln23_fu_163_p2;
wire [0:0] xor_ln22_fu_131_p2;
wire [31:0] select_ln23_fu_169_p3;
wire [31:0] select_ln29_fu_149_p3;
wire ap_ce_reg;
always @ (*) begin
 if ((ap_start == 1'b1)) begin
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
assign icmp_ln10_fu_96_p2 = (($signed(n1) < $signed(n3)) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_76_p2 = (($signed(n2) < $signed(n3)) ? 1'b1 : 1'b0);
assign icmp_ln22_fu_125_p2 = (($signed(n2) < $signed(n1)) ? 1'b1 : 1'b0);
assign icmp_ln23_fu_157_p2 = (($signed(n3) < $signed(n1)) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_137_p2 = (($signed(n3) < $signed(n2)) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_64_p2 = (($signed(n1) < $signed(n2)) ? 1'b1 : 1'b0);
assign select_ln10_fu_108_p3 = ((xor_ln10_fu_102_p2[0:0] == 1'b1) ? n1 : n3);
assign select_ln16_fu_88_p3 = ((xor_ln16_fu_82_p2[0:0] == 1'b1) ? n2 : n3);
assign select_ln23_fu_169_p3 = ((xor_ln23_fu_163_p2[0:0] == 1'b1) ? n1 : n3);
assign select_ln29_fu_149_p3 = ((xor_ln29_fu_143_p2[0:0] == 1'b1) ? n2 : n3);
assign temptemp1 = ((xor_ln9_fu_70_p2[0:0] == 1'b1) ? select_ln10_fu_108_p3 : select_ln16_fu_88_p3);
assign temptemp2 = ((xor_ln22_fu_131_p2[0:0] == 1'b1) ? select_ln23_fu_169_p3 : select_ln29_fu_149_p3);
assign xor_ln10_fu_102_p2 = (icmp_ln10_fu_96_p2 ^ 1'd1);
assign xor_ln16_fu_82_p2 = (icmp_ln16_fu_76_p2 ^ 1'd1);
assign xor_ln22_fu_131_p2 = (icmp_ln22_fu_125_p2 ^ 1'd1);
assign xor_ln23_fu_163_p2 = (icmp_ln23_fu_157_p2 ^ 1'd1);
assign xor_ln29_fu_143_p2 = (icmp_ln29_fu_137_p2 ^ 1'd1);
assign xor_ln9_fu_70_p2 = (icmp_ln9_fu_64_p2 ^ 1'd1);
endmodule
