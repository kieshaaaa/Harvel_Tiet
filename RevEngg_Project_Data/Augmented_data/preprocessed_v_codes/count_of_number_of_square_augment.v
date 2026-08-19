module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 max_num,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 13'd1;
parameter ap_ST_fsm_state2 = 13'd2;
parameter ap_ST_fsm_state3 = 13'd4;
parameter ap_ST_fsm_state4 = 13'd8;
parameter ap_ST_fsm_state5 = 13'd16;
parameter ap_ST_fsm_state6 = 13'd32;
parameter ap_ST_fsm_state7 = 13'd64;
parameter ap_ST_fsm_state8 = 13'd128;
parameter ap_ST_fsm_state9 = 13'd256;
parameter ap_ST_fsm_state10 = 13'd512;
parameter ap_ST_fsm_state11 = 13'd1024;
parameter ap_ST_fsm_state12 = 13'd2048;
parameter ap_ST_fsm_state13 = 13'd4096;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] max_num;
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
(* fsm_encoding = "none" *) reg [12:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [63:0] grp_fu_77_p1;
reg [63:0] conv_reg_227;
wire ap_CS_fsm_state2;
wire [63:0] grp_fu_81_p2;
reg [63:0] dc_reg_232;
wire ap_CS_fsm_state12;
wire ap_CS_fsm_state13;
wire ap_CS_fsm_state3;
wire [63:0] data_fu_86_p1;
wire [51:0] trunc_ln505_fu_105_p1;
wire [53:0] mantissa_fu_109_p4;
wire [10:0] xs_exp_fu_97_p3;
wire [11:0] zext_ln486_fu_123_p1;
wire [11:0] add_ln486_fu_127_p2;
wire [10:0] sub_ln18_fu_141_p2;
wire [0:0] tmp_fu_133_p3;
wire signed [11:0] sext_ln18_fu_147_p1;
wire [11:0] select_ln18_fu_151_p3;
wire signed [31:0] sext_ln18_1_fu_159_p1;
wire [136:0] zext_ln15_fu_119_p1;
wire [136:0] zext_ln18_fu_163_p1;
wire [136:0] lshr_ln18_fu_167_p2;
wire [136:0] shl_ln18_fu_173_p2;
wire [31:0] tmp_1_fu_179_p4;
wire [31:0] tmp_2_fu_189_p4;
wire [31:0] val_fu_199_p3;
wire [0:0] xs_sign_fu_89_p3;
wire [31:0] result_2_fu_207_p2;
reg [12:0] ap_NS_fsm;
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
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 13'd1;
end
entry_point_sitodp_32ns_64_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
sitodp_32ns_64_2_no_dsp_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(max_num),
 .ce(1'b1),
 .dout(grp_fu_77_p1)
);
entry_point_dsqrt_64ns_64ns_64_10_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 10 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_10_no_dsp_1_U2(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(64'd0),
 .din1(conv_reg_227),
 .ce(1'b1),
 .dout(grp_fu_81_p2)
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
 conv_reg_227 <= grp_fu_77_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state12)) begin
 dc_reg_232 <= grp_fu_81_p2;
 end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
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
 if ((1'b1 == ap_CS_fsm_state13)) begin
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
 if ((1'b1 == ap_CS_fsm_state13)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state13)) begin
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln486_fu_127_p2 = ($signed(zext_ln486_fu_123_p1) + $signed(12'd3073));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign data_fu_86_p1 = dc_reg_232;
assign lshr_ln18_fu_167_p2 = zext_ln15_fu_119_p1 >> zext_ln18_fu_163_p1;
assign mantissa_fu_109_p4 = {{{{1'd1}, {trunc_ln505_fu_105_p1}}}, {1'd0}};
assign result_2_fu_207_p2 = (32'd0 - val_fu_199_p3);
assign select_ln18_fu_151_p3 = ((tmp_fu_133_p3[0:0] == 1'b1) ? sext_ln18_fu_147_p1 : add_ln486_fu_127_p2);
assign sext_ln18_1_fu_159_p1 = $signed(select_ln18_fu_151_p3);
assign sext_ln18_fu_147_p1 = $signed(sub_ln18_fu_141_p2);
assign shl_ln18_fu_173_p2 = zext_ln15_fu_119_p1 << zext_ln18_fu_163_p1;
assign sub_ln18_fu_141_p2 = (11'd1023 - xs_exp_fu_97_p3);
assign temptemp1 = max_num;
assign temptemp2 = ((xs_sign_fu_89_p3[0:0] == 1'b1) ? result_2_fu_207_p2 : val_fu_199_p3);
assign tmp_1_fu_179_p4 = {{lshr_ln18_fu_167_p2[84:53]}};
assign tmp_2_fu_189_p4 = {{shl_ln18_fu_173_p2[84:53]}};
assign tmp_fu_133_p3 = add_ln486_fu_127_p2[32'd11];
assign trunc_ln505_fu_105_p1 = data_fu_86_p1[51:0];
assign val_fu_199_p3 = ((tmp_fu_133_p3[0:0] == 1'b1) ? tmp_1_fu_179_p4 : tmp_2_fu_189_p4);
assign xs_exp_fu_97_p3 = {{data_fu_86_p1[62:52]}};
assign xs_sign_fu_89_p3 = data_fu_86_p1[32'd63];
assign zext_ln15_fu_119_p1 = mantissa_fu_109_p4;
assign zext_ln18_fu_163_p1 = $unsigned(sext_ln18_1_fu_159_p1);
assign zext_ln486_fu_123_p1 = xs_exp_fu_97_p3;
endmodule
module entry_point_dsqrt_64ns_64ns_64_10_no_dsp_1
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
wire r_tvalid;
wire [dout_WIDTH-1:0] r_tdata;
reg [din1_WIDTH-1:0] din1_buf1;
reg ce_r;
wire [dout_WIDTH-1:0] dout_i;
reg [dout_WIDTH-1:0] dout_r;
                                                                                                                                                                                                                                                                              assign aclk = clk;
assign aclken = ce_r;
assign a_tvalid = 1'b1;
assign a_tdata = din1_buf1;
assign dout_i = r_tdata;
always @(posedge clk) begin
 if (ce) begin
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
