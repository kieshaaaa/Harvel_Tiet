module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n,
 s,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 39'd1;
parameter ap_ST_fsm_state2 = 39'd2;
parameter ap_ST_fsm_state3 = 39'd4;
parameter ap_ST_fsm_state4 = 39'd8;
parameter ap_ST_fsm_state5 = 39'd16;
parameter ap_ST_fsm_state6 = 39'd32;
parameter ap_ST_fsm_state7 = 39'd64;
parameter ap_ST_fsm_state8 = 39'd128;
parameter ap_ST_fsm_state9 = 39'd256;
parameter ap_ST_fsm_state10 = 39'd512;
parameter ap_ST_fsm_state11 = 39'd1024;
parameter ap_ST_fsm_state12 = 39'd2048;
parameter ap_ST_fsm_state13 = 39'd4096;
parameter ap_ST_fsm_state14 = 39'd8192;
parameter ap_ST_fsm_state15 = 39'd16384;
parameter ap_ST_fsm_state16 = 39'd32768;
parameter ap_ST_fsm_state17 = 39'd65536;
parameter ap_ST_fsm_state18 = 39'd131072;
parameter ap_ST_fsm_state19 = 39'd262144;
parameter ap_ST_fsm_state20 = 39'd524288;
parameter ap_ST_fsm_state21 = 39'd1048576;
parameter ap_ST_fsm_state22 = 39'd2097152;
parameter ap_ST_fsm_state23 = 39'd4194304;
parameter ap_ST_fsm_state24 = 39'd8388608;
parameter ap_ST_fsm_state25 = 39'd16777216;
parameter ap_ST_fsm_state26 = 39'd33554432;
parameter ap_ST_fsm_state27 = 39'd67108864;
parameter ap_ST_fsm_state28 = 39'd134217728;
parameter ap_ST_fsm_state29 = 39'd268435456;
parameter ap_ST_fsm_state30 = 39'd536870912;
parameter ap_ST_fsm_state31 = 39'd1073741824;
parameter ap_ST_fsm_state32 = 39'd2147483648;
parameter ap_ST_fsm_state33 = 39'd4294967296;
parameter ap_ST_fsm_state34 = 39'd8589934592;
parameter ap_ST_fsm_state35 = 39'd17179869184;
parameter ap_ST_fsm_state36 = 39'd34359738368;
parameter ap_ST_fsm_state37 = 39'd68719476736;
parameter ap_ST_fsm_state38 = 39'd137438953472;
parameter ap_ST_fsm_state39 = 39'd274877906944;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n;
input [31:0] s;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [38:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] grp_fu_118_p2;
reg [31:0] reg_146;
wire ap_CS_fsm_state10;
wire ap_CS_fsm_state12;
wire [63:0] grp_fu_137_p2;
reg [63:0] reg_152;
wire ap_CS_fsm_state38;
wire [63:0] grp_fu_142_p1;
reg [63:0] conv3_reg_203;
wire ap_CS_fsm_state2;
wire [31:0] grp_fu_122_p1;
reg [31:0] conv_reg_208;
wire ap_CS_fsm_state8;
wire [31:0] bitcast_ln7_fu_159_p1;
reg [31:0] bitcast_ln7_reg_213;
wire ap_CS_fsm_state9;
wire [63:0] conv2_fu_128_p1;
reg [63:0] conv2_reg_218;
wire ap_CS_fsm_state13;
wire [0:0] icmp_ln1039_fu_178_p2;
reg [0:0] icmp_ln1039_reg_223;
reg [63:0] s_out_reg_227;
wire ap_CS_fsm_state14;
reg [63:0] c_out_reg_232;
reg [63:0] div_i_i_reg_237;
wire ap_CS_fsm_state24;
wire [63:0] grp_fu_131_p2;
reg [63:0] mul4_reg_242;
wire ap_CS_fsm_state28;
wire grp_generic_sincos_double_s_fu_91_ap_start;
wire grp_generic_sincos_double_s_fu_91_ap_done;
wire grp_generic_sincos_double_s_fu_91_ap_idle;
wire grp_generic_sincos_double_s_fu_91_ap_ready;
wire [63:0] grp_generic_sincos_double_s_fu_91_ap_return_0;
wire [63:0] grp_generic_sincos_double_s_fu_91_ap_return_1;
reg [63:0] ap_phi_mux_retval_0_i_i_phi_fu_84_p4;
reg [63:0] retval_0_i_i_reg_81;
wire ap_CS_fsm_state25;
reg grp_generic_sincos_double_s_fu_91_ap_start_reg;
wire ap_CS_fsm_state39;
reg [31:0] grp_fu_118_p0;
reg [31:0] grp_fu_118_p1;
wire ap_CS_fsm_state11;
wire ap_CS_fsm_state7;
reg [63:0] grp_fu_137_p0;
reg [63:0] grp_fu_137_p1;
wire ap_CS_fsm_state3;
wire ap_CS_fsm_state15;
wire ap_CS_fsm_state29;
wire [63:0] data_V_fu_164_p1;
wire [9:0] tmp_fu_168_p4;
wire [31:0] area_fu_125_p1;
reg [38:0] ap_NS_fsm;
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
reg ap_ST_fsm_state14_blk;
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
wire ap_ST_fsm_state39_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 39'd1;
#0 grp_generic_sincos_double_s_fu_91_ap_start_reg = 1'b0;
end
entry_point_generic_sincos_double_s grp_generic_sincos_double_s_fu_91(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_generic_sincos_double_s_fu_91_ap_start),
 .ap_done(grp_generic_sincos_double_s_fu_91_ap_done),
 .ap_idle(grp_generic_sincos_double_s_fu_91_ap_idle),
 .ap_ready(grp_generic_sincos_double_s_fu_91_ap_ready),
 .t_in(reg_152),
 .ap_return_0(grp_generic_sincos_double_s_fu_91_ap_return_0),
 .ap_return_1(grp_generic_sincos_double_s_fu_91_ap_return_1)
);
entry_point_fmul_32ns_32ns_32_2_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_2_max_dsp_1_U69(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_118_p0),
 .din1(grp_fu_118_p1),
 .ce(1'b1),
 .dout(grp_fu_118_p2)
);
entry_point_sitofp_32ns_32_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
sitofp_32ns_32_2_no_dsp_1_U70(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(n),
 .ce(1'b1),
 .dout(grp_fu_122_p1)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U71(
 .din0(reg_152),
 .dout(area_fu_125_p1)
);
entry_point_fpext_32ns_64_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
fpext_32ns_64_1_no_dsp_1_U72(
 .din0(reg_146),
 .dout(conv2_fu_128_p1)
);
entry_point_dmul_64ns_64ns_64_4_max_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dmul_64ns_64ns_64_4_max_dsp_1_U73(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(ap_phi_mux_retval_0_i_i_phi_fu_84_p4),
 .din1(64'd4616189618054758400),
 .ce(1'b1),
 .dout(grp_fu_131_p2)
);
entry_point_ddiv_64ns_64ns_64_10_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 10 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_10_no_dsp_1_U74(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_137_p0),
 .din1(grp_fu_137_p1),
 .ce(1'b1),
 .dout(grp_fu_137_p2)
);
entry_point_sitodp_32ns_64_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
sitodp_32ns_64_2_no_dsp_1_U75(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(n),
 .ce(1'b1),
 .dout(grp_fu_142_p1)
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
 grp_generic_sincos_double_s_fu_91_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state13) & (icmp_ln1039_fu_178_p2 == 1'd0))) begin
 grp_generic_sincos_double_s_fu_91_ap_start_reg <= 1'b1;
 end else if ((grp_generic_sincos_double_s_fu_91_ap_ready == 1'b1)) begin
 grp_generic_sincos_double_s_fu_91_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state13) & (icmp_ln1039_fu_178_p2 == 1'd1))) begin
 retval_0_i_i_reg_81 <= reg_152;
 end else if (((1'b1 == ap_CS_fsm_state25) & (icmp_ln1039_reg_223 == 1'd0))) begin
 retval_0_i_i_reg_81 <= div_i_i_reg_237;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state9)) begin
 bitcast_ln7_reg_213 <= bitcast_ln7_fu_159_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
 c_out_reg_232 <= grp_generic_sincos_double_s_fu_91_ap_return_1;
 s_out_reg_227 <= grp_generic_sincos_double_s_fu_91_ap_return_0;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state13)) begin
 conv2_reg_218 <= conv2_fu_128_p1;
 icmp_ln1039_reg_223 <= icmp_ln1039_fu_178_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 conv3_reg_203 <= grp_fu_142_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state8)) begin
 conv_reg_208 <= grp_fu_122_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state24)) begin
 div_i_i_reg_237 <= grp_fu_137_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state28)) begin
 mul4_reg_242 <= grp_fu_131_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10))) begin
 reg_146 <= grp_fu_118_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state38) | (1'b1 == ap_CS_fsm_state12))) begin
 reg_152 <= grp_fu_137_p2;
 end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
 if ((grp_generic_sincos_double_s_fu_91_ap_done == 1'b0)) begin
 ap_ST_fsm_state14_blk = 1'b1;
 end else begin
 ap_ST_fsm_state14_blk = 1'b0;
 end
end
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
assign ap_ST_fsm_state37_blk = 1'b0;
assign ap_ST_fsm_state38_blk = 1'b0;
assign ap_ST_fsm_state39_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state39)) begin
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
 if (((1'b1 == ap_CS_fsm_state25) & (icmp_ln1039_reg_223 == 1'd0))) begin
 ap_phi_mux_retval_0_i_i_phi_fu_84_p4 = div_i_i_reg_237;
 end else begin
 ap_phi_mux_retval_0_i_i_phi_fu_84_p4 = retval_0_i_i_reg_81;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state39)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state11)) begin
 grp_fu_118_p0 = reg_146;
 end else if ((1'b1 == ap_CS_fsm_state9)) begin
 grp_fu_118_p0 = conv_reg_208;
 end else begin
 grp_fu_118_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state11)) begin
 grp_fu_118_p1 = bitcast_ln7_reg_213;
 end else if ((1'b1 == ap_CS_fsm_state9)) begin
 grp_fu_118_p1 = bitcast_ln7_fu_159_p1;
 end else begin
 grp_fu_118_p1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state29)) begin
 grp_fu_137_p0 = conv2_reg_218;
 end else if ((1'b1 == ap_CS_fsm_state15)) begin
 grp_fu_137_p0 = s_out_reg_227;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_fu_137_p0 = 64'd4614256656552045848;
 end else begin
 grp_fu_137_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state29)) begin
 grp_fu_137_p1 = mul4_reg_242;
 end else if ((1'b1 == ap_CS_fsm_state15)) begin
 grp_fu_137_p1 = c_out_reg_232;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_fu_137_p1 = conv3_reg_203;
 end else begin
 grp_fu_137_p1 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state39)) begin
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
 if (((1'b1 == ap_CS_fsm_state13) & (icmp_ln1039_fu_178_p2 == 1'd1))) begin
 ap_NS_fsm = ap_ST_fsm_state25;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state14;
 end
 end
 ap_ST_fsm_state14 : begin
 if (((1'b1 == ap_CS_fsm_state14) & (grp_generic_sincos_double_s_fu_91_ap_done == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state15;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state14;
 end
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
 ap_NS_fsm = ap_ST_fsm_state39;
 end
 ap_ST_fsm_state39 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state38 = ap_CS_fsm[32'd37];
assign ap_CS_fsm_state39 = ap_CS_fsm[32'd38];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign bitcast_ln7_fu_159_p1 = s;
assign data_V_fu_164_p1 = reg_152;
assign grp_generic_sincos_double_s_fu_91_ap_start = grp_generic_sincos_double_s_fu_91_ap_start_reg;
assign icmp_ln1039_fu_178_p2 = ((tmp_fu_168_p4 == 10'd0) ? 1'b1 : 1'b0);
assign temptemp1 = area_fu_125_p1;
assign tmp_fu_168_p4 = {{data_V_fu_164_p1[62:53]}};
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
module entry_point_generic_sincos_double_s (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 t_in,
 ap_return_0,
 ap_return_1
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
input [63:0] t_in;
output [63:0] ap_return_0;
output [63:0] ap_return_1;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[63:0] ap_return_0;
reg[63:0] ap_return_1;
(* fsm_encoding = "none" *) reg [6:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [3:0] ref_4oPi_table_256_V_address0;
reg ref_4oPi_table_256_V_ce0;
wire [255:0] ref_4oPi_table_256_V_q0;
wire [6:0] fourth_order_double_cos_K0_V_address0;
reg fourth_order_double_cos_K0_V_ce0;
wire [57:0] fourth_order_double_cos_K0_V_q0;
wire [6:0] fourth_order_double_cos_K1_V_address0;
reg fourth_order_double_cos_K1_V_ce0;
wire signed [52:0] fourth_order_double_cos_K1_V_q0;
wire [6:0] fourth_order_double_cos_K2_V_address0;
reg fourth_order_double_cos_K2_V_ce0;
wire [43:0] fourth_order_double_cos_K2_V_q0;
wire [6:0] fourth_order_double_cos_K3_V_address0;
reg fourth_order_double_cos_K3_V_ce0;
wire signed [34:0] fourth_order_double_cos_K3_V_q0;
wire [6:0] fourth_order_double_cos_K4_V_address0;
reg fourth_order_double_cos_K4_V_ce0;
wire signed [26:0] fourth_order_double_cos_K4_V_q0;
wire [6:0] fourth_order_double_sin_K0_V_address0;
reg fourth_order_double_sin_K0_V_ce0;
wire [58:0] fourth_order_double_sin_K0_V_q0;
wire [6:0] fourth_order_double_sin_K1_V_address0;
reg fourth_order_double_sin_K1_V_ce0;
wire signed [50:0] fourth_order_double_sin_K1_V_q0;
wire [6:0] fourth_order_double_sin_K2_V_address0;
reg fourth_order_double_sin_K2_V_ce0;
wire signed [42:0] fourth_order_double_sin_K2_V_q0;
wire [6:0] fourth_order_double_sin_K3_V_address0;
reg fourth_order_double_sin_K3_V_ce0;
wire signed [32:0] fourth_order_double_sin_K3_V_q0;
wire [6:0] fourth_order_double_sin_K4_V_address0;
reg fourth_order_double_sin_K4_V_ce0;
wire [22:0] fourth_order_double_sin_K4_V_q0;
reg [0:0] p_Result_19_reg_1441;
wire [10:0] din_exp_V_fu_376_p4;
reg [10:0] din_exp_V_reg_1447;
wire [0:0] closepath_fu_390_p2;
reg [0:0] closepath_reg_1454;
wire [51:0] p_Result_20_fu_396_p1;
reg [51:0] p_Result_20_reg_1461;
wire [6:0] trunc_ln628_fu_429_p1;
reg [6:0] trunc_ln628_reg_1471;
wire [0:0] icmp_ln1019_1_fu_433_p2;
reg [0:0] icmp_ln1019_1_reg_1476;
wire ap_CS_fsm_state2;
wire [2:0] k_V_1_fu_515_p3;
reg [2:0] k_V_1_reg_1492;
wire ap_CS_fsm_state3;
reg [62:0] Mx_V_reg_1498;
wire signed [10:0] Ex_V_2_fu_623_p2;
reg signed [10:0] Ex_V_2_reg_1505;
reg [0:0] isNeg_reg_1510;
wire [0:0] icmp_ln1019_fu_637_p2;
reg [0:0] icmp_ln1019_reg_1516;
wire [0:0] icmp_ln1019_2_fu_642_p2;
reg [0:0] icmp_ln1019_2_reg_1522;
wire [11:0] ret_V_5_fu_650_p2;
reg [11:0] ret_V_5_reg_1528;
wire ap_CS_fsm_state4;
wire [55:0] B_V_fu_698_p1;
reg [55:0] B_V_reg_1533;
wire [97:0] zext_ln1271_fu_712_p1;
reg [97:0] zext_ln1271_reg_1539;
reg [48:0] B_squared_V_reg_1544;
reg [37:0] cos_t4_V_reg_1601;
wire ap_CS_fsm_state5;
reg [29:0] trunc_ln818_3_reg_1606;
wire [62:0] sub_ln813_1_fu_916_p2;
reg [62:0] sub_ln813_1_reg_1611;
reg [35:0] rhs_3_reg_1616;
reg [25:0] rhs_4_reg_1621;
wire [61:0] ret_V_8_fu_1038_p2;
reg [61:0] ret_V_8_reg_1626;
wire [62:0] cos_result_V_fu_1055_p2;
reg [62:0] cos_result_V_reg_1631;
wire ap_CS_fsm_state6;
wire [62:0] zext_ln818_2_fu_1102_p1;
reg [62:0] zext_ln818_2_reg_1636;
wire grp_scaled_fixed2ieee_63_1_s_fu_351_ap_start;
wire grp_scaled_fixed2ieee_63_1_s_fu_351_ap_done;
wire grp_scaled_fixed2ieee_63_1_s_fu_351_ap_idle;
wire grp_scaled_fixed2ieee_63_1_s_fu_351_ap_ready;
wire [63:0] grp_scaled_fixed2ieee_63_1_s_fu_351_ap_return;
wire grp_scaled_fixed2ieee_63_1_s_fu_358_ap_start;
wire grp_scaled_fixed2ieee_63_1_s_fu_358_ap_done;
wire grp_scaled_fixed2ieee_63_1_s_fu_358_ap_idle;
wire grp_scaled_fixed2ieee_63_1_s_fu_358_ap_ready;
wire [63:0] grp_scaled_fixed2ieee_63_1_s_fu_358_ap_return;
reg grp_scaled_fixed2ieee_63_1_s_fu_351_ap_start_reg;
wire ap_CS_fsm_state7;
reg grp_scaled_fixed2ieee_63_1_s_fu_358_ap_start_reg;
wire [63:0] zext_ln668_fu_424_p1;
wire [63:0] zext_ln541_fu_732_p1;
wire [63:0] data_V_fu_364_p1;
wire [10:0] add_ln214_fu_400_p2;
wire [10:0] addr_fu_406_p3;
wire [3:0] tmp_fu_414_p4;
wire [51:0] din_sig_V_fu_386_p1;
wire [255:0] zext_ln930_fu_446_p1;
wire [255:0] r_V_21_fu_449_p2;
wire [52:0] p_Result_21_fu_439_p3;
wire signed [169:0] grp_fu_469_p0;
wire [52:0] grp_fu_469_p1;
wire [10:0] Ex_V_fu_475_p2;
wire [169:0] grp_fu_469_p2;
wire [2:0] k_V_fu_497_p4;
wire [0:0] tmp_10_fu_507_p3;
wire [0:0] xor_ln1027_fu_522_p2;
wire [123:0] Mx_bits_V_fu_487_p4;
wire [0:0] p_Result_s_fu_527_p2;
wire [123:0] Mx_bits_V_1_fu_533_p2;
wire [123:0] Mx_bits_V_3_fu_539_p3;
wire [60:0] tmp_s_fu_547_p4;
wire [61:0] p_Result_22_fu_557_p3;
reg [61:0] p_Result_8_fu_565_p4;
wire [62:0] p_Result_23_fu_575_p3;
wire signed [63:0] sext_ln1204_fu_583_p1;
reg [63:0] tmp_3_fu_587_p3;
wire [6:0] Mx_zeros_fu_595_p1;
wire [123:0] zext_ln1454_fu_603_p1;
wire [123:0] r_fu_607_p2;
wire [10:0] select_ln482_fu_480_p3;
wire [10:0] zext_ln841_fu_599_p1;
wire signed [11:0] sext_ln1535_fu_647_p1;
wire [11:0] ush_fu_656_p3;
wire signed [31:0] sext_ln1488_fu_663_p1;
wire [62:0] zext_ln1488_fu_667_p1;
wire [62:0] r_V_fu_671_p2;
wire [62:0] r_V_4_fu_676_p2;
wire [62:0] r_V_22_fu_681_p3;
wire [48:0] B_trunc_fu_702_p4;
wire [48:0] r_V_6_fu_716_p0;
wire [48:0] r_V_6_fu_716_p1;
wire [97:0] r_V_6_fu_716_p2;
wire [6:0] A_V_fu_688_p4;
wire [48:0] r_V_7_fu_749_p0;
wire [97:0] zext_ln818_1_fu_746_p1;
wire [48:0] r_V_7_fu_749_p1;
wire [48:0] r_V_9_fu_754_p0;
wire [48:0] r_V_9_fu_754_p1;
wire [60:0] cos_t1_V_1_fu_760_p3;
wire [55:0] r_V_11_fu_779_p0;
wire [108:0] r_V_11_fu_779_p2;
wire [55:0] cos_t2_V_fu_785_p4;
wire [48:0] r_V_12_fu_806_p0;
wire [43:0] r_V_12_fu_806_p1;
wire [92:0] r_V_12_fu_806_p2;
wire [46:0] trunc_ln3_fu_812_p4;
wire [97:0] r_V_7_fu_749_p2;
wire [41:0] trunc_ln4_fu_826_p4;
wire [41:0] r_V_13_fu_844_p0;
wire [76:0] r_V_13_fu_844_p2;
wire [97:0] r_V_9_fu_754_p2;
wire [34:0] trunc_ln1271_1_fu_860_p4;
wire [34:0] r_V_14_fu_878_p0;
wire [61:0] r_V_14_fu_878_p2;
wire [61:0] zext_ln85_fu_768_p1;
wire [61:0] shl_i_i_i824_i_neg_fu_894_p2;
wire signed [62:0] sext_ln813_1_fu_900_p1;
wire [62:0] xor_ln813_fu_904_p2;
wire signed [62:0] sext_ln818_fu_795_p1;
wire [62:0] sub_ln813_fu_910_p2;
wire [62:0] zext_ln818_fu_822_p1;
wire [55:0] r_V_15_fu_937_p0;
wire [106:0] r_V_15_fu_937_p2;
wire [48:0] r_V_16_fu_960_p0;
wire [91:0] r_V_16_fu_960_p2;
wire [41:0] r_V_17_fu_984_p0;
wire [74:0] r_V_17_fu_984_p2;
wire [34:0] r_V_18_fu_1008_p0;
wire [22:0] r_V_18_fu_1008_p1;
wire [57:0] r_V_18_fu_1008_p2;
wire [53:0] rhs_1_fu_943_p4;
wire [61:0] sin_t1_V_fu_922_p3;
wire signed [61:0] sext_ln1347_fu_1024_p1;
wire [45:0] rhs_2_fu_966_p4;
wire [61:0] ret_V_7_fu_1028_p2;
wire signed [61:0] sext_ln1347_1_fu_1034_p1;
wire signed [62:0] sext_ln818_1_fu_1044_p1;
wire [62:0] sub_ln813_2_fu_1050_p2;
wire signed [62:0] sext_ln813_fu_1047_p1;
wire signed [61:0] sext_ln1347_2_fu_1062_p1;
wire [61:0] ret_V_9_fu_1065_p2;
wire [61:0] zext_ln1347_fu_1070_p1;
wire [61:0] ret_V_fu_1073_p2;
wire [61:0] r_V_20_fu_1086_p0;
wire [62:0] r_V_20_fu_1086_p1;
wire [124:0] r_V_20_fu_1086_p2;
wire [61:0] tmp_8_fu_1092_p4;
wire [63:0] data_V_1_fu_1113_p1;
wire [63:0] data_V_2_fu_1139_p1;
wire [3:0] p_Result_24_fu_1107_p3;
wire [0:0] tmp_4_fu_1165_p18;
wire [0:0] p_Result_25_fu_1117_p3;
wire [0:0] tmp_5_fu_1209_p18;
wire [0:0] p_Result_26_fu_1143_p3;
wire [0:0] sin_results_sign_V_1_fu_1203_p2;
wire [0:0] xor_ln215_fu_1257_p2;
wire [0:0] and_ln208_fu_1253_p2;
wire [0:0] sin_results_sign_V_2_fu_1262_p2;
wire [0:0] and_ln208_1_fu_1275_p2;
wire [0:0] xor_ln208_1_fu_1279_p2;
wire [0:0] or_ln208_fu_1293_p2;
wire [10:0] select_ln208_1_fu_1285_p3;
wire [10:0] sin_results_exp_V_fu_1125_p4;
wire [51:0] select_ln208_3_fu_1306_p3;
wire [51:0] sin_results_sig_V_fu_1135_p1;
wire [0:0] xor_ln208_fu_1322_p2;
wire [0:0] and_ln208_2_fu_1328_p2;
wire [0:0] cos_results_sign_V_1_fu_1247_p2;
wire [10:0] select_ln208_5_fu_1340_p3;
wire [10:0] cos_results_exp_V_fu_1151_p4;
wire [51:0] cos_results_sig_V_fu_1161_p1;
wire [0:0] cos_results_sign_V_2_fu_1334_p2;
wire [10:0] cos_results_exp_V_2_fu_1348_p3;
wire [51:0] cos_results_sig_V_2_fu_1356_p3;
wire [0:0] sin_results_sign_V_3_fu_1268_p3;
wire [10:0] sin_results_exp_V_2_fu_1298_p3;
wire [51:0] sin_results_sig_V_2_fu_1314_p3;
wire [63:0] p_Result_27_fu_1385_p4;
wire [63:0] p_Result_28_fu_1395_p4;
wire [0:0] tmp_6_fu_1364_p10;
wire [63:0] s_out_fu_1405_p1;
wire [63:0] c_out_fu_1409_p1;
wire [63:0] s_out_1_fu_1413_p3;
wire [63:0] c_out_1_fu_1421_p3;
reg [63:0] ap_return_0_preg;
reg ap_block_state7_on_subcall_done;
reg [63:0] ap_return_1_preg;
reg [6:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ST_fsm_state6_blk;
reg ap_ST_fsm_state7_blk;
wire [169:0] grp_fu_469_p10;
wire [108:0] r_V_11_fu_779_p00;
wire [92:0] r_V_12_fu_806_p00;
wire [92:0] r_V_12_fu_806_p10;
wire [76:0] r_V_13_fu_844_p00;
wire [61:0] r_V_14_fu_878_p00;
wire [106:0] r_V_15_fu_937_p00;
wire [91:0] r_V_16_fu_960_p00;
wire [74:0] r_V_17_fu_984_p00;
wire [57:0] r_V_18_fu_1008_p00;
wire [57:0] r_V_18_fu_1008_p10;
wire [124:0] r_V_20_fu_1086_p00;
wire [124:0] r_V_20_fu_1086_p10;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_scaled_fixed2ieee_63_1_s_fu_351_ap_start_reg = 1'b0;
#0 grp_scaled_fixed2ieee_63_1_s_fu_358_ap_start_reg = 1'b0;
#0 ap_return_0_preg = 64'd0;
#0 ap_return_1_preg = 64'd0;
end
entry_point_generic_sincos_double_s_ref_4oPi_table_256_V_ROM_AUTO_1R #(
 .DataWidth( 256 ),
 .AddressRange( 10 ),
 .AddressWidth( 4 ))
ref_4oPi_table_256_V_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(ref_4oPi_table_256_V_address0),
 .ce0(ref_4oPi_table_256_V_ce0),
 .q0(ref_4oPi_table_256_V_q0)
);
entry_point_generic_sincos_double_s_fourth_order_double_cos_K0_V_ROM_1P_LUTRAM_1R #(
 .DataWidth( 58 ),
 .AddressRange( 128 ),
 .AddressWidth( 7 ))
fourth_order_double_cos_K0_V_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(fourth_order_double_cos_K0_V_address0),
 .ce0(fourth_order_double_cos_K0_V_ce0),
 .q0(fourth_order_double_cos_K0_V_q0)
);
entry_point_generic_sincos_double_s_fourth_order_double_cos_K1_V_ROM_1P_LUTRAM_1R #(
 .DataWidth( 53 ),
 .AddressRange( 128 ),
 .AddressWidth( 7 ))
fourth_order_double_cos_K1_V_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(fourth_order_double_cos_K1_V_address0),
 .ce0(fourth_order_double_cos_K1_V_ce0),
 .q0(fourth_order_double_cos_K1_V_q0)
);
entry_point_generic_sincos_double_s_fourth_order_double_cos_K2_V_ROM_1P_LUTRAM_1R #(
 .DataWidth( 44 ),
 .AddressRange( 128 ),
 .AddressWidth( 7 ))
fourth_order_double_cos_K2_V_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(fourth_order_double_cos_K2_V_address0),
 .ce0(fourth_order_double_cos_K2_V_ce0),
 .q0(fourth_order_double_cos_K2_V_q0)
);
entry_point_generic_sincos_double_s_fourth_order_double_cos_K3_V_ROM_1P_LUTRAM_1R #(
 .DataWidth( 35 ),
 .AddressRange( 128 ),
 .AddressWidth( 7 ))
fourth_order_double_cos_K3_V_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(fourth_order_double_cos_K3_V_address0),
 .ce0(fourth_order_double_cos_K3_V_ce0),
 .q0(fourth_order_double_cos_K3_V_q0)
);
entry_point_generic_sincos_double_s_fourth_order_double_cos_K4_V_ROM_1P_LUTRAM_1R #(
 .DataWidth( 27 ),
 .AddressRange( 128 ),
 .AddressWidth( 7 ))
