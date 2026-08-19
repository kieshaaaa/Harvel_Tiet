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
 ap_return
);
parameter ap_ST_fsm_state1 = 15'd1;
parameter ap_ST_fsm_state2 = 15'd2;
parameter ap_ST_fsm_state3 = 15'd4;
parameter ap_ST_fsm_state4 = 15'd8;
parameter ap_ST_fsm_state5 = 15'd16;
parameter ap_ST_fsm_state6 = 15'd32;
parameter ap_ST_fsm_state7 = 15'd64;
parameter ap_ST_fsm_state8 = 15'd128;
parameter ap_ST_fsm_state9 = 15'd256;
parameter ap_ST_fsm_state10 = 15'd512;
parameter ap_ST_fsm_state11 = 15'd1024;
parameter ap_ST_fsm_state12 = 15'd2048;
parameter ap_ST_fsm_state13 = 15'd4096;
parameter ap_ST_fsm_state14 = 15'd8192;
parameter ap_ST_fsm_state15 = 15'd16384;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [14:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] number_fu_87_p2;
reg [31:0] number_reg_140;
wire ap_CS_fsm_state2;
wire [0:0] icmp_ln11_fu_104_p2;
reg [0:0] icmp_ln11_reg_148;
wire [63:0] grp_fu_71_p1;
reg [63:0] conv2_reg_152;
wire ap_CS_fsm_state3;
wire [63:0] grp_fu_74_p2;
reg [63:0] tmp_reg_157;
wire ap_CS_fsm_state13;
reg [10:0] tmp_2_reg_163;
wire ap_CS_fsm_state14;
wire [51:0] trunc_ln17_fu_124_p1;
reg [51:0] trunc_ln17_reg_168;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_ready;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_return;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_grp_fu_71_p_din0;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_grp_fu_71_p_ce;
reg grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_start_reg;
wire ap_CS_fsm_state15;
reg [31:0] number_0_in_fu_46;
reg ap_block_state15_on_subcall_done;
reg [31:0] grp_fu_71_p0;
wire ap_CS_fsm_state4;
wire [30:0] tmp_5_fu_94_p4;
wire [63:0] bitcast_ln17_fu_110_p1;
reg grp_fu_71_ce;
reg [14:0] ap_NS_fsm;
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
reg ap_ST_fsm_state15_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 15'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_start_reg = 1'b0;
#0 number_0_in_fu_46 = 32'd0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_17_2 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_ready),
 .tmp_2(tmp_2_reg_163),
 .empty(trunc_ln17_reg_168),
 .tmp(tmp_reg_157),
 .number(number_reg_140),
 .ap_return(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_return),
 .grp_fu_71_p_din0(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_grp_fu_71_p_din0),
 .grp_fu_71_p_dout0(grp_fu_71_p1),
 .grp_fu_71_p_ce(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_grp_fu_71_p_ce)
);
entry_point_sitodp_32ns_64_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
sitodp_32ns_64_2_no_dsp_1_U10(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_71_p0),
 .ce(grp_fu_71_ce),
 .dout(grp_fu_71_p1)
);
entry_point_dsqrt_64ns_64ns_64_10_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 10 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dsqrt_64ns_64ns_64_10_no_dsp_1_U11(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(64'd0),
 .din1(conv2_reg_152),
 .ce(1'b1),
 .dout(grp_fu_74_p2)
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
 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 number_0_in_fu_46 <= n;
 end else if (((1'b1 == ap_CS_fsm_state15) & (1'b0 == ap_block_state15_on_subcall_done) & ((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_return == 1'd0) | (icmp_ln11_reg_148 == 1'd1)))) begin
 number_0_in_fu_46 <= number_reg_140;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 conv2_reg_152 <= grp_fu_71_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 icmp_ln11_reg_148 <= icmp_ln11_fu_104_p2;
 number_reg_140 <= number_fu_87_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
 tmp_2_reg_163 <= {{bitcast_ln17_fu_110_p1[62:52]}};
 trunc_ln17_reg_168 <= trunc_ln17_fu_124_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state13)) begin
 tmp_reg_157 <= grp_fu_74_p2;
 end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_block_state15_on_subcall_done)) begin
 ap_ST_fsm_state15_blk = 1'b1;
 end else begin
 ap_ST_fsm_state15_blk = 1'b0;
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_return == 1'd1) & (icmp_ln11_reg_148 == 1'd0) & (1'b1 == ap_CS_fsm_state15) & (1'b0 == ap_block_state15_on_subcall_done))) begin
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_return == 1'd1) & (icmp_ln11_reg_148 == 1'd0) & (1'b1 == ap_CS_fsm_state15) & (1'b0 == ap_block_state15_on_subcall_done))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state15)) begin
 grp_fu_71_ce = grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_grp_fu_71_p_ce;
 end else begin
 grp_fu_71_ce = 1'b1;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state15)) begin
 grp_fu_71_p0 = grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_grp_fu_71_p_din0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_71_p0 = number_fu_87_p2;
 end else begin
 grp_fu_71_p0 = 'bx;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_return == 1'd1) & (icmp_ln11_reg_148 == 1'd0) & (1'b1 == ap_CS_fsm_state15) & (1'b0 == ap_block_state15_on_subcall_done))) begin
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
 if (((icmp_ln11_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state15;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
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
 ap_NS_fsm = ap_ST_fsm_state15;
 end
 ap_ST_fsm_state15 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_return == 1'd1) & (icmp_ln11_reg_148 == 1'd0) & (1'b1 == ap_CS_fsm_state15) & (1'b0 == ap_block_state15_on_subcall_done))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else if (((1'b1 == ap_CS_fsm_state15) & (1'b0 == ap_block_state15_on_subcall_done) & ((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_return == 1'd0) | (icmp_ln11_reg_148 == 1'd1)))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state15;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
always @ (*) begin
 ap_block_state15_on_subcall_done = ((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_done == 1'b0) & (icmp_ln11_reg_148 == 1'd0));
end
assign ap_return = 32'd0;
assign bitcast_ln17_fu_110_p1 = tmp_reg_157;
assign grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_63_ap_start_reg;
assign icmp_ln11_fu_104_p2 = (($signed(tmp_5_fu_94_p4) < $signed(31'd1)) ? 1'b1 : 1'b0);
assign number_fu_87_p2 = (number_0_in_fu_46 + 32'd1);
assign temptemp1 = number_reg_140;
assign tmp_5_fu_94_p4 = {{number_fu_87_p2[31:1]}};
assign trunc_ln17_fu_124_p1 = bitcast_ln17_fu_110_p1[51:0];
endmodule
module entry_point_dcmp_64ns_64ns_1_1_no_dsp_1
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
wire [din0_WIDTH-1:0] a_tdata;
wire b_tvalid;
wire [din1_WIDTH-1:0] b_tdata;
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
module entry_point_entry_point_Pipeline_VITIS_LOOP_17_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 tmp_2,
 empty,
 tmp,
 number,
 ap_return,
 grp_fu_71_p_din0,
 grp_fu_71_p_dout0,
 grp_fu_71_p_ce
);
parameter ap_ST_fsm_state1 = 38'd1;
parameter ap_ST_fsm_state2 = 38'd2;
parameter ap_ST_fsm_state3 = 38'd4;
parameter ap_ST_fsm_state4 = 38'd8;
parameter ap_ST_fsm_state5 = 38'd16;
parameter ap_ST_fsm_state6 = 38'd32;
parameter ap_ST_fsm_state7 = 38'd64;
parameter ap_ST_fsm_state8 = 38'd128;
parameter ap_ST_fsm_state9 = 38'd256;
parameter ap_ST_fsm_state10 = 38'd512;
parameter ap_ST_fsm_state11 = 38'd1024;
parameter ap_ST_fsm_state12 = 38'd2048;
parameter ap_ST_fsm_state13 = 38'd4096;
parameter ap_ST_fsm_state14 = 38'd8192;
parameter ap_ST_fsm_state15 = 38'd16384;
parameter ap_ST_fsm_state16 = 38'd32768;
parameter ap_ST_fsm_state17 = 38'd65536;
parameter ap_ST_fsm_state18 = 38'd131072;
parameter ap_ST_fsm_state19 = 38'd262144;
parameter ap_ST_fsm_state20 = 38'd524288;
parameter ap_ST_fsm_state21 = 38'd1048576;
parameter ap_ST_fsm_state22 = 38'd2097152;
parameter ap_ST_fsm_state23 = 38'd4194304;
parameter ap_ST_fsm_state24 = 38'd8388608;
parameter ap_ST_fsm_state25 = 38'd16777216;
parameter ap_ST_fsm_state26 = 38'd33554432;
parameter ap_ST_fsm_state27 = 38'd67108864;
parameter ap_ST_fsm_state28 = 38'd134217728;
parameter ap_ST_fsm_state29 = 38'd268435456;
parameter ap_ST_fsm_state30 = 38'd536870912;
parameter ap_ST_fsm_state31 = 38'd1073741824;
parameter ap_ST_fsm_state32 = 38'd2147483648;
parameter ap_ST_fsm_state33 = 38'd4294967296;
parameter ap_ST_fsm_state34 = 38'd8589934592;
parameter ap_ST_fsm_state35 = 38'd17179869184;
parameter ap_ST_fsm_state36 = 38'd34359738368;
parameter ap_ST_fsm_state37 = 38'd68719476736;
parameter ap_ST_fsm_state38 = 38'd137438953472;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [10:0] tmp_2;
input [51:0] empty;
input [63:0] tmp;
input [31:0] number;
output [0:0] ap_return;
output [31:0] grp_fu_71_p_din0;
input [63:0] grp_fu_71_p_dout0;
output grp_fu_71_p_ce;
reg ap_idle;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg [37:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire ap_CS_fsm_state38;
wire [0:0] icmp_ln18_fu_175_p2;
reg [0:0] and_ln17_1_reg_231;
reg ap_condition_exit_pp0_iter0_stage37;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [0:0] merge_reg_76;
reg ap_block_state1_pp0_stage0_iter0;
reg [31:0] j_2_reg_208;
wire [0:0] icmp_ln17_2_fu_104_p2;
reg [0:0] icmp_ln17_2_reg_215;
wire [0:0] icmp_ln17_3_fu_110_p2;
reg [0:0] icmp_ln17_3_reg_220;
reg [63:0] conv_reg_225;
wire ap_CS_fsm_state2;
wire [0:0] and_ln17_1_fu_161_p2;
wire ap_CS_fsm_state3;
reg [0:0] ap_phi_mux_merge_phi_fu_80_p4;
reg [31:0] j_fu_48;
wire [31:0] j_3_fu_181_p2;
wire ap_loop_init;
reg [31:0] ap_sig_allocacmp_j_2;
wire [63:0] bitcast_ln17_fu_116_p1;
wire [10:0] tmp_1_fu_119_p4;
wire [51:0] trunc_ln17_fu_129_p1;
wire [0:0] icmp_ln17_1_fu_139_p2;
wire [0:0] icmp_ln17_fu_133_p2;
wire [0:0] or_ln17_fu_145_p2;
wire [0:0] or_ln17_1_fu_151_p2;
wire [0:0] and_ln17_fu_155_p2;
wire [0:0] tmp_3_fu_88_p2;
wire [30:0] grp_fu_167_p2;
wire [30:0] trunc_ln18_fu_171_p1;
reg [0:0] ap_return_preg;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [37:0] ap_NS_fsm;
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
wire ap_ST_fsm_state15_blk;
wire ap_ST_fsm_state16_blk;
wire ap_ST_fsm_state17_blk;
wire ap_ST_fsm_state18_blk;
wire ap_ST_fsm_state19_blk;
wire ap_ST_fsm_state20_blk;
wire ap_ST_fsm_state21_blk;
wire ap_ST_fsm_state22_blk;
wire ap_ST_fsm_state23_blk;
wire ap_ST_fsm_state24_blk;
wire ap_ST_fsm_state25_blk;
wire ap_ST_fsm_state26_blk;
wire ap_ST_fsm_state27_blk;
wire ap_ST_fsm_state28_blk;
wire ap_ST_fsm_state29_blk;
wire ap_ST_fsm_state30_blk;
wire ap_ST_fsm_state31_blk;
wire ap_ST_fsm_state32_blk;
wire ap_ST_fsm_state33_blk;
wire ap_ST_fsm_state34_blk;
wire ap_ST_fsm_state35_blk;
wire ap_ST_fsm_state36_blk;
wire ap_ST_fsm_state37_blk;
wire ap_ST_fsm_state38_blk;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 38'd1;
#0 j_fu_48 = 32'd0;
#0 ap_return_preg = 1'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_dcmp_64ns_64ns_1_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_1_no_dsp_1_U1(
 .din0(conv_reg_225),
 .din1(tmp),
 .opcode(5'd5),
 .dout(tmp_3_fu_88_p2)
);
entry_point_srem_32ns_32ns_31_36_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 31 ))
srem_32ns_32ns_31_36_1_U3(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(number),
 .din1(j_2_reg_208),
 .ce(1'b1),
 .dout(grp_fu_167_p2)
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
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage37),
 .ap_loop_exit_done(ap_done_int),
 .ap_continue_int(ap_continue_int),
 .ap_done_int(ap_done_int)
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
 ap_done_reg <= 1'b0;
 end else begin
 if ((ap_continue_int == 1'b1)) begin
 ap_done_reg <= 1'b0;
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state38))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_return_preg <= 1'd0;
 end else begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state38))) begin
 ap_return_preg <= ap_phi_mux_merge_phi_fu_80_p4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
 j_fu_48 <= 32'd2;
 end else if (((1'd1 == and_ln17_1_reg_231) & (icmp_ln18_fu_175_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state38))) begin
 j_fu_48 <= j_3_fu_181_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'd1 == and_ln17_1_reg_231) & (icmp_ln18_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state38))) begin
 merge_reg_76 <= 1'd0;
 end else if (((1'd0 == and_ln17_1_fu_161_p2) & (1'b1 == ap_CS_fsm_state3))) begin
 merge_reg_76 <= 1'd1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 and_ln17_1_reg_231 <= and_ln17_1_fu_161_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 conv_reg_225 <= grp_fu_71_p_dout0;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 icmp_ln17_2_reg_215 <= icmp_ln17_2_fu_104_p2;
 icmp_ln17_3_reg_220 <= icmp_ln17_3_fu_110_p2;
 j_2_reg_208 <= ap_sig_allocacmp_j_2;
 end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state30_blk = 1'b0;
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
assign ap_ST_fsm_state33_blk = 1'b0;
assign ap_ST_fsm_state34_blk = 1'b0;
assign ap_ST_fsm_state35_blk = 1'b0;
assign ap_ST_fsm_state36_blk = 1'b0;
assign ap_ST_fsm_state37_blk = 1'b0;
assign ap_ST_fsm_state38_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state38) & ((1'd0 == and_ln17_1_reg_231) | (icmp_ln18_fu_175_p2 == 1'd1)))) begin
 ap_condition_exit_pp0_iter0_stage37 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage37 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state38))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((1'd1 == and_ln17_1_reg_231) & (icmp_ln18_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state38))) begin
 ap_phi_mux_merge_phi_fu_80_p4 = 1'd0;
 end else begin
 ap_phi_mux_merge_phi_fu_80_p4 = merge_reg_76;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state38)) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state38))) begin
 ap_return = ap_phi_mux_merge_phi_fu_80_p4;
 end else begin
 ap_return = ap_return_preg;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
 ap_sig_allocacmp_j_2 = 32'd2;
 end else begin
 ap_sig_allocacmp_j_2 = j_fu_48;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_NS_fsm = ap_ST_fsm_state15;
 end
 ap_ST_fsm_state15 : begin
 ap_NS_fsm = ap_ST_fsm_state16;
 end
 ap_ST_fsm_state16 : begin
 ap_NS_fsm = ap_ST_fsm_state17;
 end
 ap_ST_fsm_state17 : begin
 ap_NS_fsm = ap_ST_fsm_state18;
 end
 ap_ST_fsm_state18 : begin
 ap_NS_fsm = ap_ST_fsm_state19;
 end
 ap_ST_fsm_state19 : begin
 ap_NS_fsm = ap_ST_fsm_state20;
 end
 ap_ST_fsm_state20 : begin
 ap_NS_fsm = ap_ST_fsm_state21;
 end
 ap_ST_fsm_state21 : begin
 ap_NS_fsm = ap_ST_fsm_state22;
 end
 ap_ST_fsm_state22 : begin
 ap_NS_fsm = ap_ST_fsm_state23;
 end
 ap_ST_fsm_state23 : begin
 ap_NS_fsm = ap_ST_fsm_state24;
 end
 ap_ST_fsm_state24 : begin
 ap_NS_fsm = ap_ST_fsm_state25;
 end
 ap_ST_fsm_state25 : begin
 ap_NS_fsm = ap_ST_fsm_state26;
 end
 ap_ST_fsm_state26 : begin
 ap_NS_fsm = ap_ST_fsm_state27;
 end
 ap_ST_fsm_state27 : begin
 ap_NS_fsm = ap_ST_fsm_state28;
 end
 ap_ST_fsm_state28 : begin
 ap_NS_fsm = ap_ST_fsm_state29;
 end
 ap_ST_fsm_state29 : begin
 ap_NS_fsm = ap_ST_fsm_state30;
 end
 ap_ST_fsm_state30 : begin
 ap_NS_fsm = ap_ST_fsm_state31;
 end
 ap_ST_fsm_state31 : begin
 ap_NS_fsm = ap_ST_fsm_state32;
 end
 ap_ST_fsm_state32 : begin
 ap_NS_fsm = ap_ST_fsm_state33;
 end
 ap_ST_fsm_state33 : begin
 ap_NS_fsm = ap_ST_fsm_state34;
 end
 ap_ST_fsm_state34 : begin
 ap_NS_fsm = ap_ST_fsm_state35;
 end
 ap_ST_fsm_state35 : begin
 ap_NS_fsm = ap_ST_fsm_state36;
 end
 ap_ST_fsm_state36 : begin
 ap_NS_fsm = ap_ST_fsm_state37;
 end
 ap_ST_fsm_state37 : begin
 ap_NS_fsm = ap_ST_fsm_state38;
 end
 ap_ST_fsm_state38 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign and_ln17_1_fu_161_p2 = (tmp_3_fu_88_p2 & and_ln17_fu_155_p2);
