module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 ap_return
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
wire signed [31:0] add_ln10_fu_55_p0;
wire signed [31:0] mul_ln10_fu_61_p1;
wire [31:0] mul_ln10_fu_61_p2;
wire [31:0] sub_ln10_fu_75_p2;
wire [30:0] lshr_ln10_1_fu_81_p4;
wire [31:0] zext_ln10_fu_91_p1;
wire [30:0] lshr_ln10_2_fu_101_p4;
wire [0:0] tmp_fu_67_p3;
wire [31:0] sub_ln10_1_fu_95_p2;
wire [31:0] zext_ln10_1_fu_111_p1;
wire ap_ce_reg;
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U1(
 .din0(n),
 .din1(mul_ln10_fu_61_p1),
 .dout(mul_ln10_fu_61_p2)
);
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
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign lshr_ln10_1_fu_81_p4 = {{sub_ln10_fu_75_p2[31:1]}};
assign lshr_ln10_2_fu_101_p4 = {{mul_ln10_fu_61_p2[31:1]}};
assign sub_ln10_1_fu_95_p2 = (32'd0 - zext_ln10_fu_91_p1);
assign sub_ln10_fu_75_p2 = (32'd0 - mul_ln10_fu_61_p2);
assign temptemp1 = n;
assign temptemp2 = ((tmp_fu_67_p3[0:0] == 1'b1) ? sub_ln10_1_fu_95_p2 : zext_ln10_1_fu_111_p1);
assign tmp_fu_67_p3 = mul_ln10_fu_61_p2[32'd31];
assign zext_ln10_1_fu_111_p1 = lshr_ln10_2_fu_101_p4;
assign zext_ln10_fu_91_p1 = lshr_ln10_1_fu_81_p4;
assign add_ln10_fu_55_p0 = n;
assign mul_ln10_fu_61_p1 = ($signed(add_ln10_fu_55_p0) + $signed(32'd1));
endmodule
module entry_point_mul_32s_32s_32_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed(din0) * $signed(din1);
endmodule
