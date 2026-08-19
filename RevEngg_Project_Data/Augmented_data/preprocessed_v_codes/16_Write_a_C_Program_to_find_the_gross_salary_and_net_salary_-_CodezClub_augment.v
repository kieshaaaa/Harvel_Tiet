module entry_point_sparsemux_7_2_32_1_1 (din0,din1,din2,def,sel,dout);
parameter din0_WIDTH = 1;
parameter din1_WIDTH = 1;
parameter din2_WIDTH = 1;
parameter def_WIDTH = 1;
parameter sel_WIDTH = 1;
parameter dout_WIDTH = 1;
parameter [sel_WIDTH-1:0] CASE0 = 1;
parameter [sel_WIDTH-1:0] CASE1 = 1;
parameter [sel_WIDTH-1:0] CASE2 = 1;
parameter ID = 1;
parameter NUM_STAGE = 1;
input [din0_WIDTH-1:0] din0;
input [din1_WIDTH-1:0] din1;
input [din2_WIDTH-1:0] din2;
input [def_WIDTH-1:0] def;
input [sel_WIDTH-1:0] sel;
output [dout_WIDTH-1:0] dout;
reg [dout_WIDTH-1:0] dout_tmp;
always @ (*) begin
(* parallel_case *) case (sel)
 CASE0 : dout_tmp = din0;
 CASE1 : dout_tmp = din1;
 CASE2 : dout_tmp = din2;
 default : dout_tmp = def;
endcase
end
assign dout = dout_tmp;
endmodule
module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 employeeName,
 basicSalary,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 14'd1;
