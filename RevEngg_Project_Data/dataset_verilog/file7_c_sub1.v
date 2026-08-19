module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 a,
 b,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 ap_return
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] a;
input [31:0] b;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] ap_return;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
wire [0:0] icmp_ln7_fu_65_p2;
wire [31:0] sub_ln7_fu_71_p2;
wire [31:0] sub_ln7_1_fu_77_p2;
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
always @ (*) begin
 if ((ap_start == 1'b1)) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign icmp_ln7_fu_65_p2 = (($signed(a) > $signed(b)) ? 1'b1 : 1'b0);
assign sub_ln7_1_fu_77_p2 = (b - a);
assign sub_ln7_fu_71_p2 = (a - b);
assign temptemp1 = a;
assign temptemp2 = b;
assign temptemp3 = ((icmp_ln7_fu_65_p2[0:0] == 1'b1) ? sub_ln7_fu_71_p2 : sub_ln7_1_fu_77_p2);
endmodule
