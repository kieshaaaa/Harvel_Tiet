module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 rows,
 temptemp1,
 temptemp1_ap_vld,
 ap_return,
 ap_rst
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] rows;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
input ap_rst;
reg temptemp1_ap_vld;
wire [0:0] icmp_ln10_fu_59_p2;
wire [30:0] mul_ln10_fu_55_p0;
wire [31:0] mul_ln10_fu_55_p1;
wire [31:0] add_ln10_fu_65_p2;
wire [0:0] icmp_ln10_1_fu_75_p2;
wire [30:0] trunc_ln10_fu_71_p1;
wire [30:0] select_ln10_fu_81_p3;
wire [30:0] add_ln10_1_fu_101_p2;
wire [31:0] zext_ln10_2_fu_89_p1;
wire [31:0] add_ln10_2_fu_112_p2;
wire [32:0] mul_ln10_fu_55_p2;
wire [31:0] trunc_ln_fu_123_p4;
wire [31:0] add_ln10_3_fu_133_p2;
wire [31:0] shl_ln_fu_93_p3;
wire [32:0] mul_ln10_fu_55_p00;
wire [32:0] mul_ln10_fu_55_p10;
wire ap_ce_reg;
entry_point_mul_31ns_32ns_33_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 31 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 33 ))
mul_31ns_32ns_33_1_1_U1(
 .din0(mul_ln10_fu_55_p0),
 .din1(mul_ln10_fu_55_p1),
 .dout(mul_ln10_fu_55_p2)
);
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln10_fu_59_p2 == 1'd1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
assign add_ln10_1_fu_101_p2 = ($signed(select_ln10_fu_81_p3) + $signed(31'd2147483646));
assign add_ln10_2_fu_112_p2 = ($signed(zext_ln10_2_fu_89_p1) + $signed(32'd4294967293));
assign add_ln10_3_fu_133_p2 = ($signed(trunc_ln_fu_123_p4) + $signed(32'd4294967293));
assign add_ln10_fu_65_p2 = (rows + 32'd1);
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign icmp_ln10_1_fu_75_p2 = (($signed(add_ln10_fu_65_p2) > $signed(32'd2)) ? 1'b1 : 1'b0);
assign icmp_ln10_fu_59_p2 = (($signed(rows) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign mul_ln10_fu_55_p00 = add_ln10_1_fu_101_p2;
assign mul_ln10_fu_55_p10 = add_ln10_2_fu_112_p2;
assign select_ln10_fu_81_p3 = ((icmp_ln10_1_fu_75_p2[0:0] == 1'b1) ? trunc_ln10_fu_71_p1 : 31'd2);
assign shl_ln_fu_93_p3 = {{select_ln10_fu_81_p3}, {1'd0}};
assign temptemp1 = (add_ln10_3_fu_133_p2 + shl_ln_fu_93_p3);
assign trunc_ln10_fu_71_p1 = add_ln10_fu_65_p2[30:0];
assign trunc_ln_fu_123_p4 = {{mul_ln10_fu_55_p2[32:1]}};
assign zext_ln10_2_fu_89_p1 = select_ln10_fu_81_p3;
assign mul_ln10_fu_55_p0 = mul_ln10_fu_55_p00;
assign mul_ln10_fu_55_p1 = mul_ln10_fu_55_p10;
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
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed({1'b0, din0}) * $signed({1'b0, din1});
assign dout = tmp_product;
endmodule
