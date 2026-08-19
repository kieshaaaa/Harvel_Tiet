module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 option,
 temperatureF_i,
 temperatureF_o,
 temperatureF_o_ap_vld,
 temperatureC_i,
 temperatureC_o,
 temperatureC_o_ap_vld,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 36'd1;
parameter ap_ST_fsm_state2 = 36'd2;
parameter ap_ST_fsm_state3 = 36'd4;
parameter ap_ST_fsm_state4 = 36'd8;
parameter ap_ST_fsm_state5 = 36'd16;
parameter ap_ST_fsm_state6 = 36'd32;
parameter ap_ST_fsm_state7 = 36'd64;
parameter ap_ST_fsm_state8 = 36'd128;
parameter ap_ST_fsm_state9 = 36'd256;
parameter ap_ST_fsm_state10 = 36'd512;
parameter ap_ST_fsm_state11 = 36'd1024;
parameter ap_ST_fsm_state12 = 36'd2048;
parameter ap_ST_fsm_state13 = 36'd4096;
parameter ap_ST_fsm_state14 = 36'd8192;
parameter ap_ST_fsm_state15 = 36'd16384;
parameter ap_ST_fsm_state16 = 36'd32768;
parameter ap_ST_fsm_state17 = 36'd65536;
parameter ap_ST_fsm_state18 = 36'd131072;
parameter ap_ST_fsm_state19 = 36'd262144;
parameter ap_ST_fsm_state20 = 36'd524288;
parameter ap_ST_fsm_state21 = 36'd1048576;
parameter ap_ST_fsm_state22 = 36'd2097152;
parameter ap_ST_fsm_state23 = 36'd4194304;
parameter ap_ST_fsm_state24 = 36'd8388608;
parameter ap_ST_fsm_state25 = 36'd16777216;
parameter ap_ST_fsm_state26 = 36'd33554432;
parameter ap_ST_fsm_state27 = 36'd67108864;
parameter ap_ST_fsm_state28 = 36'd134217728;
parameter ap_ST_fsm_state29 = 36'd268435456;
parameter ap_ST_fsm_state30 = 36'd536870912;
parameter ap_ST_fsm_state31 = 36'd1073741824;
parameter ap_ST_fsm_state32 = 36'd2147483648;
parameter ap_ST_fsm_state33 = 36'd4294967296;
parameter ap_ST_fsm_state34 = 36'd8589934592;
parameter ap_ST_fsm_state35 = 36'd17179869184;
parameter ap_ST_fsm_state36 = 36'd34359738368;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [7:0] option;
input [31:0] temperatureF_i;
output [31:0] temperatureF_o;
output temperatureF_o_ap_vld;
input [31:0] temperatureC_i;
output [31:0] temperatureC_o;
output temperatureC_o_ap_vld;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] temperatureF_o;
reg temperatureF_o_ap_vld;
reg[31:0] temperatureC_o;
reg temperatureC_o_ap_vld;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [35:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [63:0] grp_fu_102_p1;
reg [63:0] reg_122;
wire [7:0] option_read_read_fu_48_p2;
wire ap_CS_fsm_state21;
wire [63:0] grp_fu_110_p2;
reg [63:0] reg_127;
wire ap_CS_fsm_state5;
wire ap_CS_fsm_state25;
wire [63:0] grp_fu_116_p2;
reg [63:0] reg_132;
wire ap_CS_fsm_state15;
wire ap_CS_fsm_state35;
wire [63:0] grp_fu_105_p2;
reg [63:0] add_reg_169;
wire ap_CS_fsm_state18;
wire [31:0] grp_fu_94_p2;
reg [31:0] sub_reg_174;
wire ap_CS_fsm_state20;
wire [31:0] bitcast_ln16_1_fu_148_p1;
wire ap_CS_fsm_state19;
wire [31:0] bitcast_ln9_1_fu_154_p1;
wire ap_CS_fsm_state36;
wire [31:0] grp_fu_94_p0;
reg [63:0] grp_fu_99_p0;
reg [31:0] grp_fu_102_p0;
wire [31:0] bitcast_ln16_fu_138_p1;
wire ap_CS_fsm_state16;
reg [63:0] grp_fu_110_p1;
wire ap_CS_fsm_state2;
wire ap_CS_fsm_state22;
reg [63:0] grp_fu_116_p1;
wire ap_CS_fsm_state6;
wire ap_CS_fsm_state26;
wire [31:0] grp_fu_99_p1;
reg [35:0] ap_NS_fsm;
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
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 36'd1;
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
 .din0(grp_fu_94_p0),
 .din1(32'd3254779904),
 .ce(1'b1),
 .dout(grp_fu_94_p2)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U2(
 .din0(grp_fu_99_p0),
 .dout(grp_fu_99_p1)
);
entry_point_fpext_32ns_64_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
fpext_32ns_64_1_no_dsp_1_U3(
 .din0(grp_fu_102_p0),
 .dout(grp_fu_102_p1)
);
entry_point_dadd_64ns_64ns_64_3_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 3 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dadd_64ns_64ns_64_3_full_dsp_1_U4(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(reg_132),
 .din1(64'd4629700416936869888),
 .ce(1'b1),
 .dout(grp_fu_105_p2)
);
entry_point_dmul_64ns_64ns_64_4_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dmul_64ns_64ns_64_4_max_dsp_1_U5(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(reg_122),
 .din1(grp_fu_110_p1),
 .ce(1'b1),
 .dout(grp_fu_110_p2)
);
entry_point_ddiv_64ns_64ns_64_10_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 10 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_10_no_dsp_1_U6(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(reg_127),
 .din1(grp_fu_116_p1),
 .ce(1'b1),
 .dout(grp_fu_116_p2)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state18)) begin
 add_reg_169 <= grp_fu_105_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state21) | ((1'b1 == ap_CS_fsm_state1) & ((option_read_read_fu_48_p2 == 8'd67) | (option_read_read_fu_48_p2 == 8'd99))))) begin
 reg_122 <= grp_fu_102_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state5))) begin
 reg_127 <= grp_fu_110_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state35) | (1'b1 == ap_CS_fsm_state15))) begin
 reg_132 <= grp_fu_116_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state20)) begin
 sub_reg_174 <= grp_fu_94_p2;
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
 if ((ap_start == 1'b0)) begin
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
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state19)) begin
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
 if ((1'b1 == ap_CS_fsm_state19)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state21)) begin
 grp_fu_102_p0 = sub_reg_174;
 end else if ((1'b1 == ap_CS_fsm_state1)) begin
 grp_fu_102_p0 = bitcast_ln16_fu_138_p1;
 end else begin
 grp_fu_102_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state22)) begin
 grp_fu_110_p1 = 64'd4617315517961601024;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_110_p1 = 64'd4621256167635550208;
 end else begin
 grp_fu_110_p1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state26)) begin
 grp_fu_116_p1 = 64'd4621256167635550208;
 end else if ((1'b1 == ap_CS_fsm_state6)) begin
 grp_fu_116_p1 = 64'd4617315517961601024;
 end else begin
 grp_fu_116_p1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state36)) begin
 grp_fu_99_p0 = reg_132;
 end else if ((1'b1 == ap_CS_fsm_state19)) begin
 grp_fu_99_p0 = add_reg_169;
 end else begin
 grp_fu_99_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state36)) begin
 temperatureC_o = bitcast_ln9_1_fu_154_p1;
 end else begin
 temperatureC_o = temperatureC_i;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state36)) begin
 temperatureC_o_ap_vld = 1'b1;
 end else begin
 temperatureC_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state19) & ((option_read_read_fu_48_p2 == 8'd67) | (option_read_read_fu_48_p2 == 8'd99)))) begin
 temperatureF_o = bitcast_ln16_1_fu_148_p1;
 end else begin
 temperatureF_o = temperatureF_i;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state19) & ((option_read_read_fu_48_p2 == 8'd67) | (option_read_read_fu_48_p2 == 8'd99)))) begin
 temperatureF_o_ap_vld = 1'b1;
 end else begin
 temperatureF_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state36)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state19) & ((option_read_read_fu_48_p2 == 8'd67) | (option_read_read_fu_48_p2 == 8'd99)))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((option_read_read_fu_48_p2 == 8'd70) | (option_read_read_fu_48_p2 == 8'd102)))) begin
 ap_NS_fsm = ap_ST_fsm_state20;
 end else if ((~(option_read_read_fu_48_p2 == 8'd67) & ~(option_read_read_fu_48_p2 == 8'd99) & ~(option_read_read_fu_48_p2 == 8'd70) & ~(option_read_read_fu_48_p2 == 8'd102) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state19;
 end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((option_read_read_fu_48_p2 == 8'd67) | (option_read_read_fu_48_p2 == 8'd99)))) begin
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
 ap_NS_fsm = ap_ST_fsm_state1;
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
 ap_NS_fsm = ap_ST_fsm_state19;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_state35 = ap_CS_fsm[32'd34];
assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_return = 32'd0;
assign bitcast_ln16_1_fu_148_p1 = grp_fu_99_p1;
assign bitcast_ln16_fu_138_p1 = temperatureC_i;
assign bitcast_ln9_1_fu_154_p1 = grp_fu_99_p1;
assign grp_fu_94_p0 = temperatureF_i;
assign option_read_read_fu_48_p2 = option;
assign temptemp1 = grp_fu_99_p1;
assign temptemp2 = grp_fu_99_p1;
endmodule
module entry_point_dadd_64ns_64ns_64_3_full_dsp_1
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
module entry_point_ddiv_64ns_64ns_64_10_no_dsp_1
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
module entry_point_fpext_32ns_64_1_no_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 1,
 din0_WIDTH = 32,
 dout_WIDTH = 32
)(
 input wire [din0_WIDTH-1:0] din0,
 output wire [dout_WIDTH-1:0] dout
);
wire a_tvalid;
wire [din0_WIDTH-1:0] a_tdata;
wire r_tvalid;
wire [dout_WIDTH:0] r_tdata;
                                                                                                                                                                                                                            assign a_tvalid = 1'b1;
assign a_tdata = din0;
assign dout = r_tdata;
endmodule
module entry_point_fptrunc_64ns_32_1_no_dsp_1
#(parameter
 ID = 1,
 NUM_STAGE = 1,
 din0_WIDTH = 32,
 dout_WIDTH = 32
)(
 input wire [din0_WIDTH-1:0] din0,
 output wire [dout_WIDTH-1:0] dout
);
wire a_tvalid;
wire [din0_WIDTH-1:0] a_tdata;
wire r_tvalid;
wire [dout_WIDTH:0] r_tdata;
                                                                                                                                                                                                                                assign a_tvalid = 1'b1;
assign a_tdata = din0;
assign dout = r_tdata;
endmodule
