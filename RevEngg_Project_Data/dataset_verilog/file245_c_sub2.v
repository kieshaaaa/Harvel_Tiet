module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 principal,
 rate,
 year,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 4'd1;
parameter ap_ST_fsm_state2 = 4'd2;
parameter ap_ST_fsm_state3 = 4'd4;
parameter ap_ST_fsm_state4 = 4'd8;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] principal;
input [31:0] rate;
input [31:0] year;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] ci_fu_84_p1;
reg [31:0] ci_reg_147;
wire [31:0] empty_fu_89_p1;
reg [31:0] empty_reg_153;
wire [31:0] bitcast_ln11_fu_94_p1;
reg [31:0] bitcast_ln11_reg_158;
wire [0:0] or_ln10_fu_125_p2;
reg [0:0] or_ln10_reg_163;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ci_1_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ci_1_out_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_grp_fu_80_p_din0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_grp_fu_80_p_din1;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_grp_fu_80_p_opcode;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_grp_fu_80_p_ce;
reg grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ap_start_reg;
wire ap_CS_fsm_state2;
wire ap_CS_fsm_state3;
wire ap_CS_fsm_state4;
reg [31:0] grp_fu_80_p0;
reg [31:0] grp_fu_80_p1;
wire [7:0] tmp_1_fu_99_p4;
wire [22:0] trunc_ln10_fu_109_p1;
wire [0:0] icmp_ln10_2_fu_119_p2;
wire [0:0] icmp_ln10_fu_113_p2;
wire [31:0] grp_fu_80_p2;
reg [1:0] grp_fu_80_opcode;
reg grp_fu_80_ce;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_10_1 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ap_ready),
 .ci(ci_reg_147),
 .or_ln10_1(or_ln10_reg_163),
 .empty(empty_reg_153),
 .bitcast_ln11(bitcast_ln11_reg_158),
 .ci_1_out(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ci_1_out),
 .ci_1_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ci_1_out_ap_vld),
 .grp_fu_80_p_din0(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_grp_fu_80_p_din0),
 .grp_fu_80_p_din1(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_grp_fu_80_p_din1),
 .grp_fu_80_p_opcode(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_grp_fu_80_p_opcode),
 .grp_fu_80_p_dout0(grp_fu_80_p2),
 .grp_fu_80_p_ce(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_grp_fu_80_p_ce)
);
entry_point_faddfsub_32ns_32ns_32_2_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
faddfsub_32ns_32ns_32_2_full_dsp_1_U15(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_80_p0),
 .din1(grp_fu_80_p1),
 .opcode(grp_fu_80_opcode),
 .ce(grp_fu_80_ce),
 .dout(grp_fu_80_p2)
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
 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 bitcast_ln11_reg_158 <= bitcast_ln11_fu_94_p1;
 ci_reg_147 <= ci_fu_84_p1;
 empty_reg_153 <= empty_fu_89_p1;
 or_ln10_reg_163 <= or_ln10_fu_125_p2;
 end
