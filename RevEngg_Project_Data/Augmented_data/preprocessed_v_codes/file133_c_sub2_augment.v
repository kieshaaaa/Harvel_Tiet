module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 number,
 begin_r,
 finish_r,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 temptemp4,
 temptemp4_ap_vld,
 temptemp5,
 temptemp5_ap_vld,
 temptemp6,
 temptemp6_ap_vld,
 ap_return,
 ap_rst
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] number;
input [31:0] begin_r;
input [31:0] finish_r;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] temptemp4;
output temptemp4_ap_vld;
output [31:0] temptemp5;
output temptemp5_ap_vld;
output [31:0] temptemp6;
output temptemp6_ap_vld;
output [31:0] ap_return;
input ap_rst;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
reg temptemp5_ap_vld;
reg temptemp6_ap_vld;
wire [0:0] icmp_ln10_fu_111_p2;
wire signed [31:0] add_ln12_2_fu_143_p2;
wire [31:0] grp_fu_103_p2;
reg signed [31:0] grp_fu_103_p1;
wire signed [31:0] icmp_ln10_fu_111_p1;
wire signed [31:0] add_ln12_fu_117_p0;
wire [31:0] add_ln12_fu_117_p2;
wire [31:0] add_ln12_1_fu_123_p2;
wire [0:0] icmp_ln12_fu_129_p2;
wire [31:0] select_ln12_fu_135_p3;
wire ap_ce_reg;
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U1(
 .din0(number),
 .din1(grp_fu_103_p1),
 .dout(grp_fu_103_p2)
);
always @ (*) begin
 if ((icmp_ln10_fu_111_p2 == 1'd1)) begin
 grp_fu_103_p1 = finish_r;
 end else if ((icmp_ln10_fu_111_p2 == 1'd0)) begin
 grp_fu_103_p1 = add_ln12_2_fu_143_p2;
 end else begin
 grp_fu_103_p1 = 'bx;
 end
end
always @ (*) begin
 if (((icmp_ln10_fu_111_p2 == 1'd0) & (ap_start == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln10_fu_111_p2 == 1'd0) & (ap_start == 1'b1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln10_fu_111_p2 == 1'd0) & (ap_start == 1'b1))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln10_fu_111_p2 == 1'd1) & (ap_start == 1'b1))) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln10_fu_111_p2 == 1'd1) & (ap_start == 1'b1))) begin
 temptemp5_ap_vld = 1'b1;
 end else begin
 temptemp5_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln10_fu_111_p2 == 1'd1) & (ap_start == 1'b1))) begin
 temptemp6_ap_vld = 1'b1;
 end else begin
 temptemp6_ap_vld = 1'b0;
 end
end
assign add_ln12_1_fu_123_p2 = (begin_r + 32'd1);
assign add_ln12_2_fu_143_p2 = ($signed(select_ln12_fu_135_p3) + $signed(32'd4294967295));
assign add_ln12_fu_117_p2 = ($signed(add_ln12_fu_117_p0) + $signed(32'd1));
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign icmp_ln10_fu_111_p2 = (($signed(begin_r) > $signed(icmp_ln10_fu_111_p1)) ? 1'b1 : 1'b0);
assign icmp_ln12_fu_129_p2 = (($signed(add_ln12_fu_117_p2) > $signed(add_ln12_1_fu_123_p2)) ? 1'b1 : 1'b0);
assign select_ln12_fu_135_p3 = ((icmp_ln12_fu_129_p2[0:0] == 1'b1) ? add_ln12_fu_117_p2 : add_ln12_1_fu_123_p2);
assign temptemp1 = number;
assign temptemp2 = ($signed(select_ln12_fu_135_p3) + $signed(32'd4294967295));
assign temptemp3 = grp_fu_103_p2;
assign temptemp4 = number;
assign temptemp5 = finish_r;
assign temptemp6 = grp_fu_103_p2;
assign add_ln12_fu_117_p0 = finish_r;
assign icmp_ln10_fu_111_p1 = finish_r;
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
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed(din0) * $signed(din1);
assign dout = tmp_product;
endmodule
