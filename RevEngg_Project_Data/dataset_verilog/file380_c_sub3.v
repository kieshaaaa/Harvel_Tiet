module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 num,
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
input [31:0] num;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [30:0] trunc_ln7_fu_44_p1;
reg [30:0] trunc_ln7_reg_58;
wire [0:0] tmp_fu_50_p3;
reg [0:0] tmp_reg_64;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_34_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_34_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_34_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_34_ap_ready;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_39_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_39_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_39_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_39_ap_ready;
reg grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_34_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_39_ap_start_reg;
reg ap_block_state2_on_subcall_done;
reg [1:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_34_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_39_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_14_1 grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_34(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_34_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_34_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_34_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_34_ap_ready),
 .originalNum(trunc_ln7_reg_58)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_16_2 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_39(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_39_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_39_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_39_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_39_ap_ready),
 .originalNum(trunc_ln7_reg_58)
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
 grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_34_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (tmp_fu_50_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_34_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_34_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_34_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_39_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (tmp_fu_50_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_39_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_39_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_39_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 tmp_reg_64 <= num[32'd31];
 trunc_ln7_reg_58 <= trunc_ln7_fu_44_p1;
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
 if ((1'b1 == ap_block_state2_on_subcall_done)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
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
 if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
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
 if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
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
always @ (*) begin
 ap_block_state2_on_subcall_done = (((grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_39_ap_done == 1'b0) & (tmp_reg_64 == 1'd0)) | ((grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_34_ap_done == 1'b0) & (tmp_reg_64 == 1'd0)));
end
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_34_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_34_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_39_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_39_ap_start_reg;
assign tmp_fu_50_p3 = num[32'd31];
assign trunc_ln7_fu_44_p1 = num[30:0];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_14_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 originalNum
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] originalNum;
reg ap_idle;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln14_fu_54_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [31:0] originalNum_2_fu_32;
wire [31:0] originalNum_cast_fu_42_p1;
wire [31:0] originalNum_5_fu_126_p3;
wire ap_loop_init;
reg signed [31:0] ap_sig_allocacmp_originalNum_4;
wire signed [31:0] icmp_ln14_fu_54_p0;
wire [33:0] mul_ln14_fu_64_p1;
wire [64:0] mul_ln14_fu_64_p2;
wire signed [31:0] tmp_fu_76_p1;
wire [64:0] sub_ln14_fu_70_p2;
wire signed [28:0] tmp_4_fu_94_p4;
wire [0:0] tmp_fu_76_p3;
wire [28:0] tmp_3_fu_84_p4;
wire [28:0] select_ln14_1_fu_108_p3;
wire signed [31:0] sext_ln14_2_fu_116_p1;
wire [31:0] sub_ln14_1_fu_120_p2;
wire signed [31:0] sext_ln14_1_fu_104_p1;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_32s_34ns_65_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 34 ),
 .dout_WIDTH( 65 ))
mul_32s_34ns_65_1_1_U1(
 .din0(ap_sig_allocacmp_originalNum_4),
 .din1(mul_ln14_fu_64_p1),
 .dout(mul_ln14_fu_64_p2)
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
 ap_CS_fsm <= ap_ST_fsm_state1;
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 if ((icmp_ln14_fu_54_p2 == 1'd0)) begin
 originalNum_2_fu_32 <= originalNum_5_fu_126_p3;
 end else if ((ap_loop_init == 1'b1)) begin
 originalNum_2_fu_32 <= originalNum_cast_fu_42_p1;
 end
 end
end
always @ (*) begin
 if ((ap_start_int == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln14_fu_54_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_originalNum_4 = originalNum_cast_fu_42_p1;
 end else begin
 ap_sig_allocacmp_originalNum_4 = originalNum_2_fu_32;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign icmp_ln14_fu_54_p0 = ap_sig_allocacmp_originalNum_4;
assign icmp_ln14_fu_54_p2 = ((icmp_ln14_fu_54_p0 == 32'd0) ? 1'b1 : 1'b0);
assign mul_ln14_fu_64_p1 = 65'd6871947674;
assign originalNum_5_fu_126_p3 = ((tmp_fu_76_p3[0:0] == 1'b1) ? sub_ln14_1_fu_120_p2 : sext_ln14_1_fu_104_p1);
assign originalNum_cast_fu_42_p1 = originalNum;
assign select_ln14_1_fu_108_p3 = ((tmp_fu_76_p3[0:0] == 1'b1) ? tmp_3_fu_84_p4 : tmp_4_fu_94_p4);
assign sext_ln14_1_fu_104_p1 = tmp_4_fu_94_p4;
assign sext_ln14_2_fu_116_p1 = $signed(select_ln14_1_fu_108_p3);
assign sub_ln14_1_fu_120_p2 = ($signed(32'd0) - $signed(sext_ln14_2_fu_116_p1));
assign sub_ln14_fu_70_p2 = (65'd0 - mul_ln14_fu_64_p2);
assign tmp_3_fu_84_p4 = {{sub_ln14_fu_70_p2[64:36]}};
assign tmp_4_fu_94_p4 = {{mul_ln14_fu_64_p2[64:36]}};
assign tmp_fu_76_p1 = ap_sig_allocacmp_originalNum_4;
assign tmp_fu_76_p3 = tmp_fu_76_p1[32'd31];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_16_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 originalNum
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] originalNum;
reg ap_idle;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln16_fu_54_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [31:0] originalNum_1_fu_32;
wire [31:0] originalNum_cast_fu_42_p1;
wire [31:0] originalNum_3_fu_126_p3;
wire ap_loop_init;
reg signed [31:0] ap_sig_allocacmp_originalNum_2;
wire signed [31:0] icmp_ln16_fu_54_p0;
wire [33:0] mul_ln19_fu_64_p1;
wire [64:0] mul_ln19_fu_64_p2;
wire signed [31:0] tmp_fu_76_p1;
wire [64:0] sub_ln19_fu_70_p2;
wire signed [28:0] tmp_2_fu_94_p4;
wire [0:0] tmp_fu_76_p3;
wire [28:0] tmp_1_fu_84_p4;
wire [28:0] select_ln19_1_fu_108_p3;
wire signed [31:0] sext_ln19_2_fu_116_p1;
wire [31:0] sub_ln19_1_fu_120_p2;
wire signed [31:0] sext_ln19_1_fu_104_p1;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_32s_34ns_65_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 34 ),
 .dout_WIDTH( 65 ))
mul_32s_34ns_65_1_1_U4(
 .din0(ap_sig_allocacmp_originalNum_2),
 .din1(mul_ln19_fu_64_p1),
 .dout(mul_ln19_fu_64_p2)
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
 ap_CS_fsm <= ap_ST_fsm_state1;
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 if ((icmp_ln16_fu_54_p2 == 1'd0)) begin
 originalNum_1_fu_32 <= originalNum_3_fu_126_p3;
 end else if ((ap_loop_init == 1'b1)) begin
 originalNum_1_fu_32 <= originalNum_cast_fu_42_p1;
 end
 end
end
always @ (*) begin
 if ((ap_start_int == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln16_fu_54_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_originalNum_2 = originalNum_cast_fu_42_p1;
 end else begin
 ap_sig_allocacmp_originalNum_2 = originalNum_1_fu_32;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign icmp_ln16_fu_54_p0 = ap_sig_allocacmp_originalNum_2;
assign icmp_ln16_fu_54_p2 = ((icmp_ln16_fu_54_p0 == 32'd0) ? 1'b1 : 1'b0);
assign mul_ln19_fu_64_p1 = 65'd6871947674;
assign originalNum_3_fu_126_p3 = ((tmp_fu_76_p3[0:0] == 1'b1) ? sub_ln19_1_fu_120_p2 : sext_ln19_1_fu_104_p1);
assign originalNum_cast_fu_42_p1 = originalNum;
assign select_ln19_1_fu_108_p3 = ((tmp_fu_76_p3[0:0] == 1'b1) ? tmp_1_fu_84_p4 : tmp_2_fu_94_p4);
assign sext_ln19_1_fu_104_p1 = tmp_2_fu_94_p4;
assign sext_ln19_2_fu_116_p1 = $signed(select_ln19_1_fu_108_p3);
assign sub_ln19_1_fu_120_p2 = ($signed(32'd0) - $signed(sext_ln19_2_fu_116_p1));
assign sub_ln19_fu_70_p2 = (65'd0 - mul_ln19_fu_64_p2);
assign tmp_1_fu_84_p4 = {{sub_ln19_fu_70_p2[64:36]}};
assign tmp_2_fu_94_p4 = {{mul_ln19_fu_64_p2[64:36]}};
assign tmp_fu_76_p1 = ap_sig_allocacmp_originalNum_2;
assign tmp_fu_76_p3 = tmp_fu_76_p1[32'd31];
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
module entry_point_mul_32s_34ns_65_1_1(din0, din1, dout);
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