fourth_order_double_cos_K4_V_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(fourth_order_double_cos_K4_V_address0),
 .ce0(fourth_order_double_cos_K4_V_ce0),
 .q0(fourth_order_double_cos_K4_V_q0)
);
entry_point_generic_sincos_double_s_fourth_order_double_sin_K0_V_ROM_1P_LUTRAM_1R #(
 .DataWidth( 59 ),
 .AddressRange( 128 ),
 .AddressWidth( 7 ))
fourth_order_double_sin_K0_V_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(fourth_order_double_sin_K0_V_address0),
 .ce0(fourth_order_double_sin_K0_V_ce0),
 .q0(fourth_order_double_sin_K0_V_q0)
);
entry_point_generic_sincos_double_s_fourth_order_double_sin_K1_V_ROM_1P_LUTRAM_1R #(
 .DataWidth( 51 ),
 .AddressRange( 128 ),
 .AddressWidth( 7 ))
fourth_order_double_sin_K1_V_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(fourth_order_double_sin_K1_V_address0),
 .ce0(fourth_order_double_sin_K1_V_ce0),
 .q0(fourth_order_double_sin_K1_V_q0)
);
entry_point_generic_sincos_double_s_fourth_order_double_sin_K2_V_ROM_1P_LUTRAM_1R #(
 .DataWidth( 43 ),
 .AddressRange( 128 ),
 .AddressWidth( 7 ))
fourth_order_double_sin_K2_V_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(fourth_order_double_sin_K2_V_address0),
 .ce0(fourth_order_double_sin_K2_V_ce0),
 .q0(fourth_order_double_sin_K2_V_q0)
);
entry_point_generic_sincos_double_s_fourth_order_double_sin_K3_V_ROM_1P_LUTRAM_1R #(
 .DataWidth( 33 ),
 .AddressRange( 128 ),
 .AddressWidth( 7 ))
fourth_order_double_sin_K3_V_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(fourth_order_double_sin_K3_V_address0),
 .ce0(fourth_order_double_sin_K3_V_ce0),
 .q0(fourth_order_double_sin_K3_V_q0)
);
entry_point_generic_sincos_double_s_fourth_order_double_sin_K4_V_ROM_1P_LUTRAM_1R #(
 .DataWidth( 23 ),
 .AddressRange( 128 ),
 .AddressWidth( 7 ))
fourth_order_double_sin_K4_V_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(fourth_order_double_sin_K4_V_address0),
 .ce0(fourth_order_double_sin_K4_V_ce0),
 .q0(fourth_order_double_sin_K4_V_q0)
);
entry_point_scaled_fixed2ieee_63_1_s grp_scaled_fixed2ieee_63_1_s_fu_351(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_scaled_fixed2ieee_63_1_s_fu_351_ap_start),
 .ap_done(grp_scaled_fixed2ieee_63_1_s_fu_351_ap_done),
 .ap_idle(grp_scaled_fixed2ieee_63_1_s_fu_351_ap_idle),
 .ap_ready(grp_scaled_fixed2ieee_63_1_s_fu_351_ap_ready),
 .in_r(cos_result_V_reg_1631),
 .prescale(12'd0),
 .ap_return(grp_scaled_fixed2ieee_63_1_s_fu_351_ap_return)
);
entry_point_scaled_fixed2ieee_63_1_s grp_scaled_fixed2ieee_63_1_s_fu_358(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_scaled_fixed2ieee_63_1_s_fu_358_ap_start),
 .ap_done(grp_scaled_fixed2ieee_63_1_s_fu_358_ap_done),
 .ap_idle(grp_scaled_fixed2ieee_63_1_s_fu_358_ap_idle),
 .ap_ready(grp_scaled_fixed2ieee_63_1_s_fu_358_ap_ready),
 .in_r(zext_ln818_2_reg_1636),
 .prescale(ret_V_5_reg_1528),
 .ap_return(grp_scaled_fixed2ieee_63_1_s_fu_358_ap_return)
);
entry_point_mul_170s_53ns_170_2_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 170 ),
 .din1_WIDTH( 53 ),
 .dout_WIDTH( 170 ))
mul_170s_53ns_170_2_1_U27(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_469_p0),
 .din1(grp_fu_469_p1),
 .ce(1'b1),
 .dout(grp_fu_469_p2)
);
entry_point_mul_49ns_49ns_98_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 49 ),
 .din1_WIDTH( 49 ),
 .dout_WIDTH( 98 ))
mul_49ns_49ns_98_1_1_U28(
 .din0(r_V_6_fu_716_p0),
 .din1(r_V_6_fu_716_p1),
 .dout(r_V_6_fu_716_p2)
);
entry_point_mul_49ns_49ns_98_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 49 ),
 .din1_WIDTH( 49 ),
 .dout_WIDTH( 98 ))
mul_49ns_49ns_98_1_1_U29(
 .din0(r_V_7_fu_749_p0),
 .din1(r_V_7_fu_749_p1),
 .dout(r_V_7_fu_749_p2)
);
entry_point_mul_49ns_49ns_98_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 49 ),
 .din1_WIDTH( 49 ),
 .dout_WIDTH( 98 ))
mul_49ns_49ns_98_1_1_U30(
 .din0(r_V_9_fu_754_p0),
 .din1(r_V_9_fu_754_p1),
 .dout(r_V_9_fu_754_p2)
);
entry_point_mul_56ns_53s_109_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 56 ),
 .din1_WIDTH( 53 ),
 .dout_WIDTH( 109 ))
mul_56ns_53s_109_1_1_U31(
 .din0(r_V_11_fu_779_p0),
 .din1(fourth_order_double_cos_K1_V_q0),
 .dout(r_V_11_fu_779_p2)
);
entry_point_mul_49ns_44ns_93_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 49 ),
 .din1_WIDTH( 44 ),
 .dout_WIDTH( 93 ))
mul_49ns_44ns_93_1_1_U32(
 .din0(r_V_12_fu_806_p0),
 .din1(r_V_12_fu_806_p1),
 .dout(r_V_12_fu_806_p2)
);
entry_point_mul_42ns_35s_77_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 42 ),
 .din1_WIDTH( 35 ),
 .dout_WIDTH( 77 ))
mul_42ns_35s_77_1_1_U33(
 .din0(r_V_13_fu_844_p0),
 .din1(fourth_order_double_cos_K3_V_q0),
 .dout(r_V_13_fu_844_p2)
);
entry_point_mul_35ns_27s_62_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 35 ),
 .din1_WIDTH( 27 ),
 .dout_WIDTH( 62 ))
mul_35ns_27s_62_1_1_U34(
 .din0(r_V_14_fu_878_p0),
 .din1(fourth_order_double_cos_K4_V_q0),
 .dout(r_V_14_fu_878_p2)
);
entry_point_mul_56ns_51s_107_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 56 ),
 .din1_WIDTH( 51 ),
 .dout_WIDTH( 107 ))
mul_56ns_51s_107_1_1_U35(
 .din0(r_V_15_fu_937_p0),
 .din1(fourth_order_double_sin_K1_V_q0),
 .dout(r_V_15_fu_937_p2)
);
entry_point_mul_49ns_43s_92_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 49 ),
 .din1_WIDTH( 43 ),
 .dout_WIDTH( 92 ))
mul_49ns_43s_92_1_1_U36(
 .din0(r_V_16_fu_960_p0),
 .din1(fourth_order_double_sin_K2_V_q0),
 .dout(r_V_16_fu_960_p2)
);
entry_point_mul_42ns_33s_75_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 42 ),
 .din1_WIDTH( 33 ),
 .dout_WIDTH( 75 ))
mul_42ns_33s_75_1_1_U37(
 .din0(r_V_17_fu_984_p0),
 .din1(fourth_order_double_sin_K3_V_q0),
 .dout(r_V_17_fu_984_p2)
);
entry_point_mul_35ns_23ns_58_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 35 ),
 .din1_WIDTH( 23 ),
 .dout_WIDTH( 58 ))
mul_35ns_23ns_58_1_1_U38(
 .din0(r_V_18_fu_1008_p0),
 .din1(r_V_18_fu_1008_p1),
 .dout(r_V_18_fu_1008_p2)
);
entry_point_mul_62ns_63ns_125_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 62 ),
 .din1_WIDTH( 63 ),
 .dout_WIDTH( 125 ))
mul_62ns_63ns_125_1_1_U39(
 .din0(r_V_20_fu_1086_p0),
 .din1(r_V_20_fu_1086_p1),
 .dout(r_V_20_fu_1086_p2)
);
entry_point_mux_164_1_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 1 ),
 .din1_WIDTH( 1 ),
 .din2_WIDTH( 1 ),
 .din3_WIDTH( 1 ),
 .din4_WIDTH( 1 ),
 .din5_WIDTH( 1 ),
 .din6_WIDTH( 1 ),
 .din7_WIDTH( 1 ),
 .din8_WIDTH( 1 ),
 .din9_WIDTH( 1 ),
 .din10_WIDTH( 1 ),
 .din11_WIDTH( 1 ),
 .din12_WIDTH( 1 ),
 .din13_WIDTH( 1 ),
 .din14_WIDTH( 1 ),
 .din15_WIDTH( 1 ),
 .din16_WIDTH( 4 ),
 .dout_WIDTH( 1 ))
