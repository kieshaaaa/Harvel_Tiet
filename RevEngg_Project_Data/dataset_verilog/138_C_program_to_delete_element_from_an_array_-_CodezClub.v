module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n,
 arr,
 position,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 temptemp4,
 temptemp4_ap_vld,
 ap_return
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n;
input [31:0] arr;
input [31:0] position;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] temptemp4;
output temptemp4_ap_vld;
output [31:0] ap_return;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
wire [0:0] icmp_ln11_fu_90_p2;
wire [0:0] or_ln19_fu_116_p2;
wire [0:0] icmp_ln34_fu_128_p2;
wire [31:0] add_ln19_fu_96_p2;
wire [0:0] icmp_ln19_fu_102_p2;
wire [0:0] tmp_fu_108_p3;
wire [31:0] sub5_fu_122_p2;
wire ap_ce_reg;
always @ (*) begin
 if ((ap_start == 1'b1)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln11_fu_90_p2 == 1'd1) & (ap_start == 1'b1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((or_ln19_fu_116_p2 == 1'd1) & (ap_start == 1'b1))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln34_fu_128_p2 == 1'd1) & (ap_start == 1'b1))) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
assign add_ln19_fu_96_p2 = (n + 32'd1);
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign icmp_ln11_fu_90_p2 = (($signed(n) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_102_p2 = ((position == add_ln19_fu_96_p2) ? 1'b1 : 1'b0);
assign icmp_ln34_fu_128_p2 = (($signed(sub5_fu_122_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign or_ln19_fu_116_p2 = (tmp_fu_108_p3 | icmp_ln19_fu_102_p2);
assign sub5_fu_122_p2 = ($signed(n) + $signed(32'd4294967295));
assign temptemp1 = n;
assign temptemp2 = n;
assign temptemp3 = n;
assign temptemp4 = arr;
assign tmp_fu_108_p3 = position[32'd31];
endmodule
