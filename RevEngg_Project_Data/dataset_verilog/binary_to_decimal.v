module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 binary,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
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
input [7:0] binary;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_idle;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [4:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
reg ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_enable_reg_pp0_iter2;
reg ap_idle_pp0;
wire ap_CS_fsm_pp0_stage4;
wire ap_block_state5_pp0_stage4_iter0;
wire ap_block_state10_pp0_stage4_iter1;
wire ap_block_state15_pp0_stage4_iter2;
wire ap_block_pp0_stage4_subdone;
reg [0:0] icmp_ln10_reg_334;
reg ap_condition_exit_pp0_iter0_stage4;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state6_pp0_stage0_iter1;
wire ap_block_state11_pp0_stage0_iter2;
wire ap_block_pp0_stage0_11001;
wire [0:0] icmp_ln11_fu_127_p2;
reg [0:0] icmp_ln11_reg_330;
reg [0:0] icmp_ln11_reg_330_pp0_iter1_reg;
reg [0:0] icmp_ln11_reg_330_pp0_iter2_reg;
wire [0:0] icmp_ln10_fu_141_p2;
reg [0:0] icmp_ln10_reg_334_pp0_iter1_reg;
wire [31:0] zext_ln12_fu_159_p1;
wire [63:0] grp_fu_124_p1;
reg [63:0] y_assign_reg_343;
wire ap_CS_fsm_pp0_stage1;
wire ap_block_state2_pp0_stage1_iter0;
wire ap_block_state7_pp0_stage1_iter1;
wire ap_block_state12_pp0_stage1_iter2;
wire ap_block_pp0_stage1_11001;
wire ap_block_pp0_stage4_11001;
reg [63:0] conv2_reg_353;
wire [63:0] grp_pow_generic_double_s_fu_109_ap_return;
reg [63:0] tmp_reg_358;
reg [0:0] p_Result_s_reg_363;
wire ap_CS_fsm_pp0_stage3;
wire ap_block_state4_pp0_stage3_iter0;
wire ap_block_state9_pp0_stage3_iter1;
wire ap_block_state14_pp0_stage3_iter2;
wire ap_block_pp0_stage3_11001;
wire [51:0] p_Result_12_fu_195_p1;
reg [51:0] p_Result_12_reg_368;
wire [11:0] add_ln515_fu_203_p2;
reg [11:0] add_ln515_reg_373;
reg [0:0] isNeg_reg_378;
wire [10:0] sub_ln1512_fu_217_p2;
reg [10:0] sub_ln1512_reg_384;
reg ap_enable_reg_pp0_iter0_reg;
wire grp_pow_generic_double_s_fu_109_ap_start;
wire grp_pow_generic_double_s_fu_109_ap_done;
wire grp_pow_generic_double_s_fu_109_ap_idle;
wire grp_pow_generic_double_s_fu_109_ap_ready;
reg grp_pow_generic_double_s_fu_109_ap_start_reg;
reg ap_predicate_op44_call_state3_state2;
wire ap_CS_fsm_pp0_stage2;
wire ap_block_pp0_stage2;
wire ap_block_pp0_stage3;
wire ap_block_pp0_stage4;
reg [3:0] i_fu_88;
wire [3:0] add_ln10_fu_147_p2;
wire ap_loop_init;
reg [3:0] ap_sig_allocacmp_i_1;
wire ap_block_pp0_stage0;
reg [31:0] decimal_fu_92;
wire [31:0] result_V_fu_300_p3;
reg [31:0] ap_sig_allocacmp_decimal_load_1;
reg [31:0] ap_sig_allocacmp_decimal_load;
wire ap_block_pp0_stage4_01001;
wire ap_block_pp0_stage1;
reg [31:0] grp_fu_124_p0;
wire [3:0] sub_ln12_fu_153_p2;
wire [63:0] grp_fu_120_p2;
wire [63:0] data_V_fu_173_p1;
wire [10:0] xs_exp_V_fu_185_p4;
wire [11:0] zext_ln515_fu_199_p1;
wire [53:0] mantissa_fu_223_p4;
wire signed [11:0] sext_ln1512_fu_236_p1;
wire [11:0] ush_fu_239_p3;
wire signed [31:0] sext_ln1488_fu_245_p1;
wire [136:0] zext_ln15_fu_232_p1;
wire [136:0] zext_ln1488_fu_249_p1;
wire [136:0] r_V_fu_253_p2;
wire [0:0] tmp_18_fu_265_p3;
wire [136:0] r_V_20_fu_259_p2;
wire [31:0] zext_ln818_fu_273_p1;
wire [31:0] tmp_s_fu_277_p4;
wire [31:0] val_fu_287_p3;
wire [31:0] result_V_2_fu_294_p2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg ap_loop_exit_ready_pp0_iter1_reg;
reg [4:0] ap_NS_fsm;
wire ap_block_pp0_stage0_subdone;
reg ap_idle_pp0_1to2;
wire ap_block_pp0_stage1_subdone;
wire ap_block_state3_pp0_stage2_iter0;
wire ap_block_state8_pp0_stage2_iter1;
wire ap_block_state13_pp0_stage2_iter2;
wire ap_block_pp0_stage2_subdone;
wire ap_block_pp0_stage2_11001;
wire ap_block_pp0_stage3_subdone;
wire ap_enable_pp0;
wire ap_start_int;
reg ap_condition_229;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 grp_pow_generic_double_s_fu_109_ap_start_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_pow_generic_double_s grp_pow_generic_double_s_fu_109(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_pow_generic_double_s_fu_109_ap_start),
 .ap_done(grp_pow_generic_double_s_fu_109_ap_done),
 .ap_idle(grp_pow_generic_double_s_fu_109_ap_idle),
 .ap_ready(grp_pow_generic_double_s_fu_109_ap_ready),
 .exp(y_assign_reg_343),
 .ap_return(grp_pow_generic_double_s_fu_109_ap_return)
);
entry_point_dadd_64ns_64ns_64_3_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 3 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dadd_64ns_64ns_64_3_full_dsp_1_U17(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(conv2_reg_353),
 .din1(tmp_reg_358),
 .ce(1'b1),
 .dout(grp_fu_120_p2)
);
entry_point_sitodp_32ns_64_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
sitodp_32ns_64_2_no_dsp_1_U18(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_124_p0),
 .ce(1'b1),
 .dout(grp_fu_124_p1)
);
entry_point_flow_control_loop_pipe flow_control_loop_pipe_U(
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
 .ap_done_int(ap_done_int),
 .ap_continue(1'b1)
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
 end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
 grp_pow_generic_double_s_fu_109_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_predicate_op44_call_state3_state2 == 1'b1))) begin
 grp_pow_generic_double_s_fu_109_ap_start_reg <= 1'b1;
 end else if ((grp_pow_generic_double_s_fu_109_ap_ready == 1'b1)) begin
 grp_pow_generic_double_s_fu_109_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_condition_229)) begin
 if ((icmp_ln10_fu_141_p2 == 1'd0)) begin
 i_fu_88 <= add_ln10_fu_147_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_88 <= 4'd0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln11_reg_330_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
 add_ln515_reg_373 <= add_ln515_fu_203_p2;
 isNeg_reg_378 <= add_ln515_fu_203_p2[32'd11];
 p_Result_12_reg_368 <= p_Result_12_fu_195_p1;
 p_Result_s_reg_363 <= data_V_fu_173_p1[32'd63];
 sub_ln1512_reg_384 <= sub_ln1512_fu_217_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
 ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln11_reg_330_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 conv2_reg_353 <= grp_fu_124_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln11_reg_330_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
 decimal_fu_92 <= result_V_fu_300_p3;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 icmp_ln10_reg_334 <= icmp_ln10_fu_141_p2;
 icmp_ln10_reg_334_pp0_iter1_reg <= icmp_ln10_reg_334;
 icmp_ln11_reg_330 <= icmp_ln11_fu_127_p2;
 icmp_ln11_reg_330_pp0_iter1_reg <= icmp_ln11_reg_330;
 icmp_ln11_reg_330_pp0_iter2_reg <= icmp_ln11_reg_330_pp0_iter1_reg;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln11_reg_330_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 tmp_reg_358 <= grp_pow_generic_double_s_fu_109_ap_return;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln11_reg_330 == 1'd1) & (icmp_ln10_reg_334 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 y_assign_reg_343 <= grp_fu_124_p1;
 end
end
always @ (*) begin
 if (((icmp_ln10_reg_334 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
 ap_condition_exit_pp0_iter0_stage4 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage4 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
 if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
 ap_idle_pp0_1to2 = 1'b1;
 end else begin
 ap_idle_pp0_1to2 = 1'b0;
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
 if (((icmp_ln11_reg_330_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
 ap_sig_allocacmp_decimal_load = result_V_fu_300_p3;
 end else begin
 ap_sig_allocacmp_decimal_load = decimal_fu_92;
 end
end
always @ (*) begin
 if (((icmp_ln11_reg_330_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
 ap_sig_allocacmp_decimal_load_1 = result_V_fu_300_p3;
 end else begin
 ap_sig_allocacmp_decimal_load_1 = decimal_fu_92;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_sig_allocacmp_i_1 = 4'd0;
 end else begin
 ap_sig_allocacmp_i_1 = i_fu_88;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
 grp_fu_124_p0 = ap_sig_allocacmp_decimal_load_1;
 end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 grp_fu_124_p0 = zext_ln12_fu_159_p1;
 end else begin
 grp_fu_124_p0 = 'bx;
 end
end
always @ (*) begin
 if (((icmp_ln10_reg_334_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_pp0_stage0 : begin
 if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln10_fu_147_p2 = (ap_sig_allocacmp_i_1 + 4'd1);
assign add_ln515_fu_203_p2 = ($signed(zext_ln515_fu_199_p1) + $signed(12'd3073));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_state10_pp0_stage4_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state11_pp0_stage0_iter2 = ~(1'b1 == 1'b1);
assign ap_block_state12_pp0_stage1_iter2 = ~(1'b1 == 1'b1);
assign ap_block_state13_pp0_stage2_iter2 = ~(1'b1 == 1'b1);
assign ap_block_state14_pp0_stage3_iter2 = ~(1'b1 == 1'b1);
assign ap_block_state15_pp0_stage4_iter2 = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state6_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state7_pp0_stage1_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state8_pp0_stage2_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state9_pp0_stage3_iter1 = ~(1'b1 == 1'b1);
always @ (*) begin
 ap_condition_229 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;
always @ (*) begin
 ap_predicate_op44_call_state3_state2 = ((icmp_ln11_reg_330 == 1'd1) & (icmp_ln10_reg_334 == 1'd0));
end
assign ap_return = 32'd0;
assign data_V_fu_173_p1 = grp_fu_120_p2;
assign grp_pow_generic_double_s_fu_109_ap_start = grp_pow_generic_double_s_fu_109_ap_start_reg;
assign icmp_ln10_fu_141_p2 = ((ap_sig_allocacmp_i_1 == 4'd10) ? 1'b1 : 1'b0);
assign icmp_ln11_fu_127_p2 = ((binary == 8'd49) ? 1'b1 : 1'b0);
assign mantissa_fu_223_p4 = {{{{1'd1}, {p_Result_12_reg_368}}}, {1'd0}};
assign p_Result_12_fu_195_p1 = data_V_fu_173_p1[51:0];
assign r_V_20_fu_259_p2 = zext_ln15_fu_232_p1 << zext_ln1488_fu_249_p1;
assign r_V_fu_253_p2 = zext_ln15_fu_232_p1 >> zext_ln1488_fu_249_p1;
assign result_V_2_fu_294_p2 = (32'd0 - val_fu_287_p3);
assign result_V_fu_300_p3 = ((p_Result_s_reg_363[0:0] == 1'b1) ? result_V_2_fu_294_p2 : val_fu_287_p3);
assign sext_ln1488_fu_245_p1 = $signed(ush_fu_239_p3);
assign sext_ln1512_fu_236_p1 = $signed(sub_ln1512_reg_384);
assign sub_ln12_fu_153_p2 = ($signed(4'd9) - $signed(ap_sig_allocacmp_i_1));
assign sub_ln1512_fu_217_p2 = (11'd1023 - xs_exp_V_fu_185_p4);
assign temptemp1 = ap_sig_allocacmp_decimal_load;
assign tmp_18_fu_265_p3 = r_V_fu_253_p2[32'd53];
assign tmp_s_fu_277_p4 = {{r_V_20_fu_259_p2[84:53]}};
assign ush_fu_239_p3 = ((isNeg_reg_378[0:0] == 1'b1) ? sext_ln1512_fu_236_p1 : add_ln515_reg_373);
assign val_fu_287_p3 = ((isNeg_reg_378[0:0] == 1'b1) ? zext_ln818_fu_273_p1 : tmp_s_fu_277_p4);
assign xs_exp_V_fu_185_p4 = {{data_V_fu_173_p1[62:52]}};
assign zext_ln12_fu_159_p1 = sub_ln12_fu_153_p2;
assign zext_ln1488_fu_249_p1 = $unsigned(sext_ln1488_fu_245_p1);
assign zext_ln15_fu_232_p1 = mantissa_fu_223_p4;
assign zext_ln515_fu_199_p1 = xs_exp_V_fu_185_p4;
assign zext_ln818_fu_273_p1 = tmp_18_fu_265_p3;
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
module entry_point_flow_control_loop_pipe(
 ap_clk,
 ap_rst,
 ap_start,
 ap_ready,
 ap_done,
 ap_continue,
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
input ap_continue;
output ap_start_int;
input ap_ready_int;
input ap_done_int;
output ap_continue_int;
output ap_loop_init;
reg ap_loop_init;
input ap_loop_exit_ready;
input ap_loop_exit_done;
initial begin
#0 ap_loop_init = 1'b1;
end
assign ap_start_int = ap_start;
assign ap_continue_int = ap_continue;
assign ap_done = ap_loop_exit_done;
assign ap_ready = ap_loop_exit_ready;
always @ (posedge ap_clk)
begin
 if (ap_rst == 1'b1) begin
 ap_loop_init <= 1'b1;
 end else if(ap_loop_exit_ready == 1'b1) begin
 ap_loop_init <= 1'b1;
 end else if(ap_ready_int == 1'b1) begin
 ap_loop_init <= 1'b0;
 end
end
endmodule
module entry_point_mac_muladd_16s_15ns_19s_31_4_1_DSP48_0(
 input clk,
 input rst,
 input ce,
 input [16 - 1:0] in0,
 input [15 - 1:0] in1,
 input [19 - 1:0] in2,
 output [31 - 1:0] dout);
wire signed [27 - 1:0] a;
wire signed [18 - 1:0] b;
wire signed [48 - 1:0] c;
wire signed [45 - 1:0] m;
wire signed [48 - 1:0] p;
reg signed [45 - 1:0] m_reg;
reg signed [27 - 1:0] a_reg;
reg signed [18 - 1:0] b_reg;
reg signed [48 - 1:0] p_reg;
assign a = $signed(in0);
assign b = $unsigned(in1);
assign c = $signed(in2);
assign m = a_reg * b_reg;
assign p = m_reg + c;
always @(posedge clk) begin
 if (ce) begin
 m_reg <= m;
 a_reg <= a;
 b_reg <= b;
 p_reg <= p;
 end
end
assign dout = p_reg;
endmodule
module entry_point_mac_muladd_16s_15ns_19s_31_4_1(
 clk,
 reset,
 ce,
 din0,
 din1,
 din2,
 dout);
parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter din2_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
input[din2_WIDTH - 1:0] din2;
output[dout_WIDTH - 1:0] dout;
entry_point_mac_muladd_16s_15ns_19s_31_4_1_DSP48_0 entry_point_mac_muladd_16s_15ns_19s_31_4_1_DSP48_0_U(
 .clk( clk ),
 .rst( reset ),
 .ce( ce ),
 .in0( din0 ),
 .in1( din1 ),
 .in2( din2 ),
 .dout( dout ));
endmodule
module entry_point_mul_13s_71s_71_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed(din0) * $signed(din1);
endmodule
module entry_point_mul_43ns_36ns_79_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed({1'b0, din0}) * $signed({1'b0, din1});
endmodule
module entry_point_mul_49ns_44ns_93_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed({1'b0, din0}) * $signed({1'b0, din1});
endmodule
module entry_point_mul_50ns_50ns_100_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed({1'b0, din0}) * $signed({1'b0, din1});
endmodule
module entry_point_mul_54s_67ns_120_1_1(din0, din1, dout);
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
module entry_point_pow_generic_double_s (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 exp,
 ap_return
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [63:0] exp;
output [63:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
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
wire ap_block_pp0_stage0_subdone;
wire [7:0] pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_address0;
reg pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_ce0;
wire [57:0] pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_q0;
wire [7:0] pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_address0;
reg pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_ce0;
wire [25:0] pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_q0;
wire [7:0] pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_address1;
reg pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_ce1;
wire [25:0] pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_q1;
wire [7:0] pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_address0;
reg pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_ce0;
wire [41:0] pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_q0;
wire [0:0] p_Result_7_fu_263_p3;
reg [0:0] p_Result_7_reg_1225;
wire ap_block_pp0_stage0_11001;
reg [0:0] p_Result_7_reg_1225_pp0_iter1_reg;
reg [0:0] p_Result_7_reg_1225_pp0_iter2_reg;
reg [0:0] p_Result_7_reg_1225_pp0_iter3_reg;
reg [0:0] p_Result_7_reg_1225_pp0_iter4_reg;
reg [0:0] p_Result_7_reg_1225_pp0_iter5_reg;
reg [0:0] p_Result_7_reg_1225_pp0_iter6_reg;
reg [0:0] p_Result_7_reg_1225_pp0_iter7_reg;
wire [10:0] es_exp_V_fu_271_p4;
reg [10:0] es_exp_V_reg_1232;
wire [0:0] y_is_0_fu_285_p2;
reg [0:0] y_is_0_reg_1238;
reg [0:0] y_is_0_reg_1238_pp0_iter1_reg;
reg [0:0] y_is_0_reg_1238_pp0_iter2_reg;
reg [0:0] y_is_0_reg_1238_pp0_iter3_reg;
reg [0:0] y_is_0_reg_1238_pp0_iter4_reg;
reg [0:0] y_is_0_reg_1238_pp0_iter5_reg;
reg [0:0] y_is_0_reg_1238_pp0_iter6_reg;
reg [0:0] y_is_0_reg_1238_pp0_iter7_reg;
wire [0:0] y_is_inf_fu_303_p2;
reg [0:0] y_is_inf_reg_1243;
reg [0:0] y_is_inf_reg_1243_pp0_iter1_reg;
reg [0:0] y_is_inf_reg_1243_pp0_iter2_reg;
reg [0:0] y_is_inf_reg_1243_pp0_iter3_reg;
reg [0:0] y_is_inf_reg_1243_pp0_iter4_reg;
reg [0:0] y_is_inf_reg_1243_pp0_iter5_reg;
reg [0:0] y_is_inf_reg_1243_pp0_iter6_reg;
reg [0:0] y_is_inf_reg_1243_pp0_iter7_reg;
wire [0:0] or_ln407_fu_321_p2;
reg [0:0] or_ln407_reg_1250;
reg [0:0] or_ln407_reg_1250_pp0_iter1_reg;
reg [0:0] or_ln407_reg_1250_pp0_iter2_reg;
reg [0:0] or_ln407_reg_1250_pp0_iter3_reg;
reg [0:0] or_ln407_reg_1250_pp0_iter4_reg;
reg [0:0] or_ln407_reg_1250_pp0_iter5_reg;
reg [0:0] or_ln407_reg_1250_pp0_iter6_reg;
reg [0:0] or_ln407_reg_1250_pp0_iter7_reg;
wire signed [119:0] m_frac_l_V_fu_361_p2;
reg signed [119:0] m_frac_l_V_reg_1256;
reg signed [119:0] m_frac_l_V_reg_1256_pp0_iter1_reg;
reg signed [119:0] m_frac_l_V_reg_1256_pp0_iter2_reg;
reg signed [119:0] m_frac_l_V_reg_1256_pp0_iter3_reg;
reg signed [119:0] m_frac_l_V_reg_1256_pp0_iter4_reg;
reg signed [119:0] m_frac_l_V_reg_1256_pp0_iter5_reg;
reg signed [119:0] m_frac_l_V_reg_1256_pp0_iter6_reg;
reg signed [119:0] m_frac_l_V_reg_1256_pp0_iter7_reg;
reg [0:0] p_Result_10_reg_1265;
reg [0:0] p_Result_10_reg_1265_pp0_iter2_reg;
reg [58:0] trunc_ln2_reg_1275;
reg [58:0] trunc_ln2_reg_1275_pp0_iter2_reg;
reg [58:0] trunc_ln2_reg_1275_pp0_iter3_reg;
reg [58:0] trunc_ln2_reg_1275_pp0_iter4_reg;
wire [0:0] icmp_ln657_fu_591_p2;
reg [0:0] icmp_ln657_reg_1280;
reg [0:0] icmp_ln657_reg_1280_pp0_iter2_reg;
reg [0:0] icmp_ln657_reg_1280_pp0_iter3_reg;
reg [0:0] icmp_ln657_reg_1280_pp0_iter4_reg;
reg [0:0] icmp_ln657_reg_1280_pp0_iter5_reg;
reg [0:0] icmp_ln657_reg_1280_pp0_iter6_reg;
reg [0:0] icmp_ln657_reg_1280_pp0_iter7_reg;
wire [0:0] icmp_ln1654_fu_597_p2;
reg [0:0] icmp_ln1654_reg_1285;
reg [0:0] icmp_ln1654_reg_1285_pp0_iter2_reg;
reg [0:0] icmp_ln1654_reg_1285_pp0_iter3_reg;
reg [0:0] icmp_ln1654_reg_1285_pp0_iter4_reg;
reg [0:0] icmp_ln1654_reg_1285_pp0_iter5_reg;
reg [0:0] icmp_ln1654_reg_1285_pp0_iter6_reg;
reg [0:0] icmp_ln1654_reg_1285_pp0_iter7_reg;
wire signed [12:0] ret_V_8_fu_653_p3;
reg signed [12:0] ret_V_8_reg_1295;
reg signed [12:0] ret_V_8_reg_1295_pp0_iter5_reg;
reg signed [12:0] ret_V_8_reg_1295_pp0_iter6_reg;
reg signed [12:0] ret_V_8_reg_1295_pp0_iter7_reg;
reg [7:0] m_diff_hi_V_reg_1302;
reg [7:0] Z2_V_reg_1307;
reg [7:0] Z2_V_reg_1307_pp0_iter6_reg;
wire [7:0] Z3_V_fu_705_p4;
reg [7:0] Z3_V_reg_1314;
wire [34:0] Z4_fu_715_p1;
reg [34:0] Z4_reg_1319;
wire [43:0] exp_Z2P_m_1_V_fu_817_p2;
reg [43:0] exp_Z2P_m_1_V_reg_1339;
reg [57:0] exp_Z1_V_reg_1350;
reg [49:0] exp_Z1P_m_1_V_reg_1355;
reg [49:0] exp_Z1_hi_V_reg_1360;
wire [63:0] zext_ln541_1_fu_729_p1;
wire ap_block_pp0_stage0;
wire [63:0] zext_ln541_2_fu_734_p1;
wire [63:0] zext_ln541_fu_739_p1;
wire [63:0] zext_ln541_3_fu_823_p1;
wire [63:0] data_V_fu_259_p1;
wire [51:0] es_sig_V_fu_281_p1;
wire [0:0] icmp_ln1019_fu_291_p2;
wire [0:0] icmp_ln1019_1_fu_297_p2;
wire [0:0] xor_ln1023_fu_309_p2;
wire [0:0] y_is_NaN_fu_315_p2;
wire [51:0] p_Result_8_fu_327_p1;
wire [52:0] p_Result_9_fu_331_p3;
wire [53:0] zext_ln294_fu_339_p1;
wire [53:0] e_frac_V_1_fu_343_p2;
wire signed [53:0] e_frac_V_2_fu_349_p3;
wire [66:0] m_frac_l_V_fu_361_p1;
wire [11:0] zext_ln515_fu_367_p1;
wire signed [11:0] m_exp_fu_370_p2;
wire signed [10:0] sub_ln1512_fu_390_p2;
wire [0:0] isNeg_fu_382_p3;
wire signed [11:0] sext_ln1512_fu_395_p1;
wire [11:0] ush_fu_399_p3;
wire signed [31:0] sext_ln1488_fu_407_p1;
wire [119:0] sext_ln1488cast_fu_415_p1;
wire [119:0] r_V_fu_419_p2;
wire signed [130:0] sext_ln568_fu_376_p1;
wire [130:0] zext_ln1488_fu_411_p1;
wire [130:0] r_V_1_fu_428_p2;
wire signed [129:0] sext_ln1487_fu_424_p1;
wire [129:0] trunc_ln1487_1_fu_434_p1;
wire [129:0] m_fix_l_V_fu_438_p3;
wire [129:0] zext_ln1454_fu_446_p1;
wire [129:0] r_V_2_fu_450_p2;
wire [129:0] r_V_3_fu_456_p2;
wire signed [31:0] sext_ln1454_fu_478_p1;
wire [130:0] zext_ln1454_1_fu_482_p1;
wire [130:0] r_V_5_fu_486_p2;
wire [0:0] isNeg_1_fu_496_p3;
wire [11:0] ush_2_fu_504_p3;
wire signed [31:0] sext_ln1454_1_fu_512_p1;
wire [130:0] zext_ln1454_2_fu_516_p1;
wire [130:0] r_V_6_fu_520_p2;
wire [119:0] sext_ln1454_1cast_fu_530_p1;
wire [119:0] r_V_7_fu_534_p2;
wire [129:0] trunc_ln1453_fu_526_p1;
wire signed [129:0] sext_ln1453_fu_539_p1;
wire [0:0] tmp_5_fu_470_p3;
wire [129:0] r_V_8_fu_543_p3;
wire [129:0] trunc_ln1487_2_fu_492_p1;
wire [129:0] select_ln578_fu_551_p3;
wire signed [15:0] m_fix_hi_V_fu_559_p4;
wire signed [129:0] sext_ln568_1_fu_379_p1;
wire [129:0] r_V_17_fu_462_p3;
wire signed [18:0] rhs_fu_603_p3;
wire signed [30:0] grp_fu_1214_p3;
wire [17:0] trunc_ln1003_fu_630_p1;
wire [12:0] ret_V_cast_fu_614_p4;
wire [0:0] icmp_ln1003_fu_633_p2;
wire [12:0] ret_V_fu_639_p2;
wire [0:0] p_Result_s_fu_623_p3;
wire [12:0] select_ln1002_fu_645_p3;
wire [70:0] r_V_12_fu_664_p2;
wire [58:0] trunc_ln813_1_fu_670_p4;
wire [58:0] m_diff_V_fu_680_p2;
wire [7:0] Z4_ind_fu_719_p4;
wire [9:0] r_fu_743_p4;
wire [35:0] zext_ln813_fu_753_p1;
wire [35:0] zext_ln813_1_fu_756_p1;
wire [42:0] ret_V_10_fu_766_p4;
wire [35:0] ret_V_9_fu_760_p2;
wire [42:0] r_V_14_fu_787_p0;
wire [35:0] r_V_14_fu_787_p1;
wire [78:0] r_V_14_fu_787_p2;
wire [19:0] trunc_ln813_4_fu_793_p4;
wire [35:0] zext_ln813_2_fu_803_p1;
wire [35:0] add_ln813_fu_807_p2;
wire [43:0] zext_ln813_3_fu_813_p1;
wire [43:0] zext_ln1347_fu_775_p1;
wire [39:0] tmp_2_fu_827_p4;
wire [48:0] exp_Z2_m_1_V_fu_837_p4;
wire [48:0] r_V_15_fu_853_p0;
wire [43:0] r_V_15_fu_853_p1;
wire [50:0] lhs_V_1_fu_859_p5;
wire [92:0] r_V_15_fu_853_p2;
wire [35:0] trunc_ln813_5_fu_874_p4;
wire [43:0] zext_ln813_4_fu_884_p1;
wire [43:0] add_ln813_2_fu_888_p2;
wire [51:0] zext_ln813_5_fu_893_p1;
wire [51:0] zext_ln1347_1_fu_870_p1;
wire [51:0] exp_Z1P_m_1_l_V_fu_897_p2;
wire [49:0] r_V_19_fu_950_p0;
wire [49:0] r_V_19_fu_950_p1;
wire [57:0] ret_V_11_fu_939_p2;
wire [99:0] r_V_19_fu_950_p2;
wire [55:0] trunc_ln1347_fu_972_p1;
wire [106:0] lhs_V_4_fu_956_p3;
wire [106:0] zext_ln1347_2_fu_964_p1;
wire [104:0] trunc_ln3_fu_976_p3;
wire [104:0] zext_ln1347_3_fu_968_p1;
wire [106:0] ret_V_6_fu_984_p2;
wire [0:0] p_Result_3_fu_996_p3;
wire [12:0] r_exp_V_fu_1004_p2;
wire [12:0] r_exp_V_2_fu_1009_p3;
wire [2:0] tmp_11_fu_1020_p4;
wire [0:0] and_ln657_fu_1016_p2;
wire [0:0] icmp_ln1035_fu_1030_p2;
wire [0:0] tmp_12_fu_1042_p3;
wire [104:0] add_ln1347_1_fu_990_p2;
wire [51:0] tmp_fu_1057_p4;
wire [51:0] tmp_1_fu_1067_p4;
wire [10:0] trunc_ln186_fu_1085_p1;
wire [10:0] out_exp_V_fu_1089_p2;
wire [51:0] tmp_14_fu_1077_p3;
wire [63:0] p_Result_11_fu_1095_p4;
wire [0:0] xor_ln460_fu_1114_p2;
wire [0:0] and_ln467_fu_935_p2;
wire [0:0] xor_ln407_fu_1109_p2;
wire [0:0] xor_ln467_fu_1124_p2;
wire [0:0] and_ln467_1_fu_1130_p2;
wire [0:0] or_ln460_fu_1119_p2;
wire [0:0] and_ln467_2_fu_1136_p2;
wire [0:0] or_ln657_fu_1036_p2;
wire [0:0] and_ln657_1_fu_1142_p2;
wire [63:0] select_ln658_fu_1049_p3;
wire [0:0] icmp_ln1039_fu_1162_p2;
wire [0:0] xor_ln657_fu_1156_p2;
wire [0:0] and_ln1039_fu_1168_p2;
wire [0:0] and_ln1039_1_fu_1174_p2;
wire [63:0] bitcast_ln526_fu_1105_p1;
wire [63:0] select_ln657_fu_1148_p3;
wire [63:0] select_ln407_fu_923_p3;
wire [63:0] select_ln1039_fu_1180_p3;
wire [0:0] xor_ln970_fu_930_p2;
wire [0:0] and_ln460_fu_1195_p2;
wire [0:0] and_ln460_1_fu_1201_p2;
wire [63:0] select_ln407_1_fu_1188_p3;
wire [14:0] grp_fu_1214_p1;
reg [0:0] ap_NS_fsm;
reg ap_idle_pp0_0to7;
reg ap_reset_idle_pp0;
wire ap_enable_pp0;
wire [78:0] r_V_14_fu_787_p00;
wire [78:0] r_V_14_fu_787_p10;
wire [92:0] r_V_15_fu_853_p00;
wire [92:0] r_V_15_fu_853_p10;
wire [99:0] r_V_19_fu_950_p00;
wire [99:0] r_V_19_fu_950_p10;
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
end
entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_arbkb #(
 .DataWidth( 58 ),
 .AddressRange( 256 ),
 .AddressWidth( 8 ))
pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_address0),
 .ce0(pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_ce0),
 .q0(pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_q0)
);
entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_arracud #(
 .DataWidth( 26 ),
 .AddressRange( 256 ),
 .AddressWidth( 8 ))
pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_address0),
 .ce0(pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_ce0),
 .q0(pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_q0),
 .address1(pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_address1),
 .ce1(pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_ce1),
 .q1(pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_q1)
);
entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_arradEe #(
 .DataWidth( 42 ),
 .AddressRange( 256 ),
 .AddressWidth( 8 ))
pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_address0),
 .ce0(pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_ce0),
 .q0(pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_q0)
);
entry_point_mul_54s_67ns_120_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 54 ),
 .din1_WIDTH( 67 ),
 .dout_WIDTH( 120 ))
mul_54s_67ns_120_1_1_U1(
 .din0(e_frac_V_2_fu_349_p3),
 .din1(m_frac_l_V_fu_361_p1),
 .dout(m_frac_l_V_fu_361_p2)
);
entry_point_mul_13s_71s_71_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 13 ),
 .din1_WIDTH( 71 ),
 .dout_WIDTH( 71 ))
mul_13s_71s_71_1_1_U2(
 .din0(ret_V_8_reg_1295),
 .din1(71'd1636647506585939924452),
 .dout(r_V_12_fu_664_p2)
);
entry_point_mul_43ns_36ns_79_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 43 ),
 .din1_WIDTH( 36 ),
 .dout_WIDTH( 79 ))
mul_43ns_36ns_79_1_1_U3(
 .din0(r_V_14_fu_787_p0),
 .din1(r_V_14_fu_787_p1),
 .dout(r_V_14_fu_787_p2)
);
entry_point_mul_49ns_44ns_93_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 49 ),
 .din1_WIDTH( 44 ),
 .dout_WIDTH( 93 ))
mul_49ns_44ns_93_1_1_U4(
 .din0(r_V_15_fu_853_p0),
 .din1(r_V_15_fu_853_p1),
 .dout(r_V_15_fu_853_p2)
);
entry_point_mul_50ns_50ns_100_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 50 ),
 .din1_WIDTH( 50 ),
 .dout_WIDTH( 100 ))
mul_50ns_50ns_100_1_1_U5(
 .din0(r_V_19_fu_950_p0),
 .din1(r_V_19_fu_950_p1),
 .dout(r_V_19_fu_950_p2)
);
entry_point_mac_muladd_16s_15ns_19s_31_4_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 16 ),
 .din1_WIDTH( 15 ),
 .din2_WIDTH( 19 ),
 .dout_WIDTH( 31 ))
mac_muladd_16s_15ns_19s_31_4_1_U6(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(m_fix_hi_V_fu_559_p4),
 .din1(grp_fu_1214_p1),
 .din2(rhs_fu_603_p3),
 .ce(1'b1),
 .dout(grp_fu_1214_p3)
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
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_enable_reg_pp0_iter1 <= ap_start;
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
 if (((1'b0 == ap_block_pp0_stage0_11001) & (or_ln407_reg_1250_pp0_iter4_reg == 1'd0))) begin
 Z2_V_reg_1307 <= {{m_diff_V_fu_680_p2[50:43]}};
 Z3_V_reg_1314 <= {{m_diff_V_fu_680_p2[42:35]}};
 Z4_reg_1319 <= Z4_fu_715_p1;
 m_diff_hi_V_reg_1302 <= {{m_diff_V_fu_680_p2[58:51]}};
 end
end
always @ (posedge ap_clk) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 Z2_V_reg_1307_pp0_iter6_reg <= Z2_V_reg_1307;
 icmp_ln1654_reg_1285_pp0_iter2_reg <= icmp_ln1654_reg_1285;
 icmp_ln1654_reg_1285_pp0_iter3_reg <= icmp_ln1654_reg_1285_pp0_iter2_reg;
 icmp_ln1654_reg_1285_pp0_iter4_reg <= icmp_ln1654_reg_1285_pp0_iter3_reg;
 icmp_ln1654_reg_1285_pp0_iter5_reg <= icmp_ln1654_reg_1285_pp0_iter4_reg;
 icmp_ln1654_reg_1285_pp0_iter6_reg <= icmp_ln1654_reg_1285_pp0_iter5_reg;
 icmp_ln1654_reg_1285_pp0_iter7_reg <= icmp_ln1654_reg_1285_pp0_iter6_reg;
 icmp_ln657_reg_1280_pp0_iter2_reg <= icmp_ln657_reg_1280;
 icmp_ln657_reg_1280_pp0_iter3_reg <= icmp_ln657_reg_1280_pp0_iter2_reg;
 icmp_ln657_reg_1280_pp0_iter4_reg <= icmp_ln657_reg_1280_pp0_iter3_reg;
 icmp_ln657_reg_1280_pp0_iter5_reg <= icmp_ln657_reg_1280_pp0_iter4_reg;
 icmp_ln657_reg_1280_pp0_iter6_reg <= icmp_ln657_reg_1280_pp0_iter5_reg;
 icmp_ln657_reg_1280_pp0_iter7_reg <= icmp_ln657_reg_1280_pp0_iter6_reg;
 m_frac_l_V_reg_1256_pp0_iter2_reg <= m_frac_l_V_reg_1256_pp0_iter1_reg;
 m_frac_l_V_reg_1256_pp0_iter3_reg <= m_frac_l_V_reg_1256_pp0_iter2_reg;
 m_frac_l_V_reg_1256_pp0_iter4_reg <= m_frac_l_V_reg_1256_pp0_iter3_reg;
 m_frac_l_V_reg_1256_pp0_iter5_reg <= m_frac_l_V_reg_1256_pp0_iter4_reg;
 m_frac_l_V_reg_1256_pp0_iter6_reg <= m_frac_l_V_reg_1256_pp0_iter5_reg;
 m_frac_l_V_reg_1256_pp0_iter7_reg <= m_frac_l_V_reg_1256_pp0_iter6_reg;
 or_ln407_reg_1250_pp0_iter2_reg <= or_ln407_reg_1250_pp0_iter1_reg;
 or_ln407_reg_1250_pp0_iter3_reg <= or_ln407_reg_1250_pp0_iter2_reg;
 or_ln407_reg_1250_pp0_iter4_reg <= or_ln407_reg_1250_pp0_iter3_reg;
 or_ln407_reg_1250_pp0_iter5_reg <= or_ln407_reg_1250_pp0_iter4_reg;
 or_ln407_reg_1250_pp0_iter6_reg <= or_ln407_reg_1250_pp0_iter5_reg;
 or_ln407_reg_1250_pp0_iter7_reg <= or_ln407_reg_1250_pp0_iter6_reg;
 p_Result_10_reg_1265_pp0_iter2_reg <= p_Result_10_reg_1265;
 p_Result_7_reg_1225_pp0_iter2_reg <= p_Result_7_reg_1225_pp0_iter1_reg;
 p_Result_7_reg_1225_pp0_iter3_reg <= p_Result_7_reg_1225_pp0_iter2_reg;
 p_Result_7_reg_1225_pp0_iter4_reg <= p_Result_7_reg_1225_pp0_iter3_reg;
 p_Result_7_reg_1225_pp0_iter5_reg <= p_Result_7_reg_1225_pp0_iter4_reg;
 p_Result_7_reg_1225_pp0_iter6_reg <= p_Result_7_reg_1225_pp0_iter5_reg;
 p_Result_7_reg_1225_pp0_iter7_reg <= p_Result_7_reg_1225_pp0_iter6_reg;
 ret_V_8_reg_1295_pp0_iter5_reg <= ret_V_8_reg_1295;
 ret_V_8_reg_1295_pp0_iter6_reg <= ret_V_8_reg_1295_pp0_iter5_reg;
 ret_V_8_reg_1295_pp0_iter7_reg <= ret_V_8_reg_1295_pp0_iter6_reg;
 trunc_ln2_reg_1275_pp0_iter2_reg <= trunc_ln2_reg_1275;
 trunc_ln2_reg_1275_pp0_iter3_reg <= trunc_ln2_reg_1275_pp0_iter2_reg;
 trunc_ln2_reg_1275_pp0_iter4_reg <= trunc_ln2_reg_1275_pp0_iter3_reg;
 y_is_0_reg_1238_pp0_iter2_reg <= y_is_0_reg_1238_pp0_iter1_reg;
 y_is_0_reg_1238_pp0_iter3_reg <= y_is_0_reg_1238_pp0_iter2_reg;
 y_is_0_reg_1238_pp0_iter4_reg <= y_is_0_reg_1238_pp0_iter3_reg;
 y_is_0_reg_1238_pp0_iter5_reg <= y_is_0_reg_1238_pp0_iter4_reg;
 y_is_0_reg_1238_pp0_iter6_reg <= y_is_0_reg_1238_pp0_iter5_reg;
 y_is_0_reg_1238_pp0_iter7_reg <= y_is_0_reg_1238_pp0_iter6_reg;
 y_is_inf_reg_1243_pp0_iter2_reg <= y_is_inf_reg_1243_pp0_iter1_reg;
 y_is_inf_reg_1243_pp0_iter3_reg <= y_is_inf_reg_1243_pp0_iter2_reg;
 y_is_inf_reg_1243_pp0_iter4_reg <= y_is_inf_reg_1243_pp0_iter3_reg;
 y_is_inf_reg_1243_pp0_iter5_reg <= y_is_inf_reg_1243_pp0_iter4_reg;
 y_is_inf_reg_1243_pp0_iter6_reg <= y_is_inf_reg_1243_pp0_iter5_reg;
 y_is_inf_reg_1243_pp0_iter7_reg <= y_is_inf_reg_1243_pp0_iter6_reg;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 es_exp_V_reg_1232 <= {{data_V_fu_259_p1[62:52]}};
 m_frac_l_V_reg_1256 <= m_frac_l_V_fu_361_p2;
 m_frac_l_V_reg_1256_pp0_iter1_reg <= m_frac_l_V_reg_1256;
 or_ln407_reg_1250 <= or_ln407_fu_321_p2;
 or_ln407_reg_1250_pp0_iter1_reg <= or_ln407_reg_1250;
 p_Result_7_reg_1225 <= data_V_fu_259_p1[32'd63];
 p_Result_7_reg_1225_pp0_iter1_reg <= p_Result_7_reg_1225;
 y_is_0_reg_1238 <= y_is_0_fu_285_p2;
 y_is_0_reg_1238_pp0_iter1_reg <= y_is_0_reg_1238;
 y_is_inf_reg_1243 <= y_is_inf_fu_303_p2;
 y_is_inf_reg_1243_pp0_iter1_reg <= y_is_inf_reg_1243;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (or_ln407_reg_1250_pp0_iter6_reg == 1'd0))) begin
 exp_Z1P_m_1_V_reg_1355 <= {{exp_Z1P_m_1_l_V_fu_897_p2[51:2]}};
 exp_Z1_V_reg_1350 <= pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_q0;
 exp_Z1_hi_V_reg_1360 <= {{pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_q0[57:8]}};
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (or_ln407_reg_1250_pp0_iter5_reg == 1'd0))) begin
 exp_Z2P_m_1_V_reg_1339 <= exp_Z2P_m_1_V_fu_817_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (or_ln407_reg_1250 == 1'd0))) begin
 icmp_ln1654_reg_1285 <= icmp_ln1654_fu_597_p2;
 icmp_ln657_reg_1280 <= icmp_ln657_fu_591_p2;
 p_Result_10_reg_1265 <= select_ln578_fu_551_p3[32'd129];
 trunc_ln2_reg_1275 <= {{select_ln578_fu_551_p3[117:59]}};
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (or_ln407_reg_1250_pp0_iter3_reg == 1'd0))) begin
 ret_V_8_reg_1295 <= ret_V_8_fu_653_p3;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
 ap_done = 1'b1;
 end else begin
 ap_done = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
 ap_idle_pp0 = 1'b1;
 end else begin
 ap_idle_pp0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
 ap_idle_pp0_0to7 = 1'b1;
 end else begin
 ap_idle_pp0_0to7 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((ap_idle_pp0_0to7 == 1'b1) & (ap_start == 1'b0))) begin
 ap_reset_idle_pp0 = 1'b1;
 end else begin
 ap_reset_idle_pp0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
 pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_ce0 = 1'b1;
 end else begin
 pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
 pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_ce0 = 1'b1;
 end else begin
 pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
 pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_ce0 = 1'b1;
 end else begin
 pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
 pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_ce1 = 1'b1;
 end else begin
 pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_ce1 = 1'b0;
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
assign Z3_V_fu_705_p4 = {{m_diff_V_fu_680_p2[42:35]}};
assign Z4_fu_715_p1 = m_diff_V_fu_680_p2[34:0];
assign Z4_ind_fu_719_p4 = {{m_diff_V_fu_680_p2[34:27]}};
assign add_ln1347_1_fu_990_p2 = (trunc_ln3_fu_976_p3 + zext_ln1347_3_fu_968_p1);
assign add_ln813_2_fu_888_p2 = (exp_Z2P_m_1_V_reg_1339 + zext_ln813_4_fu_884_p1);
assign add_ln813_fu_807_p2 = (ret_V_9_fu_760_p2 + zext_ln813_2_fu_803_p1);
assign and_ln1039_1_fu_1174_p2 = (and_ln467_2_fu_1136_p2 & and_ln1039_fu_1168_p2);
assign and_ln1039_fu_1168_p2 = (xor_ln657_fu_1156_p2 & icmp_ln1039_fu_1162_p2);
assign and_ln460_1_fu_1201_p2 = (y_is_inf_reg_1243_pp0_iter7_reg & and_ln460_fu_1195_p2);
assign and_ln460_fu_1195_p2 = (xor_ln970_fu_930_p2 & xor_ln407_fu_1109_p2);
assign and_ln467_1_fu_1130_p2 = (xor_ln467_fu_1124_p2 & xor_ln407_fu_1109_p2);
assign and_ln467_2_fu_1136_p2 = (or_ln460_fu_1119_p2 & and_ln467_1_fu_1130_p2);
assign and_ln467_fu_935_p2 = (y_is_inf_reg_1243_pp0_iter7_reg & p_Result_7_reg_1225_pp0_iter7_reg);
assign and_ln657_1_fu_1142_p2 = (or_ln657_fu_1036_p2 & and_ln467_2_fu_1136_p2);
assign and_ln657_fu_1016_p2 = (icmp_ln657_reg_1280_pp0_iter7_reg & icmp_ln1654_reg_1285_pp0_iter7_reg);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
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
assign ap_enable_reg_pp0_iter0 = ap_start;
assign ap_return = ((and_ln460_1_fu_1201_p2[0:0] == 1'b1) ? 64'd9218868437227405312 : select_ln407_1_fu_1188_p3);
assign bitcast_ln526_fu_1105_p1 = p_Result_11_fu_1095_p4;
assign data_V_fu_259_p1 = exp;
assign e_frac_V_1_fu_343_p2 = (54'd0 - zext_ln294_fu_339_p1);
assign e_frac_V_2_fu_349_p3 = ((p_Result_7_fu_263_p3[0:0] == 1'b1) ? e_frac_V_1_fu_343_p2 : zext_ln294_fu_339_p1);
assign es_exp_V_fu_271_p4 = {{data_V_fu_259_p1[62:52]}};
assign es_sig_V_fu_281_p1 = data_V_fu_259_p1[51:0];
assign exp_Z1P_m_1_l_V_fu_897_p2 = (zext_ln813_5_fu_893_p1 + zext_ln1347_1_fu_870_p1);
assign exp_Z2P_m_1_V_fu_817_p2 = (zext_ln813_3_fu_813_p1 + zext_ln1347_fu_775_p1);
assign exp_Z2_m_1_V_fu_837_p4 = {{{Z2_V_reg_1307_pp0_iter6_reg}, {1'd0}}, {tmp_2_fu_827_p4}};
assign grp_fu_1214_p1 = 31'd23637;
assign icmp_ln1003_fu_633_p2 = ((trunc_ln1003_fu_630_p1 == 18'd0) ? 1'b1 : 1'b0);
assign icmp_ln1019_1_fu_297_p2 = ((es_sig_V_fu_281_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln1019_fu_291_p2 = ((es_exp_V_fu_271_p4 == 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln1035_fu_1030_p2 = (($signed(tmp_11_fu_1020_p4) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign icmp_ln1039_fu_1162_p2 = (($signed(r_exp_V_2_fu_1009_p3) > $signed(13'd7169)) ? 1'b1 : 1'b0);
assign icmp_ln1654_fu_597_p2 = ((sext_ln568_1_fu_379_p1 != r_V_17_fu_462_p3) ? 1'b1 : 1'b0);
assign icmp_ln657_fu_591_p2 = (($signed(m_exp_fu_370_p2) > $signed(12'd0)) ? 1'b1 : 1'b0);
assign isNeg_1_fu_496_p3 = sub_ln1512_fu_390_p2[32'd10];
assign isNeg_fu_382_p3 = m_exp_fu_370_p2[32'd11];
assign lhs_V_1_fu_859_p5 = {{{{Z2_V_reg_1307_pp0_iter6_reg}, {1'd0}}, {tmp_2_fu_827_p4}}, {2'd0}};
assign lhs_V_4_fu_956_p3 = {{ret_V_11_fu_939_p2}, {49'd0}};
assign m_diff_V_fu_680_p2 = (trunc_ln2_reg_1275_pp0_iter4_reg - trunc_ln813_1_fu_670_p4);
assign m_exp_fu_370_p2 = ($signed(zext_ln515_fu_367_p1) + $signed(12'd3073));
assign m_fix_hi_V_fu_559_p4 = {{select_ln578_fu_551_p3[129:114]}};
assign m_fix_l_V_fu_438_p3 = ((isNeg_fu_382_p3[0:0] == 1'b1) ? sext_ln1487_fu_424_p1 : trunc_ln1487_1_fu_434_p1);
assign m_frac_l_V_fu_361_p1 = 120'd51145234580810622639;
assign or_ln407_fu_321_p2 = (y_is_NaN_fu_315_p2 | y_is_0_fu_285_p2);
assign or_ln460_fu_1119_p2 = (xor_ln460_fu_1114_p2 | p_Result_7_reg_1225_pp0_iter7_reg);
assign or_ln657_fu_1036_p2 = (icmp_ln1035_fu_1030_p2 | and_ln657_fu_1016_p2);
assign out_exp_V_fu_1089_p2 = (trunc_ln186_fu_1085_p1 + 11'd1023);
assign p_Result_11_fu_1095_p4 = {{{{1'd0}, {out_exp_V_fu_1089_p2}}}, {tmp_14_fu_1077_p3}};
assign p_Result_3_fu_996_p3 = ret_V_6_fu_984_p2[32'd106];
assign p_Result_7_fu_263_p3 = data_V_fu_259_p1[32'd63];
assign p_Result_8_fu_327_p1 = data_V_fu_259_p1[51:0];
assign p_Result_9_fu_331_p3 = {{1'd1}, {p_Result_8_fu_327_p1}};
assign p_Result_s_fu_623_p3 = grp_fu_1214_p3[32'd30];
assign pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_address0 = zext_ln541_fu_739_p1;
assign pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_address0 = zext_ln541_3_fu_823_p1;
assign pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_address0 = zext_ln541_2_fu_734_p1;
assign pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_address1 = zext_ln541_1_fu_729_p1;
assign r_V_14_fu_787_p0 = r_V_14_fu_787_p00;
assign r_V_14_fu_787_p00 = ret_V_10_fu_766_p4;
assign r_V_14_fu_787_p1 = r_V_14_fu_787_p10;
assign r_V_14_fu_787_p10 = ret_V_9_fu_760_p2;
assign r_V_15_fu_853_p0 = r_V_15_fu_853_p00;
assign r_V_15_fu_853_p00 = exp_Z2_m_1_V_fu_837_p4;
assign r_V_15_fu_853_p1 = r_V_15_fu_853_p10;
assign r_V_15_fu_853_p10 = exp_Z2P_m_1_V_reg_1339;
assign r_V_17_fu_462_p3 = ((isNeg_fu_382_p3[0:0] == 1'b1) ? r_V_2_fu_450_p2 : r_V_3_fu_456_p2);
assign r_V_19_fu_950_p0 = r_V_19_fu_950_p00;
assign r_V_19_fu_950_p00 = exp_Z1P_m_1_V_reg_1355;
assign r_V_19_fu_950_p1 = r_V_19_fu_950_p10;
assign r_V_19_fu_950_p10 = exp_Z1_hi_V_reg_1360;
assign r_V_1_fu_428_p2 = sext_ln568_fu_376_p1 << zext_ln1488_fu_411_p1;
assign r_V_2_fu_450_p2 = m_fix_l_V_fu_438_p3 << zext_ln1454_fu_446_p1;
assign r_V_3_fu_456_p2 = $signed(m_fix_l_V_fu_438_p3) >>> zext_ln1454_fu_446_p1;
assign r_V_5_fu_486_p2 = sext_ln568_fu_376_p1 << zext_ln1454_1_fu_482_p1;
assign r_V_6_fu_520_p2 = sext_ln568_fu_376_p1 << zext_ln1454_2_fu_516_p1;
assign r_V_7_fu_534_p2 = $signed(m_frac_l_V_reg_1256) >>> sext_ln1454_1cast_fu_530_p1;
assign r_V_8_fu_543_p3 = ((isNeg_1_fu_496_p3[0:0] == 1'b1) ? trunc_ln1453_fu_526_p1 : sext_ln1453_fu_539_p1);
assign r_V_fu_419_p2 = $signed(m_frac_l_V_reg_1256) >>> sext_ln1488cast_fu_415_p1;
assign r_exp_V_2_fu_1009_p3 = ((p_Result_3_fu_996_p3[0:0] == 1'b1) ? ret_V_8_reg_1295_pp0_iter7_reg : r_exp_V_fu_1004_p2);
assign r_exp_V_fu_1004_p2 = ($signed(ret_V_8_reg_1295_pp0_iter7_reg) + $signed(13'd8191));
assign r_fu_743_p4 = {{pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_q1[25:16]}};
assign ret_V_10_fu_766_p4 = {{{Z3_V_reg_1314}, {9'd0}}, {pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_q0}};
assign ret_V_11_fu_939_p2 = (exp_Z1_V_reg_1350 + 58'd16);
assign ret_V_6_fu_984_p2 = (lhs_V_4_fu_956_p3 + zext_ln1347_2_fu_964_p1);
assign ret_V_8_fu_653_p3 = ((p_Result_s_fu_623_p3[0:0] == 1'b1) ? select_ln1002_fu_645_p3 : ret_V_cast_fu_614_p4);
assign ret_V_9_fu_760_p2 = (zext_ln813_fu_753_p1 + zext_ln813_1_fu_756_p1);
assign ret_V_cast_fu_614_p4 = {{grp_fu_1214_p3[30:18]}};
assign ret_V_fu_639_p2 = (ret_V_cast_fu_614_p4 + 13'd1);
assign rhs_fu_603_p3 = {{p_Result_10_reg_1265_pp0_iter2_reg}, {18'd131072}};
assign select_ln1002_fu_645_p3 = ((icmp_ln1003_fu_633_p2[0:0] == 1'b1) ? ret_V_cast_fu_614_p4 : ret_V_fu_639_p2);
assign select_ln1039_fu_1180_p3 = ((and_ln1039_1_fu_1174_p2[0:0] == 1'b1) ? bitcast_ln526_fu_1105_p1 : select_ln657_fu_1148_p3);
assign select_ln407_1_fu_1188_p3 = ((or_ln407_reg_1250_pp0_iter7_reg[0:0] == 1'b1) ? select_ln407_fu_923_p3 : select_ln1039_fu_1180_p3);
assign select_ln407_fu_923_p3 = ((y_is_0_reg_1238_pp0_iter7_reg[0:0] == 1'b1) ? 64'd4607182418800017408 : 64'd9223372036854775807);
assign select_ln578_fu_551_p3 = ((tmp_5_fu_470_p3[0:0] == 1'b1) ? r_V_8_fu_543_p3 : trunc_ln1487_2_fu_492_p1);
assign select_ln657_fu_1148_p3 = ((and_ln657_1_fu_1142_p2[0:0] == 1'b1) ? select_ln658_fu_1049_p3 : 64'd0);
assign select_ln658_fu_1049_p3 = ((tmp_12_fu_1042_p3[0:0] == 1'b1) ? 64'd0 : 64'd9218868437227405312);
assign sext_ln1453_fu_539_p1 = $signed(r_V_7_fu_534_p2);
assign sext_ln1454_1_fu_512_p1 = $signed(ush_2_fu_504_p3);
assign sext_ln1454_1cast_fu_530_p1 = $unsigned(sext_ln1454_1_fu_512_p1);
assign sext_ln1454_fu_478_p1 = m_exp_fu_370_p2;
assign sext_ln1487_fu_424_p1 = $signed(r_V_fu_419_p2);
assign sext_ln1488_fu_407_p1 = $signed(ush_fu_399_p3);
assign sext_ln1488cast_fu_415_p1 = $unsigned(sext_ln1488_fu_407_p1);
assign sext_ln1512_fu_395_p1 = sub_ln1512_fu_390_p2;
assign sext_ln568_1_fu_379_p1 = m_frac_l_V_reg_1256;
assign sext_ln568_fu_376_p1 = m_frac_l_V_reg_1256;
assign sub_ln1512_fu_390_p2 = (11'd1023 - es_exp_V_reg_1232);
assign tmp_11_fu_1020_p4 = {{r_exp_V_2_fu_1009_p3[12:10]}};
assign tmp_12_fu_1042_p3 = m_frac_l_V_reg_1256_pp0_iter7_reg[32'd119];
assign tmp_14_fu_1077_p3 = ((p_Result_3_fu_996_p3[0:0] == 1'b1) ? tmp_fu_1057_p4 : tmp_1_fu_1067_p4);
assign tmp_1_fu_1067_p4 = {{add_ln1347_1_fu_990_p2[104:53]}};
assign tmp_2_fu_827_p4 = {{pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_q0[41:2]}};
assign tmp_5_fu_470_p3 = m_exp_fu_370_p2[32'd11];
assign tmp_fu_1057_p4 = {{ret_V_6_fu_984_p2[105:54]}};
assign trunc_ln1003_fu_630_p1 = grp_fu_1214_p3[17:0];
assign trunc_ln1347_fu_972_p1 = ret_V_11_fu_939_p2[55:0];
assign trunc_ln1453_fu_526_p1 = r_V_6_fu_520_p2[129:0];
assign trunc_ln1487_1_fu_434_p1 = r_V_1_fu_428_p2[129:0];
assign trunc_ln1487_2_fu_492_p1 = r_V_5_fu_486_p2[129:0];
assign trunc_ln186_fu_1085_p1 = r_exp_V_2_fu_1009_p3[10:0];
assign trunc_ln3_fu_976_p3 = {{trunc_ln1347_fu_972_p1}, {49'd0}};
assign trunc_ln813_1_fu_670_p4 = {{r_V_12_fu_664_p2[70:12]}};
assign trunc_ln813_4_fu_793_p4 = {{r_V_14_fu_787_p2[78:59]}};
assign trunc_ln813_5_fu_874_p4 = {{r_V_15_fu_853_p2[92:57]}};
assign ush_2_fu_504_p3 = ((isNeg_1_fu_496_p3[0:0] == 1'b1) ? m_exp_fu_370_p2 : sext_ln1512_fu_395_p1);
assign ush_fu_399_p3 = ((isNeg_fu_382_p3[0:0] == 1'b1) ? sext_ln1512_fu_395_p1 : m_exp_fu_370_p2);
assign xor_ln1023_fu_309_p2 = (icmp_ln1019_1_fu_297_p2 ^ 1'd1);
assign xor_ln407_fu_1109_p2 = (or_ln407_reg_1250_pp0_iter7_reg ^ 1'd1);
assign xor_ln460_fu_1114_p2 = (y_is_inf_reg_1243_pp0_iter7_reg ^ 1'd1);
assign xor_ln467_fu_1124_p2 = (1'd1 ^ and_ln467_fu_935_p2);
assign xor_ln657_fu_1156_p2 = (or_ln657_fu_1036_p2 ^ 1'd1);
assign xor_ln970_fu_930_p2 = (p_Result_7_reg_1225_pp0_iter7_reg ^ 1'd1);
assign y_is_0_fu_285_p2 = ((es_exp_V_fu_271_p4 == 11'd0) ? 1'b1 : 1'b0);
assign y_is_NaN_fu_315_p2 = (xor_ln1023_fu_309_p2 & icmp_ln1019_fu_291_p2);
assign y_is_inf_fu_303_p2 = (icmp_ln1019_fu_291_p2 & icmp_ln1019_1_fu_297_p2);
assign zext_ln1347_1_fu_870_p1 = lhs_V_1_fu_859_p5;
assign zext_ln1347_2_fu_964_p1 = r_V_19_fu_950_p2;
assign zext_ln1347_3_fu_968_p1 = r_V_19_fu_950_p2;
assign zext_ln1347_fu_775_p1 = ret_V_10_fu_766_p4;
assign zext_ln1454_1_fu_482_p1 = $unsigned(sext_ln1454_fu_478_p1);
assign zext_ln1454_2_fu_516_p1 = $unsigned(sext_ln1454_1_fu_512_p1);
assign zext_ln1454_fu_446_p1 = $unsigned(sext_ln1488_fu_407_p1);
assign zext_ln1488_fu_411_p1 = $unsigned(sext_ln1488_fu_407_p1);
assign zext_ln294_fu_339_p1 = p_Result_9_fu_331_p3;
assign zext_ln515_fu_367_p1 = es_exp_V_reg_1232;
assign zext_ln541_1_fu_729_p1 = Z4_ind_fu_719_p4;
assign zext_ln541_2_fu_734_p1 = Z3_V_fu_705_p4;
assign zext_ln541_3_fu_823_p1 = Z2_V_reg_1307;
assign zext_ln541_fu_739_p1 = m_diff_hi_V_reg_1302;
assign zext_ln813_1_fu_756_p1 = r_fu_743_p4;
assign zext_ln813_2_fu_803_p1 = trunc_ln813_4_fu_793_p4;
assign zext_ln813_3_fu_813_p1 = add_ln813_fu_807_p2;
assign zext_ln813_4_fu_884_p1 = trunc_ln813_5_fu_874_p4;
assign zext_ln813_5_fu_893_p1 = add_ln813_2_fu_888_p2;
assign zext_ln813_fu_753_p1 = Z4_reg_1319;
endmodule
module entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_arbkb (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 58;
parameter AddressWidth = 8;
parameter AddressRange = 256;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h200000000000000;
 rom0[1]=8'h2020100556AAEEF;
 rom0[2]=8'h2040402AC0088B6;
 rom0[3]=8'h206090906C40ED4;
 rom0[4]=8'h20810156ABBC722;
 rom0[5]=8'h20A1929DEF440DB;
 rom0[6]=8'h20C24486C821BA2;
 rom0[7]=8'h20E31731E84109D;
 rom0[8]=8'h21040AC0224FD93;
 rom0[9]=8'h21251F5269DF212;
 rom0[10]=8'h21465509D383EB0;
 rom0[11]=8'h2167AC0794F864E;
 rom0[12]=8'h2189246D053D178;
 rom0[13]=8'h21AABE5B9CBA3D2;
 rom0[14]=8'h21CC79F4F5613A2;
 rom0[15]=8'h21EE575ACACE36D;
 rom0[16]=8'h221056AEFA69DAF;
 rom0[17]=8'h22327813838B2B8;
 rom0[18]=8'h2254BBAA879989B;
 rom0[19]=8'h227721964A2ED49;
 rom0[20]=8'h2299A9F93139AC8;
 rom0[21]=8'h22BC54F5C51FD94;
 rom0[22]=8'h22DF22AEB0E0D25;
 rom0[23]=8'h23021346C23869F;
 rom0[24]=8'h232526E0E9C19AD;
 rom0[25]=8'h23485DA03B1978C;
 rom0[26]=8'h236BB7A7ED02446;
 rom0[27]=8'h238F351B5986A1B;
 rom0[28]=8'h23B2D61DFE1CF27;
 rom0[29]=8'h23D69AD37BCAD34;
 rom0[30]=8'h23FA835F9748BCD;
 rom0[31]=8'h241E8FE63925C8C;
 rom0[32]=8'h2442C08B6DEB99F;
 rom0[33]=8'h246715736642692;
 rom0[34]=8'h248B8EC2771535E;
 rom0[35]=8'h24B02C9D19B61B0;
 rom0[36]=8'h24D4EF27EC02C85;
 rom0[37]=8'h24F9D687B089205;
 rom0[38]=8'h251EE2E14EABFAE;
 rom0[39]=8'h25441459D2C80C7;
 rom0[40]=8'h25696B166E58F2A;
 rom0[41]=8'h258EE73C781E657;
 rom0[42]=8'h25B488F16C418E7;
 rom0[43]=8'h25DA505AEC7A849;
 rom0[44]=8'h26003D9EC035EE0;
 rom0[45]=8'h262650E2D4BAC78;
 rom0[46]=8'h264C8A4D3D5051F;
 rom0[47]=8'h2672EA043364255;
 rom0[48]=8'h2699702E16B06A5;
 rom0[49]=8'h26C01CF16D623A3;
 rom0[50]=8'h26E6F074E440249;
 rom0[51]=8'h270DEADF4ED0DCC;
 rom0[52]=8'h27350C57A7820CB;
 rom0[53]=8'h275C55050FCF500;
 rom0[54]=8'h2783C50ED06954F;
 rom0[55]=8'h27AB5C9C595D259;
 rom0[56]=8'h27D31BD5423B975;
 rom0[57]=8'h27FB02E14A40E31;
 rom0[58]=8'h282311E8587C641;
 rom0[59]=8'h284B49127BF87F3;
 rom0[60]=8'h2873A887EBE2B1D;
 rom0[61]=8'h289C307107B3C93;
 rom0[62]=8'h28C4E0F6575841B;
 rom0[63]=8'h28EDBA408B58CF1;
 rom0[64]=8'h2916BC787D030CC;
 rom0[65]=8'h293FE7C72E92575;
 rom0[66]=8'h29693C55CB58CE8;
 rom0[67]=8'h2992BA4DA7E880E;
 rom0[68]=8'h29BC61D8423CC02;
 rom0[69]=8'h29E6331F41E39F3;
 rom0[70]=8'h2A102E4C782799E;
 rom0[71]=8'h2A3A5389E039661;
 rom0[72]=8'h2A64A3019F59EED;
 rom0[73]=8'h2A8F1CDE05047A0;
 rom0[74]=8'h2AB9C1498B18F76;
 rom0[75]=8'h2AE4906ED6067AC;
 rom0[76]=8'h2B0F8A78B4F5E04;
 rom0[77]=8'h2B3AAF9221F49BC;
 rom0[78]=8'h2B65FFE6421FB2A;
 rom0[79]=8'h2B917BA065CEE11;
 rom0[80]=8'h2BBD22EC08BFEA7;
 rom0[81]=8'h2BE8F5F4D24214E;
 rom0[82]=8'h2C14F4E69561D0E;
 rom0[83]=8'h2C411FED51148C2;
 rom0[84]=8'h2C6D77353064B09;
 rom0[85]=8'h2C99FAEA8A9DCF7;
 rom0[86]=8'h2CC6AB39E378F8B;
 rom0[87]=8'h2CF3884FEB493E7;
 rom0[88]=8'h2D2092597F28659;
 rom0[89]=8'h2D4DC983A923C2F;
 rom0[90]=8'h2D7B2DFBA06944F;
 rom0[91]=8'h2DA8BFEEC974AB6;
 rom0[92]=8'h2DD67F8AB63CEB6;
 rom0[93]=8'h2E046CFD2661C1B;
 rom0[94]=8'h2E3288740759725;
 rom0[95]=8'h2E60D21D749EB5B;
 rom0[96]=8'h2E8F4A27B7DED4C;
 rom0[97]=8'h2EBDF0C14927F1F;
 rom0[98]=8'h2EECC618CF1781D;
 rom0[99]=8'h2F1BCA5D1F08F17;
 rom0[100]=8'h2F4AFDBD3D447BC;
 rom0[101]=8'h2F7A60685D2E2DF;
 rom0[102]=8'h2FA9F28DE1751AD;
 rom0[103]=8'h2FD9B45D5C42BD7;
 rom0[104]=8'h3009A6068F6A8B9;
 rom0[105]=8'h3039C7B96C99B71;
 rom0[106]=8'h306A19A615871FE;
 rom0[107]=8'h309A9BFCDC2375E;
 rom0[108]=8'h30CB4EEE42C98A8;
 rom0[109]=8'h30FC32AAFC6ED34;
 rom0[110]=8'h312D4763ECD41CD;
 rom0[111]=8'h315E8D4A28B66EA;
 rom0[112]=8'h3190048EF6001FB;
 rom0[113]=8'h31C1AD63CBFA1CA;
 rom0[114]=8'h31F387FA537D5ED;
 rom0[115]=8'h322594846724954;
 rom0[116]=8'h3257D334137DFF6;
 rom0[117]=8'h328A443B973D797;
 rom0[118]=8'h32BCE7CD636EBB3;
 rom0[119]=8'h32EFBE1C1BA7C93;
 rom0[120]=8'h3322C75A963B982;
 rom0[121]=8'h335603BBDC6CE36;
 rom0[122]=8'h338973732AA1363;
 rom0[123]=8'h33BD16B3F094282;
 rom0[124]=8'h33F0EDB1D18ACCA;
 rom0[125]=8'h3424F8A0A487569;
 rom0[126]=8'h345937B4747CEF5;
 rom0[127]=8'h348DAB218083C15;
 rom0[128]=8'h1368B2FC6F9609F;
 rom0[129]=8'h137C25670270DD7;
 rom0[130]=8'h138FAB4DBC52613;
 rom0[131]=8'h13A344C42322EF9;
 rom0[132]=8'h13B6F1DDD05A919;
 rom0[133]=8'h13CAB2AE7114981;
 rom0[134]=8'h13DE8749C623495;
 rom0[135]=8'h13F26FC3A423A16;
 rom0[136]=8'h14066C2FF39126E;
 rom0[137]=8'h141A7CA2B0D9D3C;
 rom0[138]=8'h142EA12FEC72114;
 rom0[139]=8'h1442D9EBCAE8C8A;
 rom0[140]=8'h145726EA84FB87D;
 rom0[141]=8'h146B884067AABA0;
 rom0[142]=8'h147FFE01D44DF49;
 rom0[143]=8'h1494884340A858A;
 rom0[144]=8'h14A9271936FD08D;
 rom0[145]=8'h14BDDA985623B34;
 rom0[146]=8'h14D2A2D5519D30D;
 rom0[147]=8'h14E77FE4F1A8384;
 rom0[148]=8'h14FC71DC135626C;
 rom0[149]=8'h151178CFA89FDCD;
 rom0[150]=8'h152694D4B87AB04;
 rom0[151]=8'h153BC6005EED735;
 rom0[152]=8'h15510C67CD25909;
 rom0[153]=8'h15666820498C3C0;
 rom0[154]=8'h157BD93F2FDBB9C;
 rom0[155]=8'h15915FD9F134B98;
 rom0[156]=8'h15A6FC061433C7E;
 rom0[157]=8'h15BCADD93506D4D;
 rom0[158]=8'h15D275690582D00;
 rom0[159]=8'h15E852CB4D395A9;
 rom0[160]=8'h15FE4615E98E8EA;
 rom0[161]=8'h16144F5ECDCEDCD;
 rom0[162]=8'h162A6EBC0344FF8;
 rom0[163]=8'h1640A443A950041;
 rom0[164]=8'h1656F00BF5796A6;
 rom0[165]=8'h166D522B338B5A3;
 rom0[166]=8'h1683CAB7C5A6EF3;
 rom0[167]=8'h169A59C8245A9AC;
 rom0[168]=8'h16B0FF72DEB89CE;
 rom0[169]=8'h16C7BBCE9A6D931;
 rom0[170]=8'h16DE8EF213D71E1;
 rom0[171]=8'h16F578F41E1A9E4;
 rom0[172]=8'h170C79EBA33C06A;
 rom0[173]=8'h172391EFA434C73;
 rom0[174]=8'h173AC117390ACD7;
 rom0[175]=8'h1752077990E79CF;
 rom0[176]=8'h1769652DF22F7E1;
 rom0[177]=8'h1780DA4BBA98C48;
 rom0[178]=8'h179866EA5F432D2;
 rom0[179]=8'h17B00B216CCF52F;
 rom0[180]=8'h17C7C70887763BF;
 rom0[181]=8'h17DF9AB76B20FD1;
 rom0[182]=8'h17F78645EB80764;
 rom0[183]=8'h180F89CBF425264;
 rom0[184]=8'h1827A561889715E;
 rom0[185]=8'h183FD91EC46DDC0;
 rom0[186]=8'h1858251BDB68B8A;
 rom0[187]=8'h187089711986C94;
 rom0[188]=8'h18890636E31F543;
 rom0[189]=8'h18A19B85B4FA2D9;
 rom0[190]=8'h18BA49762468339;
 rom0[191]=8'h18D31020DF5BE43;
 rom0[192]=8'h18EBEF9EAC820AE;
 rom0[193]=8'h1904E8086B5A878;
 rom0[194]=8'h191DF97714512D8;
 rom0[195]=8'h19372403B8D6BCB;
 rom0[196]=8'h195067C78379F27;
 rom0[197]=8'h1969C4DBB800B47;
 rom0[198]=8'h19833B59B381543;
 rom0[199]=8'h199CCB5AEC7BEC8;
 rom0[200]=8'h19B674F8F2F3D7A;
 rom0[201]=8'h19D0384D70893F9;
 rom0[202]=8'h19EA15722892C77;
 rom0[203]=8'h1A040C80F8374F1;
 rom0[204]=8'h1A1E1D93D687D00;
 rom0[205]=8'h1A3848C4D49954C;
 rom0[206]=8'h1A528E2E1D9F098;
 rom0[207]=8'h1A6CEDE9F70467D;
 rom0[208]=8'h1A876812C0877BC;
 rom0[209]=8'h1AA1FCC2F453439;
 rom0[210]=8'h1ABCAC15271A2A3;
 rom0[211]=8'h1AD7762408309BB;
 rom0[212]=8'h1AF25B0A61A7B4A;
 rom0[213]=8'h1B0D5AE318680C3;
 rom0[214]=8'h1B2875C92C4C993;
 rom0[215]=8'h1B43ABD7B83DB1B;
 rom0[216]=8'h1B5EFD29F24C262;
 rom0[217]=8'h1B7A69DB2BCC776;
 rom0[218]=8'h1B95F206D172280;
 rom0[219]=8'h1BB195C86B6B290;
 rom0[220]=8'h1BCD553B9D7B620;
 rom0[221]=8'h1BE9307C271854F;
 rom0[222]=8'h1C0527A5E384DDC;
 rom0[223]=8'h1C213AD4C9ED0D8;
 rom0[224]=8'h1C3D6A24ED82218;
 rom0[225]=8'h1C59B5B27D96969;
 rom0[226]=8'h1C761D99C5BA587;
 rom0[227]=8'h1C92A1F72DD70D5;
 rom0[228]=8'h1CAF42E73A4C7D9;
 rom0[229]=8'h1CCC00868C0D187;
 rom0[230]=8'h1CE8DAF1E0BA94D;
 rom0[231]=8'h1D05D24612C2AEE;
 rom0[232]=8'h1D22E6A0197C02B;
 rom0[233]=8'h1D40181D0943034;
 rom0[234]=8'h1D5D66DA13970F3;
 rom0[235]=8'h1D7AD2F48737A20;
 rom0[236]=8'h1D985C89D041A31;
 rom0[237]=8'h1DB603B7784CD18;
 rom0[238]=8'h1DD3C89B26894DF;
 rom0[239]=8'h1DF1AB529FDD41C;
 rom0[240]=8'h1E0FABFBC702A3C;
 rom0[241]=8'h1E2DCAB49CA51B4;
 rom0[242]=8'h1E4C079B3F80005;
 rom0[243]=8'h1E6A62CDEC7C7AF;
 rom0[244]=8'h1E88DC6AFECFBFB;
 rom0[245]=8'h1EA77490F0196B0;
 rom0[246]=8'h1EC62B5E5881FAF;
 rom0[247]=8'h1EE500F1EED9671;
 rom0[248]=8'h1F03F56A88B5D79;
 rom0[249]=8'h1F2308E71A927A9;
 rom0[250]=8'h1F423B86B7EE791;
 rom0[251]=8'h1F618D68936C09D;
 rom0[252]=8'h1F80FEABFEEFA49;
 rom0[253]=8'h1FA08F706BBF538;
 rom0[254]=8'h1FC03FD56AA224F;
 rom0[255]=8'h1FE00FFAABFFBBC;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_arradEe (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 42;
parameter AddressWidth = 8;
parameter AddressRange = 256;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h00000000000;
 rom0[1]=8'h00004000155;
 rom0[2]=8'h00010000AAA;
 rom0[3]=8'h00024002400;
 rom0[4]=8'h00040005555;
 rom0[5]=8'h0006400A6AB;
 rom0[6]=8'h00090012001;
 rom0[7]=8'h000C401C958;
 rom0[8]=8'h0010002AAB0;
 rom0[9]=8'h0014403CC08;
 rom0[10]=8'h00190053562;
 rom0[11]=8'h001E406EEBD;
 rom0[12]=8'h0024009001B;
 rom0[13]=8'h002A40B717A;
 rom0[14]=8'h003100E4ADC;
 rom0[15]=8'h00384119441;
 rom0[16]=8'h004001555AA;
 rom0[17]=8'h00484199717;
 rom0[18]=8'h005101E6088;
 rom0[19]=8'h005A423B9FF;
 rom0[20]=8'h0064029AB7B;
 rom0[21]=8'h006E4303CFD;
 rom0[22]=8'h00790377686;
 rom0[23]=8'h008443F6017;
 rom0[24]=8'h009004801B0;
 rom0[25]=8'h009C4516351;
 rom0[26]=8'h00A905B8CFD;
 rom0[27]=8'h00B646686B4;
 rom0[28]=8'h00C40725875;
 rom0[29]=8'h00D247F0A43;
 rom0[30]=8'h00E108CA41E;
 rom0[31]=8'h00F049B2E07;
 rom0[32]=8'h01000AAB000;
 rom0[33]=8'h01104BB3208;
 rom0[34]=8'h01210CCBC21;
 rom0[35]=8'h01324DF564C;
 rom0[36]=8'h01440F3088B;
 rom0[37]=8'h0156507DADD;
 rom0[38]=8'h016911DD546;
 rom0[39]=8'h017C534FFC4;
 rom0[40]=8'h019014D625B;
 rom0[41]=8'h01A4567050A;
 rom0[42]=8'h01B9181EFD4;
 rom0[43]=8'h01CE59E2AB9;
 rom0[44]=8'h01E41BBBDBB;
 rom0[45]=8'h01FA5DAB0DC;
 rom0[46]=8'h02111FB0C1C;
 rom0[47]=8'h022861CD77D;
 rom0[48]=8'h02402401B01;
 rom0[49]=8'h0258664DEA8;
 rom0[50]=8'h027128B2A75;
 rom0[51]=8'h028A6B3066A;
 rom0[52]=8'h02A42DC7A87;
 rom0[53]=8'h02BE7078ECE;
 rom0[54]=8'h02D93344B41;
 rom0[55]=8'h02F4762B7E2;
 rom0[56]=8'h0310392DCB2;
 rom0[57]=8'h032C7C4C1B3;
 rom0[58]=8'h03493F86EE6;
 rom0[59]=8'h036682DEC4F;
 rom0[60]=8'h038446541EE;
 rom0[61]=8'h03A289E77C5;
 rom0[62]=8'h03C14D995D6;
 rom0[63]=8'h03E0916A423;
 rom0[64]=8'h0400555AAAE;
 rom0[65]=8'h0420996B17A;
 rom0[66]=8'h04415D9C087;
 rom0[67]=8'h0462A1EDFD9;
 rom0[68]=8'h04846661770;
 rom0[69]=8'h04A6AAF6F50;
 rom0[70]=8'h04C96FAEF7B;
 rom0[71]=8'h04ECB489FF1;
 rom0[72]=8'h051079888B7;
 rom0[73]=8'h0534BEAB1CE;
 rom0[74]=8'h055983F2338;
 rom0[75]=8'h057EC95E4F8;
 rom0[76]=8'h05A48EEFF0F;
 rom0[77]=8'h05CAD4A7981;
 rom0[78]=8'h05F19A85C50;
 rom0[79]=8'h0618E08AF7D;
 rom0[80]=8'h0640A6B7B0D;
 rom0[81]=8'h0668ED0C700;
 rom0[82]=8'h0691B389B5A;
 rom0[83]=8'h06BAFA3001D;
 rom0[84]=8'h06E4C0FFD4B;
 rom0[85]=8'h070F07F9AE8;
 rom0[86]=8'h0739CF1E0F6;
 rom0[87]=8'h0765166D777;
 rom0[88]=8'h0790DDE866F;
 rom0[89]=8'h07BD258F5E0;
 rom0[90]=8'h07E9ED62DCD;
 rom0[91]=8'h08173563638;
 rom0[92]=8'h0844FD91725;
 rom0[93]=8'h087345ED896;
 rom0[94]=8'h08A20E7828E;
 rom0[95]=8'h08D15731D10;
 rom0[96]=8'h0901201B020;
 rom0[97]=8'h093169343BF;
 rom0[98]=8'h0962327DFF2;
 rom0[99]=8'h09937BF8CBB;
 rom0[100]=8'h09C545A521D;
 rom0[101]=8'h09F78F8381B;
 rom0[102]=8'h0A2A59946B9;
 rom0[103]=8'h0A5DA3D85FA;
 rom0[104]=8'h0A916E4FDE0;
 rom0[105]=8'h0AC5B8FB66F;
 rom0[106]=8'h0AFA83DB7AB;
 rom0[107]=8'h0B2FCEF0996;
 rom0[108]=8'h0B659A3B435;
 rom0[109]=8'h0B9BE5BBF8A;
 rom0[110]=8'h0BD2B173398;
 rom0[111]=8'h0C09FD61864;
 rom0[112]=8'h0C41C9875F0;
 rom0[113]=8'h0C7A15E5441;
 rom0[114]=8'h0CB2E27BB59;
 rom0[115]=8'h0CEC2F4B33C;
 rom0[116]=8'h0D25FC543EE;
 rom0[117]=8'h0D604997572;
 rom0[118]=8'h0D9B1714FCD;
 rom0[119]=8'h0DD664CDB01;
 rom0[120]=8'h0E1232C1F12;
 rom0[121]=8'h0E4E80F2405;
 rom0[122]=8'h0E8B4F5F1DD;
 rom0[123]=8'h0EC89E0909D;
 rom0[124]=8'h0F066CF084A;
 rom0[125]=8'h0F44BC160E7;
 rom0[126]=8'h0F838B7A278;
 rom0[127]=8'h0FC2DB1D502;
 rom0[128]=8'h1002AB00088;
 rom0[129]=8'h1042FB22D0E;
 rom0[130]=8'h1083CB86298;
 rom0[131]=8'h10C51C2A92B;
 rom0[132]=8'h1106ED108CA;
 rom0[133]=8'h11493E38979;
 rom0[134]=8'h118C0FA333D;
 rom0[135]=8'h11CF6150E1A;
 rom0[136]=8'h12133342213;
 rom0[137]=8'h1257857772E;
 rom0[138]=8'h129C57F156E;
 rom0[139]=8'h12E1AAB04D8;
 rom0[140]=8'h13277DB4D70;
 rom0[141]=8'h136DD0FF73B;
 rom0[142]=8'h13B4A490A3C;
 rom0[143]=8'h13FBF868E79;
 rom0[144]=8'h1443CC88BF6;
 rom0[145]=8'h148C20F0AB6;
 rom0[146]=8'h14D4F5A12C0;
 rom0[147]=8'h151E4A9AC17;
 rom0[148]=8'h15681FDDEBF;
 rom0[149]=8'h15B2756B2BF;
 rom0[150]=8'h15FD4B43019;
 rom0[151]=8'h1648A165ED3;
 rom0[152]=8'h169477D46F2;
 rom0[153]=8'h16E0CE8F07A;
 rom0[154]=8'h172DA596370;
 rom0[155]=8'h177AFCEA7D9;
 rom0[156]=8'h17C8D48C5BA;
 rom0[157]=8'h18172C7C517;
 rom0[158]=8'h186604BADF6;
 rom0[159]=8'h18B55D4885B;
 rom0[160]=8'h19053625C4B;
 rom0[161]=8'h19558F531CC;
 rom0[162]=8'h19A668D10E2;
 rom0[163]=8'h19F7C2A0192;
 rom0[164]=8'h1A499CC0BE2;
 rom0[165]=8'h1A9BF7337D7;
 rom0[166]=8'h1AEED1F8D75;
 rom0[167]=8'h1B422D114C2;
 rom0[168]=8'h1B96087D5C4;
 rom0[169]=8'h1BEA643D87E;
 rom0[170]=8'h1C3F40524F8;
 rom0[171]=8'h1C949CBC335;
 rom0[172]=8'h1CEA797BB3C;
 rom0[173]=8'h1D40D691511;
 rom0[174]=8'h1D97B3FD8BA;
 rom0[175]=8'h1DEF11C0E3D;
 rom0[176]=8'h1E46EFDBD9F;
 rom0[177]=8'h1E9F4E4EEE5;
 rom0[178]=8'h1EF82D1AA15;
 rom0[179]=8'h1F518C3F735;
 rom0[180]=8'h1FAB6BBDE4A;
 rom0[181]=8'h2005CB96759;
 rom0[182]=8'h2060ABC9A69;
 rom0[183]=8'h20BC0C57F7F;
 rom0[184]=8'h2117ED41EA1;
 rom0[185]=8'h21744E87FD4;
 rom0[186]=8'h21D1302AB1E;
 rom0[187]=8'h222E922A886;
 rom0[188]=8'h228C7488010;
 rom0[189]=8'h22EAD7439C3;
 rom0[190]=8'h2349BA5DDA5;
 rom0[191]=8'h23A91DD73BC;
 rom0[192]=8'h240901B040D;
 rom0[193]=8'h246965E969E;
 rom0[194]=8'h24CA4A83377;
 rom0[195]=8'h252BAF7E29C;
 rom0[196]=8'h258D94DAC13;
 rom0[197]=8'h25EFFA997E4;
 rom0[198]=8'h2652E0BAE13;
 rom0[199]=8'h26B6473F6A8;
 rom0[200]=8'h271A2E279A8;
 rom0[201]=8'h277E9573F19;
 rom0[202]=8'h27E37D24F03;
 rom0[203]=8'h2848E53B16B;
 rom0[204]=8'h28AECDB6E57;
 rom0[205]=8'h29153698DCE;
 rom0[206]=8'h297C1FE17D7;
 rom0[207]=8'h29E38991477;
 rom0[208]=8'h2A4B73A8BB6;
 rom0[209]=8'h2AB3DE28599;
 rom0[210]=8'h2B1CC910A28;
 rom0[211]=8'h2B863462168;
 rom0[212]=8'h2BF0201D361;
 rom0[213]=8'h2C5A8C42819;
 rom0[214]=8'h2CC578D2796;
 rom0[215]=8'h2D30E5CD9E0;
 rom0[216]=8'h2D9CD3346FD;
 rom0[217]=8'h2E0941076F4;
 rom0[218]=8'h2E762F471CB;
 rom0[219]=8'h2EE39DF3F89;
 rom0[220]=8'h2F518D0E836;
 rom0[221]=8'h2FBFFC973D8;
 rom0[222]=8'h302EEC8EA76;
 rom0[223]=8'h309E5CF5417;
 rom0[224]=8'h310E4DCB8C2;
 rom0[225]=8'h317EBF1207D;
 rom0[226]=8'h31EFB0C9351;
 rom0[227]=8'h326122F1944;
 rom0[228]=8'h32D3158BA5C;
 rom0[229]=8'h33458897EA2;
 rom0[230]=8'h33B87C16E1C;
 rom0[231]=8'h342BF0090D2;
 rom0[232]=8'h349FE46EECA;
 rom0[233]=8'h3514594900D;
 rom0[234]=8'h35894E97CA1;
 rom0[235]=8'h35FEC45BC8D;
 rom0[236]=8'h3674BA957D9;
 rom0[237]=8'h36EB314568D;
 rom0[238]=8'h3762286C0AF;
 rom0[239]=8'h37D9A009E47;
 rom0[240]=8'h3851981F75D;
 rom0[241]=8'h38CA10AD3F9;
 rom0[242]=8'h394309B3C20;
 rom0[243]=8'h39BC83337DC;
 rom0[244]=8'h3A367D2CF34;
 rom0[245]=8'h3AB0F7A0A2F;
 rom0[246]=8'h3B2BF28F0D5;
 rom0[247]=8'h3BA76DF8B2E;
 rom0[248]=8'h3C2369DE142;
 rom0[249]=8'h3C9FE63FB17;
 rom0[250]=8'h3D1CE31E0B7;
 rom0[251]=8'h3D9A6079A28;
 rom0[252]=8'h3E185E52F73;
 rom0[253]=8'h3E96DCAA8A0;
 rom0[254]=8'h3F15DB80DB6;
 rom0[255]=8'h3F955AD66BD;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_arracud (
 address0, ce0, q0, 
 address1, ce1, q1, 
 reset, clk);
parameter DataWidth = 26;
parameter AddressWidth = 8;
parameter AddressRange = 256;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input[AddressWidth-1:0] address1;
input ce1;
output reg[DataWidth-1:0] q1;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h0000000;
 rom0[1]=8'h0000400;
 rom0[2]=8'h0001000;
 rom0[3]=8'h0002400;
 rom0[4]=8'h0004000;
 rom0[5]=8'h0006400;
 rom0[6]=8'h0009000;
 rom0[7]=8'h000C400;
 rom0[8]=8'h0010000;
 rom0[9]=8'h0014400;
 rom0[10]=8'h0019000;
 rom0[11]=8'h001E400;
 rom0[12]=8'h0024000;
 rom0[13]=8'h002A400;
 rom0[14]=8'h0031000;
 rom0[15]=8'h0038400;
 rom0[16]=8'h0040000;
 rom0[17]=8'h0048400;
 rom0[18]=8'h0051000;
 rom0[19]=8'h005A400;
 rom0[20]=8'h0064000;
 rom0[21]=8'h006E400;
 rom0[22]=8'h0079000;
 rom0[23]=8'h0084400;
 rom0[24]=8'h0090000;
 rom0[25]=8'h009C400;
 rom0[26]=8'h00A9000;
 rom0[27]=8'h00B6400;
 rom0[28]=8'h00C4000;
 rom0[29]=8'h00D2400;
 rom0[30]=8'h00E1000;
 rom0[31]=8'h00F0400;
 rom0[32]=8'h0100000;
 rom0[33]=8'h0110400;
 rom0[34]=8'h0121000;
 rom0[35]=8'h0132400;
 rom0[36]=8'h0144000;
 rom0[37]=8'h0156401;
 rom0[38]=8'h0169001;
 rom0[39]=8'h017C401;
 rom0[40]=8'h0190001;
 rom0[41]=8'h01A4401;
 rom0[42]=8'h01B9001;
 rom0[43]=8'h01CE401;
 rom0[44]=8'h01E4001;
 rom0[45]=8'h01FA401;
 rom0[46]=8'h0211001;
 rom0[47]=8'h0228402;
 rom0[48]=8'h0240002;
 rom0[49]=8'h0258402;
 rom0[50]=8'h0271002;
 rom0[51]=8'h028A402;
 rom0[52]=8'h02A4002;
 rom0[53]=8'h02BE403;
 rom0[54]=8'h02D9003;
 rom0[55]=8'h02F4403;
 rom0[56]=8'h0310003;
 rom0[57]=8'h032C403;
 rom0[58]=8'h0349003;
 rom0[59]=8'h0366404;
 rom0[60]=8'h0384004;
 rom0[61]=8'h03A2404;
 rom0[62]=8'h03C1004;
 rom0[63]=8'h03E0405;
 rom0[64]=8'h0400005;
 rom0[65]=8'h0420405;
 rom0[66]=8'h0441005;
 rom0[67]=8'h0462406;
 rom0[68]=8'h0484006;
 rom0[69]=8'h04A6406;
 rom0[70]=8'h04C9006;
 rom0[71]=8'h04EC407;
 rom0[72]=8'h0510007;
 rom0[73]=8'h0534407;
 rom0[74]=8'h0559008;
 rom0[75]=8'h057E408;
 rom0[76]=8'h05A4008;
 rom0[77]=8'h05CA409;
 rom0[78]=8'h05F1009;
 rom0[79]=8'h061840A;
 rom0[80]=8'h064000A;
 rom0[81]=8'h066840A;
 rom0[82]=8'h069100B;
 rom0[83]=8'h06BA40B;
 rom0[84]=8'h06E400C;
 rom0[85]=8'h070E40C;
 rom0[86]=8'h073900C;
 rom0[87]=8'h076440D;
 rom0[88]=8'h079000D;
 rom0[89]=8'h07BC40E;
 rom0[90]=8'h07E900E;
 rom0[91]=8'h081640F;
 rom0[92]=8'h084400F;
 rom0[93]=8'h0872410;
 rom0[94]=8'h08A1010;
 rom0[95]=8'h08D0411;
 rom0[96]=8'h0900012;
 rom0[97]=8'h0930412;
 rom0[98]=8'h0961013;
 rom0[99]=8'h0992413;
 rom0[100]=8'h09C4014;
 rom0[101]=8'h09F6414;
 rom0[102]=8'h0A29015;
 rom0[103]=8'h0A5C416;
 rom0[104]=8'h0A90016;
 rom0[105]=8'h0AC4417;
 rom0[106]=8'h0AF9018;
 rom0[107]=8'h0B2E418;
 rom0[108]=8'h0B64019;
 rom0[109]=8'h0B9A41A;
 rom0[110]=8'h0BD101B;
 rom0[111]=8'h0C0841B;
 rom0[112]=8'h0C4001C;
 rom0[113]=8'h0C7841D;
 rom0[114]=8'h0CB101E;
 rom0[115]=8'h0CEA41E;
 rom0[116]=8'h0D2401F;
 rom0[117]=8'h0D5E420;
 rom0[118]=8'h0D99021;
 rom0[119]=8'h0DD4422;
 rom0[120]=8'h0E10023;
 rom0[121]=8'h0E4C424;
 rom0[122]=8'h0E89024;
 rom0[123]=8'h0EC6425;
 rom0[124]=8'h0F04026;
 rom0[125]=8'h0F42427;
 rom0[126]=8'h0F81028;
 rom0[127]=8'h0FC0429;
 rom0[128]=8'h100002A;
 rom0[129]=8'h104042B;
 rom0[130]=8'h108102C;
 rom0[131]=8'h10C242D;
 rom0[132]=8'h110402E;
 rom0[133]=8'h114642F;
 rom0[134]=8'h1189030;
 rom0[135]=8'h11CC432;
 rom0[136]=8'h1210033;
 rom0[137]=8'h1254434;
 rom0[138]=8'h1299035;
 rom0[139]=8'h12DE436;
 rom0[140]=8'h1324037;
 rom0[141]=8'h136A439;
 rom0[142]=8'h13B103A;
 rom0[143]=8'h13F843B;
 rom0[144]=8'h144003C;
 rom0[145]=8'h148843E;
 rom0[146]=8'h14D103F;
 rom0[147]=8'h151A440;
 rom0[148]=8'h1564041;
 rom0[149]=8'h15AE443;
 rom0[150]=8'h15F9044;
 rom0[151]=8'h1644446;
 rom0[152]=8'h1690047;
 rom0[153]=8'h16DC448;
 rom0[154]=8'h172904A;
 rom0[155]=8'h177644B;
 rom0[156]=8'h17C404D;
 rom0[157]=8'h181244E;
 rom0[158]=8'h1861050;
 rom0[159]=8'h18B0451;
 rom0[160]=8'h1900053;
 rom0[161]=8'h1950454;
 rom0[162]=8'h19A1056;
 rom0[163]=8'h19F2458;
 rom0[164]=8'h1A44059;
 rom0[165]=8'h1A9645B;
 rom0[166]=8'h1AE905D;
 rom0[167]=8'h1B3C45E;
 rom0[168]=8'h1B90060;
 rom0[169]=8'h1BE4462;
 rom0[170]=8'h1C39063;
 rom0[171]=8'h1C8E465;
 rom0[172]=8'h1CE4067;
 rom0[173]=8'h1D3A469;
 rom0[174]=8'h1D9106B;
 rom0[175]=8'h1DE846D;
 rom0[176]=8'h1E4006E;
 rom0[177]=8'h1E98470;
 rom0[178]=8'h1EF1072;
 rom0[179]=8'h1F4A474;
 rom0[180]=8'h1FA4076;
 rom0[181]=8'h1FFE478;
 rom0[182]=8'h205907A;
 rom0[183]=8'h20B447C;
 rom0[184]=8'h211007E;
 rom0[185]=8'h216C480;
 rom0[186]=8'h21C9082;
 rom0[187]=8'h2226485;
 rom0[188]=8'h2284087;
 rom0[189]=8'h22E2489;
 rom0[190]=8'h234108B;
 rom0[191]=8'h23A048D;
 rom0[192]=8'h2400090;
 rom0[193]=8'h2460492;
 rom0[194]=8'h24C1094;
 rom0[195]=8'h2522496;
 rom0[196]=8'h2584099;
 rom0[197]=8'h25E649B;
 rom0[198]=8'h264909D;
 rom0[199]=8'h26AC4A0;
 rom0[200]=8'h27100A2;
 rom0[201]=8'h27744A5;
 rom0[202]=8'h27D90A7;
 rom0[203]=8'h283E4AA;
 rom0[204]=8'h28A40AC;
 rom0[205]=8'h290A4AF;
 rom0[206]=8'h29710B1;
 rom0[207]=8'h29D84B4;
 rom0[208]=8'h2A400B7;
 rom0[209]=8'h2AA84B9;
 rom0[210]=8'h2B110BC;
 rom0[211]=8'h2B7A4BF;
 rom0[212]=8'h2BE40C1;
 rom0[213]=8'h2C4E4C4;
 rom0[214]=8'h2CB90C7;
 rom0[215]=8'h2D244CA;
 rom0[216]=8'h2D900CD;
 rom0[217]=8'h2DFC4CF;
 rom0[218]=8'h2E690D2;
 rom0[219]=8'h2ED64D5;
 rom0[220]=8'h2F440D8;
 rom0[221]=8'h2FB24DB;
 rom0[222]=8'h30210DE;
 rom0[223]=8'h30904E1;
 rom0[224]=8'h31000E4;
 rom0[225]=8'h31704E7;
 rom0[226]=8'h31E10EA;
 rom0[227]=8'h32524ED;
 rom0[228]=8'h32C40F1;
 rom0[229]=8'h33364F4;
 rom0[230]=8'h33A90F7;
 rom0[231]=8'h341C4FA;
 rom0[232]=8'h34900FE;
 rom0[233]=8'h3504501;
 rom0[234]=8'h3579104;
 rom0[235]=8'h35EE508;
 rom0[236]=8'h366410B;
 rom0[237]=8'h36DA50E;
 rom0[238]=8'h3751112;
 rom0[239]=8'h37C8515;
 rom0[240]=8'h3840119;
 rom0[241]=8'h38B851C;
 rom0[242]=8'h3931120;
 rom0[243]=8'h39AA523;
 rom0[244]=8'h3A24127;
 rom0[245]=8'h3A9E52B;
 rom0[246]=8'h3B1912E;
 rom0[247]=8'h3B94532;
 rom0[248]=8'h3C10136;
 rom0[249]=8'h3C8C53A;
 rom0[250]=8'h3D0913D;
 rom0[251]=8'h3D86541;
 rom0[252]=8'h3E04145;
 rom0[253]=8'h3E82549;
 rom0[254]=8'h3F0114D;
 rom0[255]=8'h3F80551;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
always @(posedge clk) 
begin 
 if (ce1) 
 begin
 q1 <= rom0[address1];
 end
end
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
