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
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [4:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [3:0] arr_address0;
reg arr_ce0;
wire [31:0] arr_q0;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_ap_ready;
wire [3:0] grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_arr_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_arr_ce0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_largest_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_largest_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_ap_ready;
wire [3:0] grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_arr_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_arr_ce0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_smallest_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_smallest_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_ap_start_reg;
wire ap_CS_fsm_state3;
wire ap_CS_fsm_state4;
wire ap_CS_fsm_state5;
reg [4:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_ap_start_reg = 1'b0;
end
entry_point_arr_RAM_AUTO_1R1W #(
 .DataWidth( 32 ),
 .AddressRange( 10 ),
 .AddressWidth( 4 ))
arr_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(arr_address0),
 .ce0(arr_ce0),
 .q0(arr_q0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_15_1 grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_ap_ready),
 .arr_address0(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_arr_address0),
 .arr_ce0(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_arr_ce0),
 .arr_q0(arr_q0),
 .largest_out(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_largest_out),
 .largest_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_largest_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_25_1 grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_ap_ready),
 .arr_address0(grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_arr_address0),
 .arr_ce0(grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_arr_ce0),
 .arr_q0(arr_q0),
 .smallest_out(grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_smallest_out),
 .smallest_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_smallest_out_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_ap_start_reg <= 1'b0;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
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
 if ((1'b1 == ap_CS_fsm_state4)) begin
 arr_address0 = grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_arr_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 arr_address0 = grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_arr_address0;
 end else begin
 arr_address0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 arr_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_arr_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 arr_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_arr_ce0;
 end else begin
 arr_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
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
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_ap_start_reg;
assign temptemp1 = grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_54_largest_out;
assign temptemp2 = grp_entry_point_Pipeline_VITIS_LOOP_25_1_fu_61_smallest_out;
endmodule
module entry_point_arr_RAM_AUTO_1R1W (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 32;
parameter AddressWidth = 4;
parameter AddressRange = 10;
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
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_15_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 arr_address0,
 arr_ce0,
 arr_q0,
 largest_out,
 largest_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [3:0] arr_address0;
output arr_ce0;
input [31:0] arr_q0;
output [31:0] largest_out;
output largest_out_ap_vld;
reg ap_idle;
reg arr_ce0;
reg largest_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln15_fu_66_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
wire [63:0] i_cast_fu_72_p1;
wire ap_block_pp0_stage0;
reg [31:0] largest_fu_30;
wire [31:0] largest_1_fu_97_p3;
reg [3:0] i_fu_34;
wire [3:0] add_ln15_fu_77_p2;
wire ap_loop_init;
reg [3:0] ap_sig_allocacmp_i_2;
wire ap_block_pp0_stage0_01001;
wire [0:0] icmp_ln16_fu_91_p2;
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
 if (((icmp_ln15_fu_66_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 i_fu_34 <= add_ln15_fu_77_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_34 <= 4'd1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 largest_fu_30 <= largest_1_fu_97_p3;
 end
end
always @ (*) begin
 if (((icmp_ln15_fu_66_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 ap_sig_allocacmp_i_2 = 4'd1;
 end else begin
 ap_sig_allocacmp_i_2 = i_fu_34;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 arr_ce0 = 1'b1;
 end else begin
 arr_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln15_fu_66_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 largest_out_ap_vld = 1'b1;
 end else begin
 largest_out_ap_vld = 1'b0;
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
assign add_ln15_fu_77_p2 = (ap_sig_allocacmp_i_2 + 4'd1);
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
assign arr_address0 = i_cast_fu_72_p1;
assign i_cast_fu_72_p1 = ap_sig_allocacmp_i_2;
assign icmp_ln15_fu_66_p2 = ((ap_sig_allocacmp_i_2 == 4'd10) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_91_p2 = (($signed(largest_fu_30) < $signed(arr_q0)) ? 1'b1 : 1'b0);
assign largest_1_fu_97_p3 = ((icmp_ln16_fu_91_p2[0:0] == 1'b1) ? arr_q0 : largest_fu_30);
assign largest_out = largest_fu_30;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_25_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 arr_address0,
 arr_ce0,
 arr_q0,
 smallest_out,
 smallest_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [3:0] arr_address0;
output arr_ce0;
input [31:0] arr_q0;
output [31:0] smallest_out;
output smallest_out_ap_vld;
reg ap_idle;
reg arr_ce0;
reg smallest_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln25_fu_66_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
wire [63:0] i_1_cast_fu_72_p1;
wire ap_block_pp0_stage0;
reg [31:0] smallest_fu_30;
wire [31:0] smallest_1_fu_97_p3;
reg [3:0] i_fu_34;
wire [3:0] add_ln25_fu_77_p2;
wire ap_loop_init;
reg [3:0] ap_sig_allocacmp_i_1;
wire ap_block_pp0_stage0_01001;
wire [0:0] icmp_ln26_fu_91_p2;
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
 if (((icmp_ln25_fu_66_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 i_fu_34 <= add_ln25_fu_77_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_34 <= 4'd1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 smallest_fu_30 <= smallest_1_fu_97_p3;
 end
end
always @ (*) begin
 if (((icmp_ln25_fu_66_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 ap_sig_allocacmp_i_1 = 4'd1;
 end else begin
 ap_sig_allocacmp_i_1 = i_fu_34;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 arr_ce0 = 1'b1;
 end else begin
 arr_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln25_fu_66_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 smallest_out_ap_vld = 1'b1;
 end else begin
 smallest_out_ap_vld = 1'b0;
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
assign add_ln25_fu_77_p2 = (ap_sig_allocacmp_i_1 + 4'd1);
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
assign arr_address0 = i_1_cast_fu_72_p1;
assign i_1_cast_fu_72_p1 = ap_sig_allocacmp_i_1;
assign icmp_ln25_fu_66_p2 = ((ap_sig_allocacmp_i_1 == 4'd10) ? 1'b1 : 1'b0);
assign icmp_ln26_fu_91_p2 = (($signed(smallest_fu_30) > $signed(arr_q0)) ? 1'b1 : 1'b0);
assign smallest_1_fu_97_p3 = ((icmp_ln26_fu_91_p2[0:0] == 1'b1) ? arr_q0 : smallest_fu_30);
assign smallest_out = smallest_fu_30;
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
