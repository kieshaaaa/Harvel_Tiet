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
reg [6:0] inputString_address0;
reg inputString_ce0;
reg inputString_we0;
reg [7:0] inputString_d0;
wire [7:0] inputString_q0;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_inputString_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_inputString_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_inputString_we0;
wire [7:0] grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_inputString_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_inputString_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_inputString_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_inputString_we0;
wire [7:0] grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_inputString_d0;
reg grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_start_reg;
reg [3:0] ap_NS_fsm;
wire ap_NS_fsm_state3;
wire ap_CS_fsm_state4;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_start_reg = 1'b0;
end
entry_point_inputString_RAM_AUTO_1R1W #(
 .DataWidth( 8 ),
 .AddressRange( 100 ),
 .AddressWidth( 7 ))
inputString_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(inputString_address0),
 .ce0(inputString_ce0),
 .we0(inputString_we0),
 .d0(inputString_d0),
 .q0(inputString_q0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_22_1 grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_ap_ready),
 .inputString_address0(grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_inputString_address0),
 .inputString_ce0(grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_inputString_ce0),
 .inputString_we0(grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_inputString_we0),
 .inputString_d0(grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_inputString_d0),
 .inputString_q0(inputString_q0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_30_1 grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_ready),
 .inputString_address0(grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_inputString_address0),
 .inputString_ce0(grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_inputString_ce0),
 .inputString_we0(grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_inputString_we0),
 .inputString_d0(grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_inputString_d0),
 .inputString_q0(inputString_q0)
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
 grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_NS_fsm_state3) & (1'b1 == ap_CS_fsm_state2))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_start_reg <= 1'b0;
 end
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 inputString_address0 = grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_inputString_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 inputString_address0 = grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_inputString_address0;
 end else begin
 inputString_address0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 inputString_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_inputString_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 inputString_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_inputString_ce0;
 end else begin
 inputString_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 inputString_d0 = grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_inputString_d0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 inputString_d0 = grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_inputString_d0;
 end else begin
 inputString_d0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 inputString_we0 = grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_inputString_we0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 inputString_we0 = grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_inputString_we0;
 end else begin
 inputString_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_NS_fsm_state3 = ap_NS_fsm[32'd2];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_22_1_fu_50_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_30_1_fu_56_ap_start_reg;
assign temptemp1 = 8'd0;
assign temptemp2 = 8'd0;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_22_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 inputString_address0,
 inputString_ce0,
 inputString_we0,
 inputString_d0,
 inputString_q0
);
parameter ap_ST_fsm_pp0_stage0 = 2'd1;
parameter ap_ST_fsm_pp0_stage1 = 2'd2;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [6:0] inputString_address0;
output inputString_ce0;
output inputString_we0;
output [7:0] inputString_d0;
input [7:0] inputString_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
reg ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln22_fu_54_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_CS_fsm_pp0_stage1;
wire ap_block_pp0_stage1_subdone;
reg ap_enable_reg_pp0_iter0_reg;
reg [63:0] i_2_reg_96;
wire ap_block_pp0_stage1_11001;
reg [6:0] inputString_addr_reg_101;
wire ap_block_pp0_stage1;
reg [63:0] i_fu_28;
wire [63:0] add_ln22_fu_60_p2;
wire ap_block_pp0_stage0_11001;
wire ap_loop_init;
reg inputString_ce0_local;
reg [6:0] inputString_address0_local;
reg inputString_we0_local;
wire [0:0] icmp_ln23_fu_71_p2;
wire [7:0] add_ln24_fu_77_p2;
wire ap_block_pp0_stage0;
wire [7:0] add_ln23_fu_65_p2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [1:0] ap_NS_fsm;
reg ap_idle_pp0_1to1;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_28 = 64'd0;
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
 i_fu_28 <= 64'd0;
 end else if (((icmp_ln22_fu_54_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_fu_28 <= add_ln22_fu_60_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 i_2_reg_96 <= i_fu_28;
 inputString_addr_reg_101 <= i_fu_28;
 end
end
always @ (*) begin
 if (((icmp_ln22_fu_54_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 inputString_address0_local = inputString_addr_reg_101;
 end else if (((ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 inputString_address0_local = i_fu_28;
 end else begin
 inputString_address0_local = 'bx;
 end
end
always @ (*) begin
 if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
 inputString_ce0_local = 1'b1;
 end else begin
 inputString_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln22_fu_54_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln23_fu_71_p2 == 1'd1))) begin
 inputString_we0_local = 1'b1;
 end else begin
 inputString_we0_local = 1'b0;
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
assign add_ln22_fu_60_p2 = (i_2_reg_96 + 64'd1);
assign add_ln23_fu_65_p2 = ($signed(inputString_q0) + $signed(8'd191));
assign add_ln24_fu_77_p2 = (inputString_q0 + 8'd32);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln22_fu_54_p2 = ((inputString_q0 == 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln23_fu_71_p2 = ((add_ln23_fu_65_p2 < 8'd26) ? 1'b1 : 1'b0);
assign inputString_address0 = inputString_address0_local;
assign inputString_ce0 = inputString_ce0_local;
assign inputString_d0 = add_ln24_fu_77_p2;
assign inputString_we0 = inputString_we0_local;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_30_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 inputString_address0,
 inputString_ce0,
 inputString_we0,
 inputString_d0,
 inputString_q0
);
parameter ap_ST_fsm_pp0_stage0 = 2'd1;
parameter ap_ST_fsm_pp0_stage1 = 2'd2;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [6:0] inputString_address0;
output inputString_ce0;
output inputString_we0;
output [7:0] inputString_d0;
input [7:0] inputString_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
reg ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln30_fu_54_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_CS_fsm_pp0_stage1;
wire ap_block_pp0_stage1_subdone;
reg ap_enable_reg_pp0_iter0_reg;
reg [63:0] i_1_reg_96;
wire ap_block_pp0_stage1_11001;
reg [6:0] inputString_addr_reg_101;
wire ap_block_pp0_stage1;
reg [63:0] i_fu_28;
wire [63:0] add_ln30_fu_60_p2;
wire ap_block_pp0_stage0_11001;
wire ap_loop_init;
reg inputString_ce0_local;
reg [6:0] inputString_address0_local;
reg inputString_we0_local;
wire [0:0] icmp_ln31_fu_71_p2;
wire [7:0] add_ln32_fu_77_p2;
wire ap_block_pp0_stage0;
wire [7:0] add_ln31_fu_65_p2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [1:0] ap_NS_fsm;
reg ap_idle_pp0_1to1;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_28 = 64'd0;
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
 i_fu_28 <= 64'd0;
 end else if (((icmp_ln30_fu_54_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_fu_28 <= add_ln30_fu_60_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 i_1_reg_96 <= i_fu_28;
 inputString_addr_reg_101 <= i_fu_28;
 end
end
always @ (*) begin
 if (((icmp_ln30_fu_54_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 inputString_address0_local = inputString_addr_reg_101;
 end else if (((ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 inputString_address0_local = i_fu_28;
 end else begin
 inputString_address0_local = 'bx;
 end
end
always @ (*) begin
 if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
 inputString_ce0_local = 1'b1;
 end else begin
 inputString_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln30_fu_54_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln31_fu_71_p2 == 1'd1))) begin
 inputString_we0_local = 1'b1;
 end else begin
 inputString_we0_local = 1'b0;
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
assign add_ln30_fu_60_p2 = (i_1_reg_96 + 64'd1);
assign add_ln31_fu_65_p2 = ($signed(inputString_q0) + $signed(8'd159));
assign add_ln32_fu_77_p2 = ($signed(inputString_q0) + $signed(8'd224));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln30_fu_54_p2 = ((inputString_q0 == 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_71_p2 = ((add_ln31_fu_65_p2 < 8'd26) ? 1'b1 : 1'b0);
assign inputString_address0 = inputString_address0_local;
assign inputString_ce0 = inputString_ce0_local;
assign inputString_d0 = add_ln32_fu_77_p2;
assign inputString_we0 = inputString_we0_local;
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
module entry_point_inputString_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 reset, clk);
parameter DataWidth = 8;
parameter AddressWidth = 7;
parameter AddressRange = 100;
input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input we0; 
output reg[DataWidth-1:0] q0; 
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
endmodule
