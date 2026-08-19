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
 num2_i,
 num2_o,
 num2_o_ap_vld,
 temptemp1,
 temptemp1_ap_vld,
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
input [31:0] num1_i;
output [31:0] num1_o;
output num1_o_ap_vld;
input [31:0] num2_i;
output [31:0] num2_o;
output num2_o_ap_vld;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg num1_o_ap_vld;
reg num2_o_ap_vld;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] val_fu_220_p3;
reg [31:0] val_reg_370;
wire ap_CS_fsm_state2;
wire [31:0] val_1_fu_339_p3;
reg [31:0] val_1_reg_375;
wire grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_p_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_p_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_ap_start_reg;
wire ap_CS_fsm_state3;
wire ap_CS_fsm_state4;
wire [63:0] grp_fu_102_p1;
wire [63:0] data_V_fu_110_p1;
wire [51:0] p_Result_1_fu_124_p1;
wire [53:0] mantissa_fu_128_p4;
wire [10:0] p_Result_s_fu_114_p4;
wire [11:0] zext_ln515_fu_142_p1;
wire [11:0] add_ln515_fu_146_p2;
wire [10:0] sub_ln1512_fu_160_p2;
wire [0:0] isNeg_fu_152_p3;
wire signed [11:0] sext_ln1512_fu_166_p1;
wire [11:0] ush_fu_170_p3;
wire signed [31:0] sext_ln1488_fu_178_p1;
wire [136:0] zext_ln15_fu_138_p1;
wire [136:0] zext_ln1488_fu_182_p1;
wire [136:0] r_V_fu_186_p2;
wire [0:0] tmp_fu_198_p3;
wire [136:0] r_V_1_fu_192_p2;
wire [31:0] zext_ln818_fu_206_p1;
wire [31:0] tmp_1_fu_210_p4;
wire [63:0] grp_fu_106_p1;
wire [63:0] data_V_1_fu_229_p1;
wire [51:0] p_Result_3_fu_243_p1;
wire [53:0] mantissa_1_fu_247_p4;
wire [10:0] p_Result_2_fu_233_p4;
wire [11:0] zext_ln515_1_fu_261_p1;
wire [11:0] add_ln515_1_fu_265_p2;
wire [10:0] sub_ln1512_1_fu_279_p2;
wire [0:0] isNeg_1_fu_271_p3;
wire signed [11:0] sext_ln1512_1_fu_285_p1;
wire [11:0] ush_1_fu_289_p3;
wire signed [31:0] sext_ln1488_1_fu_297_p1;
wire [136:0] zext_ln15_1_fu_257_p1;
wire [136:0] zext_ln1488_1_fu_301_p1;
wire [136:0] r_V_2_fu_305_p2;
wire [0:0] tmp_5_fu_317_p3;
wire [136:0] r_V_3_fu_311_p2;
wire [31:0] zext_ln818_1_fu_325_p1;
wire [31:0] tmp_4_fu_329_p4;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_8_1 grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_ap_ready),
 .val_1(val_1_reg_375),
 .val_r(val_reg_370),
 .p_out(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_p_out),
 .p_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_p_out_ap_vld)
);
entry_point_sitodp_32ns_64_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
sitodp_32ns_64_2_no_dsp_1_U4(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(num1_i),
 .ce(1'b1),
 .dout(grp_fu_102_p1)
);
entry_point_sitodp_32ns_64_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
sitodp_32ns_64_2_no_dsp_1_U5(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(num2_i),
 .ce(1'b1),
 .dout(grp_fu_106_p1)
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
 grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 val_1_reg_375 <= val_1_fu_339_p3;
 val_reg_370 <= val_fu_220_p3;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_ap_done == 1'b0)) begin
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
 if ((1'b1 == ap_CS_fsm_state4)) begin
 num1_o_ap_vld = 1'b1;
 end else begin
 num1_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 num2_o_ap_vld = 1'b1;
 end else begin
 num2_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
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
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
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
assign add_ln515_1_fu_265_p2 = ($signed(zext_ln515_1_fu_261_p1) + $signed(12'd3073));
assign add_ln515_fu_146_p2 = ($signed(zext_ln515_fu_142_p1) + $signed(12'd3073));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_return = 32'd0;
assign data_V_1_fu_229_p1 = grp_fu_106_p1;
assign data_V_fu_110_p1 = grp_fu_102_p1;
assign grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_ap_start_reg;
assign isNeg_1_fu_271_p3 = add_ln515_1_fu_265_p2[32'd11];
assign isNeg_fu_152_p3 = add_ln515_fu_146_p2[32'd11];
assign mantissa_1_fu_247_p4 = {{{{1'd1}, {p_Result_3_fu_243_p1}}}, {1'd0}};
assign mantissa_fu_128_p4 = {{{{1'd1}, {p_Result_1_fu_124_p1}}}, {1'd0}};
assign num1_o = grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_p_out;
assign num2_o = grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_p_out;
assign p_Result_1_fu_124_p1 = data_V_fu_110_p1[51:0];
assign p_Result_2_fu_233_p4 = {{data_V_1_fu_229_p1[62:52]}};
assign p_Result_3_fu_243_p1 = data_V_1_fu_229_p1[51:0];
assign p_Result_s_fu_114_p4 = {{data_V_fu_110_p1[62:52]}};
assign r_V_1_fu_192_p2 = zext_ln15_fu_138_p1 << zext_ln1488_fu_182_p1;
assign r_V_2_fu_305_p2 = zext_ln15_1_fu_257_p1 >> zext_ln1488_1_fu_301_p1;
assign r_V_3_fu_311_p2 = zext_ln15_1_fu_257_p1 << zext_ln1488_1_fu_301_p1;
assign r_V_fu_186_p2 = zext_ln15_fu_138_p1 >> zext_ln1488_fu_182_p1;
assign sext_ln1488_1_fu_297_p1 = $signed(ush_1_fu_289_p3);
assign sext_ln1488_fu_178_p1 = $signed(ush_fu_170_p3);
assign sext_ln1512_1_fu_285_p1 = $signed(sub_ln1512_1_fu_279_p2);
assign sext_ln1512_fu_166_p1 = $signed(sub_ln1512_fu_160_p2);
assign sub_ln1512_1_fu_279_p2 = (11'd1023 - p_Result_2_fu_233_p4);
assign sub_ln1512_fu_160_p2 = (11'd1023 - p_Result_s_fu_114_p4);
assign temptemp1 = grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_95_p_out;
assign tmp_1_fu_210_p4 = {{r_V_1_fu_192_p2[84:53]}};
assign tmp_4_fu_329_p4 = {{r_V_3_fu_311_p2[84:53]}};
assign tmp_5_fu_317_p3 = r_V_2_fu_305_p2[32'd53];
assign tmp_fu_198_p3 = r_V_fu_186_p2[32'd53];
assign ush_1_fu_289_p3 = ((isNeg_1_fu_271_p3[0:0] == 1'b1) ? sext_ln1512_1_fu_285_p1 : add_ln515_1_fu_265_p2);
assign ush_fu_170_p3 = ((isNeg_fu_152_p3[0:0] == 1'b1) ? sext_ln1512_fu_166_p1 : add_ln515_fu_146_p2);
assign val_1_fu_339_p3 = ((isNeg_1_fu_271_p3[0:0] == 1'b1) ? zext_ln818_1_fu_325_p1 : tmp_4_fu_329_p4);
assign val_fu_220_p3 = ((isNeg_fu_152_p3[0:0] == 1'b1) ? zext_ln818_fu_206_p1 : tmp_1_fu_210_p4);
assign zext_ln1488_1_fu_301_p1 = $unsigned(sext_ln1488_1_fu_297_p1);
assign zext_ln1488_fu_182_p1 = $unsigned(sext_ln1488_fu_178_p1);
assign zext_ln15_1_fu_257_p1 = mantissa_1_fu_247_p4;
assign zext_ln15_fu_138_p1 = mantissa_fu_128_p4;
assign zext_ln515_1_fu_261_p1 = p_Result_2_fu_233_p4;
assign zext_ln515_fu_142_p1 = p_Result_s_fu_114_p4;
assign zext_ln818_1_fu_325_p1 = tmp_5_fu_317_p3;
assign zext_ln818_fu_206_p1 = tmp_fu_198_p3;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_8_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 val_1,
 val_r,
 p_out,
 p_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] val_1;
input [31:0] val_r;
output [31:0] p_out;
output p_out_ap_vld;
reg ap_idle;
reg p_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln8_fu_68_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [31:0] empty_fu_24;
wire [31:0] select_ln9_1_fu_100_p3;
wire ap_block_pp0_stage0_11001;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg [31:0] empty_9_fu_28;
wire [31:0] select_ln9_fu_92_p3;
wire ap_block_pp0_stage0_01001;
wire [0:0] icmp_ln9_fu_74_p2;
wire [31:0] sub_ln12_fu_80_p2;
wire [31:0] sub_ln10_fu_86_p2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
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
 empty_9_fu_28 <= val_1;
 end else if (((icmp_ln8_fu_68_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 empty_9_fu_28 <= select_ln9_fu_92_p3;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 empty_fu_24 <= val_r;
 end else if (((icmp_ln8_fu_68_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 empty_fu_24 <= select_ln9_1_fu_100_p3;
 end
 end
end
always @ (*) begin
 if (((icmp_ln8_fu_68_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln8_fu_68_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 p_out_ap_vld = 1'b1;
 end else begin
 p_out_ap_vld = 1'b0;
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
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign icmp_ln8_fu_68_p2 = ((empty_fu_24 == empty_9_fu_28) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_74_p2 = (($signed(empty_fu_24) > $signed(empty_9_fu_28)) ? 1'b1 : 1'b0);
assign p_out = empty_9_fu_28;
assign select_ln9_1_fu_100_p3 = ((icmp_ln9_fu_74_p2[0:0] == 1'b1) ? sub_ln10_fu_86_p2 : empty_fu_24);
assign select_ln9_fu_92_p3 = ((icmp_ln9_fu_74_p2[0:0] == 1'b1) ? empty_9_fu_28 : sub_ln12_fu_80_p2);
assign sub_ln10_fu_86_p2 = (empty_fu_24 - empty_9_fu_28);
assign sub_ln12_fu_80_p2 = (empty_9_fu_28 - empty_fu_24);
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
