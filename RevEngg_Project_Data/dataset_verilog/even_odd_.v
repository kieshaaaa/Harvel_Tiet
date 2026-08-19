module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 num,
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
input [31:0] num;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
wire [0:0] icmp_ln8_fu_118_p2;
wire [31:0] sub_ln8_fu_70_p2;
wire [30:0] trunc_ln8_1_fu_76_p4;
wire [0:0] tmp_1_fu_62_p3;
wire [30:0] sub_ln8_1_fu_86_p2;
wire [30:0] tmp_fu_92_p4;
wire [30:0] select_ln8_fu_102_p3;
wire [31:0] shl_ln8_fu_110_p3;
wire ap_ce_reg;
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln8_fu_118_p2 == 1'd1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln8_fu_118_p2 == 1'd0))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign icmp_ln8_fu_118_p2 = ((shl_ln8_fu_110_p3 == num) ? 1'b1 : 1'b0);
assign select_ln8_fu_102_p3 = ((tmp_1_fu_62_p3[0:0] == 1'b1) ? sub_ln8_1_fu_86_p2 : tmp_fu_92_p4);
assign shl_ln8_fu_110_p3 = {{select_ln8_fu_102_p3}, {1'd0}};
assign sub_ln8_1_fu_86_p2 = (31'd0 - trunc_ln8_1_fu_76_p4);
assign sub_ln8_fu_70_p2 = (32'd0 - num);
assign temptemp1 = num;
assign temptemp2 = num;
assign tmp_1_fu_62_p3 = num[32'd31];
assign tmp_fu_92_p4 = {{num[31:1]}};
assign trunc_ln8_1_fu_76_p4 = {{sub_ln8_fu_70_p2[31:1]}};
endmodule
