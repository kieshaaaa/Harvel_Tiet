module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n,
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
input [31:0] n;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [30:0] trunc_ln9_fu_71_p1;
reg [30:0] trunc_ln9_reg_98;
wire [0:0] tmp_fu_76_p3;
reg [0:0] tmp_reg_103;
wire grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_next_2_phi_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_next_2_phi_out_ap_vld;
reg [0:0] ap_phi_mux_retval_0_phi_fu_57_p4;
reg [0:0] retval_0_reg_53;
wire ap_CS_fsm_state3;
reg grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_ap_start_reg;
wire ap_CS_fsm_state2;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_13_1 grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_ap_ready),
 .n_load(trunc_ln9_reg_98),
 .next_2_phi_out(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_next_2_phi_out),
 .next_2_phi_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_next_2_phi_out_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (tmp_fu_76_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (tmp_fu_76_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 retval_0_reg_53 <= 1'd1;
 end else if (((tmp_reg_103 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 retval_0_reg_53 <= 1'd0;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 tmp_reg_103 <= n[32'd31];
 trunc_ln9_reg_98 <= trunc_ln9_fu_71_p1;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_ap_done == 1'b0)) begin
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
 if (((tmp_reg_103 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_phi_mux_retval_0_phi_fu_57_p4 = 1'd0;
 end else begin
 ap_phi_mux_retval_0_phi_fu_57_p4 = retval_0_reg_53;
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
 if (((tmp_reg_103 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((ap_start == 1'b1) & (tmp_fu_76_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else if (((ap_start == 1'b1) & (tmp_fu_76_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = ap_phi_mux_retval_0_phi_fu_57_p4;
assign grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_ap_start_reg;
assign temptemp1 = grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_65_next_2_phi_out;
assign tmp_fu_76_p3 = n[32'd31];
assign trunc_ln9_fu_71_p1 = n[30:0];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_13_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n_load,
 next_2_phi_out,
 next_2_phi_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] n_load;
output [31:0] next_2_phi_out;
output next_2_phi_out_ap_vld;
reg ap_idle;
reg next_2_phi_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln13_fu_89_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg [31:0] ap_phi_mux_next_phi_fu_58_p6;
wire [31:0] next_3_fu_103_p2;
wire [31:0] ap_phi_reg_pp0_iter1_next_reg_55;
wire [30:0] i_1_load_fu_82_p1;
reg [31:0] next_1_fu_26;
wire ap_block_pp0_stage0;
reg [30:0] i_fu_30;
wire [30:0] i_2_fu_94_p2;
wire ap_loop_init;
reg [31:0] prev_1_fu_34;
reg [31:0] prev_fu_38;
wire ap_block_pp0_stage0_01001;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
reg ap_condition_160;
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
 i_fu_30 <= 31'd0;
 end else if (((icmp_ln13_fu_89_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_fu_30 <= i_2_fu_94_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 prev_1_fu_34 <= 32'd1;
 end else if ((1'b1 == ap_condition_160)) begin
 prev_1_fu_34 <= next_3_fu_103_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 prev_fu_38 <= 32'd0;
 end else if ((1'b1 == ap_condition_160)) begin
 prev_fu_38 <= prev_1_fu_34;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln13_fu_89_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 next_1_fu_26 <= ap_phi_mux_next_phi_fu_58_p6;
 end
end
always @ (*) begin
 if (((icmp_ln13_fu_89_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if ((icmp_ln13_fu_89_p2 == 1'd0)) begin
 if ((i_1_load_fu_82_p1 == 31'd0)) begin
 ap_phi_mux_next_phi_fu_58_p6 = 32'd0;
 end else if ((i_1_load_fu_82_p1 == 31'd1)) begin
 ap_phi_mux_next_phi_fu_58_p6 = prev_1_fu_34;
 end else if ((~(i_1_load_fu_82_p1 == 31'd1) & ~(i_1_load_fu_82_p1 == 31'd0))) begin
 ap_phi_mux_next_phi_fu_58_p6 = next_3_fu_103_p2;
 end else begin
 ap_phi_mux_next_phi_fu_58_p6 = ap_phi_reg_pp0_iter1_next_reg_55;
 end
 end else begin
 ap_phi_mux_next_phi_fu_58_p6 = ap_phi_reg_pp0_iter1_next_reg_55;
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
 if (((icmp_ln13_fu_89_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 next_2_phi_out_ap_vld = 1'b1;
 end else begin
 next_2_phi_out_ap_vld = 1'b0;
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
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
always @ (*) begin
 ap_condition_160 = (~(i_1_load_fu_82_p1 == 31'd1) & ~(i_1_load_fu_82_p1 == 31'd0) & (icmp_ln13_fu_89_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_phi_reg_pp0_iter1_next_reg_55 = 'bx;
assign i_1_load_fu_82_p1 = i_fu_30;
assign i_2_fu_94_p2 = (i_fu_30 + 31'd1);
assign icmp_ln13_fu_89_p2 = ((i_fu_30 == n_load) ? 1'b1 : 1'b0);
assign next_2_phi_out = next_1_fu_26;
assign next_3_fu_103_p2 = (prev_1_fu_34 + prev_fu_38);
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
