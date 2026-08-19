module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 num1,
 num2,
 ch,
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
 ap_return
);
parameter ap_ST_fsm_state1 = 45'd1;
parameter ap_ST_fsm_state2 = 45'd2;
parameter ap_ST_fsm_state3 = 45'd4;
parameter ap_ST_fsm_state4 = 45'd8;
parameter ap_ST_fsm_state5 = 45'd16;
parameter ap_ST_fsm_state6 = 45'd32;
parameter ap_ST_fsm_state7 = 45'd64;
parameter ap_ST_fsm_state8 = 45'd128;
parameter ap_ST_fsm_state9 = 45'd256;
parameter ap_ST_fsm_state10 = 45'd512;
parameter ap_ST_fsm_state11 = 45'd1024;
parameter ap_ST_fsm_state12 = 45'd2048;
parameter ap_ST_fsm_state13 = 45'd4096;
parameter ap_ST_fsm_state14 = 45'd8192;
parameter ap_ST_fsm_state15 = 45'd16384;
parameter ap_ST_fsm_state16 = 45'd32768;
parameter ap_ST_fsm_state17 = 45'd65536;
parameter ap_ST_fsm_state18 = 45'd131072;
parameter ap_ST_fsm_state19 = 45'd262144;
parameter ap_ST_fsm_state20 = 45'd524288;
parameter ap_ST_fsm_state21 = 45'd1048576;
parameter ap_ST_fsm_state22 = 45'd2097152;
parameter ap_ST_fsm_state23 = 45'd4194304;
parameter ap_ST_fsm_state24 = 45'd8388608;
parameter ap_ST_fsm_state25 = 45'd16777216;
parameter ap_ST_fsm_state26 = 45'd33554432;
parameter ap_ST_fsm_state27 = 45'd67108864;
parameter ap_ST_fsm_state28 = 45'd134217728;
parameter ap_ST_fsm_state29 = 45'd268435456;
parameter ap_ST_fsm_state30 = 45'd536870912;
parameter ap_ST_fsm_state31 = 45'd1073741824;
parameter ap_ST_fsm_state32 = 45'd2147483648;
parameter ap_ST_fsm_state33 = 45'd4294967296;
parameter ap_ST_fsm_state34 = 45'd8589934592;
parameter ap_ST_fsm_state35 = 45'd17179869184;
parameter ap_ST_fsm_state36 = 45'd34359738368;
parameter ap_ST_fsm_state37 = 45'd68719476736;
parameter ap_ST_fsm_state38 = 45'd137438953472;
parameter ap_ST_fsm_state39 = 45'd274877906944;
parameter ap_ST_fsm_state40 = 45'd549755813888;
parameter ap_ST_fsm_state41 = 45'd1099511627776;
parameter ap_ST_fsm_state42 = 45'd2199023255552;
parameter ap_ST_fsm_state43 = 45'd4398046511104;
parameter ap_ST_fsm_state44 = 45'd8796093022208;
parameter ap_ST_fsm_state45 = 45'd17592186044416;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] num1;
input [31:0] num2;
input [7:0] ch;
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
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
reg temptemp5_ap_vld;
(* fsm_encoding = "none" *) reg [44:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [7:0] ch_read_read_fu_80_p2;
wire [0:0] grp_fu_145_p2;
reg [0:0] icmp_ln42_reg_764;
reg [0:0] icmp_ln31_reg_768;
wire [31:0] mul_ln24_fu_158_p2;
wire [31:0] sub_ln17_fu_165_p2;
wire [31:0] add_ln10_fu_172_p2;
wire [31:0] grp_fu_151_p2;
wire ap_CS_fsm_state36;
wire [31:0] grp_fu_137_p1;
reg [31:0] conv_reg_792;
wire ap_CS_fsm_state38;
wire [31:0] grp_fu_141_p1;
reg [31:0] conv1_reg_797;
wire ap_CS_fsm_state37;
wire ap_CS_fsm_state44;
wire ap_CS_fsm_state45;
wire ap_CS_fsm_state39;
reg signed [31:0] grp_fu_137_p0;
wire signed [31:0] grp_fu_145_p0;
wire signed [31:0] sub_ln17_fu_165_p0;
wire signed [31:0] sub_ln17_fu_165_p1;
wire signed [31:0] add_ln10_fu_172_p0;
wire signed [31:0] add_ln10_fu_172_p1;
wire [31:0] data_V_3_fu_179_p1;
wire [22:0] p_Result_7_fu_201_p1;
wire [24:0] mantissa_3_fu_205_p4;
wire [7:0] xs_exp_V_3_fu_191_p4;
wire [8:0] zext_ln346_3_fu_219_p1;
wire [8:0] add_ln346_3_fu_223_p2;
wire [7:0] sub_ln1512_3_fu_237_p2;
wire [0:0] isNeg_3_fu_229_p3;
wire signed [8:0] sext_ln1512_3_fu_243_p1;
wire [8:0] ush_3_fu_247_p3;
wire signed [31:0] sext_ln1488_3_fu_255_p1;
wire [78:0] zext_ln15_3_fu_215_p1;
wire [78:0] zext_ln1488_3_fu_259_p1;
wire [78:0] r_V_6_fu_263_p2;
wire [0:0] tmp_16_fu_275_p3;
wire [78:0] r_V_7_fu_269_p2;
wire [31:0] zext_ln818_3_fu_283_p1;
wire [31:0] tmp_s_fu_287_p4;
wire [31:0] val_3_fu_297_p3;
wire [0:0] p_Result_6_fu_183_p3;
wire [31:0] result_V_10_fu_305_p2;
wire [31:0] grp_fu_133_p2;
wire [31:0] data_V_2_fu_325_p1;
wire [22:0] p_Result_5_fu_347_p1;
wire [24:0] mantissa_2_fu_351_p4;
wire [7:0] xs_exp_V_2_fu_337_p4;
wire [8:0] zext_ln346_2_fu_365_p1;
wire [8:0] add_ln346_2_fu_369_p2;
wire [7:0] sub_ln1512_2_fu_383_p2;
wire [0:0] isNeg_2_fu_375_p3;
wire signed [8:0] sext_ln1512_2_fu_389_p1;
wire [8:0] ush_2_fu_393_p3;
wire signed [31:0] sext_ln1488_2_fu_401_p1;
wire [78:0] zext_ln15_2_fu_361_p1;
wire [78:0] zext_ln1488_2_fu_405_p1;
wire [78:0] r_V_4_fu_409_p2;
wire [0:0] tmp_12_fu_421_p3;
wire [78:0] r_V_5_fu_415_p2;
wire [31:0] zext_ln818_2_fu_429_p1;
wire [31:0] tmp_7_fu_433_p4;
wire [31:0] val_2_fu_443_p3;
wire [0:0] p_Result_4_fu_329_p3;
wire [31:0] result_V_9_fu_451_p2;
wire [31:0] data_V_1_fu_466_p1;
wire [22:0] p_Result_3_fu_488_p1;
wire [24:0] mantissa_1_fu_492_p4;
wire [7:0] xs_exp_V_1_fu_478_p4;
wire [8:0] zext_ln346_1_fu_506_p1;
wire [8:0] add_ln346_1_fu_510_p2;
wire [7:0] sub_ln1512_1_fu_524_p2;
wire [0:0] isNeg_1_fu_516_p3;
wire signed [8:0] sext_ln1512_1_fu_530_p1;
wire [8:0] ush_1_fu_534_p3;
wire signed [31:0] sext_ln1488_1_fu_542_p1;
wire [78:0] zext_ln15_1_fu_502_p1;
wire [78:0] zext_ln1488_1_fu_546_p1;
wire [78:0] r_V_2_fu_550_p2;
wire [0:0] tmp_6_fu_562_p3;
wire [78:0] r_V_3_fu_556_p2;
wire [31:0] zext_ln818_1_fu_570_p1;
wire [31:0] tmp_4_fu_574_p4;
wire [31:0] val_1_fu_584_p3;
wire [0:0] p_Result_2_fu_470_p3;
wire [31:0] result_V_5_fu_592_p2;
wire [31:0] data_V_fu_607_p1;
wire [22:0] p_Result_1_fu_629_p1;
wire [24:0] mantissa_fu_633_p4;
wire [7:0] xs_exp_V_fu_619_p4;
wire [8:0] zext_ln346_fu_647_p1;
wire [8:0] add_ln346_fu_651_p2;
wire [7:0] sub_ln1512_fu_665_p2;
wire [0:0] isNeg_fu_657_p3;
wire signed [8:0] sext_ln1512_fu_671_p1;
wire [8:0] ush_fu_675_p3;
wire signed [31:0] sext_ln1488_fu_683_p1;
wire [78:0] zext_ln15_fu_643_p1;
wire [78:0] zext_ln1488_fu_687_p1;
wire [78:0] r_V_fu_691_p2;
wire [0:0] tmp_fu_703_p3;
wire [78:0] r_V_1_fu_697_p2;
wire [31:0] zext_ln818_fu_711_p1;
wire [31:0] tmp_1_fu_715_p4;
wire [31:0] val_fu_725_p3;
wire [0:0] p_Result_s_fu_611_p3;
wire [31:0] result_V_2_fu_733_p2;
reg grp_fu_151_ap_start;
wire grp_fu_151_ap_done;
reg [44:0] ap_NS_fsm;
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
wire ap_ST_fsm_state39_blk;
wire ap_ST_fsm_state40_blk;
wire ap_ST_fsm_state41_blk;
wire ap_ST_fsm_state42_blk;
wire ap_ST_fsm_state43_blk;
wire ap_ST_fsm_state44_blk;
wire ap_ST_fsm_state45_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 45'd1;
end
entry_point_fdiv_32ns_32ns_32_6_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 6 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
fdiv_32ns_32ns_32_6_no_dsp_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(conv_reg_792),
 .din1(conv1_reg_797),
 .ce(1'b1),
 .dout(grp_fu_133_p2)
);
entry_point_sitofp_32s_32_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
sitofp_32s_32_2_no_dsp_1_U2(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_137_p0),
 .ce(1'b1),
 .dout(grp_fu_137_p1)
);
entry_point_sitofp_32s_32_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
sitofp_32s_32_2_no_dsp_1_U3(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(num2),
 .ce(1'b1),
 .dout(grp_fu_141_p1)
);
entry_point_srem_32s_32s_32_36_seq_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
srem_32s_32s_32_36_seq_1_U4(
 .clk(ap_clk),
 .reset(ap_rst),
 .start(grp_fu_151_ap_start),
 .done(grp_fu_151_ap_done),
 .din0(num1),
 .din1(num2),
 .ce(1'b1),
 .dout(grp_fu_151_p2)
);
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U5(
 .din0(num2),
 .din1(num1),
 .dout(mul_ln24_fu_158_p2)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state38)) begin
 conv1_reg_797 <= grp_fu_141_p1;
 conv_reg_792 <= grp_fu_137_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((ch_read_read_fu_80_p2 == 8'd47) & (1'b1 == ap_CS_fsm_state1))) begin
 icmp_ln31_reg_768 <= grp_fu_145_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((ch_read_read_fu_80_p2 == 8'd37) & (1'b1 == ap_CS_fsm_state1))) begin
 icmp_ln42_reg_764 <= grp_fu_145_p2;
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
assign ap_ST_fsm_state38_blk = 1'b0;
assign ap_ST_fsm_state39_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state40_blk = 1'b0;
assign ap_ST_fsm_state41_blk = 1'b0;
assign ap_ST_fsm_state42_blk = 1'b0;
assign ap_ST_fsm_state43_blk = 1'b0;
assign ap_ST_fsm_state44_blk = 1'b0;
assign ap_ST_fsm_state45_blk = 1'b0;
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
 if ((1'b1 == ap_CS_fsm_state36)) begin
 grp_fu_137_p0 = grp_fu_151_p2;
 end else if (((ch_read_read_fu_80_p2 == 8'd43) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_fu_137_p0 = add_ln10_fu_172_p2;
 end else if (((ch_read_read_fu_80_p2 == 8'd45) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_fu_137_p0 = sub_ln17_fu_165_p2;
 end else if (((ch_read_read_fu_80_p2 == 8'd42) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_fu_137_p0 = mul_ln24_fu_158_p2;
 end else if (((grp_fu_145_p2 == 1'd0) & (ch_read_read_fu_80_p2 == 8'd47) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_fu_137_p0 = num1;
 end else begin
 grp_fu_137_p0 = 'bx;
 end
end
always @ (*) begin
 if (((grp_fu_145_p2 == 1'd0) & (ch_read_read_fu_80_p2 == 8'd37) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_fu_151_ap_start = 1'b1;
 end else begin
 grp_fu_151_ap_start = 1'b0;
 end
end
always @ (*) begin
 if (((ch_read_read_fu_80_p2 == 8'd43) & (1'b1 == ap_CS_fsm_state45))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ch_read_read_fu_80_p2 == 8'd45) & (1'b1 == ap_CS_fsm_state45))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ch_read_read_fu_80_p2 == 8'd42) & (1'b1 == ap_CS_fsm_state45))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln31_reg_768 == 1'd0) & (1'b1 == ap_CS_fsm_state44))) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln42_reg_764 == 1'd0) & (ch_read_read_fu_80_p2 == 8'd37) & (1'b1 == ap_CS_fsm_state37))) begin
 temptemp5_ap_vld = 1'b1;
 end else begin
 temptemp5_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((grp_fu_145_p2 == 1'd1) & (ch_read_read_fu_80_p2 == 8'd47) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state44;
 end else if (((grp_fu_145_p2 == 1'd0) & (ch_read_read_fu_80_p2 == 8'd47) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state38;
 end else if (((grp_fu_145_p2 == 1'd0) & (ch_read_read_fu_80_p2 == 8'd37) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((ch_read_read_fu_80_p2 == 8'd43) | ((ch_read_read_fu_80_p2 == 8'd42) | (ch_read_read_fu_80_p2 == 8'd45))))) begin
 ap_NS_fsm = ap_ST_fsm_state45;
 end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((~(ch_read_read_fu_80_p2 == 8'd42) & ~(ch_read_read_fu_80_p2 == 8'd47) & ~(ch_read_read_fu_80_p2 == 8'd37) & ~(ch_read_read_fu_80_p2 == 8'd43) & ~(ch_read_read_fu_80_p2 == 8'd45)) | (~(ch_read_read_fu_80_p2 == 8'd42) & ~(ch_read_read_fu_80_p2 == 8'd47) & ~(ch_read_read_fu_80_p2 == 8'd43) & ~(ch_read_read_fu_80_p2 == 8'd45) & (grp_fu_145_p2 == 1'd1))))) begin
 ap_NS_fsm = ap_ST_fsm_state37;
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
 ap_ST_fsm_state38 : begin
 ap_NS_fsm = ap_ST_fsm_state39;
 end
 ap_ST_fsm_state39 : begin
 ap_NS_fsm = ap_ST_fsm_state40;
 end
 ap_ST_fsm_state40 : begin
 ap_NS_fsm = ap_ST_fsm_state41;
 end
 ap_ST_fsm_state41 : begin
 ap_NS_fsm = ap_ST_fsm_state42;
 end
 ap_ST_fsm_state42 : begin
 ap_NS_fsm = ap_ST_fsm_state43;
 end
 ap_ST_fsm_state43 : begin
 ap_NS_fsm = ap_ST_fsm_state44;
 end
 ap_ST_fsm_state44 : begin
 ap_NS_fsm = ap_ST_fsm_state37;
 end
 ap_ST_fsm_state45 : begin
 ap_NS_fsm = ap_ST_fsm_state37;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln10_fu_172_p0 = num2;
assign add_ln10_fu_172_p1 = num1;
assign add_ln10_fu_172_p2 = ($signed(add_ln10_fu_172_p0) + $signed(add_ln10_fu_172_p1));
assign add_ln346_1_fu_510_p2 = ($signed(zext_ln346_1_fu_506_p1) + $signed(9'd385));
assign add_ln346_2_fu_369_p2 = ($signed(zext_ln346_2_fu_365_p1) + $signed(9'd385));
assign add_ln346_3_fu_223_p2 = ($signed(zext_ln346_3_fu_219_p1) + $signed(9'd385));
assign add_ln346_fu_651_p2 = ($signed(zext_ln346_fu_647_p1) + $signed(9'd385));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_state37 = ap_CS_fsm[32'd36];
assign ap_CS_fsm_state38 = ap_CS_fsm[32'd37];
assign ap_CS_fsm_state39 = ap_CS_fsm[32'd38];
assign ap_CS_fsm_state44 = ap_CS_fsm[32'd43];
assign ap_CS_fsm_state45 = ap_CS_fsm[32'd44];
assign ap_return = 32'd0;
assign ch_read_read_fu_80_p2 = ch;
assign data_V_1_fu_466_p1 = grp_fu_137_p1;
assign data_V_2_fu_325_p1 = grp_fu_137_p1;
assign data_V_3_fu_179_p1 = grp_fu_137_p1;
assign data_V_fu_607_p1 = grp_fu_137_p1;
assign grp_fu_145_p0 = num2;
assign grp_fu_145_p2 = ((grp_fu_145_p0 == 32'd0) ? 1'b1 : 1'b0);
assign isNeg_1_fu_516_p3 = add_ln346_1_fu_510_p2[32'd8];
assign isNeg_2_fu_375_p3 = add_ln346_2_fu_369_p2[32'd8];
assign isNeg_3_fu_229_p3 = add_ln346_3_fu_223_p2[32'd8];
assign isNeg_fu_657_p3 = add_ln346_fu_651_p2[32'd8];
assign mantissa_1_fu_492_p4 = {{{{1'd1}, {p_Result_3_fu_488_p1}}}, {1'd0}};
assign mantissa_2_fu_351_p4 = {{{{1'd1}, {p_Result_5_fu_347_p1}}}, {1'd0}};
assign mantissa_3_fu_205_p4 = {{{{1'd1}, {p_Result_7_fu_201_p1}}}, {1'd0}};
assign mantissa_fu_633_p4 = {{{{1'd1}, {p_Result_1_fu_629_p1}}}, {1'd0}};
assign p_Result_1_fu_629_p1 = data_V_fu_607_p1[22:0];
assign p_Result_2_fu_470_p3 = data_V_1_fu_466_p1[32'd31];
assign p_Result_3_fu_488_p1 = data_V_1_fu_466_p1[22:0];
assign p_Result_4_fu_329_p3 = data_V_2_fu_325_p1[32'd31];
assign p_Result_5_fu_347_p1 = data_V_2_fu_325_p1[22:0];
assign p_Result_6_fu_183_p3 = data_V_3_fu_179_p1[32'd31];
assign p_Result_7_fu_201_p1 = data_V_3_fu_179_p1[22:0];
assign p_Result_s_fu_611_p3 = data_V_fu_607_p1[32'd31];
assign r_V_1_fu_697_p2 = zext_ln15_fu_643_p1 << zext_ln1488_fu_687_p1;
assign r_V_2_fu_550_p2 = zext_ln15_1_fu_502_p1 >> zext_ln1488_1_fu_546_p1;
assign r_V_3_fu_556_p2 = zext_ln15_1_fu_502_p1 << zext_ln1488_1_fu_546_p1;
assign r_V_4_fu_409_p2 = zext_ln15_2_fu_361_p1 >> zext_ln1488_2_fu_405_p1;
assign r_V_5_fu_415_p2 = zext_ln15_2_fu_361_p1 << zext_ln1488_2_fu_405_p1;
assign r_V_6_fu_263_p2 = zext_ln15_3_fu_215_p1 >> zext_ln1488_3_fu_259_p1;
assign r_V_7_fu_269_p2 = zext_ln15_3_fu_215_p1 << zext_ln1488_3_fu_259_p1;
assign r_V_fu_691_p2 = zext_ln15_fu_643_p1 >> zext_ln1488_fu_687_p1;
assign result_V_10_fu_305_p2 = (32'd0 - val_3_fu_297_p3);
assign result_V_2_fu_733_p2 = (32'd0 - val_fu_725_p3);
assign result_V_5_fu_592_p2 = (32'd0 - val_1_fu_584_p3);
assign result_V_9_fu_451_p2 = (32'd0 - val_2_fu_443_p3);
assign sext_ln1488_1_fu_542_p1 = $signed(ush_1_fu_534_p3);
assign sext_ln1488_2_fu_401_p1 = $signed(ush_2_fu_393_p3);
assign sext_ln1488_3_fu_255_p1 = $signed(ush_3_fu_247_p3);
assign sext_ln1488_fu_683_p1 = $signed(ush_fu_675_p3);
assign sext_ln1512_1_fu_530_p1 = $signed(sub_ln1512_1_fu_524_p2);
assign sext_ln1512_2_fu_389_p1 = $signed(sub_ln1512_2_fu_383_p2);
assign sext_ln1512_3_fu_243_p1 = $signed(sub_ln1512_3_fu_237_p2);
assign sext_ln1512_fu_671_p1 = $signed(sub_ln1512_fu_665_p2);
assign sub_ln1512_1_fu_524_p2 = (8'd127 - xs_exp_V_1_fu_478_p4);
assign sub_ln1512_2_fu_383_p2 = (8'd127 - xs_exp_V_2_fu_337_p4);
assign sub_ln1512_3_fu_237_p2 = (8'd127 - xs_exp_V_3_fu_191_p4);
assign sub_ln1512_fu_665_p2 = (8'd127 - xs_exp_V_fu_619_p4);
assign sub_ln17_fu_165_p0 = num1;
assign sub_ln17_fu_165_p1 = num2;
assign sub_ln17_fu_165_p2 = ($signed(sub_ln17_fu_165_p0) - $signed(sub_ln17_fu_165_p1));
assign temptemp1 = ((p_Result_s_fu_611_p3[0:0] == 1'b1) ? result_V_2_fu_733_p2 : val_fu_725_p3);
assign temptemp2 = ((p_Result_2_fu_470_p3[0:0] == 1'b1) ? result_V_5_fu_592_p2 : val_1_fu_584_p3);
assign temptemp3 = ((p_Result_4_fu_329_p3[0:0] == 1'b1) ? result_V_9_fu_451_p2 : val_2_fu_443_p3);
assign temptemp4 = grp_fu_133_p2;
assign temptemp5 = ((p_Result_6_fu_183_p3[0:0] == 1'b1) ? result_V_10_fu_305_p2 : val_3_fu_297_p3);
assign tmp_12_fu_421_p3 = r_V_4_fu_409_p2[32'd24];
assign tmp_16_fu_275_p3 = r_V_6_fu_263_p2[32'd24];
assign tmp_1_fu_715_p4 = {{r_V_1_fu_697_p2[55:24]}};
assign tmp_4_fu_574_p4 = {{r_V_3_fu_556_p2[55:24]}};
assign tmp_6_fu_562_p3 = r_V_2_fu_550_p2[32'd24];
assign tmp_7_fu_433_p4 = {{r_V_5_fu_415_p2[55:24]}};
assign tmp_fu_703_p3 = r_V_fu_691_p2[32'd24];
assign tmp_s_fu_287_p4 = {{r_V_7_fu_269_p2[55:24]}};
assign ush_1_fu_534_p3 = ((isNeg_1_fu_516_p3[0:0] == 1'b1) ? sext_ln1512_1_fu_530_p1 : add_ln346_1_fu_510_p2);
assign ush_2_fu_393_p3 = ((isNeg_2_fu_375_p3[0:0] == 1'b1) ? sext_ln1512_2_fu_389_p1 : add_ln346_2_fu_369_p2);
assign ush_3_fu_247_p3 = ((isNeg_3_fu_229_p3[0:0] == 1'b1) ? sext_ln1512_3_fu_243_p1 : add_ln346_3_fu_223_p2);
assign ush_fu_675_p3 = ((isNeg_fu_657_p3[0:0] == 1'b1) ? sext_ln1512_fu_671_p1 : add_ln346_fu_651_p2);
assign val_1_fu_584_p3 = ((isNeg_1_fu_516_p3[0:0] == 1'b1) ? zext_ln818_1_fu_570_p1 : tmp_4_fu_574_p4);
assign val_2_fu_443_p3 = ((isNeg_2_fu_375_p3[0:0] == 1'b1) ? zext_ln818_2_fu_429_p1 : tmp_7_fu_433_p4);
assign val_3_fu_297_p3 = ((isNeg_3_fu_229_p3[0:0] == 1'b1) ? zext_ln818_3_fu_283_p1 : tmp_s_fu_287_p4);
assign val_fu_725_p3 = ((isNeg_fu_657_p3[0:0] == 1'b1) ? zext_ln818_fu_711_p1 : tmp_1_fu_715_p4);
assign xs_exp_V_1_fu_478_p4 = {{data_V_1_fu_466_p1[30:23]}};
assign xs_exp_V_2_fu_337_p4 = {{data_V_2_fu_325_p1[30:23]}};
assign xs_exp_V_3_fu_191_p4 = {{data_V_3_fu_179_p1[30:23]}};
assign xs_exp_V_fu_619_p4 = {{data_V_fu_607_p1[30:23]}};
assign zext_ln1488_1_fu_546_p1 = $unsigned(sext_ln1488_1_fu_542_p1);
assign zext_ln1488_2_fu_405_p1 = $unsigned(sext_ln1488_2_fu_401_p1);
assign zext_ln1488_3_fu_259_p1 = $unsigned(sext_ln1488_3_fu_255_p1);
assign zext_ln1488_fu_687_p1 = $unsigned(sext_ln1488_fu_683_p1);
assign zext_ln15_1_fu_502_p1 = mantissa_1_fu_492_p4;
assign zext_ln15_2_fu_361_p1 = mantissa_2_fu_351_p4;
assign zext_ln15_3_fu_215_p1 = mantissa_3_fu_205_p4;
assign zext_ln15_fu_643_p1 = mantissa_fu_633_p4;
assign zext_ln346_1_fu_506_p1 = xs_exp_V_1_fu_478_p4;
assign zext_ln346_2_fu_365_p1 = xs_exp_V_2_fu_337_p4;
assign zext_ln346_3_fu_219_p1 = xs_exp_V_3_fu_191_p4;
assign zext_ln346_fu_647_p1 = xs_exp_V_fu_619_p4;
assign zext_ln818_1_fu_570_p1 = tmp_6_fu_562_p3;
assign zext_ln818_2_fu_429_p1 = tmp_12_fu_421_p3;
assign zext_ln818_3_fu_283_p1 = tmp_16_fu_275_p3;
assign zext_ln818_fu_711_p1 = tmp_fu_703_p3;
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
module entry_point_mul_32s_32s_32_1_1(din0, din1, dout);
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
module entry_point_sitofp_32s_32_2_no_dsp_1
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
module entry_point_srem_32s_32s_32_36_seq_1_divseq
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
module entry_point_srem_32s_32s_32_36_seq_1 
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
entry_point_srem_32s_32s_32_36_seq_1_divseq #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_srem_32s_32s_32_36_seq_1_divseq_u (
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
assign dout = remd;
endmodule
