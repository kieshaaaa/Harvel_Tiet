module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 lower,
 upper,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
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
input [31:0] lower;
input [31:0] upper;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_temptemp3;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_temptemp3_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_start_reg;
wire ap_CS_fsm_state2;
wire [0:0] icmp_ln10_fu_74_p2;
reg [1:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_17_1 grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_ready),
 .num(lower),
 .upper_load(upper),
 .temptemp3(grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_temptemp3),
 .temptemp3_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_temptemp3_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_start_reg <= 1'b0;
 end
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln10_fu_74_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln10_fu_74_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_ap_start_reg;
assign icmp_ln10_fu_74_p2 = (($signed(lower) > $signed(upper)) ? 1'b1 : 1'b0);
assign temptemp1 = lower;
assign temptemp2 = upper;
assign temptemp3 = grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_temptemp3;
assign temptemp3_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_17_1_fu_62_temptemp3_ap_vld;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_17_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 num,
 upper_load,
 temptemp3,
 temptemp3_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] num;
input [31:0] upper_load;
output [31:0] temptemp3;
output temptemp3_ap_vld;
reg ap_idle;
reg temptemp3_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_enable_reg_pp0_iter2;
reg ap_enable_reg_pp0_iter3;
reg ap_enable_reg_pp0_iter4;
reg ap_enable_reg_pp0_iter5;
reg ap_enable_reg_pp0_iter6;
reg ap_enable_reg_pp0_iter7;
reg ap_enable_reg_pp0_iter8;
reg ap_enable_reg_pp0_iter9;
reg ap_enable_reg_pp0_iter10;
reg ap_enable_reg_pp0_iter11;
reg ap_enable_reg_pp0_iter12;
reg ap_enable_reg_pp0_iter13;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_state3_pp0_stage0_iter2;
wire ap_block_state4_pp0_stage0_iter3;
wire ap_block_state5_pp0_stage0_iter4;
wire ap_block_state6_pp0_stage0_iter5;
wire ap_block_state7_pp0_stage0_iter6;
wire ap_block_state8_pp0_stage0_iter7;
wire ap_block_state9_pp0_stage0_iter8;
wire ap_block_state10_pp0_stage0_iter9;
wire ap_block_state11_pp0_stage0_iter10;
wire ap_block_state12_pp0_stage0_iter11;
wire ap_block_state13_pp0_stage0_iter12;
wire ap_block_state14_pp0_stage0_iter13;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln26_fu_155_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [4:0] mask_table_address0;
reg mask_table_ce0;
wire [22:0] mask_table_q0;
reg [31:0] num_3_reg_462;
wire ap_block_pp0_stage0_11001;
reg [31:0] num_3_reg_462_pp0_iter1_reg;
reg [31:0] num_3_reg_462_pp0_iter2_reg;
reg [31:0] num_3_reg_462_pp0_iter3_reg;
reg [31:0] num_3_reg_462_pp0_iter4_reg;
reg [31:0] num_3_reg_462_pp0_iter5_reg;
reg [31:0] num_3_reg_462_pp0_iter6_reg;
reg [31:0] num_3_reg_462_pp0_iter7_reg;
reg [31:0] num_3_reg_462_pp0_iter8_reg;
reg [31:0] num_3_reg_462_pp0_iter9_reg;
reg [31:0] num_3_reg_462_pp0_iter10_reg;
reg [31:0] num_3_reg_462_pp0_iter11_reg;
reg [31:0] num_3_reg_462_pp0_iter12_reg;
wire [31:0] grp_fu_116_p1;
reg [31:0] conv_reg_476;
wire [31:0] grp_fu_123_p2;
reg [31:0] tmp_reg_481;
wire [31:0] grp_fu_106_p2;
reg [31:0] add1_reg_486;
wire [31:0] grp_fu_111_p2;
reg [31:0] n_reg_491;
reg [31:0] n_reg_491_pp0_iter12_reg;
wire [31:0] data_V_fu_166_p1;
reg [31:0] data_V_reg_497;
reg [0:0] p_Result_s_reg_502;
reg [7:0] xs_exp_V_2_reg_510;
wire [22:0] xs_sig_V_3_fu_188_p1;
reg [22:0] xs_sig_V_3_reg_518;
wire [30:0] trunc_ln368_fu_207_p1;
reg [30:0] trunc_ln368_reg_529;
wire [0:0] icmp_ln19_4_fu_225_p2;
reg [0:0] icmp_ln19_4_reg_534;
reg [0:0] icmp_ln19_4_reg_534_pp0_iter12_reg;
wire [0:0] icmp_ln19_5_fu_231_p2;
reg [0:0] icmp_ln19_5_reg_539;
reg [0:0] icmp_ln19_5_reg_539_pp0_iter12_reg;
wire [31:0] select_ln1035_1_fu_397_p3;
reg [31:0] select_ln1035_1_reg_544;
wire [63:0] zext_ln541_fu_202_p1;
wire ap_block_pp0_stage0;
reg [31:0] num_1_fu_70;
wire [31:0] num_4_fu_149_p2;
wire ap_loop_init;
reg [31:0] ap_sig_allocacmp_num_3;
wire ap_block_pp0_stage0_01001;
wire [0:0] and_ln19_3_fu_449_p2;
wire [31:0] grp_fu_116_p0;
wire [31:0] shl_ln18_fu_136_p2;
wire [4:0] index_fu_192_p4;
wire [7:0] tmp_2_fu_211_p4;
wire [22:0] trunc_ln19_1_fu_221_p1;
wire [31:0] zext_ln28_fu_254_p1;
wire [31:0] p_Result_2_fu_258_p3;
wire [31:0] data_V_1_fu_265_p2;
wire [31:0] and_ln779_fu_285_p2;
wire [7:0] xs_exp_V_fu_271_p4;
wire [22:0] xs_sig_V_fu_281_p1;
wire [22:0] xs_sig_V_1_fu_304_p3;
wire [22:0] xor_ln1497_fu_310_p2;
wire [0:0] xs_sign_V_1_fu_290_p3;
wire [7:0] xs_exp_V_3_fu_298_p3;
wire [22:0] xs_sig_V_4_fu_316_p2;
wire [0:0] icmp_ln1035_fu_237_p2;
wire [0:0] icmp_ln1035_1_fu_242_p2;
wire [0:0] or_ln1035_fu_332_p2;
wire [31:0] p_Result_1_fu_247_p3;
wire [31:0] p_Result_3_fu_322_p4;
wire [31:0] select_ln1035_fu_338_p3;
wire [0:0] icmp_ln19_1_fu_355_p2;
wire [0:0] icmp_ln19_fu_350_p2;
wire [0:0] or_ln19_fu_360_p2;
wire [0:0] and_ln19_fu_366_p2;
wire [0:0] and_ln19_1_fu_371_p2;
wire [31:0] bitcast_ln1035_fu_346_p1;
wire [0:0] xor_ln1035_fu_385_p2;
wire [0:0] and_ln1035_fu_391_p2;
wire [31:0] select_ln19_fu_377_p3;
wire [31:0] bitcast_ln19_fu_404_p1;
wire [7:0] tmp_1_fu_407_p4;
wire [22:0] trunc_ln19_fu_417_p1;
wire [0:0] icmp_ln19_3_fu_427_p2;
wire [0:0] icmp_ln19_2_fu_421_p2;
wire [0:0] or_ln19_1_fu_433_p2;
wire [0:0] or_ln19_2_fu_439_p2;
wire [0:0] and_ln19_2_fu_443_p2;
wire [0:0] tmp_3_fu_119_p2;
wire ap_block_pp0_stage0_00001;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg ap_loop_exit_ready_pp0_iter1_reg;
reg ap_loop_exit_ready_pp0_iter2_reg;
reg ap_loop_exit_ready_pp0_iter3_reg;
reg ap_loop_exit_ready_pp0_iter4_reg;
reg ap_loop_exit_ready_pp0_iter5_reg;
reg ap_loop_exit_ready_pp0_iter6_reg;
reg ap_loop_exit_ready_pp0_iter7_reg;
reg ap_loop_exit_ready_pp0_iter8_reg;
reg ap_loop_exit_ready_pp0_iter9_reg;
reg ap_loop_exit_ready_pp0_iter10_reg;
reg ap_loop_exit_ready_pp0_iter11_reg;
reg ap_loop_exit_ready_pp0_iter12_reg;
reg ap_loop_exit_ready_pp0_iter13_reg;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_17_1_mask_table_ROM_AUTO_1R #(
 .DataWidth( 23 ),
 .AddressRange( 32 ),
 .AddressWidth( 5 ))
