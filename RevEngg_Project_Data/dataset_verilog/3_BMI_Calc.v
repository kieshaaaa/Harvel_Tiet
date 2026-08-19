module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 height,
 weight,
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
 temptemp7,
 temptemp7_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 37'd1;
parameter ap_ST_fsm_state2 = 37'd2;
parameter ap_ST_fsm_state3 = 37'd4;
parameter ap_ST_fsm_state4 = 37'd8;
parameter ap_ST_fsm_state5 = 37'd16;
parameter ap_ST_fsm_state6 = 37'd32;
parameter ap_ST_fsm_state7 = 37'd64;
parameter ap_ST_fsm_state8 = 37'd128;
parameter ap_ST_fsm_state9 = 37'd256;
parameter ap_ST_fsm_state10 = 37'd512;
parameter ap_ST_fsm_state11 = 37'd1024;
parameter ap_ST_fsm_state12 = 37'd2048;
parameter ap_ST_fsm_state13 = 37'd4096;
parameter ap_ST_fsm_state14 = 37'd8192;
parameter ap_ST_fsm_state15 = 37'd16384;
parameter ap_ST_fsm_state16 = 37'd32768;
parameter ap_ST_fsm_state17 = 37'd65536;
parameter ap_ST_fsm_state18 = 37'd131072;
parameter ap_ST_fsm_state19 = 37'd262144;
parameter ap_ST_fsm_state20 = 37'd524288;
parameter ap_ST_fsm_state21 = 37'd1048576;
parameter ap_ST_fsm_state22 = 37'd2097152;
parameter ap_ST_fsm_state23 = 37'd4194304;
parameter ap_ST_fsm_state24 = 37'd8388608;
parameter ap_ST_fsm_state25 = 37'd16777216;
parameter ap_ST_fsm_state26 = 37'd33554432;
parameter ap_ST_fsm_state27 = 37'd67108864;
parameter ap_ST_fsm_state28 = 37'd134217728;
parameter ap_ST_fsm_state29 = 37'd268435456;
parameter ap_ST_fsm_state30 = 37'd536870912;
parameter ap_ST_fsm_state31 = 37'd1073741824;
parameter ap_ST_fsm_state32 = 37'd2147483648;
parameter ap_ST_fsm_state33 = 37'd4294967296;
parameter ap_ST_fsm_state34 = 37'd8589934592;
parameter ap_ST_fsm_state35 = 37'd17179869184;
parameter ap_ST_fsm_state36 = 37'd34359738368;
parameter ap_ST_fsm_state37 = 37'd68719476736;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] height;
input [31:0] weight;
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
output [31:0] temptemp7;
output temptemp7_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
reg temptemp5_ap_vld;
reg temptemp6_ap_vld;
reg temptemp7_ap_vld;
(* fsm_encoding = "none" *) reg [36:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire signed [31:0] h_fu_215_p3;
reg signed [31:0] h_reg_937;
wire ap_CS_fsm_state2;
wire signed [31:0] mul_ln11_fu_223_p2;
reg signed [31:0] mul_ln11_reg_959;
reg [0:0] tmp_4_reg_991;
wire ap_CS_fsm_state37;
wire [0:0] select_ln12_fu_284_p3;
wire [0:0] and_ln19_fu_402_p2;
wire [0:0] and_ln28_fu_517_p2;
wire [0:0] and_ln37_fu_613_p2;
wire [0:0] and_ln46_fu_728_p2;
wire [0:0] and_ln55_fu_862_p2;
wire [33:0] mul_ln10_fu_153_p1;
wire [64:0] mul_ln10_fu_153_p2;
wire signed [31:0] tmp_fu_165_p1;
wire [64:0] sub_ln10_fu_159_p2;
wire signed [25:0] tmp_3_fu_183_p4;
wire [0:0] tmp_fu_165_p3;
wire [25:0] tmp_2_fu_173_p4;
wire [25:0] select_ln10_1_fu_197_p3;
wire signed [31:0] sext_ln10_2_fu_205_p1;
wire [31:0] sub_ln10_1_fu_209_p2;
wire signed [31:0] sext_ln10_1_fu_193_p1;
wire signed [27:0] mul_ln11_fu_223_p0;
wire signed [27:0] mul_ln11_fu_223_p1;
wire [31:0] grp_fu_227_p2;
wire [35:0] tmp_5_fu_252_p3;
wire signed [36:0] sext_ln12_1_fu_259_p1;
wire signed [36:0] sext_ln12_fu_249_p1;
wire signed [31:0] sext_ln12_2_fu_269_p0;
wire signed [36:0] sext_ln12_2_fu_269_p1;
wire [36:0] sub_ln12_fu_263_p2;
wire [0:0] icmp_ln12_fu_272_p2;
wire [0:0] icmp_ln12_1_fu_278_p2;
wire [35:0] tmp_7_fu_298_p3;
wire signed [31:0] sext_ln19_1_fu_309_p0;
wire signed [37:0] sext_ln19_fu_305_p1;
wire signed [37:0] sext_ln19_1_fu_309_p1;
wire [0:0] icmp_ln19_fu_312_p2;
wire [0:0] icmp_ln19_1_fu_324_p2;
wire [0:0] tmp_6_fu_291_p3;
wire [0:0] xor_ln19_fu_318_p2;
wire [0:0] xor_ln19_1_fu_330_p2;
wire [35:0] tmp_9_fu_351_p3;
wire [32:0] tmp_10_fu_362_p3;
wire signed [37:0] sext_ln19_2_fu_358_p1;
wire signed [37:0] sext_ln19_3_fu_369_p1;
wire signed [31:0] sext_ln19_4_fu_379_p0;
wire signed [37:0] sext_ln19_4_fu_379_p1;
wire [37:0] add_ln19_fu_373_p2;
wire [0:0] tmp_8_fu_344_p3;
wire [0:0] icmp_ln19_2_fu_382_p2;
wire [0:0] icmp_ln19_3_fu_388_p2;
wire [0:0] select_ln19_fu_336_p3;
wire [0:0] select_ln19_1_fu_394_p3;
wire [35:0] tmp_12_fu_415_p3;
wire [32:0] tmp_13_fu_426_p3;
wire signed [37:0] sext_ln28_fu_422_p1;
wire signed [37:0] sext_ln28_1_fu_433_p1;
wire signed [31:0] sext_ln28_2_fu_443_p0;
wire [37:0] add_ln28_fu_437_p2;
wire signed [37:0] sext_ln28_2_fu_443_p1;
wire [0:0] icmp_ln28_fu_446_p2;
wire [0:0] icmp_ln28_1_fu_458_p2;
wire [0:0] tmp_11_fu_408_p3;
wire [0:0] xor_ln28_fu_452_p2;
wire [0:0] xor_ln28_1_fu_464_p2;
wire [5:0] mul_ln28_fu_488_p1;
wire signed [31:0] sext_ln28_4_fu_494_p0;
wire signed [37:0] sext_ln28_4_fu_494_p1;
wire [37:0] mul_ln28_fu_488_p2;
wire [0:0] tmp_14_fu_478_p3;
wire [0:0] icmp_ln28_2_fu_497_p2;
wire [0:0] icmp_ln28_3_fu_503_p2;
wire [0:0] select_ln28_fu_470_p3;
wire [0:0] select_ln28_1_fu_509_p3;
wire [5:0] mul_ln37_fu_533_p1;
wire signed [31:0] sext_ln37_1_fu_539_p0;
wire [37:0] mul_ln37_fu_533_p2;
wire signed [37:0] sext_ln37_1_fu_539_p1;
wire [0:0] icmp_ln37_fu_542_p2;
wire [0:0] icmp_ln37_1_fu_554_p2;
wire [0:0] tmp_15_fu_523_p3;
wire [0:0] xor_ln37_fu_548_p2;
wire [0:0] xor_ln37_1_fu_560_p2;
wire [5:0] mul_ln37_1_fu_584_p1;
wire signed [31:0] sext_ln37_3_fu_590_p0;
wire signed [37:0] sext_ln37_3_fu_590_p1;
wire [37:0] mul_ln37_1_fu_584_p2;
wire [0:0] tmp_16_fu_574_p3;
wire [0:0] icmp_ln37_2_fu_593_p2;
wire [0:0] icmp_ln37_3_fu_599_p2;
wire [0:0] select_ln37_fu_566_p3;
wire [0:0] select_ln37_1_fu_605_p3;
wire [5:0] mul_ln46_fu_629_p1;
wire signed [31:0] sext_ln46_1_fu_635_p0;
wire [37:0] mul_ln46_fu_629_p2;
wire signed [37:0] sext_ln46_1_fu_635_p1;
wire [0:0] icmp_ln46_fu_638_p2;
wire [0:0] icmp_ln46_1_fu_650_p2;
wire [0:0] tmp_17_fu_619_p3;
wire [0:0] xor_ln46_fu_644_p2;
wire [0:0] xor_ln46_1_fu_656_p2;
wire [36:0] tmp_19_fu_677_p3;
wire [32:0] tmp_20_fu_688_p3;
wire signed [37:0] sext_ln46_2_fu_684_p1;
wire signed [37:0] sext_ln46_3_fu_695_p1;
wire signed [31:0] sext_ln46_4_fu_705_p0;
wire signed [37:0] sext_ln46_4_fu_705_p1;
wire [37:0] sub_ln46_fu_699_p2;
wire [0:0] tmp_18_fu_670_p3;
wire [0:0] icmp_ln46_2_fu_708_p2;
wire [0:0] icmp_ln46_3_fu_714_p2;
wire [0:0] select_ln46_fu_662_p3;
wire [0:0] select_ln46_1_fu_720_p3;
wire [36:0] tmp_22_fu_741_p3;
wire [32:0] tmp_23_fu_752_p3;
wire signed [37:0] sext_ln55_fu_748_p1;
wire signed [37:0] sext_ln55_1_fu_759_p1;
wire signed [31:0] sext_ln55_2_fu_769_p0;
wire [37:0] sub_ln55_fu_763_p2;
wire signed [37:0] sext_ln55_2_fu_769_p1;
wire [0:0] icmp_ln55_fu_772_p2;
wire [0:0] icmp_ln55_1_fu_784_p2;
wire [0:0] tmp_21_fu_734_p3;
wire [0:0] xor_ln55_fu_778_p2;
wire [0:0] xor_ln55_1_fu_790_p2;
wire [36:0] tmp_25_fu_811_p3;
wire [34:0] tmp_26_fu_822_p3;
wire signed [38:0] sext_ln55_3_fu_818_p1;
wire signed [38:0] sext_ln55_4_fu_829_p1;
wire signed [31:0] sext_ln55_5_fu_839_p0;
wire signed [38:0] sext_ln55_5_fu_839_p1;
wire [38:0] add_ln55_fu_833_p2;
wire [0:0] tmp_24_fu_804_p3;
wire [0:0] icmp_ln55_2_fu_842_p2;
wire [0:0] icmp_ln55_3_fu_848_p2;
wire [0:0] select_ln55_fu_796_p3;
wire [0:0] select_ln55_1_fu_854_p3;
wire [5:0] trunc_ln6_fu_241_p1;
wire [5:0] result_5_fu_875_p2;
wire [5:0] result_4_fu_886_p2;
wire [4:0] trunc_ln6_1_fu_245_p1;
wire [4:0] result_3_fu_897_p2;
wire [4:0] result_2_fu_908_p2;
wire [4:0] result_1_fu_919_p2;
reg grp_fu_227_ap_start;
wire grp_fu_227_ap_done;
reg [36:0] ap_NS_fsm;
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
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 37'd1;
end
entry_point_mul_32s_34ns_65_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 34 ),
 .dout_WIDTH( 65 ))
