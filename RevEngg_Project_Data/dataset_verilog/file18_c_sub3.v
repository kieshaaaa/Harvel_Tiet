module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 x,
 y,
 z,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] x;
input [31:0] y;
input [31:0] z;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg temptemp1_ap_vld;
wire [0:0] icmp_ln6_1_fu_59_p2;
wire [0:0] icmp_ln6_2_fu_73_p2;
wire [0:0] icmp_ln6_fu_53_p2;
wire [31:0] select_ln6_1_fu_79_p3;
wire [31:0] select_ln6_fu_65_p3;
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
assign icmp_ln6_1_fu_59_p2 = (($signed(y) > $signed(z)) ? 1'b1 : 1'b0);
assign icmp_ln6_2_fu_73_p2 = (($signed(x) > $signed(z)) ? 1'b1 : 1'b0);
assign icmp_ln6_fu_53_p2 = (($signed(x) > $signed(y)) ? 1'b1 : 1'b0);
assign select_ln6_1_fu_79_p3 = ((icmp_ln6_2_fu_73_p2[0:0] == 1'b1) ? x : z);
assign select_ln6_fu_65_p3 = ((icmp_ln6_1_fu_59_p2[0:0] == 1'b1) ? y : z);
assign temptemp1 = ((icmp_ln6_fu_53_p2[0:0] == 1'b1) ? select_ln6_1_fu_79_p3 : select_ln6_fu_65_p3);
endmodule
