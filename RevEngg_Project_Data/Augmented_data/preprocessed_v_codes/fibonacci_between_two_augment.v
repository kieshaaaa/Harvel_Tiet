module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 lb,
 ub,
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
parameter ap_ST_fsm_state1 = 2'd1;
parameter ap_ST_fsm_state2 = 2'd2;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] lb;
input [31:0] ub;
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
reg[31:0] temptemp4;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] lb_read_read_fu_36_p2;
reg [31:0] lb_read_reg_88;
reg [31:0] ub_read_reg_93;
wire [0:0] icmp_ln15_fu_82_p2;
reg [0:0] icmp_ln15_reg_98;
wire grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_temptemp4;
wire grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_temptemp4_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_ap_start_reg;
wire ap_CS_fsm_state2;
reg [31:0] temptemp4_reg;
reg ap_predicate_op29_call_state2;
reg ap_block_state2_on_subcall_done;
reg [1:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_27_1 grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_ap_ready),
 .ub_load(ub_read_reg_93),
 .lb_load(lb_read_reg_88),
 .temptemp4(grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_temptemp4),
 .temptemp4_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_temptemp4_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (~(lb_read_read_fu_36_p2 == 32'd0) | (icmp_ln15_fu_82_p2 == 1'd0)))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln15_reg_98 <= icmp_ln15_fu_82_p2;
 lb_read_reg_88 <= lb;
 ub_read_reg_93 <= ub;
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_temptemp4_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2) & (~(lb_read_reg_88 == 32'd0) | (icmp_ln15_reg_98 == 1'd0)))) begin
 temptemp4_reg <= grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_temptemp4;
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
 if (((ap_start == 1'b1) & (lb_read_read_fu_36_p2 == 32'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln15_fu_82_p2 == 1'd0) & (lb_read_read_fu_36_p2 == 32'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (lb_read_read_fu_36_p2 == 32'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_temptemp4_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2) & (~(lb_read_reg_88 == 32'd0) | (icmp_ln15_reg_98 == 1'd0)))) begin
 temptemp4 = grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_temptemp4;
 end else begin
 temptemp4 = temptemp4_reg;
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
 ap_block_state2_on_subcall_done = ((ap_predicate_op29_call_state2 == 1'b1) & (grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_ap_done == 1'b0));
end
always @ (*) begin
 ap_predicate_op29_call_state2 = (~(lb_read_reg_88 == 32'd0) | (icmp_ln15_reg_98 == 1'd0));
end
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_ap_start_reg;
assign icmp_ln15_fu_82_p2 = ((ub == 32'd0) ? 1'b1 : 1'b0);
assign lb_read_read_fu_36_p2 = lb;
assign temptemp1 = 32'd0;
assign temptemp2 = 32'd1;
assign temptemp3 = 32'd1;
assign temptemp4_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_27_1_fu_72_temptemp4_ap_vld;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_27_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 ub_load,
 lb_load,
 temptemp4,
 temptemp4_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] ub_load;
input [31:0] lb_load;
output [31:0] temptemp4;
output temptemp4_ap_vld;
reg ap_idle;
reg temptemp4_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln27_fu_65_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg [31:0] a_fu_24;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg [31:0] b_fu_28;
wire [31:0] c_fu_78_p2;
wire ap_block_pp0_stage0_01001;
wire [0:0] icmp_ln28_fu_70_p2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 a_fu_24 = 32'd0;
#0 b_fu_28 = 32'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(ap_start),
 .ap_ready(ap_ready_sig),
 .ap_done(ap_done_sig),
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
 a_fu_24 <= 32'd1;
 end else if (((icmp_ln27_fu_65_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 a_fu_24 <= b_fu_28;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 b_fu_28 <= 32'd1;
 end else if (((icmp_ln27_fu_65_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 b_fu_28 <= c_fu_78_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln27_fu_65_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln28_fu_70_p2 == 1'd0) & (icmp_ln27_fu_65_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
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
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign c_fu_78_p2 = (a_fu_24 + b_fu_28);
assign icmp_ln27_fu_65_p2 = (($signed(b_fu_28) > $signed(ub_load)) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_70_p2 = (($signed(b_fu_28) < $signed(lb_load)) ? 1'b1 : 1'b0);
assign temptemp4 = b_fu_28;
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
