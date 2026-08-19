module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 number,
 temptemp1,
 temptemp1_ap_vld,
 ap_return,
 ap_rst
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] number;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
input ap_rst;
reg temptemp1_ap_vld;
wire [33:0] mul_ln7_fu_57_p1;
wire signed [31:0] sext_ln7_fu_62_p0;
wire [64:0] mul_ln7_fu_57_p2;
wire signed [31:0] tmp_fu_73_p1;
wire [64:0] sub_ln7_fu_67_p2;
wire [0:0] tmp_fu_73_p3;
wire [27:0] tmp_cast_fu_81_p4;
wire [27:0] tmp_1_cast_fu_101_p4;
wire [27:0] select_ln7_fu_111_p3;
wire [28:0] zext_ln7_fu_119_p1;
wire [28:0] sub_ln7_1_fu_123_p2;
wire [28:0] tmp_1_cast2_fu_91_p4;
wire [28:0] outcome_fu_129_p3;
wire ap_ce_reg;
entry_point_mul_32s_34ns_65_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 34 ),
 .dout_WIDTH( 65 ))
mul_32s_34ns_65_1_1_U1(
 .din0(sext_ln7_fu_62_p0),
 .din1(mul_ln7_fu_57_p1),
 .dout(mul_ln7_fu_57_p2)
);
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
assign outcome_fu_129_p3 = ((tmp_fu_73_p3[0:0] == 1'b1) ? sub_ln7_1_fu_123_p2 : tmp_1_cast2_fu_91_p4);
assign select_ln7_fu_111_p3 = ((tmp_fu_73_p3[0:0] == 1'b1) ? tmp_cast_fu_81_p4 : tmp_1_cast_fu_101_p4);
assign sub_ln7_1_fu_123_p2 = (29'd0 - zext_ln7_fu_119_p1);
assign sub_ln7_fu_67_p2 = (65'd0 - mul_ln7_fu_57_p2);
assign temptemp1 = $signed(outcome_fu_129_p3);
assign tmp_1_cast2_fu_91_p4 = {{mul_ln7_fu_57_p2[64:36]}};
assign tmp_1_cast_fu_101_p4 = {{mul_ln7_fu_57_p2[63:36]}};
assign tmp_cast_fu_81_p4 = {{sub_ln7_fu_67_p2[63:36]}};
assign tmp_fu_73_p3 = tmp_fu_73_p1[32'd31];
assign zext_ln7_fu_119_p1 = select_ln7_fu_111_p3;
assign mul_ln7_fu_57_p1 = 65'd6871947674;
assign sext_ln7_fu_62_p0 = number;
assign tmp_fu_73_p1 = number;
endmodule
 module entry_point_mul_32s_34ns_65_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed(din0) * $signed({1'b0, din1});
assign dout = tmp_product;
endmodule
