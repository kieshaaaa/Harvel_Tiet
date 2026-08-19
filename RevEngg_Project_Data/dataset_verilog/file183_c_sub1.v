module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 a,
 b,
 c,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] a;
input [31:0] b;
input [31:0] c;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg temptemp1_ap_vld;
wire [0:0] icmp_ln8_fu_55_p2;
wire [0:0] icmp_ln14_fu_67_p2;
wire [0:0] xor_ln14_fu_73_p2;
wire [0:0] icmp_ln9_fu_87_p2;
wire [0:0] xor_ln9_fu_93_p2;
wire [0:0] xor_ln8_fu_61_p2;
wire [31:0] select_ln9_fu_99_p3;
wire [31:0] select_ln14_fu_79_p3;
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
assign icmp_ln14_fu_67_p2 = (($signed(b) < $signed(c)) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_55_p2 = (($signed(a) < $signed(b)) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_87_p2 = (($signed(a) < $signed(c)) ? 1'b1 : 1'b0);
assign select_ln14_fu_79_p3 = ((xor_ln14_fu_73_p2[0:0] == 1'b1) ? b : c);
assign select_ln9_fu_99_p3 = ((xor_ln9_fu_93_p2[0:0] == 1'b1) ? a : c);
assign temptemp1 = ((xor_ln8_fu_61_p2[0:0] == 1'b1) ? select_ln9_fu_99_p3 : select_ln14_fu_79_p3);
assign xor_ln14_fu_73_p2 = (icmp_ln14_fu_67_p2 ^ 1'd1);
assign xor_ln8_fu_61_p2 = (icmp_ln8_fu_55_p2 ^ 1'd1);
assign xor_ln9_fu_93_p2 = (icmp_ln9_fu_87_p2 ^ 1'd1);
endmodule
