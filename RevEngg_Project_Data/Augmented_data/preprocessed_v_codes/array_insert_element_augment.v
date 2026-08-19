module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 numElements_i,
 numElements_o,
 numElements_o_ap_vld,
 position,
 value_r,
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
input [31:0] numElements_i;
output [31:0] numElements_o;
output numElements_o_ap_vld;
input [31:0] position;
input [31:0] value_r;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg numElements_o_ap_vld;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [4:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [31:0] index_reg_134;
reg [31:0] position_read_reg_141;
wire [6:0] trunc_ln12_fu_105_p1;
reg [6:0] trunc_ln12_reg_146;
wire [63:0] zext_ln12_fu_109_p1;
reg [63:0] zext_ln12_reg_151;
wire ap_CS_fsm_state3;
wire [0:0] icmp_ln19_fu_128_p2;
reg [0:0] icmp_ln19_reg_156;
wire ap_CS_fsm_state4;
reg [6:0] numbers_address0;
reg numbers_ce0;
reg numbers_we0;
reg [31:0] numbers_d0;
wire [31:0] numbers_q0;
reg numbers_ce1;
wire [31:0] numbers_q1;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_numbers_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_numbers_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_numbers_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_numbers_d0;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_numbers_address1;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_numbers_ce1;
reg grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_ap_start_reg;
wire ap_CS_fsm_state2;
wire numbers_we0_out;
wire [63:0] zext_ln16_fu_117_p1;
wire [31:0] add_ln17_fu_122_p2;
wire ap_CS_fsm_state5;
reg numbers_we0_local;
reg numbers_ce0_local;
reg [6:0] numbers_address0_local;
wire [6:0] add_ln16_fu_112_p2;
reg [4:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_ap_start_reg = 1'b0;
end
entry_point_numbers_RAM_AUTO_1R1W #(
 .DataWidth( 32 ),
 .AddressRange( 100 ),
 .AddressWidth( 7 ))
numbers_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(numbers_address0),
 .ce0(numbers_ce0),
 .we0(numbers_we0),
 .d0(numbers_d0),
 .q0(numbers_q0),
 .address1(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_numbers_address1),
 .ce1(numbers_ce1),
 .q1(numbers_q1)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_12_1 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_ap_ready),
 .index(index_reg_134),
 .position_load(position_read_reg_141),
 .numbers_address0(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_numbers_address0),
 .numbers_ce0(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_numbers_ce0),
 .numbers_we0(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_numbers_we0),
 .numbers_d0(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_numbers_d0),
 .numbers_address1(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_numbers_address1),
 .numbers_ce1(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_numbers_ce1),
 .numbers_q1(numbers_q1)
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
 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 icmp_ln19_reg_156 <= icmp_ln19_fu_128_p2;
 zext_ln12_reg_151[31 : 0] <= zext_ln12_fu_109_p1[31 : 0];
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 index_reg_134 <= numElements_i;
 position_read_reg_141 <= position;
 trunc_ln12_reg_146 <= trunc_ln12_fu_105_p1;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
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
 if ((1'b1 == ap_CS_fsm_state5)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 numElements_o_ap_vld = 1'b1;
 end else begin
 numElements_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 numbers_address0 = grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_numbers_address0;
 end else begin
 numbers_address0 = numbers_address0_local;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 numbers_address0_local = zext_ln12_reg_151;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 numbers_address0_local = zext_ln16_fu_117_p1;
 end else begin
 numbers_address0_local = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 numbers_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_numbers_ce0;
 end else begin
 numbers_ce0 = numbers_ce0_local;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
 numbers_ce0_local = 1'b1;
 end else begin
 numbers_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 numbers_ce1 = grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_numbers_ce1;
 end else begin
 numbers_ce1 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 numbers_d0 = grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_numbers_d0;
 end else begin
 numbers_d0 = value_r;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 numbers_we0 = grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_numbers_we0;
 end else begin
 numbers_we0 = (numbers_we0_out | 1'b0);
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 numbers_we0_local = 1'b1;
 end else begin
 numbers_we0_local = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln19_reg_156 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((icmp_ln19_fu_128_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state4 : begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln16_fu_112_p2 = ($signed(trunc_ln12_reg_146) + $signed(7'd127));
assign add_ln17_fu_122_p2 = (index_reg_134 + 32'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_95_ap_start_reg;
assign icmp_ln19_fu_128_p2 = (($signed(add_ln17_fu_122_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign numElements_o = add_ln17_fu_122_p2;
assign numbers_we0_out = numbers_we0_local;
assign temptemp1 = numbers_q0;
assign trunc_ln12_fu_105_p1 = position[6:0];
assign zext_ln12_fu_109_p1 = index_reg_134;
assign zext_ln16_fu_117_p1 = add_ln16_fu_112_p2;
always @ (posedge ap_clk) begin
 zext_ln12_reg_151[63:32] <= 32'b00000000000000000000000000000000;
end
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_12_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 index,
 position_load,
 numbers_address0,
 numbers_ce0,
 numbers_we0,
 numbers_d0,
 numbers_address1,
 numbers_ce1,
 numbers_q1
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] index;
input [31:0] position_load;
output [6:0] numbers_address0;
output numbers_ce0;
output numbers_we0;
output [31:0] numbers_d0;
output [6:0] numbers_address1;
output numbers_ce1;
input [31:0] numbers_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln12_fu_74_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [31:0] index_2_reg_107;
wire ap_block_pp0_stage0_11001;
wire [63:0] zext_ln13_fu_86_p1;
wire ap_block_pp0_stage0;
wire [63:0] zext_ln12_fu_96_p1;
reg [31:0] index_1_fu_24;
wire [31:0] add_ln13_fu_80_p2;
wire ap_loop_init;
reg [31:0] ap_sig_allocacmp_index_2;
reg numbers_ce1_local;
reg numbers_we0_local;
reg numbers_ce0_local;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 index_1_fu_24 = 32'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(ap_start),
 .ap_ready(ap_ready_sig),
 .ap_done(ap_done_sig),
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_enable_reg_pp0_iter1 <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if (((icmp_ln12_fu_74_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 index_1_fu_24 <= add_ln13_fu_80_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 index_1_fu_24 <= index;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 index_2_reg_107 <= ap_sig_allocacmp_index_2;
 end
end
always @ (*) begin
 if (((icmp_ln12_fu_74_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
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
 if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_sig_allocacmp_index_2 = index;
 end else begin
 ap_sig_allocacmp_index_2 = index_1_fu_24;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 numbers_ce0_local = 1'b1;
 end else begin
 numbers_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 numbers_ce1_local = 1'b1;
 end else begin
 numbers_ce1_local = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 numbers_we0_local = 1'b1;
 end else begin
 numbers_we0_local = 1'b0;
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
assign add_ln13_fu_80_p2 = ($signed(ap_sig_allocacmp_index_2) + $signed(32'd4294967295));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln12_fu_74_p2 = (($signed(ap_sig_allocacmp_index_2) < $signed(position_load)) ? 1'b1 : 1'b0);
assign numbers_address0 = zext_ln12_fu_96_p1;
assign numbers_address1 = zext_ln13_fu_86_p1;
assign numbers_ce0 = numbers_ce0_local;
assign numbers_ce1 = numbers_ce1_local;
assign numbers_d0 = numbers_q1;
assign numbers_we0 = numbers_we0_local;
assign zext_ln12_fu_96_p1 = index_2_reg_107;
assign zext_ln13_fu_86_p1 = add_ln13_fu_80_p2;
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
module entry_point_numbers_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 address1, ce1,
 q1, 
 reset, clk);
parameter DataWidth = 32;
parameter AddressWidth = 7;
parameter AddressRange = 100;
input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input we0; 
output reg[DataWidth-1:0] q0; 
input[AddressWidth-1:0] address1;
input ce1;
output reg[DataWidth-1:0] q1; 
input reset;
input clk;
(* ram_style = "auto" *)reg [DataWidth-1:0] ram[0:AddressRange-1];
always @(posedge clk) 
begin 
 if (ce0) begin
 if (we0) 
 ram[address0] <= d0; 
 q0 <= ram[address0];
 end
end 
always @(posedge clk) 
begin 
 if (ce1) begin
 q1 <= ram[address1];
 end
end 
endmodule
