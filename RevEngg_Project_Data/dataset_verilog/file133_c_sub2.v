module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 num,
 start_r,
 end_r,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 temptemp4,
 temptemp4_ap_vld,
 temptemp5,
 temptemp5_ap_vld,
 temptemp6,
 temptemp6_ap_vld,
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
input [31:0] num;
input [31:0] start_r;
input [31:0] end_r;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] temptemp4;
output temptemp4_ap_vld;
output [31:0] temptemp5;
output temptemp5_ap_vld;
output [31:0] temptemp6;
output temptemp6_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
reg temptemp5_ap_vld;
reg temptemp6_ap_vld;
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [0:0] icmp_ln8_fu_133_p2;
reg [0:0] icmp_ln8_reg_203;
wire [31:0] select_ln19_fu_151_p3;
reg [31:0] select_ln19_reg_213;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_ap_ready;
wire signed [31:0] grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_i_02_phi_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_i_02_phi_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_ap_ready;
wire signed [31:0] grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_i_14_phi_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_i_14_phi_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_ap_start_reg;
wire ap_CS_fsm_state4;
wire ap_CS_fsm_state3;
wire [31:0] mul_ln10_fu_164_p2;
wire [31:0] mul_ln20_fu_174_p2;
wire [0:0] icmp_ln19_fu_139_p2;
wire [0:0] xor_ln19_fu_145_p2;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_9_1 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_ap_ready),
 .i(start_r),
 .end_r_load(end_r),
 .i_02_phi_out(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_i_02_phi_out),
 .i_02_phi_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_i_02_phi_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_19_2 grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_ap_ready),
 .i(start_r),
 .select_ln19(select_ln19_reg_213),
 .i_14_phi_out(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_i_14_phi_out),
 .i_14_phi_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_i_14_phi_out_ap_vld)
);
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U7(
 .din0(num),
 .din1(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_i_02_phi_out),
 .dout(mul_ln10_fu_164_p2)
);
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U8(
 .din0(num),
 .din1(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_i_14_phi_out),
 .dout(mul_ln20_fu_174_p2)
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
 grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (icmp_ln8_fu_133_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (icmp_ln8_fu_133_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln8_reg_203 <= icmp_ln8_fu_133_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln8_fu_133_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 select_ln19_reg_213 <= select_ln19_fu_151_p3;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
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
 if ((1'b1 == ap_CS_fsm_state3)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln8_fu_133_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln8_reg_203 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln8_reg_203 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln8_fu_133_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln8_reg_203 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 temptemp5_ap_vld = 1'b1;
 end else begin
 temptemp5_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln8_reg_203 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 temptemp6_ap_vld = 1'b1;
 end else begin
 temptemp6_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((ap_start == 1'b1) & (icmp_ln8_fu_133_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else if (((ap_start == 1'b1) & (icmp_ln8_fu_133_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 ap_ST_fsm_state4 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
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
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_ap_start_reg;
assign icmp_ln19_fu_139_p2 = (($signed(start_r) < $signed(end_r)) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_133_p2 = (($signed(start_r) > $signed(end_r)) ? 1'b1 : 1'b0);
assign select_ln19_fu_151_p3 = ((xor_ln19_fu_145_p2[0:0] == 1'b1) ? end_r : start_r);
assign temptemp1 = num;
assign temptemp2 = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_116_i_02_phi_out;
assign temptemp3 = mul_ln10_fu_164_p2;
assign temptemp4 = num;
assign temptemp5 = grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_125_i_14_phi_out;
assign temptemp6 = mul_ln20_fu_174_p2;
assign xor_ln19_fu_145_p2 = (icmp_ln19_fu_139_p2 ^ 1'd1);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_19_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 i,
 select_ln19,
 i_14_phi_out,
 i_14_phi_out_ap_vld
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] i;
input [31:0] select_ln19;
output [31:0] i_14_phi_out;
output i_14_phi_out_ap_vld;
reg ap_idle;
reg i_14_phi_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln19_fu_59_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [31:0] i_5_fu_24;
reg [31:0] i_1_fu_28;
wire [31:0] i_7_fu_65_p2;
wire ap_loop_init;
reg [31:0] ap_sig_allocacmp_i_6;
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
 end else if (((ap_start_int == 1'b1) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 if ((icmp_ln19_fu_59_p2 == 1'd0)) begin
 i_1_fu_28 <= i_7_fu_65_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_1_fu_28 <= i;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start_int == 1'b1) & (icmp_ln19_fu_59_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 i_5_fu_24 <= ap_sig_allocacmp_i_6;
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
 if (((ap_start_int == 1'b1) & (icmp_ln19_fu_59_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_i_6 = i;
 end else begin
 ap_sig_allocacmp_i_6 = i_1_fu_28;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln19_fu_59_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 i_14_phi_out_ap_vld = 1'b1;
 end else begin
 i_14_phi_out_ap_vld = 1'b0;
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
assign i_14_phi_out = i_5_fu_24;
assign i_7_fu_65_p2 = ($signed(ap_sig_allocacmp_i_6) + $signed(32'd4294967295));
assign icmp_ln19_fu_59_p2 = (($signed(ap_sig_allocacmp_i_6) < $signed(select_ln19)) ? 1'b1 : 1'b0);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_9_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 i,
 end_r_load,
 i_02_phi_out,
 i_02_phi_out_ap_vld
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] i;
input [31:0] end_r_load;
output [31:0] i_02_phi_out;
output i_02_phi_out_ap_vld;
reg ap_idle;
reg i_02_phi_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln9_fu_59_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [31:0] i_1_fu_24;
reg [31:0] i_2_fu_28;
wire [31:0] i_4_fu_65_p2;
wire ap_loop_init;
reg [31:0] ap_sig_allocacmp_i_3;
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
 end else if (((ap_start_int == 1'b1) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 if ((icmp_ln9_fu_59_p2 == 1'd0)) begin
 i_2_fu_28 <= i_4_fu_65_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_2_fu_28 <= i;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start_int == 1'b1) & (icmp_ln9_fu_59_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 i_1_fu_24 <= ap_sig_allocacmp_i_3;
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
 if (((ap_start_int == 1'b1) & (icmp_ln9_fu_59_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_i_3 = i;
 end else begin
 ap_sig_allocacmp_i_3 = i_2_fu_28;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln9_fu_59_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 i_02_phi_out_ap_vld = 1'b1;
 end else begin
 i_02_phi_out_ap_vld = 1'b0;
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
assign i_02_phi_out = i_1_fu_24;
assign i_4_fu_65_p2 = (ap_sig_allocacmp_i_3 + 32'd1);
assign icmp_ln9_fu_59_p2 = (($signed(ap_sig_allocacmp_i_3) > $signed(end_r_load)) ? 1'b1 : 1'b0);
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
