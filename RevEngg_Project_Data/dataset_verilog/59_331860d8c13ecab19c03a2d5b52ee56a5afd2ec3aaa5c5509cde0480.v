module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 N,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 14'd1;
parameter ap_ST_fsm_state2 = 14'd2;
parameter ap_ST_fsm_state3 = 14'd4;
parameter ap_ST_fsm_state4 = 14'd8;
parameter ap_ST_fsm_state5 = 14'd16;
parameter ap_ST_fsm_state6 = 14'd32;
parameter ap_ST_fsm_state7 = 14'd64;
parameter ap_ST_fsm_state8 = 14'd128;
parameter ap_ST_fsm_state9 = 14'd256;
parameter ap_ST_fsm_state10 = 14'd512;
parameter ap_ST_fsm_state11 = 14'd1024;
parameter ap_ST_fsm_state12 = 14'd2048;
parameter ap_ST_fsm_state13 = 14'd4096;
parameter ap_ST_fsm_state14 = 14'd8192;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] N;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [13:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] add_ln17_fu_109_p2;
reg [31:0] add_ln17_reg_181;
wire [0:0] icmp_ln17_fu_103_p2;
reg [31:0] i_3_reg_186;
wire ap_CS_fsm_state2;
wire [31:0] bitcast_ln20_fu_145_p1;
wire [0:0] icmp_ln17_1_fu_129_p2;
wire [31:0] grp_fu_96_p1;
reg [31:0] conv_reg_203;
wire ap_CS_fsm_state5;
wire [31:0] grp_fu_93_p1;
reg [31:0] conv1_reg_208;
wire [31:0] grp_fu_89_p2;
reg [31:0] div_reg_213;
wire ap_CS_fsm_state11;
wire ap_CS_fsm_state12;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_ap_ready;
wire [63:0] grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_fact_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_fact_out_ap_vld;
reg [31:0] sum_0_lcssa_reg_67;
reg grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_ap_start_reg;
wire ap_CS_fsm_state3;
wire ap_CS_fsm_state4;
reg [31:0] sum_fu_46;
wire [31:0] grp_fu_85_p2;
wire ap_CS_fsm_state13;
reg [31:0] i_fu_50;
wire [31:0] i_4_fu_134_p2;
wire ap_CS_fsm_state14;
wire ap_CS_fsm_state6;
reg [13:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ST_fsm_state6_blk;
wire ap_ST_fsm_state7_blk;
wire ap_ST_fsm_state8_blk;
wire ap_ST_fsm_state9_blk;
wire ap_ST_fsm_state10_blk;
wire ap_ST_fsm_state11_blk;
wire ap_ST_fsm_state12_blk;
wire ap_ST_fsm_state13_blk;
wire ap_ST_fsm_state14_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_7_1 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_ap_ready),
 .zext_ln17(i_3_reg_186),
 .fact_out(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_fact_out),
 .fact_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_fact_out_ap_vld)
);
entry_point_fadd_32ns_32ns_32_2_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_2_full_dsp_1_U5(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(sum_fu_46),
 .din1(div_reg_213),
 .ce(1'b1),
 .dout(grp_fu_85_p2)
);
entry_point_fdiv_32ns_32ns_32_6_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 6 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fdiv_32ns_32ns_32_6_no_dsp_1_U6(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(conv_reg_203),
 .din1(conv1_reg_208),
 .ce(1'b1),
 .dout(grp_fu_89_p2)
);
entry_point_uitofp_64ns_32_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
uitofp_64ns_32_2_no_dsp_1_U7(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_fact_out),
 .ce(1'b1),
 .dout(grp_fu_93_p1)
);
entry_point_sitofp_32ns_32_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
sitofp_32ns_32_2_no_dsp_1_U8(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(i_3_reg_186),
 .ce(1'b1),
 .dout(grp_fu_96_p1)
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
 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln17_1_fu_129_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln17_fu_103_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 i_fu_50 <= 32'd1;
 end else if (((icmp_ln17_1_fu_129_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 i_fu_50 <= i_4_fu_134_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln17_fu_103_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 sum_0_lcssa_reg_67 <= 32'd0;
 end else if (((icmp_ln17_1_fu_129_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 sum_0_lcssa_reg_67 <= bitcast_ln20_fu_145_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln17_fu_103_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 sum_fu_46 <= 32'd0;
 end else if ((1'b1 == ap_CS_fsm_state13)) begin
 sum_fu_46 <= grp_fu_85_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln17_fu_103_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 add_ln17_reg_181 <= add_ln17_fu_109_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 conv1_reg_208 <= grp_fu_93_p1;
 conv_reg_203 <= grp_fu_96_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state11)) begin
 div_reg_213 <= grp_fu_89_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 i_3_reg_186 <= i_fu_50;
 end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
 if ((ap_start == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_ap_done == 1'b0)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
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
 if ((1'b1 == ap_CS_fsm_state14)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((icmp_ln17_fu_103_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else if (((icmp_ln17_fu_103_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state14;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((icmp_ln17_1_fu_129_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state14;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state4 : begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 ap_ST_fsm_state6 : begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end
 ap_ST_fsm_state7 : begin
 ap_NS_fsm = ap_ST_fsm_state8;
 end
 ap_ST_fsm_state8 : begin
 ap_NS_fsm = ap_ST_fsm_state9;
 end
 ap_ST_fsm_state9 : begin
 ap_NS_fsm = ap_ST_fsm_state10;
 end
 ap_ST_fsm_state10 : begin
 ap_NS_fsm = ap_ST_fsm_state11;
 end
 ap_ST_fsm_state11 : begin
 ap_NS_fsm = ap_ST_fsm_state12;
 end
 ap_ST_fsm_state12 : begin
 ap_NS_fsm = ap_ST_fsm_state13;
 end
 ap_ST_fsm_state13 : begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 ap_ST_fsm_state14 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln17_fu_109_p2 = (N + 32'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_return = 32'd0;
assign bitcast_ln20_fu_145_p1 = sum_fu_46;
assign grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_79_ap_start_reg;
assign i_4_fu_134_p2 = (i_fu_50 + 32'd1);
assign icmp_ln17_1_fu_129_p2 = ((i_fu_50 == add_ln17_reg_181) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_103_p2 = (($signed(N) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign temptemp1 = sum_0_lcssa_reg_67;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_7_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 zext_ln17,
 fact_out,
 fact_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] zext_ln17;
output [63:0] fact_out;
output fact_out_ap_vld;
reg ap_idle;
reg fact_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln7_fu_66_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg signed [63:0] fact_fu_28;
wire [63:0] fact_1_fu_83_p2;
wire ap_block_pp0_stage0_11001;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg [32:0] i_fu_32;
wire [32:0] add_ln7_fu_89_p2;
wire [32:0] zext_ln17_cast_fu_49_p1;
wire ap_block_pp0_stage0_01001;
wire signed [32:0] icmp_ln7_fu_66_p0;
wire signed [32:0] i_1_cast_cast_fu_75_p0;
wire signed [62:0] i_1_cast_cast_fu_75_p1;
wire [62:0] fact_1_fu_83_p0;
wire signed [32:0] add_ln7_fu_89_p0;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire [63:0] fact_1_fu_83_p00;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_63ns_64s_64_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 63 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
mul_63ns_64s_64_1_1_U1(
 .din0(fact_1_fu_83_p0),
 .din1(fact_fu_28),
 .dout(fact_1_fu_83_p2)
);
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
 fact_fu_28 <= 64'd1;
 end else if (((icmp_ln7_fu_66_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 fact_fu_28 <= fact_1_fu_83_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_fu_32 <= zext_ln17_cast_fu_49_p1;
 end else if (((icmp_ln7_fu_66_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_fu_32 <= add_ln7_fu_89_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln7_fu_66_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln7_fu_66_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 fact_out_ap_vld = 1'b1;
 end else begin
 fact_out_ap_vld = 1'b0;
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
assign add_ln7_fu_89_p0 = i_fu_32;
assign add_ln7_fu_89_p2 = ($signed(add_ln7_fu_89_p0) + $signed(33'd8589934591));
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
assign fact_1_fu_83_p0 = fact_1_fu_83_p00;
assign fact_1_fu_83_p00 = $unsigned(i_1_cast_cast_fu_75_p1);
assign fact_out = fact_fu_28;
assign i_1_cast_cast_fu_75_p0 = i_fu_32;
assign i_1_cast_cast_fu_75_p1 = i_1_cast_cast_fu_75_p0;
assign icmp_ln7_fu_66_p0 = i_fu_32;
assign icmp_ln7_fu_66_p2 = ((icmp_ln7_fu_66_p0 == 33'd0) ? 1'b1 : 1'b0);
assign zext_ln17_cast_fu_49_p1 = zext_ln17;
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
module entry_point_mul_63ns_64s_64_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed({1'b0, din0}) * $signed(din1);
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
module entry_point_uitofp_64ns_32_2_no_dsp_1
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
