module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 feet,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] feet;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg temptemp1_ap_vld;
wire [31:0] shl_ln7_fu_41_p2;
wire [31:0] shl_ln7_1_fu_47_p2;
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
assign shl_ln7_1_fu_47_p2 = feet << 32'd2;
assign shl_ln7_fu_41_p2 = feet << 32'd4;
assign temptemp1 = (shl_ln7_fu_41_p2 - shl_ln7_1_fu_47_p2);
endmodule
