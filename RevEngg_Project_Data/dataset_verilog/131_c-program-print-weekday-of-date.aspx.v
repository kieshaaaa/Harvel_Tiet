module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 day,
 month,
 year,
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
parameter ap_ST_fsm_state1 = 102'd1;
parameter ap_ST_fsm_state2 = 102'd2;
parameter ap_ST_fsm_state3 = 102'd4;
parameter ap_ST_fsm_state4 = 102'd8;
parameter ap_ST_fsm_state5 = 102'd16;
parameter ap_ST_fsm_state6 = 102'd32;
parameter ap_ST_fsm_state7 = 102'd64;
parameter ap_ST_fsm_state8 = 102'd128;
parameter ap_ST_fsm_state9 = 102'd256;
parameter ap_ST_fsm_state10 = 102'd512;
parameter ap_ST_fsm_state11 = 102'd1024;
parameter ap_ST_fsm_state12 = 102'd2048;
parameter ap_ST_fsm_state13 = 102'd4096;
parameter ap_ST_fsm_state14 = 102'd8192;
parameter ap_ST_fsm_state15 = 102'd16384;
parameter ap_ST_fsm_state16 = 102'd32768;
parameter ap_ST_fsm_state17 = 102'd65536;
parameter ap_ST_fsm_state18 = 102'd131072;
parameter ap_ST_fsm_state19 = 102'd262144;
parameter ap_ST_fsm_state20 = 102'd524288;
parameter ap_ST_fsm_state21 = 102'd1048576;
parameter ap_ST_fsm_state22 = 102'd2097152;
parameter ap_ST_fsm_state23 = 102'd4194304;
parameter ap_ST_fsm_state24 = 102'd8388608;
parameter ap_ST_fsm_state25 = 102'd16777216;
parameter ap_ST_fsm_state26 = 102'd33554432;
parameter ap_ST_fsm_state27 = 102'd67108864;
parameter ap_ST_fsm_state28 = 102'd134217728;
parameter ap_ST_fsm_state29 = 102'd268435456;
parameter ap_ST_fsm_state30 = 102'd536870912;
parameter ap_ST_fsm_state31 = 102'd1073741824;
parameter ap_ST_fsm_state32 = 102'd2147483648;
parameter ap_ST_fsm_state33 = 102'd4294967296;
parameter ap_ST_fsm_state34 = 102'd8589934592;
parameter ap_ST_fsm_state35 = 102'd17179869184;
parameter ap_ST_fsm_state36 = 102'd34359738368;
parameter ap_ST_fsm_state37 = 102'd68719476736;
parameter ap_ST_fsm_state38 = 102'd137438953472;
parameter ap_ST_fsm_state39 = 102'd274877906944;
parameter ap_ST_fsm_state40 = 102'd549755813888;
parameter ap_ST_fsm_state41 = 102'd1099511627776;
parameter ap_ST_fsm_state42 = 102'd2199023255552;
parameter ap_ST_fsm_state43 = 102'd4398046511104;
parameter ap_ST_fsm_state44 = 102'd8796093022208;
parameter ap_ST_fsm_state45 = 102'd17592186044416;
parameter ap_ST_fsm_state46 = 102'd35184372088832;
parameter ap_ST_fsm_state47 = 102'd70368744177664;
parameter ap_ST_fsm_state48 = 102'd140737488355328;
parameter ap_ST_fsm_state49 = 102'd281474976710656;
parameter ap_ST_fsm_state50 = 102'd562949953421312;
parameter ap_ST_fsm_state51 = 102'd1125899906842624;
parameter ap_ST_fsm_state52 = 102'd2251799813685248;
parameter ap_ST_fsm_state53 = 102'd4503599627370496;
parameter ap_ST_fsm_state54 = 102'd9007199254740992;
parameter ap_ST_fsm_state55 = 102'd18014398509481984;
parameter ap_ST_fsm_state56 = 102'd36028797018963968;
parameter ap_ST_fsm_state57 = 102'd72057594037927936;
parameter ap_ST_fsm_state58 = 102'd144115188075855872;
parameter ap_ST_fsm_state59 = 102'd288230376151711744;
parameter ap_ST_fsm_state60 = 102'd576460752303423488;
parameter ap_ST_fsm_state61 = 102'd1152921504606846976;
parameter ap_ST_fsm_state62 = 102'd2305843009213693952;
parameter ap_ST_fsm_state63 = 102'd4611686018427387904;
parameter ap_ST_fsm_state64 = 102'd9223372036854775808;
parameter ap_ST_fsm_state65 = 102'd18446744073709551616;
parameter ap_ST_fsm_state66 = 102'd36893488147419103232;
parameter ap_ST_fsm_state67 = 102'd73786976294838206464;
parameter ap_ST_fsm_state68 = 102'd147573952589676412928;
parameter ap_ST_fsm_state69 = 102'd295147905179352825856;
parameter ap_ST_fsm_state70 = 102'd590295810358705651712;
parameter ap_ST_fsm_state71 = 102'd1180591620717411303424;
parameter ap_ST_fsm_state72 = 102'd2361183241434822606848;
parameter ap_ST_fsm_state73 = 102'd4722366482869645213696;
parameter ap_ST_fsm_state74 = 102'd9444732965739290427392;
parameter ap_ST_fsm_state75 = 102'd18889465931478580854784;
parameter ap_ST_fsm_state76 = 102'd37778931862957161709568;
parameter ap_ST_fsm_state77 = 102'd75557863725914323419136;
parameter ap_ST_fsm_state78 = 102'd151115727451828646838272;
parameter ap_ST_fsm_state79 = 102'd302231454903657293676544;
parameter ap_ST_fsm_state80 = 102'd604462909807314587353088;
parameter ap_ST_fsm_state81 = 102'd1208925819614629174706176;
parameter ap_ST_fsm_state82 = 102'd2417851639229258349412352;
parameter ap_ST_fsm_state83 = 102'd4835703278458516698824704;
parameter ap_ST_fsm_state84 = 102'd9671406556917033397649408;
parameter ap_ST_fsm_state85 = 102'd19342813113834066795298816;
parameter ap_ST_fsm_state86 = 102'd38685626227668133590597632;
parameter ap_ST_fsm_state87 = 102'd77371252455336267181195264;
parameter ap_ST_fsm_state88 = 102'd154742504910672534362390528;
parameter ap_ST_fsm_state89 = 102'd309485009821345068724781056;
parameter ap_ST_fsm_state90 = 102'd618970019642690137449562112;
parameter ap_ST_fsm_state91 = 102'd1237940039285380274899124224;
parameter ap_ST_fsm_state92 = 102'd2475880078570760549798248448;
parameter ap_ST_fsm_state93 = 102'd4951760157141521099596496896;
parameter ap_ST_fsm_state94 = 102'd9903520314283042199192993792;
parameter ap_ST_fsm_state95 = 102'd19807040628566084398385987584;
parameter ap_ST_fsm_state96 = 102'd39614081257132168796771975168;
parameter ap_ST_fsm_state97 = 102'd79228162514264337593543950336;
parameter ap_ST_fsm_state98 = 102'd158456325028528675187087900672;
parameter ap_ST_fsm_state99 = 102'd316912650057057350374175801344;
parameter ap_ST_fsm_state100 = 102'd633825300114114700748351602688;
parameter ap_ST_fsm_state101 = 102'd1267650600228229401496703205376;
parameter ap_ST_fsm_state102 = 102'd2535301200456458802993406410752;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] day;
input [31:0] month;
input [31:0] year;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [7:0] temptemp4;
output temptemp4_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
(* fsm_encoding = "none" *) reg [101:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [21:0] trunc_ln48_fu_192_p1;
reg [21:0] trunc_ln48_reg_654;
wire [31:0] month_read_read_fu_152_p2;
wire [1:0] trunc_ln3_fu_196_p1;
reg [1:0] trunc_ln3_reg_672;
wire [11:0] trunc_ln3_1_fu_200_p1;
reg [11:0] trunc_ln3_1_reg_677;
wire [0:0] and_ln5_fu_216_p2;
reg [0:0] and_ln5_reg_682;
wire [0:0] and_ln6_fu_234_p2;
reg [0:0] and_ln6_reg_686;
wire [0:0] and_ln7_fu_262_p2;
reg [0:0] and_ln7_reg_690;
wire [0:0] icmp_ln8_fu_268_p2;
reg [0:0] icmp_ln8_reg_694;
wire [0:0] and_ln12_fu_286_p2;
reg [0:0] and_ln12_reg_698;
wire [0:0] and_ln14_fu_298_p2;
reg [0:0] and_ln14_reg_702;
wire [0:0] icmp_ln14_1_fu_314_p2;
reg [0:0] icmp_ln14_1_reg_706;
wire ap_CS_fsm_state36;
wire [0:0] icmp_ln14_2_fu_320_p2;
reg [0:0] icmp_ln14_2_reg_710;
wire [0:0] and_ln14_1_fu_340_p2;
reg [0:0] and_ln14_1_reg_715;
wire ap_CS_fsm_state71;
wire [0:0] icmp_ln34_fu_354_p2;
reg [0:0] icmp_ln34_reg_719;
wire ap_CS_fsm_state74;
reg [0:0] tmp_1_reg_734;
reg [9:0] trunc_ln4_reg_745;
wire ap_CS_fsm_state77;
wire ap_CS_fsm_state102;
wire [0:0] icmp_ln5_fu_204_p2;
wire [0:0] icmp_ln5_1_fu_210_p2;
wire [0:0] icmp_ln6_fu_222_p2;
wire [0:0] icmp_ln6_1_fu_228_p2;
wire [26:0] tmp_fu_246_p4;
wire [0:0] icmp_ln7_fu_240_p2;
wire [0:0] icmp_ln7_1_fu_256_p2;
wire [0:0] icmp_ln12_fu_274_p2;
wire [0:0] icmp_ln12_1_fu_280_p2;
wire [0:0] icmp_ln14_fu_292_p2;
wire [9:0] grp_fu_304_p1;
wire [8:0] grp_fu_304_p2;
wire [8:0] trunc_ln14_fu_310_p1;
wire [7:0] grp_fu_325_p1;
wire [6:0] grp_fu_325_p2;
wire [6:0] trunc_ln14_1_fu_330_p1;
wire [0:0] icmp_ln14_3_fu_334_p2;
wire [3:0] trunc_ln34_fu_345_p1;
wire [3:0] sub_ln34_fu_348_p2;
wire [5:0] select_ln34_1_fu_360_p3;
wire [5:0] select_ln34_2_fu_368_p3;
wire [5:0] sub_ln34_1_fu_376_p2;
wire [5:0] zext_ln34_fu_382_p1;
wire signed [5:0] add_ln34_fu_386_p2;
wire signed [12:0] grp_fu_614_p3;
wire [11:0] add_ln35_fu_413_p2;
wire [11:0] select_ln34_fu_396_p3;
wire signed [11:0] sub_ln36_fu_418_p2;
wire signed [12:0] sext_ln35_fu_424_p1;
wire signed [27:0] grp_fu_624_p2;
wire [26:0] trunc_ln34_1_fu_446_p1;
wire [26:0] sub_ln34_2_fu_449_p2;
wire [10:0] tmp_2_fu_455_p4;
wire [10:0] tmp_3_fu_465_p4;
wire [10:0] select_ln34_3_fu_474_p3;
wire [10:0] sub_ln34_3_fu_481_p2;
wire [26:0] p_cast_fu_497_p1;
wire signed [26:0] grp_fu_641_p2;
wire [6:0] p_cast_fu_497_p4;
wire [7:0] p_cast_cast_fu_506_p1;
wire [7:0] empty_fu_510_p2;
wire [26:0] trunc_ln5_fu_520_p1;
wire [4:0] trunc_ln5_fu_520_p4;
wire signed [21:0] grp_fu_632_p3;
wire [10:0] select_ln34_4_fu_487_p3;
wire signed [10:0] sext_ln38_fu_516_p1;
wire [10:0] add_ln39_3_fu_537_p2;
wire signed [10:0] sext_ln36_fu_494_p1;
wire [10:0] zext_ln39_fu_529_p1;
wire [10:0] add_ln39_4_fu_547_p2;
wire [11:0] zext_ln39_1_fu_553_p1;
wire signed [11:0] sext_ln39_fu_543_p1;
wire [11:0] add_ln39_5_fu_557_p2;
wire [21:0] zext_ln39_2_fu_563_p1;
(* use_dsp48 = "no" *) wire [21:0] add_ln39_2_fu_533_p2;
wire [21:0] grp_fu_573_p0;
wire [3:0] grp_fu_573_p1;
wire [2:0] grp_fu_573_p2;
wire [2:0] trunc_ln33_fu_579_p1;
wire [6:0] zext_ln_fu_583_p3;
wire [4:0] zext_ln57_1_fu_595_p3;
wire [7:0] zext_ln57_fu_591_p1;
wire [7:0] zext_ln57_2_fu_603_p1;
wire [7:0] grp_fu_614_p1;
wire signed [9:0] grp_fu_614_p2;
wire ap_CS_fsm_state73;
wire [13:0] grp_fu_624_p1;
wire [12:0] grp_fu_632_p0;
wire [8:0] grp_fu_632_p1;
wire signed [15:0] grp_fu_632_p2;
wire ap_CS_fsm_state76;
wire [12:0] grp_fu_641_p0;
wire [13:0] grp_fu_641_p1;
reg grp_fu_304_ap_start;
wire grp_fu_304_ap_done;
reg grp_fu_325_ap_start;
wire grp_fu_325_ap_done;
reg grp_fu_573_ap_start;
wire grp_fu_573_ap_done;
reg [101:0] ap_NS_fsm;
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
wire ap_ST_fsm_state46_blk;
wire ap_ST_fsm_state47_blk;
wire ap_ST_fsm_state48_blk;
wire ap_ST_fsm_state49_blk;
wire ap_ST_fsm_state50_blk;
wire ap_ST_fsm_state51_blk;
wire ap_ST_fsm_state52_blk;
wire ap_ST_fsm_state53_blk;
wire ap_ST_fsm_state54_blk;
wire ap_ST_fsm_state55_blk;
wire ap_ST_fsm_state56_blk;
wire ap_ST_fsm_state57_blk;
wire ap_ST_fsm_state58_blk;
wire ap_ST_fsm_state59_blk;
wire ap_ST_fsm_state60_blk;
wire ap_ST_fsm_state61_blk;
wire ap_ST_fsm_state62_blk;
wire ap_ST_fsm_state63_blk;
wire ap_ST_fsm_state64_blk;
wire ap_ST_fsm_state65_blk;
wire ap_ST_fsm_state66_blk;
wire ap_ST_fsm_state67_blk;
wire ap_ST_fsm_state68_blk;
wire ap_ST_fsm_state69_blk;
wire ap_ST_fsm_state70_blk;
wire ap_ST_fsm_state71_blk;
wire ap_ST_fsm_state72_blk;
wire ap_ST_fsm_state73_blk;
wire ap_ST_fsm_state74_blk;
wire ap_ST_fsm_state75_blk;
wire ap_ST_fsm_state76_blk;
wire ap_ST_fsm_state77_blk;
wire ap_ST_fsm_state78_blk;
wire ap_ST_fsm_state79_blk;
wire ap_ST_fsm_state80_blk;
wire ap_ST_fsm_state81_blk;
wire ap_ST_fsm_state82_blk;
wire ap_ST_fsm_state83_blk;
wire ap_ST_fsm_state84_blk;
wire ap_ST_fsm_state85_blk;
wire ap_ST_fsm_state86_blk;
wire ap_ST_fsm_state87_blk;
wire ap_ST_fsm_state88_blk;
wire ap_ST_fsm_state89_blk;
wire ap_ST_fsm_state90_blk;
wire ap_ST_fsm_state91_blk;
wire ap_ST_fsm_state92_blk;
wire ap_ST_fsm_state93_blk;
wire ap_ST_fsm_state94_blk;
wire ap_ST_fsm_state95_blk;
wire ap_ST_fsm_state96_blk;
wire ap_ST_fsm_state97_blk;
wire ap_ST_fsm_state98_blk;
wire ap_ST_fsm_state99_blk;
wire ap_ST_fsm_state100_blk;
wire ap_ST_fsm_state101_blk;
wire ap_ST_fsm_state102_blk;
wire [21:0] grp_fu_632_p00;
wire [26:0] grp_fu_641_p00;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 102'd1;
end
entry_point_urem_32ns_10ns_9_36_seq_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 10 ),
 .dout_WIDTH( 9 ))
