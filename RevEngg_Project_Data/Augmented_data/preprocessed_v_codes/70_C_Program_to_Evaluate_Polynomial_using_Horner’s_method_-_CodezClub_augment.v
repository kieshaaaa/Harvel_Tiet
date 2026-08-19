module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 degree,
 coeff,
 x,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
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
input [31:0] degree;
input [31:0] coeff;
input [31:0] x;
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
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [31:0] i_reg_121;
wire [31:0] empty_fu_96_p1;
reg [31:0] empty_reg_129;
wire [31:0] empty_7_fu_101_p1;
reg [31:0] empty_7_reg_134;
wire grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_sum_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_sum_out_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_grp_fu_84_p_din0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_grp_fu_84_p_din1;
wire [1:0] grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_grp_fu_84_p_opcode;
wire grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_grp_fu_84_p_ce;
reg grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_ap_start_reg;
wire ap_CS_fsm_state2;
wire ap_CS_fsm_state3;
wire [0:0] tmp_fu_88_p3;
wire ap_CS_fsm_state4;
reg [31:0] grp_fu_84_p0;
reg [31:0] grp_fu_84_p1;
wire [31:0] grp_fu_84_p2;
reg grp_fu_84_ce;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_18_2 grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_ap_ready),
 .sext_ln18(i_reg_121),
 .empty_6(empty_7_reg_134),
 .empty(empty_reg_129),
 .sum_out(grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_sum_out),
 .sum_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_sum_out_ap_vld),
 .grp_fu_84_p_din0(grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_grp_fu_84_p_din0),
 .grp_fu_84_p_din1(grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_grp_fu_84_p_din1),
 .grp_fu_84_p_opcode(grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_grp_fu_84_p_opcode),
 .grp_fu_84_p_dout0(grp_fu_84_p2),
 .grp_fu_84_p_ce(grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_grp_fu_84_p_ce)
);
entry_point_fadd_32ns_32ns_32_2_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_2_full_dsp_1_U8(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_84_p0),
 .din1(grp_fu_84_p1),
 .ce(grp_fu_84_ce),
 .dout(grp_fu_84_p2)
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
 grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 empty_7_reg_134 <= empty_7_fu_101_p1;
 empty_reg_129 <= empty_fu_96_p1;
 i_reg_121 <= degree;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_ap_done == 1'b0)) begin
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
 if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state1))) begin
 grp_fu_84_ce = grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_grp_fu_84_p_ce;
 end else begin
 grp_fu_84_ce = 1'b1;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state1))) begin
 grp_fu_84_p0 = grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_grp_fu_84_p_din0;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_fu_84_p0 = grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_sum_out;
 end else begin
 grp_fu_84_p0 = 'bx;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state1))) begin
 grp_fu_84_p1 = grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_grp_fu_84_p_din1;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_fu_84_p1 = empty_7_reg_134;
 end else begin
 grp_fu_84_p1 = 'bx;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (tmp_fu_88_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
assign empty_7_fu_101_p1 = coeff;
assign empty_fu_96_p1 = x;
assign grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_18_2_fu_75_ap_start_reg;
assign temptemp1 = 32'd0;
assign temptemp2 = grp_fu_84_p2;
assign tmp_fu_88_p3 = degree[32'd31];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_18_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 sext_ln18,
 empty_6,
 empty,
 sum_out,
 sum_out_ap_vld,
 grp_fu_84_p_din0,
 grp_fu_84_p_din1,
 grp_fu_84_p_opcode,
 grp_fu_84_p_dout0,
 grp_fu_84_p_ce
);
parameter ap_ST_fsm_pp0_stage0 = 4'd1;
parameter ap_ST_fsm_pp0_stage1 = 4'd2;
parameter ap_ST_fsm_pp0_stage2 = 4'd4;
parameter ap_ST_fsm_pp0_stage3 = 4'd8;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] sext_ln18;
input [31:0] empty_6;
input [31:0] empty;
output [31:0] sum_out;
output sum_out_ap_vld;
output [31:0] grp_fu_84_p_din0;
output [31:0] grp_fu_84_p_din1;
output [1:0] grp_fu_84_p_opcode;
input [31:0] grp_fu_84_p_dout0;
output grp_fu_84_p_ce;
reg ap_idle;
reg sum_out_ap_vld;
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
reg ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_CS_fsm_pp0_stage1;
wire ap_block_pp0_stage1_subdone;
reg ap_enable_reg_pp0_iter0_reg;
wire [0:0] icmp_ln18_fu_92_p2;
reg ap_condition_exit_pp0_iter0_stage1;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_CS_fsm_pp0_stage3;
wire ap_block_pp0_stage3_subdone;
wire ap_block_pp0_stage0_11001;
wire ap_block_pp0_stage1_11001;
reg [31:0] add_reg_155;
wire ap_CS_fsm_pp0_stage2;
wire ap_block_pp0_stage2_11001;
wire ap_block_pp0_stage0_subdone;
reg [31:0] sum_fu_34;
wire [31:0] grp_fu_71_p2;
wire ap_loop_init;
wire ap_block_pp0_stage1;
reg [63:0] i_fu_38;
wire [63:0] add_ln20_fu_102_p2;
wire signed [63:0] sext_ln18_cast_fu_75_p1;
wire ap_block_pp0_stage1_01001;
wire ap_block_pp0_stage3;
wire ap_block_pp0_stage0;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [3:0] ap_NS_fsm;
reg ap_idle_pp0_1to1;
wire ap_block_pp0_stage2_subdone;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
wire ap_block_pp0_stage1_00001;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 sum_fu_34 = 32'd0;
#0 i_fu_38 = 64'd0;
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
 .din0(add_reg_155),
 .din1(empty),
 .ce(1'b1),
 .dout(grp_fu_71_p2)
);
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(ap_start),
 .ap_ready(ap_ready_sig),
 .ap_done(ap_done_sig),
 .ap_start_int(ap_start_int),
 .ap_loop_init(ap_loop_init),
 .ap_ready_int(ap_ready_int),
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter0_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
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
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
 ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 i_fu_38 <= sext_ln18_cast_fu_75_p1;
 end else if (((icmp_ln18_fu_92_p2 == 1'd1) & (ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 i_fu_38 <= add_ln20_fu_102_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 sum_fu_34 <= 32'd0;
 end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
 sum_fu_34 <= grp_fu_71_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
 add_reg_155 <= grp_fu_84_p_dout0;
 end
end
always @ (*) begin
 if (((icmp_ln18_fu_92_p2 == 1'd0) & (ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_condition_exit_pp0_iter0_stage1 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage1 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
 if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
 if (((ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (icmp_ln18_fu_92_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 sum_out_ap_vld = 1'b1;
 end else begin
 sum_out_ap_vld = 1'b0;
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
 if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
 end
 end
 ap_ST_fsm_pp0_stage2 : begin
 if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage2;
 end
 end
 ap_ST_fsm_pp0_stage3 : begin
 if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage3;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln20_fu_102_p2 = ($signed(i_fu_38) + $signed(64'd18446744073709551615));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_84_p_ce = 1'b1;
assign grp_fu_84_p_din0 = sum_fu_34;
assign grp_fu_84_p_din1 = empty_6;
assign grp_fu_84_p_opcode = 2'd0;
assign icmp_ln18_fu_92_p2 = (($signed(i_fu_38) > $signed(64'd0)) ? 1'b1 : 1'b0);
assign sext_ln18_cast_fu_75_p1 = $signed(sext_ln18);
assign sum_out = sum_fu_34;
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
