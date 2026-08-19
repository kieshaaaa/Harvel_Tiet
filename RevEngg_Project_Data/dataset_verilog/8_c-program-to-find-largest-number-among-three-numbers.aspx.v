module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 a,
 b,
 c,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] a;
input [31:0] b;
input [31:0] c;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg temptemp1_ap_vld;
wire [0:0] icmp_ln7_fu_53_p2;
wire [0:0] icmp_ln7_1_fu_59_p2;
wire [0:0] icmp_ln9_fu_71_p2;
wire [0:0] icmp_ln9_1_fu_77_p2;
wire [0:0] and_ln9_fu_83_p2;
wire [0:0] and_ln7_fu_65_p2;
wire [31:0] select_ln9_fu_89_p3;
wire ap_ce_reg;
always @ (*) begin
 if ((ap_start == 1'b1)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
assign and_ln7_fu_65_p2 = (icmp_ln7_fu_53_p2 & icmp_ln7_1_fu_59_p2);
assign and_ln9_fu_83_p2 = (icmp_ln9_fu_71_p2 & icmp_ln9_1_fu_77_p2);
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign icmp_ln7_1_fu_59_p2 = (($signed(a) > $signed(c)) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_53_p2 = (($signed(a) > $signed(b)) ? 1'b1 : 1'b0);
assign icmp_ln9_1_fu_77_p2 = (($signed(b) > $signed(c)) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_71_p2 = (($signed(b) > $signed(a)) ? 1'b1 : 1'b0);
assign select_ln9_fu_89_p3 = ((and_ln9_fu_83_p2[0:0] == 1'b1) ? b : c);
assign temptemp1 = ((and_ln7_fu_65_p2[0:0] == 1'b1) ? a : select_ln9_fu_89_p3);
endmodule
