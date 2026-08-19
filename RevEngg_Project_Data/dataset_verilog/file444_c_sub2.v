module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 N,
 temptemp1,
 temptemp1_ap_vld,
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
input [31:0] N;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [0:0] icmp_ln7_fu_65_p2;
reg [0:0] icmp_ln7_reg_92;
wire [31:0] add_ln7_fu_71_p2;
reg [31:0] add_ln7_reg_96;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_sum_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_sum_out_ap_vld;
wire [31:0] bitcast_ln12_fu_81_p1;
reg [31:0] ap_phi_mux_sum_0_lcssa_phi_fu_51_p4;
reg [31:0] sum_0_lcssa_reg_47;
wire ap_CS_fsm_state3;
reg grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_ap_start_reg;
wire ap_CS_fsm_state2;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_7_1 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_ap_ready),
 .add_ln7(add_ln7_reg_96),
 .sum_out(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_sum_out),
 .sum_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_sum_out_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (icmp_ln7_fu_65_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (icmp_ln7_fu_65_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 sum_0_lcssa_reg_47 <= 32'd0;
 end else if (((icmp_ln7_reg_92 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 sum_0_lcssa_reg_47 <= bitcast_ln12_fu_81_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln7_fu_65_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 add_ln7_reg_96 <= add_ln7_fu_71_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln7_reg_92 <= icmp_ln7_fu_65_p2;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
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
 if (((icmp_ln7_reg_92 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_phi_mux_sum_0_lcssa_phi_fu_51_p4 = bitcast_ln12_fu_81_p1;
 end else begin
 ap_phi_mux_sum_0_lcssa_phi_fu_51_p4 = sum_0_lcssa_reg_47;
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
 if ((1'b1 == ap_CS_fsm_state3)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((ap_start == 1'b1) & (icmp_ln7_fu_65_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else if (((ap_start == 1'b1) & (icmp_ln7_fu_65_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
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
assign add_ln7_fu_71_p2 = (N + 32'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign bitcast_ln12_fu_81_p1 = grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_sum_out;
assign grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_59_ap_start_reg;
assign icmp_ln7_fu_65_p2 = (($signed(N) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign temptemp1 = ap_phi_mux_sum_0_lcssa_phi_fu_51_p4;
endmodule
module entry_point_dadd_64ns_64ns_64_3_full_dsp_1
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
module entry_point_ddiv_64ns_64ns_64_10_no_dsp_1
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
module entry_point_entry_point_Pipeline_VITIS_LOOP_7_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 add_ln7,
 sum_out,
 sum_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 5'd1;
parameter ap_ST_fsm_pp0_stage1 = 5'd2;
parameter ap_ST_fsm_pp0_stage2 = 5'd4;
parameter ap_ST_fsm_pp0_stage3 = 5'd8;
parameter ap_ST_fsm_pp0_stage4 = 5'd16;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] add_ln7;
output [31:0] sum_out;
output sum_out_ap_vld;
reg ap_idle;
reg sum_out_ap_vld;
(* fsm_encoding = "none" *) reg [4:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
reg ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_enable_reg_pp0_iter2;
reg ap_enable_reg_pp0_iter3;
reg ap_idle_pp0;
wire ap_CS_fsm_pp0_stage4;
wire ap_block_state5_pp0_stage4_iter0;
wire ap_block_state10_pp0_stage4_iter1;
wire ap_block_state15_pp0_stage4_iter2;
wire ap_block_pp0_stage4_subdone;
reg [0:0] icmp_ln7_reg_129;
reg ap_condition_exit_pp0_iter0_stage4;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state6_pp0_stage0_iter1;
wire ap_block_state11_pp0_stage0_iter2;
wire ap_block_state16_pp0_stage0_iter3;
wire ap_block_pp0_stage0_11001;
wire [0:0] icmp_ln7_fu_79_p2;
reg [0:0] icmp_ln7_reg_129_pp0_iter1_reg;
wire [63:0] grp_fu_62_p1;
reg [63:0] conv_reg_133;
wire ap_CS_fsm_pp0_stage1;
wire ap_block_state2_pp0_stage1_iter0;
wire ap_block_state7_pp0_stage1_iter1;
wire ap_block_state12_pp0_stage1_iter2;
wire ap_block_pp0_stage1_11001;
wire [63:0] grp_fu_57_p2;
reg [63:0] div_reg_138;
wire [63:0] conv1_fu_50_p1;
reg [63:0] conv1_reg_143;
wire [63:0] grp_fu_53_p2;
reg [63:0] add_reg_148;
wire ap_block_pp0_stage4_11001;
reg ap_enable_reg_pp0_iter0_reg;
wire ap_block_pp0_stage0_subdone;
reg [31:0] i_fu_26;
wire [31:0] i_3_fu_85_p2;
wire ap_loop_init;
reg [31:0] ap_sig_allocacmp_i_2;
wire ap_block_pp0_stage0;
reg [31:0] sum_fu_30;
wire [31:0] sum_1_fu_47_p1;
wire ap_block_pp0_stage1;
wire ap_block_pp0_stage0_01001;
wire ap_CS_fsm_pp0_stage2;
wire ap_block_pp0_stage2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg ap_loop_exit_ready_pp0_iter1_reg;
reg ap_condition_exit_pp0_iter2_stage0;
reg ap_idle_pp0_0to1;
reg ap_loop_exit_ready_pp0_iter2_reg;
reg [4:0] ap_NS_fsm;
reg ap_idle_pp0_1to3;
reg ap_done_pending_pp0;
wire ap_block_pp0_stage1_subdone;
wire ap_block_state3_pp0_stage2_iter0;
wire ap_block_state8_pp0_stage2_iter1;
wire ap_block_state13_pp0_stage2_iter2;
wire ap_block_pp0_stage2_subdone;
wire ap_block_state4_pp0_stage3_iter0;
wire ap_block_state9_pp0_stage3_iter1;
wire ap_block_state14_pp0_stage3_iter2;
wire ap_block_pp0_stage3_subdone;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U1(
 .din0(add_reg_148),
 .dout(sum_1_fu_47_p1)
);
entry_point_fpext_32ns_64_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
fpext_32ns_64_1_no_dsp_1_U2(
 .din0(sum_fu_30),
 .dout(conv1_fu_50_p1)
);
entry_point_dadd_64ns_64ns_64_3_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 3 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dadd_64ns_64ns_64_3_full_dsp_1_U3(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(conv1_reg_143),
 .din1(div_reg_138),
 .ce(1'b1),
 .dout(grp_fu_53_p2)
);
entry_point_ddiv_64ns_64ns_64_10_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 10 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_10_no_dsp_1_U4(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(64'd4607182418800017408),
 .din1(conv_reg_133),
 .ce(1'b1),
 .dout(grp_fu_57_p2)
);
entry_point_sitodp_32ns_64_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
sitodp_32ns_64_2_no_dsp_1_U5(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(ap_sig_allocacmp_i_2),
 .ce(1'b1),
 .dout(grp_fu_62_p1)
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
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage4),
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
 end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter0_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 ap_enable_reg_pp0_iter0_reg <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter0_stage4)) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
 ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter2 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
 ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter3 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_enable_reg_pp0_iter3 <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
 ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
 ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
 ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
 ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
 ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if (((icmp_ln7_fu_79_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 i_fu_26 <= i_3_fu_85_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_26 <= 32'd1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 sum_fu_30 <= 32'd0;
 end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
 sum_fu_30 <= sum_1_fu_47_p1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
 add_reg_148 <= grp_fu_53_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 conv1_reg_143 <= conv1_fu_50_p1;
 div_reg_138 <= grp_fu_57_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln7_reg_129 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 conv_reg_133 <= grp_fu_62_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 icmp_ln7_reg_129 <= icmp_ln7_fu_79_p2;
 icmp_ln7_reg_129_pp0_iter1_reg <= icmp_ln7_reg_129;
 end
end
always @ (*) begin
 if (((icmp_ln7_reg_129 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
 ap_condition_exit_pp0_iter0_stage4 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage4 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln7_reg_129_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter2_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter2_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (~((ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
 ap_done_pending_pp0 = 1'b1;
 end else begin
 ap_done_pending_pp0 = 1'b0;
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
 if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
 ap_idle_pp0 = 1'b1;
 end else begin
 ap_idle_pp0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
 ap_idle_pp0_0to1 = 1'b1;
 end else begin
 ap_idle_pp0_0to1 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
 ap_idle_pp0_1to3 = 1'b1;
 end else begin
 ap_idle_pp0_1to3 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 ap_sig_allocacmp_i_2 = 32'd1;
 end else begin
 ap_sig_allocacmp_i_2 = i_fu_26;
 end
end
always @ (*) begin
 if (((icmp_ln7_reg_129_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 sum_out_ap_vld = 1'b1;
 end else begin
 sum_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_pp0_stage0 : begin
 if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
 if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage4;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_state10_pp0_stage4_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state11_pp0_stage0_iter2 = ~(1'b1 == 1'b1);
assign ap_block_state12_pp0_stage1_iter2 = ~(1'b1 == 1'b1);
assign ap_block_state13_pp0_stage2_iter2 = ~(1'b1 == 1'b1);
assign ap_block_state14_pp0_stage3_iter2 = ~(1'b1 == 1'b1);
assign ap_block_state15_pp0_stage4_iter2 = ~(1'b1 == 1'b1);
assign ap_block_state16_pp0_stage0_iter3 = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state6_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state7_pp0_stage1_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state8_pp0_stage2_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state9_pp0_stage3_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;
assign i_3_fu_85_p2 = (ap_sig_allocacmp_i_2 + 32'd1);
assign icmp_ln7_fu_79_p2 = ((ap_sig_allocacmp_i_2 == add_ln7) ? 1'b1 : 1'b0);
assign sum_out = sum_fu_30;
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
module entry_point_sitodp_32ns_64_2_no_dsp_1
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
