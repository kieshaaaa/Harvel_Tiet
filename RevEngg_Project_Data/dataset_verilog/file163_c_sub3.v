module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n_i,
 n_o,
 n_o_ap_vld,
 arr,
 position,
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
input [31:0] arr;
input [31:0] position;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg[31:0] n_o;
reg n_o_ap_vld;
reg temptemp1_ap_vld;
reg [0:0] ap_phi_mux_retval_0_phi_fu_68_p4;
wire [0:0] and_ln9_fu_94_p2;
wire [31:0] add_ln13_fu_100_p2;
wire [0:0] icmp_ln18_fu_107_p2;
wire [0:0] icmp_ln9_1_fu_82_p2;
wire [0:0] icmp_ln9_fu_76_p2;
wire [0:0] xor_ln9_fu_88_p2;
wire ap_ce_reg;
always @ (*) begin
 if ((1'd0 == and_ln9_fu_94_p2)) begin
 ap_phi_mux_retval_0_phi_fu_68_p4 = 1'd1;
 end else if ((1'd1 == and_ln9_fu_94_p2)) begin
 ap_phi_mux_retval_0_phi_fu_68_p4 = 1'd0;
 end else begin
 ap_phi_mux_retval_0_phi_fu_68_p4 = 'bx;
 end
end
always @ (*) begin
 if (((1'd1 == and_ln9_fu_94_p2) & (ap_start == 1'b1))) begin
 n_o = add_ln13_fu_100_p2;
 end else begin
 n_o = n_i;
 end
end
always @ (*) begin
 if (((1'd1 == and_ln9_fu_94_p2) & (ap_start == 1'b1))) begin
 n_o_ap_vld = 1'b1;
 end else begin
 n_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln18_fu_107_p2 == 1'd1) & (1'd1 == and_ln9_fu_94_p2) & (ap_start == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
assign add_ln13_fu_100_p2 = ($signed(n_i) + $signed(32'd4294967295));
assign and_ln9_fu_94_p2 = (xor_ln9_fu_88_p2 & icmp_ln9_fu_76_p2);
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = ap_phi_mux_retval_0_phi_fu_68_p4;
assign icmp_ln18_fu_107_p2 = (($signed(add_ln13_fu_100_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln9_1_fu_82_p2 = (($signed(n_i) < $signed(position)) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_76_p2 = (($signed(position) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign temptemp1 = arr;
assign xor_ln9_fu_88_p2 = (icmp_ln9_1_fu_82_p2 ^ 1'd1);
endmodule
