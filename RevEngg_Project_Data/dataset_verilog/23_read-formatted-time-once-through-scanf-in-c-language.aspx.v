module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 temptemp1,
 temptemp2,
 temptemp3,
 ap_return
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] temptemp1;
input [31:0] temptemp2;
input [31:0] temptemp3;
output [31:0] ap_return;
wire ap_ce_reg;
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
endmodule