mask_table_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(mask_table_address0),
 .ce0(mask_table_ce0),
 .q0(mask_table_q0)
);
entry_point_fadd_32ns_32ns_32_2_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_2_full_dsp_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(tmp_reg_481),
 .din1(32'd3212836864),
 .ce(1'b1),
 .dout(grp_fu_106_p2)
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
 .din0(add1_reg_486),
 .din1(32'd1056964608),
 .ce(1'b1),
 .dout(grp_fu_111_p2)
);
entry_point_sitofp_32ns_32_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
sitofp_32ns_32_2_no_dsp_1_U3(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_116_p0),
 .ce(1'b1),
 .dout(grp_fu_116_p1)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U4(
 .din0(select_ln1035_1_reg_544),
 .din1(n_reg_491_pp0_iter12_reg),
 .opcode(5'd1),
 .dout(tmp_3_fu_119_p2)
);
entry_point_fsqrt_32ns_32ns_32_6_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 6 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fsqrt_32ns_32ns_32_6_no_dsp_1_U5(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(32'd0),
 .din1(conv_reg_476),
 .ce(1'b1),
 .dout(grp_fu_123_p2)
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
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
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
 end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_enable_reg_pp0_iter1 <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter10 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter11 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter12 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter13 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter2 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter3 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter4 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter5 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter6 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter7 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter8 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter9 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter12_reg == 1'b0))) begin
 ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
 end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if (((icmp_ln26_fu_155_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 num_1_fu_70 <= num_4_fu_149_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 num_1_fu_70 <= num;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 add1_reg_486 <= grp_fu_106_p2;
 ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
 ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
 ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
 ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
 ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
 ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
 ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
 ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
 ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
 ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
 data_V_reg_497 <= data_V_fu_166_p1;
 icmp_ln19_4_reg_534 <= icmp_ln19_4_fu_225_p2;
 icmp_ln19_4_reg_534_pp0_iter12_reg <= icmp_ln19_4_reg_534;
 icmp_ln19_5_reg_539 <= icmp_ln19_5_fu_231_p2;
 icmp_ln19_5_reg_539_pp0_iter12_reg <= icmp_ln19_5_reg_539;
 n_reg_491 <= grp_fu_111_p2;
 n_reg_491_pp0_iter12_reg <= n_reg_491;
 num_3_reg_462_pp0_iter10_reg <= num_3_reg_462_pp0_iter9_reg;
 num_3_reg_462_pp0_iter11_reg <= num_3_reg_462_pp0_iter10_reg;
 num_3_reg_462_pp0_iter12_reg <= num_3_reg_462_pp0_iter11_reg;
 num_3_reg_462_pp0_iter2_reg <= num_3_reg_462_pp0_iter1_reg;
 num_3_reg_462_pp0_iter3_reg <= num_3_reg_462_pp0_iter2_reg;
 num_3_reg_462_pp0_iter4_reg <= num_3_reg_462_pp0_iter3_reg;
 num_3_reg_462_pp0_iter5_reg <= num_3_reg_462_pp0_iter4_reg;
 num_3_reg_462_pp0_iter6_reg <= num_3_reg_462_pp0_iter5_reg;
 num_3_reg_462_pp0_iter7_reg <= num_3_reg_462_pp0_iter6_reg;
 num_3_reg_462_pp0_iter8_reg <= num_3_reg_462_pp0_iter7_reg;
 num_3_reg_462_pp0_iter9_reg <= num_3_reg_462_pp0_iter8_reg;
 p_Result_s_reg_502 <= data_V_fu_166_p1[32'd31];
 select_ln1035_1_reg_544 <= select_ln1035_1_fu_397_p3;
 tmp_reg_481 <= grp_fu_123_p2;
 trunc_ln368_reg_529 <= trunc_ln368_fu_207_p1;
 xs_exp_V_2_reg_510 <= {{data_V_fu_166_p1[30:23]}};
 xs_sig_V_3_reg_518 <= xs_sig_V_3_fu_188_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
 ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
 conv_reg_476 <= grp_fu_116_p1;
 num_3_reg_462 <= ap_sig_allocacmp_num_3;
 num_3_reg_462_pp0_iter1_reg <= num_3_reg_462;
 end
end
always @ (*) begin
 if (((icmp_ln26_fu_155_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
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
 if (((ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
 if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 ap_sig_allocacmp_num_3 = num;
 end else begin
 ap_sig_allocacmp_num_3 = num_1_fu_70;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
 mask_table_ce0 = 1'b1;
 end else begin
 mask_table_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'd1 == and_ln19_3_fu_449_p2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
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
assign and_ln1035_fu_391_p2 = (xor_ln1035_fu_385_p2 & icmp_ln1035_1_fu_242_p2);
assign and_ln19_1_fu_371_p2 = (icmp_ln1035_fu_237_p2 & and_ln19_fu_366_p2);
assign and_ln19_2_fu_443_p2 = (or_ln19_2_fu_439_p2 & or_ln19_1_fu_433_p2);
assign and_ln19_3_fu_449_p2 = (tmp_3_fu_119_p2 & and_ln19_2_fu_443_p2);
assign and_ln19_fu_366_p2 = (p_Result_s_reg_502 & or_ln19_fu_360_p2);
assign and_ln779_fu_285_p2 = (data_V_reg_497 & data_V_1_fu_265_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);
assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);
assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);
assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);
assign ap_block_state14_pp0_stage0_iter13 = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);
assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);
assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);
assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);
assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);
assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);
assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign bitcast_ln1035_fu_346_p1 = select_ln1035_fu_338_p3;
assign bitcast_ln19_fu_404_p1 = select_ln1035_1_reg_544;
assign data_V_1_fu_265_p2 = (zext_ln28_fu_254_p1 + p_Result_2_fu_258_p3);
assign data_V_fu_166_p1 = grp_fu_111_p2;
assign grp_fu_116_p0 = (shl_ln18_fu_136_p2 | 32'd1);
assign icmp_ln1035_1_fu_242_p2 = ((xs_exp_V_2_reg_510 > 8'd150) ? 1'b1 : 1'b0);
assign icmp_ln1035_fu_237_p2 = ((xs_exp_V_2_reg_510 < 8'd127) ? 1'b1 : 1'b0);
assign icmp_ln19_1_fu_355_p2 = ((xs_exp_V_2_reg_510 != 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln19_2_fu_421_p2 = ((tmp_1_fu_407_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln19_3_fu_427_p2 = ((trunc_ln19_fu_417_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln19_4_fu_225_p2 = ((tmp_2_fu_211_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln19_5_fu_231_p2 = ((trunc_ln19_1_fu_221_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_350_p2 = ((xs_sig_V_3_reg_518 != 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln26_fu_155_p2 = (($signed(num_4_fu_149_p2) > $signed(upper_load)) ? 1'b1 : 1'b0);
assign index_fu_192_p4 = {{data_V_fu_166_p1[27:23]}};
assign mask_table_address0 = zext_ln541_fu_202_p1;
assign num_4_fu_149_p2 = (ap_sig_allocacmp_num_3 + 32'd1);
assign or_ln1035_fu_332_p2 = (icmp_ln1035_fu_237_p2 | icmp_ln1035_1_fu_242_p2);
assign or_ln19_1_fu_433_p2 = (icmp_ln19_3_fu_427_p2 | icmp_ln19_2_fu_421_p2);
assign or_ln19_2_fu_439_p2 = (icmp_ln19_5_reg_539_pp0_iter12_reg | icmp_ln19_4_reg_534_pp0_iter12_reg);
assign or_ln19_fu_360_p2 = (icmp_ln19_fu_350_p2 | icmp_ln19_1_fu_355_p2);
assign p_Result_1_fu_247_p3 = {{p_Result_s_reg_502}, {31'd0}};
assign p_Result_2_fu_258_p3 = {{1'd1}, {trunc_ln368_reg_529}};
assign p_Result_3_fu_322_p4 = {{{xs_sign_V_1_fu_290_p3}, {xs_exp_V_3_fu_298_p3}}, {xs_sig_V_4_fu_316_p2}};
assign select_ln1035_1_fu_397_p3 = ((and_ln1035_fu_391_p2[0:0] == 1'b1) ? n_reg_491 : select_ln19_fu_377_p3);
assign select_ln1035_fu_338_p3 = ((or_ln1035_fu_332_p2[0:0] == 1'b1) ? p_Result_1_fu_247_p3 : p_Result_3_fu_322_p4);
assign select_ln19_fu_377_p3 = ((and_ln19_1_fu_371_p2[0:0] == 1'b1) ? 32'd3212836864 : bitcast_ln1035_fu_346_p1);
assign shl_ln18_fu_136_p2 = ap_sig_allocacmp_num_3 << 32'd3;
assign temptemp3 = num_3_reg_462_pp0_iter12_reg;
assign tmp_1_fu_407_p4 = {{bitcast_ln19_fu_404_p1[30:23]}};
assign tmp_2_fu_211_p4 = {{data_V_fu_166_p1[30:23]}};
assign trunc_ln19_1_fu_221_p1 = data_V_fu_166_p1[22:0];
assign trunc_ln19_fu_417_p1 = bitcast_ln19_fu_404_p1[22:0];
assign trunc_ln368_fu_207_p1 = data_V_fu_166_p1[30:0];
assign xor_ln1035_fu_385_p2 = (icmp_ln1035_fu_237_p2 ^ 1'd1);
assign xor_ln1497_fu_310_p2 = (mask_table_q0 ^ 23'd8388607);
assign xs_exp_V_3_fu_298_p3 = ((p_Result_s_reg_502[0:0] == 1'b1) ? xs_exp_V_fu_271_p4 : xs_exp_V_2_reg_510);
assign xs_exp_V_fu_271_p4 = {{data_V_1_fu_265_p2[30:23]}};
assign xs_sig_V_1_fu_304_p3 = ((p_Result_s_reg_502[0:0] == 1'b1) ? xs_sig_V_fu_281_p1 : xs_sig_V_3_reg_518);
assign xs_sig_V_3_fu_188_p1 = data_V_fu_166_p1[22:0];
assign xs_sig_V_4_fu_316_p2 = (xs_sig_V_1_fu_304_p3 & xor_ln1497_fu_310_p2);
assign xs_sig_V_fu_281_p1 = data_V_1_fu_265_p2[22:0];
assign xs_sign_V_1_fu_290_p3 = and_ln779_fu_285_p2[32'd31];
assign zext_ln28_fu_254_p1 = mask_table_q0;
assign zext_ln541_fu_202_p1 = index_fu_192_p4;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_17_1_mask_table_ROM_AUTO_1R (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 23;
parameter AddressWidth = 5;
parameter AddressRange = 32;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h3FFFFF;
 rom0[1]=8'h1FFFFF;
 rom0[2]=8'h0FFFFF;
 rom0[3]=8'h07FFFF;
 rom0[4]=8'h03FFFF;
 rom0[5]=8'h01FFFF;
 rom0[6]=8'h00FFFF;
 rom0[7]=8'h007FFF;
 rom0[8]=8'h003FFF;
 rom0[9]=8'h001FFF;
 rom0[10]=8'h000FFF;
 rom0[11]=8'h0007FF;
 rom0[12]=8'h0003FF;
 rom0[13]=8'h0001FF;
 rom0[14]=8'h0000FF;
 rom0[15]=8'h00007F;
 rom0[16]=8'h00003F;
 rom0[17]=8'h00001F;
 rom0[18]=8'h00000F;
 rom0[19]=8'h000007;
 rom0[20]=8'h000003;
 rom0[21]=8'h000001;
 rom0[22]=8'h000000;
 rom0[23]=8'h000000;
 rom0[24]=8'h000000;
 rom0[25]=8'h000000;
 rom0[26]=8'h000000;
 rom0[27]=8'h000000;
 rom0[28]=8'h000000;
 rom0[29]=8'h000000;
 rom0[30]=8'h7FFFFF;
 rom0[31]=8'h7FFFFF;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
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
