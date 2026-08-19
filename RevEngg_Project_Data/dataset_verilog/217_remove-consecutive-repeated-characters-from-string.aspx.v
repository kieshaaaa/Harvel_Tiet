module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 str_i,
 str_o,
 str_o_ap_vld,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 5'd1;
parameter ap_ST_fsm_state2 = 5'd2;
parameter ap_ST_fsm_state3 = 5'd4;
parameter ap_ST_fsm_state4 = 5'd8;
parameter ap_ST_fsm_state5 = 5'd16;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [7:0] str_i;
output [7:0] str_o;
output str_o_ap_vld;
output [7:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] str_o;
reg str_o_ap_vld;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [4:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [0:0] icmp_ln10_fu_77_p2;
reg [0:0] icmp_ln10_reg_152;
wire signed [63:0] sext_ln12_fu_92_p1;
reg signed [63:0] sext_ln12_reg_157;
wire ap_CS_fsm_state3;
wire [62:0] select_ln16_fu_125_p3;
reg [62:0] select_ln16_reg_166;
wire ap_CS_fsm_state4;
wire [0:0] icmp_ln12_fu_104_p2;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_len_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_len_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_ap_ready;
wire [7:0] grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_str;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_str_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_ap_start_reg;
wire ap_CS_fsm_state2;
reg [31:0] len_loc_fu_46;
reg grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_ap_start_reg;
wire ap_CS_fsm_state5;
reg [63:0] len1_fu_42;
wire [63:0] add_ln18_fu_110_p2;
wire [63:0] sub_ln12_fu_99_p2;
wire [0:0] icmp_ln16_fu_120_p2;
wire [62:0] trunc_ln12_fu_116_p1;
reg [4:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
reg ap_ST_fsm_state5_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_10_1 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_ap_ready),
 .icmp_ln10(icmp_ln10_reg_152),
 .len_out(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_len_out),
 .len_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_len_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_16_3 grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_ap_ready),
 .select_ln16(select_ln16_reg_166),
 .str(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_str),
 .str_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_str_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln12_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 len1_fu_42 <= 64'd0;
 end else if (((icmp_ln12_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 len1_fu_42 <= add_ln18_fu_110_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln10_reg_152 <= icmp_ln10_fu_77_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_len_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 len_loc_fu_46 <= grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_len_out;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln12_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 select_ln16_reg_166 <= select_ln16_fu_125_p3;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 sext_ln12_reg_157 <= sext_ln12_fu_92_p1;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_ap_done == 1'b0)) begin
 ap_ST_fsm_state5_blk = 1'b1;
 end else begin
 ap_ST_fsm_state5_blk = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln12_fu_104_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_done = 1'b1;
 end else begin
 ap_done = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln12_fu_104_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_str_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
 str_o = grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_str;
 end else begin
 str_o = str_i;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 str_o_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_str_ap_vld;
 end else begin
 str_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln12_fu_104_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
 if (((icmp_ln12_fu_104_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end
 end
 ap_ST_fsm_state5 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln18_fu_110_p2 = (len1_fu_42 + 64'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_64_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_70_ap_start_reg;
assign icmp_ln10_fu_77_p2 = ((str_i == 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln12_fu_104_p2 = (($signed(sub_ln12_fu_99_p2) > $signed(64'd0)) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_120_p2 = ((sext_ln12_reg_157 != len1_fu_42) ? 1'b1 : 1'b0);
assign select_ln16_fu_125_p3 = ((icmp_ln16_fu_120_p2[0:0] == 1'b1) ? trunc_ln12_fu_116_p1 : 63'd1);
assign sext_ln12_fu_92_p1 = $signed(len_loc_fu_46);
assign sub_ln12_fu_99_p2 = ($signed(sext_ln12_reg_157) - $signed(len1_fu_42));
assign temptemp1 = 8'd0;
assign trunc_ln12_fu_116_p1 = sub_ln12_fu_99_p2[62:0];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_10_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 icmp_ln10,
 len_out,
 len_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [0:0] icmp_ln10;
output [31:0] len_out;
output len_out_ap_vld;
reg ap_idle;
reg len_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln10_read_read_fu_30_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [0:0] icmp_ln10_read_reg_74;
wire ap_block_pp0_stage0_11001;
reg [63:0] len_fu_26;
wire [63:0] add_ln10_fu_56_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
wire ap_block_pp0_stage0_01001;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg ap_loop_exit_ready_pp0_iter1_reg;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
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
 end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_enable_reg_pp0_iter1 <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
 end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 len_fu_26 <= 64'd0;
 end else if (((icmp_ln10_read_reg_74 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 len_fu_26 <= add_ln10_fu_56_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln10_read_read_fu_30_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln10_read_reg_74 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 len_out_ap_vld = 1'b1;
 end else begin
 len_out_ap_vld = 1'b0;
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
assign add_ln10_fu_56_p2 = (len_fu_26 + 64'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign icmp_ln10_read_read_fu_30_p2 = icmp_ln10;
assign icmp_ln10_read_reg_74 = icmp_ln10;
assign len_out = len_fu_26[31:0];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_16_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 select_ln16,
 str,
 str_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [62:0] select_ln16;
output [7:0] str;
output str_ap_vld;
reg ap_idle;
reg str_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln16_fu_62_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg [62:0] j_fu_36;
wire [62:0] add_ln17_fu_67_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
wire ap_block_pp0_stage0_01001;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
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
 j_fu_36 <= 63'd0;
 end else if (((icmp_ln16_fu_62_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 j_fu_36 <= add_ln17_fu_67_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln16_fu_62_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln16_fu_62_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 str_ap_vld = 1'b1;
 end else begin
 str_ap_vld = 1'b0;
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
assign add_ln17_fu_67_p2 = (j_fu_36 + 63'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign icmp_ln16_fu_62_p2 = ((j_fu_36 == select_ln16) ? 1'b1 : 1'b0);
assign str = 8'd0;
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
