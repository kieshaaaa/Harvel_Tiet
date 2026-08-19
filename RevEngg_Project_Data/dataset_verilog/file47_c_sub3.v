module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 gender_i,
 gender_o,
 gender_o_ap_vld,
 ap_return
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [7:0] gender_i;
output [7:0] gender_o;
output gender_o_ap_vld;
output [31:0] ap_return;
reg gender_o_ap_vld;
wire [7:0] add_ln5_fu_41_p2;
wire [0:0] icmp_ln5_fu_47_p2;
wire [7:0] add_ln5_1_fu_53_p2;
wire ap_ce_reg;
always @ (*) begin
 if ((ap_start == 1'b1)) begin
 gender_o_ap_vld = 1'b1;
 end else begin
 gender_o_ap_vld = 1'b0;
 end
end
assign add_ln5_1_fu_53_p2 = (gender_i + 8'd32);
assign add_ln5_fu_41_p2 = ($signed(gender_i) + $signed(8'd191));
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign gender_o = ((icmp_ln5_fu_47_p2[0:0] == 1'b1) ? add_ln5_1_fu_53_p2 : gender_i);
assign icmp_ln5_fu_47_p2 = ((add_ln5_fu_41_p2 < 8'd26) ? 1'b1 : 1'b0);
endmodule
