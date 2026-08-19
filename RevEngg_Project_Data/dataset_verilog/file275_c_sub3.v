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
parameter ap_ST_fsm_state1 = 7'd1;
parameter ap_ST_fsm_state2 = 7'd2;
parameter ap_ST_fsm_state3 = 7'd4;
parameter ap_ST_fsm_state4 = 7'd8;
parameter ap_ST_fsm_state5 = 7'd16;
parameter ap_ST_fsm_state6 = 7'd32;
parameter ap_ST_fsm_state7 = 7'd64;
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
(* fsm_encoding = "none" *) reg [6:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] grp_fu_100_p1;
reg [31:0] reg_104;
wire ap_CS_fsm_state2;
wire ap_CS_fsm_state4;
wire [31:0] grp_fu_95_p2;
reg [31:0] reg_110;
wire ap_CS_fsm_state6;
wire [0:0] icmp_ln6_fu_115_p2;
reg [0:0] icmp_ln6_reg_278;
wire [31:0] add_ln10_fu_121_p2;
wire ap_CS_fsm_state3;
reg [0:0] ap_phi_mux_retval_0_phi_fu_87_p4;
reg [0:0] retval_0_reg_83;
wire ap_CS_fsm_state7;
reg [31:0] grp_fu_95_p0;
reg [31:0] grp_fu_95_p1;
wire ap_CS_fsm_state5;
reg [31:0] grp_fu_100_p0;
wire [31:0] data_V_fu_127_p1;
wire [22:0] p_Result_1_fu_149_p1;
wire [24:0] mantissa_fu_153_p4;
wire [7:0] xs_exp_V_fu_139_p4;
wire [8:0] zext_ln346_fu_167_p1;
wire [8:0] add_ln346_fu_171_p2;
wire [7:0] sub_ln1512_fu_185_p2;
wire [0:0] isNeg_fu_177_p3;
wire signed [8:0] sext_ln1512_fu_191_p1;
wire [8:0] ush_fu_195_p3;
wire signed [31:0] sext_ln1488_fu_203_p1;
wire [78:0] zext_ln15_fu_163_p1;
wire [78:0] zext_ln1488_fu_207_p1;
wire [78:0] r_V_fu_211_p2;
wire [0:0] tmp_fu_223_p3;
wire [78:0] r_V_1_fu_217_p2;
wire [31:0] zext_ln818_fu_231_p1;
wire [31:0] tmp_1_fu_235_p4;
wire [31:0] val_fu_245_p3;
wire [0:0] p_Result_s_fu_131_p3;
wire [31:0] result_V_2_fu_253_p2;
reg [6:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ST_fsm_state6_blk;
wire ap_ST_fsm_state7_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
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
 .din0(grp_fu_95_p0),
 .din1(grp_fu_95_p1),
 .ce(1'b1),
 .dout(grp_fu_95_p2)
);
entry_point_sitofp_32ns_32_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
sitofp_32ns_32_2_no_dsp_1_U2(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_100_p0),
 .ce(1'b1),
 .dout(grp_fu_100_p1)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln6_fu_115_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 retval_0_reg_83 <= 1'd1;
 end else if (((icmp_ln6_reg_278 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
 retval_0_reg_83 <= 1'd0;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln6_reg_278 <= icmp_ln6_fu_115_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
 reg_104 <= grp_fu_100_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4))) begin
 reg_110 <= grp_fu_95_p2;
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
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
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
 if (((icmp_ln6_reg_278 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
 ap_phi_mux_retval_0_phi_fu_87_p4 = 1'd0;
 end else begin
 ap_phi_mux_retval_0_phi_fu_87_p4 = retval_0_reg_83;
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
 if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_fu_100_p0 = add_ln10_fu_121_p2;
 end else if ((1'b1 == ap_CS_fsm_state1)) begin
 grp_fu_100_p0 = n;
 end else begin
 grp_fu_100_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 grp_fu_95_p0 = reg_110;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_fu_95_p0 = reg_104;
 end else begin
 grp_fu_95_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 grp_fu_95_p1 = reg_104;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_fu_95_p1 = 32'd1056964608;
 end else begin
 grp_fu_95_p1 = 'bx;
 end
end
always @ (*) begin
 if (((icmp_ln6_fu_115_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln6_reg_278 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((icmp_ln6_fu_115_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end else if (((icmp_ln6_fu_115_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln10_fu_121_p2 = (n + 32'd1);
assign add_ln346_fu_171_p2 = ($signed(zext_ln346_fu_167_p1) + $signed(9'd385));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_return = ap_phi_mux_retval_0_phi_fu_87_p4;
assign data_V_fu_127_p1 = reg_110;
assign icmp_ln6_fu_115_p2 = (($signed(n) < $signed(32'd1)) ? 1'b1 : 1'b0);
assign isNeg_fu_177_p3 = add_ln346_fu_171_p2[32'd8];
assign mantissa_fu_153_p4 = {{{{1'd1}, {p_Result_1_fu_149_p1}}}, {1'd0}};
assign p_Result_1_fu_149_p1 = data_V_fu_127_p1[22:0];
assign p_Result_s_fu_131_p3 = data_V_fu_127_p1[32'd31];
assign r_V_1_fu_217_p2 = zext_ln15_fu_163_p1 << zext_ln1488_fu_207_p1;
assign r_V_fu_211_p2 = zext_ln15_fu_163_p1 >> zext_ln1488_fu_207_p1;
assign result_V_2_fu_253_p2 = (32'd0 - val_fu_245_p3);
assign sext_ln1488_fu_203_p1 = $signed(ush_fu_195_p3);
assign sext_ln1512_fu_191_p1 = $signed(sub_ln1512_fu_185_p2);
assign sub_ln1512_fu_185_p2 = (8'd127 - xs_exp_V_fu_139_p4);
assign temptemp1 = n;
assign temptemp2 = ((p_Result_s_fu_131_p3[0:0] == 1'b1) ? result_V_2_fu_253_p2 : val_fu_245_p3);
assign tmp_1_fu_235_p4 = {{r_V_1_fu_217_p2[55:24]}};
assign tmp_fu_223_p3 = r_V_fu_211_p2[32'd24];
assign ush_fu_195_p3 = ((isNeg_fu_177_p3[0:0] == 1'b1) ? sext_ln1512_fu_191_p1 : add_ln346_fu_171_p2);
assign val_fu_245_p3 = ((isNeg_fu_177_p3[0:0] == 1'b1) ? zext_ln818_fu_231_p1 : tmp_1_fu_235_p4);
assign xs_exp_V_fu_139_p4 = {{data_V_fu_127_p1[30:23]}};
assign zext_ln1488_fu_207_p1 = $unsigned(sext_ln1488_fu_203_p1);
assign zext_ln15_fu_163_p1 = mantissa_fu_153_p4;
assign zext_ln346_fu_167_p1 = xs_exp_V_fu_139_p4;
assign zext_ln818_fu_231_p1 = tmp_fu_223_p3;
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
