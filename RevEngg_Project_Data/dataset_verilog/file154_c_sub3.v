module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 operation,
 num1,
 num2,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 temptemp4,
 temptemp4_ap_vld,
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
input [7:0] operation;
input [31:0] num1;
input [31:0] num2;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] temptemp4;
output temptemp4_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
(* fsm_encoding = "none" *) reg [6:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [7:0] operation_read_read_fu_56_p2;
wire [31:0] bitcast_ln31_fu_119_p1;
wire [0:0] and_ln31_fu_157_p2;
reg [0:0] and_ln31_reg_227;
wire [31:0] bitcast_ln17_fu_178_p1;
wire [31:0] bitcast_ln17_1_fu_183_p1;
wire [31:0] bitcast_ln10_fu_188_p1;
wire [31:0] bitcast_ln10_1_fu_193_p1;
wire ap_CS_fsm_state6;
wire ap_CS_fsm_state7;
reg [31:0] grp_fu_102_p0;
reg [31:0] grp_fu_102_p1;
wire [31:0] grp_fu_106_p0;
wire [31:0] grp_fu_106_p1;
wire [31:0] grp_fu_110_p0;
wire [7:0] tmp_fu_125_p4;
wire [22:0] trunc_ln31_fu_135_p1;
wire [0:0] icmp_ln31_1_fu_145_p2;
wire [0:0] icmp_ln31_fu_139_p2;
wire [0:0] or_ln31_fu_151_p2;
wire [0:0] tmp_1_fu_114_p2;
wire [31:0] grp_fu_110_p2;
wire [31:0] grp_fu_106_p2;
wire [31:0] grp_fu_102_p2;
reg [1:0] grp_fu_102_opcode;
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
entry_point_faddfsub_32ns_32ns_32_2_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
faddfsub_32ns_32ns_32_2_full_dsp_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_102_p0),
 .din1(grp_fu_102_p1),
 .opcode(grp_fu_102_opcode),
 .ce(1'b1),
 .dout(grp_fu_102_p2)
);
entry_point_fmul_32ns_32ns_32_2_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U2(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_106_p0),
 .din1(grp_fu_106_p1),
 .ce(1'b1),
 .dout(grp_fu_106_p2)
);
entry_point_fdiv_32ns_32ns_32_6_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 6 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fdiv_32ns_32ns_32_6_no_dsp_1_U3(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_110_p0),
 .din1(bitcast_ln31_fu_119_p1),
 .ce(1'b1),
 .dout(grp_fu_110_p2)
);
entry_point_fcmp_32ns_32ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_1_no_dsp_1_U4(
 .din0(bitcast_ln31_fu_119_p1),
 .din1(32'd0),
 .opcode(5'd1),
 .dout(tmp_1_fu_114_p2)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if (((operation_read_read_fu_56_p2 == 8'd47) & (1'b1 == ap_CS_fsm_state1))) begin
 and_ln31_reg_227 <= and_ln31_fu_157_p2;
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
 if ((1'b1 == ap_CS_fsm_state6)) begin
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
 if ((1'b1 == ap_CS_fsm_state6)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 if ((operation_read_read_fu_56_p2 == 8'd45)) begin
 grp_fu_102_opcode = 2'd1;
 end else if ((operation_read_read_fu_56_p2 == 8'd43)) begin
 grp_fu_102_opcode = 2'd0;
 end else begin
 grp_fu_102_opcode = 'bx;
 end
 end else begin
 grp_fu_102_opcode = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 if ((operation_read_read_fu_56_p2 == 8'd43)) begin
 grp_fu_102_p0 = bitcast_ln10_fu_188_p1;
 end else if ((operation_read_read_fu_56_p2 == 8'd45)) begin
 grp_fu_102_p0 = bitcast_ln17_fu_178_p1;
 end else begin
 grp_fu_102_p0 = 'bx;
 end
 end else begin
 grp_fu_102_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 if ((operation_read_read_fu_56_p2 == 8'd43)) begin
 grp_fu_102_p1 = bitcast_ln10_1_fu_193_p1;
 end else if ((operation_read_read_fu_56_p2 == 8'd45)) begin
 grp_fu_102_p1 = bitcast_ln17_1_fu_183_p1;
 end else begin
 grp_fu_102_p1 = 'bx;
 end
 end else begin
 grp_fu_102_p1 = 'bx;
 end
end
always @ (*) begin
 if (((operation_read_read_fu_56_p2 == 8'd43) & (1'b1 == ap_CS_fsm_state7))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((operation_read_read_fu_56_p2 == 8'd45) & (1'b1 == ap_CS_fsm_state7))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((operation_read_read_fu_56_p2 == 8'd42) & (1'b1 == ap_CS_fsm_state7))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'd0 == and_ln31_reg_227) & (operation_read_read_fu_56_p2 == 8'd47) & (1'b1 == ap_CS_fsm_state6))) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((1'd0 == and_ln31_fu_157_p2) & (operation_read_read_fu_56_p2 == 8'd47) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((operation_read_read_fu_56_p2 == 8'd43) | ((operation_read_read_fu_56_p2 == 8'd45) | (operation_read_read_fu_56_p2 == 8'd42))))) begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((~(operation_read_read_fu_56_p2 == 8'd43) & ~(operation_read_read_fu_56_p2 == 8'd45) & ~(operation_read_read_fu_56_p2 == 8'd42) & ~(operation_read_read_fu_56_p2 == 8'd47)) | (~(operation_read_read_fu_56_p2 == 8'd43) & ~(operation_read_read_fu_56_p2 == 8'd45) & ~(operation_read_read_fu_56_p2 == 8'd42) & (1'd1 == and_ln31_fu_157_p2))))) begin
 ap_NS_fsm = ap_ST_fsm_state6;
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 ap_ST_fsm_state7 : begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign and_ln31_fu_157_p2 = (tmp_1_fu_114_p2 & or_ln31_fu_151_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_return = 32'd0;
assign bitcast_ln10_1_fu_193_p1 = num2;
assign bitcast_ln10_fu_188_p1 = num1;
assign bitcast_ln17_1_fu_183_p1 = num2;
assign bitcast_ln17_fu_178_p1 = num1;
assign bitcast_ln31_fu_119_p1 = num2;
assign grp_fu_106_p0 = num1;
assign grp_fu_106_p1 = num2;
assign grp_fu_110_p0 = num1;
assign icmp_ln31_1_fu_145_p2 = ((trunc_ln31_fu_135_p1 == 23'd0) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_139_p2 = ((tmp_fu_125_p4 != 8'd255) ? 1'b1 : 1'b0);
assign operation_read_read_fu_56_p2 = operation;
assign or_ln31_fu_151_p2 = (icmp_ln31_fu_139_p2 | icmp_ln31_1_fu_145_p2);
assign temptemp1 = grp_fu_102_p2;
assign temptemp2 = grp_fu_102_p2;
assign temptemp3 = grp_fu_106_p2;
assign temptemp4 = grp_fu_110_p2;
assign tmp_fu_125_p4 = {{num2[30:23]}};
assign trunc_ln31_fu_135_p1 = num2[22:0];
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
