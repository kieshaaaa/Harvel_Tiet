module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n_i,
 n_o,
 n_o_ap_vld,
 arr,
 arr_ap_vld,
 pos_r,
 val_r,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n_i;
output [31:0] n_o;
output n_o_ap_vld;
output [31:0] arr;
output arr_ap_vld;
input [31:0] pos_r;
input [31:0] val_r;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg n_o_ap_vld;
reg arr_ap_vld;
reg temptemp1_ap_vld;
wire [31:0] add_ln17_fu_67_p2;
wire [0:0] icmp_ln19_fu_74_p2;
wire ap_ce_reg;
always @ (*) begin
 if ((ap_start == 1'b1)) begin
 arr_ap_vld = 1'b1;
 end else begin
 arr_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((ap_start == 1'b1)) begin
 n_o_ap_vld = 1'b1;
 end else begin
 n_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln19_fu_74_p2 == 1'd1) & (ap_start == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
assign add_ln17_fu_67_p2 = (n_i + 32'd1);
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign arr = val_r;
assign icmp_ln19_fu_74_p2 = (($signed(add_ln17_fu_67_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign n_o = add_ln17_fu_67_p2;
assign temptemp1 = val_r;
endmodule