assign and_ln17_fu_155_p2 = (or_ln17_fu_145_p2 & or_ln17_1_fu_151_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state38 = ap_CS_fsm[32'd37];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage37;
assign ap_ready = ap_ready_sig;
assign bitcast_ln17_fu_116_p1 = conv_reg_225;
assign grp_fu_71_p_ce = 1'b1;
assign grp_fu_71_p_din0 = ap_sig_allocacmp_j_2;
assign icmp_ln17_1_fu_139_p2 = ((trunc_ln17_fu_129_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln17_2_fu_104_p2 = ((tmp_2 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln17_3_fu_110_p2 = ((empty == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_133_p2 = ((tmp_1_fu_119_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_175_p2 = ((trunc_ln18_fu_171_p1 == 31'd0) ? 1'b1 : 1'b0);
assign j_3_fu_181_p2 = (j_2_reg_208 + 32'd1);
assign or_ln17_1_fu_151_p2 = (icmp_ln17_3_reg_220 | icmp_ln17_2_reg_215);
assign or_ln17_fu_145_p2 = (icmp_ln17_fu_133_p2 | icmp_ln17_1_fu_139_p2);
assign tmp_1_fu_119_p4 = {{bitcast_ln17_fu_116_p1[62:52]}};
assign trunc_ln17_fu_129_p1 = bitcast_ln17_fu_116_p1[51:0];
assign trunc_ln18_fu_171_p1 = grp_fu_167_p2[30:0];
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
module entry_point_srem_32ns_32ns_31_36_1_divider
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
module entry_point_srem_32ns_32ns_31_36_1
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
entry_point_srem_32ns_32ns_31_36_1_divider #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_srem_32ns_32ns_31_36_1_divider_u (
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
