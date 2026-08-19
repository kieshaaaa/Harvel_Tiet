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
input [31:0] num;
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
wire [0:0] trunc_ln5_fu_68_p1;
wire [31:0] add_ln12_fu_72_p2;
wire ap_ce_reg;
always @ (*) begin
 if (((trunc_ln5_fu_68_p1 == 1'd0) & (ap_start == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((trunc_ln5_fu_68_p1 == 1'd0) & (ap_start == 1'b1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((trunc_ln5_fu_68_p1 == 1'd1) & (ap_start == 1'b1))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((trunc_ln5_fu_68_p1 == 1'd1) & (ap_start == 1'b1))) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
assign add_ln12_fu_72_p2 = (num + 32'd2);
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign temptemp1 = num;
assign temptemp2 = add_ln12_fu_72_p2;
assign temptemp3 = num;
assign temptemp4 = add_ln12_fu_72_p2;
assign trunc_ln5_fu_68_p1 = num[0:0];
endmodule
