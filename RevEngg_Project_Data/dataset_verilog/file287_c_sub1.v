module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 rows,
 ap_return
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] rows;
output [31:0] ap_return;
wire [0:0] icmp_ln8_fu_28_p2;
wire ap_ce_reg;
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = ((icmp_ln8_fu_28_p2[0:0] == 1'b1) ? 32'd4294967295 : 32'd0);
assign icmp_ln8_fu_28_p2 = (($signed(rows) < $signed(32'd1)) ? 1'b1 : 1'b0);
endmodule
