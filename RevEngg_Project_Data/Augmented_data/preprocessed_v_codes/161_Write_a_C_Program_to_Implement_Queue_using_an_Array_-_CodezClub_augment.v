module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 choice,
 ap_return
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] choice;
output [31:0] ap_return;
reg ap_idle;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln12_fu_70_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [31:0] rear;
reg [31:0] front;
wire [31:0] add_ln43_fu_117_p2;
wire [31:0] choice_read_read_fu_42_p2;
wire [0:0] icmp_ln38_fu_105_p2;
wire [31:0] add_ln53_fu_93_p2;
wire [0:0] or_ln48_fu_87_p2;
wire [0:0] grp_fu_52_p2;
reg [31:0] loop_counter_fu_38;
wire ap_loop_init;
reg [31:0] ap_sig_allocacmp_loop_counter_1;
wire [0:0] icmp_ln48_1_fu_81_p2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
reg ap_condition_141;
reg ap_condition_138;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 rear = 32'd4294967295;
#0 front = 32'd4294967295;
#0 loop_counter_fu_38 = 32'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_flow_control_loop_pipe flow_control_loop_pipe_U(
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
 .ap_done_int(ap_done_int),
 .ap_continue(1'b1)
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_condition_138)) begin
 if ((1'b1 == ap_condition_141)) begin
 front <= 32'd0;
 end else if (((or_ln48_fu_87_p2 == 1'd0) & (choice_read_read_fu_42_p2 == 32'd2))) begin
 front <= add_ln53_fu_93_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 if (((choice_read_read_fu_42_p2 == 32'd4) & (icmp_ln12_fu_70_p2 == 1'd0))) begin
 loop_counter_fu_38[0] <= 1'b0;
 end else if ((ap_loop_init == 1'b1)) begin
 loop_counter_fu_38[0] <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln38_fu_105_p2 == 1'd0) & (choice_read_read_fu_42_p2 == 32'd1) & (icmp_ln12_fu_70_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 rear <= add_ln43_fu_117_p2;
 end
end
always @ (*) begin
 if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln12_fu_70_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_loop_counter_1 = 32'd1;
 end else begin
 ap_sig_allocacmp_loop_counter_1 = loop_counter_fu_38;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln43_fu_117_p2 = (rear + 32'd1);
assign add_ln53_fu_93_p2 = (front + 32'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
always @ (*) begin
 ap_condition_138 = ((icmp_ln12_fu_70_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1));
end
always @ (*) begin
 ap_condition_141 = ((grp_fu_52_p2 == 1'd1) & (icmp_ln38_fu_105_p2 == 1'd0) & (choice_read_read_fu_42_p2 == 32'd1));
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign ap_return = 32'd0;
assign choice_read_read_fu_42_p2 = choice;
assign grp_fu_52_p2 = ((front == 32'd4294967295) ? 1'b1 : 1'b0);
assign icmp_ln12_fu_70_p2 = ((ap_sig_allocacmp_loop_counter_1 == 32'd0) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_105_p2 = ((rear == 32'd49) ? 1'b1 : 1'b0);
assign icmp_ln48_1_fu_81_p2 = (($signed(front) > $signed(rear)) ? 1'b1 : 1'b0);
assign or_ln48_fu_87_p2 = (icmp_ln48_1_fu_81_p2 | grp_fu_52_p2);
always @ (posedge ap_clk) begin
 loop_counter_fu_38[31:1] <= 31'b0000000000000000000000000000000;
end
endmodule
module entry_point_flow_control_loop_pipe(
 ap_clk,
 ap_rst,
 ap_start,
 ap_ready,
 ap_done,
 ap_continue,
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
input ap_continue;
output ap_start_int;
input ap_ready_int;
input ap_done_int;
output ap_continue_int;
output ap_loop_init;
reg ap_loop_init;
input ap_loop_exit_ready;
input ap_loop_exit_done;
initial begin
#0 ap_loop_init = 1'b1;
end
assign ap_start_int = ap_start;
assign ap_continue_int = ap_continue;
assign ap_done = ap_loop_exit_done;
assign ap_ready = ap_loop_exit_ready;
always @ (posedge ap_clk)
begin
 if (ap_rst == 1'b1) begin
 ap_loop_init <= 1'b1;
 end else if(ap_loop_exit_ready == 1'b1) begin
 ap_loop_init <= 1'b1;
 end else if(ap_ready_int == 1'b1) begin
 ap_loop_init <= 1'b0;
 end
end
endmodule