end
always @ (*) begin
 if ((ap_start == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
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
 if ((1'b1 == ap_CS_fsm_state4)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_80_ce = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_grp_fu_80_p_ce;
 end else begin
 grp_fu_80_ce = 1'b1;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_80_opcode = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_grp_fu_80_p_opcode;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_fu_80_opcode = 2'd1;
 end else begin
 grp_fu_80_opcode = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_80_p0 = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_grp_fu_80_p_din0;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_fu_80_p0 = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ci_1_out;
 end else begin
 grp_fu_80_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_80_p1 = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_grp_fu_80_p_din1;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_fu_80_p1 = ci_reg_147;
 end else begin
 grp_fu_80_p1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
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
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_return = 32'd0;
assign bitcast_ln11_fu_94_p1 = rate;
assign ci_fu_84_p1 = principal;
assign empty_fu_89_p1 = year;
assign grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_71_ap_start_reg;
assign icmp_ln10_2_fu_119_p2 = ((trunc_ln10_fu_109_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln10_fu_113_p2 = ((tmp_1_fu_99_p4 != 8'd255) ? 1'b1 : 1'b0);
assign or_ln10_fu_125_p2 = (icmp_ln10_fu_113_p2 | icmp_ln10_2_fu_119_p2);
assign temptemp1 = grp_fu_80_p2;
assign tmp_1_fu_99_p4 = {{year[30:23]}};
assign trunc_ln10_fu_109_p1 = year[22:0];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_10_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 ci,
 or_ln10_1,
 empty,
 bitcast_ln11,
 ci_1_out,
 ci_1_out_ap_vld,
 grp_fu_80_p_din0,
 grp_fu_80_p_din1,
 grp_fu_80_p_opcode,
 grp_fu_80_p_dout0,
 grp_fu_80_p_ce
);
parameter ap_ST_fsm_pp0_stage0 = 10'd1;
parameter ap_ST_fsm_pp0_stage1 = 10'd2;
parameter ap_ST_fsm_pp0_stage2 = 10'd4;
parameter ap_ST_fsm_pp0_stage3 = 10'd8;
parameter ap_ST_fsm_pp0_stage4 = 10'd16;
parameter ap_ST_fsm_pp0_stage5 = 10'd32;
parameter ap_ST_fsm_pp0_stage6 = 10'd64;
parameter ap_ST_fsm_pp0_stage7 = 10'd128;
parameter ap_ST_fsm_pp0_stage8 = 10'd256;
parameter ap_ST_fsm_pp0_stage9 = 10'd512;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] ci;
input [0:0] or_ln10_1;
input [31:0] empty;
input [31:0] bitcast_ln11;
output [31:0] ci_1_out;
output ci_1_out_ap_vld;
output [31:0] grp_fu_80_p_din0;
output [31:0] grp_fu_80_p_din1;
output [0:0] grp_fu_80_p_opcode;
input [31:0] grp_fu_80_p_dout0;
output grp_fu_80_p_ce;
reg ap_idle;
reg ci_1_out_ap_vld;
(* fsm_encoding = "none" *) reg [9:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
reg ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_CS_fsm_pp0_stage2;
wire ap_block_state3_pp0_stage2_iter0;
wire ap_block_pp0_stage2_subdone;
wire [0:0] and_ln10_1_fu_155_p2;
reg ap_condition_exit_pp0_iter0_stage2;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_CS_fsm_pp0_stage9;
wire ap_block_state10_pp0_stage9_iter0;
wire ap_block_pp0_stage9_subdone;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state11_pp0_stage0_iter1;
wire ap_block_pp0_stage0_11001;
reg [31:0] i_1_reg_214;
wire [31:0] grp_fu_94_p1;
reg [31:0] conv_reg_220;
wire ap_CS_fsm_pp0_stage1;
wire ap_block_state2_pp0_stage1_iter0;
wire ap_block_state12_pp0_stage1_iter1;
wire ap_block_pp0_stage1_11001;
reg [0:0] and_ln10_1_reg_226;
wire ap_block_pp0_stage2_11001;
reg [31:0] ci_1_load_reg_230;
wire [31:0] grp_fu_85_p2;
reg [31:0] mul_reg_236;
wire ap_CS_fsm_pp0_stage3;
wire ap_block_state4_pp0_stage3_iter0;
wire ap_block_pp0_stage3_11001;
wire [31:0] grp_fu_89_p2;
reg [31:0] div_reg_241;
wire ap_block_pp0_stage9_11001;
reg ap_enable_reg_pp0_iter0_reg;
wire ap_block_pp0_stage1_subdone;
reg [31:0] i_fu_42;
wire [31:0] i_2_fu_161_p2;
wire ap_loop_init;
reg [31:0] ap_sig_allocacmp_i_1;
wire ap_block_pp0_stage0;
reg [31:0] ci_1_fu_46;
wire ap_block_pp0_stage2;
wire ap_block_pp0_stage2_01001;
wire ap_CS_fsm_pp0_stage4;
wire ap_block_pp0_stage4;
wire [31:0] bitcast_ln10_fu_115_p1;
wire [7:0] tmp_fu_118_p4;
wire [22:0] trunc_ln10_fu_128_p1;
wire [0:0] icmp_ln10_1_fu_138_p2;
wire [0:0] icmp_ln10_fu_132_p2;
wire [0:0] or_ln10_fu_144_p2;
wire [0:0] and_ln10_fu_150_p2;
wire [0:0] tmp_2_fu_97_p2;
wire ap_block_pp0_stage0_00001;
wire ap_block_pp0_stage2_00001;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [9:0] ap_NS_fsm;
wire ap_block_pp0_stage0_subdone;
reg ap_idle_pp0_1to1;
wire ap_block_pp0_stage3_subdone;
wire ap_block_state5_pp0_stage4_iter0;
wire ap_block_pp0_stage4_subdone;
wire ap_block_state6_pp0_stage5_iter0;
wire ap_block_pp0_stage5_subdone;
wire ap_block_state7_pp0_stage6_iter0;
wire ap_block_pp0_stage6_subdone;
wire ap_block_state8_pp0_stage7_iter0;
wire ap_block_pp0_stage7_subdone;
wire ap_block_state9_pp0_stage8_iter0;
wire ap_block_pp0_stage8_subdone;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_fmul_32ns_32ns_32_2_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U2(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(ci_1_fu_46),
 .din1(bitcast_ln11),
 .ce(1'b1),
 .dout(grp_fu_85_p2)
);
entry_point_fdiv_32ns_32ns_32_6_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 6 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fdiv_32ns_32ns_32_6_no_dsp_1_U3(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(mul_reg_236),
 .din1(32'd1120403456),
 .ce(1'b1),
 .dout(grp_fu_89_p2)
);
entry_point_sitofp_32ns_32_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
sitofp_32ns_32_2_no_dsp_1_U4(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(ap_sig_allocacmp_i_1),
 .ce(1'b1),
 .dout(grp_fu_94_p1)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U5(
 .din0(conv_reg_220),
 .din1(empty),
 .opcode(5'd4),
 .dout(tmp_2_fu_97_p2)
);
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(ap_start),
 .ap_ready(ap_ready),
 .ap_done(ap_done),
 .ap_start_int(ap_start_int),
 .ap_loop_init(ap_loop_init),
 .ap_ready_int(ap_ready_int),
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter0_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
 ap_enable_reg_pp0_iter0_reg <= 1'b0;
 end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 ap_enable_reg_pp0_iter0_reg <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
 ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 ci_1_fu_46 <= ci;
 end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ci_1_fu_46 <= grp_fu_80_p_dout0;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 i_fu_42 <= 32'd0;
 end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'd1 == and_ln10_1_fu_155_p2))) begin
 i_fu_42 <= i_2_fu_161_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
 and_ln10_1_reg_226 <= and_ln10_1_fu_155_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'd1 == and_ln10_1_fu_155_p2))) begin
 ci_1_load_reg_230 <= ci_1_fu_46;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 conv_reg_220 <= grp_fu_94_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9) & (1'd1 == and_ln10_1_reg_226))) begin
 div_reg_241 <= grp_fu_89_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 i_1_reg_214 <= ap_sig_allocacmp_i_1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3) & (1'd1 == and_ln10_1_reg_226))) begin
 mul_reg_236 <= grp_fu_85_p2;
 end
end
always @ (*) begin
 if (((1'd0 == and_ln10_1_fu_155_p2) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
 ap_condition_exit_pp0_iter0_stage2 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage2 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 ap_enable_reg_pp0_iter0 = ap_start_int;
 end else begin
 ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
 end
end
always @ (*) begin
 if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
 ap_idle_pp0 = 1'b1;
 end else begin
 ap_idle_pp0 = 1'b0;
 end
end
always @ (*) begin
 if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
 ap_idle_pp0_1to1 = 1'b1;
 end else begin
 ap_idle_pp0_1to1 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 ap_sig_allocacmp_i_1 = 32'd0;
 end else begin
 ap_sig_allocacmp_i_1 = i_fu_42;
 end
end
always @ (*) begin
 if (((1'd0 == and_ln10_1_fu_155_p2) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
 ci_1_out_ap_vld = 1'b1;
 end else begin
 ci_1_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_pp0_stage0 : begin
 if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end
 end
 ap_ST_fsm_pp0_stage1 : begin
 if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
 end
 end
 ap_ST_fsm_pp0_stage2 : begin
 if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage2;
 end
 end
 ap_ST_fsm_pp0_stage3 : begin
 if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage3;
 end
 end
 ap_ST_fsm_pp0_stage4 : begin
 if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage4;
 end
 end
 ap_ST_fsm_pp0_stage5 : begin
 if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage6;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage5;
 end
 end
 ap_ST_fsm_pp0_stage6 : begin
 if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage7;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage6;
 end
 end
 ap_ST_fsm_pp0_stage7 : begin
 if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage8;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage7;
 end
 end
 ap_ST_fsm_pp0_stage8 : begin
 if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage9;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage8;
 end
 end
 ap_ST_fsm_pp0_stage9 : begin
 if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage9;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign and_ln10_1_fu_155_p2 = (tmp_2_fu_97_p2 & and_ln10_fu_150_p2);
assign and_ln10_fu_150_p2 = (or_ln10_fu_144_p2 & or_ln10_1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_block_state10_pp0_stage9_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state11_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state12_pp0_stage1_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state6_pp0_stage5_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state7_pp0_stage6_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state8_pp0_stage7_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state9_pp0_stage8_iter0 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign bitcast_ln10_fu_115_p1 = conv_reg_220;
assign ci_1_out = ci_1_fu_46;
assign grp_fu_80_p_ce = 1'b1;
assign grp_fu_80_p_din0 = ci_1_load_reg_230;
assign grp_fu_80_p_din1 = div_reg_241;
assign grp_fu_80_p_opcode = 2'd0;
assign i_2_fu_161_p2 = (i_1_reg_214 + 32'd1);
assign icmp_ln10_1_fu_138_p2 = ((trunc_ln10_fu_128_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln10_fu_132_p2 = ((tmp_fu_118_p4 != 8'd255) ? 1'b1 : 1'b0);
assign or_ln10_fu_144_p2 = (icmp_ln10_fu_132_p2 | icmp_ln10_1_fu_138_p2);
assign tmp_fu_118_p4 = {{bitcast_ln10_fu_115_p1[30:23]}};
assign trunc_ln10_fu_128_p1 = bitcast_ln10_fu_115_p1[22:0];
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
