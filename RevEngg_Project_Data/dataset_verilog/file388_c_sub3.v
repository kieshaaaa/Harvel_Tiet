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
 temptemp2,
 temptemp2_ap_vld,
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
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
wire [0:0] icmp_ln9_fu_62_p2;
wire [0:0] icmp_ln10_fu_76_p2;
wire [31:0] max_1_fu_68_p3;
wire [0:0] icmp_ln12_fu_90_p2;
wire [31:0] min_2_fu_82_p3;
wire [0:0] icmp_ln13_fu_105_p2;
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
assign icmp_ln10_fu_76_p2 = (($signed(y) < $signed(x)) ? 1'b1 : 1'b0);
assign icmp_ln12_fu_90_p2 = (($signed(z) > $signed(max_1_fu_68_p3)) ? 1'b1 : 1'b0);
assign icmp_ln13_fu_105_p2 = (($signed(z) < $signed(min_2_fu_82_p3)) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_62_p2 = (($signed(y) > $signed(x)) ? 1'b1 : 1'b0);
assign max_1_fu_68_p3 = ((icmp_ln9_fu_62_p2[0:0] == 1'b1) ? y : x);
assign min_2_fu_82_p3 = ((icmp_ln10_fu_76_p2[0:0] == 1'b1) ? y : x);
assign temptemp1 = ((icmp_ln12_fu_90_p2[0:0] == 1'b1) ? z : max_1_fu_68_p3);
assign temptemp2 = ((icmp_ln13_fu_105_p2[0:0] == 1'b1) ? z : min_2_fu_82_p3);
endmodule
