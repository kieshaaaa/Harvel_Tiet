module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
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
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [3:0] indvars_iv_load_reg_124;
wire ap_CS_fsm_state2;
wire [0:0] flip_fu_90_p2;
reg [0:0] flip_reg_132;
wire [0:0] icmp_ln8_fu_84_p2;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_count_11_phi_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_count_11_phi_out_ap_vld;
reg [0:0] count_2_reg_55;
wire ap_CS_fsm_state3;
reg grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_ap_start_reg;
reg [31:0] count_11_lcssa_phi_fu_40;
reg [3:0] indvars_iv_fu_44;
wire [3:0] add_ln8_fu_96_p2;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_10_2 grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_ap_ready),
 .count_3(count_2_reg_55),
 .zext_ln8(indvars_iv_load_reg_124),
 .count_11_phi_out(grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_count_11_phi_out),
 .count_11_phi_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_count_11_phi_out_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln8_fu_84_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 count_2_reg_55 <= 1'd1;
 end else if (((grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 count_2_reg_55 <= flip_reg_132;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 indvars_iv_fu_44 <= 4'd2;
 end else if (((icmp_ln8_fu_84_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 indvars_iv_fu_44 <= add_ln8_fu_96_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_count_11_phi_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 count_11_lcssa_phi_fu_40 <= grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_count_11_phi_out;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln8_fu_84_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 flip_reg_132 <= flip_fu_90_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 indvars_iv_load_reg_124 <= indvars_iv_fu_44;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_ap_done == 1'b0)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln8_fu_84_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
 if (((icmp_ln8_fu_84_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln8_fu_84_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
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
 if (((icmp_ln8_fu_84_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
assign add_ln8_fu_96_p2 = (indvars_iv_fu_44 + 4'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign flip_fu_90_p2 = (count_2_reg_55 ^ 1'd1);
assign grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_67_ap_start_reg;
assign icmp_ln8_fu_84_p2 = ((indvars_iv_fu_44 == 4'd10) ? 1'b1 : 1'b0);
assign temptemp1 = count_11_lcssa_phi_fu_40;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_10_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 count_3,
 zext_ln8,
 count_11_phi_out,
 count_11_phi_out_ap_vld
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [0:0] count_3;
input [3:0] zext_ln8;
output [31:0] count_11_phi_out;
output count_11_phi_out_ap_vld;
reg ap_idle;
reg count_11_phi_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln10_fu_70_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [0:0] count_reg_52;
wire [0:0] count_1_fu_80_p2;
reg [0:0] ap_phi_mux_count_phi_fu_55_p4;
wire ap_loop_init;
reg [3:0] j_fu_36;
wire [3:0] j_3_fu_86_p2;
reg [3:0] ap_sig_allocacmp_j_2;
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
 end else if (((ap_start_int == 1'b1) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 if ((icmp_ln10_fu_70_p2 == 1'd0)) begin
 j_fu_36 <= j_3_fu_86_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 j_fu_36 <= 4'd1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start_int == 1'b1) & (icmp_ln10_fu_70_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 count_reg_52 <= count_1_fu_80_p2;
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
 if (((ap_start_int == 1'b1) & (icmp_ln10_fu_70_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_phi_mux_count_phi_fu_55_p4 = count_3;
 end else begin
 ap_phi_mux_count_phi_fu_55_p4 = count_reg_52;
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
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_j_2 = 4'd1;
 end else begin
 ap_sig_allocacmp_j_2 = j_fu_36;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln10_fu_70_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 count_11_phi_out_ap_vld = 1'b1;
 end else begin
 count_11_phi_out_ap_vld = 1'b0;
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
assign count_11_phi_out = ap_phi_mux_count_phi_fu_55_p4;
assign count_1_fu_80_p2 = (ap_phi_mux_count_phi_fu_55_p4 ^ 1'd1);
assign icmp_ln10_fu_70_p2 = ((ap_sig_allocacmp_j_2 == zext_ln8) ? 1'b1 : 1'b0);
assign j_3_fu_86_p2 = (ap_sig_allocacmp_j_2 + 4'd1);
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
