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
parameter ap_ST_fsm_state1 = 4'd1;
parameter ap_ST_fsm_state2 = 4'd2;
parameter ap_ST_fsm_state3 = 4'd4;
parameter ap_ST_fsm_state4 = 4'd8;
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
reg temptemp3_ap_vld;
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] div_fu_158_p3;
reg [31:0] div_reg_220;
wire ap_CS_fsm_state2;
wire [0:0] icmp_ln14_fu_105_p2;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_sum_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_sum_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_ap_start_reg;
wire ap_CS_fsm_state3;
reg [31:0] i_1_fu_46;
wire [31:0] i_4_fu_186_p2;
wire ap_CS_fsm_state4;
wire [0:0] and_ln21_fu_180_p2;
wire [31:0] p_neg_fu_118_p2;
wire [30:0] p_lshr_fu_124_p4;
wire [31:0] p_lshr_cast_fu_134_p1;
wire [30:0] p_lshr_f_fu_144_p4;
wire [0:0] tmp_fu_110_p3;
wire [31:0] p_neg_t_fu_138_p2;
wire [31:0] p_lshr_f_cast_fu_154_p1;
wire [0:0] icmp_ln21_fu_170_p2;
wire [0:0] icmp_ln21_1_fu_175_p2;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_16_2 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_ap_ready),
 .div(div_reg_220),
 .i_1(i_1_fu_46),
 .sum_out(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_sum_out),
 .sum_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_sum_out_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln14_fu_105_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 i_1_fu_46 <= lower;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 i_1_fu_46 <= i_4_fu_186_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln14_fu_105_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 div_reg_220 <= div_fu_158_p3;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_ap_done == 1'b0)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
 if (((icmp_ln14_fu_105_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
 if (((icmp_ln14_fu_105_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'd1 == and_ln21_fu_180_p2) & (1'b1 == ap_CS_fsm_state4))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
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
 if (((icmp_ln14_fu_105_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state4 : begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign and_ln21_fu_180_p2 = (icmp_ln21_fu_170_p2 & icmp_ln21_1_fu_175_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_return = 32'd0;
assign div_fu_158_p3 = ((tmp_fu_110_p3[0:0] == 1'b1) ? p_neg_t_fu_138_p2 : p_lshr_f_cast_fu_154_p1);
assign grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_ap_start_reg;
assign i_4_fu_186_p2 = (i_1_fu_46 + 32'd1);
assign icmp_ln14_fu_105_p2 = (($signed(i_1_fu_46) > $signed(upper)) ? 1'b1 : 1'b0);
assign icmp_ln21_1_fu_175_p2 = ((i_1_fu_46 != 32'd0) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_170_p2 = ((grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_89_sum_out == i_1_fu_46) ? 1'b1 : 1'b0);
assign p_lshr_cast_fu_134_p1 = p_lshr_fu_124_p4;
assign p_lshr_f_cast_fu_154_p1 = p_lshr_f_fu_144_p4;
assign p_lshr_f_fu_144_p4 = {{i_1_fu_46[31:1]}};
assign p_lshr_fu_124_p4 = {{p_neg_fu_118_p2[31:1]}};
assign p_neg_fu_118_p2 = (32'd0 - i_1_fu_46);
assign p_neg_t_fu_138_p2 = (32'd0 - p_lshr_cast_fu_134_p1);
assign temptemp1 = lower;
assign temptemp2 = upper;
assign temptemp3 = i_1_fu_46;
assign tmp_fu_110_p3 = i_1_fu_46[32'd31];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_16_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 div,
 i_1,
 sum_out,
 sum_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] div;
input [31:0] i_1;
output [31:0] sum_out;
output sum_out_ap_vld;
reg ap_idle;
reg sum_out_ap_vld;
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
reg ap_enable_reg_pp0_iter14;
reg ap_enable_reg_pp0_iter15;
reg ap_enable_reg_pp0_iter16;
reg ap_enable_reg_pp0_iter17;
reg ap_enable_reg_pp0_iter18;
reg ap_enable_reg_pp0_iter19;
reg ap_enable_reg_pp0_iter20;
reg ap_enable_reg_pp0_iter21;
reg ap_enable_reg_pp0_iter22;
reg ap_enable_reg_pp0_iter23;
reg ap_enable_reg_pp0_iter24;
reg ap_enable_reg_pp0_iter25;
reg ap_enable_reg_pp0_iter26;
reg ap_enable_reg_pp0_iter27;
reg ap_enable_reg_pp0_iter28;
reg ap_enable_reg_pp0_iter29;
reg ap_enable_reg_pp0_iter30;
reg ap_enable_reg_pp0_iter31;
reg ap_enable_reg_pp0_iter32;
reg ap_enable_reg_pp0_iter33;
reg ap_enable_reg_pp0_iter34;
reg ap_enable_reg_pp0_iter35;
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
wire ap_block_state15_pp0_stage0_iter14;
wire ap_block_state16_pp0_stage0_iter15;
wire ap_block_state17_pp0_stage0_iter16;
wire ap_block_state18_pp0_stage0_iter17;
wire ap_block_state19_pp0_stage0_iter18;
wire ap_block_state20_pp0_stage0_iter19;
wire ap_block_state21_pp0_stage0_iter20;
wire ap_block_state22_pp0_stage0_iter21;
wire ap_block_state23_pp0_stage0_iter22;
wire ap_block_state24_pp0_stage0_iter23;
wire ap_block_state25_pp0_stage0_iter24;
wire ap_block_state26_pp0_stage0_iter25;
wire ap_block_state27_pp0_stage0_iter26;
wire ap_block_state28_pp0_stage0_iter27;
wire ap_block_state29_pp0_stage0_iter28;
wire ap_block_state30_pp0_stage0_iter29;
wire ap_block_state31_pp0_stage0_iter30;
wire ap_block_state32_pp0_stage0_iter31;
wire ap_block_state33_pp0_stage0_iter32;
wire ap_block_state34_pp0_stage0_iter33;
wire ap_block_state35_pp0_stage0_iter34;
wire ap_block_state36_pp0_stage0_iter35;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln16_fu_64_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg [31:0] j_2_reg_138;
reg [31:0] j_2_reg_138_pp0_iter1_reg;
reg [31:0] j_2_reg_138_pp0_iter2_reg;
reg [31:0] j_2_reg_138_pp0_iter3_reg;
reg [31:0] j_2_reg_138_pp0_iter4_reg;
reg [31:0] j_2_reg_138_pp0_iter5_reg;
reg [31:0] j_2_reg_138_pp0_iter6_reg;
reg [31:0] j_2_reg_138_pp0_iter7_reg;
reg [31:0] j_2_reg_138_pp0_iter8_reg;
reg [31:0] j_2_reg_138_pp0_iter9_reg;
reg [31:0] j_2_reg_138_pp0_iter10_reg;
reg [31:0] j_2_reg_138_pp0_iter11_reg;
reg [31:0] j_2_reg_138_pp0_iter12_reg;
reg [31:0] j_2_reg_138_pp0_iter13_reg;
reg [31:0] j_2_reg_138_pp0_iter14_reg;
reg [31:0] j_2_reg_138_pp0_iter15_reg;
reg [31:0] j_2_reg_138_pp0_iter16_reg;
reg [31:0] j_2_reg_138_pp0_iter17_reg;
reg [31:0] j_2_reg_138_pp0_iter18_reg;
reg [31:0] j_2_reg_138_pp0_iter19_reg;
reg [31:0] j_2_reg_138_pp0_iter20_reg;
reg [31:0] j_2_reg_138_pp0_iter21_reg;
reg [31:0] j_2_reg_138_pp0_iter22_reg;
reg [31:0] j_2_reg_138_pp0_iter23_reg;
reg [31:0] j_2_reg_138_pp0_iter24_reg;
reg [31:0] j_2_reg_138_pp0_iter25_reg;
reg [31:0] j_2_reg_138_pp0_iter26_reg;
reg [31:0] j_2_reg_138_pp0_iter27_reg;
reg [31:0] j_2_reg_138_pp0_iter28_reg;
reg [31:0] j_2_reg_138_pp0_iter29_reg;
reg [31:0] j_2_reg_138_pp0_iter30_reg;
reg [31:0] j_2_reg_138_pp0_iter31_reg;
reg [31:0] j_2_reg_138_pp0_iter32_reg;
reg [31:0] j_2_reg_138_pp0_iter33_reg;
reg [31:0] j_2_reg_138_pp0_iter34_reg;
reg [0:0] icmp_ln16_reg_144;
reg [0:0] icmp_ln16_reg_144_pp0_iter1_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter2_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter3_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter4_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter5_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter6_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter7_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter8_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter9_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter10_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter11_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter12_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter13_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter14_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter15_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter16_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter17_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter18_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter19_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter20_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter21_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter22_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter23_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter24_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter25_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter26_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter27_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter28_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter29_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter30_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter31_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter32_reg;
reg [0:0] icmp_ln16_reg_144_pp0_iter33_reg;
reg [31:0] sum_fu_24;
wire [31:0] sum_1_fu_101_p3;
wire ap_block_pp0_stage0;
wire ap_loop_init;
reg [31:0] j_fu_28;
wire [31:0] j_3_fu_76_p2;
reg [31:0] ap_sig_allocacmp_j_2;
wire ap_block_pp0_stage0_01001;
wire [31:0] grp_fu_70_p2;
wire [0:0] icmp_ln17_fu_90_p2;
wire [31:0] add_ln18_fu_96_p2;
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
reg ap_loop_exit_ready_pp0_iter14_reg;
reg ap_loop_exit_ready_pp0_iter15_reg;
reg ap_loop_exit_ready_pp0_iter16_reg;
reg ap_loop_exit_ready_pp0_iter17_reg;
reg ap_loop_exit_ready_pp0_iter18_reg;
reg ap_loop_exit_ready_pp0_iter19_reg;
reg ap_loop_exit_ready_pp0_iter20_reg;
reg ap_loop_exit_ready_pp0_iter21_reg;
reg ap_loop_exit_ready_pp0_iter22_reg;
reg ap_loop_exit_ready_pp0_iter23_reg;
reg ap_loop_exit_ready_pp0_iter24_reg;
reg ap_loop_exit_ready_pp0_iter25_reg;
reg ap_loop_exit_ready_pp0_iter26_reg;
reg ap_loop_exit_ready_pp0_iter27_reg;
reg ap_loop_exit_ready_pp0_iter28_reg;
reg ap_loop_exit_ready_pp0_iter29_reg;
reg ap_loop_exit_ready_pp0_iter30_reg;
reg ap_loop_exit_ready_pp0_iter31_reg;
reg ap_loop_exit_ready_pp0_iter32_reg;
reg ap_loop_exit_ready_pp0_iter33_reg;
reg ap_loop_exit_ready_pp0_iter34_reg;
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
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter24 = 1'b0;
#0 ap_enable_reg_pp0_iter25 = 1'b0;
#0 ap_enable_reg_pp0_iter26 = 1'b0;
#0 ap_enable_reg_pp0_iter27 = 1'b0;
#0 ap_enable_reg_pp0_iter28 = 1'b0;
#0 ap_enable_reg_pp0_iter29 = 1'b0;
#0 ap_enable_reg_pp0_iter30 = 1'b0;
#0 ap_enable_reg_pp0_iter31 = 1'b0;
#0 ap_enable_reg_pp0_iter32 = 1'b0;
#0 ap_enable_reg_pp0_iter33 = 1'b0;
#0 ap_enable_reg_pp0_iter34 = 1'b0;
#0 ap_enable_reg_pp0_iter35 = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_srem_32ns_32ns_32_36_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
srem_32ns_32ns_32_36_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(i_1),
 .din1(ap_sig_allocacmp_j_2),
 .ce(1'b1),
 .dout(grp_fu_70_p2)
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
 end else if (((ap_loop_exit_ready_pp0_iter34_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
 ap_enable_reg_pp0_iter14 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter15 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter16 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter17 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter18 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter19 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
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
 ap_enable_reg_pp0_iter20 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter21 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter22 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter23 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter24 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter24 <= ap_enable_reg_pp0_iter23;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter25 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter25 <= ap_enable_reg_pp0_iter24;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter26 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter26 <= ap_enable_reg_pp0_iter25;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter27 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter27 <= ap_enable_reg_pp0_iter26;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter28 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter28 <= ap_enable_reg_pp0_iter27;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter29 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter29 <= ap_enable_reg_pp0_iter28;
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
 ap_enable_reg_pp0_iter30 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter30 <= ap_enable_reg_pp0_iter29;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter31 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter31 <= ap_enable_reg_pp0_iter30;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter32 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter32 <= ap_enable_reg_pp0_iter31;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter33 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter33 <= ap_enable_reg_pp0_iter32;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter34 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter34 <= ap_enable_reg_pp0_iter33;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter35 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter35 <= ap_enable_reg_pp0_iter34;
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
 if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
 if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln16_fu_64_p2 == 1'd0))) begin
 j_fu_28 <= j_3_fu_76_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 j_fu_28 <= 32'd1;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 sum_fu_24 <= 32'd0;
 end else if ((ap_enable_reg_pp0_iter35 == 1'b1)) begin
 sum_fu_24 <= sum_1_fu_101_p3;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
 ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
 ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
 ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
 ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
 ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
 ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
 ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
 ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
 ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
 ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
 ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
 ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
 ap_loop_exit_ready_pp0_iter23_reg <= ap_loop_exit_ready_pp0_iter22_reg;
 ap_loop_exit_ready_pp0_iter24_reg <= ap_loop_exit_ready_pp0_iter23_reg;
 ap_loop_exit_ready_pp0_iter25_reg <= ap_loop_exit_ready_pp0_iter24_reg;
 ap_loop_exit_ready_pp0_iter26_reg <= ap_loop_exit_ready_pp0_iter25_reg;
 ap_loop_exit_ready_pp0_iter27_reg <= ap_loop_exit_ready_pp0_iter26_reg;
 ap_loop_exit_ready_pp0_iter28_reg <= ap_loop_exit_ready_pp0_iter27_reg;
 ap_loop_exit_ready_pp0_iter29_reg <= ap_loop_exit_ready_pp0_iter28_reg;
 ap_loop_exit_ready_pp0_iter30_reg <= ap_loop_exit_ready_pp0_iter29_reg;
 ap_loop_exit_ready_pp0_iter31_reg <= ap_loop_exit_ready_pp0_iter30_reg;
 ap_loop_exit_ready_pp0_iter32_reg <= ap_loop_exit_ready_pp0_iter31_reg;
 ap_loop_exit_ready_pp0_iter33_reg <= ap_loop_exit_ready_pp0_iter32_reg;
 ap_loop_exit_ready_pp0_iter34_reg <= ap_loop_exit_ready_pp0_iter33_reg;
 ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
 ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
 ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
 ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
 ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
 ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
 ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
 icmp_ln16_reg_144_pp0_iter10_reg <= icmp_ln16_reg_144_pp0_iter9_reg;
 icmp_ln16_reg_144_pp0_iter11_reg <= icmp_ln16_reg_144_pp0_iter10_reg;
 icmp_ln16_reg_144_pp0_iter12_reg <= icmp_ln16_reg_144_pp0_iter11_reg;
 icmp_ln16_reg_144_pp0_iter13_reg <= icmp_ln16_reg_144_pp0_iter12_reg;
 icmp_ln16_reg_144_pp0_iter14_reg <= icmp_ln16_reg_144_pp0_iter13_reg;
 icmp_ln16_reg_144_pp0_iter15_reg <= icmp_ln16_reg_144_pp0_iter14_reg;
 icmp_ln16_reg_144_pp0_iter16_reg <= icmp_ln16_reg_144_pp0_iter15_reg;
 icmp_ln16_reg_144_pp0_iter17_reg <= icmp_ln16_reg_144_pp0_iter16_reg;
 icmp_ln16_reg_144_pp0_iter18_reg <= icmp_ln16_reg_144_pp0_iter17_reg;
 icmp_ln16_reg_144_pp0_iter19_reg <= icmp_ln16_reg_144_pp0_iter18_reg;
 icmp_ln16_reg_144_pp0_iter20_reg <= icmp_ln16_reg_144_pp0_iter19_reg;
 icmp_ln16_reg_144_pp0_iter21_reg <= icmp_ln16_reg_144_pp0_iter20_reg;
 icmp_ln16_reg_144_pp0_iter22_reg <= icmp_ln16_reg_144_pp0_iter21_reg;
 icmp_ln16_reg_144_pp0_iter23_reg <= icmp_ln16_reg_144_pp0_iter22_reg;
 icmp_ln16_reg_144_pp0_iter24_reg <= icmp_ln16_reg_144_pp0_iter23_reg;
 icmp_ln16_reg_144_pp0_iter25_reg <= icmp_ln16_reg_144_pp0_iter24_reg;
 icmp_ln16_reg_144_pp0_iter26_reg <= icmp_ln16_reg_144_pp0_iter25_reg;
 icmp_ln16_reg_144_pp0_iter27_reg <= icmp_ln16_reg_144_pp0_iter26_reg;
 icmp_ln16_reg_144_pp0_iter28_reg <= icmp_ln16_reg_144_pp0_iter27_reg;
 icmp_ln16_reg_144_pp0_iter29_reg <= icmp_ln16_reg_144_pp0_iter28_reg;
 icmp_ln16_reg_144_pp0_iter2_reg <= icmp_ln16_reg_144_pp0_iter1_reg;
 icmp_ln16_reg_144_pp0_iter30_reg <= icmp_ln16_reg_144_pp0_iter29_reg;
 icmp_ln16_reg_144_pp0_iter31_reg <= icmp_ln16_reg_144_pp0_iter30_reg;
 icmp_ln16_reg_144_pp0_iter32_reg <= icmp_ln16_reg_144_pp0_iter31_reg;
 icmp_ln16_reg_144_pp0_iter33_reg <= icmp_ln16_reg_144_pp0_iter32_reg;
 icmp_ln16_reg_144_pp0_iter3_reg <= icmp_ln16_reg_144_pp0_iter2_reg;
 icmp_ln16_reg_144_pp0_iter4_reg <= icmp_ln16_reg_144_pp0_iter3_reg;
 icmp_ln16_reg_144_pp0_iter5_reg <= icmp_ln16_reg_144_pp0_iter4_reg;
 icmp_ln16_reg_144_pp0_iter6_reg <= icmp_ln16_reg_144_pp0_iter5_reg;
 icmp_ln16_reg_144_pp0_iter7_reg <= icmp_ln16_reg_144_pp0_iter6_reg;
 icmp_ln16_reg_144_pp0_iter8_reg <= icmp_ln16_reg_144_pp0_iter7_reg;
 icmp_ln16_reg_144_pp0_iter9_reg <= icmp_ln16_reg_144_pp0_iter8_reg;
 j_2_reg_138_pp0_iter10_reg <= j_2_reg_138_pp0_iter9_reg;
 j_2_reg_138_pp0_iter11_reg <= j_2_reg_138_pp0_iter10_reg;
 j_2_reg_138_pp0_iter12_reg <= j_2_reg_138_pp0_iter11_reg;
 j_2_reg_138_pp0_iter13_reg <= j_2_reg_138_pp0_iter12_reg;
 j_2_reg_138_pp0_iter14_reg <= j_2_reg_138_pp0_iter13_reg;
 j_2_reg_138_pp0_iter15_reg <= j_2_reg_138_pp0_iter14_reg;
 j_2_reg_138_pp0_iter16_reg <= j_2_reg_138_pp0_iter15_reg;
 j_2_reg_138_pp0_iter17_reg <= j_2_reg_138_pp0_iter16_reg;
 j_2_reg_138_pp0_iter18_reg <= j_2_reg_138_pp0_iter17_reg;
 j_2_reg_138_pp0_iter19_reg <= j_2_reg_138_pp0_iter18_reg;
 j_2_reg_138_pp0_iter20_reg <= j_2_reg_138_pp0_iter19_reg;
 j_2_reg_138_pp0_iter21_reg <= j_2_reg_138_pp0_iter20_reg;
 j_2_reg_138_pp0_iter22_reg <= j_2_reg_138_pp0_iter21_reg;
 j_2_reg_138_pp0_iter23_reg <= j_2_reg_138_pp0_iter22_reg;
 j_2_reg_138_pp0_iter24_reg <= j_2_reg_138_pp0_iter23_reg;
 j_2_reg_138_pp0_iter25_reg <= j_2_reg_138_pp0_iter24_reg;
 j_2_reg_138_pp0_iter26_reg <= j_2_reg_138_pp0_iter25_reg;
 j_2_reg_138_pp0_iter27_reg <= j_2_reg_138_pp0_iter26_reg;
 j_2_reg_138_pp0_iter28_reg <= j_2_reg_138_pp0_iter27_reg;
 j_2_reg_138_pp0_iter29_reg <= j_2_reg_138_pp0_iter28_reg;
 j_2_reg_138_pp0_iter2_reg <= j_2_reg_138_pp0_iter1_reg;
 j_2_reg_138_pp0_iter30_reg <= j_2_reg_138_pp0_iter29_reg;
 j_2_reg_138_pp0_iter31_reg <= j_2_reg_138_pp0_iter30_reg;
 j_2_reg_138_pp0_iter32_reg <= j_2_reg_138_pp0_iter31_reg;
 j_2_reg_138_pp0_iter33_reg <= j_2_reg_138_pp0_iter32_reg;
 j_2_reg_138_pp0_iter34_reg <= j_2_reg_138_pp0_iter33_reg;
 j_2_reg_138_pp0_iter3_reg <= j_2_reg_138_pp0_iter2_reg;
 j_2_reg_138_pp0_iter4_reg <= j_2_reg_138_pp0_iter3_reg;
 j_2_reg_138_pp0_iter5_reg <= j_2_reg_138_pp0_iter4_reg;
 j_2_reg_138_pp0_iter6_reg <= j_2_reg_138_pp0_iter5_reg;
 j_2_reg_138_pp0_iter7_reg <= j_2_reg_138_pp0_iter6_reg;
 j_2_reg_138_pp0_iter8_reg <= j_2_reg_138_pp0_iter7_reg;
 j_2_reg_138_pp0_iter9_reg <= j_2_reg_138_pp0_iter8_reg;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
 ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
 ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
 icmp_ln16_reg_144 <= icmp_ln16_fu_64_p2;
 icmp_ln16_reg_144_pp0_iter1_reg <= icmp_ln16_reg_144;
 j_2_reg_138 <= ap_sig_allocacmp_j_2;
 j_2_reg_138_pp0_iter1_reg <= j_2_reg_138;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln16_fu_64_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready_pp0_iter34_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_idle_pp0 == 1'b1))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter35 == 1'b0) & (ap_enable_reg_pp0_iter34 == 1'b0) & (ap_enable_reg_pp0_iter33 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0))) begin
 ap_idle_pp0 = 1'b1;
 end else begin
 ap_idle_pp0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
 ap_sig_allocacmp_j_2 = 32'd1;
 end else begin
 ap_sig_allocacmp_j_2 = j_fu_28;
 end
end
always @ (*) begin
 if (((icmp_ln16_reg_144_pp0_iter33_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
 sum_out_ap_vld = 1'b1;
 end else begin
 sum_out_ap_vld = 1'b0;
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
assign add_ln18_fu_96_p2 = (sum_fu_24 + j_2_reg_138_pp0_iter34_reg);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);
assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);
assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);
assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);
assign ap_block_state14_pp0_stage0_iter13 = ~(1'b1 == 1'b1);
assign ap_block_state15_pp0_stage0_iter14 = ~(1'b1 == 1'b1);
assign ap_block_state16_pp0_stage0_iter15 = ~(1'b1 == 1'b1);
assign ap_block_state17_pp0_stage0_iter16 = ~(1'b1 == 1'b1);
assign ap_block_state18_pp0_stage0_iter17 = ~(1'b1 == 1'b1);
assign ap_block_state19_pp0_stage0_iter18 = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state20_pp0_stage0_iter19 = ~(1'b1 == 1'b1);
assign ap_block_state21_pp0_stage0_iter20 = ~(1'b1 == 1'b1);
assign ap_block_state22_pp0_stage0_iter21 = ~(1'b1 == 1'b1);
assign ap_block_state23_pp0_stage0_iter22 = ~(1'b1 == 1'b1);
assign ap_block_state24_pp0_stage0_iter23 = ~(1'b1 == 1'b1);
assign ap_block_state25_pp0_stage0_iter24 = ~(1'b1 == 1'b1);
assign ap_block_state26_pp0_stage0_iter25 = ~(1'b1 == 1'b1);
assign ap_block_state27_pp0_stage0_iter26 = ~(1'b1 == 1'b1);
assign ap_block_state28_pp0_stage0_iter27 = ~(1'b1 == 1'b1);
assign ap_block_state29_pp0_stage0_iter28 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state30_pp0_stage0_iter29 = ~(1'b1 == 1'b1);
assign ap_block_state31_pp0_stage0_iter30 = ~(1'b1 == 1'b1);
assign ap_block_state32_pp0_stage0_iter31 = ~(1'b1 == 1'b1);
assign ap_block_state33_pp0_stage0_iter32 = ~(1'b1 == 1'b1);
assign ap_block_state34_pp0_stage0_iter33 = ~(1'b1 == 1'b1);
assign ap_block_state35_pp0_stage0_iter34 = ~(1'b1 == 1'b1);
assign ap_block_state36_pp0_stage0_iter35 = ~(1'b1 == 1'b1);
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
assign icmp_ln16_fu_64_p2 = (($signed(ap_sig_allocacmp_j_2) > $signed(div)) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_90_p2 = ((grp_fu_70_p2 == 32'd0) ? 1'b1 : 1'b0);
assign j_3_fu_76_p2 = (ap_sig_allocacmp_j_2 + 32'd1);
assign sum_1_fu_101_p3 = ((icmp_ln17_fu_90_p2[0:0] == 1'b1) ? add_ln18_fu_96_p2 : sum_fu_24);
assign sum_out = sum_fu_24;
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
module entry_point_srem_32ns_32ns_32_36_1_divider
#(parameter
 in0_WIDTH = 32,
 in1_WIDTH = 32,
 out_WIDTH = 32
)
(
 input clk,
 input reset,
 input ce,
 input [in0_WIDTH-1:0] dividend,
 input [in1_WIDTH-1:0] divisor,
 input [1:0] sign_i,
 output wire [1:0] sign_o,
 output wire [out_WIDTH-1:0] quot,
 output wire [out_WIDTH-1:0] remd
);
localparam cal_WIDTH = (in0_WIDTH > in1_WIDTH)? in0_WIDTH : in1_WIDTH;
reg [in0_WIDTH-1:0] dividend_tmp[0:in0_WIDTH];
reg [in1_WIDTH-1:0] divisor_tmp[0:in0_WIDTH];
reg [in0_WIDTH-1:0] remd_tmp[0:in0_WIDTH];
wire [in0_WIDTH-1:0] comb_tmp[0:in0_WIDTH-1];
wire [cal_WIDTH:0] cal_tmp[0:in0_WIDTH-1];
reg [1:0] sign_tmp[0:in0_WIDTH];
assign quot = dividend_tmp[in0_WIDTH];
assign remd = remd_tmp[in0_WIDTH];
assign sign_o = sign_tmp[in0_WIDTH];
always @(posedge clk)
begin
 if (ce) begin
 dividend_tmp[0] <= dividend;
 divisor_tmp[0] <= divisor;
 sign_tmp[0] <= sign_i;
 remd_tmp[0] <= 1'b0;
 end
end
genvar i;
generate 
 for (i = 0; i < in0_WIDTH; i = i + 1)
 begin : loop
 if (in0_WIDTH == 1) assign comb_tmp[i] = dividend_tmp[i][0];
 else assign comb_tmp[i] = {remd_tmp[i][in0_WIDTH-2:0], dividend_tmp[i][in0_WIDTH-1]};
 assign cal_tmp[i] = {1'b0, comb_tmp[i]} - {1'b0, divisor_tmp[i]};
 always @(posedge clk)
 begin
 if (ce) begin
 if (in0_WIDTH == 1) dividend_tmp[i+1] <= ~cal_tmp[i][cal_WIDTH];
 else dividend_tmp[i+1] <= {dividend_tmp[i][in0_WIDTH-2:0], ~cal_tmp[i][cal_WIDTH]};
 divisor_tmp[i+1] <= divisor_tmp[i];
 remd_tmp[i+1] <= cal_tmp[i][cal_WIDTH]? comb_tmp[i] : cal_tmp[i][in0_WIDTH-1:0];
 sign_tmp[i+1] <= sign_tmp[i];
 end
 end
 end
endgenerate
endmodule
module entry_point_srem_32ns_32ns_32_36_1
#(parameter
 ID = 1,
 NUM_STAGE = 2,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 dout_WIDTH = 32
)
(
 input clk,
 input reset,
 input ce,
 input [din0_WIDTH-1:0] din0,
 input [din1_WIDTH-1:0] din1,
 output [dout_WIDTH-1:0] dout
);
reg [din0_WIDTH-1:0] dividend0;
reg [din1_WIDTH-1:0] divisor0;
wire [din0_WIDTH-1:0] dividend_u;
wire [din1_WIDTH-1:0] divisor_u;
wire [dout_WIDTH-1:0] quot_u;
wire [dout_WIDTH-1:0] remd_u;
reg [dout_WIDTH-1:0] quot;
reg [dout_WIDTH-1:0] remd;
wire [1:0] sign_i;
wire [1:0] sign_o;
entry_point_srem_32ns_32ns_32_36_1_divider #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_srem_32ns_32ns_32_36_1_divider_u (
 .clk ( clk ),
 .reset ( reset ),
 .ce ( ce ),
 .dividend ( dividend_u ),
 .divisor ( divisor_u ),
 .sign_i ( sign_i ),
 .sign_o ( sign_o ),
 .quot ( quot_u ),
 .remd ( remd_u )
);
assign sign_i = {dividend0[din0_WIDTH-1] ^ divisor0[din1_WIDTH-1], dividend0[din0_WIDTH-1]};
assign dividend_u = dividend0[din0_WIDTH-1]? ~dividend0[din0_WIDTH-1:0] + 1'b1 :
 dividend0[din0_WIDTH-1:0];
assign divisor_u = divisor0[din1_WIDTH-1]? ~divisor0[din1_WIDTH-1:0] + 1'b1 :
 divisor0[din1_WIDTH-1:0];
always @(posedge clk)
begin
 if (ce) begin
 dividend0 <= din0;
 divisor0 <= din1;
 end
end
always @(posedge clk)
begin
 if (ce) begin
 if (sign_o[1])
 quot <= ~quot_u + 1'b1;
 else
 quot <= quot_u;
 end
end
always @(posedge clk)
begin
 if (ce) begin
 if (sign_o[0])
 remd <= ~remd_u + 1'b1;
 else
 remd <= remd_u;
 end
end
assign dout = remd;
endmodule
