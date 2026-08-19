module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n,
 arr,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 temptemp4,
 temptemp4_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 27'd1;
parameter ap_ST_fsm_state2 = 27'd2;
parameter ap_ST_fsm_state3 = 27'd4;
parameter ap_ST_fsm_state4 = 27'd8;
parameter ap_ST_fsm_state5 = 27'd16;
parameter ap_ST_fsm_state6 = 27'd32;
parameter ap_ST_fsm_state7 = 27'd64;
parameter ap_ST_fsm_state8 = 27'd128;
parameter ap_ST_fsm_state9 = 27'd256;
parameter ap_ST_fsm_state10 = 27'd512;
parameter ap_ST_fsm_state11 = 27'd1024;
parameter ap_ST_fsm_state12 = 27'd2048;
parameter ap_ST_fsm_state13 = 27'd4096;
parameter ap_ST_fsm_state14 = 27'd8192;
parameter ap_ST_fsm_state15 = 27'd16384;
parameter ap_ST_fsm_state16 = 27'd32768;
parameter ap_ST_fsm_state17 = 27'd65536;
parameter ap_ST_fsm_state18 = 27'd131072;
parameter ap_ST_fsm_state19 = 27'd262144;
parameter ap_ST_fsm_state20 = 27'd524288;
parameter ap_ST_fsm_state21 = 27'd1048576;
parameter ap_ST_fsm_state22 = 27'd2097152;
parameter ap_ST_fsm_state23 = 27'd4194304;
parameter ap_ST_fsm_state24 = 27'd8388608;
parameter ap_ST_fsm_state25 = 27'd16777216;
parameter ap_ST_fsm_state26 = 27'd33554432;
parameter ap_ST_fsm_state27 = 27'd67108864;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n;
input [31:0] arr;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] temptemp4;
output temptemp4_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
(* fsm_encoding = "none" *) reg [26:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] grp_fu_126_p2;
reg [31:0] reg_139;
wire ap_CS_fsm_state10;
wire ap_CS_fsm_state21;
wire [0:0] icmp_ln11_fu_145_p2;
reg [0:0] icmp_ln11_reg_205;
wire [30:0] trunc_ln18_fu_151_p1;
reg [30:0] trunc_ln18_reg_214;
wire [31:0] bitcast_ln18_fu_156_p1;
reg [31:0] bitcast_ln18_reg_219;
wire [31:0] grp_fu_131_p1;
reg [31:0] conv_reg_227;
wire ap_CS_fsm_state4;
wire [31:0] bitcast_ln23_fu_169_p1;
wire ap_CS_fsm_state11;
wire [31:0] grp_fu_117_p2;
reg [31:0] sub_reg_237;
wire ap_CS_fsm_state12;
wire [31:0] grp_fu_121_p2;
reg [31:0] mul_reg_243;
wire ap_CS_fsm_state14;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_sum_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_sum_out_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_grp_fu_117_p_din0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_grp_fu_117_p_din1;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_grp_fu_117_p_opcode;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_grp_fu_117_p_ce;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_sum_2_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_sum_2_out_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_grp_fu_117_p_din0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_grp_fu_117_p_din1;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_grp_fu_117_p_opcode;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_grp_fu_117_p_ce;
reg [31:0] sum_0_lcssa_reg_91;
wire ap_CS_fsm_state3;
reg grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_ap_start_reg;
wire ap_CS_fsm_state15;
wire ap_CS_fsm_state16;
wire ap_CS_fsm_state27;
reg [31:0] grp_fu_117_p0;
reg [31:0] grp_fu_117_p1;
wire ap_CS_fsm_state13;
reg [31:0] grp_fu_126_p0;
wire ap_CS_fsm_state5;
wire ap_CS_fsm_state22;
wire [31:0] grp_fu_134_p2;
reg [1:0] grp_fu_117_opcode;
reg grp_fu_117_ce;
reg [26:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
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
reg ap_ST_fsm_state15_blk;
wire ap_ST_fsm_state16_blk;
wire ap_ST_fsm_state17_blk;
wire ap_ST_fsm_state18_blk;
wire ap_ST_fsm_state19_blk;
wire ap_ST_fsm_state20_blk;
wire ap_ST_fsm_state21_blk;
wire ap_ST_fsm_state22_blk;
wire ap_ST_fsm_state23_blk;
wire ap_ST_fsm_state24_blk;
wire ap_ST_fsm_state25_blk;
wire ap_ST_fsm_state26_blk;
wire ap_ST_fsm_state27_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 27'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_17_2 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_ready),
 .trunc_ln(trunc_ln18_reg_214),
 .bitcast_ln18(bitcast_ln18_reg_219),
 .sum_out(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_sum_out),
 .sum_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_sum_out_ap_vld),
 .grp_fu_117_p_din0(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_grp_fu_117_p_din0),
 .grp_fu_117_p_din1(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_grp_fu_117_p_din1),
 .grp_fu_117_p_opcode(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_grp_fu_117_p_opcode),
 .grp_fu_117_p_dout0(grp_fu_117_p2),
 .grp_fu_117_p_ce(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_grp_fu_117_p_ce)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_22_3 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_ap_ready),
 .n_load(n),
 .mul(mul_reg_243),
 .sum_2_out(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_sum_2_out),
 .sum_2_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_sum_2_out_ap_vld),
 .grp_fu_117_p_din0(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_grp_fu_117_p_din0),
 .grp_fu_117_p_din1(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_grp_fu_117_p_din1),
 .grp_fu_117_p_opcode(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_grp_fu_117_p_opcode),
 .grp_fu_117_p_dout0(grp_fu_117_p2),
 .grp_fu_117_p_ce(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_grp_fu_117_p_ce)
);
entry_point_faddfsub_32ns_32ns_32_2_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
faddfsub_32ns_32ns_32_2_full_dsp_1_U9(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_117_p0),
 .din1(grp_fu_117_p1),
 .opcode(grp_fu_117_opcode),
 .ce(grp_fu_117_ce),
 .dout(grp_fu_117_p2)
);
entry_point_fmul_32ns_32ns_32_2_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U10(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(sub_reg_237),
 .din1(sub_reg_237),
 .ce(1'b1),
 .dout(grp_fu_121_p2)
);
entry_point_fdiv_32ns_32ns_32_6_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 6 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fdiv_32ns_32ns_32_6_no_dsp_1_U11(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_126_p0),
 .din1(conv_reg_227),
 .ce(1'b1),
 .dout(grp_fu_126_p2)
);
entry_point_sitofp_32ns_32_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
sitofp_32ns_32_2_no_dsp_1_U12(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(n),
 .ce(1'b1),
 .dout(grp_fu_131_p1)
);
entry_point_fsqrt_32ns_32ns_32_6_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 6 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fsqrt_32ns_32ns_32_6_no_dsp_1_U13(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(32'd0),
 .din1(reg_139),
 .ce(1'b1),
 .dout(grp_fu_134_p2)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln11_fu_145_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln11_fu_145_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 sum_0_lcssa_reg_91 <= 32'd0;
 end else if (((icmp_ln11_reg_205 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 sum_0_lcssa_reg_91 <= grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_sum_out;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln11_fu_145_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 bitcast_ln18_reg_219 <= bitcast_ln18_fu_156_p1;
 trunc_ln18_reg_214 <= trunc_ln18_fu_151_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 conv_reg_227 <= grp_fu_131_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln11_reg_205 <= icmp_ln11_fu_145_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
 mul_reg_243 <= grp_fu_121_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state10))) begin
 reg_139 <= grp_fu_126_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state12)) begin
 sub_reg_237 <= grp_fu_117_p2;
 end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_ap_done == 1'b0)) begin
 ap_ST_fsm_state15_blk = 1'b1;
 end else begin
 ap_ST_fsm_state15_blk = 1'b0;
 end
end
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
 if ((ap_start == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state27)) begin
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
 if ((1'b1 == ap_CS_fsm_state27)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state15)) begin
 grp_fu_117_ce = grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_grp_fu_117_p_ce;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_117_ce = grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_grp_fu_117_p_ce;
 end else begin
 grp_fu_117_ce = 1'b1;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state15)) begin
 grp_fu_117_opcode = grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_grp_fu_117_p_opcode;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_117_opcode = grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_grp_fu_117_p_opcode;
 end else if ((1'b1 == ap_CS_fsm_state11)) begin
 grp_fu_117_opcode = 2'd1;
 end else begin
 grp_fu_117_opcode = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state15)) begin
 grp_fu_117_p0 = grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_grp_fu_117_p_din0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_117_p0 = grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_grp_fu_117_p_din0;
 end else if ((1'b1 == ap_CS_fsm_state11)) begin
 grp_fu_117_p0 = bitcast_ln23_fu_169_p1;
 end else begin
 grp_fu_117_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state15)) begin
 grp_fu_117_p1 = grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_grp_fu_117_p_din1;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_117_p1 = grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_grp_fu_117_p_din1;
 end else if ((1'b1 == ap_CS_fsm_state11)) begin
 grp_fu_117_p1 = reg_139;
 end else begin
 grp_fu_117_p1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state16)) begin
 grp_fu_126_p0 = grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_sum_2_out;
 end else if ((1'b1 == ap_CS_fsm_state5)) begin
 grp_fu_126_p0 = sum_0_lcssa_reg_91;
 end else begin
 grp_fu_126_p0 = 'bx;
 end
end
always @ (*) begin
 if (((icmp_ln11_fu_145_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state10)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state21)) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state27)) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((icmp_ln11_fu_145_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else if (((icmp_ln11_fu_145_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((1'b1 == ap_CS_fsm_state2) & (grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_done == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
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
 ap_NS_fsm = ap_ST_fsm_state15;
 end
 ap_ST_fsm_state15 : begin
 if (((1'b1 == ap_CS_fsm_state15) & (grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_ap_done == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state16;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state15;
 end
 end
 ap_ST_fsm_state16 : begin
 ap_NS_fsm = ap_ST_fsm_state17;
 end
 ap_ST_fsm_state17 : begin
 ap_NS_fsm = ap_ST_fsm_state18;
 end
 ap_ST_fsm_state18 : begin
 ap_NS_fsm = ap_ST_fsm_state19;
 end
 ap_ST_fsm_state19 : begin
 ap_NS_fsm = ap_ST_fsm_state20;
 end
 ap_ST_fsm_state20 : begin
 ap_NS_fsm = ap_ST_fsm_state21;
 end
 ap_ST_fsm_state21 : begin
 ap_NS_fsm = ap_ST_fsm_state22;
 end
 ap_ST_fsm_state22 : begin
 ap_NS_fsm = ap_ST_fsm_state23;
 end
 ap_ST_fsm_state23 : begin
 ap_NS_fsm = ap_ST_fsm_state24;
 end
 ap_ST_fsm_state24 : begin
 ap_NS_fsm = ap_ST_fsm_state25;
 end
 ap_ST_fsm_state25 : begin
 ap_NS_fsm = ap_ST_fsm_state26;
 end
 ap_ST_fsm_state26 : begin
 ap_NS_fsm = ap_ST_fsm_state27;
 end
 ap_ST_fsm_state27 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_return = 32'd0;
assign bitcast_ln18_fu_156_p1 = arr;
assign bitcast_ln23_fu_169_p1 = arr;
assign grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_110_ap_start_reg;
assign icmp_ln11_fu_145_p2 = (($signed(n) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign temptemp1 = n;
assign temptemp2 = grp_fu_126_p2;
assign temptemp3 = grp_fu_126_p2;
assign temptemp4 = grp_fu_134_p2;
assign trunc_ln18_fu_151_p1 = n[30:0];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_17_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 trunc_ln,
 bitcast_ln18,
 sum_out,
 sum_out_ap_vld,
 grp_fu_117_p_din0,
 grp_fu_117_p_din1,
 grp_fu_117_p_opcode,
 grp_fu_117_p_dout0,
 grp_fu_117_p_ce
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] trunc_ln;
input [31:0] bitcast_ln18;
output [31:0] sum_out;
output sum_out_ap_vld;
output [31:0] grp_fu_117_p_din0;
output [31:0] grp_fu_117_p_din1;
output [0:0] grp_fu_117_p_opcode;
input [31:0] grp_fu_117_p_dout0;
output grp_fu_117_p_ce;
reg ap_idle;
reg sum_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_enable_reg_pp0_iter2;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_state3_pp0_stage0_iter2;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln17_fu_84_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg [31:0] sum_fu_40;
reg [31:0] ap_sig_allocacmp_sum_load;
wire ap_block_pp0_stage0;
wire ap_loop_init;
reg [30:0] i_fu_44;
wire [30:0] add_ln17_fu_89_p2;
wire ap_block_pp0_stage0_01001;
wire ap_block_pp0_stage0_00001;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(ap_start),
 .ap_ready(ap_ready),
 .ap_done(ap_done),
 .ap_start_int(ap_start_int),
 .ap_loop_init(ap_loop_init),
 .ap_ready_int(ap_ready_int),
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
 .ap_loop_exit_done(ap_done_int),
 .ap_continue_int(ap_continue_int),
 .ap_done_int(ap_done_int)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_done_reg <= 1'b0;
 end else begin
 if ((ap_continue_int == 1'b1)) begin
 ap_done_reg <= 1'b0;
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_enable_reg_pp0_iter1 <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter2 <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
 ap_enable_reg_pp0_iter2 <= 1'b0;
 end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_fu_44 <= 31'd0;
 end else if (((icmp_ln17_fu_84_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_fu_44 <= add_ln17_fu_89_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 sum_fu_40 <= 32'd0;
 end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
 sum_fu_40 <= grp_fu_117_p_dout0;
 end
 end
end
always @ (*) begin
 if (((icmp_ln17_fu_84_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter1_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter1_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
 ap_idle_pp0 = 1'b1;
 end else begin
 ap_idle_pp0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
 ap_sig_allocacmp_sum_load = grp_fu_117_p_dout0;
 end else begin
 ap_sig_allocacmp_sum_load = sum_fu_40;
 end
end
always @ (*) begin
 if (((icmp_ln17_fu_84_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 sum_out_ap_vld = 1'b1;
 end else begin
 sum_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_pp0_stage0 : begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln17_fu_89_p2 = (i_fu_44 + 31'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign grp_fu_117_p_ce = 1'b1;
assign grp_fu_117_p_din0 = ap_sig_allocacmp_sum_load;
assign grp_fu_117_p_din1 = bitcast_ln18;
assign grp_fu_117_p_opcode = 2'd0;
assign icmp_ln17_fu_84_p2 = ((i_fu_44 == trunc_ln) ? 1'b1 : 1'b0);
assign sum_out = sum_fu_40;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_22_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n_load,
 mul,
 sum_2_out,
 sum_2_out_ap_vld,
 grp_fu_117_p_din0,
 grp_fu_117_p_din1,
 grp_fu_117_p_opcode,
 grp_fu_117_p_dout0,
 grp_fu_117_p_ce
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n_load;
input [31:0] mul;
output [31:0] sum_2_out;
output sum_2_out_ap_vld;
output [31:0] grp_fu_117_p_din0;
output [31:0] grp_fu_117_p_din1;
output [0:0] grp_fu_117_p_opcode;
input [31:0] grp_fu_117_p_dout0;
output grp_fu_117_p_ce;
reg ap_idle;
reg sum_2_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_enable_reg_pp0_iter2;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_state3_pp0_stage0_iter2;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln22_fu_80_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg [31:0] sum_fu_32;
reg [31:0] ap_sig_allocacmp_sum_load;
wire ap_block_pp0_stage0;
wire ap_loop_init;
reg [30:0] i_1_fu_36;
wire [30:0] add_ln22_fu_85_p2;
wire ap_block_pp0_stage0_01001;
wire [31:0] i_1_cast_fu_76_p1;
wire ap_block_pp0_stage0_00001;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(ap_start),
 .ap_ready(ap_ready),
 .ap_done(ap_done),
 .ap_start_int(ap_start_int),
 .ap_loop_init(ap_loop_init),
 .ap_ready_int(ap_ready_int),
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
 .ap_loop_exit_done(ap_done_int),
 .ap_continue_int(ap_continue_int),
 .ap_done_int(ap_done_int)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_done_reg <= 1'b0;
 end else begin
 if ((ap_continue_int == 1'b1)) begin
 ap_done_reg <= 1'b0;
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_enable_reg_pp0_iter1 <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter2 <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
 ap_enable_reg_pp0_iter2 <= 1'b0;
 end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_1_fu_36 <= 31'd0;
 end else if (((icmp_ln22_fu_80_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_1_fu_36 <= add_ln22_fu_85_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 sum_fu_32 <= 32'd0;
 end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
 sum_fu_32 <= grp_fu_117_p_dout0;
 end
 end
end
always @ (*) begin
 if (((icmp_ln22_fu_80_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter1_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter1_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
 ap_idle_pp0 = 1'b1;
 end else begin
 ap_idle_pp0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
 ap_sig_allocacmp_sum_load = grp_fu_117_p_dout0;
 end else begin
 ap_sig_allocacmp_sum_load = sum_fu_32;
 end
end
always @ (*) begin
 if (((icmp_ln22_fu_80_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 sum_2_out_ap_vld = 1'b1;
 end else begin
 sum_2_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_pp0_stage0 : begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln22_fu_85_p2 = (i_1_fu_36 + 31'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign grp_fu_117_p_ce = 1'b1;
assign grp_fu_117_p_din0 = ap_sig_allocacmp_sum_load;
assign grp_fu_117_p_din1 = mul;
assign grp_fu_117_p_opcode = 2'd0;
assign i_1_cast_fu_76_p1 = i_1_fu_36;
assign icmp_ln22_fu_80_p2 = (($signed(i_1_cast_fu_76_p1) < $signed(n_load)) ? 1'b1 : 1'b0);
assign sum_2_out = sum_fu_32;
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
module entry_point_fdiv_32ns_32ns_32_6_no_dsp_1
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
module entry_point_flow_control_loop_pipe_sequential_init(
 ap_clk,
 ap_rst,
 ap_start,
 ap_ready,
 ap_done,
 ap_start_int,
 ap_ready_int,
 ap_done_int,
 ap_continue_int,
 ap_loop_init,
 ap_loop_exit_ready,
 ap_loop_exit_done
);
input ap_clk;
input ap_rst;
input ap_start;
output ap_ready;
output ap_done;
output ap_start_int;
input ap_ready_int;
input ap_done_int;
output ap_continue_int;
output ap_loop_init;
wire ap_loop_init;
reg ap_loop_init_int;
reg ap_done;
reg ap_done_cache;
input ap_loop_exit_ready;
input ap_loop_exit_done;
initial begin
#0 ap_loop_init_int = 1'b1;
#0 ap_done_cache = 1'b0;
end
assign ap_start_int = ap_start;
assign ap_continue_int = 1'b1;
assign ap_ready = ap_loop_exit_ready;
always @ (posedge ap_clk)
begin
 if (ap_rst == 1'b1) begin
 ap_loop_init_int <= 1'b1;
 end else if(ap_loop_exit_done == 1'b1) begin
 ap_loop_init_int <= 1'b1;
 end else if(ap_ready_int == 1'b1) begin
 ap_loop_init_int <= 1'b0;
 end
end
assign ap_loop_init = ap_loop_init_int & ap_start;
always @(posedge ap_clk)
begin
 if (ap_rst == 1'b1) begin
 ap_done_cache <= 1'b0;
 end else if (ap_done_int == 1'b1) begin
 ap_done_cache <= 1'b1;
 end else if (ap_start_int == 1'b1) begin
 ap_done_cache <= 1'b0;
 end
end
always @(*)
begin
 if ((ap_done_int == 1'b1) || ((ap_done_cache == 1'b1) && (ap_start_int == 1'b0))) begin
 ap_done = 1'b1;
 end else begin
 ap_done = 1'b0;
 end
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
module entry_point_fsqrt_32ns_32ns_32_6_no_dsp_1
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
wire [31:0] a_tdata;
wire r_tvalid;
wire [31:0] r_tdata;
reg [din1_WIDTH-1:0] din1_buf1;
reg ce_r;
wire [dout_WIDTH-1:0] dout_i;
reg [dout_WIDTH-1:0] dout_r;
                                                                                                                                                                                                                                                                            assign aclk = clk;
assign aclken = ce_r;
assign a_tvalid = 1'b1;
assign a_tdata = din1_buf1;
assign dout_i = r_tdata;
always @(posedge clk) begin
 if (ce) begin
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
module entry_point_sitofp_32ns_32_2_no_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 2,
 din0_WIDTH = 32,
 dout_WIDTH = 32
)(
 input wire clk,
 input wire reset,
 input wire ce,
 input wire [din0_WIDTH-1:0] din0,
 output wire [dout_WIDTH-1:0] dout
);
wire a_tvalid;
wire [din0_WIDTH-1:0] a_tdata;
wire r_tvalid;
wire [dout_WIDTH-1:0] r_tdata;
reg [din0_WIDTH-1:0] din0_buf1;
reg ce_r;
wire [dout_WIDTH-1:0] dout_i;
reg [dout_WIDTH-1:0] dout_r;
                                                                                                                                                                                                                              assign a_tvalid = 1'b1;
assign a_tdata = din0_buf1;
assign dout_i = r_tdata;
always @(posedge clk) begin
 if (ce) begin
 din0_buf1 <= din0;
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
