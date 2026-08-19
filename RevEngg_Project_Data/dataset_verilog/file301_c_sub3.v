module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
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
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [3:0] indvars_iv_load_reg_152;
wire ap_CS_fsm_state2;
reg [3:0] i_load_reg_160;
wire [0:0] icmp_ln10_fu_94_p2;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_temptemp1;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_temptemp1_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_temptemp2;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_temptemp2_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_temptemp3;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_temptemp3_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_a_2_out_o;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_a_2_out_o_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_b_4_out_o;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_b_4_out_o_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_ap_start_reg;
wire ap_CS_fsm_state3;
reg [31:0] a_fu_48;
reg [31:0] b_fu_44;
reg [3:0] i_fu_40;
wire [3:0] i_1_fu_104_p2;
reg [3:0] indvars_iv_fu_52;
wire [3:0] add_ln10_fu_110_p2;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_12_2 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_ap_ready),
 .zext_ln10(indvars_iv_load_reg_152),
 .temptemp1(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_temptemp1),
 .temptemp1_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_temptemp1_ap_vld),
 .i(i_load_reg_160),
 .temptemp2(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_temptemp2),
 .temptemp2_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_temptemp2_ap_vld),
 .temptemp3(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_temptemp3),
 .temptemp3_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_temptemp3_ap_vld),
 .a_2_out_i(a_fu_48),
 .a_2_out_o(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_a_2_out_o),
 .a_2_out_o_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_a_2_out_o_ap_vld),
 .b_4_out_i(b_fu_44),
 .b_4_out_o(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_b_4_out_o),
 .b_4_out_o_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_b_4_out_o_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln10_fu_94_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 a_fu_48 <= 32'd0;
 end else if (((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_a_2_out_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 a_fu_48 <= grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_a_2_out_o;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 b_fu_44 <= 32'd1;
 end else if (((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_b_4_out_o_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 b_fu_44 <= grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_b_4_out_o;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 i_fu_40 <= 4'd1;
 end else if (((icmp_ln10_fu_94_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 i_fu_40 <= i_1_fu_104_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 indvars_iv_fu_52 <= 4'd2;
 end else if (((icmp_ln10_fu_94_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 indvars_iv_fu_52 <= add_ln10_fu_110_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln10_fu_94_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 i_load_reg_160 <= i_fu_40;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 indvars_iv_load_reg_152 <= indvars_iv_fu_52;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_ap_done == 1'b0)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln10_fu_94_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
 if (((icmp_ln10_fu_94_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
 if (((icmp_ln10_fu_94_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
assign add_ln10_fu_110_p2 = (indvars_iv_fu_52 + 4'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_ap_start_reg;
assign i_1_fu_104_p2 = (i_fu_40 + 4'd1);
assign icmp_ln10_fu_94_p2 = ((indvars_iv_fu_52 == 4'd10) ? 1'b1 : 1'b0);
assign temptemp1 = grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_temptemp1;
assign temptemp1_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_temptemp1_ap_vld;
assign temptemp2 = grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_temptemp2;
assign temptemp2_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_temptemp2_ap_vld;
assign temptemp3 = grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_temptemp3;
assign temptemp3_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_56_temptemp3_ap_vld;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_12_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 zext_ln10,
 temptemp1,
 temptemp1_ap_vld,
 i,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 a_2_out_i,
 a_2_out_o,
 a_2_out_o_ap_vld,
 b_4_out_i,
 b_4_out_o,
 b_4_out_o_ap_vld
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [3:0] zext_ln10;
output [31:0] temptemp1;
output temptemp1_ap_vld;
input [3:0] i;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
input [31:0] a_2_out_i;
output [31:0] a_2_out_o;
output a_2_out_o_ap_vld;
input [31:0] b_4_out_i;
output [31:0] b_4_out_o;
output b_4_out_o_ap_vld;
reg ap_idle;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg[31:0] a_2_out_o;
reg a_2_out_o_ap_vld;
reg[31:0] b_4_out_o;
reg b_4_out_o_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln12_fu_99_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [3:0] i_read_read_fu_48_p2;
wire [0:0] icmp_ln20_fu_105_p2;
wire [31:0] c_fu_111_p2;
reg [3:0] j_fu_44;
wire [3:0] j_3_fu_130_p2;
wire ap_loop_init;
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 if ((icmp_ln12_fu_99_p2 == 1'd0)) begin
 j_fu_44 <= j_3_fu_130_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 j_fu_44 <= 4'd1;
 end
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & ((~(i_read_read_fu_48_p2 == 4'd2) & ~(i_read_read_fu_48_p2 == 4'd1) & (icmp_ln12_fu_99_p2 == 1'd0)) | (~(i_read_read_fu_48_p2 == 4'd1) & (icmp_ln20_fu_105_p2 == 1'd0) & (icmp_ln12_fu_99_p2 == 1'd0))))) begin
 a_2_out_o = b_4_out_i;
 end else begin
 a_2_out_o = a_2_out_i;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1) & ((~(i_read_read_fu_48_p2 == 4'd2) & ~(i_read_read_fu_48_p2 == 4'd1) & (icmp_ln12_fu_99_p2 == 1'd0)) | (~(i_read_read_fu_48_p2 == 4'd1) & (icmp_ln20_fu_105_p2 == 1'd0) & (icmp_ln12_fu_99_p2 == 1'd0))))) begin
 a_2_out_o_ap_vld = 1'b1;
 end else begin
 a_2_out_o_ap_vld = 1'b0;
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
 if (((icmp_ln12_fu_99_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
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
 ap_sig_allocacmp_j_2 = 4'd1;
 end else begin
 ap_sig_allocacmp_j_2 = j_fu_44;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & ((~(i_read_read_fu_48_p2 == 4'd2) & ~(i_read_read_fu_48_p2 == 4'd1) & (icmp_ln12_fu_99_p2 == 1'd0)) | (~(i_read_read_fu_48_p2 == 4'd1) & (icmp_ln20_fu_105_p2 == 1'd0) & (icmp_ln12_fu_99_p2 == 1'd0))))) begin
 b_4_out_o = c_fu_111_p2;
 end else begin
 b_4_out_o = b_4_out_i;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1) & ((~(i_read_read_fu_48_p2 == 4'd2) & ~(i_read_read_fu_48_p2 == 4'd1) & (icmp_ln12_fu_99_p2 == 1'd0)) | (~(i_read_read_fu_48_p2 == 4'd1) & (icmp_ln20_fu_105_p2 == 1'd0) & (icmp_ln12_fu_99_p2 == 1'd0))))) begin
 b_4_out_o_ap_vld = 1'b1;
 end else begin
 b_4_out_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((i_read_read_fu_48_p2 == 4'd1) & (icmp_ln12_fu_99_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln20_fu_105_p2 == 1'd1) & (i_read_read_fu_48_p2 == 4'd2) & (icmp_ln12_fu_99_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1) & ((~(i_read_read_fu_48_p2 == 4'd2) & ~(i_read_read_fu_48_p2 == 4'd1) & (icmp_ln12_fu_99_p2 == 1'd0)) | (~(i_read_read_fu_48_p2 == 4'd1) & (icmp_ln20_fu_105_p2 == 1'd0) & (icmp_ln12_fu_99_p2 == 1'd0))))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
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
assign c_fu_111_p2 = (b_4_out_i + a_2_out_i);
assign i_read_read_fu_48_p2 = i;
assign icmp_ln12_fu_99_p2 = ((ap_sig_allocacmp_j_2 == zext_ln10) ? 1'b1 : 1'b0);
assign icmp_ln20_fu_105_p2 = ((ap_sig_allocacmp_j_2 == 4'd1) ? 1'b1 : 1'b0);
assign j_3_fu_130_p2 = (ap_sig_allocacmp_j_2 + 4'd1);
assign temptemp1 = a_2_out_i;
assign temptemp2 = b_4_out_i;
assign temptemp3 = (b_4_out_i + a_2_out_i);
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
