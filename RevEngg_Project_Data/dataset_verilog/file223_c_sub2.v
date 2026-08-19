module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
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
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [0:0] icmp_ln13_fu_59_p2;
reg [0:0] icmp_ln13_reg_88;
wire ap_CS_fsm_state3;
wire [0:0] icmp_ln17_fu_65_p2;
reg [0:0] icmp_ln17_reg_92;
wire [30:0] trunc_ln17_fu_71_p1;
reg [30:0] trunc_ln17_reg_96;
reg [4:0] str2_address0;
reg str2_ce0;
wire [7:0] str2_q0;
reg [4:0] str1_address0;
reg str1_ce0;
wire [7:0] str1_q0;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_ap_ready;
wire [4:0] grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_str1_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_str1_ce0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_length1_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_length1_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_ap_ready;
wire [4:0] grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_str2_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_str2_ce0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_length2_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_length2_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_ap_ready;
wire [4:0] grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_str1_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_str1_ce0;
wire [4:0] grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_str2_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_str2_ce0;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_ap_return;
reg grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_ap_start_reg;
reg grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_ap_start_reg;
wire ap_CS_fsm_state4;
reg ap_predicate_op23_call_state4;
reg ap_block_state4_on_subcall_done;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_block_state2_on_subcall_done;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_ap_start_reg = 1'b0;
end
entry_point_str2_RAM_AUTO_1R1W #(
 .DataWidth( 8 ),
 .AddressRange( 20 ),
 .AddressWidth( 5 ))
str2_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(str2_address0),
 .ce0(str2_ce0),
 .q0(str2_q0)
);
entry_point_str2_RAM_AUTO_1R1W #(
 .DataWidth( 8 ),
 .AddressRange( 20 ),
 .AddressWidth( 5 ))
