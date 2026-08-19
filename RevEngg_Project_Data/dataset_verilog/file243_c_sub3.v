module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 num,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 9'd1;
parameter ap_ST_fsm_state2 = 9'd2;
parameter ap_ST_fsm_state3 = 9'd4;
parameter ap_ST_fsm_state4 = 9'd8;
parameter ap_ST_fsm_state5 = 9'd16;
parameter ap_ST_fsm_state6 = 9'd32;
parameter ap_ST_fsm_state7 = 9'd64;
parameter ap_ST_fsm_state8 = 9'd128;
parameter ap_ST_fsm_state9 = 9'd256;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] num;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [8:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] grp_fu_84_p1;
reg [31:0] conv_reg_259;
wire ap_CS_fsm_state2;
wire [31:0] grp_fu_79_p2;
reg [31:0] temp_reg_264;
wire ap_CS_fsm_state8;
wire ap_CS_fsm_state9;
wire ap_CS_fsm_state3;
wire [31:0] data_V_fu_88_p1;
wire [22:0] p_Result_1_fu_109_p1;
wire [24:0] mantissa_fu_113_p4;
wire [7:0] xs_exp_V_fu_99_p4;
wire [8:0] zext_ln346_fu_127_p1;
wire [8:0] add_ln346_fu_131_p2;
wire [7:0] sub_ln1512_fu_145_p2;
wire [0:0] isNeg_fu_137_p3;
wire signed [8:0] sext_ln1512_fu_151_p1;
wire [8:0] ush_fu_155_p3;
wire signed [31:0] sext_ln1488_fu_163_p1;
wire [78:0] zext_ln15_fu_123_p1;
wire [78:0] zext_ln1488_fu_167_p1;
wire [78:0] r_V_fu_171_p2;
wire [0:0] tmp_fu_183_p3;
wire [78:0] r_V_1_fu_177_p2;
wire [30:0] zext_ln818_fu_191_p1;
wire [30:0] tmp_1_fu_195_p4;
wire [30:0] val_fu_205_p3;
wire [0:0] p_Result_s_fu_91_p3;
wire [30:0] result_V_2_fu_213_p2;
wire [30:0] result_V_fu_219_p3;
wire [28:0] trunc_ln7_fu_227_p1;
wire [31:0] shl_ln7_fu_231_p3;
wire [31:0] shl_ln7_1_fu_239_p3;
reg [8:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ST_fsm_state6_blk;
wire ap_ST_fsm_state7_blk;
wire ap_ST_fsm_state8_blk;
wire ap_ST_fsm_state9_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
end
entry_point_fdiv_32ns_32ns_32_6_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 6 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fdiv_32ns_32ns_32_6_no_dsp_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(conv_reg_259),
 .din1(32'd1092616192),
 .ce(1'b1),
 .dout(grp_fu_79_p2)
);
entry_point_sitofp_32ns_32_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
sitofp_32ns_32_2_no_dsp_1_U2(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(num),
 .ce(1'b1),
 .dout(grp_fu_84_p1)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 conv_reg_259 <= grp_fu_84_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state8)) begin
 temp_reg_264 <= grp_fu_79_p2;
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
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state9)) begin
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
 if ((1'b1 == ap_CS_fsm_state9)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state9)) begin
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln346_fu_131_p2 = ($signed(zext_ln346_fu_127_p1) + $signed(9'd385));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign data_V_fu_88_p1 = temp_reg_264;
assign isNeg_fu_137_p3 = add_ln346_fu_131_p2[32'd8];
assign mantissa_fu_113_p4 = {{{{1'd1}, {p_Result_1_fu_109_p1}}}, {1'd0}};
assign p_Result_1_fu_109_p1 = data_V_fu_88_p1[22:0];
assign p_Result_s_fu_91_p3 = data_V_fu_88_p1[32'd31];
assign r_V_1_fu_177_p2 = zext_ln15_fu_123_p1 << zext_ln1488_fu_167_p1;
assign r_V_fu_171_p2 = zext_ln15_fu_123_p1 >> zext_ln1488_fu_167_p1;
assign result_V_2_fu_213_p2 = (31'd0 - val_fu_205_p3);
assign result_V_fu_219_p3 = ((p_Result_s_fu_91_p3[0:0] == 1'b1) ? result_V_2_fu_213_p2 : val_fu_205_p3);
assign sext_ln1488_fu_163_p1 = $signed(ush_fu_155_p3);
assign sext_ln1512_fu_151_p1 = $signed(sub_ln1512_fu_145_p2);
assign shl_ln7_1_fu_239_p3 = {{result_V_fu_219_p3}, {1'd0}};
assign shl_ln7_fu_231_p3 = {{trunc_ln7_fu_227_p1}, {3'd0}};
assign sub_ln1512_fu_145_p2 = (8'd127 - xs_exp_V_fu_99_p4);
assign temptemp1 = (shl_ln7_fu_231_p3 + shl_ln7_1_fu_239_p3);
assign tmp_1_fu_195_p4 = {{r_V_1_fu_177_p2[54:24]}};
assign tmp_fu_183_p3 = r_V_fu_171_p2[32'd24];
assign trunc_ln7_fu_227_p1 = result_V_fu_219_p3[28:0];
assign ush_fu_155_p3 = ((isNeg_fu_137_p3[0:0] == 1'b1) ? sext_ln1512_fu_151_p1 : add_ln346_fu_131_p2);
assign val_fu_205_p3 = ((isNeg_fu_137_p3[0:0] == 1'b1) ? zext_ln818_fu_191_p1 : tmp_1_fu_195_p4);
assign xs_exp_V_fu_99_p4 = {{data_V_fu_88_p1[30:23]}};
assign zext_ln1488_fu_167_p1 = $unsigned(sext_ln1488_fu_163_p1);
assign zext_ln15_fu_123_p1 = mantissa_fu_113_p4;
assign zext_ln346_fu_127_p1 = xs_exp_V_fu_99_p4;
assign zext_ln818_fu_191_p1 = tmp_fu_183_p3;
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
