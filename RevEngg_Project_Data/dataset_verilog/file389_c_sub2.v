module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 limit,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] limit;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg ap_idle;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln9_fu_101_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [30:0] i_fu_46;
wire [30:0] i_2_fu_107_p2;
wire ap_loop_init;
reg [30:0] ap_sig_allocacmp_i_1;
reg [31:0] first_1_fu_50;
wire [31:0] second_fu_135_p2;
reg [31:0] ap_sig_allocacmp_first_1_load;
wire [0:0] icmp_ln10_fu_123_p2;
reg [31:0] first_fu_54;
reg [31:0] ap_sig_allocacmp_first_load;
wire [31:0] i_cast_fu_96_p1;
wire [29:0] tmp_fu_113_p4;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end
entry_point_flow_control_loop_pipe flow_control_loop_pipe_U(
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 if (((icmp_ln10_fu_123_p2 == 1'd0) & (icmp_ln9_fu_101_p2 == 1'd1))) begin
 first_1_fu_50 <= second_fu_135_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 first_1_fu_50 <= 32'd1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 if (((icmp_ln10_fu_123_p2 == 1'd0) & (icmp_ln9_fu_101_p2 == 1'd1))) begin
 first_fu_54 <= ap_sig_allocacmp_first_1_load;
 end else if ((ap_loop_init == 1'b1)) begin
 first_fu_54 <= 32'd0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 if ((icmp_ln9_fu_101_p2 == 1'd1)) begin
 i_fu_46 <= i_2_fu_107_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_46 <= 31'd0;
 end
 end
end
always @ (*) begin
 if ((ap_start_int == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln9_fu_101_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
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
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_first_1_load = 32'd1;
 end else begin
 ap_sig_allocacmp_first_1_load = first_1_fu_50;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_first_load = 32'd0;
 end else begin
 ap_sig_allocacmp_first_load = first_fu_54;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_i_1 = 31'd0;
 end else begin
 ap_sig_allocacmp_i_1 = i_fu_46;
 end
end
always @ (*) begin
 if (((icmp_ln10_fu_123_p2 == 1'd1) & (icmp_ln9_fu_101_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln10_fu_123_p2 == 1'd0) & (icmp_ln9_fu_101_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_return = 32'd0;
assign i_2_fu_107_p2 = (ap_sig_allocacmp_i_1 + 31'd1);
assign i_cast_fu_96_p1 = ap_sig_allocacmp_i_1;
assign icmp_ln10_fu_123_p2 = ((tmp_fu_113_p4 == 30'd0) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_101_p2 = (($signed(i_cast_fu_96_p1) < $signed(limit)) ? 1'b1 : 1'b0);
assign second_fu_135_p2 = (ap_sig_allocacmp_first_1_load + ap_sig_allocacmp_first_load);
assign temptemp1 = i_cast_fu_96_p1;
assign temptemp2 = (ap_sig_allocacmp_first_1_load + ap_sig_allocacmp_first_load);
assign tmp_fu_113_p4 = {{ap_sig_allocacmp_i_1[30:1]}};
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