urem_32ns_10ns_9_36_seq_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .start(grp_fu_304_ap_start),
 .done(grp_fu_304_ap_done),
 .din0(year),
 .din1(grp_fu_304_p1),
 .ce(1'b1),
 .dout(grp_fu_304_p2)
);
entry_point_urem_32ns_8ns_7_36_seq_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 8 ),
 .dout_WIDTH( 7 ))
urem_32ns_8ns_7_36_seq_1_U2(
 .clk(ap_clk),
 .reset(ap_rst),
 .start(grp_fu_325_ap_start),
 .done(grp_fu_325_ap_done),
 .din0(year),
 .din1(grp_fu_325_p1),
 .ce(1'b1),
 .dout(grp_fu_325_p2)
);
entry_point_urem_22ns_4ns_3_26_seq_1 #(
 .ID( 1 ),
 .NUM_STAGE( 26 ),
 .din0_WIDTH( 22 ),
 .din1_WIDTH( 4 ),
 .dout_WIDTH( 3 ))
urem_22ns_4ns_3_26_seq_1_U3(
 .clk(ap_clk),
 .reset(ap_rst),
 .start(grp_fu_573_ap_start),
 .done(grp_fu_573_ap_done),
 .din0(grp_fu_573_p0),
 .din1(grp_fu_573_p1),
 .ce(1'b1),
 .dout(grp_fu_573_p2)
);
entry_point_mac_muladd_6s_8ns_10s_13_4_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 6 ),
 .din1_WIDTH( 8 ),
 .din2_WIDTH( 10 ),
 .dout_WIDTH( 13 ))
