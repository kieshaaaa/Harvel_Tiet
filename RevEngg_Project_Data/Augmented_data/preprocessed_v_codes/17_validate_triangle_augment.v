module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 side1,
 side2,
 side3,
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
input [31:0] side1;
input [31:0] side2;
input [31:0] side3;
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
wire [31:0] bitcast_ln7_fu_100_p1;
reg [31:0] bitcast_ln7_reg_361;
wire [31:0] bitcast_ln7_1_fu_106_p1;
reg [31:0] bitcast_ln7_1_reg_368;
wire [31:0] bitcast_ln7_2_fu_112_p1;
reg [31:0] bitcast_ln7_2_reg_375;
wire [0:0] icmp_ln7_2_fu_132_p2;
reg [0:0] icmp_ln7_2_reg_382;
wire [0:0] icmp_ln7_3_fu_138_p2;
reg [0:0] icmp_ln7_3_reg_387;
wire [0:0] icmp_ln7_6_fu_158_p2;
reg [0:0] icmp_ln7_6_reg_392;
wire [0:0] icmp_ln7_7_fu_164_p2;
reg [0:0] icmp_ln7_7_reg_397;
wire [0:0] icmp_ln8_2_fu_184_p2;
reg [0:0] icmp_ln8_2_reg_402;
wire [0:0] icmp_ln8_3_fu_190_p2;
reg [0:0] icmp_ln8_3_reg_407;
wire [31:0] grp_fu_76_p2;
reg [31:0] add_reg_412;
wire ap_CS_fsm_state2;
wire [31:0] grp_fu_80_p2;
reg [31:0] add1_reg_418;
wire [31:0] grp_fu_84_p2;
reg [31:0] add4_reg_424;
wire ap_CS_fsm_state3;
wire [0:0] and_ln7_1_fu_355_p2;
wire [7:0] tmp_2_fu_118_p4;
wire [22:0] trunc_ln7_1_fu_128_p1;
wire [7:0] tmp_5_fu_144_p4;
wire [22:0] trunc_ln7_3_fu_154_p1;
wire [7:0] tmp_8_fu_170_p4;
wire [22:0] trunc_ln8_1_fu_180_p1;
wire [31:0] bitcast_ln7_3_fu_196_p1;
wire [7:0] tmp_1_fu_199_p4;
wire [22:0] trunc_ln7_fu_209_p1;
wire [0:0] icmp_ln7_1_fu_219_p2;
wire [0:0] icmp_ln7_fu_213_p2;
wire [0:0] or_ln7_fu_225_p2;
wire [0:0] or_ln7_1_fu_231_p2;
wire [0:0] and_ln7_fu_235_p2;
wire [0:0] tmp_3_fu_88_p2;
wire [31:0] bitcast_ln7_4_fu_247_p1;
wire [7:0] tmp_4_fu_250_p4;
wire [22:0] trunc_ln7_2_fu_260_p1;
wire [0:0] icmp_ln7_5_fu_270_p2;
wire [0:0] icmp_ln7_4_fu_264_p2;
wire [0:0] or_ln7_2_fu_276_p2;
wire [0:0] or_ln7_3_fu_282_p2;
wire [0:0] and_ln7_3_fu_286_p2;
wire [0:0] tmp_6_fu_92_p2;
wire [31:0] bitcast_ln8_fu_298_p1;
wire [7:0] tmp_7_fu_301_p4;
wire [22:0] trunc_ln8_fu_311_p1;
wire [0:0] icmp_ln8_1_fu_321_p2;
wire [0:0] icmp_ln8_fu_315_p2;
wire [0:0] or_ln8_fu_327_p2;
wire [0:0] or_ln8_1_fu_333_p2;
wire [0:0] and_ln8_fu_337_p2;
wire [0:0] tmp_9_fu_96_p2;
wire [0:0] and_ln7_4_fu_292_p2;
wire [0:0] and_ln8_1_fu_343_p2;
wire [0:0] and_ln7_5_fu_349_p2;
wire [0:0] and_ln7_2_fu_241_p2;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
end
entry_point_fadd_32ns_32ns_32_2_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_2_full_dsp_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(bitcast_ln7_fu_100_p1),
 .din1(bitcast_ln7_1_fu_106_p1),
 .ce(1'b1),
 .dout(grp_fu_76_p2)
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
 .din0(bitcast_ln7_1_fu_106_p1),
 .din1(bitcast_ln7_2_fu_112_p1),
 .ce(1'b1),
 .dout(grp_fu_80_p2)
);
entry_point_fadd_32ns_32ns_32_2_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_2_full_dsp_1_U3(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(bitcast_ln7_fu_100_p1),
 .din1(bitcast_ln7_2_fu_112_p1),
 .ce(1'b1),
 .dout(grp_fu_84_p2)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U4(
 .din0(add_reg_412),
 .din1(bitcast_ln7_2_reg_375),
 .opcode(5'd2),
 .dout(tmp_3_fu_88_p2)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U5(
 .din0(add1_reg_418),
 .din1(bitcast_ln7_reg_361),
 .opcode(5'd2),
 .dout(tmp_6_fu_92_p2)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U6(
 .din0(add4_reg_424),
 .din1(bitcast_ln7_1_reg_368),
 .opcode(5'd2),
 .dout(tmp_9_fu_96_p2)
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
 add1_reg_418 <= grp_fu_80_p2;
 add4_reg_424 <= grp_fu_84_p2;
 add_reg_412 <= grp_fu_76_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 bitcast_ln7_1_reg_368 <= bitcast_ln7_1_fu_106_p1;
 bitcast_ln7_2_reg_375 <= bitcast_ln7_2_fu_112_p1;
 bitcast_ln7_reg_361 <= bitcast_ln7_fu_100_p1;
 icmp_ln7_2_reg_382 <= icmp_ln7_2_fu_132_p2;
 icmp_ln7_3_reg_387 <= icmp_ln7_3_fu_138_p2;
 icmp_ln7_6_reg_392 <= icmp_ln7_6_fu_158_p2;
 icmp_ln7_7_reg_397 <= icmp_ln7_7_fu_164_p2;
 icmp_ln8_2_reg_402 <= icmp_ln8_2_fu_184_p2;
 icmp_ln8_3_reg_407 <= icmp_ln8_3_fu_190_p2;
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
 if ((1'b1 == ap_CS_fsm_state3)) begin
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
 if ((1'b1 == ap_CS_fsm_state3)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((1'd1 == and_ln7_1_fu_355_p2) & (1'b1 == ap_CS_fsm_state3))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'd0 == and_ln7_1_fu_355_p2) & (1'b1 == ap_CS_fsm_state3))) begin
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
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign and_ln7_1_fu_355_p2 = (and_ln7_5_fu_349_p2 & and_ln7_2_fu_241_p2);
assign and_ln7_2_fu_241_p2 = (tmp_3_fu_88_p2 & and_ln7_fu_235_p2);
assign and_ln7_3_fu_286_p2 = (or_ln7_3_fu_282_p2 & or_ln7_2_fu_276_p2);
assign and_ln7_4_fu_292_p2 = (tmp_6_fu_92_p2 & and_ln7_3_fu_286_p2);
assign and_ln7_5_fu_349_p2 = (and_ln8_1_fu_343_p2 & and_ln7_4_fu_292_p2);
assign and_ln7_fu_235_p2 = (or_ln7_fu_225_p2 & or_ln7_1_fu_231_p2);
assign and_ln8_1_fu_343_p2 = (tmp_9_fu_96_p2 & and_ln8_fu_337_p2);
assign and_ln8_fu_337_p2 = (or_ln8_fu_327_p2 & or_ln8_1_fu_333_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign bitcast_ln7_1_fu_106_p1 = side2;
assign bitcast_ln7_2_fu_112_p1 = side3;
assign bitcast_ln7_3_fu_196_p1 = add_reg_412;
assign bitcast_ln7_4_fu_247_p1 = add1_reg_418;
assign bitcast_ln7_fu_100_p1 = side1;
assign bitcast_ln8_fu_298_p1 = add4_reg_424;
assign icmp_ln7_1_fu_219_p2 = ((trunc_ln7_fu_209_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln7_2_fu_132_p2 = ((tmp_2_fu_118_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln7_3_fu_138_p2 = ((trunc_ln7_1_fu_128_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln7_4_fu_264_p2 = ((tmp_4_fu_250_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln7_5_fu_270_p2 = ((trunc_ln7_2_fu_260_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln7_6_fu_158_p2 = ((tmp_5_fu_144_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln7_7_fu_164_p2 = ((trunc_ln7_3_fu_154_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_213_p2 = ((tmp_1_fu_199_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln8_1_fu_321_p2 = ((trunc_ln8_fu_311_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln8_2_fu_184_p2 = ((tmp_8_fu_170_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln8_3_fu_190_p2 = ((trunc_ln8_1_fu_180_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_315_p2 = ((tmp_7_fu_301_p4 != 8'd255) ? 1'b1 : 1'b0);
assign or_ln7_1_fu_231_p2 = (icmp_ln7_3_reg_387 | icmp_ln7_2_reg_382);
assign or_ln7_2_fu_276_p2 = (icmp_ln7_5_fu_270_p2 | icmp_ln7_4_fu_264_p2);
assign or_ln7_3_fu_282_p2 = (icmp_ln7_7_reg_397 | icmp_ln7_6_reg_392);
assign or_ln7_fu_225_p2 = (icmp_ln7_fu_213_p2 | icmp_ln7_1_fu_219_p2);
assign or_ln8_1_fu_333_p2 = (icmp_ln8_3_reg_407 | icmp_ln8_2_reg_402);
assign or_ln8_fu_327_p2 = (icmp_ln8_fu_315_p2 | icmp_ln8_1_fu_321_p2);
assign temptemp1 = 32'd1;
assign temptemp2 = 32'd0;
assign tmp_1_fu_199_p4 = {{bitcast_ln7_3_fu_196_p1[30:23]}};
assign tmp_2_fu_118_p4 = {{side3[30:23]}};
assign tmp_4_fu_250_p4 = {{bitcast_ln7_4_fu_247_p1[30:23]}};
assign tmp_5_fu_144_p4 = {{side1[30:23]}};
assign tmp_7_fu_301_p4 = {{bitcast_ln8_fu_298_p1[30:23]}};
assign tmp_8_fu_170_p4 = {{side2[30:23]}};
assign trunc_ln7_1_fu_128_p1 = side3[22:0];
assign trunc_ln7_2_fu_260_p1 = bitcast_ln7_4_fu_247_p1[22:0];
assign trunc_ln7_3_fu_154_p1 = side1[22:0];
assign trunc_ln7_fu_209_p1 = bitcast_ln7_3_fu_196_p1[22:0];
assign trunc_ln8_1_fu_180_p1 = side2[22:0];
assign trunc_ln8_fu_311_p1 = bitcast_ln8_fu_298_p1[22:0];
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
