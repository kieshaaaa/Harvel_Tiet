module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 num_i,
 num_o,
 num_o_ap_vld,
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
input [31:0] num_i;
output [31:0] num_o;
output num_o_ap_vld;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] num_o;
reg num_o_ap_vld;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [31:0] num_read_reg_105;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_num;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_num_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_p_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_p_out_ap_vld;
wire signed [31:0] grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_square_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_square_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_ap_start_reg;
reg [3:0] ap_NS_fsm;
wire ap_NS_fsm_state2;
wire ap_CS_fsm_state3;
wire ap_CS_fsm_state4;
wire [0:0] icmp_ln12_fu_73_p2;
wire [31:0] mul_ln14_fu_79_p2;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_7_1 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_ap_ready),
 .num_load(num_read_reg_105),
 .num(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_num),
 .num_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_num_ap_vld),
 .p_out(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_p_out),
 .p_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_p_out_ap_vld),
 .square_out(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_square_out),
 .square_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_square_out_ap_vld)
);
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U5(
 .din0(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_square_out),
 .din1(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_square_out),
 .dout(mul_ln14_fu_79_p2)
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
 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_NS_fsm_state2) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 num_read_reg_105 <= num_i;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_ap_done == 1'b0)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
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
 if ((1'b1 == ap_CS_fsm_state4)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_num_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 num_o = grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_num;
 end else begin
 num_o = num_i;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 num_o_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_num_ap_vld;
 end else begin
 num_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln12_fu_73_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln12_fu_73_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
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
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state4 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_NS_fsm_state2 = ap_NS_fsm[32'd1];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_ap_start_reg;
assign icmp_ln12_fu_73_p2 = ((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_p_out == 32'd0) ? 1'b1 : 1'b0);
assign temptemp1 = mul_ln14_fu_79_p2;
assign temptemp2 = (mul_ln14_fu_79_p2 + grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_58_p_out);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_7_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 num_load,
 num,
 num_ap_vld,
 p_out,
 p_out_ap_vld,
 square_out,
 square_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] num_load;
output [31:0] num;
output num_ap_vld;
output [31:0] p_out;
output p_out_ap_vld;
output [31:0] square_out;
output square_out_ap_vld;
reg ap_idle;
reg num_ap_vld;
reg p_out_ap_vld;
reg square_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln7_fu_93_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [31:0] square_fu_28;
wire [31:0] square_2_fu_99_p2;
wire ap_block_pp0_stage0_11001;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg [31:0] odd_fu_32;
wire [31:0] odd_3_fu_112_p2;
reg [31:0] empty_fu_36;
wire [31:0] sub_ln8_fu_105_p2;
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
 empty_fu_36 <= num_load;
 end else if (((icmp_ln7_fu_93_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 empty_fu_36 <= sub_ln8_fu_105_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 odd_fu_32 <= 32'd1;
 end else if (((icmp_ln7_fu_93_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 odd_fu_32 <= odd_3_fu_112_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 square_fu_28 <= 32'd0;
 end else if (((icmp_ln7_fu_93_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 square_fu_28 <= square_2_fu_99_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln7_fu_93_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln7_fu_93_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 num_ap_vld = 1'b1;
 end else begin
 num_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln7_fu_93_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 p_out_ap_vld = 1'b1;
 end else begin
 p_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln7_fu_93_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 square_out_ap_vld = 1'b1;
 end else begin
 square_out_ap_vld = 1'b0;
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
assign icmp_ln7_fu_93_p2 = (($signed(empty_fu_36) < $signed(odd_fu_32)) ? 1'b1 : 1'b0);
assign num = (empty_fu_36 - odd_fu_32);
assign odd_3_fu_112_p2 = (odd_fu_32 + 32'd2);
assign p_out = empty_fu_36;
assign square_2_fu_99_p2 = (square_fu_28 + 32'd1);
assign square_out = square_fu_28;
assign sub_ln8_fu_105_p2 = (empty_fu_36 - odd_fu_32);
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
module entry_point_mul_32s_32s_32_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed(din0) * $signed(din1);
endmodule
