module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 size_i,
 size_o,
 size_o_ap_vld,
 arr,
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
input [31:0] size_i;
output [31:0] size_o;
output size_o_ap_vld;
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
reg[31:0] size_o;
reg size_o_ap_vld;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [31:0] grp_load_fu_106_p1;
reg [31:0] i_4_reg_241;
wire ap_CS_fsm_state2;
wire [31:0] grp_fu_109_p2;
reg [31:0] j_reg_249;
wire [0:0] icmp_ln21_fu_136_p2;
wire [31:0] empty_10_fu_160_p3;
reg [31:0] empty_10_reg_254;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_size;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_size_ap_vld;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_isUnique_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_isUnique_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_ap_start_reg;
wire ap_CS_fsm_state3;
wire [0:0] isUnique_loc_load_load_fu_174_p1;
wire ap_CS_fsm_state4;
reg [31:0] empty_fu_46;
wire [31:0] sub_ln43_fu_182_p2;
wire [31:0] xor_ln37_fu_177_p2;
reg [31:0] j_1_fu_50;
wire [31:0] i_fu_188_p2;
reg [31:0] ap_sig_allocacmp_i_2;
wire [0:0] icmp_ln14_fu_116_p2;
wire [0:0] icmp_ln48_fu_168_p2;
wire [0:0] empty_7_fu_142_p2;
wire [31:0] empty_8_fu_148_p2;
wire [31:0] empty_9_fu_154_p2;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_24_3 grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_ap_ready),
 .sext_ln24(empty_fu_46),
 .j_cast(j_reg_249),
 .size(grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_size),
 .size_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_size_ap_vld),
 .isUnique_out(grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_isUnique_out),
 .isUnique_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_isUnique_out_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln21_fu_136_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 empty_fu_46 <= size_i;
 end else if (((isUnique_loc_load_load_fu_174_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 empty_fu_46 <= xor_ln37_fu_177_p2;
 end else if (((isUnique_loc_load_load_fu_174_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 empty_fu_46 <= sub_ln43_fu_182_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 j_1_fu_50 <= 32'd0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 j_1_fu_50 <= grp_fu_109_p2;
 end else if (((isUnique_loc_load_load_fu_174_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 j_1_fu_50 <= i_fu_188_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln21_fu_136_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 empty_10_reg_254 <= empty_10_fu_160_p3;
 j_reg_249 <= grp_fu_109_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 i_4_reg_241 <= grp_load_fu_106_p1;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_ap_done == 1'b0)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
 if (((icmp_ln21_fu_136_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
 if (((icmp_ln21_fu_136_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((isUnique_loc_load_load_fu_174_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_sig_allocacmp_i_2 = i_fu_188_p2;
 end else begin
 ap_sig_allocacmp_i_2 = j_1_fu_50;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 grp_load_fu_106_p1 = ap_sig_allocacmp_i_2;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_load_fu_106_p1 = j_1_fu_50;
 end else begin
 grp_load_fu_106_p1 = 'bx;
 end
end
always @ (*) begin
 if (((isUnique_loc_load_load_fu_174_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 size_o = sub_ln43_fu_182_p2;
 end else if (((grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_size_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 size_o = grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_size;
 end else begin
 size_o = size_i;
 end
end
always @ (*) begin
 if (((isUnique_loc_load_load_fu_174_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 size_o_ap_vld = 1'b1;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 size_o_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_size_ap_vld;
 end else begin
 size_o_ap_vld = 1'b0;
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
 if (((ap_start == 1'b1) & (icmp_ln14_fu_116_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln21_fu_136_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln48_fu_168_p2 == 1'd1))) begin
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
 if (((icmp_ln21_fu_136_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_return = 32'd0;
assign empty_10_fu_160_p3 = ((empty_7_fu_142_p2[0:0] == 1'b1) ? empty_8_fu_148_p2 : empty_9_fu_154_p2);
assign empty_7_fu_142_p2 = (($signed(grp_fu_109_p2) > $signed(empty_fu_46)) ? 1'b1 : 1'b0);
assign empty_8_fu_148_p2 = (empty_fu_46 ^ 32'd4294967295);
assign empty_9_fu_154_p2 = ($signed(32'd4294967294) - $signed(grp_load_fu_106_p1));
assign grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_ap_start_reg;
assign grp_fu_109_p2 = (grp_load_fu_106_p1 + 32'd1);
assign i_fu_188_p2 = ($signed(i_4_reg_241) + $signed(32'd4294967295));
assign icmp_ln14_fu_116_p2 = (($signed(size_i) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_136_p2 = (($signed(grp_load_fu_106_p1) < $signed(empty_fu_46)) ? 1'b1 : 1'b0);
assign icmp_ln48_fu_168_p2 = (($signed(empty_fu_46) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign isUnique_loc_load_load_fu_174_p1 = grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_97_isUnique_out;
assign sub_ln43_fu_182_p2 = ($signed(32'd4294967294) - $signed(empty_10_reg_254));
assign temptemp1 = size_i;
assign temptemp2 = size_i;
assign temptemp3 = arr;
assign xor_ln37_fu_177_p2 = (empty_10_reg_254 ^ 32'd4294967295);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_24_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 sext_ln24,
 j_cast,
 size,
 size_ap_vld,
 isUnique_out,
 isUnique_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] sext_ln24;
input [31:0] j_cast;
output [31:0] size;
output size_ap_vld;
output [0:0] isUnique_out;
output isUnique_out_ap_vld;
reg ap_idle;
reg size_ap_vld;
reg isUnique_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln24_fu_93_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [0:0] isUnique_reg_64;
wire signed [63:0] j_cast_cast_fu_77_p1;
reg signed [63:0] j_cast_cast_reg_127;
wire ap_block_pp0_stage0_11001;
wire ap_loop_init;
reg [63:0] indvars_iv4_fu_34;
wire [63:0] add_ln32_fu_102_p2;
wire signed [63:0] sext_ln24_cast_fu_81_p1;
wire ap_block_pp0_stage0;
wire ap_block_pp0_stage0_01001;
wire [31:0] trunc_ln32_fu_98_p1;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
reg ap_condition_147;
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
 indvars_iv4_fu_34 <= sext_ln24_cast_fu_81_p1;
 end else if (((icmp_ln24_fu_93_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 indvars_iv4_fu_34 <= add_ln32_fu_102_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 isUnique_reg_64 <= 1'd1;
 end else if ((1'b1 == ap_condition_147)) begin
 isUnique_reg_64 <= 1'd0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 j_cast_cast_reg_127 <= j_cast_cast_fu_77_p1;
 end
end
always @ (*) begin
 if (((icmp_ln24_fu_93_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln24_fu_93_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 isUnique_out_ap_vld = 1'b1;
 end else begin
 isUnique_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln24_fu_93_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 size_ap_vld = 1'b1;
 end else begin
 size_ap_vld = 1'b0;
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
assign add_ln32_fu_102_p2 = ($signed(indvars_iv4_fu_34) + $signed(64'd18446744073709551615));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
always @ (*) begin
 ap_condition_147 = ((icmp_ln24_fu_93_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign icmp_ln24_fu_93_p2 = (($signed(indvars_iv4_fu_34) > $signed(j_cast_cast_reg_127)) ? 1'b1 : 1'b0);
assign isUnique_out = isUnique_reg_64;
assign j_cast_cast_fu_77_p1 = $signed(j_cast);
assign sext_ln24_cast_fu_81_p1 = $signed(sext_ln24);
assign size = ($signed(trunc_ln32_fu_98_p1) + $signed(32'd4294967295));
assign trunc_ln32_fu_98_p1 = indvars_iv4_fu_34[31:0];
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
