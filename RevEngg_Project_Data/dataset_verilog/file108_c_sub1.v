module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 size_i,
 size_o,
 size_o_ap_vld,
 arr,
 arr_ap_vld,
 num,
 position,
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
input [31:0] size_i;
output [31:0] size_o;
output size_o_ap_vld;
output [31:0] arr;
output arr_ap_vld;
input [31:0] num;
input [31:0] position;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] ap_return;
reg[31:0] size_o;
reg size_o_ap_vld;
reg arr_ap_vld;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
wire [0:0] icmp_ln6_fu_92_p2;
wire [0:0] or_ln14_fu_118_p2;
wire [31:0] add_ln16_fu_104_p2;
wire [0:0] icmp_ln28_fu_124_p2;
wire [0:0] icmp_ln14_fu_98_p2;
wire [0:0] icmp_ln14_1_fu_112_p2;
wire ap_ce_reg;
always @ (*) begin
 if (((or_ln14_fu_118_p2 == 1'd0) & (ap_start == 1'b1))) begin
 arr_ap_vld = 1'b1;
 end else begin
 arr_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((or_ln14_fu_118_p2 == 1'd0) & (ap_start == 1'b1))) begin
 size_o = add_ln16_fu_104_p2;
 end else begin
 size_o = size_i;
 end
end
always @ (*) begin
 if (((or_ln14_fu_118_p2 == 1'd0) & (ap_start == 1'b1))) begin
 size_o_ap_vld = 1'b1;
 end else begin
 size_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln6_fu_92_p2 == 1'd1) & (ap_start == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((or_ln14_fu_118_p2 == 1'd1) & (ap_start == 1'b1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln28_fu_124_p2 == 1'd1) & (or_ln14_fu_118_p2 == 1'd0) & (ap_start == 1'b1))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
assign add_ln16_fu_104_p2 = (size_i + 32'd1);
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign arr = num;
assign icmp_ln14_1_fu_112_p2 = (($signed(position) > $signed(add_ln16_fu_104_p2)) ? 1'b1 : 1'b0);
assign icmp_ln14_fu_98_p2 = (($signed(position) < $signed(32'd1)) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_124_p2 = (($signed(add_ln16_fu_104_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln6_fu_92_p2 = (($signed(size_i) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign or_ln14_fu_118_p2 = (icmp_ln14_fu_98_p2 | icmp_ln14_1_fu_112_p2);
assign temptemp1 = size_i;
assign temptemp2 = add_ln16_fu_104_p2;
assign temptemp3 = num;
endmodule