mac_muladd_6s_8ns_10s_13_4_1_U4(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(add_ln34_fu_386_p2),
 .din1(grp_fu_614_p1),
 .din2(grp_fu_614_p2),
 .ce(1'b1),
 .dout(grp_fu_614_p3)
);
entry_point_mul_mul_13s_14ns_28_4_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 13 ),
 .din1_WIDTH( 14 ),
 .dout_WIDTH( 28 ))
mul_mul_13s_14ns_28_4_1_U5(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_614_p3),
 .din1(grp_fu_624_p1),
 .ce(1'b1),
 .dout(grp_fu_624_p2)
);
entry_point_mac_muladd_13ns_9ns_16s_22_4_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 13 ),
 .din1_WIDTH( 9 ),
 .din2_WIDTH( 16 ),
 .dout_WIDTH( 22 ))
mac_muladd_13ns_9ns_16s_22_4_1_U6(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_632_p0),
 .din1(grp_fu_632_p1),
 .din2(grp_fu_632_p2),
 .ce(1'b1),
 .dout(grp_fu_632_p3)
);
entry_point_mul_mul_13ns_14ns_27_4_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 13 ),
 .din1_WIDTH( 14 ),
 .dout_WIDTH( 27 ))
mul_mul_13ns_14ns_27_4_1_U7(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_641_p0),
 .din1(grp_fu_641_p1),
 .ce(1'b1),
 .dout(grp_fu_641_p2)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (((icmp_ln8_fu_268_p2 == 1'd0) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2)) | (~(month_read_read_fu_152_p2 == 32'd12) & ~(month_read_read_fu_152_p2 == 32'd10) & ~(month_read_read_fu_152_p2 == 32'd8) & ~(month_read_read_fu_152_p2 == 32'd7) & ~(month_read_read_fu_152_p2 == 32'd5) & ~(month_read_read_fu_152_p2 == 32'd3) & ~(month_read_read_fu_152_p2 == 32'd1) & ~(month_read_read_fu_152_p2 == 32'd11) & ~(month_read_read_fu_152_p2 == 32'd9) & ~(month_read_read_fu_152_p2 == 32'd6) & ~(month_read_read_fu_152_p2 == 32'd4) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2))))) begin
 and_ln12_reg_698 <= and_ln12_fu_286_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state71) & (((icmp_ln14_1_reg_706 == 1'd0) & (1'd0 == and_ln12_reg_698) & (icmp_ln8_reg_694 == 1'd0) & (1'd1 == and_ln14_reg_702)) | (~(month_read_read_fu_152_p2 == 32'd12) & ~(month_read_read_fu_152_p2 == 32'd10) & ~(month_read_read_fu_152_p2 == 32'd8) & ~(month_read_read_fu_152_p2 == 32'd7) & ~(month_read_read_fu_152_p2 == 32'd5) & ~(month_read_read_fu_152_p2 == 32'd3) & ~(month_read_read_fu_152_p2 == 32'd1) & ~(month_read_read_fu_152_p2 == 32'd11) & ~(month_read_read_fu_152_p2 == 32'd9) & ~(month_read_read_fu_152_p2 == 32'd6) & ~(month_read_read_fu_152_p2 == 32'd4) & (icmp_ln14_1_reg_706 == 1'd0) & (1'd0 == and_ln12_reg_698) & (1'd1 == and_ln14_reg_702))))) begin
 and_ln14_1_reg_715 <= and_ln14_1_fu_340_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (((1'd0 == and_ln12_fu_286_p2) & (icmp_ln8_fu_268_p2 == 1'd0) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2)) | (~(month_read_read_fu_152_p2 == 32'd12) & ~(month_read_read_fu_152_p2 == 32'd10) & ~(month_read_read_fu_152_p2 == 32'd8) & ~(month_read_read_fu_152_p2 == 32'd7) & ~(month_read_read_fu_152_p2 == 32'd5) & ~(month_read_read_fu_152_p2 == 32'd3) & ~(month_read_read_fu_152_p2 == 32'd1) & ~(month_read_read_fu_152_p2 == 32'd11) & ~(month_read_read_fu_152_p2 == 32'd9) & ~(month_read_read_fu_152_p2 == 32'd6) & ~(month_read_read_fu_152_p2 == 32'd4) & (1'd0 == and_ln12_fu_286_p2) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2))))) begin
 and_ln14_reg_702 <= and_ln14_fu_298_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 and_ln5_reg_682 <= and_ln5_fu_216_p2;
 trunc_ln3_1_reg_677 <= trunc_ln3_1_fu_200_p1;
 trunc_ln3_reg_672 <= trunc_ln3_fu_196_p1;
 trunc_ln48_reg_654 <= trunc_ln48_fu_192_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (1'd1 == and_ln5_fu_216_p2))) begin
 and_ln6_reg_686 <= and_ln6_fu_234_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2))) begin
 and_ln7_reg_690 <= and_ln7_fu_262_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state36)) begin
 icmp_ln14_1_reg_706 <= icmp_ln14_1_fu_314_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln14_1_fu_314_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state36))) begin
 icmp_ln14_2_reg_710 <= icmp_ln14_2_fu_320_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state71) & (((((((((((((1'd1 == and_ln12_reg_698) | (((icmp_ln14_1_reg_706 == 1'd1) & (1'd1 == and_ln14_reg_702)) | ((1'd1 == and_ln14_1_fu_340_p2) & (1'd1 == and_ln14_reg_702)))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd12))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd10))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd8))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd7))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd5))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd3))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd1))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd11))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd9))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd6))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd4))))) begin
 icmp_ln34_reg_719 <= icmp_ln34_fu_354_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2))) begin
 icmp_ln8_reg_694 <= icmp_ln8_fu_268_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state74)) begin
 tmp_1_reg_734 <= grp_fu_614_p3[32'd12];
 trunc_ln4_reg_745 <= {{sub_ln36_fu_418_p2[11:2]}};
 end
end
assign ap_ST_fsm_state100_blk = 1'b0;
assign ap_ST_fsm_state101_blk = 1'b0;
assign ap_ST_fsm_state102_blk = 1'b0;
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
assign ap_ST_fsm_state46_blk = 1'b0;
assign ap_ST_fsm_state47_blk = 1'b0;
assign ap_ST_fsm_state48_blk = 1'b0;
assign ap_ST_fsm_state49_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state50_blk = 1'b0;
assign ap_ST_fsm_state51_blk = 1'b0;
assign ap_ST_fsm_state52_blk = 1'b0;
assign ap_ST_fsm_state53_blk = 1'b0;
assign ap_ST_fsm_state54_blk = 1'b0;
assign ap_ST_fsm_state55_blk = 1'b0;
assign ap_ST_fsm_state56_blk = 1'b0;
assign ap_ST_fsm_state57_blk = 1'b0;
assign ap_ST_fsm_state58_blk = 1'b0;
assign ap_ST_fsm_state59_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state60_blk = 1'b0;
assign ap_ST_fsm_state61_blk = 1'b0;
assign ap_ST_fsm_state62_blk = 1'b0;
assign ap_ST_fsm_state63_blk = 1'b0;
assign ap_ST_fsm_state64_blk = 1'b0;
assign ap_ST_fsm_state65_blk = 1'b0;
assign ap_ST_fsm_state66_blk = 1'b0;
assign ap_ST_fsm_state67_blk = 1'b0;
assign ap_ST_fsm_state68_blk = 1'b0;
assign ap_ST_fsm_state69_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state70_blk = 1'b0;
assign ap_ST_fsm_state71_blk = 1'b0;
assign ap_ST_fsm_state72_blk = 1'b0;
assign ap_ST_fsm_state73_blk = 1'b0;
assign ap_ST_fsm_state74_blk = 1'b0;
assign ap_ST_fsm_state75_blk = 1'b0;
assign ap_ST_fsm_state76_blk = 1'b0;
assign ap_ST_fsm_state77_blk = 1'b0;
assign ap_ST_fsm_state78_blk = 1'b0;
assign ap_ST_fsm_state79_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state80_blk = 1'b0;
assign ap_ST_fsm_state81_blk = 1'b0;
assign ap_ST_fsm_state82_blk = 1'b0;
assign ap_ST_fsm_state83_blk = 1'b0;
assign ap_ST_fsm_state84_blk = 1'b0;
assign ap_ST_fsm_state85_blk = 1'b0;
assign ap_ST_fsm_state86_blk = 1'b0;
assign ap_ST_fsm_state87_blk = 1'b0;
assign ap_ST_fsm_state88_blk = 1'b0;
assign ap_ST_fsm_state89_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state90_blk = 1'b0;
assign ap_ST_fsm_state91_blk = 1'b0;
assign ap_ST_fsm_state92_blk = 1'b0;
assign ap_ST_fsm_state93_blk = 1'b0;
assign ap_ST_fsm_state94_blk = 1'b0;
assign ap_ST_fsm_state95_blk = 1'b0;
assign ap_ST_fsm_state96_blk = 1'b0;
assign ap_ST_fsm_state97_blk = 1'b0;
assign ap_ST_fsm_state98_blk = 1'b0;
assign ap_ST_fsm_state99_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state102)) begin
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
 if ((1'b1 == ap_CS_fsm_state102)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((1'd0 == and_ln12_fu_286_p2) & (icmp_ln8_fu_268_p2 == 1'd0) & (1'd1 == and_ln14_fu_298_p2) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2)) | (~(month_read_read_fu_152_p2 == 32'd12) & ~(month_read_read_fu_152_p2 == 32'd10) & ~(month_read_read_fu_152_p2 == 32'd8) & ~(month_read_read_fu_152_p2 == 32'd7) & ~(month_read_read_fu_152_p2 == 32'd5) & ~(month_read_read_fu_152_p2 == 32'd3) & ~(month_read_read_fu_152_p2 == 32'd1) & ~(month_read_read_fu_152_p2 == 32'd11) & ~(month_read_read_fu_152_p2 == 32'd9) & ~(month_read_read_fu_152_p2 == 32'd6) & ~(month_read_read_fu_152_p2 == 32'd4) & (1'd0 == and_ln12_fu_286_p2) & (1'd1 == and_ln14_fu_298_p2) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2))))) begin
 grp_fu_304_ap_start = 1'b1;
 end else begin
 grp_fu_304_ap_start = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln14_1_fu_314_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state36))) begin
 grp_fu_325_ap_start = 1'b1;
 end else begin
 grp_fu_325_ap_start = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state77)) begin
 grp_fu_573_ap_start = 1'b1;
 end else begin
 grp_fu_573_ap_start = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state71) & (((((((((((((1'd1 == and_ln12_reg_698) | (((icmp_ln14_1_reg_706 == 1'd1) & (1'd1 == and_ln14_reg_702)) | ((1'd1 == and_ln14_1_fu_340_p2) & (1'd1 == and_ln14_reg_702)))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd12))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd10))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd8))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd7))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd5))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd3))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd1))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd11))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd9))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd6))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd4))))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state71) & (((((((((((((1'd1 == and_ln12_reg_698) | (((icmp_ln14_1_reg_706 == 1'd1) & (1'd1 == and_ln14_reg_702)) | ((1'd1 == and_ln14_1_fu_340_p2) & (1'd1 == and_ln14_reg_702)))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd12))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd10))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd8))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd7))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd5))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd3))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd1))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd11))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd9))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd6))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd4))))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state71) & (((((((((((((1'd1 == and_ln12_reg_698) | (((icmp_ln14_1_reg_706 == 1'd1) & (1'd1 == and_ln14_reg_702)) | ((1'd1 == and_ln14_1_fu_340_p2) & (1'd1 == and_ln14_reg_702)))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd12))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd10))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd8))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd7))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd5))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd3))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd1))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd11))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd9))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd6))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd4))))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state102) & (((((((((((((((1'd1 == and_ln14_1_reg_715) & (1'd1 == and_ln14_reg_702) & (1'd1 == and_ln7_reg_690) & (1'd1 == and_ln6_reg_686) & (1'd1 == and_ln5_reg_682)) | ((icmp_ln14_1_reg_706 == 1'd1) & (1'd1 == and_ln14_reg_702) & (1'd1 == and_ln7_reg_690) & (1'd1 == and_ln6_reg_686) & (1'd1 == and_ln5_reg_682))) | ((1'd1 == and_ln12_reg_698) & (1'd1 == and_ln7_reg_690) & (1'd1 == and_ln6_reg_686) & (1'd1 == and_ln5_reg_682))) | ((icmp_ln8_reg_694 == 1'd1) & (1'd1 == and_ln7_reg_690) & (1'd1 == and_ln6_reg_686) & (1'd1 == and_ln5_reg_682) & (month_read_read_fu_152_p2 == 32'd12))) | ((icmp_ln8_reg_694 == 1'd1) & (1'd1 == and_ln7_reg_690) & (1'd1 == and_ln6_reg_686) & (1'd1 == and_ln5_reg_682) & (month_read_read_fu_152_p2 == 32'd10))) | ((icmp_ln8_reg_694 == 1'd1) & (1'd1 == and_ln7_reg_690) & (1'd1 == and_ln6_reg_686) & (1'd1 == and_ln5_reg_682) & (month_read_read_fu_152_p2 == 32'd8))) | ((icmp_ln8_reg_694 == 1'd1) & (1'd1 == and_ln7_reg_690) & (1'd1 == and_ln6_reg_686) & (1'd1 == and_ln5_reg_682) & (month_read_read_fu_152_p2 == 32'd7))) | ((icmp_ln8_reg_694 == 1'd1) & (1'd1 == and_ln7_reg_690) & (1'd1 == and_ln6_reg_686) & (1'd1 == and_ln5_reg_682) & (month_read_read_fu_152_p2 == 32'd5))) | ((icmp_ln8_reg_694 == 1'd1) & (1'd1 == and_ln7_reg_690) & (1'd1 == and_ln6_reg_686) & (1'd1 == and_ln5_reg_682) & (month_read_read_fu_152_p2 == 32'd3))) | ((icmp_ln8_reg_694 == 1'd1) & (1'd1 == and_ln7_reg_690) & (1'd1 == and_ln6_reg_686) & (1'd1 == and_ln5_reg_682) & (month_read_read_fu_152_p2 == 32'd1))) | ((icmp_ln8_reg_694 == 1'd1) & (1'd1 == and_ln7_reg_690) & (1'd1 == and_ln6_reg_686) & (1'd1 == and_ln5_reg_682) & (month_read_read_fu_152_p2 == 32'd11))) | ((icmp_ln8_reg_694 == 1'd1) & (1'd1 == and_ln7_reg_690) & (1'd1 == and_ln6_reg_686) & (1'd1 == and_ln5_reg_682) & (month_read_read_fu_152_p2 == 32'd9))) | ((icmp_ln8_reg_694 == 1'd1) & (1'd1 == and_ln7_reg_690) & (1'd1 == and_ln6_reg_686) & (1'd1 == and_ln5_reg_682) & (month_read_read_fu_152_p2 == 32'd6))) | ((icmp_ln8_reg_694 == 1'd1) & (1'd1 == and_ln7_reg_690) & (1'd1 == and_ln6_reg_686) & (1'd1 == and_ln5_reg_682) & (month_read_read_fu_152_p2 == 32'd4))))) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & (((1'd0 == and_ln12_fu_286_p2) & (icmp_ln8_fu_268_p2 == 1'd0) & (1'd1 == and_ln14_fu_298_p2) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2)) | (~(month_read_read_fu_152_p2 == 32'd12) & ~(month_read_read_fu_152_p2 == 32'd10) & ~(month_read_read_fu_152_p2 == 32'd8) & ~(month_read_read_fu_152_p2 == 32'd7) & ~(month_read_read_fu_152_p2 == 32'd5) & ~(month_read_read_fu_152_p2 == 32'd3) & ~(month_read_read_fu_152_p2 == 32'd1) & ~(month_read_read_fu_152_p2 == 32'd11) & ~(month_read_read_fu_152_p2 == 32'd9) & ~(month_read_read_fu_152_p2 == 32'd6) & ~(month_read_read_fu_152_p2 == 32'd4) & (1'd0 == and_ln12_fu_286_p2) & (1'd1 == and_ln14_fu_298_p2) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2))))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((((((((((((((1'd1 == and_ln12_fu_286_p2) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2)) | ((1'd0 == and_ln14_fu_298_p2) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2))) | ((icmp_ln8_fu_268_p2 == 1'd1) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2) & (month_read_read_fu_152_p2 == 32'd12))) | ((icmp_ln8_fu_268_p2 == 1'd1) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2) & (month_read_read_fu_152_p2 == 32'd10))) | ((icmp_ln8_fu_268_p2 == 1'd1) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2) & (month_read_read_fu_152_p2 == 32'd8))) | ((icmp_ln8_fu_268_p2 == 1'd1) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2) & (month_read_read_fu_152_p2 == 32'd7))) | ((icmp_ln8_fu_268_p2 == 1'd1) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2) & (month_read_read_fu_152_p2 == 32'd5))) | ((icmp_ln8_fu_268_p2 == 1'd1) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2) & (month_read_read_fu_152_p2 == 32'd3))) | ((icmp_ln8_fu_268_p2 == 1'd1) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2) & (month_read_read_fu_152_p2 == 32'd1))) | ((icmp_ln8_fu_268_p2 == 1'd1) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2) & (month_read_read_fu_152_p2 == 32'd11))) | ((icmp_ln8_fu_268_p2 == 1'd1) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2) & (month_read_read_fu_152_p2 == 32'd9))) | ((icmp_ln8_fu_268_p2 == 1'd1) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2) & (month_read_read_fu_152_p2 == 32'd6))) | ((icmp_ln8_fu_268_p2 == 1'd1) & (1'd1 == and_ln7_fu_262_p2) & (1'd1 == and_ln6_fu_234_p2) & (1'd1 == and_ln5_fu_216_p2) & (month_read_read_fu_152_p2 == 32'd4))))) begin
 ap_NS_fsm = ap_ST_fsm_state71;
 end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1) & ((1'd0 == and_ln5_fu_216_p2) | ((1'd0 == and_ln7_fu_262_p2) | (1'd0 == and_ln6_fu_234_p2))))) begin
 ap_NS_fsm = ap_ST_fsm_state102;
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
 if (((icmp_ln14_1_fu_314_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state36))) begin
 ap_NS_fsm = ap_ST_fsm_state71;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state37;
 end
 end
 ap_ST_fsm_state37 : begin
 ap_NS_fsm = ap_ST_fsm_state38;
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
 ap_NS_fsm = ap_ST_fsm_state45;
 end
 ap_ST_fsm_state45 : begin
 ap_NS_fsm = ap_ST_fsm_state46;
 end
 ap_ST_fsm_state46 : begin
 ap_NS_fsm = ap_ST_fsm_state47;
 end
 ap_ST_fsm_state47 : begin
 ap_NS_fsm = ap_ST_fsm_state48;
 end
 ap_ST_fsm_state48 : begin
 ap_NS_fsm = ap_ST_fsm_state49;
 end
 ap_ST_fsm_state49 : begin
 ap_NS_fsm = ap_ST_fsm_state50;
 end
 ap_ST_fsm_state50 : begin
 ap_NS_fsm = ap_ST_fsm_state51;
 end
 ap_ST_fsm_state51 : begin
 ap_NS_fsm = ap_ST_fsm_state52;
 end
 ap_ST_fsm_state52 : begin
 ap_NS_fsm = ap_ST_fsm_state53;
 end
 ap_ST_fsm_state53 : begin
 ap_NS_fsm = ap_ST_fsm_state54;
 end
 ap_ST_fsm_state54 : begin
 ap_NS_fsm = ap_ST_fsm_state55;
 end
 ap_ST_fsm_state55 : begin
 ap_NS_fsm = ap_ST_fsm_state56;
 end
 ap_ST_fsm_state56 : begin
 ap_NS_fsm = ap_ST_fsm_state57;
 end
 ap_ST_fsm_state57 : begin
 ap_NS_fsm = ap_ST_fsm_state58;
 end
 ap_ST_fsm_state58 : begin
 ap_NS_fsm = ap_ST_fsm_state59;
 end
 ap_ST_fsm_state59 : begin
 ap_NS_fsm = ap_ST_fsm_state60;
 end
 ap_ST_fsm_state60 : begin
 ap_NS_fsm = ap_ST_fsm_state61;
 end
 ap_ST_fsm_state61 : begin
 ap_NS_fsm = ap_ST_fsm_state62;
 end
 ap_ST_fsm_state62 : begin
 ap_NS_fsm = ap_ST_fsm_state63;
 end
 ap_ST_fsm_state63 : begin
 ap_NS_fsm = ap_ST_fsm_state64;
 end
 ap_ST_fsm_state64 : begin
 ap_NS_fsm = ap_ST_fsm_state65;
 end
 ap_ST_fsm_state65 : begin
 ap_NS_fsm = ap_ST_fsm_state66;
 end
 ap_ST_fsm_state66 : begin
 ap_NS_fsm = ap_ST_fsm_state67;
 end
 ap_ST_fsm_state67 : begin
 ap_NS_fsm = ap_ST_fsm_state68;
 end
 ap_ST_fsm_state68 : begin
 ap_NS_fsm = ap_ST_fsm_state69;
 end
 ap_ST_fsm_state69 : begin
 ap_NS_fsm = ap_ST_fsm_state70;
 end
 ap_ST_fsm_state70 : begin
 ap_NS_fsm = ap_ST_fsm_state71;
 end
 ap_ST_fsm_state71 : begin
 if (((1'b1 == ap_CS_fsm_state71) & (((((((((((((1'd1 == and_ln12_reg_698) | (((icmp_ln14_1_reg_706 == 1'd1) & (1'd1 == and_ln14_reg_702)) | ((1'd1 == and_ln14_1_fu_340_p2) & (1'd1 == and_ln14_reg_702)))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd12))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd10))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd8))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd7))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd5))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd3))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd1))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd11))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd9))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd6))) | ((icmp_ln8_reg_694 == 1'd1) & (month_read_read_fu_152_p2 == 32'd4))))) begin
 ap_NS_fsm = ap_ST_fsm_state72;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state102;
 end
 end
 ap_ST_fsm_state72 : begin
 ap_NS_fsm = ap_ST_fsm_state73;
 end
 ap_ST_fsm_state73 : begin
 ap_NS_fsm = ap_ST_fsm_state74;
 end
 ap_ST_fsm_state74 : begin
 ap_NS_fsm = ap_ST_fsm_state75;
 end
 ap_ST_fsm_state75 : begin
 ap_NS_fsm = ap_ST_fsm_state76;
 end
 ap_ST_fsm_state76 : begin
 ap_NS_fsm = ap_ST_fsm_state77;
 end
 ap_ST_fsm_state77 : begin
 ap_NS_fsm = ap_ST_fsm_state78;
 end
 ap_ST_fsm_state78 : begin
 ap_NS_fsm = ap_ST_fsm_state79;
 end
 ap_ST_fsm_state79 : begin
 ap_NS_fsm = ap_ST_fsm_state80;
 end
 ap_ST_fsm_state80 : begin
 ap_NS_fsm = ap_ST_fsm_state81;
 end
 ap_ST_fsm_state81 : begin
 ap_NS_fsm = ap_ST_fsm_state82;
 end
 ap_ST_fsm_state82 : begin
 ap_NS_fsm = ap_ST_fsm_state83;
 end
 ap_ST_fsm_state83 : begin
 ap_NS_fsm = ap_ST_fsm_state84;
 end
 ap_ST_fsm_state84 : begin
 ap_NS_fsm = ap_ST_fsm_state85;
 end
 ap_ST_fsm_state85 : begin
 ap_NS_fsm = ap_ST_fsm_state86;
 end
 ap_ST_fsm_state86 : begin
 ap_NS_fsm = ap_ST_fsm_state87;
 end
 ap_ST_fsm_state87 : begin
 ap_NS_fsm = ap_ST_fsm_state88;
 end
 ap_ST_fsm_state88 : begin
 ap_NS_fsm = ap_ST_fsm_state89;
 end
 ap_ST_fsm_state89 : begin
 ap_NS_fsm = ap_ST_fsm_state90;
 end
 ap_ST_fsm_state90 : begin
 ap_NS_fsm = ap_ST_fsm_state91;
 end
 ap_ST_fsm_state91 : begin
 ap_NS_fsm = ap_ST_fsm_state92;
 end
 ap_ST_fsm_state92 : begin
 ap_NS_fsm = ap_ST_fsm_state93;
 end
 ap_ST_fsm_state93 : begin
 ap_NS_fsm = ap_ST_fsm_state94;
 end
 ap_ST_fsm_state94 : begin
 ap_NS_fsm = ap_ST_fsm_state95;
 end
 ap_ST_fsm_state95 : begin
 ap_NS_fsm = ap_ST_fsm_state96;
 end
 ap_ST_fsm_state96 : begin
 ap_NS_fsm = ap_ST_fsm_state97;
 end
 ap_ST_fsm_state97 : begin
 ap_NS_fsm = ap_ST_fsm_state98;
 end
 ap_ST_fsm_state98 : begin
 ap_NS_fsm = ap_ST_fsm_state99;
 end
 ap_ST_fsm_state99 : begin
 ap_NS_fsm = ap_ST_fsm_state100;
 end
 ap_ST_fsm_state100 : begin
 ap_NS_fsm = ap_ST_fsm_state101;
 end
 ap_ST_fsm_state101 : begin
 ap_NS_fsm = ap_ST_fsm_state102;
 end
 ap_ST_fsm_state102 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln34_fu_386_p2 = (sub_ln34_1_fu_376_p2 + zext_ln34_fu_382_p1);
