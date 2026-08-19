module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 r,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] r;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg temptemp1_ap_vld;
wire [0:0] icmp_ln9_fu_51_p2;
wire [30:0] trunc_ln9_1_fu_47_p1;
wire [30:0] add_ln9_fu_57_p2;
wire [31:0] add_ln9_1_fu_67_p2;
wire [30:0] mul_ln9_fu_77_p0;
wire [31:0] mul_ln9_fu_77_p1;
wire [32:0] mul_ln9_fu_77_p2;
wire [31:0] trunc_ln9_fu_83_p4;
wire [31:0] add_ln9_2_fu_99_p2;
wire [31:0] shl_ln9_fu_93_p2;
wire [32:0] mul_ln9_fu_77_p00;
wire [32:0] mul_ln9_fu_77_p10;
wire ap_ce_reg;
entry_point_mul_31ns_32ns_33_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 31 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 33 ))
mul_31ns_32ns_33_1_1_U1(
 .din0(mul_ln9_fu_77_p0),
 .din1(mul_ln9_fu_77_p1),
 .dout(mul_ln9_fu_77_p2)
);
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln9_fu_51_p2 == 1'd1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
assign add_ln9_1_fu_67_p2 = ($signed(r) + $signed(32'd4294967294));
assign add_ln9_2_fu_99_p2 = ($signed(trunc_ln9_fu_83_p4) + $signed(32'd4294967295));
assign add_ln9_fu_57_p2 = ($signed(trunc_ln9_1_fu_47_p1) + $signed(31'd2147483647));
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign icmp_ln9_fu_51_p2 = (($signed(r) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign mul_ln9_fu_77_p00 = add_ln9_fu_57_p2;
assign mul_ln9_fu_77_p10 = add_ln9_1_fu_67_p2;
assign shl_ln9_fu_93_p2 = r << 32'd1;
assign temptemp1 = (add_ln9_2_fu_99_p2 + shl_ln9_fu_93_p2);
assign trunc_ln9_1_fu_47_p1 = r[30:0];
assign trunc_ln9_fu_83_p4 = {{mul_ln9_fu_77_p2[32:1]}};
assign mul_ln9_fu_77_p0 = mul_ln9_fu_77_p00;
assign mul_ln9_fu_77_p1 = mul_ln9_fu_77_p10;
endmodule
module entry_point_mul_31ns_32ns_33_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed({1'b0, din0}) * $signed({1'b0, din1});
endmodule
