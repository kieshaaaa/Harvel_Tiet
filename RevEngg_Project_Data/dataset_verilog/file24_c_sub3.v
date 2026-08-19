module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 a,
 b,
 c,
 d,
 e,
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
input [31:0] a;
input [31:0] b;
input [31:0] c;
input [31:0] d;
input [31:0] e;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] max_2_fu_169_p3;
reg [31:0] max_2_reg_455;
wire [31:0] max_4_fu_261_p3;
reg [31:0] max_4_reg_462;
wire ap_CS_fsm_state2;
wire [31:0] max_6_fu_352_p3;
reg [31:0] max_6_reg_469;
wire ap_CS_fsm_state3;
wire ap_CS_fsm_state4;
reg [31:0] grp_fu_79_p0;
wire [31:0] max_1_fu_88_p1;
wire [31:0] max_3_fu_177_p1;
wire [31:0] max_5_fu_268_p1;
wire [31:0] max_7_fu_359_p1;
reg [31:0] grp_fu_79_p1;
wire [31:0] max_fu_83_p1;
wire [7:0] tmp_fu_93_p4;
wire [22:0] trunc_ln7_fu_103_p1;
wire [0:0] icmp_ln7_1_fu_127_p2;
wire [0:0] icmp_ln7_fu_121_p2;
wire [7:0] tmp_1_fu_107_p4;
wire [22:0] trunc_ln7_1_fu_117_p1;
wire [0:0] icmp_ln7_3_fu_145_p2;
wire [0:0] icmp_ln7_2_fu_139_p2;
wire [0:0] or_ln7_fu_133_p2;
wire [0:0] or_ln7_1_fu_151_p2;
wire [0:0] and_ln7_fu_157_p2;
wire [0:0] grp_fu_79_p2;
wire [0:0] and_ln7_1_fu_163_p2;
wire [31:0] bitcast_ln8_1_fu_196_p1;
wire [7:0] tmp_3_fu_182_p4;
wire [22:0] trunc_ln8_fu_192_p1;
wire [0:0] icmp_ln8_1_fu_219_p2;
wire [0:0] icmp_ln8_fu_213_p2;
wire [7:0] tmp_4_fu_199_p4;
wire [22:0] trunc_ln8_1_fu_209_p1;
wire [0:0] icmp_ln8_3_fu_237_p2;
wire [0:0] icmp_ln8_2_fu_231_p2;
wire [0:0] or_ln8_fu_225_p2;
wire [0:0] or_ln8_1_fu_243_p2;
wire [0:0] and_ln8_fu_249_p2;
wire [0:0] and_ln8_1_fu_255_p2;
wire [31:0] bitcast_ln9_1_fu_287_p1;
wire [7:0] tmp_6_fu_273_p4;
wire [22:0] trunc_ln9_fu_283_p1;
wire [0:0] icmp_ln9_1_fu_310_p2;
wire [0:0] icmp_ln9_fu_304_p2;
wire [7:0] tmp_7_fu_290_p4;
wire [22:0] trunc_ln9_1_fu_300_p1;
wire [0:0] icmp_ln9_3_fu_328_p2;
wire [0:0] icmp_ln9_2_fu_322_p2;
wire [0:0] or_ln9_fu_316_p2;
wire [0:0] or_ln9_1_fu_334_p2;
wire [0:0] and_ln9_fu_340_p2;
wire [0:0] and_ln9_1_fu_346_p2;
wire [31:0] bitcast_ln10_1_fu_378_p1;
wire [7:0] tmp_9_fu_364_p4;
wire [22:0] trunc_ln10_fu_374_p1;
wire [0:0] icmp_ln10_1_fu_401_p2;
wire [0:0] icmp_ln10_fu_395_p2;
wire [7:0] tmp_s_fu_381_p4;
wire [22:0] trunc_ln10_1_fu_391_p1;
wire [0:0] icmp_ln10_3_fu_419_p2;
wire [0:0] icmp_ln10_2_fu_413_p2;
wire [0:0] or_ln10_fu_407_p2;
wire [0:0] or_ln10_1_fu_425_p2;
wire [0:0] and_ln10_fu_431_p2;
wire [0:0] and_ln10_1_fu_437_p2;
wire [31:0] max_8_fu_443_p3;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
end
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U1(
 .din0(grp_fu_79_p0),
 .din1(grp_fu_79_p1),
 .opcode(5'd2),
 .dout(grp_fu_79_p2)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 max_2_reg_455 <= max_2_fu_169_p3;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 max_4_reg_462 <= max_4_fu_261_p3;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 max_6_reg_469 <= max_6_fu_352_p3;
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
 grp_fu_79_p0 = max_7_fu_359_p1;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_fu_79_p0 = max_5_fu_268_p1;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_79_p0 = max_3_fu_177_p1;
 end else if ((1'b1 == ap_CS_fsm_state1)) begin
 grp_fu_79_p0 = max_1_fu_88_p1;
 end else begin
 grp_fu_79_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 grp_fu_79_p1 = max_6_reg_469;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_fu_79_p1 = max_4_reg_462;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_79_p1 = max_2_reg_455;
 end else if ((1'b1 == ap_CS_fsm_state1)) begin
 grp_fu_79_p1 = max_fu_83_p1;
 end else begin
 grp_fu_79_p1 = 'bx;
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
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign and_ln10_1_fu_437_p2 = (grp_fu_79_p2 & and_ln10_fu_431_p2);
assign and_ln10_fu_431_p2 = (or_ln10_fu_407_p2 & or_ln10_1_fu_425_p2);
assign and_ln7_1_fu_163_p2 = (grp_fu_79_p2 & and_ln7_fu_157_p2);
assign and_ln7_fu_157_p2 = (or_ln7_fu_133_p2 & or_ln7_1_fu_151_p2);
assign and_ln8_1_fu_255_p2 = (grp_fu_79_p2 & and_ln8_fu_249_p2);
assign and_ln8_fu_249_p2 = (or_ln8_fu_225_p2 & or_ln8_1_fu_243_p2);
assign and_ln9_1_fu_346_p2 = (grp_fu_79_p2 & and_ln9_fu_340_p2);
assign and_ln9_fu_340_p2 = (or_ln9_fu_316_p2 & or_ln9_1_fu_334_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_return = 32'd0;
assign bitcast_ln10_1_fu_378_p1 = max_6_reg_469;
assign bitcast_ln8_1_fu_196_p1 = max_2_reg_455;
assign bitcast_ln9_1_fu_287_p1 = max_4_reg_462;
assign icmp_ln10_1_fu_401_p2 = ((trunc_ln10_fu_374_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln10_2_fu_413_p2 = ((tmp_s_fu_381_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln10_3_fu_419_p2 = ((trunc_ln10_1_fu_391_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln10_fu_395_p2 = ((tmp_9_fu_364_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln7_1_fu_127_p2 = ((trunc_ln7_fu_103_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln7_2_fu_139_p2 = ((tmp_1_fu_107_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln7_3_fu_145_p2 = ((trunc_ln7_1_fu_117_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_121_p2 = ((tmp_fu_93_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln8_1_fu_219_p2 = ((trunc_ln8_fu_192_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln8_2_fu_231_p2 = ((tmp_4_fu_199_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln8_3_fu_237_p2 = ((trunc_ln8_1_fu_209_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_213_p2 = ((tmp_3_fu_182_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln9_1_fu_310_p2 = ((trunc_ln9_fu_283_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln9_2_fu_322_p2 = ((tmp_7_fu_290_p4 != 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln9_3_fu_328_p2 = ((trunc_ln9_1_fu_300_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_304_p2 = ((tmp_6_fu_273_p4 != 8'd255) ? 1'b1 : 1'b0);
assign max_1_fu_88_p1 = b;
assign max_2_fu_169_p3 = ((and_ln7_1_fu_163_p2[0:0] == 1'b1) ? max_1_fu_88_p1 : max_fu_83_p1);
assign max_3_fu_177_p1 = c;
assign max_4_fu_261_p3 = ((and_ln8_1_fu_255_p2[0:0] == 1'b1) ? max_3_fu_177_p1 : max_2_reg_455);
assign max_5_fu_268_p1 = d;
assign max_6_fu_352_p3 = ((and_ln9_1_fu_346_p2[0:0] == 1'b1) ? max_5_fu_268_p1 : max_4_reg_462);
assign max_7_fu_359_p1 = e;
assign max_8_fu_443_p3 = ((and_ln10_1_fu_437_p2[0:0] == 1'b1) ? max_7_fu_359_p1 : max_6_reg_469);
assign max_fu_83_p1 = a;
assign or_ln10_1_fu_425_p2 = (icmp_ln10_3_fu_419_p2 | icmp_ln10_2_fu_413_p2);
assign or_ln10_fu_407_p2 = (icmp_ln10_fu_395_p2 | icmp_ln10_1_fu_401_p2);
assign or_ln7_1_fu_151_p2 = (icmp_ln7_3_fu_145_p2 | icmp_ln7_2_fu_139_p2);
assign or_ln7_fu_133_p2 = (icmp_ln7_fu_121_p2 | icmp_ln7_1_fu_127_p2);
assign or_ln8_1_fu_243_p2 = (icmp_ln8_3_fu_237_p2 | icmp_ln8_2_fu_231_p2);
assign or_ln8_fu_225_p2 = (icmp_ln8_fu_213_p2 | icmp_ln8_1_fu_219_p2);
assign or_ln9_1_fu_334_p2 = (icmp_ln9_3_fu_328_p2 | icmp_ln9_2_fu_322_p2);
assign or_ln9_fu_316_p2 = (icmp_ln9_fu_304_p2 | icmp_ln9_1_fu_310_p2);
assign temptemp1 = max_8_fu_443_p3;
assign tmp_1_fu_107_p4 = {{a[30:23]}};
assign tmp_3_fu_182_p4 = {{c[30:23]}};
assign tmp_4_fu_199_p4 = {{bitcast_ln8_1_fu_196_p1[30:23]}};
assign tmp_6_fu_273_p4 = {{d[30:23]}};
assign tmp_7_fu_290_p4 = {{bitcast_ln9_1_fu_287_p1[30:23]}};
assign tmp_9_fu_364_p4 = {{e[30:23]}};
assign tmp_fu_93_p4 = {{b[30:23]}};
assign tmp_s_fu_381_p4 = {{bitcast_ln10_1_fu_378_p1[30:23]}};
assign trunc_ln10_1_fu_391_p1 = bitcast_ln10_1_fu_378_p1[22:0];
assign trunc_ln10_fu_374_p1 = e[22:0];
assign trunc_ln7_1_fu_117_p1 = a[22:0];
assign trunc_ln7_fu_103_p1 = b[22:0];
assign trunc_ln8_1_fu_209_p1 = bitcast_ln8_1_fu_196_p1[22:0];
assign trunc_ln8_fu_192_p1 = c[22:0];
assign trunc_ln9_1_fu_300_p1 = bitcast_ln9_1_fu_287_p1[22:0];
assign trunc_ln9_fu_283_p1 = d[22:0];
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