parameter ap_ST_fsm_state2 = 14'd2;
parameter ap_ST_fsm_state3 = 14'd4;
parameter ap_ST_fsm_state4 = 14'd8;
parameter ap_ST_fsm_state5 = 14'd16;
parameter ap_ST_fsm_state6 = 14'd32;
parameter ap_ST_fsm_state7 = 14'd64;
parameter ap_ST_fsm_state8 = 14'd128;
parameter ap_ST_fsm_state9 = 14'd256;
parameter ap_ST_fsm_state10 = 14'd512;
parameter ap_ST_fsm_state11 = 14'd1024;
parameter ap_ST_fsm_state12 = 14'd2048;
parameter ap_ST_fsm_state13 = 14'd4096;
parameter ap_ST_fsm_state14 = 14'd8192;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [7:0] employeeName;
input [31:0] basicSalary;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [13:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [63:0] grp_fu_130_p2;
reg [63:0] reg_142;
wire ap_CS_fsm_state5;
reg [1:0] sel_tmp2_reg_291;
wire [31:0] grp_fu_88_p2;
reg [31:0] reg_147;
wire ap_CS_fsm_state8;
wire ap_CS_fsm_state10;
wire ap_CS_fsm_state12;
wire [31:0] bitcast_ln21_fu_152_p1;
reg [31:0] bitcast_ln21_reg_278;
wire [63:0] conv_fu_107_p1;
reg [63:0] conv_reg_284;
wire [1:0] sel_tmp2_fu_222_p3;
wire [63:0] grp_fu_125_p2;
reg [63:0] mul_reg_297;
wire [63:0] grp_fu_136_p2;
reg [63:0] mul2_reg_302;
wire [31:0] providentFund_fu_98_p1;
reg [31:0] providentFund_reg_307;
wire ap_CS_fsm_state6;
wire [31:0] houseRentAllowance_1_fu_230_p9;
reg [31:0] houseRentAllowance_1_reg_312;
wire [31:0] dearnessAllowance_1_fu_249_p9;
reg [31:0] dearnessAllowance_1_reg_317;
wire ap_CS_fsm_state14;
reg [31:0] grp_fu_88_p0;
reg [31:0] grp_fu_88_p1;
wire ap_CS_fsm_state7;
wire ap_CS_fsm_state9;
wire ap_CS_fsm_state11;
wire ap_CS_fsm_state13;
wire ap_CS_fsm_state2;
reg [63:0] grp_fu_130_p1;
wire [7:0] tmp_1_fu_160_p4;
wire [22:0] trunc_ln14_fu_170_p1;
wire [0:0] icmp_ln14_1_fu_180_p2;
wire [0:0] icmp_ln14_fu_174_p2;
wire [0:0] or_ln14_fu_186_p2;
wire [0:0] tmp_2_fu_110_p2;
wire [0:0] tmp_6_fu_120_p2;
wire [0:0] and_ln14_fu_192_p2;
wire [0:0] and_ln17_fu_198_p2;
wire [0:0] xor_ln14_fu_204_p2;
wire [0:0] and_ln17_1_fu_210_p2;
wire [0:0] tmp_4_fu_115_p2;
wire [0:0] and_ln17_2_fu_216_p2;
wire [31:0] houseRentAllowance_2_fu_104_p1;
wire [31:0] grp_fu_101_p1;
wire [31:0] houseRentAllowance_1_fu_230_p7;
wire [31:0] grp_fu_93_p2;
wire [31:0] dearnessAllowance_1_fu_249_p7;
reg [1:0] grp_fu_88_opcode;
reg [13:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ST_fsm_state6_blk;
wire ap_ST_fsm_state7_blk;
wire ap_ST_fsm_state8_blk;
wire ap_ST_fsm_state9_blk;
wire ap_ST_fsm_state10_blk;
wire ap_ST_fsm_state11_blk;
wire ap_ST_fsm_state12_blk;
wire ap_ST_fsm_state13_blk;
wire ap_ST_fsm_state14_blk;
wire signed [1:0] houseRentAllowance_1_fu_230_p1;
wire [1:0] houseRentAllowance_1_fu_230_p3;
wire [1:0] houseRentAllowance_1_fu_230_p5;
wire signed [1:0] dearnessAllowance_1_fu_249_p1;
wire [1:0] dearnessAllowance_1_fu_249_p3;
wire [1:0] dearnessAllowance_1_fu_249_p5;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
end
entry_point_faddfsub_32ns_32ns_32_2_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
faddfsub_32ns_32ns_32_2_full_dsp_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_88_p0),
 .din1(grp_fu_88_p1),
 .opcode(grp_fu_88_opcode),
 .ce(1'b1),
 .dout(grp_fu_88_p2)
);
entry_point_fmul_32ns_32ns_32_2_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U2(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(bitcast_ln21_reg_278),
 .din1(32'd1056964608),
 .ce(1'b1),
 .dout(grp_fu_93_p2)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U3(
 .din0(mul_reg_297),
 .dout(providentFund_fu_98_p1)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U4(
 .din0(reg_142),
 .dout(grp_fu_101_p1)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U5(
 .din0(mul2_reg_302),
 .dout(houseRentAllowance_2_fu_104_p1)
);
entry_point_fpext_32ns_64_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
fpext_32ns_64_1_no_dsp_1_U6(
 .din0(bitcast_ln21_fu_152_p1),
 .dout(conv_fu_107_p1)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U7(
 .din0(bitcast_ln21_fu_152_p1),
 .din1(32'd1167867904),
 .opcode(5'd4),
 .dout(tmp_2_fu_110_p2)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U8(
 .din0(bitcast_ln21_fu_152_p1),
 .din1(32'd1167867904),
 .opcode(5'd3),
 .dout(tmp_4_fu_115_p2)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U9(
 .din0(bitcast_ln21_fu_152_p1),
 .din1(32'd1176256512),
 .opcode(5'd4),
 .dout(tmp_6_fu_120_p2)
);
entry_point_dmul_64ns_64ns_64_4_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dmul_64ns_64ns_64_4_max_dsp_1_U10(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(conv_reg_284),
 .din1(64'd4590429028186199163),
 .ce(1'b1),
 .dout(grp_fu_125_p2)
);
entry_point_dmul_64ns_64ns_64_4_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dmul_64ns_64ns_64_4_max_dsp_1_U11(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(conv_reg_284),
 .din1(grp_fu_130_p1),
 .ce(1'b1),
 .dout(grp_fu_130_p2)
);
entry_point_dmul_64ns_64ns_64_4_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dmul_64ns_64ns_64_4_max_dsp_1_U12(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(conv_reg_284),
 .din1(64'd4591870180066957722),
 .ce(1'b1),
 .dout(grp_fu_136_p2)
);
(* dissolve_hierarchy = "yes" *) entry_point_sparsemux_7_2_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .CASE0( 2'h2 ),
 .din0_WIDTH( 32 ),
 .CASE1( 2'h1 ),
 .din1_WIDTH( 32 ),
 .CASE2( 2'h0 ),
 .din2_WIDTH( 32 ),
 .def_WIDTH( 32 ),
 .sel_WIDTH( 2 ),
 .dout_WIDTH( 32 ))
sparsemux_7_2_32_1_1_U13(
 .din0(providentFund_fu_98_p1),
 .din1(houseRentAllowance_2_fu_104_p1),
 .din2(grp_fu_101_p1),
 .def(houseRentAllowance_1_fu_230_p7),
 .sel(sel_tmp2_reg_291),
 .dout(houseRentAllowance_1_fu_230_p9)
);
(* dissolve_hierarchy = "yes" *) entry_point_sparsemux_7_2_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .CASE0( 2'h2 ),
 .din0_WIDTH( 32 ),
 .CASE1( 2'h1 ),
 .din1_WIDTH( 32 ),
 .CASE2( 2'h0 ),
 .din2_WIDTH( 32 ),
 .def_WIDTH( 32 ),
 .sel_WIDTH( 2 ),
 .dout_WIDTH( 32 ))
sparsemux_7_2_32_1_1_U14(
 .din0(grp_fu_101_p1),
 .din1(grp_fu_101_p1),
 .din2(grp_fu_93_p2),
 .def(dearnessAllowance_1_fu_249_p7),
 .sel(sel_tmp2_reg_291),
 .dout(dearnessAllowance_1_fu_249_p9)
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
 bitcast_ln21_reg_278 <= bitcast_ln21_fu_152_p1;
 conv_reg_284 <= conv_fu_107_p1;
 sel_tmp2_reg_291 <= sel_tmp2_fu_222_p3;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 dearnessAllowance_1_reg_317 <= dearnessAllowance_1_fu_249_p9;
 houseRentAllowance_1_reg_312 <= houseRentAllowance_1_fu_230_p9;
 providentFund_reg_307 <= providentFund_fu_98_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 mul2_reg_302 <= grp_fu_136_p2;
 mul_reg_297 <= grp_fu_125_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((((sel_tmp2_reg_291 == 2'd0) & (1'b1 == ap_CS_fsm_state5)) | ((sel_tmp2_reg_291 == 2'd1) & (1'b1 == ap_CS_fsm_state5)) | ((sel_tmp2_reg_291 == 2'd2) & (1'b1 == ap_CS_fsm_state5)))) begin
 reg_142 <= grp_fu_130_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8))) begin
 reg_147 <= grp_fu_88_p2;
 end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
 if ((ap_start == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
 ap_done = 1'b1;
 end else begin
 ap_done = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 if ((sel_tmp2_reg_291 == 2'd0)) begin
 grp_fu_130_p1 = 64'd4596373779694328218;
 end else if ((sel_tmp2_reg_291 == 2'd1)) begin
 grp_fu_130_p1 = 64'd4600877379321698714;
 end else if ((sel_tmp2_reg_291 == 2'd2)) begin
 grp_fu_130_p1 = 64'd4599075939470750515;
 end else begin
 grp_fu_130_p1 = 'bx;
 end
 end else begin
 grp_fu_130_p1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state11)) begin
 grp_fu_88_opcode = 2'd1;
 end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state7))) begin
 grp_fu_88_opcode = 2'd0;
 end else begin
 grp_fu_88_opcode = 'bx;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9))) begin
 grp_fu_88_p0 = reg_147;
 end else if ((1'b1 == ap_CS_fsm_state7)) begin
 grp_fu_88_p0 = bitcast_ln21_reg_278;
 end else begin
 grp_fu_88_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state13)) begin
 grp_fu_88_p1 = providentFund_reg_307;
 end else if ((1'b1 == ap_CS_fsm_state11)) begin
 grp_fu_88_p1 = 'bx;
 end else if ((1'b1 == ap_CS_fsm_state9)) begin
 grp_fu_88_p1 = houseRentAllowance_1_reg_312;
 end else if ((1'b1 == ap_CS_fsm_state7)) begin
 grp_fu_88_p1 = dearnessAllowance_1_reg_317;
 end else begin
 grp_fu_88_p1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state10)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 ap_ST_fsm_state6 : begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end
 ap_ST_fsm_state7 : begin
 ap_NS_fsm = ap_ST_fsm_state8;
 end
 ap_ST_fsm_state8 : begin
 ap_NS_fsm = ap_ST_fsm_state9;
 end
 ap_ST_fsm_state9 : begin
 ap_NS_fsm = ap_ST_fsm_state10;
 end
 ap_ST_fsm_state10 : begin
 ap_NS_fsm = ap_ST_fsm_state11;
 end
 ap_ST_fsm_state11 : begin
 ap_NS_fsm = ap_ST_fsm_state12;
 end
 ap_ST_fsm_state12 : begin
 ap_NS_fsm = ap_ST_fsm_state13;
 end
 ap_ST_fsm_state13 : begin
 ap_NS_fsm = ap_ST_fsm_state14;
 end
 ap_ST_fsm_state14 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign and_ln14_fu_192_p2 = (tmp_2_fu_110_p2 & or_ln14_fu_186_p2);
assign and_ln17_1_fu_210_p2 = (xor_ln14_fu_204_p2 & and_ln17_fu_198_p2);
assign and_ln17_2_fu_216_p2 = (tmp_4_fu_115_p2 & and_ln17_1_fu_210_p2);
assign and_ln17_fu_198_p2 = (tmp_6_fu_120_p2 & or_ln14_fu_186_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign bitcast_ln21_fu_152_p1 = basicSalary;
assign dearnessAllowance_1_fu_249_p7 = 'bx;
assign houseRentAllowance_1_fu_230_p7 = 'bx;
assign icmp_ln14_1_fu_180_p2 = ((trunc_ln14_fu_170_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln14_fu_174_p2 = ((tmp_1_fu_160_p4 != 8'd255) ? 1'b1 : 1'b0);
assign or_ln14_fu_186_p2 = (icmp_ln14_fu_174_p2 | icmp_ln14_1_fu_180_p2);
assign sel_tmp2_fu_222_p3 = {{and_ln14_fu_192_p2}, {and_ln17_2_fu_216_p2}};
assign temptemp1 = grp_fu_88_p2;
assign temptemp2 = grp_fu_88_p2;
assign tmp_1_fu_160_p4 = {{basicSalary[30:23]}};
assign trunc_ln14_fu_170_p1 = basicSalary[22:0];
assign xor_ln14_fu_204_p2 = (1'd1 ^ and_ln14_fu_192_p2);
endmodule
module entry_point_dmul_64ns_64ns_64_4_max_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 3,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 dout_WIDTH = 32
)(
 input wire clk,
 input wire reset,
 input wire ce,
 input wire [din0_WIDTH-1:0] din0,
 input wire [din1_WIDTH-1:0] din1,
 output wire [dout_WIDTH-1:0] dout
);
wire aclk;
wire aclken;
wire a_tvalid;
wire [din0_WIDTH-1:0] a_tdata;
wire b_tvalid;
wire [din1_WIDTH-1:0] b_tdata;
wire r_tvalid;
wire [dout_WIDTH-1:0] r_tdata;
reg [din0_WIDTH-1:0] din0_buf1;
reg [din1_WIDTH-1:0] din1_buf1;
reg ce_r;
wire [dout_WIDTH-1:0] dout_i;
reg [dout_WIDTH-1:0] dout_r;
                                                                                                                                                                                                                                                                                                                                          assign aclk = clk;
assign aclken = ce_r;
assign a_tvalid = 1'b1;
assign a_tdata = din0_buf1;
assign b_tvalid = 1'b1;
assign b_tdata = din1_buf1;
assign dout_i = r_tdata;
always @(posedge clk) begin
 if (ce) begin
 din0_buf1 <= din0;
 din1_buf1 <= din1;
 end
end
always @ (posedge clk) begin
 ce_r <= ce;
end
always @ (posedge clk) begin
 if (ce_r) begin
 dout_r <= dout_i;
 end
end
assign dout = ce_r?dout_i:dout_r;
endmodule
module entry_point_faddfsub_32ns_32ns_32_2_full_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 2,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 dout_WIDTH = 32
)(
 input wire clk,
 input wire reset,
 input wire ce,
 input wire [din0_WIDTH-1:0] din0,
 input wire [din1_WIDTH-1:0] din1,
 input wire [1:0] opcode,
 output wire [dout_WIDTH-1:0] dout
);
wire a_tvalid;
wire [din0_WIDTH-1:0] a_tdata;
wire b_tvalid;
wire [din1_WIDTH-1:0] b_tdata;
wire op_tvalid;
wire [7:0] op_tdata;
wire r_tvalid;
wire [dout_WIDTH-1:0] r_tdata;
reg [din0_WIDTH-1:0] din0_buf1;
reg [din1_WIDTH-1:0] din1_buf1;
reg [1:0] opcode_buf1;
reg ce_r;
wire [dout_WIDTH-1:0] dout_i;
reg [dout_WIDTH-1:0] dout_r;
                                                                                                                                                                                                                                                                                                                                                                                              assign a_tvalid = 1'b1;
assign a_tdata = din0_buf1;
assign b_tvalid = 1'b1;
assign b_tdata = din1_buf1;
assign op_tvalid = 1'b1;
assign op_tdata = {6'b0, opcode_buf1};
assign dout_i = r_tdata;
always @(posedge clk) begin
 if (ce) begin
 din0_buf1 <= din0;
 din1_buf1 <= din1;
 opcode_buf1 <= opcode;
 end
end
always @ (posedge clk) begin
 ce_r <= ce;
end
always @ (posedge clk) begin
 if (ce_r) begin
 dout_r <= dout_i;
 end
end
assign dout = ce_r?dout_i:dout_r;
endmodule
module entry_point_fcmp_32ns_32ns_1_1_no_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 1,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 dout_WIDTH = 1
)(
 input wire [din0_WIDTH-1:0] din0,
 input wire [din1_WIDTH-1:0] din1,
 input wire [4:0] opcode,
 output wire [dout_WIDTH-1:0] dout
);
localparam [4:0]
 AP_OEQ = 5'b00001,
 AP_OGT = 5'b00010,
 AP_OGE = 5'b00011,
 AP_OLT = 5'b00100,
 AP_OLE = 5'b00101,
 AP_ONE = 5'b00110,
 AP_UNO = 5'b01000;
localparam [7:0]
 OP_EQ = 8'b00010100,
 OP_GT = 8'b00100100,
 OP_GE = 8'b00110100,
 OP_LT = 8'b00001100,
 OP_LE = 8'b00011100,
 OP_NE = 8'b00101100,
 OP_UO = 8'b00000100;
wire a_tvalid;
wire [31:0] a_tdata;
wire b_tvalid;
wire [31:0] b_tdata;
wire op_tvalid;
reg [7:0] op_tdata;
wire r_tvalid;
wire [7:0] r_tdata;
                                                                                                                                                                                                                                                                                                                                                                                assign a_tvalid = 1'b1;
assign a_tdata = din0;
assign b_tvalid = 1'b1;
assign b_tdata = din1;
assign op_tvalid = 1'b1;
assign dout = r_tdata[0];
always @(*) begin
 case (opcode)
 AP_OEQ : op_tdata = OP_EQ;
 AP_OGT : op_tdata = OP_GT;
 AP_OGE : op_tdata = OP_GE;
 AP_OLT : op_tdata = OP_LT;
 AP_OLE : op_tdata = OP_LE;
 AP_ONE : op_tdata = OP_NE;
 AP_UNO : op_tdata = OP_UO;
 default : op_tdata = OP_EQ;
 endcase
end
endmodule
module entry_point_fmul_32ns_32ns_32_2_max_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 2,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 dout_WIDTH = 32
)(
 input wire clk,
 input wire reset,
 input wire ce,
 input wire [din0_WIDTH-1:0] din0,
 input wire [din1_WIDTH-1:0] din1,
 output wire [dout_WIDTH-1:0] dout
);
wire a_tvalid;
wire [31:0] a_tdata;
wire b_tvalid;
wire [31:0] b_tdata;
wire r_tvalid;
wire [31:0] r_tdata;
reg [din0_WIDTH-1:0] din0_buf1;
reg [din1_WIDTH-1:0] din1_buf1;
reg ce_r;
wire [dout_WIDTH-1:0] dout_i;
reg [dout_WIDTH-1:0] dout_r;
                                                                                                                                                                                                                                                                                                    assign a_tvalid = 1'b1;
assign a_tdata = din0_buf1;
assign b_tvalid = 1'b1;
assign b_tdata = din1_buf1;
assign dout_i = r_tdata;
always @(posedge clk) begin
 if (ce) begin
 din0_buf1 <= din0;
 din1_buf1 <= din1;
 end
end
always @ (posedge clk) begin
 ce_r <= ce;
end
always @ (posedge clk) begin
 if (ce_r) begin
 dout_r <= dout_i;
 end
end
assign dout = ce_r?dout_i:dout_r;
endmodule
module entry_point_fpext_32ns_64_1_no_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 1,
 din0_WIDTH = 32,
 dout_WIDTH = 32
)(
 input wire [din0_WIDTH-1:0] din0,
 output wire [dout_WIDTH-1:0] dout
);
wire a_tvalid;
wire [din0_WIDTH-1:0] a_tdata;
wire r_tvalid;
wire [dout_WIDTH:0] r_tdata;
                                                                                                                                                                                                                            assign a_tvalid = 1'b1;
assign a_tdata = din0;
assign dout = r_tdata;
endmodule
module entry_point_fptrunc_64ns_32_1_no_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 1,
 din0_WIDTH = 32,
 dout_WIDTH = 32
)(
 input wire [din0_WIDTH-1:0] din0,
 output wire [dout_WIDTH-1:0] dout
);
wire a_tvalid;
wire [din0_WIDTH-1:0] a_tdata;
wire r_tvalid;
wire [dout_WIDTH:0] r_tdata;
                                                                                                                                                                                                                                assign a_tvalid = 1'b1;
assign a_tdata = din0;
assign dout = r_tdata;
endmodule
