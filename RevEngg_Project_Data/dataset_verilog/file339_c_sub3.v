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
 c_i,
 c_o,
 c_o_ap_vld,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 temptemp4,
 temptemp4_ap_vld,
 temptemp5,
 temptemp5_ap_vld,
 temptemp6,
 temptemp6_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 14'd1;
parameter ap_ST_fsm_state2 = 14'd2;
parameter ap_ST_fsm_state3 = 14'd4;
parameter ap_ST_fsm_state4 = 14'd8;
parameter ap_ST_fsm_state5 = 14'd16;
parameter ap_ST_fsm_state6 = 14'd32;
parameter ap_ST_fsm_state7 = 14'd64;
parameter ap_ST_fsm_state8 = 14'd128;
parameter ap_ST_fsm_state9 = 14'd256;
parameter ap_ST_fsm_state10 = 14'd512;
parameter ap_ST_fsm_state11 = 14'd1024;
parameter ap_ST_fsm_state12 = 14'd2048;
parameter ap_ST_fsm_state13 = 14'd4096;
parameter ap_ST_fsm_state14 = 14'd8192;
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
input [31:0] c_i;
output [31:0] c_o;
output c_o_ap_vld;
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
output [31:0] temptemp6;
output temptemp6_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_o_ap_vld;
reg b_o_ap_vld;
reg c_o_ap_vld;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
reg temptemp5_ap_vld;
reg temptemp6_ap_vld;
(* fsm_encoding = "none" *) reg [13:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] grp_fu_122_p2;
reg [31:0] reg_130;
wire ap_CS_fsm_state2;
wire ap_CS_fsm_state4;
reg [31:0] reg_135;
wire ap_CS_fsm_state6;
wire ap_CS_fsm_state12;
reg [31:0] reg_140;
wire ap_CS_fsm_state8;
wire ap_CS_fsm_state10;
wire [31:0] bitcast_ln9_fu_146_p1;
wire [31:0] bitcast_ln10_fu_151_p1;
reg [31:0] bitcast_ln10_reg_185;
wire [31:0] bitcast_ln11_fu_156_p1;
wire ap_CS_fsm_state3;
wire [31:0] grp_fu_126_p2;
reg [31:0] add2_reg_198;
wire [31:0] bitcast_ln15_fu_162_p1;
wire [31:0] bitcast_ln16_fu_168_p1;
wire [31:0] bitcast_ln17_fu_174_p1;
wire ap_CS_fsm_state14;
reg [31:0] grp_fu_122_p0;
reg [31:0] grp_fu_122_p1;
wire ap_CS_fsm_state5;
wire ap_CS_fsm_state7;
wire ap_CS_fsm_state9;
wire ap_CS_fsm_state11;
wire ap_CS_fsm_state13;
wire [31:0] grp_fu_126_p1;
reg [1:0] grp_fu_122_opcode;
reg [13:0] ap_NS_fsm;
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
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
end
entry_point_faddfsub_32ns_32ns_32_2_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
faddfsub_32ns_32ns_32_2_full_dsp_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_122_p0),
 .din1(grp_fu_122_p1),
 .opcode(grp_fu_122_opcode),
 .ce(1'b1),
 .dout(grp_fu_122_p2)
);
entry_point_fadd_32ns_32ns_32_2_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_2_full_dsp_1_U2(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(bitcast_ln10_reg_185),
 .din1(grp_fu_126_p1),
 .ce(1'b1),
 .dout(grp_fu_126_p2)
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
 add2_reg_198 <= grp_fu_126_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 bitcast_ln10_reg_185 <= bitcast_ln10_fu_151_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
 reg_130 <= grp_fu_122_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state6))) begin
 reg_135 <= grp_fu_122_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8))) begin
 reg_140 <= grp_fu_122_p2;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
 a_o_ap_vld = 1'b1;
 end else begin
 a_o_ap_vld = 1'b0;
 end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
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
 if ((1'b1 == ap_CS_fsm_state14)) begin
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
 if ((1'b1 == ap_CS_fsm_state14)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state10)) begin
 b_o_ap_vld = 1'b1;
 end else begin
 b_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 c_o_ap_vld = 1'b1;
 end else begin
 c_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5))) begin
 grp_fu_122_opcode = 2'd1;
 end else if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
 grp_fu_122_opcode = 2'd0;
 end else begin
 grp_fu_122_opcode = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state11)) begin
 grp_fu_122_p0 = reg_140;
 end else if ((1'b1 == ap_CS_fsm_state7)) begin
 grp_fu_122_p0 = bitcast_ln10_reg_185;
 end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3))) begin
 grp_fu_122_p0 = reg_130;
 end else if ((1'b1 == ap_CS_fsm_state1)) begin
 grp_fu_122_p0 = bitcast_ln9_fu_146_p1;
 end else begin
 grp_fu_122_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state9)) begin
 grp_fu_122_p1 = reg_140;
 end else if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state7))) begin
 grp_fu_122_p1 = reg_135;
 end else if ((1'b1 == ap_CS_fsm_state5)) begin
 grp_fu_122_p1 = add2_reg_198;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_fu_122_p1 = bitcast_ln11_fu_156_p1;
 end else if ((1'b1 == ap_CS_fsm_state1)) begin
 grp_fu_122_p1 = bitcast_ln10_fu_151_p1;
 end else begin
 grp_fu_122_p1 = 'bx;
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
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state10)) begin
 temptemp5_ap_vld = 1'b1;
 end else begin
 temptemp5_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 temptemp6_ap_vld = 1'b1;
 end else begin
 temptemp6_ap_vld = 1'b0;
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
 ap_NS_fsm = ap_ST_fsm_state14;
 end
 ap_ST_fsm_state14 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign a_o = bitcast_ln17_fu_174_p1;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign b_o = bitcast_ln16_fu_168_p1;
assign bitcast_ln10_fu_151_p1 = b_i;
assign bitcast_ln11_fu_156_p1 = c_i;
assign bitcast_ln15_fu_162_p1 = grp_fu_122_p2;
assign bitcast_ln16_fu_168_p1 = grp_fu_122_p2;
assign bitcast_ln17_fu_174_p1 = grp_fu_122_p2;
assign bitcast_ln9_fu_146_p1 = a_i;
assign c_o = bitcast_ln15_fu_162_p1;
assign grp_fu_126_p1 = c_i;
assign temptemp1 = a_i;
assign temptemp2 = b_i;
assign temptemp3 = c_i;
assign temptemp4 = bitcast_ln17_fu_174_p1;
assign temptemp5 = bitcast_ln16_fu_168_p1;
assign temptemp6 = bitcast_ln15_fu_162_p1;
endmodule
module entry_point_fadd_32ns_32ns_32_2_full_dsp_1
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
module entry_point_faddfsub_32ns_32ns_32_2_full_dsp_1
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
 input wire [1:0] opcode,
 output wire [dout_WIDTH-1:0] dout
);
wire a_tvalid;
wire [din0_WIDTH-1:0] a_tdata;
wire b_tvalid;
wire [din1_WIDTH-1:0] b_tdata;
wire op_tvalid;
wire [7:0] op_tdata;
wire r_tvalid;
wire [dout_WIDTH-1:0] r_tdata;
reg [din0_WIDTH-1:0] din0_buf1;
reg [din1_WIDTH-1:0] din1_buf1;
reg [1:0] opcode_buf1;
reg ce_r;
wire [dout_WIDTH-1:0] dout_i;
reg [dout_WIDTH-1:0] dout_r;
                                                                                                                                                                                                                                                                                                                                                                                              assign a_tvalid = 1'b1;
assign a_tdata = din0_buf1;
assign b_tvalid = 1'b1;
assign b_tdata = din1_buf1;
assign op_tvalid = 1'b1;
assign op_tdata = {6'b0, opcode_buf1};
assign dout_i = r_tdata;
always @(posedge clk) begin
 if (ce) begin
 din0_buf1 <= din0;
 din1_buf1 <= din1;
 opcode_buf1 <= opcode;
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
