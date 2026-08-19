module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 a_i,
 a_o,
 a_o_ap_vld,
 b_i,
 b_o,
 b_o_ap_vld,
 temptemp1,
 temptemp1_ap_vld,
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
input [31:0] a_i;
output [31:0] a_o;
output a_o_ap_vld;
input [31:0] b_i;
output [31:0] b_o;
output b_o_ap_vld;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] a_o;
reg a_o_ap_vld;
reg[31:0] b_o;
reg b_o_ap_vld;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [4:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] val_fu_220_p3;
reg [31:0] val_reg_366;
wire ap_CS_fsm_state2;
wire [31:0] val_1_fu_337_p3;
reg [31:0] val_1_reg_371;
wire grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_a;
wire grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_a_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_b;
wire grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_b_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_hcf_val_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_hcf_val_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_ap_start_reg;
reg [4:0] ap_NS_fsm;
wire ap_NS_fsm_state3;
wire ap_CS_fsm_state4;
reg [31:0] a_o_reg;
reg [31:0] b_o_reg;
wire ap_CS_fsm_state5;
wire [63:0] grp_fu_104_p1;
wire [63:0] data_fu_112_p1;
wire [51:0] trunc_ln505_fu_126_p1;
wire [53:0] mantissa_fu_130_p4;
wire [10:0] xs_exp_fu_116_p4;
wire [11:0] zext_ln486_fu_144_p1;
wire [11:0] add_ln486_fu_148_p2;
wire [10:0] sub_ln18_fu_162_p2;
wire [0:0] tmp_3_fu_154_p3;
wire signed [11:0] sext_ln18_fu_168_p1;
wire [11:0] select_ln18_fu_172_p3;
wire signed [31:0] sext_ln18_1_fu_180_p1;
wire [136:0] zext_ln15_fu_140_p1;
wire [136:0] zext_ln18_fu_184_p1;
wire [136:0] lshr_ln18_fu_188_p2;
wire [136:0] shl_ln18_fu_194_p2;
wire [31:0] tmp_fu_200_p4;
wire [31:0] tmp_1_fu_210_p4;
wire [63:0] grp_fu_108_p1;
wire [63:0] data_1_fu_229_p1;
wire [51:0] trunc_ln505_1_fu_243_p1;
wire [53:0] mantissa_1_fu_247_p4;
wire [10:0] xs_exp_1_fu_233_p4;
wire [11:0] zext_ln486_1_fu_261_p1;
wire [11:0] add_ln486_1_fu_265_p2;
wire [10:0] sub_ln18_1_fu_279_p2;
wire [0:0] tmp_5_fu_271_p3;
wire signed [11:0] sext_ln18_2_fu_285_p1;
wire [11:0] select_ln18_2_fu_289_p3;
wire signed [31:0] sext_ln18_3_fu_297_p1;
wire [136:0] zext_ln15_1_fu_257_p1;
wire [136:0] zext_ln18_1_fu_301_p1;
wire [136:0] lshr_ln18_1_fu_305_p2;
wire [136:0] shl_ln18_1_fu_311_p2;
wire [31:0] tmp_2_fu_317_p4;
wire [31:0] tmp_4_fu_327_p4;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_13_1 grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_ap_ready),
 .val_1(val_1_reg_371),
 .val_r(val_reg_366),
 .a(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_a),
 .a_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_a_ap_vld),
 .b(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_b),
 .b_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_b_ap_vld),
 .hcf_val_out(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_hcf_val_out),
 .hcf_val_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_hcf_val_out_ap_vld)
);
entry_point_sitodp_32ns_64_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
sitodp_32ns_64_2_no_dsp_1_U8(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(a_i),
 .ce(1'b1),
 .dout(grp_fu_104_p1)
);
entry_point_sitodp_32ns_64_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
sitodp_32ns_64_2_no_dsp_1_U9(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(b_i),
 .ce(1'b1),
 .dout(grp_fu_108_p1)
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
 grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_NS_fsm_state3) & (1'b1 == ap_CS_fsm_state2))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_a_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 a_o_reg <= grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_a;
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_b_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 b_o_reg <= grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_b;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 val_1_reg_371 <= val_1_fu_337_p3;
 val_reg_366 <= val_fu_220_p3;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 a_o = val_fu_220_p3;
 end else if (((grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_a_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 a_o = grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_a;
 end else begin
 a_o = a_o_reg;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 a_o_ap_vld = 1'b1;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 a_o_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_a_ap_vld;
 end else begin
 a_o_ap_vld = 1'b0;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
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
 if ((1'b1 == ap_CS_fsm_state5)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 b_o = val_1_fu_337_p3;
 end else if (((grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_b_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 b_o = grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_b;
 end else begin
 b_o = b_o_reg;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 b_o_ap_vld = 1'b1;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 b_o_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_b_ap_vld;
 end else begin
 b_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln486_1_fu_265_p2 = ($signed(zext_ln486_1_fu_261_p1) + $signed(12'd3073));
assign add_ln486_fu_148_p2 = ($signed(zext_ln486_fu_144_p1) + $signed(12'd3073));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_NS_fsm_state3 = ap_NS_fsm[32'd2];
assign ap_return = 32'd0;
assign data_1_fu_229_p1 = grp_fu_108_p1;
assign data_fu_112_p1 = grp_fu_104_p1;
assign grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_ap_start_reg;
assign lshr_ln18_1_fu_305_p2 = zext_ln15_1_fu_257_p1 >> zext_ln18_1_fu_301_p1;
assign lshr_ln18_fu_188_p2 = zext_ln15_fu_140_p1 >> zext_ln18_fu_184_p1;
assign mantissa_1_fu_247_p4 = {{{{1'd1}, {trunc_ln505_1_fu_243_p1}}}, {1'd0}};
assign mantissa_fu_130_p4 = {{{{1'd1}, {trunc_ln505_fu_126_p1}}}, {1'd0}};
assign select_ln18_2_fu_289_p3 = ((tmp_5_fu_271_p3[0:0] == 1'b1) ? sext_ln18_2_fu_285_p1 : add_ln486_1_fu_265_p2);
assign select_ln18_fu_172_p3 = ((tmp_3_fu_154_p3[0:0] == 1'b1) ? sext_ln18_fu_168_p1 : add_ln486_fu_148_p2);
assign sext_ln18_1_fu_180_p1 = $signed(select_ln18_fu_172_p3);
assign sext_ln18_2_fu_285_p1 = $signed(sub_ln18_1_fu_279_p2);
assign sext_ln18_3_fu_297_p1 = $signed(select_ln18_2_fu_289_p3);
assign sext_ln18_fu_168_p1 = $signed(sub_ln18_fu_162_p2);
assign shl_ln18_1_fu_311_p2 = zext_ln15_1_fu_257_p1 << zext_ln18_1_fu_301_p1;
assign shl_ln18_fu_194_p2 = zext_ln15_fu_140_p1 << zext_ln18_fu_184_p1;
assign sub_ln18_1_fu_279_p2 = (11'd1023 - xs_exp_1_fu_233_p4);
assign sub_ln18_fu_162_p2 = (11'd1023 - xs_exp_fu_116_p4);
assign temptemp1 = grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_93_hcf_val_out;
assign tmp_1_fu_210_p4 = {{shl_ln18_fu_194_p2[84:53]}};
assign tmp_2_fu_317_p4 = {{lshr_ln18_1_fu_305_p2[84:53]}};
assign tmp_3_fu_154_p3 = add_ln486_fu_148_p2[32'd11];
assign tmp_4_fu_327_p4 = {{shl_ln18_1_fu_311_p2[84:53]}};
assign tmp_5_fu_271_p3 = add_ln486_1_fu_265_p2[32'd11];
assign tmp_fu_200_p4 = {{lshr_ln18_fu_188_p2[84:53]}};
assign trunc_ln505_1_fu_243_p1 = data_1_fu_229_p1[51:0];
assign trunc_ln505_fu_126_p1 = data_fu_112_p1[51:0];
assign val_1_fu_337_p3 = ((tmp_5_fu_271_p3[0:0] == 1'b1) ? tmp_2_fu_317_p4 : tmp_4_fu_327_p4);
assign val_fu_220_p3 = ((tmp_3_fu_154_p3[0:0] == 1'b1) ? tmp_fu_200_p4 : tmp_1_fu_210_p4);
assign xs_exp_1_fu_233_p4 = {{data_1_fu_229_p1[62:52]}};
assign xs_exp_fu_116_p4 = {{data_fu_112_p1[62:52]}};
assign zext_ln15_1_fu_257_p1 = mantissa_1_fu_247_p4;
assign zext_ln15_fu_140_p1 = mantissa_fu_130_p4;
assign zext_ln18_1_fu_301_p1 = $unsigned(sext_ln18_3_fu_297_p1);
assign zext_ln18_fu_184_p1 = $unsigned(sext_ln18_1_fu_180_p1);
assign zext_ln486_1_fu_261_p1 = xs_exp_1_fu_233_p4;
assign zext_ln486_fu_144_p1 = xs_exp_fu_116_p4;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_13_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 val_1,
 val_r,
 a,
 a_ap_vld,
 b,
 b_ap_vld,
 hcf_val_out,
 hcf_val_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 35'd1;
parameter ap_ST_fsm_pp0_stage1 = 35'd2;
parameter ap_ST_fsm_pp0_stage2 = 35'd4;
parameter ap_ST_fsm_pp0_stage3 = 35'd8;
parameter ap_ST_fsm_pp0_stage4 = 35'd16;
parameter ap_ST_fsm_pp0_stage5 = 35'd32;
parameter ap_ST_fsm_pp0_stage6 = 35'd64;
parameter ap_ST_fsm_pp0_stage7 = 35'd128;
parameter ap_ST_fsm_pp0_stage8 = 35'd256;
parameter ap_ST_fsm_pp0_stage9 = 35'd512;
parameter ap_ST_fsm_pp0_stage10 = 35'd1024;
parameter ap_ST_fsm_pp0_stage11 = 35'd2048;
parameter ap_ST_fsm_pp0_stage12 = 35'd4096;
parameter ap_ST_fsm_pp0_stage13 = 35'd8192;
parameter ap_ST_fsm_pp0_stage14 = 35'd16384;
parameter ap_ST_fsm_pp0_stage15 = 35'd32768;
parameter ap_ST_fsm_pp0_stage16 = 35'd65536;
parameter ap_ST_fsm_pp0_stage17 = 35'd131072;
parameter ap_ST_fsm_pp0_stage18 = 35'd262144;
parameter ap_ST_fsm_pp0_stage19 = 35'd524288;
parameter ap_ST_fsm_pp0_stage20 = 35'd1048576;
parameter ap_ST_fsm_pp0_stage21 = 35'd2097152;
parameter ap_ST_fsm_pp0_stage22 = 35'd4194304;
parameter ap_ST_fsm_pp0_stage23 = 35'd8388608;
parameter ap_ST_fsm_pp0_stage24 = 35'd16777216;
parameter ap_ST_fsm_pp0_stage25 = 35'd33554432;
parameter ap_ST_fsm_pp0_stage26 = 35'd67108864;
parameter ap_ST_fsm_pp0_stage27 = 35'd134217728;
parameter ap_ST_fsm_pp0_stage28 = 35'd268435456;
parameter ap_ST_fsm_pp0_stage29 = 35'd536870912;
parameter ap_ST_fsm_pp0_stage30 = 35'd1073741824;
parameter ap_ST_fsm_pp0_stage31 = 35'd2147483648;
parameter ap_ST_fsm_pp0_stage32 = 35'd4294967296;
parameter ap_ST_fsm_pp0_stage33 = 35'd8589934592;
parameter ap_ST_fsm_pp0_stage34 = 35'd17179869184;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] val_1;
input [31:0] val_r;
output [31:0] a;
output a_ap_vld;
output [31:0] b;
output b_ap_vld;
output [31:0] hcf_val_out;
output hcf_val_out_ap_vld;
reg ap_idle;
reg a_ap_vld;
reg b_ap_vld;
reg hcf_val_out_ap_vld;
(* fsm_encoding = "none" *) reg [34:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
reg ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_CS_fsm_pp0_stage1;
wire ap_block_pp0_stage1_subdone;
reg ap_enable_reg_pp0_iter0_reg;
wire [0:0] icmp_ln13_fu_99_p2;
reg ap_condition_exit_pp0_iter0_stage1;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_CS_fsm_pp0_stage34;
wire ap_block_pp0_stage34_subdone;
wire ap_block_pp0_stage0_11001;
reg [31:0] iter_2_reg_161;
wire ap_block_pp0_stage1_11001;
reg [31:0] iter_fu_28;
wire [31:0] iter_3_fu_123_p3;
reg [31:0] ap_sig_allocacmp_iter_2;
wire ap_block_pp0_stage1;
wire ap_loop_init;
reg [31:0] hcf_val_fu_32;
reg [31:0] empty_fu_36;
wire [31:0] grp_fu_105_p2;
reg [31:0] ap_sig_allocacmp_p_load;
wire ap_block_pp0_stage1_01001;
wire [0:0] icmp_ln17_fu_117_p2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [34:0] ap_NS_fsm;
wire ap_block_pp0_stage0_subdone;
reg ap_idle_pp0_1to1;
wire ap_block_pp0_stage2_subdone;
wire ap_block_pp0_stage3_subdone;
wire ap_block_pp0_stage4_subdone;
wire ap_block_pp0_stage5_subdone;
wire ap_block_pp0_stage6_subdone;
wire ap_block_pp0_stage7_subdone;
wire ap_block_pp0_stage8_subdone;
wire ap_block_pp0_stage9_subdone;
wire ap_block_pp0_stage10_subdone;
wire ap_block_pp0_stage11_subdone;
wire ap_block_pp0_stage12_subdone;
wire ap_block_pp0_stage13_subdone;
wire ap_block_pp0_stage14_subdone;
wire ap_block_pp0_stage15_subdone;
wire ap_block_pp0_stage16_subdone;
wire ap_block_pp0_stage17_subdone;
wire ap_block_pp0_stage18_subdone;
wire ap_block_pp0_stage19_subdone;
wire ap_block_pp0_stage20_subdone;
wire ap_block_pp0_stage21_subdone;
wire ap_block_pp0_stage22_subdone;
wire ap_block_pp0_stage23_subdone;
wire ap_block_pp0_stage24_subdone;
wire ap_block_pp0_stage25_subdone;
wire ap_block_pp0_stage26_subdone;
wire ap_block_pp0_stage27_subdone;
wire ap_block_pp0_stage28_subdone;
wire ap_block_pp0_stage29_subdone;
wire ap_block_pp0_stage30_subdone;
wire ap_block_pp0_stage31_subdone;
wire ap_block_pp0_stage32_subdone;
wire ap_block_pp0_stage33_subdone;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 35'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 iter_fu_28 = 32'd0;
#0 hcf_val_fu_32 = 32'd0;
#0 empty_fu_36 = 32'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_srem_32ns_32ns_32_36_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
srem_32ns_32ns_32_36_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(hcf_val_fu_32),
 .din1(ap_sig_allocacmp_p_load),
 .ce(1'b1),
 .dout(grp_fu_105_p2)
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
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter0_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
 ap_enable_reg_pp0_iter0_reg <= 1'b0;
 end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 ap_enable_reg_pp0_iter0_reg <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage34_subdone) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
 ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 empty_fu_36 <= val_1;
 end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 empty_fu_36 <= grp_fu_105_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 hcf_val_fu_32 <= val_r;
 end else if (((icmp_ln13_fu_99_p2 == 1'd0) & (ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 hcf_val_fu_32 <= ap_sig_allocacmp_p_load;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 iter_fu_28 <= 32'd1;
 end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 iter_fu_28 <= iter_3_fu_123_p3;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 iter_2_reg_161 <= ap_sig_allocacmp_iter_2;
 end
end
always @ (*) begin
 if (((icmp_ln13_fu_99_p2 == 1'd0) & (ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 a_ap_vld = 1'b1;
 end else begin
 a_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln13_fu_99_p2 == 1'd1) & (ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_condition_exit_pp0_iter0_stage1 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage1 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 ap_enable_reg_pp0_iter0 = ap_start_int;
 end else begin
 ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
 if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
 ap_idle_pp0 = 1'b1;
 end else begin
 ap_idle_pp0 = 1'b0;
 end
end
always @ (*) begin
 if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
 ap_idle_pp0_1to1 = 1'b1;
 end else begin
 ap_idle_pp0_1to1 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage34_subdone) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_sig_allocacmp_iter_2 = iter_3_fu_123_p3;
 end else begin
 ap_sig_allocacmp_iter_2 = iter_fu_28;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_sig_allocacmp_p_load = grp_fu_105_p2;
 end else begin
 ap_sig_allocacmp_p_load = empty_fu_36;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 b_ap_vld = 1'b1;
 end else begin
 b_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (icmp_ln13_fu_99_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 hcf_val_out_ap_vld = 1'b1;
 end else begin
 hcf_val_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_pp0_stage0 : begin
 if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end
 end
 ap_ST_fsm_pp0_stage1 : begin
 if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
 end
 end
 ap_ST_fsm_pp0_stage2 : begin
 if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage2;
 end
 end
 ap_ST_fsm_pp0_stage3 : begin
 if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage3;
 end
 end
 ap_ST_fsm_pp0_stage4 : begin
 if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage4;
 end
 end
 ap_ST_fsm_pp0_stage5 : begin
 if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage6;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage5;
 end
 end
 ap_ST_fsm_pp0_stage6 : begin
 if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage7;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage6;
 end
 end
 ap_ST_fsm_pp0_stage7 : begin
 if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage8;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage7;
 end
 end
 ap_ST_fsm_pp0_stage8 : begin
 if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage9;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage8;
 end
 end
 ap_ST_fsm_pp0_stage9 : begin
 if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage10;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage9;
 end
 end
 ap_ST_fsm_pp0_stage10 : begin
 if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage11;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage10;
 end
 end
 ap_ST_fsm_pp0_stage11 : begin
 if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage12;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage11;
 end
 end
 ap_ST_fsm_pp0_stage12 : begin
 if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage13;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage12;
 end
 end
 ap_ST_fsm_pp0_stage13 : begin
 if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage14;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage13;
 end
 end
 ap_ST_fsm_pp0_stage14 : begin
 if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage15;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage14;
 end
 end
 ap_ST_fsm_pp0_stage15 : begin
 if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage16;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage15;
 end
 end
 ap_ST_fsm_pp0_stage16 : begin
 if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage17;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage16;
 end
 end
 ap_ST_fsm_pp0_stage17 : begin
 if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage18;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage17;
 end
 end
 ap_ST_fsm_pp0_stage18 : begin
 if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage19;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage18;
 end
 end
 ap_ST_fsm_pp0_stage19 : begin
 if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage20;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage19;
 end
 end
 ap_ST_fsm_pp0_stage20 : begin
 if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage21;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage20;
 end
 end
 ap_ST_fsm_pp0_stage21 : begin
 if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage22;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage21;
 end
 end
 ap_ST_fsm_pp0_stage22 : begin
 if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage23;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage22;
 end
 end
 ap_ST_fsm_pp0_stage23 : begin
 if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage24;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage23;
 end
 end
 ap_ST_fsm_pp0_stage24 : begin
 if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage25;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage24;
 end
 end
 ap_ST_fsm_pp0_stage25 : begin
 if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage26;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage25;
 end
 end
 ap_ST_fsm_pp0_stage26 : begin
 if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage27;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage26;
 end
 end
 ap_ST_fsm_pp0_stage27 : begin
 if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage28;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage27;
 end
 end
 ap_ST_fsm_pp0_stage28 : begin
 if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage29;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage28;
 end
 end
 ap_ST_fsm_pp0_stage29 : begin
 if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage30;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage29;
 end
 end
 ap_ST_fsm_pp0_stage30 : begin
 if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage31;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage30;
 end
 end
 ap_ST_fsm_pp0_stage31 : begin
 if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage32;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage31;
 end
 end
 ap_ST_fsm_pp0_stage32 : begin
 if ((1'b0 == ap_block_pp0_stage32_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage33;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage32;
 end
 end
 ap_ST_fsm_pp0_stage33 : begin
 if ((1'b0 == ap_block_pp0_stage33_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage34;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage33;
 end
 end
 ap_ST_fsm_pp0_stage34 : begin
 if ((1'b0 == ap_block_pp0_stage34_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage34;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign a = ap_sig_allocacmp_p_load;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage34 = ap_CS_fsm[32'd34];
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign b = grp_fu_105_p2;
assign hcf_val_out = hcf_val_fu_32;
assign icmp_ln13_fu_99_p2 = ((ap_sig_allocacmp_iter_2 == 32'd0) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_117_p2 = ((grp_fu_105_p2 == 32'd0) ? 1'b1 : 1'b0);
assign iter_3_fu_123_p3 = ((icmp_ln17_fu_117_p2[0:0] == 1'b1) ? 32'd0 : iter_2_reg_161);
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
module entry_point_sitodp_32ns_64_2_no_dsp_1
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
module entry_point_srem_32ns_32ns_32_36_1_divider
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
 input [1:0] sign_i,
 output wire [1:0] sign_o,
 output wire [out_WIDTH-1:0] quot,
 output wire [out_WIDTH-1:0] remd
);
localparam cal_WIDTH = (in0_WIDTH > in1_WIDTH)? in0_WIDTH : in1_WIDTH;
reg [in0_WIDTH-1:0] dividend_tmp[0:in0_WIDTH];
reg [in1_WIDTH-1:0] divisor_tmp[0:in0_WIDTH];
reg [in0_WIDTH-1:0] remd_tmp[0:in0_WIDTH];
wire [in0_WIDTH-1:0] comb_tmp[0:in0_WIDTH-1];
wire [cal_WIDTH:0] cal_tmp[0:in0_WIDTH-1];
reg [1:0] sign_tmp[0:in0_WIDTH];
assign quot = dividend_tmp[in0_WIDTH];
assign remd = remd_tmp[in0_WIDTH];
assign sign_o = sign_tmp[in0_WIDTH];
always @(posedge clk)
begin
 if (ce) begin
 dividend_tmp[0] <= dividend;
 divisor_tmp[0] <= divisor;
 sign_tmp[0] <= sign_i;
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
 sign_tmp[i+1] <= sign_tmp[i];
 end
 end
 end
endgenerate
endmodule
module entry_point_srem_32ns_32ns_32_36_1
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
wire [1:0] sign_i;
wire [1:0] sign_o;
entry_point_srem_32ns_32ns_32_36_1_divider #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_srem_32ns_32ns_32_36_1_divider_u (
 .clk ( clk ),
 .reset ( reset ),
 .ce ( ce ),
 .dividend ( dividend_u ),
 .divisor ( divisor_u ),
 .sign_i ( sign_i ),
 .sign_o ( sign_o ),
 .quot ( quot_u ),
 .remd ( remd_u )
);
assign sign_i = {dividend0[din0_WIDTH-1] ^ divisor0[din1_WIDTH-1], dividend0[din0_WIDTH-1]};
assign dividend_u = dividend0[din0_WIDTH-1]? ~dividend0[din0_WIDTH-1:0] + 1'b1 :
 dividend0[din0_WIDTH-1:0];
assign divisor_u = divisor0[din1_WIDTH-1]? ~divisor0[din1_WIDTH-1:0] + 1'b1 :
 divisor0[din1_WIDTH-1:0];
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
 if (sign_o[1])
 quot <= ~quot_u + 1'b1;
 else
 quot <= quot_u;
 end
end
always @(posedge clk)
begin
 if (ce) begin
 if (sign_o[0])
 remd <= ~remd_u + 1'b1;
 else
 remd <= remd_u;
 end
end
assign dout = remd;
endmodule
