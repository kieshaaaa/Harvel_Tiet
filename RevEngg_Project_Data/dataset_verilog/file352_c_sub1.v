module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
endmodule