assign add_ln35_fu_413_p2 = (trunc_ln3_1_reg_677 + 12'd704);
assign add_ln39_2_fu_533_p2 = ($signed(grp_fu_632_p3) + $signed(trunc_ln48_reg_654));
assign add_ln39_3_fu_537_p2 = ($signed(select_ln34_4_fu_487_p3) + $signed(sext_ln38_fu_516_p1));
assign add_ln39_4_fu_547_p2 = ($signed(sext_ln36_fu_494_p1) + $signed(zext_ln39_fu_529_p1));
assign add_ln39_5_fu_557_p2 = ($signed(zext_ln39_1_fu_553_p1) + $signed(sext_ln39_fu_543_p1));
assign and_ln12_fu_286_p2 = (icmp_ln12_fu_274_p2 & icmp_ln12_1_fu_280_p2);
assign and_ln14_1_fu_340_p2 = (icmp_ln14_3_fu_334_p2 & icmp_ln14_2_reg_710);
assign and_ln14_fu_298_p2 = (icmp_ln14_fu_292_p2 & icmp_ln12_1_fu_280_p2);
assign and_ln5_fu_216_p2 = (icmp_ln5_fu_204_p2 & icmp_ln5_1_fu_210_p2);
assign and_ln6_fu_234_p2 = (icmp_ln6_fu_222_p2 & icmp_ln6_1_fu_228_p2);
assign and_ln7_fu_262_p2 = (icmp_ln7_fu_240_p2 & icmp_ln7_1_fu_256_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state102 = ap_CS_fsm[32'd101];
assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_state71 = ap_CS_fsm[32'd70];
assign ap_CS_fsm_state73 = ap_CS_fsm[32'd72];
assign ap_CS_fsm_state74 = ap_CS_fsm[32'd73];
assign ap_CS_fsm_state76 = ap_CS_fsm[32'd75];
assign ap_CS_fsm_state77 = ap_CS_fsm[32'd76];
assign ap_return = 32'd0;
assign empty_fu_510_p2 = (8'd0 - p_cast_cast_fu_506_p1);
assign grp_fu_304_p1 = 32'd400;
assign grp_fu_325_p1 = 32'd100;
assign grp_fu_573_p0 = (zext_ln39_2_fu_563_p1 + add_ln39_2_fu_533_p2);
assign grp_fu_573_p1 = 22'd7;
assign grp_fu_614_p1 = 13'd153;
assign grp_fu_614_p2 = 13'd7735;
assign grp_fu_624_p1 = 28'd13108;
assign grp_fu_632_p0 = grp_fu_632_p00;
assign grp_fu_632_p00 = $unsigned(sext_ln35_fu_424_p1);
assign grp_fu_632_p1 = 22'd365;
assign grp_fu_632_p2 = 22'd4162259;
assign grp_fu_641_p0 = grp_fu_641_p00;
assign grp_fu_641_p00 = $unsigned(sext_ln35_fu_424_p1);
assign grp_fu_641_p1 = 27'd10486;
assign icmp_ln12_1_fu_280_p2 = ((month == 32'd2) ? 1'b1 : 1'b0);
assign icmp_ln12_fu_274_p2 = (($signed(day) < $signed(32'd29)) ? 1'b1 : 1'b0);
assign icmp_ln14_1_fu_314_p2 = ((trunc_ln14_fu_310_p1 == 9'd0) ? 1'b1 : 1'b0);
assign icmp_ln14_2_fu_320_p2 = ((trunc_ln3_reg_672 == 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln14_3_fu_334_p2 = ((trunc_ln14_1_fu_330_p1 != 7'd0) ? 1'b1 : 1'b0);
assign icmp_ln14_fu_292_p2 = ((day == 32'd29) ? 1'b1 : 1'b0);
assign icmp_ln34_fu_354_p2 = ((sub_ln34_fu_348_p2 < 4'd12) ? 1'b1 : 1'b0);
assign icmp_ln5_1_fu_210_p2 = (($signed(year) < $signed(32'd3000)) ? 1'b1 : 1'b0);
assign icmp_ln5_fu_204_p2 = (($signed(year) > $signed(32'd1799)) ? 1'b1 : 1'b0);
assign icmp_ln6_1_fu_228_p2 = (($signed(month) < $signed(32'd13)) ? 1'b1 : 1'b0);
assign icmp_ln6_fu_222_p2 = (($signed(month) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln7_1_fu_256_p2 = (($signed(tmp_fu_246_p4) < $signed(27'd1)) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_240_p2 = (($signed(day) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_268_p2 = (($signed(day) < $signed(32'd31)) ? 1'b1 : 1'b0);
assign month_read_read_fu_152_p2 = month;
assign p_cast_cast_fu_506_p1 = p_cast_fu_497_p4;
assign p_cast_fu_497_p1 = grp_fu_641_p2;
assign p_cast_fu_497_p4 = {{p_cast_fu_497_p1[26:20]}};
assign select_ln34_1_fu_360_p3 = ((icmp_ln34_fu_354_p2[0:0] == 1'b1) ? 6'd0 : 6'd16);
assign select_ln34_2_fu_368_p3 = ((icmp_ln34_fu_354_p2[0:0] == 1'b1) ? 6'd0 : 6'd4);
assign select_ln34_3_fu_474_p3 = ((tmp_1_reg_734[0:0] == 1'b1) ? tmp_2_fu_455_p4 : tmp_3_fu_465_p4);
assign select_ln34_4_fu_487_p3 = ((tmp_1_reg_734[0:0] == 1'b1) ? sub_ln34_3_fu_481_p2 : tmp_3_fu_465_p4);
assign select_ln34_fu_396_p3 = ((icmp_ln34_reg_719[0:0] == 1'b1) ? 12'd0 : 12'd1);
assign sext_ln35_fu_424_p1 = sub_ln36_fu_418_p2;
assign sext_ln36_fu_494_p1 = $signed(trunc_ln4_reg_745);
assign sext_ln38_fu_516_p1 = $signed(empty_fu_510_p2);
assign sext_ln39_fu_543_p1 = $signed(add_ln39_3_fu_537_p2);
assign sub_ln34_1_fu_376_p2 = (select_ln34_1_fu_360_p3 - select_ln34_2_fu_368_p3);
assign sub_ln34_2_fu_449_p2 = (27'd0 - trunc_ln34_1_fu_446_p1);
assign sub_ln34_3_fu_481_p2 = (11'd0 - select_ln34_3_fu_474_p3);
assign sub_ln34_fu_348_p2 = ($signed(4'd14) - $signed(trunc_ln34_fu_345_p1));
assign sub_ln36_fu_418_p2 = (add_ln35_fu_413_p2 - select_ln34_fu_396_p3);
assign temptemp1 = day;
assign temptemp2 = month;
assign temptemp3 = year;
assign temptemp4 = (zext_ln57_fu_591_p1 - zext_ln57_2_fu_603_p1);
assign tmp_2_fu_455_p4 = {{sub_ln34_2_fu_449_p2[26:16]}};
assign tmp_3_fu_465_p4 = {{grp_fu_624_p2[26:16]}};
assign tmp_fu_246_p4 = {{day[31:5]}};
assign trunc_ln14_1_fu_330_p1 = grp_fu_325_p2[6:0];
assign trunc_ln14_fu_310_p1 = grp_fu_304_p2[8:0];
assign trunc_ln33_fu_579_p1 = grp_fu_573_p2[2:0];
assign trunc_ln34_1_fu_446_p1 = grp_fu_624_p2[26:0];
assign trunc_ln34_fu_345_p1 = month[3:0];
assign trunc_ln3_1_fu_200_p1 = year[11:0];
assign trunc_ln3_fu_196_p1 = year[1:0];
assign trunc_ln48_fu_192_p1 = day[21:0];
assign trunc_ln5_fu_520_p1 = grp_fu_641_p2;
assign trunc_ln5_fu_520_p4 = {{trunc_ln5_fu_520_p1[26:22]}};
assign zext_ln34_fu_382_p1 = trunc_ln34_fu_345_p1;
assign zext_ln39_1_fu_553_p1 = add_ln39_4_fu_547_p2;
assign zext_ln39_2_fu_563_p1 = add_ln39_5_fu_557_p2;
assign zext_ln39_fu_529_p1 = trunc_ln5_fu_520_p4;
assign zext_ln57_1_fu_595_p3 = {{trunc_ln33_fu_579_p1}, {2'd0}};
assign zext_ln57_2_fu_603_p1 = zext_ln57_1_fu_595_p3;
assign zext_ln57_fu_591_p1 = zext_ln_fu_583_p3;
assign zext_ln_fu_583_p3 = {{trunc_ln33_fu_579_p1}, {4'd0}};
endmodule
module entry_point_mac_muladd_13ns_9ns_16s_22_4_1_DSP48_2(
 input clk,
 input rst,
 input ce,
 input [13 - 1:0] in0,
 input [9 - 1:0] in1,
 input [16 - 1:0] in2,
 output [22 - 1:0] dout);
wire signed [27 - 1:0] a;
wire signed [18 - 1:0] b;
wire signed [48 - 1:0] c;
wire signed [45 - 1:0] m;
wire signed [48 - 1:0] p;
reg signed [45 - 1:0] m_reg;
reg signed [27 - 1:0] a_reg;
reg signed [18 - 1:0] b_reg;
reg signed [48 - 1:0] p_reg;
assign a = $unsigned(in0);
assign b = $unsigned(in1);
assign c = $signed(in2);
assign m = a_reg * b_reg;
assign p = m_reg + c;
always @(posedge clk) begin
 if (ce) begin
 m_reg <= m;
 a_reg <= a;
 b_reg <= b;
 p_reg <= p;
 end
end
assign dout = p_reg;
endmodule
module entry_point_mac_muladd_13ns_9ns_16s_22_4_1(
 clk,
 reset,
 ce,
 din0,
 din1,
 din2,
 dout);
parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter din2_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
input[din2_WIDTH - 1:0] din2;
output[dout_WIDTH - 1:0] dout;
entry_point_mac_muladd_13ns_9ns_16s_22_4_1_DSP48_2 entry_point_mac_muladd_13ns_9ns_16s_22_4_1_DSP48_2_U(
 .clk( clk ),
 .rst( reset ),
 .ce( ce ),
 .in0( din0 ),
 .in1( din1 ),
 .in2( din2 ),
 .dout( dout ));
endmodule
(* use_dsp = "yes" *) module entry_point_mac_muladd_6s_8ns_10s_13_4_1_DSP48_0(
 input clk,
 input rst,
 input ce,
 input [6 - 1:0] in0,
 input [8 - 1:0] in1,
 input [10 - 1:0] in2,
 output [13 - 1:0] dout);
wire signed [27 - 1:0] a;
wire signed [18 - 1:0] b;
wire signed [48 - 1:0] c;
wire signed [45 - 1:0] m;
wire signed [48 - 1:0] p;
reg signed [45 - 1:0] m_reg;
reg signed [27 - 1:0] a_reg;
reg signed [18 - 1:0] b_reg;
reg signed [48 - 1:0] p_reg;
assign a = $signed(in0);
assign b = $unsigned(in1);
assign c = $signed(in2);
assign m = a_reg * b_reg;
assign p = m_reg + c;
always @(posedge clk) begin
 if (ce) begin
 m_reg <= m;
 a_reg <= a;
 b_reg <= b;
 p_reg <= p;
 end
end
assign dout = p_reg;
endmodule
module entry_point_mac_muladd_6s_8ns_10s_13_4_1(
 clk,
 reset,
 ce,
 din0,
 din1,
 din2,
 dout);
parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter din2_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
input[din2_WIDTH - 1:0] din2;
output[dout_WIDTH - 1:0] dout;
entry_point_mac_muladd_6s_8ns_10s_13_4_1_DSP48_0 entry_point_mac_muladd_6s_8ns_10s_13_4_1_DSP48_0_U(
 .clk( clk ),
 .rst( reset ),
 .ce( ce ),
 .in0( din0 ),
 .in1( din1 ),
 .in2( din2 ),
 .dout( dout ));
endmodule
 module entry_point_mul_mul_13ns_14ns_27_4_1_DSP48_3(clk, rst, ce, a, b, p);
input clk;
input rst;
input ce;
input [13 - 1 : 0] a;
input [14 - 1 : 0] b;
output signed [27 - 1 : 0] p;
reg signed [27 - 1 : 0] p_reg; 
reg [13 - 1 : 0] a_reg; 
reg [14 - 1 : 0] b_reg; 
reg signed [27 - 1 : 0] p_reg_tmp; 
always @ (posedge clk) begin
 if (ce) begin
 a_reg <= a;
 b_reg <= b;
 p_reg_tmp <= $signed({1'b0, a_reg}) * $signed({1'b0, b_reg});
 p_reg <= p_reg_tmp;
 end
end
assign p = p_reg;
endmodule
module entry_point_mul_mul_13ns_14ns_27_4_1(
 clk,
 reset,
 ce,
 din0,
 din1,
 dout);
parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;
entry_point_mul_mul_13ns_14ns_27_4_1_DSP48_3 entry_point_mul_mul_13ns_14ns_27_4_1_DSP48_3_U(
 .clk( clk ),
 .rst( reset ),
 .ce( ce ),
 .a( din0 ),
 .b( din1 ),
 .p( dout ));
endmodule
 module entry_point_mul_mul_13s_14ns_28_4_1_DSP48_1(clk, rst, ce, a, b, p);
input clk;
input rst;
input ce;
input signed [13 - 1 : 0] a;
input [14 - 1 : 0] b;
output signed [28 - 1 : 0] p;
reg signed [28 - 1 : 0] p_reg; 
reg signed [13 - 1 : 0] a_reg; 
reg [14 - 1 : 0] b_reg; 
reg signed [28 - 1 : 0] p_reg_tmp; 
always @ (posedge clk) begin
 if (ce) begin
 a_reg <= a;
 b_reg <= b;
 p_reg_tmp <= a_reg * $signed({1'b0, b_reg});
 p_reg <= p_reg_tmp;
 end
end
assign p = p_reg;
endmodule
module entry_point_mul_mul_13s_14ns_28_4_1(
 clk,
 reset,
 ce,
 din0,
 din1,
 dout);
parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;
entry_point_mul_mul_13s_14ns_28_4_1_DSP48_1 entry_point_mul_mul_13s_14ns_28_4_1_DSP48_1_U(
 .clk( clk ),
 .rst( reset ),
 .ce( ce ),
 .a( din0 ),
 .b( din1 ),
 .p( dout ));
endmodule
module entry_point_urem_22ns_4ns_3_26_seq_1_divseq
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
 output wire done,
 output wire [out_WIDTH-1:0] quot,
 output wire [out_WIDTH-1:0] remd
);
localparam cal_WIDTH = (in0_WIDTH > in1_WIDTH)? in0_WIDTH : in1_WIDTH;
reg [in0_WIDTH-1:0] dividend0;
reg [in1_WIDTH-1:0] divisor0;
reg [in0_WIDTH-1:0] dividend_tmp;
reg [in0_WIDTH-1:0] remd_tmp;
wire [in0_WIDTH-1:0] dividend_tmp_mux;
wire [in0_WIDTH-1:0] remd_tmp_mux;
wire [in0_WIDTH-1:0] comb_tmp;
wire [cal_WIDTH:0] cal_tmp;
assign quot = dividend_tmp;
assign remd = remd_tmp;
always @(posedge clk)
begin
 if (start) begin
 dividend0 <= dividend;
 divisor0 <= divisor;
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
module entry_point_urem_22ns_4ns_3_26_seq_1
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
entry_point_urem_22ns_4ns_3_26_seq_1_divseq #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_urem_22ns_4ns_3_26_seq_1_divseq_u (
 .clk ( clk ),
 .reset ( reset ),
 .ce ( ce ),
 .start ( start0 ),
 .done ( done0 ),
 .dividend ( dividend_u ),
 .divisor ( divisor_u ),
 .quot ( quot_u ),
 .remd ( remd_u )
);
assign dividend_u = dividend0;
assign divisor_u = divisor0;
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
 quot <= quot_u;
 remd <= remd_u;
 end
end
assign dout = remd;
endmodule
module entry_point_urem_32ns_10ns_9_36_seq_1_divseq
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
 output wire done,
 output wire [out_WIDTH-1:0] quot,
 output wire [out_WIDTH-1:0] remd
);
localparam cal_WIDTH = (in0_WIDTH > in1_WIDTH)? in0_WIDTH : in1_WIDTH;
reg [in0_WIDTH-1:0] dividend0;
reg [in1_WIDTH-1:0] divisor0;
reg [in0_WIDTH-1:0] dividend_tmp;
reg [in0_WIDTH-1:0] remd_tmp;
wire [in0_WIDTH-1:0] dividend_tmp_mux;
wire [in0_WIDTH-1:0] remd_tmp_mux;
wire [in0_WIDTH-1:0] comb_tmp;
wire [cal_WIDTH:0] cal_tmp;
assign quot = dividend_tmp;
assign remd = remd_tmp;
always @(posedge clk)
begin
 if (start) begin
 dividend0 <= dividend;
 divisor0 <= divisor;
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
module entry_point_urem_32ns_10ns_9_36_seq_1
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
entry_point_urem_32ns_10ns_9_36_seq_1_divseq #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_urem_32ns_10ns_9_36_seq_1_divseq_u (
 .clk ( clk ),
 .reset ( reset ),
 .ce ( ce ),
 .start ( start0 ),
 .done ( done0 ),
 .dividend ( dividend_u ),
 .divisor ( divisor_u ),
 .quot ( quot_u ),
 .remd ( remd_u )
);
assign dividend_u = dividend0;
assign divisor_u = divisor0;
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
 quot <= quot_u;
 remd <= remd_u;
 end
end
assign dout = remd;
endmodule
module entry_point_urem_32ns_8ns_7_36_seq_1_divseq
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
 output wire done,
 output wire [out_WIDTH-1:0] quot,
 output wire [out_WIDTH-1:0] remd
);
localparam cal_WIDTH = (in0_WIDTH > in1_WIDTH)? in0_WIDTH : in1_WIDTH;
reg [in0_WIDTH-1:0] dividend0;
reg [in1_WIDTH-1:0] divisor0;
reg [in0_WIDTH-1:0] dividend_tmp;
reg [in0_WIDTH-1:0] remd_tmp;
wire [in0_WIDTH-1:0] dividend_tmp_mux;
wire [in0_WIDTH-1:0] remd_tmp_mux;
wire [in0_WIDTH-1:0] comb_tmp;
wire [cal_WIDTH:0] cal_tmp;
assign quot = dividend_tmp;
assign remd = remd_tmp;
always @(posedge clk)
begin
 if (start) begin
 dividend0 <= dividend;
 divisor0 <= divisor;
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
module entry_point_urem_32ns_8ns_7_36_seq_1
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
entry_point_urem_32ns_8ns_7_36_seq_1_divseq #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_urem_32ns_8ns_7_36_seq_1_divseq_u (
 .clk ( clk ),
 .reset ( reset ),
 .ce ( ce ),
 .start ( start0 ),
 .done ( done0 ),
 .dividend ( dividend_u ),
 .divisor ( divisor_u ),
 .quot ( quot_u ),
 .remd ( remd_u )
);
assign dividend_u = dividend0;
assign divisor_u = divisor0;
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
 quot <= quot_u;
 remd <= remd_u;
 end
end
assign dout = remd;
endmodule
