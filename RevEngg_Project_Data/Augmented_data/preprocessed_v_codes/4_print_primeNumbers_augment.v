module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 num1_i,
 num1_o,
 num1_o_ap_vld,
 num2,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 temptemp4,
 temptemp4_ap_vld,
 temptemp5,
 temptemp5_ap_vld
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
input [31:0] num1_i;
output [31:0] num1_o;
output num1_o_ap_vld;
input [31:0] num2;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] num1_o;
reg num1_o_ap_vld;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
reg temptemp5_ap_vld;
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [31:0] num2_read_reg_274;
reg [31:0] temp_reg_283;
wire [30:0] div_fu_228_p3;
reg [30:0] div_reg_311;
wire ap_CS_fsm_state2;
wire [0:0] icmp_ln26_fu_247_p2;
reg [0:0] icmp_ln26_reg_316;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_ready;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_return;
reg [31:0] ap_phi_mux_i_ph_phi_fu_124_p4;
wire [0:0] trunc_ln9_fu_157_p1;
wire [31:0] add_ln20_fu_161_p2;
reg grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_start_reg;
wire [0:0] icmp_ln23_fu_183_p2;
wire ap_CS_fsm_state3;
reg [31:0] i_fu_58;
wire [31:0] i_3_fu_264_p2;
reg ap_block_state3_on_subcall_done;
reg [31:0] count_fu_62;
wire [31:0] count_1_fu_253_p2;
wire [0:0] icmp_ln12_fu_151_p2;
wire [30:0] tmp_fu_141_p4;
wire [31:0] p_neg_fu_196_p2;
wire [30:0] p_lshr_fu_202_p4;
wire [0:0] tmp_1_fu_188_p3;
wire [30:0] p_neg_t_fu_212_p2;
wire [30:0] p_lshr_f_fu_218_p4;
wire [29:0] tmp_2_fu_237_p4;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_start_reg = 1'b0;
#0 i_fu_58 = 32'd0;
#0 count_fu_62 = 32'd0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_26_2 grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_ready),
 .div(div_reg_311),
 .i(i_fu_58),
 .ap_return(grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_return)
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
 grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln23_fu_183_p2 == 1'd0) & (icmp_ln26_fu_247_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 count_fu_62 <= 32'd0;
 end else if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3) & ((grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_return == 1'd1) | (icmp_ln26_reg_316 == 1'd0)))) begin
 count_fu_62 <= count_1_fu_253_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 i_fu_58 <= ap_phi_mux_i_ph_phi_fu_124_p4;
 end else if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
 i_fu_58 <= i_3_fu_264_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 div_reg_311 <= div_fu_228_p3;
 icmp_ln26_reg_316 <= icmp_ln26_fu_247_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 num2_read_reg_274 <= num2;
 temp_reg_283 <= num1_i;
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
 if ((1'b1 == ap_block_state3_on_subcall_done)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln23_fu_183_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
 if ((1'b1 == ap_CS_fsm_state1)) begin
 if ((trunc_ln9_fu_157_p1 == 1'd0)) begin
 ap_phi_mux_i_ph_phi_fu_124_p4 = add_ln20_fu_161_p2;
 end else if ((trunc_ln9_fu_157_p1 == 1'd1)) begin
 ap_phi_mux_i_ph_phi_fu_124_p4 = num1_i;
 end else begin
 ap_phi_mux_i_ph_phi_fu_124_p4 = 'bx;
 end
 end else begin
 ap_phi_mux_i_ph_phi_fu_124_p4 = 'bx;
 end
end
always @ (*) begin
 if (((icmp_ln23_fu_183_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (trunc_ln9_fu_157_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 num1_o = add_ln20_fu_161_p2;
 end else begin
 num1_o = num1_i;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (trunc_ln9_fu_157_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 num1_o_ap_vld = 1'b1;
 end else begin
 num1_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln12_fu_151_p2 == 1'd1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3) & ((grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_return == 1'd1) | (icmp_ln26_reg_316 == 1'd0)))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln23_fu_183_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln23_fu_183_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln23_fu_183_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 temptemp5_ap_vld = 1'b1;
 end else begin
 temptemp5_ap_vld = 1'b0;
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
 if (((icmp_ln23_fu_183_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((1'b0 == ap_block_state3_on_subcall_done) & (1'b1 == ap_CS_fsm_state3))) begin
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
assign add_ln20_fu_161_p2 = (num1_i + 32'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
 ap_block_state3_on_subcall_done = ((grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_done == 1'b0) & (icmp_ln26_reg_316 == 1'd1));
end
assign count_1_fu_253_p2 = (count_fu_62 + 32'd1);
assign div_fu_228_p3 = ((tmp_1_fu_188_p3[0:0] == 1'b1) ? p_neg_t_fu_212_p2 : p_lshr_f_fu_218_p4);
assign grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_131_ap_start_reg;
assign i_3_fu_264_p2 = (i_fu_58 + 32'd2);
assign icmp_ln12_fu_151_p2 = (($signed(tmp_fu_141_p4) < $signed(31'd1)) ? 1'b1 : 1'b0);
assign icmp_ln23_fu_183_p2 = (($signed(i_fu_58) > $signed(num2_read_reg_274)) ? 1'b1 : 1'b0);
assign icmp_ln26_fu_247_p2 = (($signed(tmp_2_fu_237_p4) > $signed(30'd0)) ? 1'b1 : 1'b0);
assign p_lshr_f_fu_218_p4 = {{i_fu_58[31:1]}};
assign p_lshr_fu_202_p4 = {{p_neg_fu_196_p2[31:1]}};
assign p_neg_fu_196_p2 = (32'd0 - i_fu_58);
assign p_neg_t_fu_212_p2 = (31'd0 - p_lshr_fu_202_p4);
assign temptemp1 = num2;
assign temptemp2 = i_fu_58;
assign temptemp3 = temp_reg_283;
assign temptemp4 = num2_read_reg_274;
assign temptemp5 = count_fu_62;
assign tmp_1_fu_188_p3 = i_fu_58[32'd31];
assign tmp_2_fu_237_p4 = {{i_fu_58[31:2]}};
assign tmp_fu_141_p4 = {{num2[31:1]}};
assign trunc_ln9_fu_157_p1 = num1_i[0:0];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_26_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 div,
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
input [30:0] div;
input [31:0] i;
output [0:0] ap_return;
reg ap_idle;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg [35:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire ap_CS_fsm_state36;
wire [0:0] icmp_ln27_fu_100_p2;
reg [0:0] icmp_ln26_reg_138;
reg ap_condition_exit_pp0_iter0_stage35;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [0:0] merge_reg_56;
reg ap_block_state1_pp0_stage0_iter0;
reg [30:0] j_2_reg_128;
wire [31:0] zext_ln26_fu_80_p1;
wire [0:0] icmp_ln26_fu_84_p2;
reg [0:0] ap_phi_mux_merge_phi_fu_60_p4;
reg [30:0] j_fu_40;
wire [30:0] j_3_fu_106_p2;
wire ap_loop_init;
reg [30:0] ap_sig_allocacmp_j_2;
wire signed [31:0] div_cast_fu_68_p1;
wire [30:0] grp_fu_90_p1;
wire [29:0] grp_fu_90_p2;
wire [29:0] trunc_ln27_fu_96_p1;
reg [0:0] ap_return_preg;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [35:0] ap_NS_fsm;
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
wire ap_ST_fsm_state36_blk;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 36'd1;
#0 j_fu_40 = 31'd0;
#0 ap_return_preg = 1'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_urem_32ns_31ns_30_36_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 31 ),
 .dout_WIDTH( 30 ))
urem_32ns_31ns_30_36_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(i),
 .din1(grp_fu_90_p1),
 .ce(1'b1),
 .dout(grp_fu_90_p2)
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
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state36))) begin
 ap_return_preg <= ap_phi_mux_merge_phi_fu_60_p4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
 j_fu_40 <= 31'd2;
 end else if (((icmp_ln26_reg_138 == 1'd0) & (icmp_ln27_fu_100_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state36))) begin
 j_fu_40 <= j_3_fu_106_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln26_reg_138 == 1'd0) & (icmp_ln27_fu_100_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state36))) begin
 merge_reg_56 <= 1'd0;
 end else if (((icmp_ln26_fu_84_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 merge_reg_56 <= 1'd1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 icmp_ln26_reg_138 <= icmp_ln26_fu_84_p2;
 j_2_reg_128 <= ap_sig_allocacmp_j_2;
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
assign ap_ST_fsm_state36_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state36) & ((icmp_ln26_reg_138 == 1'd1) | (icmp_ln27_fu_100_p2 == 1'd1)))) begin
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
 if (((icmp_ln26_reg_138 == 1'd0) & (icmp_ln27_fu_100_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state36))) begin
 ap_phi_mux_merge_phi_fu_60_p4 = 1'd0;
 end else begin
 ap_phi_mux_merge_phi_fu_60_p4 = merge_reg_56;
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
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state36))) begin
 ap_return = ap_phi_mux_merge_phi_fu_60_p4;
 end else begin
 ap_return = ap_return_preg;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
 ap_sig_allocacmp_j_2 = 31'd2;
 end else begin
 ap_sig_allocacmp_j_2 = j_fu_40;
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
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage35;
assign ap_ready = ap_ready_sig;
assign div_cast_fu_68_p1 = $signed(div);
assign grp_fu_90_p1 = zext_ln26_fu_80_p1;
assign icmp_ln26_fu_84_p2 = (($signed(zext_ln26_fu_80_p1) > $signed(div_cast_fu_68_p1)) ? 1'b1 : 1'b0);
assign icmp_ln27_fu_100_p2 = ((trunc_ln27_fu_96_p1 == 30'd0) ? 1'b1 : 1'b0);
assign j_3_fu_106_p2 = (j_2_reg_128 + 31'd1);
assign trunc_ln27_fu_96_p1 = grp_fu_90_p2[29:0];
assign zext_ln26_fu_80_p1 = ap_sig_allocacmp_j_2;
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
module entry_point_urem_32ns_31ns_30_36_1_divider
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
module entry_point_urem_32ns_31ns_30_36_1
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
entry_point_urem_32ns_31ns_30_36_1_divider #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_urem_32ns_31ns_30_36_1_divider_u (
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
