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
 temptemp3,
 temptemp3_ap_vld,
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
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] ap_return;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
wire [0:0] icmp_ln9_fu_60_p2;
wire ap_ce_reg;
always @ (*) begin
 if (((icmp_ln9_fu_60_p2 == 1'd1) & (ap_start == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln9_fu_60_p2 == 1'd1) & (ap_start == 1'b1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln9_fu_60_p2 == 1'd1) & (ap_start == 1'b1))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign icmp_ln9_fu_60_p2 = (($signed(n) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign temptemp1 = n;
assign temptemp2 = 32'd1;
assign temptemp3 = 32'd1;
endmodule
