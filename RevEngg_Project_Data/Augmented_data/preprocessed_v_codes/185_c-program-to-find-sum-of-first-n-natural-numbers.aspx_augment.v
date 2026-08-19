module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 2'd1;
parameter ap_ST_fsm_state2 = 2'd2;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [0:0] icmp_ln9_fu_59_p2;
reg [0:0] icmp_ln9_reg_150;
wire [30:0] select_ln9_fu_81_p3;
reg [30:0] select_ln9_reg_155;
wire ap_CS_fsm_state2;
wire [30:0] mul_ln9_fu_55_p0;
wire [31:0] mul_ln9_fu_55_p1;
wire [31:0] add_ln9_fu_65_p2;
wire [0:0] icmp_ln9_1_fu_75_p2;
wire [30:0] trunc_ln9_1_fu_71_p1;
wire [30:0] add_ln9_1_fu_99_p2;
wire [31:0] zext_ln9_2_fu_89_p1;
wire [31:0] add_ln9_2_fu_109_p2;
wire [32:0] mul_ln9_fu_55_p2;
wire [31:0] trunc_ln9_fu_120_p4;
wire [31:0] add_ln9_3_fu_130_p2;
wire [31:0] shl_ln9_fu_92_p3;
wire [31:0] add_ln9_4_fu_136_p2;
reg [1:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire [32:0] mul_ln9_fu_55_p00;
wire [32:0] mul_ln9_fu_55_p10;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
end
entry_point_mul_31ns_32ns_33_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 31 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 33 ))
mul_31ns_32ns_33_1_1_U1(
 .din0(mul_ln9_fu_55_p0),
 .din1(mul_ln9_fu_55_p1),
 .dout(mul_ln9_fu_55_p2)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln9_reg_150 <= icmp_ln9_fu_59_p2;
 select_ln9_reg_155 <= select_ln9_fu_81_p3;
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
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
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
 if ((1'b1 == ap_CS_fsm_state2)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln9_1_fu_99_p2 = ($signed(select_ln9_reg_155) + $signed(31'd2147483646));
assign add_ln9_2_fu_109_p2 = ($signed(zext_ln9_2_fu_89_p1) + $signed(32'd4294967293));
assign add_ln9_3_fu_130_p2 = ($signed(trunc_ln9_fu_120_p4) + $signed(32'd4294967293));
assign add_ln9_4_fu_136_p2 = (add_ln9_3_fu_130_p2 + shl_ln9_fu_92_p3);
assign add_ln9_fu_65_p2 = (n + 32'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_return = 32'd0;
assign icmp_ln9_1_fu_75_p2 = (($signed(add_ln9_fu_65_p2) > $signed(32'd2)) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_59_p2 = (($signed(n) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign mul_ln9_fu_55_p0 = mul_ln9_fu_55_p00;
assign mul_ln9_fu_55_p00 = add_ln9_1_fu_99_p2;
assign mul_ln9_fu_55_p1 = mul_ln9_fu_55_p10;
assign mul_ln9_fu_55_p10 = add_ln9_2_fu_109_p2;
assign select_ln9_fu_81_p3 = ((icmp_ln9_1_fu_75_p2[0:0] == 1'b1) ? trunc_ln9_1_fu_71_p1 : 31'd2);
assign shl_ln9_fu_92_p3 = {{select_ln9_reg_155}, {1'd0}};
assign temptemp1 = ((icmp_ln9_reg_150[0:0] == 1'b1) ? add_ln9_4_fu_136_p2 : 32'd0);
assign trunc_ln9_1_fu_71_p1 = add_ln9_fu_65_p2[30:0];
assign trunc_ln9_fu_120_p4 = {{mul_ln9_fu_55_p2[32:1]}};
assign zext_ln9_2_fu_89_p1 = select_ln9_reg_155;
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
