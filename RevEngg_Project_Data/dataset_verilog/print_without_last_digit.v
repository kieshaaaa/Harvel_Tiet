module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 num,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] num;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg temptemp1_ap_vld;
wire [33:0] mul_ln7_fu_55_p1;
wire [64:0] mul_ln7_fu_55_p2;
wire signed [31:0] tmp_fu_67_p1;
wire [64:0] sub_ln7_fu_61_p2;
wire signed [28:0] tmp_3_fu_85_p4;
wire [0:0] tmp_fu_67_p3;
wire [28:0] tmp_2_fu_75_p4;
wire [28:0] select_ln7_1_fu_99_p3;
wire signed [31:0] sext_ln7_2_fu_107_p1;
wire [31:0] sub_ln7_1_fu_111_p2;
wire signed [31:0] sext_ln7_1_fu_95_p1;
wire ap_ce_reg;
entry_point_mul_32s_34ns_65_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 34 ),
 .dout_WIDTH( 65 ))
mul_32s_34ns_65_1_1_U1(
 .din0(num),
 .din1(mul_ln7_fu_55_p1),
 .dout(mul_ln7_fu_55_p2)
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
assign select_ln7_1_fu_99_p3 = ((tmp_fu_67_p3[0:0] == 1'b1) ? tmp_2_fu_75_p4 : tmp_3_fu_85_p4);
assign sext_ln7_1_fu_95_p1 = tmp_3_fu_85_p4;
assign sext_ln7_2_fu_107_p1 = $signed(select_ln7_1_fu_99_p3);
assign sub_ln7_1_fu_111_p2 = ($signed(32'd0) - $signed(sext_ln7_2_fu_107_p1));
assign sub_ln7_fu_61_p2 = (65'd0 - mul_ln7_fu_55_p2);
assign temptemp1 = ((tmp_fu_67_p3[0:0] == 1'b1) ? sub_ln7_1_fu_111_p2 : sext_ln7_1_fu_95_p1);
assign tmp_2_fu_75_p4 = {{sub_ln7_fu_61_p2[64:36]}};
assign tmp_3_fu_85_p4 = {{mul_ln7_fu_55_p2[64:36]}};
assign tmp_fu_67_p3 = tmp_fu_67_p1[32'd31];
assign mul_ln7_fu_55_p1 = 65'd6871947674;
assign tmp_fu_67_p1 = num;
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
assign dout = $signed(din0) * $signed({1'b0, din1});
endmodule
