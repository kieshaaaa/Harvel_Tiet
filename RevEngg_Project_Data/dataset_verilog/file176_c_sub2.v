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
output [7:0] temptemp1;
output temptemp1_ap_vld;
output [7:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [0:0] icmp_ln26_fu_90_p2;
reg [0:0] icmp_ln26_reg_108;
wire ap_CS_fsm_state3;
reg [4:0] str2_address0;
reg str2_ce0;
wire [7:0] str2_q0;
reg [4:0] str1_address0;
reg str1_ce0;
wire [7:0] str1_q0;
wire grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_ap_ready;
wire [4:0] grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_str1_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_str1_ce0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_length1_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_length1_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_ap_ready;
wire [4:0] grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_str2_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_str2_ce0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_length2_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_length2_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_ap_ready;
wire [4:0] grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_str1_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_str1_ce0;
wire [4:0] grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_str2_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_str2_ce0;
reg grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_ap_start_reg;
reg grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_ap_start_reg;
wire ap_CS_fsm_state4;
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
#0 grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_ap_start_reg = 1'b0;
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
entry_point_entry_point_Pipeline_VITIS_LOOP_20_1 grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_ap_ready),
 .str1_address0(grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_str1_address0),
 .str1_ce0(grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_str1_ce0),
 .str1_q0(str1_q0),
 .length1_out(grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_length1_out),
 .length1_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_length1_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_23_2 grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_ap_ready),
 .str2_address0(grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_str2_address0),
 .str2_ce0(grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_str2_ce0),
 .str2_q0(str2_q0),
 .length2_out(grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_length2_out),
 .length2_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_length2_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_30_3 grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_ap_ready),
 .str1_address0(grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_str1_address0),
 .str1_ce0(grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_str1_ce0),
 .str1_q0(str1_q0),
 .str2_address0(grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_str2_address0),
 .str2_ce0(grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_str2_ce0),
 .str2_q0(str2_q0)
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
 grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln26_fu_90_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 icmp_ln26_reg_108 <= icmp_ln26_fu_90_p2;
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
 if (((icmp_ln26_reg_108 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 str1_address0 = grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_str1_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 str1_address0 = grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_str1_address0;
 end else begin
 str1_address0 = 'bx;
 end
end
always @ (*) begin
 if (((icmp_ln26_reg_108 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 str1_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_str1_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 str1_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_str1_ce0;
 end else begin
 str1_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln26_reg_108 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 str2_address0 = grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_str2_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 str2_address0 = grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_str2_address0;
 end else begin
 str2_address0 = 'bx;
 end
end
always @ (*) begin
 if (((icmp_ln26_reg_108 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 str2_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_str2_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 str2_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_str2_ce0;
 end else begin
 str2_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
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
 ap_block_state2_on_subcall_done = ((grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_ap_done == 1'b0) | (grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_ap_done == 1'b0));
end
always @ (*) begin
 ap_block_state4_on_subcall_done = ((grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_ap_done == 1'b0) & (icmp_ln26_reg_108 == 1'd1));
end
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_78_ap_start_reg;
assign icmp_ln26_fu_90_p2 = ((grp_entry_point_Pipeline_VITIS_LOOP_20_1_fu_64_length1_out == grp_entry_point_Pipeline_VITIS_LOOP_23_2_fu_71_length2_out) ? 1'b1 : 1'b0);
assign temptemp1 = 8'd0;
assign temptemp2 = 8'd0;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_20_1 (
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
wire [0:0] icmp_ln20_fu_63_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_CS_fsm_pp0_stage1;
wire ap_block_state2_pp0_stage1_iter0;
wire ap_block_pp0_stage1_subdone;
reg [63:0] length1_1_reg_86;
wire ap_block_pp0_stage1_11001;
wire [31:0] empty_fu_59_p1;
reg [31:0] empty_reg_91;
reg ap_enable_reg_pp0_iter0_reg;
wire ap_block_pp0_stage1;
reg [63:0] length1_fu_26;
wire [63:0] add_ln21_fu_69_p2;
wire ap_block_pp0_stage0_11001;
wire ap_loop_init;
wire ap_block_pp0_stage0_01001;
wire ap_block_pp0_stage0;
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
 length1_fu_26 <= 64'd0;
 end else if (((icmp_ln20_fu_63_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 length1_fu_26 <= add_ln21_fu_69_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 empty_reg_91 <= empty_fu_59_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 length1_1_reg_86 <= length1_fu_26;
 end
end
always @ (*) begin
 if (((icmp_ln20_fu_63_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln20_fu_63_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign add_ln21_fu_69_p2 = (length1_1_reg_86 + 64'd1);
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
assign empty_fu_59_p1 = length1_fu_26[31:0];
assign icmp_ln20_fu_63_p2 = ((str1_q0 == 8'd0) ? 1'b1 : 1'b0);
assign length1_out = empty_reg_91;
assign str1_address0 = length1_fu_26;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_23_2 (
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
wire [0:0] icmp_ln23_fu_63_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_CS_fsm_pp0_stage1;
wire ap_block_state2_pp0_stage1_iter0;
wire ap_block_pp0_stage1_subdone;
reg [63:0] length2_1_reg_86;
wire ap_block_pp0_stage1_11001;
wire [31:0] empty_fu_59_p1;
reg [31:0] empty_reg_91;
reg ap_enable_reg_pp0_iter0_reg;
wire ap_block_pp0_stage1;
reg [63:0] length2_fu_26;
wire [63:0] add_ln24_fu_69_p2;
wire ap_block_pp0_stage0_11001;
wire ap_loop_init;
wire ap_block_pp0_stage0_01001;
wire ap_block_pp0_stage0;
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
 length2_fu_26 <= 64'd0;
 end else if (((icmp_ln23_fu_63_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 length2_fu_26 <= add_ln24_fu_69_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 empty_reg_91 <= empty_fu_59_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 length2_1_reg_86 <= length2_fu_26;
 end
end
always @ (*) begin
 if (((icmp_ln23_fu_63_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln23_fu_63_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign add_ln24_fu_69_p2 = (length2_1_reg_86 + 64'd1);
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
assign empty_fu_59_p1 = length2_fu_26[31:0];
assign icmp_ln23_fu_63_p2 = ((str2_q0 == 8'd0) ? 1'b1 : 1'b0);
assign length2_out = empty_reg_91;
assign str2_address0 = length2_fu_26;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_30_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 str1_address0,
 str1_ce0,
 str1_q0,
 str2_address0,
 str2_ce0,
 str2_q0
);
parameter ap_ST_fsm_pp0_stage0 = 3'd1;
parameter ap_ST_fsm_pp0_stage1 = 3'd2;
parameter ap_ST_fsm_pp0_stage2 = 3'd4;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [4:0] str1_address0;
output str1_ce0;
input [7:0] str1_q0;
output [4:0] str2_address0;
output str2_ce0;
input [7:0] str2_q0;
reg ap_idle;
reg str1_ce0;
reg str2_ce0;
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
reg ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state4_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] and_ln31_fu_85_p2;
reg [0:0] icmp_ln30_reg_118;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_CS_fsm_pp0_stage2;
wire ap_block_state3_pp0_stage2_iter0;
wire ap_block_pp0_stage2_subdone;
reg [63:0] i_1_reg_102;
wire ap_CS_fsm_pp0_stage1;
wire ap_block_state2_pp0_stage1_iter0;
wire ap_block_pp0_stage1_11001;
reg [7:0] str1_load_reg_113;
wire ap_block_pp0_stage2_11001;
wire [0:0] icmp_ln30_fu_63_p2;
wire [63:0] add_ln35_fu_69_p2;
reg [63:0] add_ln35_reg_122;
reg ap_enable_reg_pp0_iter0_reg;
wire ap_block_pp0_stage1;
wire ap_block_pp0_stage2;
reg [63:0] i_fu_24;
wire ap_block_pp0_stage0_11001;
wire ap_loop_init;
wire ap_block_pp0_stage0;
wire [0:0] icmp_ln31_1_fu_74_p2;
wire [0:0] icmp_ln31_fu_80_p2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [2:0] ap_NS_fsm;
reg ap_idle_pp0_1to1;
wire ap_block_pp0_stage1_subdone;
wire ap_enable_pp0;
wire ap_start_int;
reg ap_condition_198;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
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
 end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
 ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_fu_24 <= 64'd0;
 end else if ((1'b1 == ap_condition_198)) begin
 i_fu_24 <= add_ln35_reg_122;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
 add_ln35_reg_122 <= add_ln35_fu_69_p2;
 icmp_ln30_reg_118 <= icmp_ln30_fu_63_p2;
 str1_load_reg_113 <= str1_q0;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 i_1_reg_102 <= i_fu_24;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln30_reg_118 == 1'd1) | (1'd0 == and_ln31_fu_85_p2)))) begin
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
 if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
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
 if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
 ap_NS_fsm = ap_ST_fsm_pp0_stage2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
 end
 end
 ap_ST_fsm_pp0_stage2 : begin
 if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage2;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln35_fu_69_p2 = (i_1_reg_102 + 64'd1);
assign and_ln31_fu_85_p2 = (icmp_ln31_fu_80_p2 & icmp_ln31_1_fu_74_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
always @ (*) begin
 ap_condition_198 = ((1'd1 == and_ln31_fu_85_p2) & (icmp_ln30_reg_118 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign icmp_ln30_fu_63_p2 = ((str1_q0 == 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln31_1_fu_74_p2 = ((str2_q0 != 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_80_p2 = ((str1_load_reg_113 == str2_q0) ? 1'b1 : 1'b0);
assign str1_address0 = i_fu_24;
assign str2_address0 = i_1_reg_102;
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
