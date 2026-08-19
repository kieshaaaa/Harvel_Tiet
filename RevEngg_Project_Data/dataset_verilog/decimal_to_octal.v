module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 decimal,
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
input [31:0] decimal;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_idle;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln9_fu_78_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [31:0] placeValue_fu_40;
wire [31:0] placeValue_1_fu_136_p2;
wire ap_loop_init;
reg signed [31:0] ap_sig_allocacmp_placeValue_load;
reg [31:0] octal_fu_44;
wire [31:0] octal_1_fu_104_p2;
reg [31:0] tempDecimal_1_fu_48;
wire [31:0] tempDecimal_3_fu_120_p1;
reg [31:0] ap_sig_allocacmp_tempDecimal_4;
wire [2:0] empty_fu_90_p1;
wire [2:0] mul_ln10_fu_98_p1;
wire [31:0] mul_ln10_fu_98_p2;
wire [28:0] tempDecimal_2_fu_110_p4;
wire signed [31:0] shl_ln12_fu_124_p0;
wire signed [31:0] shl_ln12_1_fu_130_p0;
wire [31:0] shl_ln12_fu_124_p2;
wire [31:0] shl_ln12_1_fu_130_p2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_start_int;
wire [31:0] mul_ln10_fu_98_p10;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_32s_3ns_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 3 ),
 .dout_WIDTH( 32 ))
mul_32s_3ns_32_1_1_U1(
 .din0(ap_sig_allocacmp_placeValue_load),
 .din1(mul_ln10_fu_98_p1),
 .dout(mul_ln10_fu_98_p2)
);
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
 if ((icmp_ln9_fu_78_p2 == 1'd1)) begin
 placeValue_fu_40 <= placeValue_1_fu_136_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 placeValue_fu_40 <= 32'd1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 if ((icmp_ln9_fu_78_p2 == 1'd1)) begin
 tempDecimal_1_fu_48 <= tempDecimal_3_fu_120_p1;
 end else if ((ap_loop_init == 1'b1)) begin
 tempDecimal_1_fu_48 <= decimal;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln9_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 octal_fu_44 <= octal_1_fu_104_p2;
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
 if (((icmp_ln9_fu_78_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
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
 ap_sig_allocacmp_placeValue_load = 32'd1;
 end else begin
 ap_sig_allocacmp_placeValue_load = placeValue_fu_40;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_tempDecimal_4 = decimal;
 end else begin
 ap_sig_allocacmp_tempDecimal_4 = tempDecimal_1_fu_48;
 end
end
always @ (*) begin
 if (((icmp_ln9_fu_78_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_return = 32'd0;
assign empty_fu_90_p1 = ap_sig_allocacmp_tempDecimal_4[2:0];
assign icmp_ln9_fu_78_p2 = (($signed(ap_sig_allocacmp_tempDecimal_4) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign mul_ln10_fu_98_p1 = mul_ln10_fu_98_p10;
assign mul_ln10_fu_98_p10 = empty_fu_90_p1;
assign octal_1_fu_104_p2 = (mul_ln10_fu_98_p2 + octal_fu_44);
assign placeValue_1_fu_136_p2 = (shl_ln12_fu_124_p2 + shl_ln12_1_fu_130_p2);
assign shl_ln12_1_fu_130_p0 = ap_sig_allocacmp_placeValue_load;
assign shl_ln12_1_fu_130_p2 = shl_ln12_1_fu_130_p0 << 32'd1;
assign shl_ln12_fu_124_p0 = ap_sig_allocacmp_placeValue_load;
assign shl_ln12_fu_124_p2 = shl_ln12_fu_124_p0 << 32'd3;
assign tempDecimal_2_fu_110_p4 = {{ap_sig_allocacmp_tempDecimal_4[31:3]}};
assign tempDecimal_3_fu_120_p1 = tempDecimal_2_fu_110_p4;
assign temptemp1 = octal_fu_44;
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
module entry_point_mul_32s_3ns_32_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed(din0) * $signed({1'b0, din1});
endmodule