str1_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(str1_address0),
 .ce0(str1_ce0),
 .q0(str1_q0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_11_1 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_ap_ready),
 .str1_address0(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_str1_address0),
 .str1_ce0(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_str1_ce0),
 .str1_q0(str1_q0),
 .length1_out(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_length1_out),
 .length1_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_length1_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_12_2 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_ap_ready),
 .str2_address0(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_str2_address0),
 .str2_ce0(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_str2_ce0),
 .str2_q0(str2_q0),
 .length2_out(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_length2_out),
 .length2_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_length2_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_17_3 grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_ap_ready),
 .trunc_ln(trunc_ln17_reg_96),
 .str1_address0(grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_str1_address0),
 .str1_ce0(grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_str1_ce0),
 .str1_q0(str1_q0),
 .str2_address0(grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_str2_address0),
 .str2_ce0(grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_str2_ce0),
 .str2_q0(str2_q0),
 .ap_return(grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_ap_return)
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
 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln17_fu_65_p2 == 1'd1) & (icmp_ln13_fu_59_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 icmp_ln13_reg_88 <= icmp_ln13_fu_59_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln13_fu_59_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 icmp_ln17_reg_92 <= icmp_ln17_fu_65_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln17_fu_65_p2 == 1'd1) & (icmp_ln13_fu_59_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 trunc_ln17_reg_96 <= trunc_ln17_fu_71_p1;
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
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_block_state4_on_subcall_done)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state4) & (1'b0 == ap_block_state4_on_subcall_done))) begin
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
 if (((1'b1 == ap_CS_fsm_state4) & (1'b0 == ap_block_state4_on_subcall_done))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln17_reg_92 == 1'd1) & (icmp_ln13_reg_88 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 str1_address0 = grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_str1_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 str1_address0 = grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_str1_address0;
 end else begin
 str1_address0 = 'bx;
 end
end
always @ (*) begin
 if (((icmp_ln17_reg_92 == 1'd1) & (icmp_ln13_reg_88 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 str1_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_str1_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 str1_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_str1_ce0;
 end else begin
 str1_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln17_reg_92 == 1'd1) & (icmp_ln13_reg_88 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 str2_address0 = grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_str2_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 str2_address0 = grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_str2_address0;
 end else begin
 str2_address0 = 'bx;
 end
end
always @ (*) begin
 if (((icmp_ln17_reg_92 == 1'd1) & (icmp_ln13_reg_88 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 str2_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_str2_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 str2_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_str2_ce0;
 end else begin
 str2_ce0 = 1'b0;
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
 if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
 if (((1'b1 == ap_CS_fsm_state4) & (1'b0 == ap_block_state4_on_subcall_done))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
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
always @ (*) begin
 ap_block_state2_on_subcall_done = ((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_ap_done == 1'b0) | (grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_ap_done == 1'b0));
end
always @ (*) begin
 ap_block_state4_on_subcall_done = ((grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_ap_done == 1'b0) & (ap_predicate_op23_call_state4 == 1'b1));
end
always @ (*) begin
 ap_predicate_op23_call_state4 = ((icmp_ln17_reg_92 == 1'd1) & (icmp_ln13_reg_88 == 1'd1));
end
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_17_3_fu_46_ap_start_reg;
assign icmp_ln13_fu_59_p2 = ((grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_length1_out == grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_39_length2_out) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_65_p2 = (($signed(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_length1_out) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign trunc_ln17_fu_71_p1 = grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_32_length1_out[30:0];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_11_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 str1_address0,
 str1_ce0,
 str1_q0,
 length1_out,
 length1_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 2'd1;
parameter ap_ST_fsm_pp0_stage1 = 2'd2;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [4:0] str1_address0;
output str1_ce0;
input [7:0] str1_q0;
output [31:0] length1_out;
output length1_out_ap_vld;
reg ap_idle;
reg str1_ce0;
reg length1_out_ap_vld;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
reg ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state3_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln11_fu_68_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_CS_fsm_pp0_stage1;
wire ap_block_state2_pp0_stage1_iter0;
wire ap_block_pp0_stage1_subdone;
reg [63:0] i_3_reg_117;
wire ap_block_pp0_stage1_11001;
reg ap_enable_reg_pp0_iter0_reg;
wire ap_block_pp0_stage1;
reg [31:0] length1_fu_26;
wire [31:0] length1_2_fu_82_p2;
wire ap_block_pp0_stage0_11001;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg [63:0] i_fu_30;
wire [63:0] add_ln11_fu_74_p2;
wire ap_block_pp0_stage0_01001;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [1:0] ap_NS_fsm;
reg ap_idle_pp0_1to1;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
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
 ap_enable_reg_pp0_iter0_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
 ap_enable_reg_pp0_iter0_reg <= 1'b0;
 end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 ap_enable_reg_pp0_iter0_reg <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_fu_30 <= 64'd0;
 end else if (((icmp_ln11_fu_68_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_fu_30 <= add_ln11_fu_74_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 length1_fu_26 <= 32'd0;
 end else if (((icmp_ln11_fu_68_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 length1_fu_26 <= length1_2_fu_82_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 i_3_reg_117 <= i_fu_30;
 end
end
always @ (*) begin
 if (((icmp_ln11_fu_68_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 ap_enable_reg_pp0_iter0 = ap_start_int;
 end else begin
 ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
 if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
 ap_idle_pp0_1to1 = 1'b1;
 end else begin
 ap_idle_pp0_1to1 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln11_fu_68_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 length1_out_ap_vld = 1'b1;
 end else begin
 length1_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 str1_ce0 = 1'b1;
 end else begin
 str1_ce0 = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_pp0_stage0 : begin
 if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end
 end
 ap_ST_fsm_pp0_stage1 : begin
 if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln11_fu_74_p2 = (i_3_reg_117 + 64'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign icmp_ln11_fu_68_p2 = ((str1_q0 == 8'd0) ? 1'b1 : 1'b0);
assign length1_2_fu_82_p2 = (length1_fu_26 + 32'd1);
assign length1_out = length1_fu_26;
assign str1_address0 = i_fu_30;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_12_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 str2_address0,
 str2_ce0,
 str2_q0,
 length2_out,
 length2_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 2'd1;
parameter ap_ST_fsm_pp0_stage1 = 2'd2;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [4:0] str2_address0;
output str2_ce0;
input [7:0] str2_q0;
output [31:0] length2_out;
output length2_out_ap_vld;
reg ap_idle;
reg str2_ce0;
reg length2_out_ap_vld;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
reg ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state3_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln12_fu_68_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_CS_fsm_pp0_stage1;
wire ap_block_state2_pp0_stage1_iter0;
wire ap_block_pp0_stage1_subdone;
reg [63:0] i_reg_117;
wire ap_block_pp0_stage1_11001;
reg ap_enable_reg_pp0_iter0_reg;
wire ap_block_pp0_stage1;
reg [31:0] length2_fu_26;
wire [31:0] length2_2_fu_82_p2;
wire ap_block_pp0_stage0_11001;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg [63:0] i_1_fu_30;
wire [63:0] add_ln12_fu_74_p2;
wire ap_block_pp0_stage0_01001;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [1:0] ap_NS_fsm;
reg ap_idle_pp0_1to1;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
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
 ap_enable_reg_pp0_iter0_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
 ap_enable_reg_pp0_iter0_reg <= 1'b0;
 end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 ap_enable_reg_pp0_iter0_reg <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_1_fu_30 <= 64'd0;
 end else if (((icmp_ln12_fu_68_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_1_fu_30 <= add_ln12_fu_74_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 length2_fu_26 <= 32'd0;
 end else if (((icmp_ln12_fu_68_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 length2_fu_26 <= length2_2_fu_82_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 i_reg_117 <= i_1_fu_30;
 end
end
always @ (*) begin
 if (((icmp_ln12_fu_68_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 ap_enable_reg_pp0_iter0 = ap_start_int;
 end else begin
 ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
 if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
 ap_idle_pp0_1to1 = 1'b1;
 end else begin
 ap_idle_pp0_1to1 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln12_fu_68_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 length2_out_ap_vld = 1'b1;
 end else begin
 length2_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 str2_ce0 = 1'b1;
 end else begin
 str2_ce0 = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_pp0_stage0 : begin
 if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end
 end
 ap_ST_fsm_pp0_stage1 : begin
 if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln12_fu_74_p2 = (i_reg_117 + 64'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign icmp_ln12_fu_68_p2 = ((str2_q0 == 8'd0) ? 1'b1 : 1'b0);
assign length2_2_fu_82_p2 = (length2_fu_26 + 32'd1);
assign length2_out = length2_fu_26;
assign str2_address0 = i_1_fu_30;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_17_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 trunc_ln,
 str1_address0,
 str1_ce0,
 str1_q0,
 str2_address0,
 str2_ce0,
 str2_q0,
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
input [30:0] trunc_ln;
output [4:0] str1_address0;
output str1_ce0;
input [7:0] str1_q0;
output [4:0] str2_address0;
output str2_ce0;
input [7:0] str2_q0;
output [0:0] ap_return;
reg ap_idle;
reg str1_ce0;
reg str2_ce0;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire ap_CS_fsm_state2;
wire ap_block_state2_pp0_stage1_iter0;
wire [0:0] icmp_ln18_fu_106_p2;
reg [0:0] icmp_ln17_reg_123;
reg ap_condition_exit_pp0_iter0_stage1;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [0:0] merge_reg_68;
wire [0:0] icmp_ln17_fu_88_p2;
reg ap_block_state1_pp0_stage0_iter0;
wire [30:0] add_ln17_fu_94_p2;
reg [30:0] add_ln17_reg_127;
reg [0:0] ap_phi_mux_merge_phi_fu_72_p4;
wire [63:0] i_4_cast_fu_100_p1;
reg [30:0] i_fu_32;
wire ap_loop_init;
reg [30:0] ap_sig_allocacmp_i_1;
reg [0:0] ap_return_preg;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [1:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
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
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_return_preg <= 1'd0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln17_reg_123 == 1'd0) | (icmp_ln18_fu_106_p2 == 1'd0)))) begin
 ap_return_preg <= ap_phi_mux_merge_phi_fu_72_p4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 i_fu_32 <= 31'd0;
 end else if (((icmp_ln17_reg_123 == 1'd1) & (icmp_ln18_fu_106_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 i_fu_32 <= add_ln17_reg_127;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln17_reg_123 == 1'd1) & (icmp_ln18_fu_106_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 merge_reg_68 <= 1'd0;
 end else if (((icmp_ln17_fu_88_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 merge_reg_68 <= 1'd1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 add_ln17_reg_127 <= add_ln17_fu_94_p2;
 icmp_ln17_reg_123 <= icmp_ln17_fu_88_p2;
 end
end
always @ (*) begin
 if ((ap_start_int == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln17_reg_123 == 1'd0) | (icmp_ln18_fu_106_p2 == 1'd0)))) begin
 ap_condition_exit_pp0_iter0_stage1 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage1 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
 if (((icmp_ln17_reg_123 == 1'd1) & (icmp_ln18_fu_106_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_phi_mux_merge_phi_fu_72_p4 = 1'd0;
 end else begin
 ap_phi_mux_merge_phi_fu_72_p4 = merge_reg_68;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln17_reg_123 == 1'd0) | (icmp_ln18_fu_106_p2 == 1'd0)))) begin
 ap_return = ap_phi_mux_merge_phi_fu_72_p4;
 end else begin
 ap_return = ap_return_preg;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_i_1 = 31'd0;
 end else begin
 ap_sig_allocacmp_i_1 = i_fu_32;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 str1_ce0 = 1'b1;
 end else begin
 str1_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 str2_ce0 = 1'b1;
 end else begin
 str2_ce0 = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln17_fu_94_p2 = (ap_sig_allocacmp_i_1 + 31'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign i_4_cast_fu_100_p1 = ap_sig_allocacmp_i_1;
assign icmp_ln17_fu_88_p2 = ((ap_sig_allocacmp_i_1 < trunc_ln) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_106_p2 = ((str1_q0 == str2_q0) ? 1'b1 : 1'b0);
assign str1_address0 = i_4_cast_fu_100_p1;
assign str2_address0 = i_4_cast_fu_100_p1;
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
module entry_point_str2_RAM_AUTO_1R1W (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 8;
parameter AddressWidth = 5;
parameter AddressRange = 20;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h0;
 rom0[1]=8'h0;
 rom0[2]=8'h0;
 rom0[3]=8'h0;
 rom0[4]=8'h0;
 rom0[5]=8'h0;
 rom0[6]=8'h0;
 rom0[7]=8'h0;
 rom0[8]=8'h0;
 rom0[9]=8'h0;
 rom0[10]=8'h0;
 rom0[11]=8'h0;
 rom0[12]=8'h0;
 rom0[13]=8'h0;
 rom0[14]=8'h0;
 rom0[15]=8'h0;
 rom0[16]=8'h0;
 rom0[17]=8'h0;
 rom0[18]=8'h0;
 rom0[19]=8'h0;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
