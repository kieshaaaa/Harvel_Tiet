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
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
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
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln9_fu_96_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [0:0] icmp_ln11_fu_108_p2;
reg [0:0] icmp_ln11_reg_186;
wire ap_block_pp0_stage0_11001;
reg [31:0] j_fu_36;
wire [31:0] j_1_fu_114_p2;
wire ap_loop_init;
reg signed [31:0] ap_sig_allocacmp_j_load;
wire ap_block_pp0_stage0;
reg [31:0] cubed_fu_40;
wire [31:0] cubed_3_fu_69_p2;
reg [31:0] ap_sig_allocacmp_cubed_2;
reg [31:0] counter_fu_44;
wire [31:0] counter_2_fu_144_p3;
reg [31:0] ap_sig_allocacmp_counter_load_1;
wire ap_block_pp0_stage0_01001;
wire signed [31:0] mul_ln10_fu_73_p2;
wire signed [31:0] j_1_fu_114_p0;
wire [0:0] xor_ln11_fu_133_p2;
wire [31:0] counter_1_fu_138_p2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
reg ap_condition_64;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 j_fu_36 = 32'd0;
#0 cubed_fu_40 = 32'd0;
#0 counter_fu_44 = 32'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U1(
 .din0(mul_ln10_fu_73_p2),
 .din1(ap_sig_allocacmp_j_load),
 .dout(cubed_3_fu_69_p2)
);
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U2(
 .din0(ap_sig_allocacmp_j_load),
 .din1(ap_sig_allocacmp_j_load),
 .dout(mul_ln10_fu_73_p2)
);
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
 if (((ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 counter_fu_44 <= 32'd0;
 end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
 counter_fu_44 <= counter_2_fu_144_p3;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_condition_64)) begin
 if ((icmp_ln9_fu_96_p2 == 1'd0)) begin
 cubed_fu_40 <= cubed_3_fu_69_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 cubed_fu_40 <= 32'd1;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_condition_64)) begin
 if ((icmp_ln9_fu_96_p2 == 1'd0)) begin
 j_fu_36 <= j_1_fu_114_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 j_fu_36 <= 32'd1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 icmp_ln11_reg_186 <= icmp_ln11_fu_108_p2;
 end
end
always @ (*) begin
 if (((icmp_ln9_fu_96_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if (((ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 ap_sig_allocacmp_counter_load_1 = 32'd0;
 end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
 ap_sig_allocacmp_counter_load_1 = counter_2_fu_144_p3;
 end else begin
 ap_sig_allocacmp_counter_load_1 = counter_fu_44;
 end
 end else begin
 ap_sig_allocacmp_counter_load_1 = counter_fu_44;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_sig_allocacmp_cubed_2 = 32'd1;
 end else begin
 ap_sig_allocacmp_cubed_2 = cubed_fu_40;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_sig_allocacmp_j_load = 32'd1;
 end else begin
 ap_sig_allocacmp_j_load = j_fu_36;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (icmp_ln9_fu_96_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (icmp_ln9_fu_96_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
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
always @ (*) begin
 ap_condition_64 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign ap_return = 32'd0;
assign counter_1_fu_138_p2 = (counter_fu_44 + 32'd1);
assign counter_2_fu_144_p3 = ((xor_ln11_fu_133_p2[0:0] == 1'b1) ? counter_1_fu_138_p2 : counter_fu_44);
assign icmp_ln11_fu_108_p2 = (($signed(limit) < $signed(cubed_3_fu_69_p2)) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_96_p2 = (($signed(ap_sig_allocacmp_cubed_2) > $signed(limit)) ? 1'b1 : 1'b0);
assign j_1_fu_114_p0 = ap_sig_allocacmp_j_load;
assign j_1_fu_114_p2 = ($signed(j_1_fu_114_p0) + $signed(32'd1));
assign temptemp1 = limit;
assign temptemp2 = ap_sig_allocacmp_counter_load_1;
assign xor_ln11_fu_133_p2 = (icmp_ln11_reg_186 ^ 1'd1);
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
 module entry_point_mul_32s_32s_32_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed(din0) * $signed(din1);
assign dout = tmp_product;
endmodule
