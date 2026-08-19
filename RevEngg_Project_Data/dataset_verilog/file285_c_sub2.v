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
wire [0:0] icmp_ln8_1_fu_67_p2;
wire [0:0] xor_ln8_fu_61_p2;
wire [0:0] xor_ln8_1_fu_73_p2;
wire [0:0] icmp_ln8_2_fu_85_p2;
wire [0:0] icmp_ln8_3_fu_91_p2;
wire [0:0] icmp_ln10_fu_103_p2;
wire [0:0] icmp_ln10_1_fu_115_p2;
wire [0:0] xor_ln10_fu_109_p2;
wire [0:0] xor_ln10_1_fu_121_p2;
wire [0:0] and_ln10_fu_127_p2;
wire [0:0] and_ln8_fu_79_p2;
wire [0:0] and_ln8_1_fu_97_p2;
wire [0:0] or_ln8_fu_141_p2;
wire [31:0] select_ln10_fu_133_p3;
wire ap_ce_reg;
always @ (*) begin
 if ((ap_start == 1'b1)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
assign and_ln10_fu_127_p2 = (xor_ln10_fu_109_p2 & xor_ln10_1_fu_121_p2);
assign and_ln8_1_fu_97_p2 = (icmp_ln8_3_fu_91_p2 & icmp_ln8_2_fu_85_p2);
assign and_ln8_fu_79_p2 = (xor_ln8_fu_61_p2 & xor_ln8_1_fu_73_p2);
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign icmp_ln10_1_fu_115_p2 = (($signed(b) < $signed(c)) ? 1'b1 : 1'b0);
assign icmp_ln10_fu_103_p2 = (($signed(b) < $signed(a)) ? 1'b1 : 1'b0);
assign icmp_ln8_1_fu_67_p2 = (($signed(a) < $signed(c)) ? 1'b1 : 1'b0);
assign icmp_ln8_2_fu_85_p2 = ((a == b) ? 1'b1 : 1'b0);
assign icmp_ln8_3_fu_91_p2 = ((a == c) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_55_p2 = (($signed(a) < $signed(b)) ? 1'b1 : 1'b0);
assign or_ln8_fu_141_p2 = (and_ln8_fu_79_p2 | and_ln8_1_fu_97_p2);
assign select_ln10_fu_133_p3 = ((and_ln10_fu_127_p2[0:0] == 1'b1) ? b : c);
assign temptemp1 = ((or_ln8_fu_141_p2[0:0] == 1'b1) ? a : select_ln10_fu_133_p3);
assign xor_ln10_1_fu_121_p2 = (icmp_ln10_1_fu_115_p2 ^ 1'd1);
assign xor_ln10_fu_109_p2 = (icmp_ln10_fu_103_p2 ^ 1'd1);
assign xor_ln8_1_fu_73_p2 = (icmp_ln8_1_fu_67_p2 ^ 1'd1);
assign xor_ln8_fu_61_p2 = (icmp_ln8_fu_55_p2 ^ 1'd1);
endmodule
