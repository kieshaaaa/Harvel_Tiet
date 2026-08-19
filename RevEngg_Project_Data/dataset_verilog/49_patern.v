module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 maxRows_i,
 maxRows_o,
 maxRows_o_ap_vld,
 ap_return
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] maxRows_i;
output [31:0] maxRows_o;
output maxRows_o_ap_vld;
output [31:0] ap_return;
reg[31:0] maxRows_o;
reg maxRows_o_ap_vld;
wire [31:0] add_ln13_fu_41_p2;
wire [0:0] trunc_ln13_fu_37_p1;
wire ap_ce_reg;
always @ (*) begin
 if (((ap_start == 1'b1) & (trunc_ln13_fu_37_p1 == 1'd0))) begin
 maxRows_o = add_ln13_fu_41_p2;
 end else begin
 maxRows_o = maxRows_i;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (trunc_ln13_fu_37_p1 == 1'd0))) begin
 maxRows_o_ap_vld = 1'b1;
 end else begin
 maxRows_o_ap_vld = 1'b0;
 end
end
assign add_ln13_fu_41_p2 = (maxRows_i + 32'd1);
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign trunc_ln13_fu_37_p1 = maxRows_i[0:0];
endmodule
