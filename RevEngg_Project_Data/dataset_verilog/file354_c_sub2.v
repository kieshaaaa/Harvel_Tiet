module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 size,
 arr_i,
 arr_o,
 arr_o_ap_vld,
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
input [31:0] size;
input [31:0] arr_i;
output [31:0] arr_o;
output arr_o_ap_vld;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] arr_o;
reg arr_o_ap_vld;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [30:0] add_ln11_fu_142_p2;
reg [30:0] add_ln11_reg_225;
wire ap_CS_fsm_state2;
reg [31:0] arr_read_reg_231;
wire [0:0] icmp_ln11_fu_137_p2;
wire [30:0] trunc_ln6_fu_148_p1;
reg [30:0] trunc_ln6_reg_237;
wire ap_CS_fsm_state3;
wire [0:0] icmp_ln13_fu_153_p2;
reg [0:0] icmp_ln13_reg_242;
wire [0:0] icmp_ln11_1_fu_161_p2;
reg [0:0] icmp_ln11_1_reg_246;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_arr;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_arr_ap_vld;
reg [31:0] ap_phi_mux_empty_phi_fu_81_p4;
reg [31:0] empty_reg_78;
wire ap_CS_fsm_state4;
reg ap_predicate_op40_call_state4;
reg ap_block_state4_on_subcall_done;
reg [31:0] ap_phi_mux_count_0_lcssa_phi_fu_93_p4;
reg [31:0] count_0_lcssa_reg_89;
reg grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_ap_start_reg;
reg [31:0] indvars_iv_fu_40;
wire [31:0] add_ln11_1_fu_166_p2;
reg [30:0] i_fu_44;
reg [31:0] indvars_iv3_fu_48;
wire [31:0] add_ln11_2_fu_172_p2;
wire [31:0] zext_ln11_fu_133_p1;
wire [31:0] zext_ln11_1_fu_158_p1;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_14_3 grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_ap_ready),
 .zext_ln11_1(trunc_ln6_reg_237),
 .zext_ln11(size),
 .arr(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_arr),
 .arr_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_arr_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln11_1_fu_161_p2 == 1'd1) & (icmp_ln13_fu_153_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln11_1_fu_161_p2 == 1'd0) & (icmp_ln13_fu_153_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 count_0_lcssa_reg_89 <= 32'd1;
 end else if (((1'b0 == ap_block_state4_on_subcall_done) & (icmp_ln11_1_reg_246 == 1'd1) & (icmp_ln13_reg_242 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 count_0_lcssa_reg_89 <= indvars_iv3_fu_48;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln11_1_fu_161_p2 == 1'd0) & (icmp_ln13_fu_153_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 empty_reg_78 <= arr_read_reg_231;
 end else if (((1'b0 == ap_block_state4_on_subcall_done) & (icmp_ln11_1_reg_246 == 1'd1) & (icmp_ln13_reg_242 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 empty_reg_78 <= 32'd4294967295;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 i_fu_44 <= 31'd0;
 end else if (((1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4))) begin
 i_fu_44 <= add_ln11_reg_225;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 indvars_iv3_fu_48 <= size;
 end else if (((1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4))) begin
 indvars_iv3_fu_48 <= add_ln11_2_fu_172_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 indvars_iv_fu_40 <= 32'd1;
 end else if (((1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4))) begin
 indvars_iv_fu_40 <= add_ln11_1_fu_166_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 add_ln11_reg_225 <= add_ln11_fu_142_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln11_fu_137_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 arr_read_reg_231 <= arr_i;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 icmp_ln11_1_reg_246 <= icmp_ln11_1_fu_161_p2;
 icmp_ln13_reg_242 <= icmp_ln13_fu_153_p2;
 trunc_ln6_reg_237 <= trunc_ln6_fu_148_p1;
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
 if ((1'b1 == ap_block_state4_on_subcall_done)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln11_fu_137_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
 if (((icmp_ln11_1_reg_246 == 1'd1) & (icmp_ln13_reg_242 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_phi_mux_count_0_lcssa_phi_fu_93_p4 = indvars_iv3_fu_48;
 end else begin
 ap_phi_mux_count_0_lcssa_phi_fu_93_p4 = count_0_lcssa_reg_89;
 end
end
always @ (*) begin
 if (((icmp_ln11_1_reg_246 == 1'd1) & (icmp_ln13_reg_242 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_phi_mux_empty_phi_fu_81_p4 = 32'd4294967295;
 end else begin
 ap_phi_mux_empty_phi_fu_81_p4 = empty_reg_78;
 end
end
always @ (*) begin
 if (((icmp_ln11_fu_137_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((ap_predicate_op40_call_state4 == 1'b1) & (grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_arr_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 arr_o = grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_arr;
 end else begin
 arr_o = arr_i;
 end
end
always @ (*) begin
 if (((ap_predicate_op40_call_state4 == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 arr_o_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_arr_ap_vld;
 end else begin
 arr_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_state4_on_subcall_done) & (icmp_ln13_reg_242 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_state4_on_subcall_done) & (icmp_ln13_reg_242 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
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
 if (((icmp_ln11_fu_137_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
 if (((1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln11_1_fu_166_p2 = (indvars_iv_fu_40 + 32'd1);
assign add_ln11_2_fu_172_p2 = ($signed(indvars_iv3_fu_48) + $signed(32'd4294967295));
assign add_ln11_fu_142_p2 = (i_fu_44 + 31'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
always @ (*) begin
 ap_block_state4_on_subcall_done = ((ap_predicate_op40_call_state4 == 1'b1) & (grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_ap_done == 1'b0));
end
always @ (*) begin
 ap_predicate_op40_call_state4 = ((icmp_ln11_1_reg_246 == 1'd1) & (icmp_ln13_reg_242 == 1'd0));
end
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_101_ap_start_reg;
assign icmp_ln11_1_fu_161_p2 = (($signed(zext_ln11_1_fu_158_p1) < $signed(size)) ? 1'b1 : 1'b0);
assign icmp_ln11_fu_137_p2 = (($signed(zext_ln11_fu_133_p1) < $signed(size)) ? 1'b1 : 1'b0);
assign icmp_ln13_fu_153_p2 = ((arr_read_reg_231 == 32'd4294967295) ? 1'b1 : 1'b0);
assign temptemp1 = ap_phi_mux_empty_phi_fu_81_p4;
assign temptemp2 = ap_phi_mux_count_0_lcssa_phi_fu_93_p4;
assign trunc_ln6_fu_148_p1 = indvars_iv_fu_40[30:0];
assign zext_ln11_1_fu_158_p1 = add_ln11_reg_225;
assign zext_ln11_fu_133_p1 = i_fu_44;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_14_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 zext_ln11_1,
 zext_ln11,
 arr,
 arr_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] zext_ln11_1;
input [31:0] zext_ln11;
output [31:0] arr;
output arr_ap_vld;
reg ap_idle;
reg arr_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln14_fu_68_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] zext_ln11_cast_fu_52_p1;
reg [63:0] zext_ln11_cast_reg_91;
wire ap_block_pp0_stage0_11001;
reg [63:0] j_fu_28;
wire [63:0] add_ln14_fu_73_p2;
wire [63:0] zext_ln11_1_cast_fu_56_p1;
wire ap_loop_init;
wire ap_block_pp0_stage0;
wire ap_block_pp0_stage0_01001;
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
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 j_fu_28 <= zext_ln11_1_cast_fu_56_p1;
 end else if (((icmp_ln14_fu_68_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 j_fu_28 <= add_ln14_fu_73_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 zext_ln11_cast_reg_91[31 : 0] <= zext_ln11_cast_fu_52_p1[31 : 0];
 end
end
always @ (*) begin
 if (((icmp_ln14_fu_68_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
 if (((icmp_ln14_fu_68_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 arr_ap_vld = 1'b1;
 end else begin
 arr_ap_vld = 1'b0;
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
assign add_ln14_fu_73_p2 = (j_fu_28 + 64'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign arr = 32'd4294967295;
assign icmp_ln14_fu_68_p2 = ((j_fu_28 == zext_ln11_cast_reg_91) ? 1'b1 : 1'b0);
assign zext_ln11_1_cast_fu_56_p1 = zext_ln11_1;
assign zext_ln11_cast_fu_52_p1 = zext_ln11;
always @ (posedge ap_clk) begin
 zext_ln11_cast_reg_91[63:32] <= 32'b00000000000000000000000000000000;
end
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
