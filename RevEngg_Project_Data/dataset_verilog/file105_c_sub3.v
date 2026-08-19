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
input [31:0] n;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [0:0] icmp_ln9_fu_98_p2;
reg [0:0] icmp_ln9_reg_206;
reg [31:0] i_2_reg_224;
wire ap_CS_fsm_state2;
wire [0:0] icmp_ln23_fu_166_p2;
reg [0:0] icmp_ln23_reg_237;
wire [0:0] icmp_ln10_fu_141_p2;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_ready;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_return;
reg [31:0] count_1_lcssa_reg_78;
reg grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_start_reg;
wire ap_CS_fsm_state3;
reg [31:0] i_fu_50;
wire [31:0] i_3_fu_146_p2;
reg [31:0] count_1_fu_54;
wire [31:0] count_2_fu_177_p3;
wire [31:0] zext_ln6_fu_120_p1;
wire ap_CS_fsm_state4;
wire [30:0] trunc_ln9_fu_94_p1;
wire [30:0] add_ln9_fu_104_p2;
wire [29:0] count_fu_110_p4;
wire [30:0] tmp_fu_157_p4;
wire [31:0] count_6_fu_172_p2;
wire [31:0] zext_ln23_fu_189_p1;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_12_2 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_ready),
 .i(i_2_reg_224),
 .ap_return(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_return)
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
 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln10_fu_141_p2 == 1'd0) & (icmp_ln9_reg_206 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (icmp_ln9_fu_98_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 count_1_fu_54 <= zext_ln6_fu_120_p1;
 end else if (((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 count_1_fu_54 <= count_2_fu_177_p3;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln10_fu_141_p2 == 1'd1) & (icmp_ln9_reg_206 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 count_1_lcssa_reg_78 <= count_1_fu_54;
 end else if (((ap_start == 1'b1) & (icmp_ln9_fu_98_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 count_1_lcssa_reg_78 <= 32'd0;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (icmp_ln9_fu_98_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 i_fu_50 <= 32'd3;
 end else if (((icmp_ln10_fu_141_p2 == 1'd0) & (icmp_ln9_reg_206 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 i_fu_50 <= i_3_fu_146_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln9_reg_206 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 i_2_reg_224 <= i_fu_50;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln10_fu_141_p2 == 1'd1) | (icmp_ln9_reg_206 == 1'd0)))) begin
 icmp_ln23_reg_237 <= icmp_ln23_fu_166_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln9_reg_206 <= icmp_ln9_fu_98_p2;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_done == 1'b0)) begin
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
 if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln10_fu_141_p2 == 1'd1) | (icmp_ln9_reg_206 == 1'd0)))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
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
 if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln10_fu_141_p2 == 1'd1) | (icmp_ln9_reg_206 == 1'd0)))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
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
assign add_ln9_fu_104_p2 = ($signed(trunc_ln9_fu_94_p1) + $signed(31'd2147483646));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_return = 32'd0;
assign count_2_fu_177_p3 = ((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_return[0:0] == 1'b1) ? count_1_fu_54 : count_6_fu_172_p2);
assign count_6_fu_172_p2 = (count_1_fu_54 + 32'd1);
assign count_fu_110_p4 = {{add_ln9_fu_104_p2[30:1]}};
assign grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_89_ap_start_reg;
assign i_3_fu_146_p2 = (i_fu_50 + 32'd2);
assign icmp_ln10_fu_141_p2 = (($signed(i_fu_50) > $signed(n)) ? 1'b1 : 1'b0);
assign icmp_ln23_fu_166_p2 = (($signed(tmp_fu_157_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_98_p2 = (($signed(n) > $signed(32'd2)) ? 1'b1 : 1'b0);
assign temptemp1 = n;
assign temptemp2 = (count_1_lcssa_reg_78 + zext_ln23_fu_189_p1);
assign tmp_fu_157_p4 = {{n[31:1]}};
assign trunc_ln9_fu_94_p1 = n[30:0];
assign zext_ln23_fu_189_p1 = icmp_ln23_reg_237;
assign zext_ln6_fu_120_p1 = count_fu_110_p4;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_12_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 i,
 ap_return
);
parameter ap_ST_fsm_state1 = 36'd1;
parameter ap_ST_fsm_state2 = 36'd2;
parameter ap_ST_fsm_state3 = 36'd4;
parameter ap_ST_fsm_state4 = 36'd8;
parameter ap_ST_fsm_state5 = 36'd16;
parameter ap_ST_fsm_state6 = 36'd32;
parameter ap_ST_fsm_state7 = 36'd64;
parameter ap_ST_fsm_state8 = 36'd128;
parameter ap_ST_fsm_state9 = 36'd256;
parameter ap_ST_fsm_state10 = 36'd512;
parameter ap_ST_fsm_state11 = 36'd1024;
parameter ap_ST_fsm_state12 = 36'd2048;
parameter ap_ST_fsm_state13 = 36'd4096;
parameter ap_ST_fsm_state14 = 36'd8192;
parameter ap_ST_fsm_state15 = 36'd16384;
parameter ap_ST_fsm_state16 = 36'd32768;
parameter ap_ST_fsm_state17 = 36'd65536;
parameter ap_ST_fsm_state18 = 36'd131072;
parameter ap_ST_fsm_state19 = 36'd262144;
parameter ap_ST_fsm_state20 = 36'd524288;
parameter ap_ST_fsm_state21 = 36'd1048576;
parameter ap_ST_fsm_state22 = 36'd2097152;
parameter ap_ST_fsm_state23 = 36'd4194304;
parameter ap_ST_fsm_state24 = 36'd8388608;
parameter ap_ST_fsm_state25 = 36'd16777216;
parameter ap_ST_fsm_state26 = 36'd33554432;
parameter ap_ST_fsm_state27 = 36'd67108864;
parameter ap_ST_fsm_state28 = 36'd134217728;
parameter ap_ST_fsm_state29 = 36'd268435456;
parameter ap_ST_fsm_state30 = 36'd536870912;
parameter ap_ST_fsm_state31 = 36'd1073741824;
parameter ap_ST_fsm_state32 = 36'd2147483648;
parameter ap_ST_fsm_state33 = 36'd4294967296;
parameter ap_ST_fsm_state34 = 36'd8589934592;
parameter ap_ST_fsm_state35 = 36'd17179869184;
parameter ap_ST_fsm_state36 = 36'd34359738368;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] i;
output [0:0] ap_return;
reg ap_idle;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg [35:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire ap_CS_fsm_state36;
wire ap_block_state36_pp0_stage35_iter0;
wire [0:0] icmp_ln13_fu_74_p2;
reg [0:0] icmp_ln12_reg_108;
reg ap_condition_exit_pp0_iter0_stage35;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [0:0] merge_reg_36;
reg ap_block_state1_pp0_stage0_iter0;
reg signed [31:0] j_2_reg_102;
wire [0:0] icmp_ln12_fu_62_p2;
reg [0:0] ap_phi_mux_merge_phi_fu_40_p4;
reg [31:0] j_fu_26;
wire [31:0] j_3_fu_80_p2;
wire ap_loop_init;
reg signed [31:0] ap_sig_allocacmp_j_2;
wire [31:0] mul_ln12_fu_56_p2;
wire [31:0] grp_fu_68_p2;
reg [0:0] ap_return_preg;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [35:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_block_state2_pp0_stage1_iter0;
wire ap_ST_fsm_state2_blk;
wire ap_block_state3_pp0_stage2_iter0;
wire ap_ST_fsm_state3_blk;
wire ap_block_state4_pp0_stage3_iter0;
wire ap_ST_fsm_state4_blk;
wire ap_block_state5_pp0_stage4_iter0;
wire ap_ST_fsm_state5_blk;
wire ap_block_state6_pp0_stage5_iter0;
wire ap_ST_fsm_state6_blk;
wire ap_block_state7_pp0_stage6_iter0;
wire ap_ST_fsm_state7_blk;
wire ap_block_state8_pp0_stage7_iter0;
wire ap_ST_fsm_state8_blk;
wire ap_block_state9_pp0_stage8_iter0;
wire ap_ST_fsm_state9_blk;
wire ap_block_state10_pp0_stage9_iter0;
wire ap_ST_fsm_state10_blk;
wire ap_block_state11_pp0_stage10_iter0;
wire ap_ST_fsm_state11_blk;
wire ap_block_state12_pp0_stage11_iter0;
wire ap_ST_fsm_state12_blk;
wire ap_block_state13_pp0_stage12_iter0;
wire ap_ST_fsm_state13_blk;
wire ap_block_state14_pp0_stage13_iter0;
wire ap_ST_fsm_state14_blk;
wire ap_block_state15_pp0_stage14_iter0;
wire ap_ST_fsm_state15_blk;
wire ap_block_state16_pp0_stage15_iter0;
wire ap_ST_fsm_state16_blk;
wire ap_block_state17_pp0_stage16_iter0;
wire ap_ST_fsm_state17_blk;
wire ap_block_state18_pp0_stage17_iter0;
wire ap_ST_fsm_state18_blk;
wire ap_block_state19_pp0_stage18_iter0;
wire ap_ST_fsm_state19_blk;
wire ap_block_state20_pp0_stage19_iter0;
wire ap_ST_fsm_state20_blk;
wire ap_block_state21_pp0_stage20_iter0;
wire ap_ST_fsm_state21_blk;
wire ap_block_state22_pp0_stage21_iter0;
wire ap_ST_fsm_state22_blk;
wire ap_block_state23_pp0_stage22_iter0;
wire ap_ST_fsm_state23_blk;
wire ap_block_state24_pp0_stage23_iter0;
wire ap_ST_fsm_state24_blk;
wire ap_block_state25_pp0_stage24_iter0;
wire ap_ST_fsm_state25_blk;
wire ap_block_state26_pp0_stage25_iter0;
wire ap_ST_fsm_state26_blk;
wire ap_block_state27_pp0_stage26_iter0;
wire ap_ST_fsm_state27_blk;
wire ap_block_state28_pp0_stage27_iter0;
wire ap_ST_fsm_state28_blk;
wire ap_block_state29_pp0_stage28_iter0;
wire ap_ST_fsm_state29_blk;
wire ap_block_state30_pp0_stage29_iter0;
wire ap_ST_fsm_state30_blk;
wire ap_block_state31_pp0_stage30_iter0;
wire ap_ST_fsm_state31_blk;
wire ap_block_state32_pp0_stage31_iter0;
wire ap_ST_fsm_state32_blk;
wire ap_block_state33_pp0_stage32_iter0;
wire ap_ST_fsm_state33_blk;
wire ap_block_state34_pp0_stage33_iter0;
wire ap_ST_fsm_state34_blk;
wire ap_block_state35_pp0_stage34_iter0;
wire ap_ST_fsm_state35_blk;
wire ap_ST_fsm_state36_blk;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 36'd1;
#0 ap_return_preg = 1'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U1(
 .din0(ap_sig_allocacmp_j_2),
 .din1(ap_sig_allocacmp_j_2),
 .dout(mul_ln12_fu_56_p2)
);
entry_point_urem_32ns_32s_32_36_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
urem_32ns_32s_32_36_1_U2(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(i),
 .din1(ap_sig_allocacmp_j_2),
 .ce(1'b1),
 .dout(grp_fu_68_p2)
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
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage35),
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state36))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_return_preg <= 1'd0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state36) & ((icmp_ln12_reg_108 == 1'd1) | (icmp_ln13_fu_74_p2 == 1'd1)))) begin
 ap_return_preg <= ap_phi_mux_merge_phi_fu_40_p4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 j_fu_26 <= 32'd3;
 end else if (((icmp_ln12_reg_108 == 1'd0) & (icmp_ln13_fu_74_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state36))) begin
 j_fu_26 <= j_3_fu_80_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln12_reg_108 == 1'd0) & (icmp_ln13_fu_74_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state36))) begin
 merge_reg_36 <= 1'd0;
 end else if (((icmp_ln12_fu_62_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 merge_reg_36 <= 1'd1;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 icmp_ln12_reg_108 <= icmp_ln12_fu_62_p2;
 j_2_reg_102 <= ap_sig_allocacmp_j_2;
 end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
 if ((ap_start_int == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state30_blk = 1'b0;
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
assign ap_ST_fsm_state33_blk = 1'b0;
assign ap_ST_fsm_state34_blk = 1'b0;
assign ap_ST_fsm_state35_blk = 1'b0;
assign ap_ST_fsm_state36_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state36) & ((icmp_ln12_reg_108 == 1'd1) | (icmp_ln13_fu_74_p2 == 1'd1)))) begin
 ap_condition_exit_pp0_iter0_stage35 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage35 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state36))) begin
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
 if (((icmp_ln12_reg_108 == 1'd0) & (icmp_ln13_fu_74_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state36))) begin
 ap_phi_mux_merge_phi_fu_40_p4 = 1'd0;
 end else begin
 ap_phi_mux_merge_phi_fu_40_p4 = merge_reg_36;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state36)) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state36) & ((icmp_ln12_reg_108 == 1'd1) | (icmp_ln13_fu_74_p2 == 1'd1)))) begin
 ap_return = ap_phi_mux_merge_phi_fu_40_p4;
 end else begin
 ap_return = ap_return_preg;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_j_2 = 32'd3;
 end else begin
 ap_sig_allocacmp_j_2 = j_fu_26;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
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
 ap_NS_fsm = ap_ST_fsm_state14;
 end
 ap_ST_fsm_state14 : begin
 ap_NS_fsm = ap_ST_fsm_state15;
 end
 ap_ST_fsm_state15 : begin
 ap_NS_fsm = ap_ST_fsm_state16;
 end
 ap_ST_fsm_state16 : begin
 ap_NS_fsm = ap_ST_fsm_state17;
 end
 ap_ST_fsm_state17 : begin
 ap_NS_fsm = ap_ST_fsm_state18;
 end
 ap_ST_fsm_state18 : begin
 ap_NS_fsm = ap_ST_fsm_state19;
 end
 ap_ST_fsm_state19 : begin
 ap_NS_fsm = ap_ST_fsm_state20;
 end
 ap_ST_fsm_state20 : begin
 ap_NS_fsm = ap_ST_fsm_state21;
 end
 ap_ST_fsm_state21 : begin
 ap_NS_fsm = ap_ST_fsm_state22;
 end
 ap_ST_fsm_state22 : begin
 ap_NS_fsm = ap_ST_fsm_state23;
 end
 ap_ST_fsm_state23 : begin
 ap_NS_fsm = ap_ST_fsm_state24;
 end
 ap_ST_fsm_state24 : begin
 ap_NS_fsm = ap_ST_fsm_state25;
 end
 ap_ST_fsm_state25 : begin
 ap_NS_fsm = ap_ST_fsm_state26;
 end
 ap_ST_fsm_state26 : begin
 ap_NS_fsm = ap_ST_fsm_state27;
 end
 ap_ST_fsm_state27 : begin
 ap_NS_fsm = ap_ST_fsm_state28;
 end
 ap_ST_fsm_state28 : begin
 ap_NS_fsm = ap_ST_fsm_state29;
 end
 ap_ST_fsm_state29 : begin
 ap_NS_fsm = ap_ST_fsm_state30;
 end
 ap_ST_fsm_state30 : begin
 ap_NS_fsm = ap_ST_fsm_state31;
 end
 ap_ST_fsm_state31 : begin
 ap_NS_fsm = ap_ST_fsm_state32;
 end
 ap_ST_fsm_state32 : begin
 ap_NS_fsm = ap_ST_fsm_state33;
 end
 ap_ST_fsm_state33 : begin
 ap_NS_fsm = ap_ST_fsm_state34;
 end
 ap_ST_fsm_state34 : begin
 ap_NS_fsm = ap_ST_fsm_state35;
 end
 ap_ST_fsm_state35 : begin
 ap_NS_fsm = ap_ST_fsm_state36;
 end
 ap_ST_fsm_state36 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];
assign ap_block_state10_pp0_stage9_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state11_pp0_stage10_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state12_pp0_stage11_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state13_pp0_stage12_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state14_pp0_stage13_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state15_pp0_stage14_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state16_pp0_stage15_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state17_pp0_stage16_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state18_pp0_stage17_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state19_pp0_stage18_iter0 = ~(1'b1 == 1'b1);
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_block_state20_pp0_stage19_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state21_pp0_stage20_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state22_pp0_stage21_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state23_pp0_stage22_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state24_pp0_stage23_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state25_pp0_stage24_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state26_pp0_stage25_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state27_pp0_stage26_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state28_pp0_stage27_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state29_pp0_stage28_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state30_pp0_stage29_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state31_pp0_stage30_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state32_pp0_stage31_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state33_pp0_stage32_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state34_pp0_stage33_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state35_pp0_stage34_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state36_pp0_stage35_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state6_pp0_stage5_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state7_pp0_stage6_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state8_pp0_stage7_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state9_pp0_stage8_iter0 = ~(1'b1 == 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage35;
assign icmp_ln12_fu_62_p2 = (($signed(mul_ln12_fu_56_p2) > $signed(i)) ? 1'b1 : 1'b0);
assign icmp_ln13_fu_74_p2 = ((grp_fu_68_p2 == 32'd0) ? 1'b1 : 1'b0);
assign j_3_fu_80_p2 = ($signed(j_2_reg_102) + $signed(32'd2));
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
module entry_point_urem_32ns_32s_32_36_1_divider
#(parameter
 in0_WIDTH = 32,
 in1_WIDTH = 32,
 out_WIDTH = 32
)
(
 input clk,
 input reset,
 input ce,
 input [in0_WIDTH-1:0] dividend,
 input [in1_WIDTH-1:0] divisor,
 output wire [out_WIDTH-1:0] quot,
 output wire [out_WIDTH-1:0] remd
);
localparam cal_WIDTH = (in0_WIDTH > in1_WIDTH)? in0_WIDTH : in1_WIDTH;
reg [in0_WIDTH-1:0] dividend_tmp[0:in0_WIDTH];
reg [in1_WIDTH-1:0] divisor_tmp[0:in0_WIDTH];
reg [in0_WIDTH-1:0] remd_tmp[0:in0_WIDTH];
wire [in0_WIDTH-1:0] comb_tmp[0:in0_WIDTH-1];
wire [cal_WIDTH:0] cal_tmp[0:in0_WIDTH-1];
assign quot = dividend_tmp[in0_WIDTH];
assign remd = remd_tmp[in0_WIDTH];
always @(posedge clk)
begin
 if (ce) begin
 dividend_tmp[0] <= dividend;
 divisor_tmp[0] <= divisor;
 remd_tmp[0] <= 1'b0;
 end
end
genvar i;
generate 
 for (i = 0; i < in0_WIDTH; i = i + 1)
 begin : loop
 if (in0_WIDTH == 1) assign comb_tmp[i] = dividend_tmp[i][0];
 else assign comb_tmp[i] = {remd_tmp[i][in0_WIDTH-2:0], dividend_tmp[i][in0_WIDTH-1]};
 assign cal_tmp[i] = {1'b0, comb_tmp[i]} - {1'b0, divisor_tmp[i]};
 always @(posedge clk)
 begin
 if (ce) begin
 if (in0_WIDTH == 1) dividend_tmp[i+1] <= ~cal_tmp[i][cal_WIDTH];
 else dividend_tmp[i+1] <= {dividend_tmp[i][in0_WIDTH-2:0], ~cal_tmp[i][cal_WIDTH]};
 divisor_tmp[i+1] <= divisor_tmp[i];
 remd_tmp[i+1] <= cal_tmp[i][cal_WIDTH]? comb_tmp[i] : cal_tmp[i][in0_WIDTH-1:0];
 end
 end
 end
endgenerate
endmodule
module entry_point_urem_32ns_32s_32_36_1
#(parameter
 ID = 1,
 NUM_STAGE = 2,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 dout_WIDTH = 32
)
(
 input clk,
 input reset,
 input ce,
 input [din0_WIDTH-1:0] din0,
 input [din1_WIDTH-1:0] din1,
 output [dout_WIDTH-1:0] dout
);
reg [din0_WIDTH-1:0] dividend0;
reg [din1_WIDTH-1:0] divisor0;
wire [din0_WIDTH-1:0] dividend_u;
wire [din1_WIDTH-1:0] divisor_u;
wire [dout_WIDTH-1:0] quot_u;
wire [dout_WIDTH-1:0] remd_u;
reg [dout_WIDTH-1:0] quot;
reg [dout_WIDTH-1:0] remd;
entry_point_urem_32ns_32s_32_36_1_divider #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_urem_32ns_32s_32_36_1_divider_u (
 .clk ( clk ),
 .reset ( reset ),
 .ce ( ce ),
 .dividend ( dividend_u ),
 .divisor ( divisor_u ),
 .quot ( quot_u ),
 .remd ( remd_u )
);
assign dividend_u = dividend0;
assign divisor_u = divisor0;
always @(posedge clk)
begin
 if (ce) begin
 dividend0 <= din0;
 divisor0 <= din1;
 end
end
always @(posedge clk)
begin
 if (ce) begin
 quot <= quot_u;
 remd <= remd_u;
 end
end
assign dout = remd;
endmodule
