module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 upperLimit,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 3'd1;
parameter ap_ST_fsm_state2 = 3'd2;
parameter ap_ST_fsm_state3 = 3'd4;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] upperLimit;
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
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [31:0] upperLimit_read_reg_103;
wire [31:0] zext_ln13_fu_77_p1;
reg [31:0] zext_ln13_reg_111;
wire ap_CS_fsm_state2;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_ready;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_return;
reg grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_start_reg;
wire [0:0] icmp_ln13_fu_81_p2;
wire ap_CS_fsm_state3;
reg [30:0] number_fu_38;
wire [30:0] number_3_fu_86_p2;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_start_reg = 1'b0;
#0 number_fu_38 = 31'd0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_16_2 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_ready),
 .zext_ln13(number_fu_38),
 .ap_return(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_return)
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
 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln13_fu_81_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 number_fu_38 <= 31'd2;
 end else if (((grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 number_fu_38 <= number_3_fu_86_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 upperLimit_read_reg_103 <= upperLimit;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 zext_ln13_reg_111[30 : 0] <= zext_ln13_fu_77_p1[30 : 0];
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_done == 1'b0)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln13_fu_81_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
 if (((icmp_ln13_fu_81_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_return == 1'd1) & (grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
 if (((icmp_ln13_fu_81_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
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
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_63_ap_start_reg;
assign icmp_ln13_fu_81_p2 = (($signed(zext_ln13_fu_77_p1) < $signed(upperLimit_read_reg_103)) ? 1'b1 : 1'b0);
assign number_3_fu_86_p2 = (number_fu_38 + 31'd1);
assign temptemp1 = upperLimit;
assign temptemp2 = zext_ln13_reg_111;
assign zext_ln13_fu_77_p1 = number_fu_38;
always @ (posedge ap_clk) begin
 zext_ln13_reg_111[31] <= 1'b0;
end
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_16_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 zext_ln13,
 ap_return
);
parameter ap_ST_fsm_state1 = 35'd1;
parameter ap_ST_fsm_state2 = 35'd2;
parameter ap_ST_fsm_state3 = 35'd4;
parameter ap_ST_fsm_state4 = 35'd8;
parameter ap_ST_fsm_state5 = 35'd16;
parameter ap_ST_fsm_state6 = 35'd32;
parameter ap_ST_fsm_state7 = 35'd64;
parameter ap_ST_fsm_state8 = 35'd128;
parameter ap_ST_fsm_state9 = 35'd256;
parameter ap_ST_fsm_state10 = 35'd512;
parameter ap_ST_fsm_state11 = 35'd1024;
parameter ap_ST_fsm_state12 = 35'd2048;
parameter ap_ST_fsm_state13 = 35'd4096;
parameter ap_ST_fsm_state14 = 35'd8192;
parameter ap_ST_fsm_state15 = 35'd16384;
parameter ap_ST_fsm_state16 = 35'd32768;
parameter ap_ST_fsm_state17 = 35'd65536;
parameter ap_ST_fsm_state18 = 35'd131072;
parameter ap_ST_fsm_state19 = 35'd262144;
parameter ap_ST_fsm_state20 = 35'd524288;
parameter ap_ST_fsm_state21 = 35'd1048576;
parameter ap_ST_fsm_state22 = 35'd2097152;
parameter ap_ST_fsm_state23 = 35'd4194304;
parameter ap_ST_fsm_state24 = 35'd8388608;
parameter ap_ST_fsm_state25 = 35'd16777216;
parameter ap_ST_fsm_state26 = 35'd33554432;
parameter ap_ST_fsm_state27 = 35'd67108864;
parameter ap_ST_fsm_state28 = 35'd134217728;
parameter ap_ST_fsm_state29 = 35'd268435456;
parameter ap_ST_fsm_state30 = 35'd536870912;
parameter ap_ST_fsm_state31 = 35'd1073741824;
parameter ap_ST_fsm_state32 = 35'd2147483648;
parameter ap_ST_fsm_state33 = 35'd4294967296;
parameter ap_ST_fsm_state34 = 35'd8589934592;
parameter ap_ST_fsm_state35 = 35'd17179869184;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] zext_ln13;
output [0:0] ap_return;
reg ap_idle;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg [34:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire ap_CS_fsm_state35;
wire [0:0] icmp_ln17_fu_82_p2;
reg [0:0] icmp_ln16_reg_116;
reg ap_condition_exit_pp0_iter0_stage34;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [0:0] merge_reg_36;
wire [31:0] zext_ln13_cast_fu_52_p1;
reg ap_block_state1_pp0_stage0_iter0;
reg signed [31:0] divisor_2_reg_110;
wire [0:0] icmp_ln16_fu_66_p2;
reg [0:0] ap_phi_mux_merge_phi_fu_40_p4;
reg [31:0] divisor_fu_26;
wire [31:0] divisor_3_fu_88_p2;
wire ap_loop_init;
reg signed [31:0] ap_sig_allocacmp_divisor_2;
wire [31:0] mul_ln16_fu_48_p2;
wire [30:0] grp_fu_72_p0;
wire [30:0] grp_fu_72_p2;
wire [30:0] trunc_ln17_fu_78_p1;
reg [0:0] ap_return_preg;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [34:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
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
wire ap_ST_fsm_state15_blk;
wire ap_ST_fsm_state16_blk;
wire ap_ST_fsm_state17_blk;
wire ap_ST_fsm_state18_blk;
wire ap_ST_fsm_state19_blk;
wire ap_ST_fsm_state20_blk;
wire ap_ST_fsm_state21_blk;
wire ap_ST_fsm_state22_blk;
wire ap_ST_fsm_state23_blk;
wire ap_ST_fsm_state24_blk;
wire ap_ST_fsm_state25_blk;
wire ap_ST_fsm_state26_blk;
wire ap_ST_fsm_state27_blk;
wire ap_ST_fsm_state28_blk;
wire ap_ST_fsm_state29_blk;
wire ap_ST_fsm_state30_blk;
wire ap_ST_fsm_state31_blk;
wire ap_ST_fsm_state32_blk;
wire ap_ST_fsm_state33_blk;
wire ap_ST_fsm_state34_blk;
wire ap_ST_fsm_state35_blk;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 35'd1;
#0 divisor_fu_26 = 32'd0;
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
 .din0(ap_sig_allocacmp_divisor_2),
 .din1(ap_sig_allocacmp_divisor_2),
 .dout(mul_ln16_fu_48_p2)
);
entry_point_urem_31ns_32s_31_35_1 #(
 .ID( 1 ),
 .NUM_STAGE( 35 ),
 .din0_WIDTH( 31 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 31 ))
urem_31ns_32s_31_35_1_U2(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_72_p0),
 .din1(ap_sig_allocacmp_divisor_2),
 .ce(1'b1),
 .dout(grp_fu_72_p2)
);
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(ap_start),
 .ap_ready(ap_ready_sig),
 .ap_done(ap_done_sig),
 .ap_start_int(ap_start_int),
 .ap_loop_init(ap_loop_init),
 .ap_ready_int(ap_ready_int),
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage34),
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state35))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_return_preg <= 1'd0;
 end else begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state35))) begin
 ap_return_preg <= ap_phi_mux_merge_phi_fu_40_p4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 divisor_fu_26 <= 32'd2;
 end else if (((icmp_ln16_reg_116 == 1'd0) & (icmp_ln17_fu_82_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state35))) begin
 divisor_fu_26 <= divisor_3_fu_88_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln16_reg_116 == 1'd0) & (icmp_ln17_fu_82_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state35))) begin
 merge_reg_36 <= 1'd0;
 end else if (((icmp_ln16_fu_66_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 merge_reg_36 <= 1'd1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 divisor_2_reg_110 <= ap_sig_allocacmp_divisor_2;
 icmp_ln16_reg_116 <= icmp_ln16_fu_66_p2;
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
 if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
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
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state35) & ((icmp_ln16_reg_116 == 1'd1) | (icmp_ln17_fu_82_p2 == 1'd1)))) begin
 ap_condition_exit_pp0_iter0_stage34 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage34 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state35))) begin
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
 if (((icmp_ln16_reg_116 == 1'd0) & (icmp_ln17_fu_82_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state35))) begin
 ap_phi_mux_merge_phi_fu_40_p4 = 1'd0;
 end else begin
 ap_phi_mux_merge_phi_fu_40_p4 = merge_reg_36;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state35)) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state35))) begin
 ap_return = ap_phi_mux_merge_phi_fu_40_p4;
 end else begin
 ap_return = ap_return_preg;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_divisor_2 = 32'd2;
 end else begin
 ap_sig_allocacmp_divisor_2 = divisor_fu_26;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state35 = ap_CS_fsm[32'd34];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage34;
assign ap_ready = ap_ready_sig;
assign divisor_3_fu_88_p2 = ($signed(divisor_2_reg_110) + $signed(32'd1));
assign grp_fu_72_p0 = zext_ln13_cast_fu_52_p1;
assign icmp_ln16_fu_66_p2 = (($signed(mul_ln16_fu_48_p2) > $signed(zext_ln13_cast_fu_52_p1)) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_82_p2 = ((trunc_ln17_fu_78_p1 == 31'd0) ? 1'b1 : 1'b0);
assign trunc_ln17_fu_78_p1 = grp_fu_72_p2[30:0];
assign zext_ln13_cast_fu_52_p1 = zext_ln13;
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
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed(din0) * $signed(din1);
assign dout = tmp_product;
endmodule
module entry_point_urem_31ns_32s_31_35_1_divider
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
module entry_point_urem_31ns_32s_31_35_1
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
entry_point_urem_31ns_32s_31_35_1_divider #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_urem_31ns_32s_31_35_1_divider_u (
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
