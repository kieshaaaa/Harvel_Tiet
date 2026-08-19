module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_idle;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln8_fu_130_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [3:0] indvars_iv1_fu_40;
wire [3:0] add_ln8_fu_124_p2;
wire ap_loop_init;
reg [3:0] ap_sig_allocacmp_indvars_iv1_load_1;
reg [3:0] ap_sig_allocacmp_indvars_iv1_load;
wire [0:0] icmp_ln11_fu_81_p2;
reg [3:0] a3_fu_44;
wire [3:0] a_fu_87_p2;
reg [3:0] ap_sig_allocacmp_a3_load;
reg [31:0] counter2_fu_48;
wire [31:0] add_ln11_1_fu_110_p2;
reg [31:0] ap_sig_allocacmp_counter2_load;
wire signed [3:0] sext_ln8_fu_99_p0;
wire signed [31:0] sext_ln8_fu_99_p1;
wire [31:0] zext_ln8_fu_77_p1;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 indvars_iv1_fu_40 = 4'd0;
#0 a3_fu_44 = 4'd0;
#0 counter2_fu_48 = 32'd0;
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
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 a3_fu_44 <= a_fu_87_p2;
 end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 if ((icmp_ln11_fu_81_p2 == 1'd0)) begin
 counter2_fu_48 <= add_ln11_1_fu_110_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 counter2_fu_48 <= 32'd1;
 end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 indvars_iv1_fu_40 <= add_ln8_fu_124_p2;
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
 if (((icmp_ln8_fu_130_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_sig_allocacmp_a3_load = 4'd0;
 end else begin
 ap_sig_allocacmp_a3_load = a3_fu_44;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_counter2_load = 32'd1;
 end else begin
 ap_sig_allocacmp_counter2_load = counter2_fu_48;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_indvars_iv1_load = 4'd15;
 end else begin
 ap_sig_allocacmp_indvars_iv1_load = indvars_iv1_fu_40;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_indvars_iv1_load_1 = 4'd15;
 end else begin
 ap_sig_allocacmp_indvars_iv1_load_1 = indvars_iv1_fu_40;
 end
end
always @ (*) begin
 if (((icmp_ln11_fu_81_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
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
assign a_fu_87_p2 = (ap_sig_allocacmp_a3_load + 4'd1);
assign add_ln11_1_fu_110_p2 = (zext_ln8_fu_77_p1 + ap_sig_allocacmp_counter2_load);
assign add_ln8_fu_124_p2 = (ap_sig_allocacmp_indvars_iv1_load + 4'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign ap_return = 32'd0;
assign icmp_ln11_fu_81_p2 = ((ap_sig_allocacmp_a3_load == 4'd0) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_130_p2 = ((ap_sig_allocacmp_a3_load == 4'd8) ? 1'b1 : 1'b0);
assign sext_ln8_fu_99_p0 = ap_sig_allocacmp_indvars_iv1_load_1;
assign sext_ln8_fu_99_p1 = sext_ln8_fu_99_p0;
assign temptemp1 = ($signed(ap_sig_allocacmp_counter2_load) + $signed(sext_ln8_fu_99_p1));
assign zext_ln8_fu_77_p1 = ap_sig_allocacmp_a3_load;
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
