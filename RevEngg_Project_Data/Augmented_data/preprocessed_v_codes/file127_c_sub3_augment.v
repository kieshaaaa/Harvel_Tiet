module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 number,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 temptemp4,
 temptemp4_ap_vld,
 ap_return
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] number;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] temptemp4;
output temptemp4_ap_vld;
output [31:0] ap_return;
reg ap_idle;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln8_fu_126_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
wire ap_block_pp0_stage0_11001;
reg ap_loop_exit_ready_delayed;
reg [0:0] icmp_ln8_reg_172;
reg [2:0] counter1_fu_50;
wire [2:0] counter_fu_120_p2;
wire ap_loop_init;
reg [2:0] ap_sig_allocacmp_counter1_load;
wire ap_block_pp0_stage0;
reg [31:0] product2_fu_54;
wire [31:0] grp_fu_94_p2;
reg [31:0] ap_sig_allocacmp_product2_load;
reg ap_loop_exit_ready_pp0_iter1_reg;
wire ap_block_pp0_stage0_01001;
wire [31:0] bitcast_ln16_fu_142_p1;
wire [31:0] grp_fu_94_p1;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
reg ap_condition_76;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 counter1_fu_50 = 3'd0;
#0 product2_fu_54 = 32'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_fmul_32ns_32ns_32_2_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(ap_sig_allocacmp_product2_load),
 .din1(grp_fu_94_p1),
 .ce(1'b1),
 .dout(grp_fu_94_p2)
);
entry_point_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(
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
 .ap_continue(1'b1),
 .ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed)
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
 end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_enable_reg_pp0_iter1 <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
 end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_condition_76)) begin
 counter1_fu_50 <= counter_fu_120_p2;
 end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if (((ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 product2_fu_54 <= 32'd1065353216;
 end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
 product2_fu_54 <= grp_fu_94_p2;
 end
end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
 icmp_ln8_reg_172 <= icmp_ln8_fu_126_p2;
 end
end
always @ (*) begin
 if (((icmp_ln8_fu_126_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_loop_exit_ready_delayed = 1'b1;
 end else begin
 ap_loop_exit_ready_delayed = 1'b0;
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
 if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_sig_allocacmp_counter1_load = 3'd1;
 end else begin
 ap_sig_allocacmp_counter1_load = counter1_fu_50;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if (((ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 ap_sig_allocacmp_product2_load = 32'd1065353216;
 end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
 ap_sig_allocacmp_product2_load = grp_fu_94_p2;
 end else begin
 ap_sig_allocacmp_product2_load = product2_fu_54;
 end
 end else begin
 ap_sig_allocacmp_product2_load = product2_fu_54;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (icmp_ln8_reg_172 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (icmp_ln8_reg_172 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (icmp_ln8_reg_172 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (icmp_ln8_reg_172 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
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
 ap_condition_76 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign ap_return = 32'd0;
assign bitcast_ln16_fu_142_p1 = grp_fu_94_p2;
assign counter_fu_120_p2 = (ap_sig_allocacmp_counter1_load + 3'd1);
assign grp_fu_94_p1 = number;
assign icmp_ln8_fu_126_p2 = ((counter_fu_120_p2 == 3'd5) ? 1'b1 : 1'b0);
assign temptemp1 = 32'd4;
assign temptemp2 = 32'd4;
assign temptemp3 = bitcast_ln16_fu_142_p1;
assign temptemp4 = bitcast_ln16_fu_142_p1;
endmodule
module entry_point_flow_control_loop_delay_pipe(
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
 ap_loop_exit_ready_delayed,
 ap_loop_exit_done
);
input ap_clk;
input ap_rst;
input ap_start;
output ap_ready;
output ap_done;
input ap_continue;
output ap_start_int;
reg ap_start_int;
input ap_ready_int;
input ap_done_int;
output ap_continue_int;
output ap_loop_init;
reg ap_loop_init;
input ap_loop_exit_ready;
input ap_loop_exit_ready_delayed;
input ap_loop_exit_done;
reg rewind_ap_ready_reg;
initial begin
#0 ap_loop_init = 1'b1;
#0 rewind_ap_ready_reg = 1'b0;
end
assign ap_continue_int = ap_continue;
assign ap_done = ap_loop_exit_done;
assign ap_ready = ap_loop_exit_ready_delayed;
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
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 rewind_ap_ready_reg <= 1'b0;
 end else if ((ap_ready == 1'b0) & (ap_start == 1'b1) & ap_loop_exit_ready == 1'b1) begin
 rewind_ap_ready_reg <= 1'b1;
 end else if ((ap_ready == 1'b1) & (ap_start == 1'b1)) begin
 rewind_ap_ready_reg <= 1'b0;
 end
end
always @ (*) begin
 if ((rewind_ap_ready_reg == 1'b0) & (ap_start == 1'b1)) begin
 ap_start_int = 1'b1;
 end else begin
 ap_start_int = 1'b0;
 end
end
endmodule
module entry_point_fmul_32ns_32ns_32_2_max_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 2,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 dout_WIDTH = 32
)(
 input wire clk,
 input wire reset,
 input wire ce,
 input wire [din0_WIDTH-1:0] din0,
 input wire [din1_WIDTH-1:0] din1,
 output wire [dout_WIDTH-1:0] dout
);
wire a_tvalid;
wire [31:0] a_tdata;
wire b_tvalid;
wire [31:0] b_tdata;
wire r_tvalid;
wire [31:0] r_tdata;
reg [din0_WIDTH-1:0] din0_buf1;
reg [din1_WIDTH-1:0] din1_buf1;
reg ce_r;
wire [dout_WIDTH-1:0] dout_i;
reg [dout_WIDTH-1:0] dout_r;
                                                                                                                                                                                                                                                                                                    assign a_tvalid = 1'b1;
assign a_tdata = din0_buf1;
assign b_tvalid = 1'b1;
assign b_tdata = din1_buf1;
assign dout_i = r_tdata;
always @(posedge clk) begin
 if (ce) begin
 din0_buf1 <= din0;
 din1_buf1 <= din1;
 end
end
always @ (posedge clk) begin
 ce_r <= ce;
end
always @ (posedge clk) begin
 if (ce_r) begin
 dout_r <= dout_i;
 end
end
assign dout = ce_r?dout_i:dout_r;
endmodule
