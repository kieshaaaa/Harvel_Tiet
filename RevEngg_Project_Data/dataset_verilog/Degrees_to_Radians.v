module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 degrees,
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
input [63:0] degrees;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [4:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [0:0] p_Result_s_reg_224;
wire ap_CS_fsm_state4;
wire [31:0] val_fu_199_p3;
reg [31:0] val_reg_229;
wire ap_CS_fsm_state5;
wire [63:0] grp_fu_71_p0;
wire [63:0] grp_fu_71_p2;
wire [63:0] data_V_fu_81_p1;
wire [51:0] p_Result_1_fu_103_p1;
wire [53:0] mantissa_fu_107_p4;
wire [10:0] xs_exp_V_fu_93_p4;
wire [11:0] zext_ln515_fu_121_p1;
wire [11:0] add_ln515_fu_125_p2;
wire [10:0] sub_ln1512_fu_139_p2;
wire [0:0] isNeg_fu_131_p3;
wire signed [11:0] sext_ln1512_fu_145_p1;
wire [11:0] ush_fu_149_p3;
wire signed [31:0] sext_ln1488_fu_157_p1;
wire [136:0] zext_ln15_fu_117_p1;
wire [136:0] zext_ln1488_fu_161_p1;
wire [136:0] r_V_fu_165_p2;
wire [0:0] tmp_fu_177_p3;
wire [136:0] r_V_1_fu_171_p2;
wire [31:0] zext_ln818_fu_185_p1;
wire [31:0] tmp_1_fu_189_p4;
wire [31:0] result_V_2_fu_207_p2;
reg [4:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
end
entry_point_dmul_64ns_64ns_64_4_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dmul_64ns_64ns_64_4_max_dsp_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_71_p0),
 .din1(64'd4580685240192403797),
 .ce(1'b1),
 .dout(grp_fu_71_p2)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 p_Result_s_reg_224 <= data_V_fu_81_p1[32'd63];
 val_reg_229 <= val_fu_199_p3;
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
 ap_NS_fsm = ap_ST_fsm_state5;
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln515_fu_125_p2 = ($signed(zext_ln515_fu_121_p1) + $signed(12'd3073));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_return = 32'd0;
assign data_V_fu_81_p1 = grp_fu_71_p2;
assign grp_fu_71_p0 = degrees;
assign isNeg_fu_131_p3 = add_ln515_fu_125_p2[32'd11];
assign mantissa_fu_107_p4 = {{{{1'd1}, {p_Result_1_fu_103_p1}}}, {1'd0}};
assign p_Result_1_fu_103_p1 = data_V_fu_81_p1[51:0];
assign r_V_1_fu_171_p2 = zext_ln15_fu_117_p1 << zext_ln1488_fu_161_p1;
assign r_V_fu_165_p2 = zext_ln15_fu_117_p1 >> zext_ln1488_fu_161_p1;
assign result_V_2_fu_207_p2 = (32'd0 - val_reg_229);
assign sext_ln1488_fu_157_p1 = $signed(ush_fu_149_p3);
assign sext_ln1512_fu_145_p1 = $signed(sub_ln1512_fu_139_p2);
assign sub_ln1512_fu_139_p2 = (11'd1023 - xs_exp_V_fu_93_p4);
assign temptemp1 = ((p_Result_s_reg_224[0:0] == 1'b1) ? result_V_2_fu_207_p2 : val_reg_229);
assign tmp_1_fu_189_p4 = {{r_V_1_fu_171_p2[84:53]}};
assign tmp_fu_177_p3 = r_V_fu_165_p2[32'd53];
assign ush_fu_149_p3 = ((isNeg_fu_131_p3[0:0] == 1'b1) ? sext_ln1512_fu_145_p1 : add_ln515_fu_125_p2);
assign val_fu_199_p3 = ((isNeg_fu_131_p3[0:0] == 1'b1) ? zext_ln818_fu_185_p1 : tmp_1_fu_189_p4);
assign xs_exp_V_fu_93_p4 = {{data_V_fu_81_p1[62:52]}};
assign zext_ln1488_fu_161_p1 = $unsigned(sext_ln1488_fu_157_p1);
assign zext_ln15_fu_117_p1 = mantissa_fu_107_p4;
assign zext_ln515_fu_121_p1 = xs_exp_V_fu_93_p4;
assign zext_ln818_fu_185_p1 = tmp_fu_177_p3;
endmodule
module entry_point_dmul_64ns_64ns_64_4_max_dsp_1
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
wire [din0_WIDTH-1:0] a_tdata;
wire b_tvalid;
wire [din1_WIDTH-1:0] b_tdata;
wire r_tvalid;
wire [dout_WIDTH-1:0] r_tdata;
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