mux_164_1_1_1_U40(
 .din0(1'd0),
 .din1(1'd0),
 .din2(1'd1),
 .din3(1'd0),
 .din4(1'd1),
 .din5(1'd1),
 .din6(1'd0),
 .din7(1'd1),
 .din8(1'd1),
 .din9(1'd0),
 .din10(1'd1),
 .din11(1'd1),
 .din12(1'd0),
 .din13(1'd1),
 .din14(1'd0),
 .din15(1'd0),
 .din16(p_Result_24_fu_1107_p3),
 .dout(tmp_4_fu_1165_p18)
);
entry_point_mux_164_1_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 1 ),
 .din1_WIDTH( 1 ),
 .din2_WIDTH( 1 ),
 .din3_WIDTH( 1 ),
 .din4_WIDTH( 1 ),
 .din5_WIDTH( 1 ),
 .din6_WIDTH( 1 ),
 .din7_WIDTH( 1 ),
 .din8_WIDTH( 1 ),
 .din9_WIDTH( 1 ),
 .din10_WIDTH( 1 ),
 .din11_WIDTH( 1 ),
 .din12_WIDTH( 1 ),
 .din13_WIDTH( 1 ),
 .din14_WIDTH( 1 ),
 .din15_WIDTH( 1 ),
 .din16_WIDTH( 4 ),
 .dout_WIDTH( 1 ))
mux_164_1_1_1_U41(
 .din0(1'd0),
 .din1(1'd0),
 .din2(1'd0),
 .din3(1'd1),
 .din4(1'd1),
 .din5(1'd1),
 .din6(1'd1),
 .din7(1'd0),
 .din8(1'd0),
 .din9(1'd1),
 .din10(1'd1),
 .din11(1'd1),
 .din12(1'd1),
 .din13(1'd0),
 .din14(1'd0),
 .din15(1'd0),
 .din16(p_Result_24_fu_1107_p3),
 .dout(tmp_5_fu_1209_p18)
);
entry_point_mux_83_1_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 1 ),
 .din1_WIDTH( 1 ),
 .din2_WIDTH( 1 ),
 .din3_WIDTH( 1 ),
 .din4_WIDTH( 1 ),
 .din5_WIDTH( 1 ),
 .din6_WIDTH( 1 ),
 .din7_WIDTH( 1 ),
 .din8_WIDTH( 3 ),
 .dout_WIDTH( 1 ))
mux_83_1_1_1_U42(
 .din0(1'd0),
 .din1(1'd1),
 .din2(1'd1),
 .din3(1'd0),
 .din4(1'd0),
 .din5(1'd1),
 .din6(1'd1),
 .din7(1'd0),
 .din8(k_V_1_reg_1492),
 .dout(tmp_6_fu_1364_p10)
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
 ap_return_0_preg <= 64'd0;
 end else begin
 if (((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7))) begin
 ap_return_0_preg <= s_out_1_fu_1413_p3;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_return_1_preg <= 64'd0;
 end else begin
 if (((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7))) begin
 ap_return_1_preg <= c_out_1_fu_1421_p3;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_scaled_fixed2ieee_63_1_s_fu_351_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 grp_scaled_fixed2ieee_63_1_s_fu_351_ap_start_reg <= 1'b1;
 end else if ((grp_scaled_fixed2ieee_63_1_s_fu_351_ap_ready == 1'b1)) begin
 grp_scaled_fixed2ieee_63_1_s_fu_351_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_scaled_fixed2ieee_63_1_s_fu_358_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 grp_scaled_fixed2ieee_63_1_s_fu_358_ap_start_reg <= 1'b1;
 end else if ((grp_scaled_fixed2ieee_63_1_s_fu_358_ap_ready == 1'b1)) begin
 grp_scaled_fixed2ieee_63_1_s_fu_358_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 B_V_reg_1533 <= B_V_fu_698_p1;
 B_squared_V_reg_1544 <= {{r_V_6_fu_716_p2[97:49]}};
 ret_V_5_reg_1528 <= ret_V_5_fu_650_p2;
 zext_ln1271_reg_1539[48 : 0] <= zext_ln1271_fu_712_p1[48 : 0];
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 Ex_V_2_reg_1505 <= Ex_V_2_fu_623_p2;
 Mx_V_reg_1498 <= {{r_fu_607_p2[123:61]}};
 icmp_ln1019_2_reg_1522 <= icmp_ln1019_2_fu_642_p2;
 icmp_ln1019_reg_1516 <= icmp_ln1019_fu_637_p2;
 isNeg_reg_1510 <= Ex_V_2_fu_623_p2[32'd10];
 k_V_1_reg_1492 <= k_V_1_fu_515_p3;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 closepath_reg_1454 <= closepath_fu_390_p2;
 din_exp_V_reg_1447 <= {{data_V_fu_364_p1[62:52]}};
 icmp_ln1019_1_reg_1476 <= icmp_ln1019_1_fu_433_p2;
 p_Result_19_reg_1441 <= data_V_fu_364_p1[32'd63];
 p_Result_20_reg_1461 <= p_Result_20_fu_396_p1;
 trunc_ln628_reg_1471 <= trunc_ln628_fu_429_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 cos_result_V_reg_1631 <= cos_result_V_fu_1055_p2;
 zext_ln818_2_reg_1636[61 : 0] <= zext_ln818_2_fu_1102_p1[61 : 0];
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 cos_t4_V_reg_1601 <= {{r_V_13_fu_844_p2[76:39]}};
 ret_V_8_reg_1626 <= ret_V_8_fu_1038_p2;
 rhs_3_reg_1616 <= {{r_V_17_fu_984_p2[74:39]}};
 rhs_4_reg_1621 <= {{r_V_18_fu_1008_p2[57:32]}};
 sub_ln813_1_reg_1611 <= sub_ln813_1_fu_916_p2;
 trunc_ln818_3_reg_1606 <= {{r_V_14_fu_878_p2[61:32]}};
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
always @ (*) begin
 if ((1'b1 == ap_block_state7_on_subcall_done)) begin
 ap_ST_fsm_state7_blk = 1'b1;
 end else begin
 ap_ST_fsm_state7_blk = 1'b0;
 end
end
always @ (*) begin
 if ((((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
 if (((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7))) begin
 ap_return_0 = s_out_1_fu_1413_p3;
 end else begin
 ap_return_0 = ap_return_0_preg;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7))) begin
 ap_return_1 = c_out_1_fu_1421_p3;
 end else begin
 ap_return_1 = ap_return_1_preg;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 fourth_order_double_cos_K0_V_ce0 = 1'b1;
 end else begin
 fourth_order_double_cos_K0_V_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 fourth_order_double_cos_K1_V_ce0 = 1'b1;
 end else begin
 fourth_order_double_cos_K1_V_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 fourth_order_double_cos_K2_V_ce0 = 1'b1;
 end else begin
 fourth_order_double_cos_K2_V_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 fourth_order_double_cos_K3_V_ce0 = 1'b1;
 end else begin
 fourth_order_double_cos_K3_V_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 fourth_order_double_cos_K4_V_ce0 = 1'b1;
 end else begin
 fourth_order_double_cos_K4_V_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 fourth_order_double_sin_K0_V_ce0 = 1'b1;
 end else begin
 fourth_order_double_sin_K0_V_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 fourth_order_double_sin_K1_V_ce0 = 1'b1;
 end else begin
 fourth_order_double_sin_K1_V_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 fourth_order_double_sin_K2_V_ce0 = 1'b1;
 end else begin
 fourth_order_double_sin_K2_V_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 fourth_order_double_sin_K3_V_ce0 = 1'b1;
 end else begin
 fourth_order_double_sin_K3_V_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 fourth_order_double_sin_K4_V_ce0 = 1'b1;
 end else begin
 fourth_order_double_sin_K4_V_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 ref_4oPi_table_256_V_ce0 = 1'b1;
 end else begin
 ref_4oPi_table_256_V_ce0 = 1'b0;
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
 if (((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign A_V_fu_688_p4 = {{r_V_22_fu_681_p3[62:56]}};
assign B_V_fu_698_p1 = r_V_22_fu_681_p3[55:0];
assign B_trunc_fu_702_p4 = {{r_V_22_fu_681_p3[55:7]}};
assign Ex_V_2_fu_623_p2 = (select_ln482_fu_480_p3 - zext_ln841_fu_599_p1);
assign Ex_V_fu_475_p2 = ($signed(din_exp_V_reg_1447) + $signed(11'd1027));
assign Mx_bits_V_1_fu_533_p2 = (124'd0 - Mx_bits_V_fu_487_p4);
assign Mx_bits_V_3_fu_539_p3 = ((p_Result_s_fu_527_p2[0:0] == 1'b1) ? Mx_bits_V_1_fu_533_p2 : Mx_bits_V_fu_487_p4);
assign Mx_bits_V_fu_487_p4 = {{grp_fu_469_p2[166:43]}};
assign Mx_zeros_fu_595_p1 = tmp_3_fu_587_p3[6:0];
assign add_ln214_fu_400_p2 = ($signed(din_exp_V_fu_376_p4) + $signed(11'd1101));
assign addr_fu_406_p3 = ((closepath_fu_390_p2[0:0] == 1'b1) ? 11'd74 : add_ln214_fu_400_p2);
assign and_ln208_1_fu_1275_p2 = (icmp_ln1019_reg_1516 & icmp_ln1019_1_reg_1476);
assign and_ln208_2_fu_1328_p2 = (xor_ln215_fu_1257_p2 & xor_ln208_fu_1322_p2);
assign and_ln208_fu_1253_p2 = (icmp_ln1019_reg_1516 & icmp_ln1019_1_reg_1476);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
always @ (*) begin
 ap_block_state7_on_subcall_done = ((grp_scaled_fixed2ieee_63_1_s_fu_358_ap_done == 1'b0) | (grp_scaled_fixed2ieee_63_1_s_fu_351_ap_done == 1'b0));
end
assign c_out_1_fu_1421_p3 = ((tmp_6_fu_1364_p10[0:0] == 1'b1) ? c_out_fu_1409_p1 : s_out_fu_1405_p1);
assign c_out_fu_1409_p1 = p_Result_28_fu_1395_p4;
assign closepath_fu_390_p2 = ((din_exp_V_fu_376_p4 < 11'd1022) ? 1'b1 : 1'b0);
assign cos_result_V_fu_1055_p2 = ($signed(sub_ln813_2_fu_1050_p2) - $signed(sext_ln813_fu_1047_p1));
assign cos_results_exp_V_2_fu_1348_p3 = ((or_ln208_fu_1293_p2[0:0] == 1'b1) ? select_ln208_5_fu_1340_p3 : cos_results_exp_V_fu_1151_p4);
assign cos_results_exp_V_fu_1151_p4 = {{data_V_2_fu_1139_p1[62:52]}};
assign cos_results_sig_V_2_fu_1356_p3 = ((or_ln208_fu_1293_p2[0:0] == 1'b1) ? select_ln208_3_fu_1306_p3 : cos_results_sig_V_fu_1161_p1);
assign cos_results_sig_V_fu_1161_p1 = data_V_2_fu_1139_p1[51:0];
assign cos_results_sign_V_1_fu_1247_p2 = (tmp_5_fu_1209_p18 | p_Result_26_fu_1143_p3);
assign cos_results_sign_V_2_fu_1334_p2 = (cos_results_sign_V_1_fu_1247_p2 & and_ln208_2_fu_1328_p2);
assign cos_t1_V_1_fu_760_p3 = {{fourth_order_double_cos_K0_V_q0}, {3'd0}};
assign cos_t2_V_fu_785_p4 = {{r_V_11_fu_779_p2[108:53]}};
assign data_V_1_fu_1113_p1 = grp_scaled_fixed2ieee_63_1_s_fu_358_ap_return;
assign data_V_2_fu_1139_p1 = grp_scaled_fixed2ieee_63_1_s_fu_351_ap_return;
assign data_V_fu_364_p1 = t_in;
assign din_exp_V_fu_376_p4 = {{data_V_fu_364_p1[62:52]}};
assign din_sig_V_fu_386_p1 = data_V_fu_364_p1[51:0];
assign fourth_order_double_cos_K0_V_address0 = zext_ln541_fu_732_p1;
assign fourth_order_double_cos_K1_V_address0 = zext_ln541_fu_732_p1;
assign fourth_order_double_cos_K2_V_address0 = zext_ln541_fu_732_p1;
assign fourth_order_double_cos_K3_V_address0 = zext_ln541_fu_732_p1;
assign fourth_order_double_cos_K4_V_address0 = zext_ln541_fu_732_p1;
assign fourth_order_double_sin_K0_V_address0 = zext_ln541_fu_732_p1;
assign fourth_order_double_sin_K1_V_address0 = zext_ln541_fu_732_p1;
assign fourth_order_double_sin_K2_V_address0 = zext_ln541_fu_732_p1;
assign fourth_order_double_sin_K3_V_address0 = zext_ln541_fu_732_p1;
assign fourth_order_double_sin_K4_V_address0 = zext_ln541_fu_732_p1;
assign grp_fu_469_p0 = {{r_V_21_fu_449_p2[255:86]}};
assign grp_fu_469_p1 = grp_fu_469_p10;
assign grp_fu_469_p10 = p_Result_21_fu_439_p3;
assign grp_scaled_fixed2ieee_63_1_s_fu_351_ap_start = grp_scaled_fixed2ieee_63_1_s_fu_351_ap_start_reg;
assign grp_scaled_fixed2ieee_63_1_s_fu_358_ap_start = grp_scaled_fixed2ieee_63_1_s_fu_358_ap_start_reg;
assign icmp_ln1019_1_fu_433_p2 = ((din_sig_V_fu_386_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln1019_2_fu_642_p2 = ((din_exp_V_reg_1447 == 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln1019_fu_637_p2 = ((din_exp_V_reg_1447 == 11'd0) ? 1'b1 : 1'b0);
assign k_V_1_fu_515_p3 = ((closepath_reg_1454[0:0] == 1'b1) ? 3'd0 : k_V_fu_497_p4);
assign k_V_fu_497_p4 = {{grp_fu_469_p2[169:167]}};
assign or_ln208_fu_1293_p2 = (icmp_ln1019_2_reg_1522 | and_ln208_fu_1253_p2);
assign p_Result_20_fu_396_p1 = data_V_fu_364_p1[51:0];
assign p_Result_21_fu_439_p3 = {{1'd1}, {p_Result_20_reg_1461}};
assign p_Result_22_fu_557_p3 = {{tmp_s_fu_547_p4}, {1'd1}};
assign p_Result_23_fu_575_p3 = {{1'd1}, {p_Result_8_fu_565_p4}};
assign p_Result_24_fu_1107_p3 = {{p_Result_19_reg_1441}, {k_V_1_reg_1492}};
assign p_Result_25_fu_1117_p3 = data_V_1_fu_1113_p1[32'd63];
assign p_Result_26_fu_1143_p3 = data_V_2_fu_1139_p1[32'd63];
assign p_Result_27_fu_1385_p4 = {{{cos_results_sign_V_2_fu_1334_p2}, {cos_results_exp_V_2_fu_1348_p3}}, {cos_results_sig_V_2_fu_1356_p3}};
assign p_Result_28_fu_1395_p4 = {{{sin_results_sign_V_3_fu_1268_p3}, {sin_results_exp_V_2_fu_1298_p3}}, {sin_results_sig_V_2_fu_1314_p3}};
integer ap_tvar_int_0;
always @ (p_Result_22_fu_557_p3) begin
 for (ap_tvar_int_0 = 62 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
 if (ap_tvar_int_0 > 61 - 0) begin
 p_Result_8_fu_565_p4[ap_tvar_int_0] = 1'b0;
 end else begin
 p_Result_8_fu_565_p4[ap_tvar_int_0] = p_Result_22_fu_557_p3[61 - ap_tvar_int_0];
 end
 end
end
assign p_Result_s_fu_527_p2 = (xor_ln1027_fu_522_p2 & tmp_10_fu_507_p3);
assign r_V_11_fu_779_p0 = r_V_11_fu_779_p00;
assign r_V_11_fu_779_p00 = B_V_reg_1533;
assign r_V_12_fu_806_p0 = r_V_12_fu_806_p00;
assign r_V_12_fu_806_p00 = B_squared_V_reg_1544;
assign r_V_12_fu_806_p1 = r_V_12_fu_806_p10;
assign r_V_12_fu_806_p10 = fourth_order_double_cos_K2_V_q0;
assign r_V_13_fu_844_p0 = r_V_13_fu_844_p00;
assign r_V_13_fu_844_p00 = trunc_ln4_fu_826_p4;
assign r_V_14_fu_878_p0 = r_V_14_fu_878_p00;
assign r_V_14_fu_878_p00 = trunc_ln1271_1_fu_860_p4;
assign r_V_15_fu_937_p0 = r_V_15_fu_937_p00;
assign r_V_15_fu_937_p00 = B_V_reg_1533;
assign r_V_16_fu_960_p0 = r_V_16_fu_960_p00;
assign r_V_16_fu_960_p00 = B_squared_V_reg_1544;
assign r_V_17_fu_984_p0 = r_V_17_fu_984_p00;
assign r_V_17_fu_984_p00 = trunc_ln4_fu_826_p4;
assign r_V_18_fu_1008_p0 = r_V_18_fu_1008_p00;
assign r_V_18_fu_1008_p00 = trunc_ln1271_1_fu_860_p4;
assign r_V_18_fu_1008_p1 = r_V_18_fu_1008_p10;
assign r_V_18_fu_1008_p10 = fourth_order_double_sin_K4_V_q0;
assign r_V_20_fu_1086_p0 = r_V_20_fu_1086_p00;
assign r_V_20_fu_1086_p00 = ret_V_fu_1073_p2;
assign r_V_20_fu_1086_p1 = r_V_20_fu_1086_p10;
assign r_V_20_fu_1086_p10 = Mx_V_reg_1498;
assign r_V_21_fu_449_p2 = ref_4oPi_table_256_V_q0 << zext_ln930_fu_446_p1;
assign r_V_22_fu_681_p3 = ((isNeg_reg_1510[0:0] == 1'b1) ? r_V_fu_671_p2 : r_V_4_fu_676_p2);
assign r_V_4_fu_676_p2 = Mx_V_reg_1498 << zext_ln1488_fu_667_p1;
assign r_V_6_fu_716_p0 = zext_ln1271_fu_712_p1;
assign r_V_6_fu_716_p1 = zext_ln1271_fu_712_p1;
assign r_V_7_fu_749_p0 = zext_ln818_1_fu_746_p1;
assign r_V_7_fu_749_p1 = zext_ln1271_reg_1539;
assign r_V_9_fu_754_p0 = zext_ln818_1_fu_746_p1;
assign r_V_9_fu_754_p1 = zext_ln818_1_fu_746_p1;
assign r_V_fu_671_p2 = Mx_V_reg_1498 >> zext_ln1488_fu_667_p1;
assign r_fu_607_p2 = Mx_bits_V_3_fu_539_p3 << zext_ln1454_fu_603_p1;
assign ref_4oPi_table_256_V_address0 = zext_ln668_fu_424_p1;
assign ret_V_5_fu_650_p2 = ($signed(12'd0) - $signed(sext_ln1535_fu_647_p1));
assign ret_V_7_fu_1028_p2 = ($signed(sin_t1_V_fu_922_p3) + $signed(sext_ln1347_fu_1024_p1));
assign ret_V_8_fu_1038_p2 = ($signed(ret_V_7_fu_1028_p2) + $signed(sext_ln1347_1_fu_1034_p1));
assign ret_V_9_fu_1065_p2 = ($signed(ret_V_8_reg_1626) + $signed(sext_ln1347_2_fu_1062_p1));
assign ret_V_fu_1073_p2 = (ret_V_9_fu_1065_p2 + zext_ln1347_fu_1070_p1);
assign rhs_1_fu_943_p4 = {{r_V_15_fu_937_p2[106:53]}};
assign rhs_2_fu_966_p4 = {{r_V_16_fu_960_p2[91:46]}};
assign s_out_1_fu_1413_p3 = ((tmp_6_fu_1364_p10[0:0] == 1'b1) ? s_out_fu_1405_p1 : c_out_fu_1409_p1);
assign s_out_fu_1405_p1 = p_Result_27_fu_1385_p4;
assign select_ln208_1_fu_1285_p3 = ((xor_ln208_1_fu_1279_p2[0:0] == 1'b1) ? 11'd2047 : 11'd0);
assign select_ln208_3_fu_1306_p3 = ((xor_ln208_1_fu_1279_p2[0:0] == 1'b1) ? 52'd4503599627370495 : 52'd0);
assign select_ln208_5_fu_1340_p3 = ((and_ln208_fu_1253_p2[0:0] == 1'b1) ? 11'd1023 : 11'd2047);
assign select_ln482_fu_480_p3 = ((closepath_reg_1454[0:0] == 1'b1) ? Ex_V_fu_475_p2 : 11'd0);
assign sext_ln1204_fu_583_p1 = $signed(p_Result_23_fu_575_p3);
assign sext_ln1347_1_fu_1034_p1 = $signed(rhs_2_fu_966_p4);
assign sext_ln1347_2_fu_1062_p1 = $signed(rhs_3_reg_1616);
assign sext_ln1347_fu_1024_p1 = $signed(rhs_1_fu_943_p4);
assign sext_ln1488_fu_663_p1 = $signed(ush_fu_656_p3);
assign sext_ln1535_fu_647_p1 = Ex_V_2_reg_1505;
assign sext_ln813_1_fu_900_p1 = $signed(shl_i_i_i824_i_neg_fu_894_p2);
assign sext_ln813_fu_1047_p1 = $signed(trunc_ln818_3_reg_1606);
assign sext_ln818_1_fu_1044_p1 = $signed(cos_t4_V_reg_1601);
assign sext_ln818_fu_795_p1 = $signed(cos_t2_V_fu_785_p4);
assign shl_i_i_i824_i_neg_fu_894_p2 = (62'd0 - zext_ln85_fu_768_p1);
assign sin_results_exp_V_2_fu_1298_p3 = ((or_ln208_fu_1293_p2[0:0] == 1'b1) ? select_ln208_1_fu_1285_p3 : sin_results_exp_V_fu_1125_p4);
assign sin_results_exp_V_fu_1125_p4 = {{data_V_1_fu_1113_p1[62:52]}};
assign sin_results_sig_V_2_fu_1314_p3 = ((or_ln208_fu_1293_p2[0:0] == 1'b1) ? select_ln208_3_fu_1306_p3 : sin_results_sig_V_fu_1135_p1);
assign sin_results_sig_V_fu_1135_p1 = data_V_1_fu_1113_p1[51:0];
assign sin_results_sign_V_1_fu_1203_p2 = (tmp_4_fu_1165_p18 | p_Result_25_fu_1117_p3);
assign sin_results_sign_V_2_fu_1262_p2 = (xor_ln215_fu_1257_p2 & sin_results_sign_V_1_fu_1203_p2);
assign sin_results_sign_V_3_fu_1268_p3 = ((and_ln208_fu_1253_p2[0:0] == 1'b1) ? p_Result_19_reg_1441 : sin_results_sign_V_2_fu_1262_p2);
assign sin_t1_V_fu_922_p3 = {{fourth_order_double_sin_K0_V_q0}, {3'd0}};
assign sub_ln813_1_fu_916_p2 = (sub_ln813_fu_910_p2 - zext_ln818_fu_822_p1);
assign sub_ln813_2_fu_1050_p2 = ($signed(sub_ln813_1_reg_1611) - $signed(sext_ln818_1_fu_1044_p1));
assign sub_ln813_fu_910_p2 = ($signed(xor_ln813_fu_904_p2) - $signed(sext_ln818_fu_795_p1));
assign tmp_10_fu_507_p3 = grp_fu_469_p2[32'd167];
always @ (sext_ln1204_fu_583_p1) begin
 if (sext_ln1204_fu_583_p1[0] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd0;
 end else if (sext_ln1204_fu_583_p1[1] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd1;
 end else if (sext_ln1204_fu_583_p1[2] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd2;
 end else if (sext_ln1204_fu_583_p1[3] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd3;
 end else if (sext_ln1204_fu_583_p1[4] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd4;
 end else if (sext_ln1204_fu_583_p1[5] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd5;
 end else if (sext_ln1204_fu_583_p1[6] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd6;
 end else if (sext_ln1204_fu_583_p1[7] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd7;
 end else if (sext_ln1204_fu_583_p1[8] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd8;
 end else if (sext_ln1204_fu_583_p1[9] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd9;
 end else if (sext_ln1204_fu_583_p1[10] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd10;
 end else if (sext_ln1204_fu_583_p1[11] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd11;
 end else if (sext_ln1204_fu_583_p1[12] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd12;
 end else if (sext_ln1204_fu_583_p1[13] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd13;
 end else if (sext_ln1204_fu_583_p1[14] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd14;
 end else if (sext_ln1204_fu_583_p1[15] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd15;
 end else if (sext_ln1204_fu_583_p1[16] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd16;
 end else if (sext_ln1204_fu_583_p1[17] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd17;
 end else if (sext_ln1204_fu_583_p1[18] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd18;
 end else if (sext_ln1204_fu_583_p1[19] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd19;
 end else if (sext_ln1204_fu_583_p1[20] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd20;
 end else if (sext_ln1204_fu_583_p1[21] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd21;
 end else if (sext_ln1204_fu_583_p1[22] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd22;
 end else if (sext_ln1204_fu_583_p1[23] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd23;
 end else if (sext_ln1204_fu_583_p1[24] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd24;
 end else if (sext_ln1204_fu_583_p1[25] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd25;
 end else if (sext_ln1204_fu_583_p1[26] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd26;
 end else if (sext_ln1204_fu_583_p1[27] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd27;
 end else if (sext_ln1204_fu_583_p1[28] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd28;
 end else if (sext_ln1204_fu_583_p1[29] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd29;
 end else if (sext_ln1204_fu_583_p1[30] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd30;
 end else if (sext_ln1204_fu_583_p1[31] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd31;
 end else if (sext_ln1204_fu_583_p1[32] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd32;
 end else if (sext_ln1204_fu_583_p1[33] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd33;
 end else if (sext_ln1204_fu_583_p1[34] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd34;
 end else if (sext_ln1204_fu_583_p1[35] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd35;
 end else if (sext_ln1204_fu_583_p1[36] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd36;
 end else if (sext_ln1204_fu_583_p1[37] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd37;
 end else if (sext_ln1204_fu_583_p1[38] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd38;
 end else if (sext_ln1204_fu_583_p1[39] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd39;
 end else if (sext_ln1204_fu_583_p1[40] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd40;
 end else if (sext_ln1204_fu_583_p1[41] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd41;
 end else if (sext_ln1204_fu_583_p1[42] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd42;
 end else if (sext_ln1204_fu_583_p1[43] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd43;
 end else if (sext_ln1204_fu_583_p1[44] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd44;
 end else if (sext_ln1204_fu_583_p1[45] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd45;
 end else if (sext_ln1204_fu_583_p1[46] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd46;
 end else if (sext_ln1204_fu_583_p1[47] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd47;
 end else if (sext_ln1204_fu_583_p1[48] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd48;
 end else if (sext_ln1204_fu_583_p1[49] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd49;
 end else if (sext_ln1204_fu_583_p1[50] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd50;
 end else if (sext_ln1204_fu_583_p1[51] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd51;
 end else if (sext_ln1204_fu_583_p1[52] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd52;
 end else if (sext_ln1204_fu_583_p1[53] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd53;
 end else if (sext_ln1204_fu_583_p1[54] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd54;
 end else if (sext_ln1204_fu_583_p1[55] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd55;
 end else if (sext_ln1204_fu_583_p1[56] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd56;
 end else if (sext_ln1204_fu_583_p1[57] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd57;
 end else if (sext_ln1204_fu_583_p1[58] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd58;
 end else if (sext_ln1204_fu_583_p1[59] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd59;
 end else if (sext_ln1204_fu_583_p1[60] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd60;
 end else if (sext_ln1204_fu_583_p1[61] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd61;
 end else if (sext_ln1204_fu_583_p1[62] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd62;
 end else if (sext_ln1204_fu_583_p1[63] == 1'b1) begin
 tmp_3_fu_587_p3 = 64'd63;
 end else begin
 tmp_3_fu_587_p3 = 64'd64;
 end
end
assign tmp_8_fu_1092_p4 = {{r_V_20_fu_1086_p2[124:63]}};
assign tmp_fu_414_p4 = {{addr_fu_406_p3[10:7]}};
assign tmp_s_fu_547_p4 = {{Mx_bits_V_3_fu_539_p3[123:63]}};
assign trunc_ln1271_1_fu_860_p4 = {{r_V_9_fu_754_p2[97:63]}};
assign trunc_ln3_fu_812_p4 = {{r_V_12_fu_806_p2[92:46]}};
assign trunc_ln4_fu_826_p4 = {{r_V_7_fu_749_p2[97:56]}};
assign trunc_ln628_fu_429_p1 = addr_fu_406_p3[6:0];
assign ush_fu_656_p3 = ((isNeg_reg_1510[0:0] == 1'b1) ? ret_V_5_fu_650_p2 : sext_ln1535_fu_647_p1);
assign xor_ln1027_fu_522_p2 = (closepath_reg_1454 ^ 1'd1);
assign xor_ln208_1_fu_1279_p2 = (1'd1 ^ and_ln208_1_fu_1275_p2);
assign xor_ln208_fu_1322_p2 = (1'd1 ^ and_ln208_fu_1253_p2);
assign xor_ln215_fu_1257_p2 = (icmp_ln1019_2_reg_1522 ^ 1'd1);
assign xor_ln813_fu_904_p2 = (sext_ln813_1_fu_900_p1 ^ 63'd4611686018427387904);
assign zext_ln1271_fu_712_p1 = B_trunc_fu_702_p4;
assign zext_ln1347_fu_1070_p1 = rhs_4_reg_1621;
assign zext_ln1454_fu_603_p1 = Mx_zeros_fu_595_p1;
assign zext_ln1488_fu_667_p1 = $unsigned(sext_ln1488_fu_663_p1);
assign zext_ln541_fu_732_p1 = A_V_fu_688_p4;
assign zext_ln668_fu_424_p1 = tmp_fu_414_p4;
assign zext_ln818_1_fu_746_p1 = B_squared_V_reg_1544;
assign zext_ln818_2_fu_1102_p1 = tmp_8_fu_1092_p4;
assign zext_ln818_fu_822_p1 = trunc_ln3_fu_812_p4;
assign zext_ln841_fu_599_p1 = Mx_zeros_fu_595_p1;
assign zext_ln85_fu_768_p1 = cos_t1_V_1_fu_760_p3;
assign zext_ln930_fu_446_p1 = trunc_ln628_reg_1471;
always @ (posedge ap_clk) begin
 zext_ln1271_reg_1539[97:49] <= 49'b0000000000000000000000000000000000000000000000000;
 zext_ln818_2_reg_1636[62] <= 1'b0;
end
endmodule
module entry_point_generic_sincos_double_s_fourth_order_double_cos_K0_V_ROM_1P_LUTRAM_1R (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 58;
parameter AddressWidth = 7;
parameter AddressRange = 128;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
(* rom_style = "distributed" *)reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h000000000000000;
 rom0[1]=8'h00009DE9C5D5B6D;
 rom0[2]=8'h000277A591B492B;
 rom0[3]=8'h00058D2ED2B97B7;
 rom0[4]=8'h0009DE7DECCBCD3;
 rom0[5]=8'h000F6B8838B01F7;
 rom0[6]=8'h0016344004228DC;
 rom0[7]=8'h001E389491F8837;
 rom0[8]=8'h002778721A4A08B;
 rom0[9]=8'h0031F3C1CAA2911;
 rom0[10]=8'h003DAA69C6394B5;
 rom0[11]=8'h004A9C4D2630F15;
 rom0[12]=8'h0058C94BF9DF181;
 rom0[13]=8'h00683143471AFEC;
 rom0[14]=8'h0078D40D0A93DC1;
 rom0[15]=8'h008AB180382EA95;
 rom0[16]=8'h009DC970BB6B6A1;
 rom0[17]=8'h00B21BAF77D1EF4;
 rom0[18]=8'h00C7A80A4966154;
 rom0[19]=8'h00DE6E4C05237B7;
 rom0[20]=8'h00F66E3C7980B38;
 rom0[21]=8'h010FA7A06EF9E8C;
 rom0[22]=8'h012A1A39A8A2FC2;
 rom0[23]=8'h0145C5C6E4C1156;
 rom0[24]=8'h0162AA03DD6BA64;
 rom0[25]=8'h0180C6A94934DFD;
 rom0[26]=8'h01A01B6CDBD996B;
 rom0[27]=8'h01C0A80146F895A;
 rom0[28]=8'h01E26C163AD15C1;
 rom0[29]=8'h02056758670A473;
 rom0[30]=8'h022999717B7E237;
 rom0[31]=8'h024F02082911243;
 rom0[32]=8'h0275A0C0228D405;
 rom0[33]=8'h029D753A1D85F08;
 rom0[34]=8'h02C67F13D3434DE;
 rom0[35]=8'h02F0BDE801B48EB;
 rom0[36]=8'h031C314E6C69DE1;
 rom0[37]=8'h0348D8DBDD958D1;
 rom0[38]=8'h0376B42227149A5;
 rom0[39]=8'h03A5C2B0237E8D8;
 rom0[40]=8'h03D60411B73CA49;
 rom0[41]=8'h040777CFD1A84F8;
 rom0[42]=8'h043A1D706E30F7F;
 rom0[43]=8'h046DF4769589123;
 rom0[44]=8'h04A2FC625EDA747;
 rom0[45]=8'h04D934B0F101F0E;
 rom0[46]=8'h05109CDC83D2309;
 rom0[47]=8'h0549345C615DCB1;
 rom0[48]=8'h0582FAA4E748980;
 rom0[49]=8'h05BDEF27882037B;
 rom0[50]=8'h05FA1152CCBBCE7;
 rom0[51]=8'h0637609255A2F07;
 rom0[52]=8'h0675DC4EDC7BB9E;
 rom0[53]=8'h06B583EE3580101;
 rom0[54]=8'h06F656D350FA080;
 rom0[55]=8'h0738545E3CC76E9;
 rom0[56]=8'h077B7BEC25E46EC;
 rom0[57]=8'h07BFCCD759FD520;
 rom0[58]=8'h080546774907572;
 rom0[59]=8'h084BE82086E09B0;
 rom0[60]=8'h0893B124CCF7105;
 rom0[61]=8'h08DCA0D2FBF6813;
 rom0[62]=8'h0926B6771D7D96C;
 rom0[63]=8'h0971F15A65D9E34;
 rom0[64]=8'h09BE50C335CAE95;
 rom0[65]=8'h0A0BD3F51C4C1C8;
 rom0[66]=8'h0A5A7A30D865D6F;
 rom0[67]=8'h0AAA42B45B053F9;
 rom0[68]=8'h0AFB2CBAC8DB1B6;
 rom0[69]=8'h0B4D377C7C41871;
 rom0[70]=8'h0BA0622F0728924;
 rom0[71]=8'h0BF4AC053509B91;
 rom0[72]=8'h0C4A142F0CE2367;
 rom0[73]=8'h0CA099D9D3342AB;
 rom0[74]=8'h0CF83C300C0E915;
 rom0[75]=8'h0D50FA597D1C008;
 rom0[76]=8'h0DAAD37B2FB82E7;
 rom0[77]=8'h0E05C6B7730C35E;
 rom0[78]=8'h0E61D32DDE3195E;
 rom0[79]=8'h0EBEF7FB525BE6B;
 rom0[80]=8'h0F1D3439FD093F2;
 rom0[81]=8'h0F7C87015A39442;
 rom0[82]=8'h0FDCEF6636AADE4;
 rom0[83]=8'h103E6C7AB2208E3;
 rom0[84]=8'h10A0FD4E41AB5C0;
 rom0[85]=8'h1104A0EDB1FC5A7;
 rom0[86]=8'h1169566329BCB91;
 rom0[87]=8'h11CF1CB62BEC5FB;
 rom0[88]=8'h1235F2EB9A470C6;
 rom0[89]=8'h129DD805B7AFEF2;
 rom0[90]=8'h1306CB042AA3BC9;
 rom0[91]=8'h1370CAE3FFB1320;
 rom0[92]=8'h13DBD69FABF8045;
 rom0[93]=8'h1447ED2F0FAE340;
 rom0[94]=8'h14B50D8778ABC01;
 rom0[95]=8'h1523369BA4FCB12;
 rom0[96]=8'h1592675BC57976C;
 rom0[97]=8'h16029EB58065907;
 rom0[98]=8'h1673DB93F4147BD;
 rom0[99]=8'h16E61CDFB994E1D;
 rom0[100]=8'h1759617EE761FB8;
 rom0[101]=8'h17CDA855141B28D;
 rom0[102]=8'h1842F0435941B22;
 rom0[103]=8'h18B9382855FCAD4;
 rom0[104]=8'h19307EE031E3004;
 rom0[105]=8'h19A8C3449FCB7A5;
 rom0[106]=8'h1A22042CE0A2FC3;
 rom0[107]=8'h1A9C406DC648A87;
 rom0[108]=8'h1B1776D9B67015E;
 rom0[109]=8'h1B93A640AD897B7;
 rom0[110]=8'h1C10CD7041AFCF9;
 rom0[111]=8'h1C8EEB33A59CD2F;
 rom0[112]=8'h1D0DFE53ABA3006;
 rom0[113]=8'h1D8E0596C8AD596;
 rom0[114]=8'h1E0EFFC11745087;
 rom0[115]=8'h1E90EB945A9CD20;
 rom0[116]=8'h1F13C7D001A24C1;
 rom0[117]=8'h1F9793312A14D4B;
 rom0[118]=8'h201C4C72A3A2410;
 rom0[119]=8'h20A1F24CF3093AE;
 rom0[120]=8'h21288376554147F;
 rom0[121]=8'h21AFFEA2C2A8708;
 rom0[122]=8'h22386283F2367ED;
 rom0[123]=8'h22C1ADC95CB5CF8;
 rom0[124]=8'h234BDF204001AA7;
 rom0[125]=8'h23D6F533A24A1C7;
 rom0[126]=8'h2462EEAC555D497;
 rom0[127]=8'h24EFCA30F9F62F5;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_generic_sincos_double_s_fourth_order_double_cos_K1_V_ROM_1P_LUTRAM_1R (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 53;
parameter AddressWidth = 7;
parameter AddressRange = 128;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
(* rom_style = "distributed" *)reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h1FFFFFFFFFFFF9;
 rom0[1]=8'h0013BD34ABAFA4;
 rom0[2]=8'h00277A38A3203E;
 rom0[3]=8'h003B36DB328AE7;
 rom0[4]=8'h004EF2EBA71922;
 rom0[5]=8'h0062AE394F5CCD;
 rom0[6]=8'h007668937BC897;
 rom0[7]=8'h008A21C97F27DB;
 rom0[8]=8'h009DD9AAAF16CF;
 rom0[9]=8'h00B19006647AAB;
 rom0[10]=8'h00C544ABFBF99D;
 rom0[11]=8'h00D8F76AD672DE;
 rom0[12]=8'h00ECA81259769B;
 rom0[13]=8'h01005671EFBDE3;
 rom0[14]=8'h0114025909A299;
 rom0[15]=8'h0127AB971D9728;
 rom0[16]=8'h013B51FBA89E4F;
 rom0[17]=8'h014EF5562EC2F5;
 rom0[18]=8'h016295763B8F9E;
 rom0[19]=8'h0176322B6285FC;
 rom0[20]=8'h0189CB453F969F;
 rom0[21]=8'h019D6093779807;
 rom0[22]=8'h01B0F1E5B8BE47;
 rom0[23]=8'h01C47F0BBB11FC;
 rom0[24]=8'h01D807D540E7B4;
 rom0[25]=8'h01EB8C121756A3;
 rom0[26]=8'h01FF0B9216AFC9;
 rom0[27]=8'h0212862522F4AE;
 rom0[28]=8'h0225FB9B2C4E2B;
 rom0[29]=8'h02396BC42F82EC;
 rom0[30]=8'h024CD670366DE1;
 rom0[31]=8'h02603B6F5874B8;
 rom0[32]=8'h02739A91BAFDDB;
 rom0[33]=8'h0286F3A791E6B3;
 rom0[34]=8'h029A46811FF99D;
 rom0[35]=8'h02AD92EEB76388;
 rom0[36]=8'h02C0D8C0BA29B5;
 rom0[37]=8'h02D417C79A9F2F;
 rom0[38]=8'h02E74FD3DBDA1E;
 rom0[39]=8'h02FA80B6122902;
 rom0[40]=8'h030DAA3EE387AC;
 rom0[41]=8'h0320CC3F0813F4;
 rom0[42]=8'h0333E6874A82A3;
 rom0[43]=8'h0346F8E88893C1;
 rom0[44]=8'h035A0333B386CD;
 rom0[45]=8'h036D0539D08F20;
 rom0[46]=8'h037FFECBF94795;
 rom0[47]=8'h0392EFBB5C265D;
 rom0[48]=8'h03A5D7D93CF095;
 rom0[49]=8'h03B8B6F6F52D5A;
 rom0[50]=8'h03CB8CE5F49930;
 rom0[51]=8'h03DE5977C198BB;
 rom0[52]=8'h03F11C7DF9AB71;
 rom0[53]=8'h0403D5CA51DE12;
 rom0[54]=8'h0416852E973CD5;
 rom0[55]=8'h04292A7CAF4574;
 rom0[56]=8'h043BC5869858EC;
 rom0[57]=8'h044E561E6A2D00;
 rom0[58]=8'h0460DC16563D65;
 rom0[59]=8'h04735740A83D02;
 rom0[60]=8'h0485C76FC68676;
 rom0[61]=8'h04982C76328CB5;
 rom0[62]=8'h04AA8626894B6A;
 rom0[63]=8'h04BCD45383B6BD;
 rom0[64]=8'h04CF16CFF72B1A;
 rom0[65]=8'h04E14D6ED5DCBA;
 rom0[66]=8'h04F378032F46CF;
 rom0[67]=8'h05059660309A1D;
 rom0[68]=8'h0517A859252C16;
 rom0[69]=8'h0529ADC176E4A4;
 rom0[70]=8'h053BA66CAEAC7D;
 rom0[71]=8'h054D922E74DABC;
 rom0[72]=8'h055F70DA91A259;
 rom0[73]=8'h05714244ED7F3E;
 rom0[74]=8'h0583064191A2EE;
 rom0[75]=8'h0594BCA4A86155;
 rom0[76]=8'h05A665427D9C8C;
 rom0[77]=8'h05B7FFEF7F30F5;
 rom0[78]=8'h05C98C803D6099;
 rom0[79]=8'h05DB0AC96B3E6F;
 rom0[80]=8'h05EC7A9FDF1912;
 rom0[81]=8'h05FDDBD892E56F;
 rom0[82]=8'h060F2E48A4A8B0;
 rom0[83]=8'h062071C556E250;
 rom0[84]=8'h0631A62410F54C;
 rom0[85]=8'h0642CB3A5F916C;
 rom0[86]=8'h0653E0DDF51BFF;
 rom0[87]=8'h0664E6E4AA1815;
 rom0[88]=8'h0675DD247D8EB3;
 rom0[89]=8'h0686C373957657;
 rom0[90]=8'h069799A83F1A4A;
 rom0[91]=8'h06A85F98EF8169;
 rom0[92]=8'h06B9151C43D4C7;
 rom0[93]=8'h06C9BA0901C5D7;
 rom0[94]=8'h06DA4E3617F3EF;
 rom0[95]=8'h06EAD17A9E51BA;
 rom0[96]=8'h06FB43ADD68A2F;
 rom0[97]=8'h070BA4A72C650C;
 rom0[98]=8'h071BF43E362B06;
 rom0[99]=8'h072C324AB5095E;
 rom0[100]=8'h073C5EA4957560;
 rom0[101]=8'h074C7923EF8F26;
 rom0[102]=8'h075C81A10783EE;
 rom0[103]=8'h076C77F44DF068;
 rom0[104]=8'h077C5BF6604235;
 rom0[105]=8'h078C2D80091910;
 rom0[106]=8'h079BEC6A40A76F;
 rom0[107]=8'h07AB988E2D1327;
 rom0[108]=8'h07BB31C522D4E2;
 rom0[109]=8'h07CAB7E8A517C7;
 rom0[110]=8'h07DA2AD2661860;
 rom0[111]=8'h07E98A5C478338;
 rom0[112]=8'h07F8D6605AD2B5;
 rom0[113]=8'h08080EB8E1ACC1;
 rom0[114]=8'h081733404E4009;
 rom0[115]=8'h082643D143A092;
 rom0[116]=8'h083540469623CF;
 rom0[117]=8'h0844287B4BBCA3;
 rom0[118]=8'h0852FC4A9C5628;
 rom0[119]=8'h0861BB8FF22EF0;
 rom0[120]=8'h08706626EA32FA;
 rom0[121]=8'h087EFBEB545571;
 rom0[122]=8'h088D7CB933EA3B;
 rom0[123]=8'h089BE86CBFFE93;
 rom0[124]=8'h08AA3EE263B157;
 rom0[125]=8'h08B87FF6BE8ACC;
 rom0[126]=8'h08C6AB86A4D407;
 rom0[127]=8'h08D4C16F1FEDB3;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_generic_sincos_double_s_fourth_order_double_cos_K2_V_ROM_1P_LUTRAM_1R (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 44;
parameter AddressWidth = 7;
parameter AddressRange = 128;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
(* rom_style = "distributed" *)reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h9DE9E64DF64;
 rom0[1]=8'h9DE9237CB60;
 rom0[2]=8'h9DE6DB0ABF2;
 rom0[3]=8'h9DE30CFDB21;
 rom0[4]=8'h9DDDB95EF0D;
 rom0[5]=8'h9DD6E03BA42;
 rom0[6]=8'h9DCE81A4AD2;
 rom0[7]=8'h9DC49DAEB41;
 rom0[8]=8'h9DB93472218;
 rom0[9]=8'h9DAC460B1CE;
 rom0[10]=8'h9D9DD2998EA;
 rom0[11]=8'h9D8DDA411D9;
 rom0[12]=8'h9D7C5D2931A;
 rom0[13]=8'h9D695B7CF20;
 rom0[14]=8'h9D54D56B41F;
 rom0[15]=8'h9D3ECB26C75;
 rom0[16]=8'h9D273CE5E5C;
 rom0[17]=8'h9D0E2AE2B82;
 rom0[18]=8'h9CF3955B1C0;
 rom0[19]=8'h9CD77C90AAF;
 rom0[20]=8'h9CB9E0C8B4D;
 rom0[21]=8'h9C9AC24C4C0;
 rom0[22]=8'h9C7A216836E;
 rom0[23]=8'h9C57FE6CF93;
 rom0[24]=8'h9C3459AEC88;
 rom0[25]=8'h9C0F33859AB;
 rom0[26]=8'h9BE88C4D195;
 rom0[27]=8'h9BC06464A4D;
 rom0[28]=8'h9B96BC2F4FA;
 rom0[29]=8'h9B6B9413E24;
 rom0[30]=8'h9B3EEC7CDA8;
 rom0[31]=8'h9B10C5D8633;
 rom0[32]=8'h9AE120985FA;
 rom0[33]=8'h9AAFFD32601;
 rom0[34]=8'h9A7D5C1F9ED;
 rom0[35]=8'h9A493DDD089;
 rom0[36]=8'h9A13A2EB366;
 rom0[37]=8'h99DC8BCE6D2;
 rom0[38]=8'h99A3F90E9B7;
 rom0[39]=8'h9969EB3757A;
 rom0[40]=8'h992E62D7DC5;
 rom0[41]=8'h98F16083138;
 rom0[42]=8'h98B2E4CF81F;
 rom0[43]=8'h9872F05750E;
 rom0[44]=8'h983183B853B;
 rom0[45]=8'h97EE9F93F32;
 rom0[46]=8'h97AA448F3CA;
 rom0[47]=8'h97647352D9C;
 rom0[48]=8'h971D2C8B0B7;
 rom0[49]=8'h96D470E7B52;
 rom0[50]=8'h968A411C4AA;
 rom0[51]=8'h963E9DDFD7A;
 rom0[52]=8'h95F187ECFCE;
 rom0[53]=8'h95A30001ED0;
 rom0[54]=8'h955306E06DC;
 rom0[55]=8'h95019D4DD2A;
 rom0[56]=8'h94AEC412FA6;
 rom0[57]=8'h945A7BFC507;
 rom0[58]=8'h9404C5D9CC0;
 rom0[59]=8'h93ADA27EE52;
 rom0[60]=8'h935512C29FA;
 rom0[61]=8'h92FB177F80C;
 rom0[62]=8'h929FB1938A7;
 rom0[63]=8'h9242E1E0408;
 rom0[64]=8'h91E4A94AA60;
 rom0[65]=8'h918508BB363;
 rom0[66]=8'h9124011DDF4;
 rom0[67]=8'h90C19362132;
 rom0[68]=8'h905DC07AA53;
 rom0[69]=8'h8FF8895DE84;
 rom0[70]=8'h8F91EF0598F;
 rom0[71]=8'h8F29F26EE10;
 rom0[72]=8'h8EC0949A531;
 rom0[73]=8'h8E55D68BE79;
 rom0[74]=8'h8DE9B94B054;
 rom0[75]=8'h8D7C3DE2673;
 rom0[76]=8'h8D0D6560347;
 rom0[77]=8'h8C9D30D5EC2;
 rom0[78]=8'h8C2BA15869B;
 rom0[79]=8'h8BB8B7FFDF3;
 rom0[80]=8'h8B4475E7D60;
 rom0[81]=8'h8ACEDC2F266;
 rom0[82]=8'h8A57EBF7FE8;
 rom0[83]=8'h89DFA667D17;
 rom0[84]=8'h89660CA7655;
 rom0[85]=8'h88EB1FE2C24;
 rom0[86]=8'h886EE149348;
 rom0[87]=8'h87F1520D4DD;
 rom0[88]=8'h87727364DA7;
 rom0[89]=8'h86F24688E47;
 rom0[90]=8'h8670CCB5AC7;
 rom0[91]=8'h85EE072AAD9;
 rom0[92]=8'h8569F72A93F;
 rom0[93]=8'h84E49DFB325;
 rom0[94]=8'h845DFCE5910;
 rom0[95]=8'h83D61535E16;
 rom0[96]=8'h834CE83B769;
 rom0[97]=8'h82C27748C8F;
 rom0[98]=8'h8236C3B36E0;
 rom0[99]=8'h81A9CED41B1;
 rom0[100]=8'h811B9A06989;
 rom0[101]=8'h808C26A9C58;
 rom0[102]=8'h7FFB761F99E;
 rom0[103]=8'h7F6989CD172;
 rom0[104]=8'h7ED6631A47C;
 rom0[105]=8'h7E4203723EB;
 rom0[106]=8'h7DAC6C4319F;
 rom0[107]=8'h7D159EFDEBC;
 rom0[108]=8'h7C7D9D16CE7;
 rom0[109]=8'h7BE46804D39;
 rom0[110]=8'h7B4A0142002;
 rom0[111]=8'h7AAE6A4B48F;
 rom0[112]=8'h7A11A4A0953;
 rom0[113]=8'h7973B1C4B9E;
 rom0[114]=8'h78D4933D6EF;
 rom0[115]=8'h78344A934D9;
 rom0[116]=8'h7792D951D65;
 rom0[117]=8'h76F0410759F;
 rom0[118]=8'h764C83450F2;
 rom0[119]=8'h75A7A19EF4D;
 rom0[120]=8'h75019DABDD0;
 rom0[121]=8'h745A79056E8;
 rom0[122]=8'h73B235480E4;
 rom0[123]=8'h7308D412E70;
 rom0[124]=8'h725E5707E65;
 rom0[125]=8'h71B2BFCBB9B;
 rom0[126]=8'h71061005C17;
 rom0[127]=8'h70584960106;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_generic_sincos_double_s_fourth_order_double_cos_K3_V_ROM_1P_LUTRAM_1R (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 35;
parameter AddressWidth = 7;
parameter AddressRange = 128;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
(* rom_style = "distributed" *)reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h7FFFFFF4E;
 rom0[1]=8'h7F7E1F0FA;
 rom0[2]=8'h7EFC3F687;
 rom0[3]=8'h7E7A6243B;
 rom0[4]=8'h7DF888E18;
 rom0[5]=8'h7D76B47E3;
 rom0[6]=8'h7CF4E6600;
 rom0[7]=8'h7C731FC42;
 rom0[8]=8'h7BF161EA2;
 rom0[9]=8'h7B6FAE11D;
 rom0[10]=8'h7AEE057B4;
 rom0[11]=8'h7A6C69680;
 rom0[12]=8'h79EADB16E;
 rom0[13]=8'h79695BC7A;
 rom0[14]=8'h78E7ECBCD;
 rom0[15]=8'h78668F320;
 rom0[16]=8'h77E54464C;
 rom0[17]=8'h77640D9A3;
 rom0[18]=8'h76E2EC0CC;
 rom0[19]=8'h7661E0FB4;
 rom0[20]=8'h75E0EDA6C;
 rom0[21]=8'h756013497;
 rom0[22]=8'h74DF53227;
 rom0[23]=8'h745EAE6F1;
 rom0[24]=8'h73DE26721;
 rom0[25]=8'h735DBC63F;
 rom0[26]=8'h72DD7180D;
 rom0[27]=8'h725D47046;
 rom0[28]=8'h71DD3E2DF;
 rom0[29]=8'h715D58393;
 rom0[30]=8'h70DD965F8;
 rom0[31]=8'h705DF9E10;
 rom0[32]=8'h6FDE83F36;
 rom0[33]=8'h6F5F35CFA;
 rom0[34]=8'h6EE010B53;
 rom0[35]=8'h6E6115DD5;
 rom0[36]=8'h6DE246809;
 rom0[37]=8'h6D63A3D5F;
 rom0[38]=8'h6CE52F15B;
 rom0[39]=8'h6C66E9774;
 rom0[40]=8'h6BE8D438A;
 rom0[41]=8'h6B6AF0872;
 rom0[42]=8'h6AED3F9EB;
 rom0[43]=8'h6A6FC2BA1;
 rom0[44]=8'h69F27B057;
 rom0[45]=8'h697569BC9;
 rom0[46]=8'h68F890120;
 rom0[47]=8'h687BEF393;
 rom0[48]=8'h67FF8869F;
 rom0[49]=8'h67835CD01;
 rom0[50]=8'h67076DA0D;
 rom0[51]=8'h668BBC0EC;
 rom0[52]=8'h6610494B0;
 rom0[53]=8'h659516873;
 rom0[54]=8'h651A24F13;
 rom0[55]=8'h649F75B7F;
 rom0[56]=8'h64250A0D5;
 rom0[57]=8'h63AAE31DC;
 rom0[58]=8'h633102150;
 rom0[59]=8'h62B768244;
 rom0[60]=8'h623E1672C;
 rom0[61]=8'h61C50E2C2;
 rom0[62]=8'h614C507D8;
 rom0[63]=8'h60D3DE920;
 rom0[64]=8'h605BB98FC;
 rom0[65]=8'h5FE3E29D8;
 rom0[66]=8'h5F6C5AEA8;
 rom0[67]=8'h5EF523910;
 rom0[68]=8'h5E7E3DC4D;
 rom0[69]=8'h5E07AAA47;
 rom0[70]=8'h5D916B545;
 rom0[71]=8'h5D1B80F85;
 rom0[72]=8'h5CA5ECB40;
 rom0[73]=8'h5C30AFAE1;
 rom0[74]=8'h5BBBCAFD5;
 rom0[75]=8'h5B473FCDD;
 rom0[76]=8'h5AD30F38C;
 rom0[77]=8'h5A5F3A5D6;
 rom0[78]=8'h59EBC2599;
 rom0[79]=8'h5978A849E;
 rom0[80]=8'h5905ED4A6;
 rom0[81]=8'h589392780;
 rom0[82]=8'h582198E8A;
 rom0[83]=8'h57B001BC8;
 rom0[84]=8'h573ECE052;
 rom0[85]=8'h56CDFEDD0;
 rom0[86]=8'h565D955B0;
 rom0[87]=8'h55ED92925;
 rom0[88]=8'h557DF7997;
 rom0[89]=8'h550EC582B;
 rom0[90]=8'h549FFD632;
 rom0[91]=8'h5431A047F;
 rom0[92]=8'h53C3AF3D4;
 rom0[93]=8'h53562B5DF;
 rom0[94]=8'h52E915B3C;
 rom0[95]=8'h527C6F478;
 rom0[96]=8'h521039293;
 rom0[97]=8'h51A474623;
 rom0[98]=8'h513921FD3;
 rom0[99]=8'h50CE43008;
 rom0[100]=8'h5063D877F;
 rom0[101]=8'h4FF9E36C6;
 rom0[102]=8'h4F9064DD8;
 rom0[103]=8'h4F275DCE6;
 rom0[104]=8'h4EBECF458;
 rom0[105]=8'h4E56BA46F;
 rom0[106]=8'h4DEF1FCCB;
 rom0[107]=8'h4D8800E00;
 rom0[108]=8'h4D215E79E;
 rom0[109]=8'h4CBB39940;
 rom0[110]=8'h4C55932DD;
 rom0[111]=8'h4BF06C449;
 rom0[112]=8'h4B8BC5D22;
 rom0[113]=8'h4B27A0CA0;
 rom0[114]=8'h4AC3FE238;
 rom0[115]=8'h4A60DEDA0;
 rom0[116]=8'h49FE43DA8;
 rom0[117]=8'h499C2E20F;
 rom0[118]=8'h493A9E970;
 rom0[119]=8'h48D99632A;
 rom0[120]=8'h487915E6E;
 rom0[121]=8'h48191E976;
 rom0[122]=8'h47B9B135B;
 rom0[123]=8'h475ACEB0F;
 rom0[124]=8'h46FC77F28;
 rom0[125]=8'h469EADDD0;
 rom0[126]=8'h4641715B2;
 rom0[127]=8'h45E4C3563;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_generic_sincos_double_s_fourth_order_double_cos_K4_V_ROM_1P_LUTRAM_1R (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 27;
parameter AddressWidth = 7;
parameter AddressRange = 128;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
(* rom_style = "distributed" *)reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h5F87CC1;
 rom0[1]=8'h5F881BE;
 rom0[2]=8'h5F88BD2;
 rom0[3]=8'h5F89AD5;
 rom0[4]=8'h5F8AED8;
 rom0[5]=8'h5F8C7ED;
 rom0[6]=8'h5F8E5EB;
 rom0[7]=8'h5F908EE;
 rom0[8]=8'h5F930F4;
 rom0[9]=8'h5F95E04;
 rom0[10]=8'h5F9901A;
 rom0[11]=8'h5F9C729;
 rom0[12]=8'h5FA033B;
 rom0[13]=8'h5FA444A;
 rom0[14]=8'h5FA8A40;
 rom0[15]=8'h5FAD53F;
 rom0[16]=8'h5FB254B;
 rom0[17]=8'h5FB7A34;
 rom0[18]=8'h5FBD426;
 rom0[19]=8'h5FC330E;
 rom0[20]=8'h5FC96E7;
 rom0[21]=8'h5FCFFC2;
 rom0[22]=8'h5FD6DA1;
 rom0[23]=8'h5FDE076;
 rom0[24]=8'h5FE5823;
 rom0[25]=8'h5FED4C7;
 rom0[26]=8'h5FF5669;
 rom0[27]=8'h5FFDD0A;
 rom0[28]=8'h6006891;
 rom0[29]=8'h600F903;
 rom0[30]=8'h6018E6D;
 rom0[31]=8'h60228A8;
 rom0[32]=8'h602C7D7;
 rom0[33]=8'h6036C06;
 rom0[34]=8'h604150D;
 rom0[35]=8'h604C2EC;
 rom0[36]=8'h60575A7;
 rom0[37]=8'h6062D4E;
 rom0[38]=8'h606E9DC;
 rom0[39]=8'h607AB5A;
 rom0[40]=8'h608718B;
 rom0[41]=8'h6093CBF;
 rom0[42]=8'h60A0CCD;
 rom0[43]=8'h60AE188;
 rom0[44]=8'h60BBB3B;
 rom0[45]=8'h60C99B2;
 rom0[46]=8'h60D7CFA;
 rom0[47]=8'h60E6514;
 rom0[48]=8'h60F51E0;
 rom0[49]=8'h610438E;
 rom0[50]=8'h6113A07;
 rom0[51]=8'h6123543;
 rom0[52]=8'h6133540;
 rom0[53]=8'h61439F5;
 rom0[54]=8'h615436F;
 rom0[55]=8'h61651AF;
 rom0[56]=8'h6176495;
 rom0[57]=8'h6187C36;
 rom0[58]=8'h619988F;
 rom0[59]=8'h61AB982;
 rom0[60]=8'h61BDF36;
 rom0[61]=8'h61D0999;
 rom0[62]=8'h61E38A2;
 rom0[63]=8'h61F6C3E;
 rom0[64]=8'h620A47D;
 rom0[65]=8'h621E172;
 rom0[66]=8'h62322DD;
 rom0[67]=8'h624691C;
 rom0[68]=8'h625B3C2;
 rom0[69]=8'h6270300;
 rom0[70]=8'h62856D7;
 rom0[71]=8'h629AF3F;
 rom0[72]=8'h62B0C34;
 rom0[73]=8'h62C6D8A;
 rom0[74]=8'h62DD394;
 rom0[75]=8'h62F3DF1;
 rom0[76]=8'h630ACCE;
 rom0[77]=8'h6322028;
 rom0[78]=8'h63397F4;
 rom0[79]=8'h635143A;
 rom0[80]=8'h63694EA;
 rom0[81]=8'h63819FE;
 rom0[82]=8'h639A38E;
 rom0[83]=8'h63B315E;
 rom0[84]=8'h63CC3A3;
 rom0[85]=8'h63E5A38;
 rom0[86]=8'h63FF520;
 rom0[87]=8'h6419460;
 rom0[88]=8'h64337E6;
 rom0[89]=8'h644DFB9;
 rom0[90]=8'h6468BBE;
 rom0[91]=8'h6483C0C;
 rom0[92]=8'h649F0C9;
 rom0[93]=8'h64BA98D;
 rom0[94]=8'h64D667C;
 rom0[95]=8'h64F27B8;
 rom0[96]=8'h650ED15;
 rom0[97]=8'h652B69C;
 rom0[98]=8'h654844A;
 rom0[99]=8'h6565626;
 rom0[100]=8'h6582C0F;
 rom0[101]=8'h65A05F2;
 rom0[102]=8'h65BE3ED;
 rom0[103]=8'h65DC60E;
 rom0[104]=8'h65FAC36;
 rom0[105]=8'h6619651;
 rom0[106]=8'h6638488;
 rom0[107]=8'h6657690;
 rom0[108]=8'h6676C8D;
 rom0[109]=8'h669669C;
 rom0[110]=8'h66B6490;
 rom0[111]=8'h66D6660;
 rom0[112]=8'h66F6BFE;
 rom0[113]=8'h6717589;
 rom0[114]=8'h6738300;
 rom0[115]=8'h675942B;
 rom0[116]=8'h677A943;
 rom0[117]=8'h679C208;
 rom0[118]=8'h67BDEA7;
 rom0[119]=8'h67DFEFD;
 rom0[120]=8'h68022E2;
 rom0[121]=8'h6824AA6;
 rom0[122]=8'h6847621;
 rom0[123]=8'h686A52D;
 rom0[124]=8'h688D7CB;
 rom0[125]=8'h68B0E27;
 rom0[126]=8'h68D481B;
 rom0[127]=8'h68F8591;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_generic_sincos_double_s_fourth_order_double_sin_K0_V_ROM_1P_LUTRAM_1R (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 59;
parameter AddressWidth = 7;
parameter AddressRange = 128;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
(* rom_style = "distributed" *)reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h6487ED5110B4612;
 rom0[1]=8'h6487C3F99C01C47;
 rom0[2]=8'h648747F37B1E119;
 rom0[3]=8'h6486793F65A5467;
 rom0[4]=8'h648557DE8D99F7E;
 rom0[5]=8'h6483E3D29F63366;
 rom0[6]=8'h64821D1DC1C99B2;
 rom0[7]=8'h648003C295F37D4;
 rom0[8]=8'h647D97C437604F9;
 rom0[9]=8'h647AD9263BE3266;
 rom0[10]=8'h6477C7ECB39C662;
 rom0[11]=8'h6474641C28F29A2;
 rom0[12]=8'h6470ADB9A08A744;
 rom0[13]=8'h646CA4CA993DF48;
 rom0[14]=8'h646849550C12BA4;
 rom0[15]=8'h64639B5F6C2F7D2;
 rom0[16]=8'h645E9AF0A6D0AF8;
 rom0[17]=8'h64594810233C494;
 rom0[18]=8'h6453A2C5C2B4BC4;
 rom0[19]=8'h644DAB19E06B110;
 rom0[20]=8'h6447611551702D6;
 rom0[21]=8'h6440C4C164A543D;
 rom0[22]=8'h6439D627E2AB6C9;
 rom0[23]=8'h643295530DD2681;
 rom0[24]=8'h642B024DA2068B5;
 rom0[25]=8'h64231D22D4BDD59;
 rom0[26]=8'h641AE5DE54E4307;
 rom0[27]=8'h64125C8C4AC6D9E;
 rom0[28]=8'h6409813957FEF84;
 rom0[29]=8'h640053F2975B594;
 rom0[30]=8'h63F6D4C59CC95AB;
 rom0[31]=8'h63ED03C0753CFEC;
 rom0[32]=8'h63E2E0F1A6982AC;
 rom0[33]=8'h63D86C682F9110F;
 rom0[34]=8'h63CDA6338797C60;
 rom0[35]=8'h63C28E639EBB017;
 rom0[36]=8'h63B72508DD8C0A8;
 rom0[37]=8'h63AB6A342501CFF;
 rom0[38]=8'h639F5DF6CE5B2CE;
 rom0[39]=8'h63930062AB00598;
 rom0[40]=8'h6386518A0463887;
 rom0[41]=8'h6379517F9BE0B0E;
 rom0[42]=8'h636C0056AA9C85F;
 rom0[43]=8'h635E5E22E1629B2;
 rom0[44]=8'h63506AF86882B66;
 rom0[45]=8'h634226EBDFAD505;
 rom0[46]=8'h633392125DCF41A;
 rom0[47]=8'h6324AC8170ECA00;
 rom0[48]=8'h6315764F1DFAC8B;
 rom0[49]=8'h6305EF91E0B99AB;
 rom0[50]=8'h62F61860AB8BDF8;
 rom0[51]=8'h62E5F0D2E74EE42;
 rom0[52]=8'h62D579007331412;
 rom0[53]=8'h62C4B101A488D32;
 rom0[54]=8'h62B398EF46A7E41;
 rom0[55]=8'h62A230E29AB1848;
 rom0[56]=8'h629078F5576D16A;
 rom0[57]=8'h627E7141A9190A5;
 rom0[58]=8'h626C19E2313CCB2;
 rom0[59]=8'h625972F20679E02;
 rom0[60]=8'h62467C8CB45C3E7;
 rom0[61]=8'h623336CE3B29CEA;
 rom0[62]=8'h621FA1D30FB1250;
 rom0[63]=8'h620BBDB81B176D5;
 rom0[64]=8'h61F78A9ABAA58B1;
 rom0[65]=8'h61E30898BF946D5;
 rom0[66]=8'h61CE37D06ED897C;
 rom0[67]=8'h61B9186080ECE03;
 rom0[68]=8'h61A3AA68219C625;
 rom0[69]=8'h618DEE06EFCBA8D;
 rom0[70]=8'h6177E35CFD410CB;
 rom0[71]=8'h61618A8ACE6C4BC;
 rom0[72]=8'h614AE3B15A2D55B;
 rom0[73]=8'h6133EEF2099A512;
 rom0[74]=8'h611CAC6EB7C4D86;
 rom0[75]=8'h61051C49B17E6EE;
 rom0[76]=8'h60ED3EA5B51C2F3;
 rom0[77]=8'h60D513A5F239B28;
 rom0[78]=8'h60BC9B6E097B321;
 rom0[79]=8'h60A3D6220C4EE26;
 rom0[80]=8'h608AC3E67CAD89B;
 rom0[81]=8'h607164E04CDA515;
 rom0[82]=8'h6057B934DF21D29;
 rom0[83]=8'h603DC10A0598602;
 rom0[84]=8'h60237C8601D78BE;
 rom0[85]=8'h6008EBCF84BAE9C;
 rom0[86]=8'h5FEE0F0DAE1C10B;
 rom0[87]=8'h5FD2E6680C8DD91;
 rom0[88]=8'h5FB772069D16DA6;
 rom0[89]=8'h5F9BB211CAEB280;
 rom0[90]=8'h5F7FA6B26F254D2;
 rom0[91]=8'h5F635011D07E89F;
 rom0[92]=8'h5F46AE59A306508;
 rom0[93]=8'h5F29C1B407D903C;
 rom0[94]=8'h5F0C8A4B8CD5F83;
 rom0[95]=8'h5EEF084B2C54B68;
 rom0[96]=8'h5ED13BDE4CD981F;
 rom0[97]=8'h5EB32530C0C921A;
 rom0[98]=8'h5E94C46EC61BEE6;
 rom0[99]=8'h5E7619C50610250;
 rom0[100]=8'h5E57256094DB7DF;
 rom0[101]=8'h5E37E76EF15C0AA;
 rom0[102]=8'h5E18601E04C859D;
 rom0[103]=8'h5DF88F9C225EE23;
 rom0[104]=8'h5DD876180714B53;
 rom0[105]=8'h5DB813C0D94379F;
 rom0[106]=8'h5D9768C62856B10;
 rom0[107]=8'h5D767557EC7841B;
 rom0[108]=8'h5D5539A6863C516;
 rom0[109]=8'h5D33B5E2BE4C65D;
 rom0[110]=8'h5D11EA3DC511D28;
 rom0[111]=8'h5CEFD6E9325F726;
 rom0[112]=8'h5CCD7C17051AADC;
 rom0[113]=8'h5CAAD9F9A2E3CE5;
 rom0[114]=8'h5C87F0C3D7BDA00;
 rom0[115]=8'h5C64C0A8D5B461C;
 rom0[116]=8'h5C4149DC3484046;
 rom0[117]=8'h5C1D8C91F13DBA6;
 rom0[118]=8'h5BF988FE6DECD7B;
 rom0[119]=8'h5BD53F56713B032;
 rom0[120]=8'h5BB0AFCF2613B9D;
 rom0[121]=8'h5B8BDA9E1B47250;
 rom0[122]=8'h5B66BFF9432C43D;
 rom0[123]=8'h5B416016F34268A;
 rom0[124]=8'h5B1BBB2DE3D20B6;
 rom0[125]=8'h5AF5D1752F8CF18;
 rom0[126]=8'h5ACFA324532DAC1;
 rom0[127]=8'h5AA930732D166C8;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_generic_sincos_double_s_fourth_order_double_sin_K1_V_ROM_1P_LUTRAM_1R (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 51;
parameter AddressWidth = 7;
parameter AddressRange = 128;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
(* rom_style = "distributed" *)reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h7FFFFFFFFFFFB;
 rom0[1]=8'h7FAD5120CE238;
 rom0[2]=8'h7F5AA2BC047C7;
 rom0[3]=8'h7F07F54C0A662;
 rom0[4]=8'h7EB5494B458DF;
 rom0[5]=8'h7E629F34191A6;
 rom0[6]=8'h7E0FF780E4D32;
 rom0[7]=8'h7DBD52AC0448E;
 rom0[8]=8'h7D6AB12FCDFD7;
 rom0[9]=8'h7D181386928DE;
 rom0[10]=8'h7CC57A2A9BD96;
 rom0[11]=8'h7C72E5962C2B7;
 rom0[12]=8'h7C2056437D60C;
 rom0[13]=8'h7BCDCCACC0163;
 rom0[14]=8'h7B7B494C1AC99;
 rom0[15]=8'h7B28CC9BA9090;
 rom0[16]=8'h7AD657157A978;
 rom0[17]=8'h7A83E933929A8;
 rom0[18]=8'h7A31836FE6BC6;
 rom0[19]=8'h79DF26445E5CA;
 rom0[20]=8'h798CD22AD1B21;
 rom0[21]=8'h793A879D08FAA;
 rom0[22]=8'h78E84714BBA0D;
 rom0[23]=8'h7896110B8F67A;
 rom0[24]=8'h7843E5FB17909;
 rom0[25]=8'h77F1C65CD40AE;
 rom0[26]=8'h779FB2AA30993;
 rom0[27]=8'h774DAB5C83FD4;
 rom0[28]=8'h76FBB0ED0F237;
 rom0[29]=8'h76A9C3D4FC495;
 rom0[30]=8'h7657E48D5E2DE;
 rom0[31]=8'h7606138F2F388;
 rom0[32]=8'h75B4515350A3A;
 rom0[33]=8'h75629E5289ABD;
 rom0[34]=8'h7510FB0586B59;
 rom0[35]=8'h74BF67E4D87F6;
 rom0[36]=8'h746DE568F3461;
 rom0[37]=8'h741C740A2DF87;
 rom0[38]=8'h73CB1440C15E0;
 rom0[39]=8'h7379C684C745C;
 rom0[40]=8'h73288B4E39B1F;
 rom0[41]=8'h72D76314F2066;
 rom0[42]=8'h72864E50A8344;
 rom0[43]=8'h72354D78F1E7E;
 rom0[44]=8'h71E4610541B7D;
 rom0[45]=8'h7193896CE64E5;
 rom0[46]=8'h7142C727099EC;
 rom0[47]=8'h70F21AAAB00D6;
 rom0[48]=8'h70A1846EB7A25;
 rom0[49]=8'h705104E9D7358;
 rom0[50]=8'h70009C929DA23;
 rom0[51]=8'h6FB04BDF70F0F;
 rom0[52]=8'h6F6013468D8C2;
 rom0[53]=8'h6F0FF33E05709;
 rom0[54]=8'h6EBFEC3BBF597;
 rom0[55]=8'h6E6FFEB575F64;
 rom0[56]=8'h6E202B20B7188;
 rom0[57]=8'h6DD071F2E2E7B;
 rom0[58]=8'h6D80D3A12B106;
 rom0[59]=8'h6D3150A091FA9;
 rom0[60]=8'h6CE1E965E9FA1;
 rom0[61]=8'h6C929E65D47F9;
 rom0[62]=8'h6C437014C14D8;
 rom0[63]=8'h6BF45EE6EDAFE;
 rom0[64]=8'h6BA56B5063A8F;
 rom0[65]=8'h6B5695C4F92B4;
 rom0[66]=8'h6B07DEB84F4A7;
 rom0[67]=8'h6AB9469DD1760;
 rom0[68]=8'h6A6ACDE8B4A9C;
 rom0[69]=8'h6A1C750BF6A52;
 rom0[70]=8'h69CE3C7A5D23F;
 rom0[71]=8'h698024A675123;
 rom0[72]=8'h69322E0291C63;
 rom0[73]=8'h68E45900CC36A;
 rom0[74]=8'h6896A61302336;
 rom0[75]=8'h684915AAD59CF;
 rom0[76]=8'h67FBA839AB9F7;
 rom0[77]=8'h67AE5E30ABEC1;
 rom0[78]=8'h67613800BFEFD;
 rom0[79]=8'h6714361A9213C;
 rom0[80]=8'h66C758EE8CF24;
 rom0[81]=8'h667AA0ECDA953;
 rom0[82]=8'h662E0E8563B27;
 rom0[83]=8'h65E1A227CEE69;
 rom0[84]=8'h65955C437FF27;
 rom0[85]=8'h65493D4796F9C;
 rom0[86]=8'h64FD45A2EFBDC;
 rom0[87]=8'h64B175C420DFB;
 rom0[88]=8'h6465CE197B1DB;
 rom0[89]=8'h641A4F11088FA;
 rom0[90]=8'h63CEF9188BEE5;
 rom0[91]=8'h6383CC9D7FCAB;
 rom0[92]=8'h6338CA0D15D79;
 rom0[93]=8'h62EDF1D436261;
 rom0[94]=8'h62A3445F7E66A;
 rom0[95]=8'h6258C21B41318;
 rom0[96]=8'h620E6B738544C;
 rom0[97]=8'h61C440D404CAD;
 rom0[98]=8'h617A42A82C9DC;
 rom0[99]=8'h6130715B1B8C2;
 rom0[100]=8'h60E6CD57A19EC;
 rom0[101]=8'h609D57083F617;
 rom0[102]=8'h60540ED72523D;
 rom0[103]=8'h600AF52E32465;
 rom0[104]=8'h5FC20A76F47FF;
 rom0[105]=8'h5F794F1AA726A;
 rom0[106]=8'h5F30C3823278B;
 rom0[107]=8'h5EE868162AE6E;
 rom0[108]=8'h5EA03D3ED05F3;
 rom0[109]=8'h5E5843640D95F;
 rom0[110]=8'h5E107AED77548;
 rom0[111]=8'h5DC8E4424BC1D;
 rom0[112]=8'h5D817FC971B49;
 rom0[113]=8'h5D3A4DE977FA6;
 rom0[114]=8'h5CF34F0894AD3;
 rom0[115]=8'h5CAC838CA47B5;
 rom0[116]=8'h5C65EBDB29FD1;
 rom0[117]=8'h5C1F88594D006;
 rom0[118]=8'h5BD9596BD9DC7;
 rom0[119]=8'h5B935F7740C39;
 rom0[120]=8'h5B4D9ADF95128;
 rom0[121]=8'h5B080C088CA89;
 rom0[122]=8'h5AC2B3557F361;
 rom0[123]=8'h5A7D912965939;
 rom0[124]=8'h5A38A5E6D9177;
 rom0[125]=8'h59F3F1F012EA3;
 rom0[126]=8'h59AF75A6EB5D8;
 rom0[127]=8'h596B316CD9461;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_generic_sincos_double_s_fourth_order_double_sin_K2_V_ROM_1P_LUTRAM_1R (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 43;
parameter AddressWidth = 7;
parameter AddressRange = 128;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
(* rom_style = "distributed" *)reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h56A88633B59;
 rom0[1]=8'h56A8A4CDCA3;
 rom0[2]=8'h56A9009BD30;
 rom0[3]=8'h56A9999D317;
 rom0[4]=8'h56AA6FD0D8D;
 rom0[5]=8'h56AB83354E3;
 rom0[6]=8'h56ACD3C8A94;
 rom0[7]=8'h56AE61889A2;
 rom0[8]=8'h56B02C7265F;
 rom0[9]=8'h56B23482E35;
 rom0[10]=8'h56B479B67E7;
 rom0[11]=8'h56B6FC09331;
 rom0[12]=8'h56B9BB769BA;
 rom0[13]=8'h56BCB7F9D82;
 rom0[14]=8'h56BFF18DABB;
 rom0[15]=8'h56C3682C64D;
 rom0[16]=8'h56C71BCFED3;
 rom0[17]=8'h56CB0C71B78;
 rom0[18]=8'h56CF3A0AD8D;
 rom0[19]=8'h56D3A493ED4;
 rom0[20]=8'h56D84C0534C;
 rom0[21]=8'h56DD3056780;
 rom0[22]=8'h56E2517F195;
 rom0[23]=8'h56E7AF760A1;
 rom0[24]=8'h56ED4A31DCF;
 rom0[25]=8'h56F321A8ABE;
 rom0[26]=8'h56F935D02DC;
 rom0[27]=8'h56FF869DAD8;
 rom0[28]=8'h57061406068;
 rom0[29]=8'h570CDDFDB44;
 rom0[30]=8'h5713E478BCE;
 rom0[31]=8'h571B276ABD8;
 rom0[32]=8'h5722A6C6F10;
 rom0[33]=8'h572A62801AE;
 rom0[34]=8'h57325A88A28;
 rom0[35]=8'h573A8ED2770;
 rom0[36]=8'h5742FF4F2B8;
 rom0[37]=8'h574BABEFDD2;
 rom0[38]=8'h575494A546A;
 rom0[39]=8'h575DB95FB55;
 rom0[40]=8'h57671A0F107;
 rom0[41]=8'h5770B6A2D24;
 rom0[42]=8'h577A8F0A0C4;
 rom0[43]=8'h5784A333696;
 rom0[44]=8'h578EF30D25F;
 rom0[45]=8'h57997E851F1;
 rom0[46]=8'h57A44588BD7;
 rom0[47]=8'h57AF4805089;
 rom0[48]=8'h57BA85E69C2;
 rom0[49]=8'h57C5FF19AFA;
 rom0[50]=8'h57D1B38A09B;
 rom0[51]=8'h57DDA323145;
 rom0[52]=8'h57E9CDCFCD0;
 rom0[53]=8'h57F6337AC1A;
 rom0[54]=8'h5802D40E23A;
 rom0[55]=8'h580FAF73B54;
 rom0[56]=8'h581CC594D74;
 rom0[57]=8'h582A165A7D8;
 rom0[58]=8'h5837A1AD3E3;
 rom0[59]=8'h584567753E9;
 rom0[60]=8'h5853679A3D2;
 rom0[61]=8'h5861A2039A6;
 rom0[62]=8'h58701698515;
 rom0[63]=8'h587EC53EE80;
 rom0[64]=8'h588DADDD8DF;
 rom0[65]=8'h589CD05A049;
 rom0[66]=8'h58AC2C99B0F;
 rom0[67]=8'h58BBC28186B;
 rom0[68]=8'h58CB91F61AB;
 rom0[69]=8'h58DB9ADB9F7;
 rom0[70]=8'h58EBDD15DE3;
 rom0[71]=8'h58FC58883FE;
 rom0[72]=8'h590D0D15C55;
 rom0[73]=8'h591DFAA10C0;
 rom0[74]=8'h592F210C4E7;
 rom0[75]=8'h59408039663;
 rom0[76]=8'h59521809C6D;
 rom0[77]=8'h5963E85E7C9;
 rom0[78]=8'h5975F1183CA;
 rom0[79]=8'h598832174A3;
 rom0[80]=8'h599AAB3B91F;
 rom0[81]=8'h59AD5C649B0;
 rom0[82]=8'h59C04571882;
 rom0[83]=8'h59D366411D3;
 rom0[84]=8'h59E6BEB1BBB;
 rom0[85]=8'h59FA4EA161F;
 rom0[86]=8'h5A0E15EDB32;
 rom0[87]=8'h5A221473EBD;
 rom0[88]=8'h5A364A10E71;
 rom0[89]=8'h5A4AB6A12BB;
 rom0[90]=8'h5A5F5A00CDA;
 rom0[91]=8'h5A74340B957;
 rom0[92]=8'h5A89449CDB1;
 rom0[93]=8'h5A9E8B8F9DA;
 rom0[94]=8'h5AB408BE869;
 rom0[95]=8'h5AC9BC03D3F;
 rom0[96]=8'h5ADFA5396BC;
 rom0[97]=8'h5AF5C438D42;
 rom0[98]=8'h5B0C18DB351;
 rom0[99]=8'h5B22A2F95B8;
 rom0[100]=8'h5B39626BB91;
 rom0[101]=8'h5B50570A585;
 rom0[102]=8'h5B6780ACF54;
 rom0[103]=8'h5B7EDF2AE7E;
 rom0[104]=8'h5B96725B2CE;
 rom0[105]=8'h5BAE3A14665;
 rom0[106]=8'h5BC6362CDBA;
 rom0[107]=8'h5BDE667A77B;
 rom0[108]=8'h5BF6CAD2C99;
 rom0[109]=8'h5C0F630B0B7;
 rom0[110]=8'h5C282EF8157;
 rom0[111]=8'h5C412E6E711;
 rom0[112]=8'h5C5A614241F;
 rom0[113]=8'h5C73C7475E2;
 rom0[114]=8'h5C8D605138C;
 rom0[115]=8'h5CA72C32F5A;
 rom0[116]=8'h5CC12ABF58E;
 rom0[117]=8'h5CDB5BC8D4F;
 rom0[118]=8'h5CF5BF21833;
 rom0[119]=8'h5D10549B20F;
 rom0[120]=8'h5D2B1C071F9;
 rom0[121]=8'h5D4615368CD;
 rom0[122]=8'h5D613FFA2AE;
 rom0[123]=8'h5D7C9C22640;
 rom0[124]=8'h5D98297F4A5;
 rom0[125]=8'h5DB3E7E09E9;
 rom0[126]=8'h5DCFD715CBE;
 rom0[127]=8'h5DEBF6EDE28;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_generic_sincos_double_s_fourth_order_double_sin_K3_V_ROM_1P_LUTRAM_1R (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 33;
parameter AddressWidth = 7;
parameter AddressRange = 128;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
(* rom_style = "distributed" *)reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h1FFFFFFF0;
 rom0[1]=8'h001466B98;
 rom0[2]=8'h0028CD52B;
 rom0[3]=8'h003D33A35;
 rom0[4]=8'h005199847;
 rom0[5]=8'h0065FED43;
 rom0[6]=8'h007A63747;
 rom0[7]=8'h008EC73DD;
 rom0[8]=8'h00A32A0A3;
 rom0[9]=8'h00B78BB5F;
 rom0[10]=8'h00CBEC1C3;
 rom0[11]=8'h00E04B1F4;
 rom0[12]=8'h00F4A891C;
 rom0[13]=8'h0109045B4;
 rom0[14]=8'h011D5E4F6;
 rom0[15]=8'h0131B64DB;
 rom0[16]=8'h01460C2C2;
 rom0[17]=8'h015A5FD15;
 rom0[18]=8'h016EB1107;
 rom0[19]=8'h0182FFD04;
 rom0[20]=8'h01974BE07;
 rom0[21]=8'h01AB9522D;
 rom0[22]=8'h01BFDB720;
 rom0[23]=8'h01D41EB23;
 rom0[24]=8'h01E85EB2C;
 rom0[25]=8'h01FC9B5A6;
 rom0[26]=8'h0210D481C;
 rom0[27]=8'h02250A045;
 rom0[28]=8'h02393BC47;
 rom0[29]=8'h024D69947;
 rom0[30]=8'h026193555;
 rom0[31]=8'h0275B8E8D;
 rom0[32]=8'h0289DA210;
 rom0[33]=8'h029DF6E65;
 rom0[34]=8'h02B20F0A4;
 rom0[35]=8'h02C622731;
 rom0[36]=8'h02DA30F53;
 rom0[37]=8'h02EE3A73B;
 rom0[38]=8'h03023EC70;
 rom0[39]=8'h03163DCF5;
 rom0[40]=8'h032A37660;
 rom0[41]=8'h033E2B697;
 rom0[42]=8'h035219B8C;
 rom0[43]=8'h0366022CD;
 rom0[44]=8'h0379E4A72;
 rom0[45]=8'h038DC0FE9;
 rom0[46]=8'h03A19715D;
 rom0[47]=8'h03B566C89;
 rom0[48]=8'h03C92FF45;
 rom0[49]=8'h03DCF2732;
 rom0[50]=8'h03F0AE29E;
 rom0[51]=8'h040462EE2;
 rom0[52]=8'h0418109A9;
 rom0[53]=8'h042BB7168;
 rom0[54]=8'h043F56395;
 rom0[55]=8'h0452EDE49;
 rom0[56]=8'h04667DF15;
 rom0[57]=8'h047A0642F;
 rom0[58]=8'h048D86AD3;
 rom0[59]=8'h04A0FF13E;
 rom0[60]=8'h04B46F5B4;
 rom0[61]=8'h04C7D75A3;
 rom0[62]=8'h04DB36E79;
 rom0[63]=8'h04EE8DF00;
 rom0[64]=8'h0501DC492;
 rom0[65]=8'h051521D60;
 rom0[66]=8'h05285E6C0;
 rom0[67]=8'h053B91F13;
 rom0[68]=8'h054EBC441;
 rom0[69]=8'h0561DD3FC;
 rom0[70]=8'h0574F4C42;
 rom0[71]=8'h058802AD5;
 rom0[72]=8'h059B06DBE;
 rom0[73]=8'h05AE01307;
 rom0[74]=8'h05C0F188F;
 rom0[75]=8'h05D3D7C13;
 rom0[76]=8'h05E6B3B7F;
 rom0[77]=8'h05F985538;
 rom0[78]=8'h060C4C66D;
 rom0[79]=8'h061F08DDE;
 rom0[80]=8'h0631BA90E;
 rom0[81]=8'h0644615F3;
 rom0[82]=8'h0656FD2A6;
 rom0[83]=8'h06698DD05;
 rom0[84]=8'h067C1331A;
 rom0[85]=8'h068E8D2F3;
 rom0[86]=8'h06A0FBA48;
 rom0[87]=8'h06B35E73B;
 rom0[88]=8'h06C5B5821;
 rom0[89]=8'h06D800A29;
 rom0[90]=8'h06EA3FC4D;
 rom0[91]=8'h06FC72B99;
 rom0[92]=8'h070E996D1;
 rom0[93]=8'h0720B3C0F;
 rom0[94]=8'h0732C18A2;
 rom0[95]=8'h0744C2AFB;
 rom0[96]=8'h0756B7114;
 rom0[97]=8'h07689E8F8;
 rom0[98]=8'h077A790E1;
 rom0[99]=8'h078C466C5;
 rom0[100]=8'h079E06864;
 rom0[101]=8'h07AFB947B;
 rom0[102]=8'h07C15E88F;
 rom0[103]=8'h07D2F62D1;
 rom0[104]=8'h07E480167;
 rom0[105]=8'h07F5FC266;
 rom0[106]=8'h08076A3D2;
 rom0[107]=8'h0818CA3E4;
 rom0[108]=8'h082A1C0DD;
 rom0[109]=8'h083B5F887;
 rom0[110]=8'h084C94983;
 rom0[111]=8'h085DBB14D;
 rom0[112]=8'h086ED2E8F;
 rom0[113]=8'h087FDBF18;
 rom0[114]=8'h0890D6156;
 rom0[115]=8'h08A1C1337;
 rom0[116]=8'h08B29D320;
 rom0[117]=8'h08C369F0E;
 rom0[118]=8'h08D427518;
 rom0[119]=8'h08E4D53E7;
 rom0[120]=8'h08F573905;
 rom0[121]=8'h090602355;
 rom0[122]=8'h0916810B5;
 rom0[123]=8'h0926EFF4C;
 rom0[124]=8'h09374ED79;
 rom0[125]=8'h09479D943;
 rom0[126]=8'h0957DC0F1;
 rom0[127]=8'h09680A341;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_generic_sincos_double_s_fourth_order_double_sin_K4_V_ROM_1P_LUTRAM_1R (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 23;
parameter AddressWidth = 7;
parameter AddressRange = 128;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
(* rom_style = "distributed" *)reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h519AF1;
 rom0[1]=8'h519A60;
 rom0[2]=8'h51992D;
 rom0[3]=8'h519769;
 rom0[4]=8'h519535;
 rom0[5]=8'h519281;
 rom0[6]=8'h518F16;
 rom0[7]=8'h518B19;
 rom0[8]=8'h518695;
 rom0[9]=8'h51818B;
 rom0[10]=8'h517C02;
 rom0[11]=8'h5175C7;
 rom0[12]=8'h516F24;
 rom0[13]=8'h5167C5;
 rom0[14]=8'h515FE6;
 rom0[15]=8'h51576F;
 rom0[16]=8'h514E91;
 rom0[17]=8'h5144FD;
 rom0[18]=8'h513AF5;
 rom0[19]=8'h513026;
 rom0[20]=8'h5124F5;
 rom0[21]=8'h511937;
 rom0[22]=8'h510CF9;
 rom0[23]=8'h50FFF8;
 rom0[24]=8'h50F2A3;
 rom0[25]=8'h50E49F;
 rom0[26]=8'h50D60F;
 rom0[27]=8'h50C6F9;
 rom0[28]=8'h50B72D;
 rom0[29]=8'h50A6FA;
 rom0[30]=8'h509644;
 rom0[31]=8'h5084D6;
 rom0[32]=8'h50730D;
 rom0[33]=8'h506084;
 rom0[34]=8'h504D96;
 rom0[35]=8'h5039FE;
 rom0[36]=8'h5025EF;
 rom0[37]=8'h50113F;
 rom0[38]=8'h4FFC15;
 rom0[39]=8'h4FE64E;
 rom0[40]=8'h4FD006;
 rom0[41]=8'h4FB935;
 rom0[42]=8'h4FA1C3;
 rom0[43]=8'h4F89D8;
 rom0[44]=8'h4F7156;
 rom0[45]=8'h4F585B;
 rom0[46]=8'h4F3ECB;
 rom0[47]=8'h4F24A8;
 rom0[48]=8'h4F09F9;
 rom0[49]=8'h4EEECF;
 rom0[50]=8'h4ED2F4;
 rom0[51]=8'h4EB69F;
 rom0[52]=8'h4E99EB;
 rom0[53]=8'h4E7C8A;
 rom0[54]=8'h4E5EA7;
 rom0[55]=8'h4E4027;
 rom0[56]=8'h4E2131;
 rom0[57]=8'h4E0191;
 rom0[58]=8'h4DE19A;
 rom0[59]=8'h4DC11C;
 rom0[60]=8'h4D9FE3;
 rom0[61]=8'h4D7E2A;
 rom0[62]=8'h4D5C26;
 rom0[63]=8'h4D3965;
 rom0[64]=8'h4D162C;
 rom0[65]=8'h4CF251;
 rom0[66]=8'h4CCE18;
 rom0[67]=8'h4CA94C;
 rom0[68]=8'h4C83E8;
 rom0[69]=8'h4C5E01;
 rom0[70]=8'h4C3795;
 rom0[71]=8'h4C10B1;
 rom0[72]=8'h4BE949;
 rom0[73]=8'h4BC14B;
 rom0[74]=8'h4B98C4;
 rom0[75]=8'h4B6FC8;
 rom0[76]=8'h4B465B;
 rom0[77]=8'h4B1C3F;
 rom0[78]=8'h4AF1DA;
 rom0[79]=8'h4AC6C1;
 rom0[80]=8'h4A9B32;
 rom0[81]=8'h4A6F27;
 rom0[82]=8'h4A4293;
 rom0[83]=8'h4A1584;
 rom0[84]=8'h49E7EB;
 rom0[85]=8'h49B9CA;
 rom0[86]=8'h498B39;
 rom0[87]=8'h495C2C;
 rom0[88]=8'h492C76;
 rom0[89]=8'h48FC7E;
 rom0[90]=8'h48CBCA;
 rom0[91]=8'h489AD8;
 rom0[92]=8'h486944;
 rom0[93]=8'h483707;
 rom0[94]=8'h48047A;
 rom0[95]=8'h47D16F;
 rom0[96]=8'h479DE9;
 rom0[97]=8'h4769F0;
 rom0[98]=8'h473567;
 rom0[99]=8'h47005A;
 rom0[100]=8'h46CAF5;
 rom0[101]=8'h4694E7;
 rom0[102]=8'h465E71;
 rom0[103]=8'h462787;
 rom0[104]=8'h45F023;
 rom0[105]=8'h45B847;
 rom0[106]=8'h457FFF;
 rom0[107]=8'h454739;
 rom0[108]=8'h450DE9;
 rom0[109]=8'h44D43A;
 rom0[110]=8'h4499E7;
 rom0[111]=8'h445F47;
 rom0[112]=8'h44241E;
 rom0[113]=8'h43E887;
 rom0[114]=8'h43AC73;
 rom0[115]=8'h436FF0;
 rom0[116]=8'h4332ED;
 rom0[117]=8'h42F57E;
 rom0[118]=8'h42B7B2;
 rom0[119]=8'h427948;
 rom0[120]=8'h423A9A;
 rom0[121]=8'h41FB4F;
 rom0[122]=8'h41BB96;
 rom0[123]=8'h417B74;
 rom0[124]=8'h413ADA;
 rom0[125]=8'h40F9E7;
 rom0[126]=8'h40B88E;
 rom0[127]=8'h407699;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_generic_sincos_double_s_ref_4oPi_table_256_V_ROM_AUTO_1R (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 256;
parameter AddressWidth = 4;
parameter AddressRange = 10;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h0000000000000000000000000000000028BE60DB9391054A7F09D5F47D4D3770;
 rom0[1]=8'h28BE60DB9391054A7F09D5F47D4D377036D8A5664F10E4107F9458EAF7AEF158;
 rom0[2]=8'h36D8A5664F10E4107F9458EAF7AEF1586DC91B8E909374B801924BBA82746487;
 rom0[3]=8'h6DC91B8E909374B801924BBA827464873F877AC72C4A69CFBA208D7D4BAED121;
 rom0[4]=8'h3F877AC72C4A69CFBA208D7D4BAED1213A671C09AD17DF904E64758E60D4CE7D;
 rom0[5]=8'h3A671C09AD17DF904E64758E60D4CE7D272117E2EF7E4A0EC7FE25FFF7816603;
 rom0[6]=8'h272117E2EF7E4A0EC7FE25FFF7816603FBCBC462D6829B47DB4D9FB3C9F2C26D;
 rom0[7]=8'hFBCBC462D6829B47DB4D9FB3C9F2C26DD3D18FD9A797FA8B5D49EEB1FAF97C5E;
 rom0[8]=8'hD3D18FD9A797FA8B5D49EEB1FAF97C5ECF41CE7DE294A4BA9AFED7EC47E35742;
 rom0[9]=8'hCF41CE7DE294A4BA9AFED7EC47E357421580CC11BF1EDAEAFC33EF0826BD0D87;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_mul_170s_53ns_170_2_1(clk, ce, reset, din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 1;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input clk;
input ce;
input reset;
input signed [din0_WIDTH - 1 : 0] din0;
input [din1_WIDTH - 1 : 0] din1;
output[dout_WIDTH - 1 : 0] dout;
reg signed [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed(din0) * $signed({1'b0, din1});
always @ (posedge clk) begin
 if (ce) begin
 dout <= tmp_product;
 end
end
endmodule
module entry_point_mul_35ns_23ns_58_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed({1'b0, din0}) * $signed({1'b0, din1});
endmodule
module entry_point_mul_35ns_27s_62_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed({1'b0, din0}) * $signed(din1);
endmodule
module entry_point_mul_42ns_33s_75_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed({1'b0, din0}) * $signed(din1);
endmodule
module entry_point_mul_42ns_35s_77_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed({1'b0, din0}) * $signed(din1);
endmodule
module entry_point_mul_49ns_43s_92_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed({1'b0, din0}) * $signed(din1);
endmodule
module entry_point_mul_49ns_44ns_93_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed({1'b0, din0}) * $signed({1'b0, din1});
endmodule
module entry_point_mul_49ns_49ns_98_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed({1'b0, din0}) * $signed({1'b0, din1});
endmodule
module entry_point_mul_56ns_51s_107_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed({1'b0, din0}) * $signed(din1);
endmodule
module entry_point_mul_56ns_53s_109_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed({1'b0, din0}) * $signed(din1);
endmodule
module entry_point_mul_62ns_63ns_125_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed({1'b0, din0}) * $signed({1'b0, din1});
endmodule
module entry_point_mux_164_1_1_1 #(
parameter
 ID = 0,
 NUM_STAGE = 1,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 din2_WIDTH = 32,
 din3_WIDTH = 32,
 din4_WIDTH = 32,
 din5_WIDTH = 32,
 din6_WIDTH = 32,
 din7_WIDTH = 32,
 din8_WIDTH = 32,
 din9_WIDTH = 32,
 din10_WIDTH = 32,
 din11_WIDTH = 32,
 din12_WIDTH = 32,
 din13_WIDTH = 32,
 din14_WIDTH = 32,
 din15_WIDTH = 32,
 din16_WIDTH = 32,
 dout_WIDTH = 32
)(
 input [0 : 0] din0,
 input [0 : 0] din1,
 input [0 : 0] din2,
 input [0 : 0] din3,
 input [0 : 0] din4,
 input [0 : 0] din5,
 input [0 : 0] din6,
 input [0 : 0] din7,
 input [0 : 0] din8,
 input [0 : 0] din9,
 input [0 : 0] din10,
 input [0 : 0] din11,
 input [0 : 0] din12,
 input [0 : 0] din13,
 input [0 : 0] din14,
 input [0 : 0] din15,
 input [3 : 0] din16,
 output [0 : 0] dout);
wire [3 : 0] sel;
wire [0 : 0] mux_1_0;
wire [0 : 0] mux_1_1;
wire [0 : 0] mux_1_2;
wire [0 : 0] mux_1_3;
wire [0 : 0] mux_1_4;
wire [0 : 0] mux_1_5;
wire [0 : 0] mux_1_6;
wire [0 : 0] mux_1_7;
wire [0 : 0] mux_2_0;
wire [0 : 0] mux_2_1;
wire [0 : 0] mux_2_2;
wire [0 : 0] mux_2_3;
wire [0 : 0] mux_3_0;
wire [0 : 0] mux_3_1;
wire [0 : 0] mux_4_0;
assign sel = din16;
assign mux_1_0 = (sel[0] == 0)? din0 : din1;
assign mux_1_1 = (sel[0] == 0)? din2 : din3;
assign mux_1_2 = (sel[0] == 0)? din4 : din5;
assign mux_1_3 = (sel[0] == 0)? din6 : din7;
assign mux_1_4 = (sel[0] == 0)? din8 : din9;
assign mux_1_5 = (sel[0] == 0)? din10 : din11;
assign mux_1_6 = (sel[0] == 0)? din12 : din13;
assign mux_1_7 = (sel[0] == 0)? din14 : din15;
assign mux_2_0 = (sel[1] == 0)? mux_1_0 : mux_1_1;
assign mux_2_1 = (sel[1] == 0)? mux_1_2 : mux_1_3;
assign mux_2_2 = (sel[1] == 0)? mux_1_4 : mux_1_5;
assign mux_2_3 = (sel[1] == 0)? mux_1_6 : mux_1_7;
assign mux_3_0 = (sel[2] == 0)? mux_2_0 : mux_2_1;
assign mux_3_1 = (sel[2] == 0)? mux_2_2 : mux_2_3;
assign mux_4_0 = (sel[3] == 0)? mux_3_0 : mux_3_1;
assign dout = mux_4_0;
endmodule
module entry_point_mux_42_32_1_1 #(
parameter
 ID = 0,
 NUM_STAGE = 1,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 din2_WIDTH = 32,
 din3_WIDTH = 32,
 din4_WIDTH = 32,
 dout_WIDTH = 32
)(
 input [31 : 0] din0,
 input [31 : 0] din1,
 input [31 : 0] din2,
 input [31 : 0] din3,
 input [1 : 0] din4,
 output [31 : 0] dout);
wire [1 : 0] sel;
wire [31 : 0] mux_1_0;
wire [31 : 0] mux_1_1;
wire [31 : 0] mux_2_0;
assign sel = din4;
assign mux_1_0 = (sel[0] == 0)? din0 : din1;
assign mux_1_1 = (sel[0] == 0)? din2 : din3;
assign mux_2_0 = (sel[1] == 0)? mux_1_0 : mux_1_1;
assign dout = mux_2_0;
endmodule
module entry_point_mux_83_1_1_1 #(
parameter
 ID = 0,
 NUM_STAGE = 1,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 din2_WIDTH = 32,
 din3_WIDTH = 32,
 din4_WIDTH = 32,
 din5_WIDTH = 32,
 din6_WIDTH = 32,
 din7_WIDTH = 32,
 din8_WIDTH = 32,
 dout_WIDTH = 32
)(
 input [0 : 0] din0,
 input [0 : 0] din1,
 input [0 : 0] din2,
 input [0 : 0] din3,
 input [0 : 0] din4,
 input [0 : 0] din5,
 input [0 : 0] din6,
 input [0 : 0] din7,
 input [2 : 0] din8,
 output [0 : 0] dout);
wire [2 : 0] sel;
wire [0 : 0] mux_1_0;
wire [0 : 0] mux_1_1;
wire [0 : 0] mux_1_2;
wire [0 : 0] mux_1_3;
wire [0 : 0] mux_2_0;
wire [0 : 0] mux_2_1;
wire [0 : 0] mux_3_0;
assign sel = din8;
assign mux_1_0 = (sel[0] == 0)? din0 : din1;
assign mux_1_1 = (sel[0] == 0)? din2 : din3;
assign mux_1_2 = (sel[0] == 0)? din4 : din5;
assign mux_1_3 = (sel[0] == 0)? din6 : din7;
assign mux_2_0 = (sel[1] == 0)? mux_1_0 : mux_1_1;
assign mux_2_1 = (sel[1] == 0)? mux_1_2 : mux_1_3;
assign mux_3_0 = (sel[2] == 0)? mux_2_0 : mux_2_1;
assign dout = mux_3_0;
endmodule
module entry_point_scaled_fixed2ieee_63_1_Pipeline_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 in_r,
 out_bits_V_2_03_out,
 out_bits_V_2_03_out_ap_vld,
 out_bits_V_1_02_out,
 out_bits_V_1_02_out_ap_vld,
 out_bits_V_0_01_out,
 out_bits_V_0_01_out_ap_vld
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [62:0] in_r;
output [31:0] out_bits_V_2_03_out;
output out_bits_V_2_03_out_ap_vld;
output [31:0] out_bits_V_1_02_out;
output out_bits_V_1_02_out_ap_vld;
output [31:0] out_bits_V_0_01_out;
output out_bits_V_0_01_out_ap_vld;
reg ap_idle;
reg out_bits_V_2_03_out_ap_vld;
reg out_bits_V_1_02_out_ap_vld;
reg out_bits_V_0_01_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln430_fu_93_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [1:0] i_fu_42;
wire [1:0] add_ln430_fu_99_p2;
wire ap_loop_init;
reg [1:0] ap_sig_allocacmp_i_2;
wire [1:0] i_2_load_fu_90_p1;
reg [31:0] out_bits_V_1_fu_46;
wire [31:0] out_bits_V_1_4_fu_133_p3;
reg [31:0] out_bits_V_1_1_fu_50;
reg [31:0] out_bits_V_1_2_fu_54;
wire [5:0] shl_ln_fu_105_p3;
wire [5:0] sub_ln594_fu_113_p2;
wire [62:0] zext_ln594_fu_119_p1;
wire [62:0] lshr_ln594_fu_123_p2;
wire [15:0] trunc_ln594_fu_129_p1;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(ap_start),
 .ap_ready(ap_ready),
 .ap_done(ap_done),
 .ap_start_int(ap_start_int),
 .ap_loop_init(ap_loop_init),
 .ap_ready_int(ap_ready_int),
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 if ((icmp_ln430_fu_93_p2 == 1'd0)) begin
 i_fu_42 <= add_ln430_fu_99_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_42 <= 2'd0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((i_2_load_fu_90_p1 == 2'd1) & (icmp_ln430_fu_93_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 out_bits_V_1_1_fu_50[31 : 16] <= out_bits_V_1_4_fu_133_p3[31 : 16];
 end
end
always @ (posedge ap_clk) begin
 if ((~(i_2_load_fu_90_p1 == 2'd1) & ~(i_2_load_fu_90_p1 == 2'd0) & (icmp_ln430_fu_93_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 out_bits_V_1_2_fu_54[31 : 16] <= out_bits_V_1_4_fu_133_p3[31 : 16];
 end
end
always @ (posedge ap_clk) begin
 if (((i_2_load_fu_90_p1 == 2'd0) & (icmp_ln430_fu_93_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 out_bits_V_1_fu_46[31 : 16] <= out_bits_V_1_4_fu_133_p3[31 : 16];
 end
end
always @ (*) begin
 if ((ap_start_int == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln430_fu_93_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_i_2 = 2'd0;
 end else begin
 ap_sig_allocacmp_i_2 = i_fu_42;
 end
end
always @ (*) begin
 if (((icmp_ln430_fu_93_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 out_bits_V_0_01_out_ap_vld = 1'b1;
 end else begin
 out_bits_V_0_01_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln430_fu_93_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 out_bits_V_1_02_out_ap_vld = 1'b1;
 end else begin
 out_bits_V_1_02_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln430_fu_93_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 out_bits_V_2_03_out_ap_vld = 1'b1;
 end else begin
 out_bits_V_2_03_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln430_fu_99_p2 = (ap_sig_allocacmp_i_2 + 2'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign i_2_load_fu_90_p1 = ap_sig_allocacmp_i_2;
assign icmp_ln430_fu_93_p2 = ((ap_sig_allocacmp_i_2 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln594_fu_123_p2 = in_r >> zext_ln594_fu_119_p1;
assign out_bits_V_0_01_out = out_bits_V_1_fu_46;
assign out_bits_V_1_02_out = out_bits_V_1_1_fu_50;
assign out_bits_V_1_4_fu_133_p3 = {{trunc_ln594_fu_129_p1}, {16'd32768}};
assign out_bits_V_2_03_out = out_bits_V_1_2_fu_54;
assign shl_ln_fu_105_p3 = {{ap_sig_allocacmp_i_2}, {4'd0}};
assign sub_ln594_fu_113_p2 = ($signed(6'd47) - $signed(shl_ln_fu_105_p3));
assign trunc_ln594_fu_129_p1 = lshr_ln594_fu_123_p2[15:0];
assign zext_ln594_fu_119_p1 = sub_ln594_fu_113_p2;
always @ (posedge ap_clk) begin
 out_bits_V_1_fu_46[15:0] <= 16'b1000000000000000;
 out_bits_V_1_1_fu_50[15:0] <= 16'b1000000000000000;
 out_bits_V_1_2_fu_54[15:0] <= 16'b1000000000000000;
end
endmodule
module entry_point_scaled_fixed2ieee_63_1_Pipeline_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 out_bits_V_0_01_reload,
 out_bits_V_1_02_reload,
 out_bits_V_2_03_reload,
 p_Result_s,
 c_2_07_out,
 c_2_07_out_ap_vld,
 c_1_06_out,
 c_1_06_out_ap_vld,
 c_0_05_out,
 c_0_05_out_ap_vld,
 c_3_04_out,
 c_3_04_out_ap_vld
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] out_bits_V_0_01_reload;
input [31:0] out_bits_V_1_02_reload;
input [31:0] out_bits_V_2_03_reload;
input [31:0] p_Result_s;
output [31:0] c_2_07_out;
output c_2_07_out_ap_vld;
output [31:0] c_1_06_out;
output c_1_06_out_ap_vld;
output [31:0] c_0_05_out;
output c_0_05_out_ap_vld;
output [31:0] c_3_04_out;
output c_3_04_out_ap_vld;
reg ap_idle;
reg c_2_07_out_ap_vld;
reg c_1_06_out_ap_vld;
reg c_0_05_out_ap_vld;
reg c_3_04_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln443_fu_136_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [2:0] i_1_fu_56;
wire [2:0] add_ln443_fu_142_p2;
wire ap_loop_init;
reg [2:0] ap_sig_allocacmp_i;
reg [31:0] c_1_fu_60;
reg [31:0] c_1_5_fu_176_p3;
wire [1:0] trunc_ln553_fu_148_p1;
reg [31:0] c_1_1_fu_64;
reg [31:0] c_1_2_fu_68;
reg [31:0] c_1_3_fu_72;
wire [1:0] p_Val2_s_fu_152_p5;
wire [31:0] p_Val2_s_fu_152_p6;
reg [31:0] p_Result_2_fu_166_p4;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end
entry_point_mux_42_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .din2_WIDTH( 32 ),
 .din3_WIDTH( 32 ),
 .din4_WIDTH( 2 ),
 .dout_WIDTH( 32 ))
mux_42_32_1_1_U5(
 .din0(out_bits_V_0_01_reload),
 .din1(out_bits_V_1_02_reload),
 .din2(out_bits_V_2_03_reload),
 .din3(p_Result_s),
 .din4(p_Val2_s_fu_152_p5),
 .dout(p_Val2_s_fu_152_p6)
);
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(ap_start),
 .ap_ready(ap_ready),
 .ap_done(ap_done),
 .ap_start_int(ap_start_int),
 .ap_loop_init(ap_loop_init),
 .ap_ready_int(ap_ready_int),
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 if ((icmp_ln443_fu_136_p2 == 1'd0)) begin
 i_1_fu_56 <= add_ln443_fu_142_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_1_fu_56 <= 3'd0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((trunc_ln553_fu_148_p1 == 2'd0) & (icmp_ln443_fu_136_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 c_1_1_fu_64 <= c_1_5_fu_176_p3;
 end
end
always @ (posedge ap_clk) begin
 if (((trunc_ln553_fu_148_p1 == 2'd1) & (icmp_ln443_fu_136_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 c_1_2_fu_68 <= c_1_5_fu_176_p3;
 end
end
always @ (posedge ap_clk) begin
 if (((trunc_ln553_fu_148_p1 == 2'd2) & (icmp_ln443_fu_136_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 c_1_3_fu_72 <= c_1_5_fu_176_p3;
 end
end
always @ (posedge ap_clk) begin
 if (((trunc_ln553_fu_148_p1 == 2'd3) & (icmp_ln443_fu_136_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 c_1_fu_60 <= c_1_5_fu_176_p3;
 end
end
always @ (*) begin
 if ((ap_start_int == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln443_fu_136_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_i = 3'd0;
 end else begin
 ap_sig_allocacmp_i = i_1_fu_56;
 end
end
always @ (*) begin
 if (((icmp_ln443_fu_136_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 c_0_05_out_ap_vld = 1'b1;
 end else begin
 c_0_05_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln443_fu_136_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 c_1_06_out_ap_vld = 1'b1;
 end else begin
 c_1_06_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln443_fu_136_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 c_2_07_out_ap_vld = 1'b1;
 end else begin
 c_2_07_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln443_fu_136_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 c_3_04_out_ap_vld = 1'b1;
 end else begin
 c_3_04_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln443_fu_142_p2 = (ap_sig_allocacmp_i + 3'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign c_0_05_out = c_1_1_fu_64;
assign c_1_06_out = c_1_2_fu_68;
always @ (p_Result_2_fu_166_p4) begin
 if (p_Result_2_fu_166_p4[0] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd0;
 end else if (p_Result_2_fu_166_p4[1] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd1;
 end else if (p_Result_2_fu_166_p4[2] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd2;
 end else if (p_Result_2_fu_166_p4[3] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd3;
 end else if (p_Result_2_fu_166_p4[4] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd4;
 end else if (p_Result_2_fu_166_p4[5] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd5;
 end else if (p_Result_2_fu_166_p4[6] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd6;
 end else if (p_Result_2_fu_166_p4[7] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd7;
 end else if (p_Result_2_fu_166_p4[8] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd8;
 end else if (p_Result_2_fu_166_p4[9] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd9;
 end else if (p_Result_2_fu_166_p4[10] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd10;
 end else if (p_Result_2_fu_166_p4[11] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd11;
 end else if (p_Result_2_fu_166_p4[12] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd12;
 end else if (p_Result_2_fu_166_p4[13] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd13;
 end else if (p_Result_2_fu_166_p4[14] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd14;
 end else if (p_Result_2_fu_166_p4[15] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd15;
 end else if (p_Result_2_fu_166_p4[16] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd16;
 end else if (p_Result_2_fu_166_p4[17] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd17;
 end else if (p_Result_2_fu_166_p4[18] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd18;
 end else if (p_Result_2_fu_166_p4[19] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd19;
 end else if (p_Result_2_fu_166_p4[20] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd20;
 end else if (p_Result_2_fu_166_p4[21] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd21;
 end else if (p_Result_2_fu_166_p4[22] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd22;
 end else if (p_Result_2_fu_166_p4[23] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd23;
 end else if (p_Result_2_fu_166_p4[24] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd24;
 end else if (p_Result_2_fu_166_p4[25] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd25;
 end else if (p_Result_2_fu_166_p4[26] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd26;
 end else if (p_Result_2_fu_166_p4[27] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd27;
 end else if (p_Result_2_fu_166_p4[28] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd28;
 end else if (p_Result_2_fu_166_p4[29] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd29;
 end else if (p_Result_2_fu_166_p4[30] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd30;
 end else if (p_Result_2_fu_166_p4[31] == 1'b1) begin
 c_1_5_fu_176_p3 = 32'd31;
 end else begin
 c_1_5_fu_176_p3 = 32'd32;
 end
end
assign c_2_07_out = c_1_3_fu_72;
assign c_3_04_out = c_1_fu_60;
assign icmp_ln443_fu_136_p2 = ((ap_sig_allocacmp_i == 3'd4) ? 1'b1 : 1'b0);
integer ap_tvar_int_0;
always @ (p_Val2_s_fu_152_p6) begin
 for (ap_tvar_int_0 = 32 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
 if (ap_tvar_int_0 > 31 - 0) begin
 p_Result_2_fu_166_p4[ap_tvar_int_0] = 1'b0;
 end else begin
 p_Result_2_fu_166_p4[ap_tvar_int_0] = p_Val2_s_fu_152_p6[31 - ap_tvar_int_0];
 end
 end
end
assign p_Val2_s_fu_152_p5 = ap_sig_allocacmp_i[1:0];
assign trunc_ln553_fu_148_p1 = ap_sig_allocacmp_i[1:0];
endmodule
module entry_point_scaled_fixed2ieee_63_1_Pipeline_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 in_r,
 c_0_05_reload,
 c_1_06_reload,
 c_2_07_reload,
 c_3_04_reload,
 shift_out,
 shift_out_ap_vld,
 in_shift_V_out,
 in_shift_V_out_ap_vld,
 shift_1_out,
 shift_1_out_ap_vld,
 r_V_3_out,
 r_V_3_out_ap_vld,
 ap_return
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [62:0] in_r;
input [31:0] c_0_05_reload;
input [31:0] c_1_06_reload;
input [31:0] c_2_07_reload;
input [31:0] c_3_04_reload;
output [31:0] shift_out;
output shift_out_ap_vld;
output [61:0] in_shift_V_out;
output in_shift_V_out_ap_vld;
output [31:0] shift_1_out;
output shift_1_out_ap_vld;
output [61:0] r_V_3_out;
output r_V_3_out_ap_vld;
output [0:0] ap_return;
reg ap_idle;
reg[31:0] shift_out;
reg shift_out_ap_vld;
reg in_shift_V_out_ap_vld;
reg shift_1_out_ap_vld;
reg r_V_3_out_ap_vld;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln453_fu_257_p2;
wire [0:0] icmp_ln450_fu_169_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg [0:0] ap_phi_mux_UnifiedRetVal_phi_fu_135_p4;
wire ap_block_pp0_stage0;
reg [62:0] in_shift_V_fu_62;
wire [62:0] in_shift_V_2_fu_244_p3;
wire ap_loop_init;
reg [31:0] shift_fu_66;
wire [31:0] shift_1_fu_199_p2;
wire [31:0] shift_load_1_load_fu_278_p1;
reg [2:0] i_fu_70;
wire [2:0] add_ln450_fu_175_p2;
wire ap_block_pp0_stage0_01001;
wire [1:0] sh_assign_fu_189_p5;
wire [31:0] sh_assign_fu_189_p6;
wire [0:0] isNeg_fu_206_p3;
wire [31:0] sub_ln1512_fu_214_p2;
wire [31:0] ush_fu_220_p3;
wire [62:0] zext_ln1488_fu_228_p1;
wire [62:0] r_V_fu_232_p2;
wire [62:0] r_V_1_fu_238_p2;
reg [0:0] ap_return_preg;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
reg ap_condition_87;
reg ap_condition_231;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_return_preg = 1'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_mux_42_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .din2_WIDTH( 32 ),
 .din3_WIDTH( 32 ),
 .din4_WIDTH( 2 ),
 .dout_WIDTH( 32 ))
mux_42_32_1_1_U15(
 .din0(c_0_05_reload),
 .din1(c_1_06_reload),
 .din2(c_2_07_reload),
 .din3(c_3_04_reload),
 .din4(sh_assign_fu_189_p5),
 .dout(sh_assign_fu_189_p6)
);
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(ap_start),
 .ap_ready(ap_ready),
 .ap_done(ap_done),
 .ap_start_int(ap_start_int),
 .ap_loop_init(ap_loop_init),
 .ap_ready_int(ap_ready_int),
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
 .ap_loop_exit_done(ap_done_int),
 .ap_continue_int(ap_continue_int),
 .ap_done_int(ap_done_int)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_enable_reg_pp0_iter1 <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_return_preg <= 1'd0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln450_fu_169_p2 == 1'd1) | (icmp_ln453_fu_257_p2 == 1'd0)))) begin
 ap_return_preg <= ap_phi_mux_UnifiedRetVal_phi_fu_135_p4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_fu_70 <= 3'd0;
 end else if ((1'b1 == ap_condition_231)) begin
 i_fu_70 <= add_ln450_fu_175_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 in_shift_V_fu_62 <= in_r;
 end else if ((1'b1 == ap_condition_231)) begin
 in_shift_V_fu_62 <= in_shift_V_2_fu_244_p3;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 shift_fu_66 <= 32'd0;
 end else if ((1'b1 == ap_condition_231)) begin
 shift_fu_66 <= shift_1_fu_199_p2;
 end
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln450_fu_169_p2 == 1'd1) | (icmp_ln453_fu_257_p2 == 1'd0)))) begin
 ap_condition_exit_pp0_iter1_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter1_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
 ap_idle_pp0 = 1'b1;
 end else begin
 ap_idle_pp0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_condition_87)) begin
 if (((icmp_ln450_fu_169_p2 == 1'd0) & (icmp_ln453_fu_257_p2 == 1'd0))) begin
 ap_phi_mux_UnifiedRetVal_phi_fu_135_p4 = 1'd0;
 end else if ((icmp_ln450_fu_169_p2 == 1'd1)) begin
 ap_phi_mux_UnifiedRetVal_phi_fu_135_p4 = 1'd1;
 end else begin
 ap_phi_mux_UnifiedRetVal_phi_fu_135_p4 = 'bx;
 end
 end else begin
 ap_phi_mux_UnifiedRetVal_phi_fu_135_p4 = 'bx;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln450_fu_169_p2 == 1'd1) | (icmp_ln453_fu_257_p2 == 1'd0)))) begin
 ap_return = ap_phi_mux_UnifiedRetVal_phi_fu_135_p4;
 end else begin
 ap_return = ap_return_preg;
 end
end
always @ (*) begin
 if ((((icmp_ln450_fu_169_p2 == 1'd0) & (icmp_ln453_fu_257_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln450_fu_169_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
 in_shift_V_out_ap_vld = 1'b1;
 end else begin
 in_shift_V_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln450_fu_169_p2 == 1'd0) & (icmp_ln453_fu_257_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 r_V_3_out_ap_vld = 1'b1;
 end else begin
 r_V_3_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln450_fu_169_p2 == 1'd0) & (icmp_ln453_fu_257_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 shift_1_out_ap_vld = 1'b1;
 end else begin
 shift_1_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_01001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((icmp_ln450_fu_169_p2 == 1'd1)) begin
 shift_out = shift_load_1_load_fu_278_p1;
 end else if (((icmp_ln450_fu_169_p2 == 1'd0) & (icmp_ln453_fu_257_p2 == 1'd0))) begin
 shift_out = shift_fu_66;
 end else begin
 shift_out = 'bx;
 end
 end else begin
 shift_out = 'bx;
 end
end
always @ (*) begin
 if ((((icmp_ln450_fu_169_p2 == 1'd0) & (icmp_ln453_fu_257_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln450_fu_169_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
 shift_out_ap_vld = 1'b1;
 end else begin
 shift_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_pp0_stage0 : begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln450_fu_175_p2 = (i_fu_70 + 3'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
always @ (*) begin
 ap_condition_231 = ((icmp_ln450_fu_169_p2 == 1'd0) & (icmp_ln453_fu_257_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
 ap_condition_87 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign icmp_ln450_fu_169_p2 = ((i_fu_70 == 3'd4) ? 1'b1 : 1'b0);
assign icmp_ln453_fu_257_p2 = ((sh_assign_fu_189_p6 == 32'd16) ? 1'b1 : 1'b0);
assign in_shift_V_2_fu_244_p3 = ((isNeg_fu_206_p3[0:0] == 1'b1) ? r_V_fu_232_p2 : r_V_1_fu_238_p2);
assign in_shift_V_out = in_shift_V_fu_62[61:0];
assign isNeg_fu_206_p3 = sh_assign_fu_189_p6[32'd31];
assign r_V_1_fu_238_p2 = in_shift_V_fu_62 << zext_ln1488_fu_228_p1;
assign r_V_3_out = in_shift_V_2_fu_244_p3[61:0];
assign r_V_fu_232_p2 = $signed(in_shift_V_fu_62) >>> zext_ln1488_fu_228_p1;
assign sh_assign_fu_189_p5 = i_fu_70[1:0];
assign shift_1_fu_199_p2 = (sh_assign_fu_189_p6 + shift_fu_66);
assign shift_1_out = (sh_assign_fu_189_p6 + shift_fu_66);
assign shift_load_1_load_fu_278_p1 = shift_fu_66;
assign sub_ln1512_fu_214_p2 = (32'd0 - sh_assign_fu_189_p6);
assign ush_fu_220_p3 = ((isNeg_fu_206_p3[0:0] == 1'b1) ? sub_ln1512_fu_214_p2 : sh_assign_fu_189_p6);
assign zext_ln1488_fu_228_p1 = ush_fu_220_p3;
endmodule
module entry_point_scaled_fixed2ieee_63_1_s (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 in_r,
 prescale,
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
input [62:0] in_r;
input [11:0] prescale;
output [63:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[63:0] ap_return;
(* fsm_encoding = "none" *) reg [6:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [14:0] trunc_ln594_fu_132_p1;
reg [14:0] trunc_ln594_reg_359;
wire [31:0] p_Result_s_fu_148_p3;
reg [31:0] p_Result_s_reg_373;
wire ap_CS_fsm_state3;
wire [0:0] icmp_ln1653_fu_172_p2;
reg [0:0] icmp_ln1653_reg_390;
wire ap_CS_fsm_state5;
wire [0:0] grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_return;
reg [0:0] targetBlock_reg_395;
wire ap_CS_fsm_state6;
wire grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_ap_start;
wire grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_ap_done;
wire grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_ap_idle;
wire grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_ap_ready;
wire [31:0] grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_out_bits_V_2_03_out;
wire grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_out_bits_V_2_03_out_ap_vld;
wire [31:0] grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_out_bits_V_1_02_out;
wire grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_out_bits_V_1_02_out_ap_vld;
wire [31:0] grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_out_bits_V_0_01_out;
wire grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_out_bits_V_0_01_out_ap_vld;
wire grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_ap_start;
wire grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_ap_done;
wire grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_ap_idle;
wire grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_ap_ready;
wire [31:0] grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_2_07_out;
wire grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_2_07_out_ap_vld;
wire [31:0] grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_1_06_out;
wire grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_1_06_out_ap_vld;
wire [31:0] grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_0_05_out;
wire grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_0_05_out_ap_vld;
wire [31:0] grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_3_04_out;
wire grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_3_04_out_ap_vld;
wire grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_start;
wire grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_done;
wire grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_idle;
wire grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_ready;
wire [31:0] grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_shift_out;
wire grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_shift_out_ap_vld;
wire [61:0] grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_in_shift_V_out;
wire grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_in_shift_V_out_ap_vld;
wire [31:0] grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_shift_1_out;
wire grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_shift_1_out_ap_vld;
wire [61:0] grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_r_V_3_out;
wire grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_r_V_3_out_ap_vld;
reg grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_ap_start_reg;
wire ap_CS_fsm_state4;
reg grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_start_reg;
reg [31:0] shift_loc_fu_54;
reg [61:0] in_shift_V_loc_fu_50;
reg [31:0] shift_1_loc_fu_46;
reg [61:0] r_V_3_loc_fu_42;
wire ap_CS_fsm_state7;
wire [11:0] sub_ln461_fu_196_p2;
wire signed [31:0] sext_ln461_fu_202_p1;
wire [31:0] select_ln450_fu_189_p3;
wire [31:0] newexp_fu_206_p2;
wire [0:0] tmp_fu_212_p3;
wire [51:0] tmp_1_fu_225_p4;
wire [51:0] tmp_2_fu_235_p4;
wire [0:0] or_ln462_fu_220_p2;
wire [51:0] select_ln450_1_fu_245_p3;
wire [10:0] trunc_ln214_fu_260_p1;
wire [10:0] out_exp_V_fu_264_p3;
wire [51:0] significand_fu_252_p3;
wire [63:0] p_Result_3_fu_272_p4;
wire [63:0] bitcast_ln526_fu_282_p1;
reg [63:0] ap_return_preg;
reg [6:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
reg ap_ST_fsm_state6_blk;
wire ap_ST_fsm_state7_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_ap_start_reg = 1'b0;
#0 grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_ap_start_reg = 1'b0;
#0 grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_start_reg = 1'b0;
#0 ap_return_preg = 64'd0;
end
entry_point_scaled_fixed2ieee_63_1_Pipeline_1 grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_ap_start),
 .ap_done(grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_ap_done),
 .ap_idle(grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_ap_idle),
 .ap_ready(grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_ap_ready),
 .in_r(in_r),
 .out_bits_V_2_03_out(grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_out_bits_V_2_03_out),
 .out_bits_V_2_03_out_ap_vld(grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_out_bits_V_2_03_out_ap_vld),
 .out_bits_V_1_02_out(grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_out_bits_V_1_02_out),
 .out_bits_V_1_02_out_ap_vld(grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_out_bits_V_1_02_out_ap_vld),
 .out_bits_V_0_01_out(grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_out_bits_V_0_01_out),
 .out_bits_V_0_01_out_ap_vld(grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_out_bits_V_0_01_out_ap_vld)
);
entry_point_scaled_fixed2ieee_63_1_Pipeline_2 grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_ap_start),
 .ap_done(grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_ap_done),
 .ap_idle(grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_ap_idle),
 .ap_ready(grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_ap_ready),
 .out_bits_V_0_01_reload(grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_out_bits_V_0_01_out),
 .out_bits_V_1_02_reload(grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_out_bits_V_1_02_out),
 .out_bits_V_2_03_reload(grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_out_bits_V_2_03_out),
 .p_Result_s(p_Result_s_reg_373),
 .c_2_07_out(grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_2_07_out),
 .c_2_07_out_ap_vld(grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_2_07_out_ap_vld),
 .c_1_06_out(grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_1_06_out),
 .c_1_06_out_ap_vld(grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_1_06_out_ap_vld),
 .c_0_05_out(grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_0_05_out),
 .c_0_05_out_ap_vld(grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_0_05_out_ap_vld),
 .c_3_04_out(grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_3_04_out),
 .c_3_04_out_ap_vld(grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_3_04_out_ap_vld)
);
entry_point_scaled_fixed2ieee_63_1_Pipeline_3 grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_start),
 .ap_done(grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_done),
 .ap_idle(grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_idle),
 .ap_ready(grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_ready),
 .in_r(in_r),
 .c_0_05_reload(grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_0_05_out),
 .c_1_06_reload(grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_1_06_out),
 .c_2_07_reload(grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_2_07_out),
 .c_3_04_reload(grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_c_3_04_out),
 .shift_out(grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_shift_out),
 .shift_out_ap_vld(grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_shift_out_ap_vld),
 .in_shift_V_out(grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_in_shift_V_out),
 .in_shift_V_out_ap_vld(grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_in_shift_V_out_ap_vld),
 .shift_1_out(grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_shift_1_out),
 .shift_1_out_ap_vld(grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_shift_1_out_ap_vld),
 .r_V_3_out(grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_r_V_3_out),
 .r_V_3_out_ap_vld(grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_r_V_3_out_ap_vld),
 .ap_return(grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_return)
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
 ap_return_preg[0] <= 1'b0;
 ap_return_preg[1] <= 1'b0;
 ap_return_preg[2] <= 1'b0;
 ap_return_preg[3] <= 1'b0;
 ap_return_preg[4] <= 1'b0;
 ap_return_preg[5] <= 1'b0;
 ap_return_preg[6] <= 1'b0;
 ap_return_preg[7] <= 1'b0;
 ap_return_preg[8] <= 1'b0;
 ap_return_preg[9] <= 1'b0;
 ap_return_preg[10] <= 1'b0;
 ap_return_preg[11] <= 1'b0;
 ap_return_preg[12] <= 1'b0;
 ap_return_preg[13] <= 1'b0;
 ap_return_preg[14] <= 1'b0;
 ap_return_preg[15] <= 1'b0;
 ap_return_preg[16] <= 1'b0;
 ap_return_preg[17] <= 1'b0;
 ap_return_preg[18] <= 1'b0;
 ap_return_preg[19] <= 1'b0;
 ap_return_preg[20] <= 1'b0;
 ap_return_preg[21] <= 1'b0;
 ap_return_preg[22] <= 1'b0;
 ap_return_preg[23] <= 1'b0;
 ap_return_preg[24] <= 1'b0;
 ap_return_preg[25] <= 1'b0;
 ap_return_preg[26] <= 1'b0;
 ap_return_preg[27] <= 1'b0;
 ap_return_preg[28] <= 1'b0;
 ap_return_preg[29] <= 1'b0;
 ap_return_preg[30] <= 1'b0;
 ap_return_preg[31] <= 1'b0;
 ap_return_preg[32] <= 1'b0;
 ap_return_preg[33] <= 1'b0;
 ap_return_preg[34] <= 1'b0;
 ap_return_preg[35] <= 1'b0;
 ap_return_preg[36] <= 1'b0;
 ap_return_preg[37] <= 1'b0;
 ap_return_preg[38] <= 1'b0;
 ap_return_preg[39] <= 1'b0;
 ap_return_preg[40] <= 1'b0;
 ap_return_preg[41] <= 1'b0;
 ap_return_preg[42] <= 1'b0;
 ap_return_preg[43] <= 1'b0;
 ap_return_preg[44] <= 1'b0;
 ap_return_preg[45] <= 1'b0;
 ap_return_preg[46] <= 1'b0;
 ap_return_preg[47] <= 1'b0;
 ap_return_preg[48] <= 1'b0;
 ap_return_preg[49] <= 1'b0;
 ap_return_preg[50] <= 1'b0;
 ap_return_preg[51] <= 1'b0;
 ap_return_preg[52] <= 1'b0;
 ap_return_preg[53] <= 1'b0;
 ap_return_preg[54] <= 1'b0;
 ap_return_preg[55] <= 1'b0;
 ap_return_preg[56] <= 1'b0;
 ap_return_preg[57] <= 1'b0;
 ap_return_preg[58] <= 1'b0;
 ap_return_preg[59] <= 1'b0;
 ap_return_preg[60] <= 1'b0;
 ap_return_preg[61] <= 1'b0;
 ap_return_preg[62] <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 ap_return_preg[62 : 0] <= bitcast_ln526_fu_282_p1[62 : 0];
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_ap_start_reg <= 1'b1;
 end else if ((grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_ap_ready == 1'b1)) begin
 grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_ap_start_reg <= 1'b1;
 end else if ((grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_ap_ready == 1'b1)) begin
 grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_start_reg <= 1'b1;
 end else if ((grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_ready == 1'b1)) begin
 grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 icmp_ln1653_reg_390 <= icmp_ln1653_fu_172_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state6) & (grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_in_shift_V_out_ap_vld == 1'b1))) begin
 in_shift_V_loc_fu_50 <= grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_in_shift_V_out;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 p_Result_s_reg_373[31 : 17] <= p_Result_s_fu_148_p3[31 : 17];
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state6) & (grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_r_V_3_out_ap_vld == 1'b1))) begin
 r_V_3_loc_fu_42 <= grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_r_V_3_out;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state6) & (grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_shift_1_out_ap_vld == 1'b1))) begin
 shift_1_loc_fu_46 <= grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_shift_1_out;
 end
end
always @ (posedge ap_clk) begin
 if (((grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_shift_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
 shift_loc_fu_54 <= grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_shift_out;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 targetBlock_reg_395 <= grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_return;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 trunc_ln594_reg_359 <= trunc_ln594_fu_132_p1;
 end
end
always @ (*) begin
 if ((ap_start == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
always @ (*) begin
 if ((grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
 if ((grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_done == 1'b0)) begin
 ap_ST_fsm_state6_blk = 1'b1;
 end else begin
 ap_ST_fsm_state6_blk = 1'b0;
 end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
 if ((1'b1 == ap_CS_fsm_state7)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 ap_return = bitcast_ln526_fu_282_p1;
 end else begin
 ap_return = ap_return_preg;
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
 if (((grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
 if (((grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 ap_ST_fsm_state6 : begin
 if (((grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 end
 ap_ST_fsm_state7 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign bitcast_ln526_fu_282_p1 = p_Result_3_fu_272_p4;
assign grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_ap_start = grp_scaled_fixed2ieee_63_1_Pipeline_1_fu_98_ap_start_reg;
assign grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_ap_start = grp_scaled_fixed2ieee_63_1_Pipeline_2_fu_107_ap_start_reg;
assign grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_start = grp_scaled_fixed2ieee_63_1_Pipeline_3_fu_119_ap_start_reg;
assign icmp_ln1653_fu_172_p2 = ((in_r == 63'd0) ? 1'b1 : 1'b0);
assign newexp_fu_206_p2 = ($signed(sext_ln461_fu_202_p1) - $signed(select_ln450_fu_189_p3));
assign or_ln462_fu_220_p2 = (tmp_fu_212_p3 | icmp_ln1653_reg_390);
assign out_exp_V_fu_264_p3 = ((or_ln462_fu_220_p2[0:0] == 1'b1) ? 11'd0 : trunc_ln214_fu_260_p1);
assign p_Result_3_fu_272_p4 = {{{{1'd0}, {out_exp_V_fu_264_p3}}}, {significand_fu_252_p3}};
assign p_Result_s_fu_148_p3 = {{trunc_ln594_reg_359}, {17'd65536}};
assign select_ln450_1_fu_245_p3 = ((targetBlock_reg_395[0:0] == 1'b1) ? tmp_1_fu_225_p4 : tmp_2_fu_235_p4);
assign select_ln450_fu_189_p3 = ((targetBlock_reg_395[0:0] == 1'b1) ? shift_loc_fu_54 : shift_1_loc_fu_46);
assign sext_ln461_fu_202_p1 = $signed(sub_ln461_fu_196_p2);
assign significand_fu_252_p3 = ((or_ln462_fu_220_p2[0:0] == 1'b1) ? 52'd0 : select_ln450_1_fu_245_p3);
assign sub_ln461_fu_196_p2 = (12'd1023 - prescale);
assign tmp_1_fu_225_p4 = {{in_shift_V_loc_fu_50[61:10]}};
assign tmp_2_fu_235_p4 = {{r_V_3_loc_fu_42[61:10]}};
assign tmp_fu_212_p3 = newexp_fu_206_p2[32'd31];
assign trunc_ln214_fu_260_p1 = newexp_fu_206_p2[10:0];
assign trunc_ln594_fu_132_p1 = in_r[14:0];
always @ (posedge ap_clk) begin
 p_Result_s_reg_373[16:0] <= 17'b10000000000000000;
 ap_return_preg[63] <= 1'b0;
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