mul_32s_34ns_65_1_1_U1(
 .din0(height),
 .din1(mul_ln10_fu_153_p1),
 .dout(mul_ln10_fu_153_p2)
);
entry_point_mul_28s_28s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 28 ),
 .din1_WIDTH( 28 ),
 .dout_WIDTH( 32 ))
mul_28s_28s_32_1_1_U2(
 .din0(mul_ln11_fu_223_p0),
 .din1(mul_ln11_fu_223_p1),
 .dout(mul_ln11_fu_223_p2)
);
entry_point_sdiv_32s_32s_32_36_seq_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
sdiv_32s_32s_32_36_seq_1_U3(
 .clk(ap_clk),
 .reset(ap_rst),
 .start(grp_fu_227_ap_start),
 .done(grp_fu_227_ap_done),
 .din0(weight),
 .din1(mul_ln11_fu_223_p2),
 .ce(1'b1),
 .dout(grp_fu_227_p2)
);
entry_point_mul_32s_6ns_38_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 6 ),
 .dout_WIDTH( 38 ))
mul_32s_6ns_38_1_1_U4(
 .din0(mul_ln11_reg_959),
 .din1(mul_ln28_fu_488_p1),
 .dout(mul_ln28_fu_488_p2)
);
entry_point_mul_32s_6ns_38_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 6 ),
 .dout_WIDTH( 38 ))
