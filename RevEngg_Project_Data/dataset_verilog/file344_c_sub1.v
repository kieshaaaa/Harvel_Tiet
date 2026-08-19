module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 lower,
 upper,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 5'd1;
parameter ap_ST_fsm_state2 = 5'd2;
parameter ap_ST_fsm_state3 = 5'd4;
parameter ap_ST_fsm_state4 = 5'd8;
parameter ap_ST_fsm_state5 = 5'd16;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] lower;
input [31:0] upper;
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
(* fsm_encoding = "none" *) reg [4:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] grp_fu_100_p1;
reg [31:0] conv_reg_287;
wire ap_CS_fsm_state2;
wire [31:0] bitcast_ln12_fu_118_p1;
reg [31:0] bitcast_ln12_reg_293;
wire [0:0] icmp_ln12_fu_126_p2;
reg [0:0] icmp_ln12_reg_298;
wire [30:0] trunc_ln9_fu_135_p1;
reg [30:0] trunc_ln9_reg_306;
wire ap_CS_fsm_state3;
wire [0:0] and_ln9_fu_165_p2;
reg [0:0] and_ln9_reg_311;
wire [0:0] or_ln12_fu_186_p2;
reg [0:0] or_ln12_reg_315;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_return;
reg [0:0] targetBlock_reg_321;
wire ap_CS_fsm_state4;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_result_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_result_out_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_grp_fu_100_p_din0;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_grp_fu_100_p_ce;
reg grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_start_reg;
reg [31:0] result_loc_fu_62;
reg [31:0] j_1_fu_58;
wire [31:0] j_4_fu_258_p2;
wire ap_CS_fsm_state5;
wire [0:0] and_ln20_fu_252_p2;
wire [31:0] bitcast_ln20_fu_204_p1;
reg [31:0] grp_fu_100_p0;
wire [31:0] result_fu_195_p3;
wire [22:0] trunc_ln12_fu_122_p1;
wire [0:0] icmp_ln9_fu_140_p2;
wire [0:0] tmp_fu_151_p3;
wire [0:0] xor_ln9_fu_145_p2;
wire [0:0] xor_ln9_1_fu_159_p2;
wire [7:0] tmp_1_fu_171_p4;
wire [0:0] icmp_ln12_3_fu_180_p2;
wire [7:0] tmp_5_fu_209_p4;
wire [22:0] trunc_ln20_fu_219_p1;
wire [0:0] icmp_ln20_1_fu_229_p2;
wire [0:0] icmp_ln20_fu_223_p2;
wire [0:0] or_ln20_fu_235_p2;
wire [0:0] and_ln20_1_fu_241_p2;
wire [0:0] tmp_7_fu_104_p2;
wire [0:0] and_ln20_2_fu_246_p2;
wire [0:0] tmp_9_fu_108_p2;
reg grp_fu_100_ce;
reg [4:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_12_2 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_ready),
 .j_1(trunc_ln9_reg_306),
 .or_ln12_1(or_ln12_reg_315),
 .conv(conv_reg_287),
 .result_out(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_result_out),
 .result_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_result_out_ap_vld),
 .ap_return(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_return),
 .grp_fu_100_p_din0(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_grp_fu_100_p_din0),
 .grp_fu_100_p_dout0(grp_fu_100_p1),
 .grp_fu_100_p_ce(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_grp_fu_100_p_ce)
);
entry_point_sitofp_32ns_32_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
sitofp_32ns_32_2_no_dsp_1_U10(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_100_p0),
 .ce(grp_fu_100_ce),
 .dout(grp_fu_100_p1)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U11(
 .din0(result_fu_195_p3),
 .din1(conv_reg_287),
 .opcode(5'd5),
 .dout(tmp_7_fu_104_p2)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U12(
 .din0(result_fu_195_p3),
 .din1(32'd0),
 .opcode(5'd2),
 .dout(tmp_9_fu_108_p2)
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
 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_start_reg <= 1'b0;
 end else begin
 if (((1'd1 == and_ln9_fu_165_p2) & (1'b1 == ap_CS_fsm_state3))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 j_1_fu_58 <= lower;
 end else if (((1'd1 == and_ln20_fu_252_p2) & (1'd1 == and_ln9_reg_311) & (1'b1 == ap_CS_fsm_state5))) begin
 j_1_fu_58 <= j_4_fu_258_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 and_ln9_reg_311 <= and_ln9_fu_165_p2;
 trunc_ln9_reg_306 <= trunc_ln9_fu_135_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 bitcast_ln12_reg_293 <= bitcast_ln12_fu_118_p1;
 conv_reg_287 <= grp_fu_100_p1;
 icmp_ln12_reg_298 <= icmp_ln12_fu_126_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'd1 == and_ln9_fu_165_p2) & (1'b1 == ap_CS_fsm_state3))) begin
 or_ln12_reg_315 <= or_ln12_fu_186_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_result_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 result_loc_fu_62 <= grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_result_out;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 targetBlock_reg_321 <= grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_return;
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
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state5) & ((1'd0 == and_ln20_fu_252_p2) | (1'd0 == and_ln9_reg_311)))) begin
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
 if (((1'b1 == ap_CS_fsm_state5) & ((1'd0 == and_ln20_fu_252_p2) | (1'd0 == and_ln9_reg_311)))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 grp_fu_100_ce = grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_grp_fu_100_p_ce;
 end else begin
 grp_fu_100_ce = 1'b1;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 grp_fu_100_p0 = grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_grp_fu_100_p_din0;
 end else if ((1'b1 == ap_CS_fsm_state1)) begin
 grp_fu_100_p0 = upper;
 end else begin
 grp_fu_100_p0 = 'bx;
 end
end
always @ (*) begin
 if (((1'd1 == and_ln20_fu_252_p2) & (1'd1 == and_ln9_reg_311) & (1'b1 == ap_CS_fsm_state5))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'd1 == and_ln20_fu_252_p2) & (1'd1 == and_ln9_reg_311) & (1'b1 == ap_CS_fsm_state5))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 ap_ST_fsm_state3 : begin
 if (((1'd0 == and_ln9_fu_165_p2) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state4 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state5 : begin
 if (((1'b1 == ap_CS_fsm_state5) & ((1'd0 == and_ln20_fu_252_p2) | (1'd0 == and_ln9_reg_311)))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign and_ln20_1_fu_241_p2 = (or_ln20_fu_235_p2 & or_ln12_reg_315);
assign and_ln20_2_fu_246_p2 = (tmp_7_fu_104_p2 & and_ln20_1_fu_241_p2);
assign and_ln20_fu_252_p2 = (tmp_9_fu_108_p2 & and_ln20_2_fu_246_p2);
assign and_ln9_fu_165_p2 = (xor_ln9_fu_145_p2 & xor_ln9_1_fu_159_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_return = 32'd0;
assign bitcast_ln12_fu_118_p1 = grp_fu_100_p1;
assign bitcast_ln20_fu_204_p1 = result_fu_195_p3;
assign grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_92_ap_start_reg;
assign icmp_ln12_3_fu_180_p2 = ((tmp_1_fu_171_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln12_fu_126_p2 = ((trunc_ln12_fu_122_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln20_1_fu_229_p2 = ((trunc_ln20_fu_219_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln20_fu_223_p2 = ((tmp_5_fu_209_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_140_p2 = (($signed(upper) < $signed(j_1_fu_58)) ? 1'b1 : 1'b0);
assign j_4_fu_258_p2 = (j_1_fu_58 + 32'd1);
assign or_ln12_fu_186_p2 = (icmp_ln12_reg_298 | icmp_ln12_3_fu_180_p2);
assign or_ln20_fu_235_p2 = (icmp_ln20_fu_223_p2 | icmp_ln20_1_fu_229_p2);
assign result_fu_195_p3 = ((targetBlock_reg_321[0:0] == 1'b1) ? result_loc_fu_62 : 32'd3212836864);
assign temptemp1 = j_1_fu_58;
assign temptemp2 = bitcast_ln20_fu_204_p1;
assign tmp_1_fu_171_p4 = {{bitcast_ln12_reg_293[30:23]}};
assign tmp_5_fu_209_p4 = {{bitcast_ln20_fu_204_p1[30:23]}};
assign tmp_fu_151_p3 = j_1_fu_58[32'd31];
assign trunc_ln12_fu_122_p1 = bitcast_ln12_fu_118_p1[22:0];
assign trunc_ln20_fu_219_p1 = bitcast_ln20_fu_204_p1[22:0];
assign trunc_ln9_fu_135_p1 = j_1_fu_58[30:0];
assign xor_ln9_1_fu_159_p2 = (tmp_fu_151_p3 ^ 1'd1);
assign xor_ln9_fu_145_p2 = (icmp_ln9_fu_140_p2 ^ 1'd1);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_12_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 j_1,
 or_ln12_1,
 conv,
 result_out,
 result_out_ap_vld,
 ap_return,
 grp_fu_100_p_din0,
 grp_fu_100_p_dout0,
 grp_fu_100_p_ce
);
parameter ap_ST_fsm_state1 = 8'd1;
parameter ap_ST_fsm_state2 = 8'd2;
parameter ap_ST_fsm_state3 = 8'd4;
parameter ap_ST_fsm_state4 = 8'd8;
parameter ap_ST_fsm_state5 = 8'd16;
parameter ap_ST_fsm_state6 = 8'd32;
parameter ap_ST_fsm_state7 = 8'd64;
parameter ap_ST_fsm_state8 = 8'd128;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] j_1;
input [0:0] or_ln12_1;
input [31:0] conv;
output [31:0] result_out;
output result_out_ap_vld;
output [0:0] ap_return;
output [31:0] grp_fu_100_p_din0;
input [31:0] grp_fu_100_p_dout0;
output grp_fu_100_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg result_out_ap_vld;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg [7:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] j_1_cast_fu_107_p1;
reg [31:0] j_1_cast_reg_272;
reg [31:0] result_1_reg_277;
wire ap_CS_fsm_state2;
reg [31:0] i_2_reg_283;
wire [0:0] and_ln12_fu_187_p2;
reg [0:0] and_ln12_reg_289;
reg [31:0] conv7_reg_293;
wire ap_CS_fsm_state3;
wire [31:0] grp_fu_95_p2;
reg [31:0] result_2_reg_298;
wire ap_CS_fsm_state5;
reg [0:0] ap_phi_mux_UnifiedRetVal_phi_fu_87_p4;
reg [0:0] UnifiedRetVal_reg_83;
wire ap_CS_fsm_state8;
wire ap_CS_fsm_state7;
reg [31:0] result_fu_50;
wire ap_CS_fsm_state6;
wire [0:0] and_ln14_fu_228_p2;
reg [31:0] i_fu_54;
wire [31:0] i_3_fu_234_p2;
wire ap_CS_fsm_state4;
reg [31:0] grp_fu_102_p0;
reg [31:0] grp_fu_102_p1;
wire [0:0] icmp_ln12_fu_129_p2;
wire [31:0] bitcast_ln12_fu_140_p1;
wire [7:0] tmp_fu_144_p4;
wire [22:0] trunc_ln12_fu_154_p1;
wire [0:0] icmp_ln12_2_fu_164_p2;
wire [0:0] icmp_ln12_1_fu_158_p2;
wire [0:0] grp_fu_102_p2;
wire [0:0] or_ln12_fu_170_p2;
wire [0:0] and_ln12_1_fu_176_p2;
wire [0:0] and_ln12_2_fu_181_p2;
wire [0:0] xor_ln12_fu_134_p2;
wire [31:0] bitcast_ln14_fu_193_p1;
wire [7:0] tmp_3_fu_196_p4;
wire [22:0] trunc_ln14_fu_206_p1;
wire [0:0] icmp_ln14_1_fu_216_p2;
wire [0:0] icmp_ln14_fu_210_p2;
wire [0:0] or_ln14_fu_222_p2;
reg [4:0] grp_fu_102_opcode;
reg [0:0] ap_return_preg;
reg [7:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ST_fsm_state6_blk;
wire ap_ST_fsm_state7_blk;
wire ap_ST_fsm_state8_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_return_preg = 1'd0;
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
 .din0(result_1_reg_277),
 .din1(conv7_reg_293),
 .ce(1'b1),
 .dout(grp_fu_95_p2)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U3(
 .din0(grp_fu_102_p0),
 .din1(grp_fu_102_p1),
 .opcode(grp_fu_102_opcode),
 .dout(grp_fu_102_p2)
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
 ap_return_preg <= 1'd0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 ap_return_preg <= ap_phi_mux_UnifiedRetVal_phi_fu_87_p4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'd1 == and_ln12_reg_289) & (1'b1 == ap_CS_fsm_state7))) begin
 UnifiedRetVal_reg_83 <= 1'd0;
 end else if ((1'b1 == ap_CS_fsm_state8)) begin
 UnifiedRetVal_reg_83 <= 1'd1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 i_fu_54 <= 32'd2;
 end else if (((1'd0 == and_ln14_fu_228_p2) & (1'd1 == and_ln12_reg_289) & (1'b1 == ap_CS_fsm_state6))) begin
 i_fu_54 <= i_3_fu_234_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 result_fu_50 <= 32'd1065353216;
 end else if (((1'd0 == and_ln14_fu_228_p2) & (1'd1 == and_ln12_reg_289) & (1'b1 == ap_CS_fsm_state6))) begin
 result_fu_50 <= result_2_reg_298;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 and_ln12_reg_289 <= and_ln12_fu_187_p2;
 i_2_reg_283 <= i_fu_54;
 result_1_reg_277 <= result_fu_50;
 end
end
always @ (posedge ap_clk) begin
 if (((1'd1 == and_ln12_reg_289) & (1'b1 == ap_CS_fsm_state3))) begin
 conv7_reg_293 <= grp_fu_100_p_dout0;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 j_1_cast_reg_272[30 : 0] <= j_1_cast_fu_107_p1[30 : 0];
 end
end
always @ (posedge ap_clk) begin
 if (((1'd1 == and_ln12_reg_289) & (1'b1 == ap_CS_fsm_state5))) begin
 result_2_reg_298 <= grp_fu_95_p2;
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
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
 if (((1'd1 == and_ln12_reg_289) & (1'b1 == ap_CS_fsm_state7))) begin
 ap_phi_mux_UnifiedRetVal_phi_fu_87_p4 = 1'd0;
 end else begin
 ap_phi_mux_UnifiedRetVal_phi_fu_87_p4 = UnifiedRetVal_reg_83;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 ap_return = ap_phi_mux_UnifiedRetVal_phi_fu_87_p4;
 end else begin
 ap_return = ap_return_preg;
 end
end
always @ (*) begin
 if (((1'd1 == and_ln12_reg_289) & (1'b1 == ap_CS_fsm_state6))) begin
 grp_fu_102_opcode = 5'd4;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_102_opcode = 5'd5;
 end else begin
 grp_fu_102_opcode = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 grp_fu_102_p0 = result_2_reg_298;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_102_p0 = result_fu_50;
 end else begin
 grp_fu_102_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 grp_fu_102_p1 = 32'd0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_102_p1 = conv;
 end else begin
 grp_fu_102_p1 = 'bx;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state8) | ((1'd1 == and_ln12_reg_289) & (1'b1 == ap_CS_fsm_state7)))) begin
 result_out_ap_vld = 1'b1;
 end else begin
 result_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
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
 if (((1'd0 == and_ln14_fu_228_p2) & (1'd1 == and_ln12_reg_289) & (1'b1 == ap_CS_fsm_state6))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else if (((1'd0 == and_ln12_reg_289) & (1'b1 == ap_CS_fsm_state6))) begin
 ap_NS_fsm = ap_ST_fsm_state8;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end
 end
 ap_ST_fsm_state7 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 ap_ST_fsm_state8 : begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign and_ln12_1_fu_176_p2 = (or_ln12_1 & grp_fu_102_p2);
assign and_ln12_2_fu_181_p2 = (or_ln12_fu_170_p2 & and_ln12_1_fu_176_p2);
assign and_ln12_fu_187_p2 = (xor_ln12_fu_134_p2 & and_ln12_2_fu_181_p2);
assign and_ln14_fu_228_p2 = (or_ln14_fu_222_p2 & grp_fu_102_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign bitcast_ln12_fu_140_p1 = result_fu_50;
assign bitcast_ln14_fu_193_p1 = result_2_reg_298;
assign grp_fu_100_p_ce = 1'b1;
assign grp_fu_100_p_din0 = i_fu_54;
assign i_3_fu_234_p2 = (i_2_reg_283 + 32'd1);
assign icmp_ln12_1_fu_158_p2 = ((tmp_fu_144_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln12_2_fu_164_p2 = ((trunc_ln12_fu_154_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln12_fu_129_p2 = (($signed(j_1_cast_reg_272) < $signed(i_fu_54)) ? 1'b1 : 1'b0);
assign icmp_ln14_1_fu_216_p2 = ((trunc_ln14_fu_206_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln14_fu_210_p2 = ((tmp_3_fu_196_p4 != 8'd255) ? 1'b1 : 1'b0);
assign j_1_cast_fu_107_p1 = j_1;
assign or_ln12_fu_170_p2 = (icmp_ln12_2_fu_164_p2 | icmp_ln12_1_fu_158_p2);
assign or_ln14_fu_222_p2 = (icmp_ln14_fu_210_p2 | icmp_ln14_1_fu_216_p2);
assign result_out = result_1_reg_277;
assign tmp_3_fu_196_p4 = {{bitcast_ln14_fu_193_p1[30:23]}};
assign tmp_fu_144_p4 = {{bitcast_ln12_fu_140_p1[30:23]}};
assign trunc_ln12_fu_154_p1 = bitcast_ln12_fu_140_p1[22:0];
assign trunc_ln14_fu_206_p1 = bitcast_ln14_fu_193_p1[22:0];
assign xor_ln12_fu_134_p2 = (icmp_ln12_fu_129_p2 ^ 1'd1);
always @ (posedge ap_clk) begin
 j_1_cast_reg_272[31] <= 1'b0;
end
endmodule
module entry_point_fcmp_32ns_32ns_1_1_no_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 1,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 dout_WIDTH = 1
)(
 input wire [din0_WIDTH-1:0] din0,
 input wire [din1_WIDTH-1:0] din1,
 input wire [4:0] opcode,
 output wire [dout_WIDTH-1:0] dout
);
localparam [4:0]
 AP_OEQ = 5'b00001,
 AP_OGT = 5'b00010,
 AP_OGE = 5'b00011,
 AP_OLT = 5'b00100,
 AP_OLE = 5'b00101,
 AP_ONE = 5'b00110,
 AP_UNO = 5'b01000;
localparam [7:0]
 OP_EQ = 8'b00010100,
 OP_GT = 8'b00100100,
 OP_GE = 8'b00110100,
 OP_LT = 8'b00001100,
 OP_LE = 8'b00011100,
 OP_NE = 8'b00101100,
 OP_UO = 8'b00000100;
wire a_tvalid;
wire [31:0] a_tdata;
wire b_tvalid;
wire [31:0] b_tdata;
wire op_tvalid;
reg [7:0] op_tdata;
wire r_tvalid;
wire [7:0] r_tdata;
                                                                                                                                                                                                                                                                                                                                                                                assign a_tvalid = 1'b1;
assign a_tdata = din0;
assign b_tvalid = 1'b1;
assign b_tdata = din1;
assign op_tvalid = 1'b1;
assign dout = r_tdata[0];
always @(*) begin
 case (opcode)
 AP_OEQ : op_tdata = OP_EQ;
 AP_OGT : op_tdata = OP_GT;
 AP_OGE : op_tdata = OP_GE;
 AP_OLT : op_tdata = OP_LT;
 AP_OLE : op_tdata = OP_LE;
 AP_ONE : op_tdata = OP_NE;
 AP_UNO : op_tdata = OP_UO;
 default : op_tdata = OP_EQ;
 endcase
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
