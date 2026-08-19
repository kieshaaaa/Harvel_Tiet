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
 temptemp3,
 temptemp3_ap_vld,
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
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [30:0] trunc_ln8_fu_112_p1;
reg [30:0] trunc_ln8_reg_154;
wire [0:0] icmp_ln8_fu_117_p2;
reg [0:0] icmp_ln8_reg_159;
wire grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_max_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_max_out_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_min_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_min_out_ap_vld;
reg [31:0] ap_phi_mux_min_0_lcssa_phi_fu_83_p4;
reg [31:0] min_0_lcssa_reg_79;
wire ap_CS_fsm_state3;
reg [31:0] ap_phi_mux_max_0_lcssa_phi_fu_95_p4;
reg [31:0] max_0_lcssa_reg_91;
reg grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_ap_start_reg;
wire ap_CS_fsm_state2;
wire [30:0] add_ln8_fu_123_p2;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_8_1 grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_ap_ready),
 .trunc_ln8(trunc_ln8_reg_154),
 .max_4(arr),
 .max_out(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_max_out),
 .max_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_max_out_ap_vld),
 .min_out(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_min_out),
 .min_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_min_out_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (icmp_ln8_fu_117_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln8_reg_159 <= icmp_ln8_fu_117_p2;
 trunc_ln8_reg_154 <= trunc_ln8_fu_112_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln8_reg_159 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 max_0_lcssa_reg_91 <= grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_max_out;
 min_0_lcssa_reg_79 <= grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_min_out;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_ap_done == 1'b0)) begin
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
 if (((icmp_ln8_reg_159 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_phi_mux_max_0_lcssa_phi_fu_95_p4 = grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_max_out;
 end else begin
 ap_phi_mux_max_0_lcssa_phi_fu_95_p4 = max_0_lcssa_reg_91;
 end
end
always @ (*) begin
 if (((icmp_ln8_reg_159 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_phi_mux_min_0_lcssa_phi_fu_83_p4 = grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_min_out;
 end else begin
 ap_phi_mux_min_0_lcssa_phi_fu_83_p4 = min_0_lcssa_reg_79;
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
 if (((ap_start == 1'b1) & (icmp_ln8_fu_117_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((ap_start == 1'b1) & (icmp_ln8_fu_117_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else if (((ap_start == 1'b1) & (icmp_ln8_fu_117_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
assign add_ln8_fu_123_p2 = ($signed(trunc_ln8_fu_112_p1) + $signed(31'd2147483647));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_103_ap_start_reg;
assign icmp_ln8_fu_117_p2 = (($signed(size) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign temptemp1 = add_ln8_fu_123_p2;
assign temptemp2 = ap_phi_mux_max_0_lcssa_phi_fu_95_p4;
assign temptemp3 = ap_phi_mux_min_0_lcssa_phi_fu_83_p4;
assign trunc_ln8_fu_112_p1 = size[30:0];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_8_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 trunc_ln8,
 max_4,
 max_out,
 max_out_ap_vld,
 min_out,
 min_out_ap_vld
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] trunc_ln8;
input [31:0] max_4;
output [31:0] max_out;
output max_out_ap_vld;
output [31:0] min_out;
output min_out_ap_vld;
reg ap_idle;
reg max_out_ap_vld;
reg min_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln8_fu_86_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [31:0] min_fu_40;
wire [31:0] max_3_fu_110_p3;
reg [31:0] max_fu_44;
wire [31:0] max_2_fu_118_p3;
reg [30:0] i_fu_48;
wire [30:0] add_ln8_fu_92_p2;
wire ap_loop_init;
reg [30:0] ap_sig_allocacmp_i_1;
wire [0:0] icmp_ln13_fu_104_p2;
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
 if ((icmp_ln8_fu_86_p2 == 1'd0)) begin
 i_fu_48 <= add_ln8_fu_92_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_48 <= 31'd0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln8_fu_86_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 max_fu_44 <= max_2_fu_118_p3;
 min_fu_40 <= max_3_fu_110_p3;
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
 if (((icmp_ln8_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
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
 ap_sig_allocacmp_i_1 = 31'd0;
 end else begin
 ap_sig_allocacmp_i_1 = i_fu_48;
 end
end
always @ (*) begin
 if (((icmp_ln8_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 max_out_ap_vld = 1'b1;
 end else begin
 max_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln8_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 min_out_ap_vld = 1'b1;
 end else begin
 min_out_ap_vld = 1'b0;
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
assign add_ln8_fu_92_p2 = (ap_sig_allocacmp_i_1 + 31'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign icmp_ln13_fu_104_p2 = ((ap_sig_allocacmp_i_1 == 31'd0) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_86_p2 = ((ap_sig_allocacmp_i_1 == trunc_ln8) ? 1'b1 : 1'b0);
assign max_2_fu_118_p3 = ((icmp_ln13_fu_104_p2[0:0] == 1'b1) ? max_4 : max_fu_44);
assign max_3_fu_110_p3 = ((icmp_ln13_fu_104_p2[0:0] == 1'b1) ? max_4 : min_fu_40);
assign max_out = max_fu_44;
assign min_out = min_fu_40;
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
