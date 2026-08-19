module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_idle;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_enable_reg_pp0_iter2;
reg ap_enable_reg_pp0_iter3;
reg ap_enable_reg_pp0_iter4;
reg ap_enable_reg_pp0_iter5;
reg ap_enable_reg_pp0_iter6;
reg ap_enable_reg_pp0_iter7;
reg ap_enable_reg_pp0_iter8;
reg ap_enable_reg_pp0_iter9;
reg ap_idle_pp0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln9_1_fu_89_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
wire ap_block_pp0_stage0_11001;
reg ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg;
reg ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg;
reg ap_condition_exit_pp0_iter0_stage0_pp0_iter5_reg;
reg ap_condition_exit_pp0_iter0_stage0_pp0_iter6_reg;
reg ap_condition_exit_pp0_iter0_stage0_pp0_iter7_reg;
reg ap_condition_exit_pp0_iter0_stage0_pp0_iter8_reg;
reg ap_loop_exit_ready_delayed;
wire [0:0] icmp_ln9_fu_69_p2;
reg [0:0] icmp_ln9_reg_145;
reg [0:0] icmp_ln9_reg_145_pp0_iter1_reg;
reg [0:0] icmp_ln9_reg_145_pp0_iter2_reg;
reg [0:0] icmp_ln9_reg_145_pp0_iter3_reg;
reg [0:0] icmp_ln9_reg_145_pp0_iter4_reg;
reg [0:0] icmp_ln9_reg_145_pp0_iter5_reg;
reg [0:0] icmp_ln9_reg_145_pp0_iter6_reg;
reg [0:0] icmp_ln9_reg_145_pp0_iter7_reg;
reg [0:0] icmp_ln9_1_reg_155;
reg [0:0] icmp_ln9_1_reg_155_pp0_iter1_reg;
reg [0:0] icmp_ln9_1_reg_155_pp0_iter2_reg;
reg [0:0] icmp_ln9_1_reg_155_pp0_iter3_reg;
reg [0:0] icmp_ln9_1_reg_155_pp0_iter4_reg;
reg [0:0] icmp_ln9_1_reg_155_pp0_iter5_reg;
reg [0:0] icmp_ln9_1_reg_155_pp0_iter6_reg;
reg [0:0] icmp_ln9_1_reg_155_pp0_iter7_reg;
wire [31:0] grp_fu_66_p1;
reg [31:0] conv_reg_159;
wire [31:0] grp_fu_61_p2;
reg [31:0] div_reg_164;
reg [31:0] i_fu_36;
wire [31:0] i_3_fu_95_p2;
wire ap_loop_init;
reg [31:0] ap_sig_allocacmp_i_2;
wire ap_block_pp0_stage0;
reg [31:0] sum_fu_40;
wire [31:0] grp_fu_57_p2;
reg [31:0] ap_sig_allocacmp_sum_load;
reg [31:0] ap_sig_allocacmp_sum_load_1;
reg ap_loop_exit_ready_pp0_iter1_reg;
reg ap_loop_exit_ready_pp0_iter2_reg;
reg ap_loop_exit_ready_pp0_iter3_reg;
reg ap_loop_exit_ready_pp0_iter4_reg;
reg ap_loop_exit_ready_pp0_iter5_reg;
reg ap_loop_exit_ready_pp0_iter6_reg;
reg ap_loop_exit_ready_pp0_iter7_reg;
reg ap_loop_exit_ready_pp0_iter8_reg;
wire ap_block_pp0_stage0_01001;
wire [31:0] bitcast_ln14_fu_118_p1;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
reg ap_condition_140;
reg ap_condition_138;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 i_fu_36 = 32'd0;
#0 sum_fu_40 = 32'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_fadd_32ns_32ns_32_2_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_2_full_dsp_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(ap_sig_allocacmp_sum_load),
 .din1(div_reg_164),
 .ce(1'b1),
 .dout(grp_fu_57_p2)
);
entry_point_fdiv_32ns_32ns_32_6_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 6 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fdiv_32ns_32ns_32_6_no_dsp_1_U2(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(32'd1065353216),
 .din1(conv_reg_159),
 .ce(1'b1),
 .dout(grp_fu_61_p2)
);
entry_point_sitofp_32ns_32_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
sitofp_32ns_32_2_no_dsp_1_U3(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(ap_sig_allocacmp_i_2),
 .ce(1'b1),
 .dout(grp_fu_66_p1)
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
 end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter2 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter3 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter4 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter5 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter6 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter7 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter8 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter9 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_condition_140)) begin
 if ((icmp_ln9_1_fu_89_p2 == 1'd0)) begin
 i_fu_36 <= i_3_fu_95_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_36 <= 32'd1;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 if ((1'b1 == ap_condition_138)) begin
 sum_fu_40 <= 32'd0;
 end else if ((ap_enable_reg_pp0_iter9 == 1'b1)) begin
 sum_fu_40 <= grp_fu_57_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
 ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
 ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
 ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
 conv_reg_159 <= grp_fu_66_p1;
 icmp_ln9_1_reg_155 <= icmp_ln9_1_fu_89_p2;
 icmp_ln9_1_reg_155_pp0_iter1_reg <= icmp_ln9_1_reg_155;
 icmp_ln9_reg_145 <= icmp_ln9_fu_69_p2;
 icmp_ln9_reg_145_pp0_iter1_reg <= icmp_ln9_reg_145;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
 ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg;
 ap_condition_exit_pp0_iter0_stage0_pp0_iter5_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg;
 ap_condition_exit_pp0_iter0_stage0_pp0_iter6_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter5_reg;
 ap_condition_exit_pp0_iter0_stage0_pp0_iter7_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter6_reg;
 ap_condition_exit_pp0_iter0_stage0_pp0_iter8_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter7_reg;
 ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
 ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
 ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
 ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
 ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
 ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
 div_reg_164 <= grp_fu_61_p2;
 icmp_ln9_1_reg_155_pp0_iter2_reg <= icmp_ln9_1_reg_155_pp0_iter1_reg;
 icmp_ln9_1_reg_155_pp0_iter3_reg <= icmp_ln9_1_reg_155_pp0_iter2_reg;
 icmp_ln9_1_reg_155_pp0_iter4_reg <= icmp_ln9_1_reg_155_pp0_iter3_reg;
 icmp_ln9_1_reg_155_pp0_iter5_reg <= icmp_ln9_1_reg_155_pp0_iter4_reg;
 icmp_ln9_1_reg_155_pp0_iter6_reg <= icmp_ln9_1_reg_155_pp0_iter5_reg;
 icmp_ln9_1_reg_155_pp0_iter7_reg <= icmp_ln9_1_reg_155_pp0_iter6_reg;
 icmp_ln9_reg_145_pp0_iter2_reg <= icmp_ln9_reg_145_pp0_iter1_reg;
 icmp_ln9_reg_145_pp0_iter3_reg <= icmp_ln9_reg_145_pp0_iter2_reg;
 icmp_ln9_reg_145_pp0_iter4_reg <= icmp_ln9_reg_145_pp0_iter3_reg;
 icmp_ln9_reg_145_pp0_iter5_reg <= icmp_ln9_reg_145_pp0_iter4_reg;
 icmp_ln9_reg_145_pp0_iter6_reg <= icmp_ln9_reg_145_pp0_iter5_reg;
 icmp_ln9_reg_145_pp0_iter7_reg <= icmp_ln9_reg_145_pp0_iter6_reg;
 end
end
always @ (*) begin
 if (((icmp_ln9_1_fu_89_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
 ap_idle_pp0 = 1'b1;
 end else begin
 ap_idle_pp0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter8_reg))) begin
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
 if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 ap_sig_allocacmp_i_2 = 32'd1;
 end else begin
 ap_sig_allocacmp_i_2 = i_fu_36;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
 ap_sig_allocacmp_sum_load = grp_fu_57_p2;
 end else begin
 ap_sig_allocacmp_sum_load = sum_fu_40;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
 ap_sig_allocacmp_sum_load_1 = grp_fu_57_p2;
 end else begin
 ap_sig_allocacmp_sum_load_1 = sum_fu_40;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (icmp_ln9_1_reg_155_pp0_iter7_reg == 1'd1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
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
 ap_condition_138 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1));
end
always @ (*) begin
 ap_condition_140 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign ap_return = 32'd0;
assign bitcast_ln14_fu_118_p1 = ap_sig_allocacmp_sum_load_1;
assign i_3_fu_95_p2 = (ap_sig_allocacmp_i_2 + 32'd1);
assign icmp_ln9_1_fu_89_p2 = (($signed(ap_sig_allocacmp_i_2) > $signed(n)) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_69_p2 = (($signed(n) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign temptemp1 = ((icmp_ln9_reg_145_pp0_iter7_reg[0:0] == 1'b1) ? bitcast_ln14_fu_118_p1 : 32'd0);
endmodule
module entry_point_fadd_32ns_32ns_32_2_full_dsp_1
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
module entry_point_fdiv_32ns_32ns_32_6_no_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 3,
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
wire aclk;
wire aclken;
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
                                                                                                                                                                                                                                                                                                                                        assign aclk = clk;
assign aclken = ce_r;
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
module entry_point_sitofp_32ns_32_2_no_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 2,
 din0_WIDTH = 32,
 dout_WIDTH = 32
)(
 input wire clk,
 input wire reset,
 input wire ce,
 input wire [din0_WIDTH-1:0] din0,
 output wire [dout_WIDTH-1:0] dout
);
wire a_tvalid;
wire [din0_WIDTH-1:0] a_tdata;
wire r_tvalid;
wire [dout_WIDTH-1:0] r_tdata;
reg [din0_WIDTH-1:0] din0_buf1;
reg ce_r;
wire [dout_WIDTH-1:0] dout_i;
reg [dout_WIDTH-1:0] dout_r;
                                                                                                                                                                                                                              assign a_tvalid = 1'b1;
assign a_tdata = din0_buf1;
assign dout_i = r_tdata;
always @(posedge clk) begin
 if (ce) begin
 din0_buf1 <= din0;
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
