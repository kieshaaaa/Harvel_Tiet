module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 bs,
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
 ap_return
);
parameter ap_ST_fsm_state1 = 12'd1;
parameter ap_ST_fsm_state2 = 12'd2;
parameter ap_ST_fsm_state3 = 12'd4;
parameter ap_ST_fsm_state4 = 12'd8;
parameter ap_ST_fsm_state5 = 12'd16;
parameter ap_ST_fsm_state6 = 12'd32;
parameter ap_ST_fsm_state7 = 12'd64;
parameter ap_ST_fsm_state8 = 12'd128;
parameter ap_ST_fsm_state9 = 12'd256;
parameter ap_ST_fsm_state10 = 12'd512;
parameter ap_ST_fsm_state11 = 12'd1024;
parameter ap_ST_fsm_state12 = 12'd2048;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] bs;
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
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
reg temptemp5_ap_vld;
(* fsm_encoding = "none" *) reg [11:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] grp_fu_110_p2;
reg [31:0] reg_146;
wire ap_CS_fsm_state8;
wire ap_CS_fsm_state10;
wire [31:0] da_fu_151_p1;
reg [31:0] da_reg_312;
wire [63:0] conv_fu_120_p1;
reg [63:0] conv_reg_318;
wire [0:0] icmp_ln13_fu_231_p2;
reg [0:0] icmp_ln13_reg_324;
wire [0:0] icmp_ln13_1_fu_237_p2;
reg [0:0] icmp_ln13_1_reg_330;
wire [0:0] or_ln13_fu_243_p2;
reg [0:0] or_ln13_reg_338;
wire ap_CS_fsm_state2;
wire [63:0] grp_fu_138_p2;
reg [63:0] sel_tmp5_v_reg_353;
wire ap_CS_fsm_state5;
wire [63:0] grp_fu_142_p2;
reg [63:0] hra_3_in_reg_358;
wire [31:0] da_1_fu_114_p1;
reg [31:0] da_1_reg_363;
wire ap_CS_fsm_state6;
wire [31:0] hra_fu_117_p1;
reg [31:0] hra_reg_368;
wire [31:0] da_2_fu_276_p3;
wire ap_CS_fsm_state7;
wire [31:0] cv_fu_294_p3;
wire ap_CS_fsm_state11;
wire ap_CS_fsm_state12;
reg [31:0] grp_fu_110_p0;
reg [31:0] grp_fu_110_p1;
wire ap_CS_fsm_state9;
wire [63:0] grp_fu_138_p1;
wire [63:0] grp_fu_142_p1;
wire [7:0] tmp_fu_159_p4;
wire [22:0] trunc_ln10_fu_169_p1;
wire [0:0] icmp_ln10_1_fu_179_p2;
wire [0:0] icmp_ln10_fu_173_p2;
wire [0:0] or_ln10_fu_185_p2;
wire [0:0] tmp_1_fu_123_p2;
wire [0:0] tmp_3_fu_128_p2;
wire [0:0] and_ln11_1_fu_197_p2;
wire [0:0] tmp_5_fu_133_p2;
wire [0:0] and_ln10_fu_191_p2;
wire [0:0] and_ln11_fu_203_p2;
wire [0:0] or_ln10_1_fu_217_p2;
wire [1:0] select_ln10_fu_209_p3;
wire [1:0] category_fu_223_p3;
wire [63:0] select_ln13_4_fu_255_p3;
wire [31:0] select_ln13_fu_287_p3;
reg [11:0] ap_NS_fsm;
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
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 12'd1;
end
entry_point_fadd_32ns_32ns_32_2_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_2_full_dsp_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_110_p0),
 .din1(grp_fu_110_p1),
 .ce(1'b1),
 .dout(grp_fu_110_p2)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U2(
 .din0(sel_tmp5_v_reg_353),
 .dout(da_1_fu_114_p1)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U3(
 .din0(hra_3_in_reg_358),
 .dout(hra_fu_117_p1)
);
entry_point_fpext_32ns_64_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
fpext_32ns_64_1_no_dsp_1_U4(
 .din0(da_fu_151_p1),
 .dout(conv_fu_120_p1)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U5(
 .din0(da_fu_151_p1),
 .din1(32'd1161527296),
 .opcode(5'd4),
 .dout(tmp_1_fu_123_p2)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U6(
 .din0(da_fu_151_p1),
 .din1(32'd1161527296),
 .opcode(5'd3),
 .dout(tmp_3_fu_128_p2)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U7(
 .din0(da_fu_151_p1),
 .din1(32'd1167867904),
 .opcode(5'd4),
 .dout(tmp_5_fu_133_p2)
);
entry_point_dmul_64ns_64ns_64_4_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dmul_64ns_64ns_64_4_max_dsp_1_U8(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(conv_reg_318),
 .din1(grp_fu_138_p1),
 .ce(1'b1),
 .dout(grp_fu_138_p2)
);
entry_point_dmul_64ns_64ns_64_4_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dmul_64ns_64ns_64_4_max_dsp_1_U9(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(conv_reg_318),
 .din1(grp_fu_142_p1),
 .ce(1'b1),
 .dout(grp_fu_142_p2)
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
 conv_reg_318 <= conv_fu_120_p1;
 da_reg_312 <= da_fu_151_p1;
 icmp_ln13_1_reg_330 <= icmp_ln13_1_fu_237_p2;
 icmp_ln13_reg_324 <= icmp_ln13_fu_231_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln13_1_reg_330 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
 da_1_reg_363 <= da_1_fu_114_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 hra_3_in_reg_358 <= grp_fu_142_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 hra_reg_368 <= hra_fu_117_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 or_ln13_reg_338 <= or_ln13_fu_243_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8))) begin
 reg_146 <= grp_fu_110_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln13_1_reg_330 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
 sel_tmp5_v_reg_353 <= grp_fu_138_p2;
 end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
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
 if ((1'b1 == ap_CS_fsm_state12)) begin
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
 if ((1'b1 == ap_CS_fsm_state12)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state11))) begin
 grp_fu_110_p0 = reg_146;
 end else if ((1'b1 == ap_CS_fsm_state7)) begin
 grp_fu_110_p0 = da_reg_312;
 end else begin
 grp_fu_110_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state11)) begin
 grp_fu_110_p1 = cv_fu_294_p3;
 end else if ((1'b1 == ap_CS_fsm_state9)) begin
 grp_fu_110_p1 = hra_reg_368;
 end else if ((1'b1 == ap_CS_fsm_state7)) begin
 grp_fu_110_p1 = da_2_fu_276_p3;
 end else begin
 grp_fu_110_p1 = 'bx;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state11)) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state12)) begin
 temptemp5_ap_vld = 1'b1;
 end else begin
 temptemp5_ap_vld = 1'b0;
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign and_ln10_fu_191_p2 = (tmp_1_fu_123_p2 & or_ln10_fu_185_p2);
assign and_ln11_1_fu_197_p2 = (tmp_3_fu_128_p2 & or_ln10_fu_185_p2);
assign and_ln11_fu_203_p2 = (tmp_5_fu_133_p2 & and_ln11_1_fu_197_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign category_fu_223_p3 = ((or_ln10_1_fu_217_p2[0:0] == 1'b1) ? select_ln10_fu_209_p3 : 2'd3);
assign cv_fu_294_p3 = ((or_ln13_reg_338[0:0] == 1'b1) ? select_ln13_fu_287_p3 : 32'd1133903872);
assign da_2_fu_276_p3 = ((icmp_ln13_1_reg_330[0:0] == 1'b1) ? da_reg_312 : da_1_reg_363);
assign da_fu_151_p1 = bs;
assign grp_fu_138_p1 = ((icmp_ln13_reg_324[0:0] == 1'b1) ? 64'd4607632778762754458 : 64'd4606281698874543309);
assign grp_fu_142_p1 = ((or_ln13_fu_243_p2[0:0] == 1'b1) ? select_ln13_4_fu_255_p3 : 64'd4591870180066957722);
assign icmp_ln10_1_fu_179_p2 = ((trunc_ln10_fu_169_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln10_fu_173_p2 = ((tmp_fu_159_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln13_1_fu_237_p2 = ((category_fu_223_p3 == 2'd2) ? 1'b1 : 1'b0);
assign icmp_ln13_fu_231_p2 = ((category_fu_223_p3 == 2'd3) ? 1'b1 : 1'b0);
assign or_ln10_1_fu_217_p2 = (and_ln11_fu_203_p2 | and_ln10_fu_191_p2);
assign or_ln10_fu_185_p2 = (icmp_ln10_fu_173_p2 | icmp_ln10_1_fu_179_p2);
assign or_ln13_fu_243_p2 = (icmp_ln13_reg_324 | icmp_ln13_1_reg_330);
assign select_ln10_fu_209_p3 = ((and_ln10_fu_191_p2[0:0] == 1'b1) ? 2'd1 : 2'd2);
assign select_ln13_4_fu_255_p3 = ((icmp_ln13_1_reg_330[0:0] == 1'b1) ? 64'd4594572339843380019 : 64'd4596373779694328218);
assign select_ln13_fu_287_p3 = ((icmp_ln13_1_reg_330[0:0] == 1'b1) ? 32'd1137180672 : 32'd1140457472);
assign temptemp1 = bs;
assign temptemp2 = da_2_fu_276_p3;
assign temptemp3 = hra_fu_117_p1;
assign temptemp4 = cv_fu_294_p3;
assign temptemp5 = grp_fu_110_p2;
assign tmp_fu_159_p4 = {{bs[30:23]}};
assign trunc_ln10_fu_169_p1 = bs[22:0];
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
module entry_point_fadd_32ns_32ns_32_2_full_dsp_1
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
