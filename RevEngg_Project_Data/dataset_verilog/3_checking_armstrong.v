module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n_i,
 n_o,
 n_o_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 3'd1;
parameter ap_ST_fsm_state2 = 3'd2;
parameter ap_ST_fsm_state3 = 3'd4;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n_i;
output [31:0] n_o;
output n_o_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] n_o;
reg n_o_ap_vld;
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg signed [31:0] empty_fu_46;
wire [31:0] select_ln13_1_fu_143_p3;
wire ap_CS_fsm_state2;
wire [0:0] icmp_ln10_fu_71_p2;
wire signed [31:0] icmp_ln10_fu_71_p0;
wire [33:0] mul_ln13_fu_81_p1;
wire [64:0] mul_ln13_fu_81_p2;
wire signed [31:0] tmp_fu_93_p1;
wire [64:0] sub_ln13_fu_87_p2;
wire signed [28:0] tmp_3_fu_111_p4;
wire [0:0] tmp_fu_93_p3;
wire [28:0] tmp_2_fu_101_p4;
wire [28:0] select_ln13_2_fu_125_p3;
wire signed [31:0] sext_ln13_2_fu_133_p1;
wire [31:0] sub_ln13_1_fu_137_p2;
wire signed [31:0] sext_ln13_1_fu_121_p1;
wire ap_CS_fsm_state3;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
end
entry_point_mul_32s_34ns_65_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 34 ),
 .dout_WIDTH( 65 ))
mul_32s_34ns_65_1_1_U1(
 .din0(empty_fu_46),
 .din1(mul_ln13_fu_81_p1),
 .dout(mul_ln13_fu_81_p2)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 empty_fu_46 <= n_i;
 end else if (((icmp_ln10_fu_71_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 empty_fu_46 <= select_ln13_1_fu_143_p3;
 end
end
always @ (*) begin
 if ((ap_start == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 ap_done = 1'b1;
 end else begin
 ap_done = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln10_fu_71_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 n_o = select_ln13_1_fu_143_p3;
 end else begin
 n_o = n_i;
 end
end
always @ (*) begin
 if (((icmp_ln10_fu_71_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 n_o_ap_vld = 1'b1;
 end else begin
 n_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((icmp_ln10_fu_71_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign icmp_ln10_fu_71_p0 = empty_fu_46;
assign icmp_ln10_fu_71_p2 = ((icmp_ln10_fu_71_p0 == 32'd0) ? 1'b1 : 1'b0);
assign mul_ln13_fu_81_p1 = 65'd6871947674;
assign select_ln13_1_fu_143_p3 = ((tmp_fu_93_p3[0:0] == 1'b1) ? sub_ln13_1_fu_137_p2 : sext_ln13_1_fu_121_p1);
assign select_ln13_2_fu_125_p3 = ((tmp_fu_93_p3[0:0] == 1'b1) ? tmp_2_fu_101_p4 : tmp_3_fu_111_p4);
assign sext_ln13_1_fu_121_p1 = tmp_3_fu_111_p4;
assign sext_ln13_2_fu_133_p1 = $signed(select_ln13_2_fu_125_p3);
assign sub_ln13_1_fu_137_p2 = ($signed(32'd0) - $signed(sext_ln13_2_fu_133_p1));
assign sub_ln13_fu_87_p2 = (65'd0 - mul_ln13_fu_81_p2);
assign tmp_2_fu_101_p4 = {{sub_ln13_fu_87_p2[64:36]}};
assign tmp_3_fu_111_p4 = {{mul_ln13_fu_81_p2[64:36]}};
assign tmp_fu_93_p1 = empty_fu_46;
assign tmp_fu_93_p3 = tmp_fu_93_p1[32'd31];
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
