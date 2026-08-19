module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 a,
 b,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 ap_return
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] a;
input [31:0] b;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] ap_return;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
wire [30:0] trunc_ln8_1_fu_79_p1;
wire [30:0] trunc_ln8_fu_75_p1;
wire [30:0] and_ln9_fu_83_p2;
wire [31:0] shl_ln9_fu_89_p3;
wire [31:0] xor_fu_69_p2;
wire [31:0] diff_fu_97_p2;
wire [0:0] icmp_ln10_fu_103_p2;
wire [31:0] sub_ln11_fu_109_p2;
wire ap_ce_reg;
always @ (*) begin
 if ((ap_start == 1'b1)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((ap_start == 1'b1)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((ap_start == 1'b1)) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
assign and_ln9_fu_83_p2 = (trunc_ln8_fu_75_p1 & trunc_ln8_1_fu_79_p1);
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign diff_fu_97_p2 = (shl_ln9_fu_89_p3 + xor_fu_69_p2);
assign icmp_ln10_fu_103_p2 = (($signed(a) < $signed(b)) ? 1'b1 : 1'b0);
assign shl_ln9_fu_89_p3 = {{and_ln9_fu_83_p2}, {1'd0}};
assign sub_ln11_fu_109_p2 = (32'd0 - diff_fu_97_p2);
assign temptemp1 = a;
assign temptemp2 = b;
assign temptemp3 = ((icmp_ln10_fu_103_p2[0:0] == 1'b1) ? sub_ln11_fu_109_p2 : diff_fu_97_p2);
assign trunc_ln8_1_fu_79_p1 = b[30:0];
assign trunc_ln8_fu_75_p1 = a[30:0];
assign xor_fu_69_p2 = (b ^ a);
endmodule
