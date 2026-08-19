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
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 temptemp4,
 temptemp4_ap_vld,
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
input [31:0] n;
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
reg temptemp4_ap_vld;
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [29:0] div_udiv_reg_213;
wire ap_CS_fsm_state2;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_sum_1_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_sum_1_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_ap_start_reg;
wire ap_CS_fsm_state3;
reg [31:0] sum_1_loc_fu_60;
reg [30:0] i_fu_52;
wire [30:0] add_ln6_fu_164_p2;
wire ap_CS_fsm_state4;
wire [0:0] icmp_ln31_fu_169_p2;
reg [31:0] count_fu_56;
wire [31:0] count_1_fu_147_p2;
wire [0:0] icmp_ln23_fu_138_p2;
reg [31:0] ap_sig_allocacmp_count_load_1;
wire [31:0] zext_ln7_fu_131_p1;
wire [31:0] i_3_fu_158_p2;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_17_2 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_ap_ready),
 .zext_ln7(i_fu_52),
 .div_udiv_cast(div_udiv_reg_213),
 .sum_1_out(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_sum_1_out),
 .sum_1_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_sum_1_out_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 count_fu_56 <= 32'd0;
 end else if (((icmp_ln23_fu_138_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 count_fu_56 <= count_1_fu_147_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 i_fu_52 <= 31'd1;
 end else if (((icmp_ln31_fu_169_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 i_fu_52 <= add_ln6_fu_164_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 div_udiv_reg_213 <= {{i_fu_52[30:1]}};
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_sum_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 sum_1_loc_fu_60 <= grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_sum_1_out;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_ap_done == 1'b0)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
 if (((icmp_ln31_fu_169_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
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
 if (((icmp_ln31_fu_169_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln23_fu_138_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_sig_allocacmp_count_load_1 = count_1_fu_147_p2;
 end else begin
 ap_sig_allocacmp_count_load_1 = count_fu_56;
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
 if (((icmp_ln23_fu_138_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln31_fu_169_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln31_fu_169_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
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
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state4 : begin
 if (((icmp_ln31_fu_169_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
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
assign add_ln6_fu_164_p2 = (i_fu_52 + 31'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_return = 32'd0;
assign count_1_fu_147_p2 = (count_fu_56 + 32'd1);
assign grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_99_ap_start_reg;
assign i_3_fu_158_p2 = (zext_ln7_fu_131_p1 + 32'd1);
assign icmp_ln23_fu_138_p2 = ((sum_1_loc_fu_60 == zext_ln7_fu_131_p1) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_169_p2 = (($signed(i_3_fu_158_p2) > $signed(n)) ? 1'b1 : 1'b0);
assign temptemp1 = n;
assign temptemp2 = zext_ln7_fu_131_p1;
assign temptemp3 = n;
assign temptemp4 = ap_sig_allocacmp_count_load_1;
assign zext_ln7_fu_131_p1 = i_fu_52;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_17_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 zext_ln7,
 div_udiv_cast,
 sum_1_out,
 sum_1_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] zext_ln7;
input [29:0] div_udiv_cast;
output [31:0] sum_1_out;
output sum_1_out_ap_vld;
reg ap_idle;
reg sum_1_out_ap_vld;
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
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln22_fu_100_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg [29:0] j_2_reg_162;
reg [29:0] j_2_reg_162_pp0_iter1_reg;
reg [29:0] j_2_reg_162_pp0_iter2_reg;
reg [29:0] j_2_reg_162_pp0_iter3_reg;
reg [29:0] j_2_reg_162_pp0_iter4_reg;
reg [29:0] j_2_reg_162_pp0_iter5_reg;
reg [29:0] j_2_reg_162_pp0_iter6_reg;
reg [29:0] j_2_reg_162_pp0_iter7_reg;
reg [29:0] j_2_reg_162_pp0_iter8_reg;
reg [29:0] j_2_reg_162_pp0_iter9_reg;
reg [29:0] j_2_reg_162_pp0_iter10_reg;
reg [29:0] j_2_reg_162_pp0_iter11_reg;
reg [29:0] j_2_reg_162_pp0_iter12_reg;
reg [29:0] j_2_reg_162_pp0_iter13_reg;
reg [29:0] j_2_reg_162_pp0_iter14_reg;
reg [29:0] j_2_reg_162_pp0_iter15_reg;
reg [29:0] j_2_reg_162_pp0_iter16_reg;
reg [29:0] j_2_reg_162_pp0_iter17_reg;
reg [29:0] j_2_reg_162_pp0_iter18_reg;
reg [29:0] j_2_reg_162_pp0_iter19_reg;
reg [29:0] j_2_reg_162_pp0_iter20_reg;
reg [29:0] j_2_reg_162_pp0_iter21_reg;
reg [29:0] j_2_reg_162_pp0_iter22_reg;
reg [29:0] j_2_reg_162_pp0_iter23_reg;
reg [29:0] j_2_reg_162_pp0_iter24_reg;
reg [29:0] j_2_reg_162_pp0_iter25_reg;
reg [29:0] j_2_reg_162_pp0_iter26_reg;
reg [29:0] j_2_reg_162_pp0_iter27_reg;
reg [29:0] j_2_reg_162_pp0_iter28_reg;
reg [29:0] j_2_reg_162_pp0_iter29_reg;
reg [29:0] j_2_reg_162_pp0_iter30_reg;
reg [29:0] j_2_reg_162_pp0_iter31_reg;
reg [29:0] j_2_reg_162_pp0_iter32_reg;
reg [29:0] j_2_reg_162_pp0_iter33_reg;
wire [30:0] j_cast_fu_76_p1;
reg [0:0] icmp_ln22_reg_172;
reg [0:0] icmp_ln22_reg_172_pp0_iter1_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter2_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter3_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter4_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter5_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter6_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter7_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter8_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter9_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter10_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter11_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter12_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter13_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter14_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter15_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter16_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter17_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter18_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter19_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter20_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter21_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter22_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter23_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter24_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter25_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter26_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter27_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter28_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter29_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter30_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter31_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter32_reg;
reg [0:0] icmp_ln22_reg_172_pp0_iter33_reg;
reg [29:0] j_fu_32;
wire [29:0] trunc_ln5_fu_96_p1;
wire ap_loop_init;
reg [29:0] ap_sig_allocacmp_j_2;
wire ap_block_pp0_stage0;
reg [31:0] sum_fu_36;
wire [31:0] sum_3_fu_129_p3;
wire ap_block_pp0_stage0_01001;
wire [29:0] grp_fu_80_p1;
wire [30:0] j_3_fu_86_p2;
wire [31:0] zext_ln5_fu_92_p1;
wire [31:0] div_udiv_cast_cast_fu_59_p1;
wire [30:0] grp_fu_80_p2;
wire [31:0] j_cast1_fu_114_p1;
wire [0:0] icmp_ln18_fu_117_p2;
wire [31:0] add_ln19_fu_123_p2;
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
#0 ap_done_reg = 1'b0;
end
entry_point_urem_31ns_30ns_31_35_1 #(
 .ID( 1 ),
 .NUM_STAGE( 35 ),
 .din0_WIDTH( 31 ),
 .din1_WIDTH( 30 ),
 .dout_WIDTH( 31 ))
urem_31ns_30ns_31_35_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(zext_ln7),
 .din1(grp_fu_80_p1),
 .ce(1'b1),
 .dout(grp_fu_80_p2)
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
 if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
 if (((ap_loop_exit_ready_pp0_iter33_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_loop_exit_ready_pp0_iter34_reg <= 1'b0;
 end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 ap_loop_exit_ready_pp0_iter34_reg <= ap_loop_exit_ready_pp0_iter33_reg;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
 if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln22_fu_100_p2 == 1'd0))) begin
 j_fu_32 <= trunc_ln5_fu_96_p1;
 end else if ((ap_loop_init == 1'b1)) begin
 j_fu_32 <= 30'd1;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 sum_fu_36 <= 32'd0;
 end else if (((icmp_ln22_reg_172_pp0_iter33_reg == 1'd0) & (ap_enable_reg_pp0_iter34 == 1'b1))) begin
 sum_fu_36 <= sum_3_fu_129_p3;
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
 ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
 ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
 ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
 ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
 ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
 ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
 ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
 icmp_ln22_reg_172_pp0_iter10_reg <= icmp_ln22_reg_172_pp0_iter9_reg;
 icmp_ln22_reg_172_pp0_iter11_reg <= icmp_ln22_reg_172_pp0_iter10_reg;
 icmp_ln22_reg_172_pp0_iter12_reg <= icmp_ln22_reg_172_pp0_iter11_reg;
 icmp_ln22_reg_172_pp0_iter13_reg <= icmp_ln22_reg_172_pp0_iter12_reg;
 icmp_ln22_reg_172_pp0_iter14_reg <= icmp_ln22_reg_172_pp0_iter13_reg;
 icmp_ln22_reg_172_pp0_iter15_reg <= icmp_ln22_reg_172_pp0_iter14_reg;
 icmp_ln22_reg_172_pp0_iter16_reg <= icmp_ln22_reg_172_pp0_iter15_reg;
 icmp_ln22_reg_172_pp0_iter17_reg <= icmp_ln22_reg_172_pp0_iter16_reg;
 icmp_ln22_reg_172_pp0_iter18_reg <= icmp_ln22_reg_172_pp0_iter17_reg;
 icmp_ln22_reg_172_pp0_iter19_reg <= icmp_ln22_reg_172_pp0_iter18_reg;
 icmp_ln22_reg_172_pp0_iter20_reg <= icmp_ln22_reg_172_pp0_iter19_reg;
 icmp_ln22_reg_172_pp0_iter21_reg <= icmp_ln22_reg_172_pp0_iter20_reg;
 icmp_ln22_reg_172_pp0_iter22_reg <= icmp_ln22_reg_172_pp0_iter21_reg;
 icmp_ln22_reg_172_pp0_iter23_reg <= icmp_ln22_reg_172_pp0_iter22_reg;
 icmp_ln22_reg_172_pp0_iter24_reg <= icmp_ln22_reg_172_pp0_iter23_reg;
 icmp_ln22_reg_172_pp0_iter25_reg <= icmp_ln22_reg_172_pp0_iter24_reg;
 icmp_ln22_reg_172_pp0_iter26_reg <= icmp_ln22_reg_172_pp0_iter25_reg;
 icmp_ln22_reg_172_pp0_iter27_reg <= icmp_ln22_reg_172_pp0_iter26_reg;
 icmp_ln22_reg_172_pp0_iter28_reg <= icmp_ln22_reg_172_pp0_iter27_reg;
 icmp_ln22_reg_172_pp0_iter29_reg <= icmp_ln22_reg_172_pp0_iter28_reg;
 icmp_ln22_reg_172_pp0_iter2_reg <= icmp_ln22_reg_172_pp0_iter1_reg;
 icmp_ln22_reg_172_pp0_iter30_reg <= icmp_ln22_reg_172_pp0_iter29_reg;
 icmp_ln22_reg_172_pp0_iter31_reg <= icmp_ln22_reg_172_pp0_iter30_reg;
 icmp_ln22_reg_172_pp0_iter32_reg <= icmp_ln22_reg_172_pp0_iter31_reg;
 icmp_ln22_reg_172_pp0_iter33_reg <= icmp_ln22_reg_172_pp0_iter32_reg;
 icmp_ln22_reg_172_pp0_iter3_reg <= icmp_ln22_reg_172_pp0_iter2_reg;
 icmp_ln22_reg_172_pp0_iter4_reg <= icmp_ln22_reg_172_pp0_iter3_reg;
 icmp_ln22_reg_172_pp0_iter5_reg <= icmp_ln22_reg_172_pp0_iter4_reg;
 icmp_ln22_reg_172_pp0_iter6_reg <= icmp_ln22_reg_172_pp0_iter5_reg;
 icmp_ln22_reg_172_pp0_iter7_reg <= icmp_ln22_reg_172_pp0_iter6_reg;
 icmp_ln22_reg_172_pp0_iter8_reg <= icmp_ln22_reg_172_pp0_iter7_reg;
 icmp_ln22_reg_172_pp0_iter9_reg <= icmp_ln22_reg_172_pp0_iter8_reg;
 j_2_reg_162_pp0_iter10_reg <= j_2_reg_162_pp0_iter9_reg;
 j_2_reg_162_pp0_iter11_reg <= j_2_reg_162_pp0_iter10_reg;
 j_2_reg_162_pp0_iter12_reg <= j_2_reg_162_pp0_iter11_reg;
 j_2_reg_162_pp0_iter13_reg <= j_2_reg_162_pp0_iter12_reg;
 j_2_reg_162_pp0_iter14_reg <= j_2_reg_162_pp0_iter13_reg;
 j_2_reg_162_pp0_iter15_reg <= j_2_reg_162_pp0_iter14_reg;
 j_2_reg_162_pp0_iter16_reg <= j_2_reg_162_pp0_iter15_reg;
 j_2_reg_162_pp0_iter17_reg <= j_2_reg_162_pp0_iter16_reg;
 j_2_reg_162_pp0_iter18_reg <= j_2_reg_162_pp0_iter17_reg;
 j_2_reg_162_pp0_iter19_reg <= j_2_reg_162_pp0_iter18_reg;
 j_2_reg_162_pp0_iter20_reg <= j_2_reg_162_pp0_iter19_reg;
 j_2_reg_162_pp0_iter21_reg <= j_2_reg_162_pp0_iter20_reg;
 j_2_reg_162_pp0_iter22_reg <= j_2_reg_162_pp0_iter21_reg;
 j_2_reg_162_pp0_iter23_reg <= j_2_reg_162_pp0_iter22_reg;
 j_2_reg_162_pp0_iter24_reg <= j_2_reg_162_pp0_iter23_reg;
 j_2_reg_162_pp0_iter25_reg <= j_2_reg_162_pp0_iter24_reg;
 j_2_reg_162_pp0_iter26_reg <= j_2_reg_162_pp0_iter25_reg;
 j_2_reg_162_pp0_iter27_reg <= j_2_reg_162_pp0_iter26_reg;
 j_2_reg_162_pp0_iter28_reg <= j_2_reg_162_pp0_iter27_reg;
 j_2_reg_162_pp0_iter29_reg <= j_2_reg_162_pp0_iter28_reg;
 j_2_reg_162_pp0_iter2_reg <= j_2_reg_162_pp0_iter1_reg;
 j_2_reg_162_pp0_iter30_reg <= j_2_reg_162_pp0_iter29_reg;
 j_2_reg_162_pp0_iter31_reg <= j_2_reg_162_pp0_iter30_reg;
 j_2_reg_162_pp0_iter32_reg <= j_2_reg_162_pp0_iter31_reg;
 j_2_reg_162_pp0_iter33_reg <= j_2_reg_162_pp0_iter32_reg;
 j_2_reg_162_pp0_iter3_reg <= j_2_reg_162_pp0_iter2_reg;
 j_2_reg_162_pp0_iter4_reg <= j_2_reg_162_pp0_iter3_reg;
 j_2_reg_162_pp0_iter5_reg <= j_2_reg_162_pp0_iter4_reg;
 j_2_reg_162_pp0_iter6_reg <= j_2_reg_162_pp0_iter5_reg;
 j_2_reg_162_pp0_iter7_reg <= j_2_reg_162_pp0_iter6_reg;
 j_2_reg_162_pp0_iter8_reg <= j_2_reg_162_pp0_iter7_reg;
 j_2_reg_162_pp0_iter9_reg <= j_2_reg_162_pp0_iter8_reg;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
 ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
 ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
 icmp_ln22_reg_172 <= icmp_ln22_fu_100_p2;
 icmp_ln22_reg_172_pp0_iter1_reg <= icmp_ln22_reg_172;
 j_2_reg_162 <= ap_sig_allocacmp_j_2;
 j_2_reg_162_pp0_iter1_reg <= j_2_reg_162;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln22_fu_100_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
 if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter34 == 1'b0) & (ap_enable_reg_pp0_iter33 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0))) begin
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
 ap_sig_allocacmp_j_2 = 30'd1;
 end else begin
 ap_sig_allocacmp_j_2 = j_fu_32;
 end
end
always @ (*) begin
 if (((icmp_ln22_reg_172_pp0_iter33_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
 sum_1_out_ap_vld = 1'b1;
 end else begin
 sum_1_out_ap_vld = 1'b0;
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
assign add_ln19_fu_123_p2 = (j_cast1_fu_114_p1 + sum_fu_36);
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
assign div_udiv_cast_cast_fu_59_p1 = div_udiv_cast;
assign grp_fu_80_p1 = j_cast_fu_76_p1;
assign icmp_ln18_fu_117_p2 = ((grp_fu_80_p2 == 31'd0) ? 1'b1 : 1'b0);
assign icmp_ln22_fu_100_p2 = ((zext_ln5_fu_92_p1 > div_udiv_cast_cast_fu_59_p1) ? 1'b1 : 1'b0);
assign j_3_fu_86_p2 = (j_cast_fu_76_p1 + 31'd1);
assign j_cast1_fu_114_p1 = j_2_reg_162_pp0_iter33_reg;
assign j_cast_fu_76_p1 = ap_sig_allocacmp_j_2;
assign sum_1_out = ((icmp_ln18_fu_117_p2[0:0] == 1'b1) ? add_ln19_fu_123_p2 : sum_fu_36);
assign sum_3_fu_129_p3 = ((icmp_ln18_fu_117_p2[0:0] == 1'b1) ? add_ln19_fu_123_p2 : sum_fu_36);
assign trunc_ln5_fu_96_p1 = j_3_fu_86_p2[29:0];
assign zext_ln5_fu_92_p1 = j_3_fu_86_p2;
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
module entry_point_urem_31ns_30ns_31_35_1_divider
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
 output wire [out_WIDTH-1:0] quot,
 output wire [out_WIDTH-1:0] remd
);
localparam cal_WIDTH = (in0_WIDTH > in1_WIDTH)? in0_WIDTH : in1_WIDTH;
reg [in0_WIDTH-1:0] dividend_tmp[0:in0_WIDTH];
reg [in1_WIDTH-1:0] divisor_tmp[0:in0_WIDTH];
reg [in0_WIDTH-1:0] remd_tmp[0:in0_WIDTH];
wire [in0_WIDTH-1:0] comb_tmp[0:in0_WIDTH-1];
wire [cal_WIDTH:0] cal_tmp[0:in0_WIDTH-1];
assign quot = dividend_tmp[in0_WIDTH];
assign remd = remd_tmp[in0_WIDTH];
always @(posedge clk)
begin
 if (ce) begin
 dividend_tmp[0] <= dividend;
 divisor_tmp[0] <= divisor;
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
 end
 end
 end
endgenerate
endmodule
module entry_point_urem_31ns_30ns_31_35_1
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
entry_point_urem_31ns_30ns_31_35_1_divider #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_urem_31ns_30ns_31_35_1_divider_u (
 .clk ( clk ),
 .reset ( reset ),
 .ce ( ce ),
 .dividend ( dividend_u ),
 .divisor ( divisor_u ),
 .quot ( quot_u ),
 .remd ( remd_u )
);
assign dividend_u = dividend0;
assign divisor_u = divisor0;
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
 quot <= quot_u;
 remd <= remd_u;
 end
end
assign dout = remd;
endmodule
