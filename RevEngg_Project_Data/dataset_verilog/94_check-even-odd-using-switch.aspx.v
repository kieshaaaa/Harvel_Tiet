module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 number,
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
input [31:0] number;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
wire [1:0] select_ln6_fu_86_p3;
wire [0:0] trunc_ln6_fu_60_p1;
wire [1:0] p_and_t_fu_72_p3;
wire [0:0] tmp_fu_64_p3;
wire [1:0] sub_ln6_fu_80_p2;
wire ap_ce_reg;
always @ (*) begin
 if (((ap_start == 1'b1) & (select_ln6_fu_86_p3 == 2'd0))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (select_ln6_fu_86_p3 == 2'd1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign p_and_t_fu_72_p3 = {{1'd0}, {trunc_ln6_fu_60_p1}};
assign select_ln6_fu_86_p3 = ((tmp_fu_64_p3[0:0] == 1'b1) ? sub_ln6_fu_80_p2 : p_and_t_fu_72_p3);
assign sub_ln6_fu_80_p2 = (2'd0 - p_and_t_fu_72_p3);
assign temptemp1 = number;
assign temptemp2 = number;
assign tmp_fu_64_p3 = number[32'd31];
assign trunc_ln6_fu_60_p1 = number[0:0];
endmodule