mul_32s_6ns_38_1_1_U5(
 .din0(mul_ln11_reg_959),
 .din1(mul_ln37_fu_533_p1),
 .dout(mul_ln37_fu_533_p2)
);
entry_point_mul_32s_6ns_38_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 6 ),
 .dout_WIDTH( 38 ))
mul_32s_6ns_38_1_1_U6(
 .din0(mul_ln11_reg_959),
 .din1(mul_ln37_1_fu_584_p1),
 .dout(mul_ln37_1_fu_584_p2)
);
entry_point_mul_32s_6ns_38_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 6 ),
 .dout_WIDTH( 38 ))
mul_32s_6ns_38_1_1_U7(
 .din0(mul_ln11_reg_959),
 .din1(mul_ln46_fu_629_p1),
 .dout(mul_ln46_fu_629_p2)
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
 h_reg_937 <= h_fu_215_p3;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 mul_ln11_reg_959 <= mul_ln11_fu_223_p2;
 tmp_4_reg_991 <= mul_ln11_fu_223_p2[32'd31];
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
assign ap_ST_fsm_state37_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state37)) begin
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
 if ((1'b1 == ap_CS_fsm_state37)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 grp_fu_227_ap_start = 1'b1;
 end else begin
 grp_fu_227_ap_start = 1'b0;
 end
end
always @ (*) begin
 if (((select_ln12_fu_284_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state37))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((select_ln12_fu_284_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state37) & (1'd1 == and_ln19_fu_402_p2))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'd0 == and_ln19_fu_402_p2) & (select_ln12_fu_284_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state37) & (1'd1 == and_ln28_fu_517_p2))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'd0 == and_ln19_fu_402_p2) & (1'd0 == and_ln28_fu_517_p2) & (select_ln12_fu_284_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state37) & (1'd1 == and_ln37_fu_613_p2))) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'd0 == and_ln19_fu_402_p2) & (1'd0 == and_ln37_fu_613_p2) & (1'd0 == and_ln28_fu_517_p2) & (select_ln12_fu_284_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state37) & (1'd1 == and_ln46_fu_728_p2))) begin
 temptemp5_ap_vld = 1'b1;
 end else begin
 temptemp5_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'd0 == and_ln19_fu_402_p2) & (1'd0 == and_ln46_fu_728_p2) & (1'd0 == and_ln37_fu_613_p2) & (1'd0 == and_ln28_fu_517_p2) & (select_ln12_fu_284_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state37) & (1'd1 == and_ln55_fu_862_p2))) begin
 temptemp6_ap_vld = 1'b1;
 end else begin
 temptemp6_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'd0 == and_ln19_fu_402_p2) & (1'd0 == and_ln55_fu_862_p2) & (1'd0 == and_ln46_fu_728_p2) & (1'd0 == and_ln37_fu_613_p2) & (1'd0 == and_ln28_fu_517_p2) & (select_ln12_fu_284_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state37))) begin
 temptemp7_ap_vld = 1'b1;
 end else begin
 temptemp7_ap_vld = 1'b0;
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln19_fu_373_p2 = ($signed(sext_ln19_2_fu_358_p1) + $signed(sext_ln19_3_fu_369_p1));
assign add_ln28_fu_437_p2 = ($signed(sext_ln28_fu_422_p1) + $signed(sext_ln28_1_fu_433_p1));
assign add_ln55_fu_833_p2 = ($signed(sext_ln55_3_fu_818_p1) + $signed(sext_ln55_4_fu_829_p1));
assign and_ln19_fu_402_p2 = (select_ln19_fu_336_p3 & select_ln19_1_fu_394_p3);
assign and_ln28_fu_517_p2 = (select_ln28_fu_470_p3 & select_ln28_1_fu_509_p3);
assign and_ln37_fu_613_p2 = (select_ln37_fu_566_p3 & select_ln37_1_fu_605_p3);
assign and_ln46_fu_728_p2 = (select_ln46_fu_662_p3 & select_ln46_1_fu_720_p3);
assign and_ln55_fu_862_p2 = (select_ln55_fu_796_p3 & select_ln55_1_fu_854_p3);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state37 = ap_CS_fsm[32'd36];
assign ap_return = 32'd0;
assign h_fu_215_p3 = ((tmp_fu_165_p3[0:0] == 1'b1) ? sub_ln10_1_fu_209_p2 : sext_ln10_1_fu_193_p1);
assign icmp_ln12_1_fu_278_p2 = (($signed(sext_ln12_2_fu_269_p1) < $signed(sub_ln12_fu_263_p2)) ? 1'b1 : 1'b0);
assign icmp_ln12_fu_272_p2 = (($signed(sext_ln12_2_fu_269_p1) > $signed(sub_ln12_fu_263_p2)) ? 1'b1 : 1'b0);
assign icmp_ln19_1_fu_324_p2 = (($signed(sext_ln19_1_fu_309_p1) < $signed(sext_ln19_fu_305_p1)) ? 1'b1 : 1'b0);
assign icmp_ln19_2_fu_382_p2 = (($signed(sext_ln19_4_fu_379_p1) > $signed(add_ln19_fu_373_p2)) ? 1'b1 : 1'b0);
assign icmp_ln19_3_fu_388_p2 = (($signed(sext_ln19_4_fu_379_p1) < $signed(add_ln19_fu_373_p2)) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_312_p2 = (($signed(sext_ln19_fu_305_p1) < $signed(sext_ln19_1_fu_309_p1)) ? 1'b1 : 1'b0);
assign icmp_ln28_1_fu_458_p2 = (($signed(sext_ln28_2_fu_443_p1) < $signed(add_ln28_fu_437_p2)) ? 1'b1 : 1'b0);
assign icmp_ln28_2_fu_497_p2 = (($signed(sext_ln28_4_fu_494_p1) > $signed(mul_ln28_fu_488_p2)) ? 1'b1 : 1'b0);
assign icmp_ln28_3_fu_503_p2 = (($signed(sext_ln28_4_fu_494_p1) < $signed(mul_ln28_fu_488_p2)) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_446_p2 = (($signed(add_ln28_fu_437_p2) < $signed(sext_ln28_2_fu_443_p1)) ? 1'b1 : 1'b0);
assign icmp_ln37_1_fu_554_p2 = (($signed(sext_ln37_1_fu_539_p1) < $signed(mul_ln37_fu_533_p2)) ? 1'b1 : 1'b0);
assign icmp_ln37_2_fu_593_p2 = (($signed(sext_ln37_3_fu_590_p1) > $signed(mul_ln37_1_fu_584_p2)) ? 1'b1 : 1'b0);
assign icmp_ln37_3_fu_599_p2 = (($signed(sext_ln37_3_fu_590_p1) < $signed(mul_ln37_1_fu_584_p2)) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_542_p2 = (($signed(mul_ln37_fu_533_p2) < $signed(sext_ln37_1_fu_539_p1)) ? 1'b1 : 1'b0);
assign icmp_ln46_1_fu_650_p2 = (($signed(sext_ln46_1_fu_635_p1) < $signed(mul_ln46_fu_629_p2)) ? 1'b1 : 1'b0);
assign icmp_ln46_2_fu_708_p2 = (($signed(sext_ln46_4_fu_705_p1) > $signed(sub_ln46_fu_699_p2)) ? 1'b1 : 1'b0);
assign icmp_ln46_3_fu_714_p2 = (($signed(sext_ln46_4_fu_705_p1) < $signed(sub_ln46_fu_699_p2)) ? 1'b1 : 1'b0);
assign icmp_ln46_fu_638_p2 = (($signed(mul_ln46_fu_629_p2) < $signed(sext_ln46_1_fu_635_p1)) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_784_p2 = (($signed(sext_ln55_2_fu_769_p1) < $signed(sub_ln55_fu_763_p2)) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_842_p2 = (($signed(sext_ln55_5_fu_839_p1) > $signed(add_ln55_fu_833_p2)) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_848_p2 = (($signed(sext_ln55_5_fu_839_p1) < $signed(add_ln55_fu_833_p2)) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_772_p2 = (($signed(sub_ln55_fu_763_p2) < $signed(sext_ln55_2_fu_769_p1)) ? 1'b1 : 1'b0);
assign mul_ln10_fu_153_p1 = 65'd5497558139;
assign mul_ln11_fu_223_p0 = h_reg_937;
assign mul_ln11_fu_223_p1 = h_reg_937;
assign mul_ln28_fu_488_p1 = 38'd19;
assign mul_ln37_1_fu_584_p1 = 38'd25;
assign mul_ln37_fu_533_p1 = 38'd19;
assign mul_ln46_fu_629_p1 = 38'd25;
assign result_1_fu_919_p2 = (trunc_ln6_1_fu_245_p1 + 5'd2);
assign result_2_fu_908_p2 = (trunc_ln6_1_fu_245_p1 + 5'd3);
assign result_3_fu_897_p2 = (trunc_ln6_1_fu_245_p1 + 5'd4);
assign result_4_fu_886_p2 = (trunc_ln6_fu_241_p1 + 6'd5);
assign result_5_fu_875_p2 = (trunc_ln6_fu_241_p1 + 6'd6);
assign select_ln10_1_fu_197_p3 = ((tmp_fu_165_p3[0:0] == 1'b1) ? tmp_2_fu_173_p4 : tmp_3_fu_183_p4);
assign select_ln12_fu_284_p3 = ((tmp_4_reg_991[0:0] == 1'b1) ? icmp_ln12_fu_272_p2 : icmp_ln12_1_fu_278_p2);
assign select_ln19_1_fu_394_p3 = ((tmp_8_fu_344_p3[0:0] == 1'b1) ? icmp_ln19_2_fu_382_p2 : icmp_ln19_3_fu_388_p2);
assign select_ln19_fu_336_p3 = ((tmp_6_fu_291_p3[0:0] == 1'b1) ? xor_ln19_fu_318_p2 : xor_ln19_1_fu_330_p2);
assign select_ln28_1_fu_509_p3 = ((tmp_14_fu_478_p3[0:0] == 1'b1) ? icmp_ln28_2_fu_497_p2 : icmp_ln28_3_fu_503_p2);
assign select_ln28_fu_470_p3 = ((tmp_11_fu_408_p3[0:0] == 1'b1) ? xor_ln28_fu_452_p2 : xor_ln28_1_fu_464_p2);
assign select_ln37_1_fu_605_p3 = ((tmp_16_fu_574_p3[0:0] == 1'b1) ? icmp_ln37_2_fu_593_p2 : icmp_ln37_3_fu_599_p2);
assign select_ln37_fu_566_p3 = ((tmp_15_fu_523_p3[0:0] == 1'b1) ? xor_ln37_fu_548_p2 : xor_ln37_1_fu_560_p2);
assign select_ln46_1_fu_720_p3 = ((tmp_18_fu_670_p3[0:0] == 1'b1) ? icmp_ln46_2_fu_708_p2 : icmp_ln46_3_fu_714_p2);
assign select_ln46_fu_662_p3 = ((tmp_17_fu_619_p3[0:0] == 1'b1) ? xor_ln46_fu_644_p2 : xor_ln46_1_fu_656_p2);
assign select_ln55_1_fu_854_p3 = ((tmp_24_fu_804_p3[0:0] == 1'b1) ? icmp_ln55_2_fu_842_p2 : icmp_ln55_3_fu_848_p2);
assign select_ln55_fu_796_p3 = ((tmp_21_fu_734_p3[0:0] == 1'b1) ? xor_ln55_fu_778_p2 : xor_ln55_1_fu_790_p2);
assign sext_ln10_1_fu_193_p1 = tmp_3_fu_183_p4;
assign sext_ln10_2_fu_205_p1 = $signed(select_ln10_1_fu_197_p3);
assign sext_ln12_1_fu_259_p1 = $signed(tmp_5_fu_252_p3);
assign sext_ln12_2_fu_269_p0 = weight;
assign sext_ln12_2_fu_269_p1 = sext_ln12_2_fu_269_p0;
assign sext_ln12_fu_249_p1 = mul_ln11_reg_959;
assign sext_ln19_1_fu_309_p0 = weight;
assign sext_ln19_1_fu_309_p1 = sext_ln19_1_fu_309_p0;
assign sext_ln19_2_fu_358_p1 = $signed(tmp_9_fu_351_p3);
assign sext_ln19_3_fu_369_p1 = $signed(tmp_10_fu_362_p3);
assign sext_ln19_4_fu_379_p0 = weight;
assign sext_ln19_4_fu_379_p1 = sext_ln19_4_fu_379_p0;
assign sext_ln19_fu_305_p1 = $signed(tmp_7_fu_298_p3);
assign sext_ln28_1_fu_433_p1 = $signed(tmp_13_fu_426_p3);
assign sext_ln28_2_fu_443_p0 = weight;
assign sext_ln28_2_fu_443_p1 = sext_ln28_2_fu_443_p0;
assign sext_ln28_4_fu_494_p0 = weight;
assign sext_ln28_4_fu_494_p1 = sext_ln28_4_fu_494_p0;
assign sext_ln28_fu_422_p1 = $signed(tmp_12_fu_415_p3);
assign sext_ln37_1_fu_539_p0 = weight;
assign sext_ln37_1_fu_539_p1 = sext_ln37_1_fu_539_p0;
assign sext_ln37_3_fu_590_p0 = weight;
assign sext_ln37_3_fu_590_p1 = sext_ln37_3_fu_590_p0;
assign sext_ln46_1_fu_635_p0 = weight;
assign sext_ln46_1_fu_635_p1 = sext_ln46_1_fu_635_p0;
assign sext_ln46_2_fu_684_p1 = $signed(tmp_19_fu_677_p3);
assign sext_ln46_3_fu_695_p1 = $signed(tmp_20_fu_688_p3);
assign sext_ln46_4_fu_705_p0 = weight;
assign sext_ln46_4_fu_705_p1 = sext_ln46_4_fu_705_p0;
assign sext_ln55_1_fu_759_p1 = $signed(tmp_23_fu_752_p3);
assign sext_ln55_2_fu_769_p0 = weight;
assign sext_ln55_2_fu_769_p1 = sext_ln55_2_fu_769_p0;
assign sext_ln55_3_fu_818_p1 = $signed(tmp_25_fu_811_p3);
assign sext_ln55_4_fu_829_p1 = $signed(tmp_26_fu_822_p3);
assign sext_ln55_5_fu_839_p0 = weight;
assign sext_ln55_5_fu_839_p1 = sext_ln55_5_fu_839_p0;
assign sext_ln55_fu_748_p1 = $signed(tmp_22_fu_741_p3);
assign sub_ln10_1_fu_209_p2 = ($signed(32'd0) - $signed(sext_ln10_2_fu_205_p1));
assign sub_ln10_fu_159_p2 = (65'd0 - mul_ln10_fu_153_p2);
assign sub_ln12_fu_263_p2 = ($signed(sext_ln12_1_fu_259_p1) - $signed(sext_ln12_fu_249_p1));
assign sub_ln46_fu_699_p2 = ($signed(sext_ln46_2_fu_684_p1) - $signed(sext_ln46_3_fu_695_p1));
assign sub_ln55_fu_763_p2 = ($signed(sext_ln55_fu_748_p1) - $signed(sext_ln55_1_fu_759_p1));
assign temptemp1 = (grp_fu_227_p2 + 32'd1);
assign temptemp2 = result_1_fu_919_p2;
assign temptemp3 = result_2_fu_908_p2;
assign temptemp4 = result_3_fu_897_p2;
assign temptemp5 = result_4_fu_886_p2;
assign temptemp6 = result_5_fu_875_p2;
assign temptemp7 = (grp_fu_227_p2 + 32'd7);
assign tmp_10_fu_362_p3 = {{mul_ln11_reg_959}, {1'd0}};
assign tmp_11_fu_408_p3 = mul_ln11_reg_959[32'd31];
assign tmp_12_fu_415_p3 = {{mul_ln11_reg_959}, {4'd0}};
assign tmp_13_fu_426_p3 = {{mul_ln11_reg_959}, {1'd0}};
assign tmp_14_fu_478_p3 = mul_ln11_reg_959[32'd31];
assign tmp_15_fu_523_p3 = mul_ln11_reg_959[32'd31];
assign tmp_16_fu_574_p3 = mul_ln11_reg_959[32'd31];
assign tmp_17_fu_619_p3 = mul_ln11_reg_959[32'd31];
assign tmp_18_fu_670_p3 = mul_ln11_reg_959[32'd31];
assign tmp_19_fu_677_p3 = {{mul_ln11_reg_959}, {5'd0}};
assign tmp_20_fu_688_p3 = {{mul_ln11_reg_959}, {1'd0}};
assign tmp_21_fu_734_p3 = mul_ln11_reg_959[32'd31];
assign tmp_22_fu_741_p3 = {{mul_ln11_reg_959}, {5'd0}};
assign tmp_23_fu_752_p3 = {{mul_ln11_reg_959}, {1'd0}};
assign tmp_24_fu_804_p3 = mul_ln11_reg_959[32'd31];
assign tmp_25_fu_811_p3 = {{mul_ln11_reg_959}, {5'd0}};
assign tmp_26_fu_822_p3 = {{mul_ln11_reg_959}, {3'd0}};
assign tmp_2_fu_173_p4 = {{sub_ln10_fu_159_p2[64:39]}};
assign tmp_3_fu_183_p4 = {{mul_ln10_fu_153_p2[64:39]}};
assign tmp_5_fu_252_p3 = {{mul_ln11_reg_959}, {4'd0}};
assign tmp_6_fu_291_p3 = mul_ln11_reg_959[32'd31];
assign tmp_7_fu_298_p3 = {{mul_ln11_reg_959}, {4'd0}};
assign tmp_8_fu_344_p3 = mul_ln11_reg_959[32'd31];
assign tmp_9_fu_351_p3 = {{mul_ln11_reg_959}, {4'd0}};
assign tmp_fu_165_p1 = height;
assign tmp_fu_165_p3 = tmp_fu_165_p1[32'd31];
assign trunc_ln6_1_fu_245_p1 = grp_fu_227_p2[4:0];
assign trunc_ln6_fu_241_p1 = grp_fu_227_p2[5:0];
assign xor_ln19_1_fu_330_p2 = (icmp_ln19_1_fu_324_p2 ^ 1'd1);
assign xor_ln19_fu_318_p2 = (icmp_ln19_fu_312_p2 ^ 1'd1);
assign xor_ln28_1_fu_464_p2 = (icmp_ln28_1_fu_458_p2 ^ 1'd1);
assign xor_ln28_fu_452_p2 = (icmp_ln28_fu_446_p2 ^ 1'd1);
assign xor_ln37_1_fu_560_p2 = (icmp_ln37_1_fu_554_p2 ^ 1'd1);
assign xor_ln37_fu_548_p2 = (icmp_ln37_fu_542_p2 ^ 1'd1);
assign xor_ln46_1_fu_656_p2 = (icmp_ln46_1_fu_650_p2 ^ 1'd1);
assign xor_ln46_fu_644_p2 = (icmp_ln46_fu_638_p2 ^ 1'd1);
assign xor_ln55_1_fu_790_p2 = (icmp_ln55_1_fu_784_p2 ^ 1'd1);
assign xor_ln55_fu_778_p2 = (icmp_ln55_fu_772_p2 ^ 1'd1);
endmodule
module entry_point_mul_28s_28s_32_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed(din0) * $signed(din1);
endmodule
module entry_point_mul_32s_34ns_65_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed(din0) * $signed({1'b0, din1});
endmodule
module entry_point_mul_32s_6ns_38_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed(din0) * $signed({1'b0, din1});
endmodule
module entry_point_sdiv_32s_32s_32_36_seq_1_divseq
#(parameter
 in0_WIDTH = 32,
 in1_WIDTH = 32,
 out_WIDTH = 32
)
(
 input clk,
 input reset,
 input ce,
 input start,
 input [in0_WIDTH-1:0] dividend,
 input [in1_WIDTH-1:0] divisor,
 input [1:0] sign_i,
 output wire [1:0] sign_o,
 output wire done,
 output wire [out_WIDTH-1:0] quot,
 output wire [out_WIDTH-1:0] remd
);
localparam cal_WIDTH = (in0_WIDTH > in1_WIDTH)? in0_WIDTH : in1_WIDTH;
reg [in0_WIDTH-1:0] dividend0;
reg [in1_WIDTH-1:0] divisor0;
reg [1:0] sign0;
reg [in0_WIDTH-1:0] dividend_tmp;
reg [in0_WIDTH-1:0] remd_tmp;
wire [in0_WIDTH-1:0] dividend_tmp_mux;
wire [in0_WIDTH-1:0] remd_tmp_mux;
wire [in0_WIDTH-1:0] comb_tmp;
wire [cal_WIDTH:0] cal_tmp;
assign quot = dividend_tmp;
assign remd = remd_tmp;
assign sign_o = sign0;
always @(posedge clk)
begin
 if (start) begin
 dividend0 <= dividend;
 divisor0 <= divisor;
 sign0 <= sign_i;
 end
end
reg [in0_WIDTH:0] r_stage;
assign done = r_stage[in0_WIDTH];
always @(posedge clk)
begin
 if (reset == 1'b1)
 r_stage[in0_WIDTH:0] <= {in0_WIDTH{1'b0}};
 else if (ce)
 r_stage[in0_WIDTH:0] <= {r_stage[in0_WIDTH-1:0], start};
end
assign dividend_tmp_mux = r_stage[0]? dividend0 : dividend_tmp;
assign remd_tmp_mux = r_stage[0]? {in0_WIDTH{1'b0}} : remd_tmp;
if (in0_WIDTH == 1) assign comb_tmp = dividend_tmp_mux[0];
else assign comb_tmp = {remd_tmp_mux[in0_WIDTH-2:0], dividend_tmp_mux[in0_WIDTH-1]};
assign cal_tmp = {1'b0, comb_tmp} - {1'b0, divisor0};
always @(posedge clk)
begin
 if (ce) begin
 if (in0_WIDTH == 1) dividend_tmp <= ~cal_tmp[cal_WIDTH];
 else dividend_tmp <= {dividend_tmp_mux[in0_WIDTH-2:0], ~cal_tmp[cal_WIDTH]};
 remd_tmp <= cal_tmp[cal_WIDTH]? comb_tmp : cal_tmp[in0_WIDTH-1:0];
 end
end
endmodule
module entry_point_sdiv_32s_32s_32_36_seq_1
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
 input start,
 output reg done,
 input [din0_WIDTH-1:0] din0,
 input [din1_WIDTH-1:0] din1,
 output [dout_WIDTH-1:0] dout
);
reg start0 = 'b0;
wire done0;
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
entry_point_sdiv_32s_32s_32_36_seq_1_divseq #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_sdiv_32s_32s_32_36_seq_1_divseq_u (
 .clk ( clk ),
 .reset ( reset ),
 .ce ( ce ),
 .start ( start0 ),
 .done ( done0 ),
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
 start0 <= start;
 end
end
always @(posedge clk)
begin
 done <= done0;
end
always @(posedge clk)
begin
 if (done0) begin
 if (sign_o[1])
 quot <= ~quot_u + 1'b1;
 else
 quot <= quot_u;
 end
end
always @(posedge clk)
begin
 if (done0) begin
 if (sign_o[0])
 remd <= ~remd_u + 1'b1;
 else
 remd <= remd_u;
 end
end
assign dout = quot;
endmodule
