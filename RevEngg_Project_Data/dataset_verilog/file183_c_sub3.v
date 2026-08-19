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
wire [0:0] icmp_ln9_fu_53_p2;
wire [31:0] largest_1_fu_59_p3;
wire [0:0] icmp_ln12_fu_67_p2;
wire ap_ce_reg;
always @ (*) begin
 if ((ap_start == 1'b1)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign icmp_ln12_fu_67_p2 = (($signed(c) > $signed(largest_1_fu_59_p3)) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_53_p2 = (($signed(b) > $signed(a)) ? 1'b1 : 1'b0);
assign largest_1_fu_59_p3 = ((icmp_ln9_fu_53_p2[0:0] == 1'b1) ? b : a);
assign temptemp1 = ((icmp_ln12_fu_67_p2[0:0] == 1'b1) ? c : largest_1_fu_59_p3);
endmodule
