module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 size,
 arr,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
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
input [31:0] size;
input [31:0] arr;
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
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [0:0] icmp_ln9_fu_86_p2;
reg [0:0] icmp_ln9_reg_126;
wire [30:0] trunc_ln26_fu_92_p1;
reg [30:0] trunc_ln26_reg_137;
wire [30:0] add_ln18_fu_110_p2;
reg [30:0] add_ln18_reg_153;
wire ap_CS_fsm_state2;
wire grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_ready;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_return;
reg grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_start_reg;
wire [0:0] icmp_ln16_fu_105_p2;
wire ap_CS_fsm_state3;
reg [30:0] i_fu_48;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_18_3 grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_ready),
 .add_ln18(add_ln18_reg_153),
 .size_load(size),
 .i(i_fu_48),
 .ap_return(grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_return)
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
 grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln16_fu_105_p2 == 1'd0) & (icmp_ln9_reg_126 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (icmp_ln9_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 i_fu_48 <= 31'd0;
 end else if (((grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 i_fu_48 <= add_ln18_reg_153;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln9_reg_126 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 add_ln18_reg_153 <= add_ln18_fu_110_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln9_reg_126 <= icmp_ln9_fu_86_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln9_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 trunc_ln26_reg_137 <= trunc_ln26_fu_92_p1;
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
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_done == 1'b0)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln16_fu_105_p2 == 1'd1) | (icmp_ln9_reg_126 == 1'd0)))) begin
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
 if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln16_fu_105_p2 == 1'd1) | (icmp_ln9_reg_126 == 1'd0)))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln9_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_return == 1'd1) & (grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
 if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln16_fu_105_p2 == 1'd1) | (icmp_ln9_reg_126 == 1'd0)))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln18_fu_110_p2 = (i_fu_48 + 31'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_79_ap_start_reg;
assign icmp_ln16_fu_105_p2 = ((i_fu_48 == trunc_ln26_reg_137) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_86_p2 = (($signed(size) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign temptemp1 = size;
assign temptemp2 = arr;
assign trunc_ln26_fu_92_p1 = size[30:0];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_18_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 add_ln18,
 size_load,
 i,
 ap_return
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] add_ln18;
input [31:0] size_load;
input [30:0] i;
output [0:0] ap_return;
reg ap_idle;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln19_fu_81_p2;
wire [0:0] icmp_ln18_fu_75_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [0:0] ap_phi_mux_merge_phi_fu_55_p4;
reg [30:0] j_fu_30;
wire ap_loop_init;
reg [30:0] ap_sig_allocacmp_j_1;
wire [31:0] j_cast_fu_71_p1;
reg [0:0] ap_return_preg;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_return_preg = 1'd0;
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
 end else if (((ap_start_int == 1'b1) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_return_preg <= 1'd0;
 end else begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((icmp_ln18_fu_75_p2 == 1'd0) | (icmp_ln19_fu_81_p2 == 1'd0)))) begin
 ap_return_preg <= ap_phi_mux_merge_phi_fu_55_p4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 if (((icmp_ln18_fu_75_p2 == 1'd1) & (icmp_ln19_fu_81_p2 == 1'd1))) begin
 j_fu_30 <= add_ln18;
 end else if ((ap_loop_init == 1'b1)) begin
 j_fu_30 <= 31'd0;
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
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((icmp_ln18_fu_75_p2 == 1'd0) | (icmp_ln19_fu_81_p2 == 1'd0)))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 if (((icmp_ln18_fu_75_p2 == 1'd1) & (icmp_ln19_fu_81_p2 == 1'd0))) begin
 ap_phi_mux_merge_phi_fu_55_p4 = 1'd0;
 end else if ((icmp_ln18_fu_75_p2 == 1'd0)) begin
 ap_phi_mux_merge_phi_fu_55_p4 = 1'd1;
 end else begin
 ap_phi_mux_merge_phi_fu_55_p4 = 'bx;
 end
 end else begin
 ap_phi_mux_merge_phi_fu_55_p4 = 'bx;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((icmp_ln18_fu_75_p2 == 1'd0) | (icmp_ln19_fu_81_p2 == 1'd0)))) begin
 ap_return = ap_phi_mux_merge_phi_fu_55_p4;
 end else begin
 ap_return = ap_return_preg;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_j_1 = 31'd0;
 end else begin
 ap_sig_allocacmp_j_1 = j_fu_30;
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
assign icmp_ln18_fu_75_p2 = (($signed(j_cast_fu_71_p1) < $signed(size_load)) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_81_p2 = ((i == ap_sig_allocacmp_j_1) ? 1'b1 : 1'b0);
assign j_cast_fu_71_p1 = ap_sig_allocacmp_j_1;
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
