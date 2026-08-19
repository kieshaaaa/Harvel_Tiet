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
 temptemp3,
 temptemp3_ap_vld,
 temptemp4,
 temptemp4_ap_vld,
 temptemp5,
 temptemp5_ap_vld,
 temptemp6,
 temptemp6_ap_vld,
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
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] temptemp4;
output temptemp4_ap_vld;
output [31:0] temptemp5;
output temptemp5_ap_vld;
output [31:0] temptemp6;
output temptemp6_ap_vld;
output [31:0] ap_return;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
reg temptemp5_ap_vld;
reg temptemp6_ap_vld;
wire [0:0] and_ln9_fu_116_p2;
wire [0:0] icmp_ln14_fu_122_p2;
wire [0:0] and_ln25_fu_140_p2;
wire [0:0] icmp_ln30_fu_146_p2;
wire [0:0] icmp_ln9_fu_104_p2;
wire [0:0] icmp_ln9_1_fu_110_p2;
wire [0:0] icmp_ln25_fu_128_p2;
wire [0:0] icmp_ln25_1_fu_134_p2;
wire ap_ce_reg;
always @ (*) begin
 if (((1'd1 == and_ln9_fu_116_p2) & (ap_start == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln14_fu_122_p2 == 1'd1) & (1'd0 == and_ln9_fu_116_p2) & (ap_start == 1'b1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln14_fu_122_p2 == 1'd0) & (1'd0 == and_ln9_fu_116_p2) & (ap_start == 1'b1))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'd1 == and_ln25_fu_140_p2) & (ap_start == 1'b1))) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln30_fu_146_p2 == 1'd1) & (1'd0 == and_ln25_fu_140_p2) & (ap_start == 1'b1))) begin
 temptemp5_ap_vld = 1'b1;
 end else begin
 temptemp5_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln30_fu_146_p2 == 1'd0) & (1'd0 == and_ln25_fu_140_p2) & (ap_start == 1'b1))) begin
 temptemp6_ap_vld = 1'b1;
 end else begin
 temptemp6_ap_vld = 1'b0;
 end
end
assign and_ln25_fu_140_p2 = (icmp_ln25_fu_128_p2 & icmp_ln25_1_fu_134_p2);
assign and_ln9_fu_116_p2 = (icmp_ln9_fu_104_p2 & icmp_ln9_1_fu_110_p2);
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign icmp_ln14_fu_122_p2 = (($signed(n2) > $signed(n3)) ? 1'b1 : 1'b0);
assign icmp_ln25_1_fu_134_p2 = (($signed(n1) < $signed(n3)) ? 1'b1 : 1'b0);
assign icmp_ln25_fu_128_p2 = (($signed(n1) < $signed(n2)) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_146_p2 = (($signed(n2) < $signed(n3)) ? 1'b1 : 1'b0);
assign icmp_ln9_1_fu_110_p2 = (($signed(n1) > $signed(n3)) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_104_p2 = (($signed(n1) > $signed(n2)) ? 1'b1 : 1'b0);
assign temptemp1 = n1;
assign temptemp2 = n2;
assign temptemp3 = n3;
assign temptemp4 = n1;
assign temptemp5 = n2;
assign temptemp6 = n3;
endmodule
