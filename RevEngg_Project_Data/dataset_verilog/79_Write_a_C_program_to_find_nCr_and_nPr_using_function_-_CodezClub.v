module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n,
 r,
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
parameter ap_ST_fsm_state1 = 145'd1;
parameter ap_ST_fsm_state2 = 145'd2;
parameter ap_ST_fsm_state3 = 145'd4;
parameter ap_ST_fsm_state4 = 145'd8;
parameter ap_ST_fsm_state5 = 145'd16;
parameter ap_ST_fsm_state6 = 145'd32;
parameter ap_ST_fsm_state7 = 145'd64;
parameter ap_ST_fsm_state8 = 145'd128;
parameter ap_ST_fsm_state9 = 145'd256;
parameter ap_ST_fsm_state10 = 145'd512;
parameter ap_ST_fsm_state11 = 145'd1024;
parameter ap_ST_fsm_state12 = 145'd2048;
parameter ap_ST_fsm_state13 = 145'd4096;
parameter ap_ST_fsm_state14 = 145'd8192;
parameter ap_ST_fsm_state15 = 145'd16384;
parameter ap_ST_fsm_state16 = 145'd32768;
parameter ap_ST_fsm_state17 = 145'd65536;
parameter ap_ST_fsm_state18 = 145'd131072;
parameter ap_ST_fsm_state19 = 145'd262144;
parameter ap_ST_fsm_state20 = 145'd524288;
parameter ap_ST_fsm_state21 = 145'd1048576;
parameter ap_ST_fsm_state22 = 145'd2097152;
parameter ap_ST_fsm_state23 = 145'd4194304;
parameter ap_ST_fsm_state24 = 145'd8388608;
parameter ap_ST_fsm_state25 = 145'd16777216;
parameter ap_ST_fsm_state26 = 145'd33554432;
parameter ap_ST_fsm_state27 = 145'd67108864;
parameter ap_ST_fsm_state28 = 145'd134217728;
parameter ap_ST_fsm_state29 = 145'd268435456;
parameter ap_ST_fsm_state30 = 145'd536870912;
parameter ap_ST_fsm_state31 = 145'd1073741824;
parameter ap_ST_fsm_state32 = 145'd2147483648;
parameter ap_ST_fsm_state33 = 145'd4294967296;
parameter ap_ST_fsm_state34 = 145'd8589934592;
parameter ap_ST_fsm_state35 = 145'd17179869184;
parameter ap_ST_fsm_state36 = 145'd34359738368;
parameter ap_ST_fsm_state37 = 145'd68719476736;
parameter ap_ST_fsm_state38 = 145'd137438953472;
parameter ap_ST_fsm_state39 = 145'd274877906944;
parameter ap_ST_fsm_state40 = 145'd549755813888;
parameter ap_ST_fsm_state41 = 145'd1099511627776;
parameter ap_ST_fsm_state42 = 145'd2199023255552;
parameter ap_ST_fsm_state43 = 145'd4398046511104;
parameter ap_ST_fsm_state44 = 145'd8796093022208;
parameter ap_ST_fsm_state45 = 145'd17592186044416;
parameter ap_ST_fsm_state46 = 145'd35184372088832;
parameter ap_ST_fsm_state47 = 145'd70368744177664;
parameter ap_ST_fsm_state48 = 145'd140737488355328;
parameter ap_ST_fsm_state49 = 145'd281474976710656;
parameter ap_ST_fsm_state50 = 145'd562949953421312;
parameter ap_ST_fsm_state51 = 145'd1125899906842624;
parameter ap_ST_fsm_state52 = 145'd2251799813685248;
parameter ap_ST_fsm_state53 = 145'd4503599627370496;
parameter ap_ST_fsm_state54 = 145'd9007199254740992;
parameter ap_ST_fsm_state55 = 145'd18014398509481984;
parameter ap_ST_fsm_state56 = 145'd36028797018963968;
parameter ap_ST_fsm_state57 = 145'd72057594037927936;
parameter ap_ST_fsm_state58 = 145'd144115188075855872;
parameter ap_ST_fsm_state59 = 145'd288230376151711744;
parameter ap_ST_fsm_state60 = 145'd576460752303423488;
parameter ap_ST_fsm_state61 = 145'd1152921504606846976;
parameter ap_ST_fsm_state62 = 145'd2305843009213693952;
parameter ap_ST_fsm_state63 = 145'd4611686018427387904;
parameter ap_ST_fsm_state64 = 145'd9223372036854775808;
parameter ap_ST_fsm_state65 = 145'd18446744073709551616;
parameter ap_ST_fsm_state66 = 145'd36893488147419103232;
parameter ap_ST_fsm_state67 = 145'd73786976294838206464;
parameter ap_ST_fsm_state68 = 145'd147573952589676412928;
parameter ap_ST_fsm_state69 = 145'd295147905179352825856;
parameter ap_ST_fsm_state70 = 145'd590295810358705651712;
parameter ap_ST_fsm_state71 = 145'd1180591620717411303424;
parameter ap_ST_fsm_state72 = 145'd2361183241434822606848;
parameter ap_ST_fsm_state73 = 145'd4722366482869645213696;
parameter ap_ST_fsm_state74 = 145'd9444732965739290427392;
parameter ap_ST_fsm_state75 = 145'd18889465931478580854784;
parameter ap_ST_fsm_state76 = 145'd37778931862957161709568;
parameter ap_ST_fsm_state77 = 145'd75557863725914323419136;
parameter ap_ST_fsm_state78 = 145'd151115727451828646838272;
parameter ap_ST_fsm_state79 = 145'd302231454903657293676544;
parameter ap_ST_fsm_state80 = 145'd604462909807314587353088;
parameter ap_ST_fsm_state81 = 145'd1208925819614629174706176;
parameter ap_ST_fsm_state82 = 145'd2417851639229258349412352;
parameter ap_ST_fsm_state83 = 145'd4835703278458516698824704;
parameter ap_ST_fsm_state84 = 145'd9671406556917033397649408;
parameter ap_ST_fsm_state85 = 145'd19342813113834066795298816;
parameter ap_ST_fsm_state86 = 145'd38685626227668133590597632;
parameter ap_ST_fsm_state87 = 145'd77371252455336267181195264;
parameter ap_ST_fsm_state88 = 145'd154742504910672534362390528;
parameter ap_ST_fsm_state89 = 145'd309485009821345068724781056;
parameter ap_ST_fsm_state90 = 145'd618970019642690137449562112;
parameter ap_ST_fsm_state91 = 145'd1237940039285380274899124224;
parameter ap_ST_fsm_state92 = 145'd2475880078570760549798248448;
parameter ap_ST_fsm_state93 = 145'd4951760157141521099596496896;
parameter ap_ST_fsm_state94 = 145'd9903520314283042199192993792;
parameter ap_ST_fsm_state95 = 145'd19807040628566084398385987584;
parameter ap_ST_fsm_state96 = 145'd39614081257132168796771975168;
parameter ap_ST_fsm_state97 = 145'd79228162514264337593543950336;
parameter ap_ST_fsm_state98 = 145'd158456325028528675187087900672;
parameter ap_ST_fsm_state99 = 145'd316912650057057350374175801344;
parameter ap_ST_fsm_state100 = 145'd633825300114114700748351602688;
parameter ap_ST_fsm_state101 = 145'd1267650600228229401496703205376;
parameter ap_ST_fsm_state102 = 145'd2535301200456458802993406410752;
parameter ap_ST_fsm_state103 = 145'd5070602400912917605986812821504;
parameter ap_ST_fsm_state104 = 145'd10141204801825835211973625643008;
parameter ap_ST_fsm_state105 = 145'd20282409603651670423947251286016;
parameter ap_ST_fsm_state106 = 145'd40564819207303340847894502572032;
parameter ap_ST_fsm_state107 = 145'd81129638414606681695789005144064;
parameter ap_ST_fsm_state108 = 145'd162259276829213363391578010288128;
parameter ap_ST_fsm_state109 = 145'd324518553658426726783156020576256;
parameter ap_ST_fsm_state110 = 145'd649037107316853453566312041152512;
parameter ap_ST_fsm_state111 = 145'd1298074214633706907132624082305024;
parameter ap_ST_fsm_state112 = 145'd2596148429267413814265248164610048;
parameter ap_ST_fsm_state113 = 145'd5192296858534827628530496329220096;
parameter ap_ST_fsm_state114 = 145'd10384593717069655257060992658440192;
parameter ap_ST_fsm_state115 = 145'd20769187434139310514121985316880384;
parameter ap_ST_fsm_state116 = 145'd41538374868278621028243970633760768;
parameter ap_ST_fsm_state117 = 145'd83076749736557242056487941267521536;
parameter ap_ST_fsm_state118 = 145'd166153499473114484112975882535043072;
parameter ap_ST_fsm_state119 = 145'd332306998946228968225951765070086144;
parameter ap_ST_fsm_state120 = 145'd664613997892457936451903530140172288;
parameter ap_ST_fsm_state121 = 145'd1329227995784915872903807060280344576;
parameter ap_ST_fsm_state122 = 145'd2658455991569831745807614120560689152;
parameter ap_ST_fsm_state123 = 145'd5316911983139663491615228241121378304;
parameter ap_ST_fsm_state124 = 145'd10633823966279326983230456482242756608;
parameter ap_ST_fsm_state125 = 145'd21267647932558653966460912964485513216;
parameter ap_ST_fsm_state126 = 145'd42535295865117307932921825928971026432;
parameter ap_ST_fsm_state127 = 145'd85070591730234615865843651857942052864;
parameter ap_ST_fsm_state128 = 145'd170141183460469231731687303715884105728;
parameter ap_ST_fsm_state129 = 145'd340282366920938463463374607431768211456;
parameter ap_ST_fsm_state130 = 145'd680564733841876926926749214863536422912;
parameter ap_ST_fsm_state131 = 145'd1361129467683753853853498429727072845824;
parameter ap_ST_fsm_state132 = 145'd2722258935367507707706996859454145691648;
parameter ap_ST_fsm_state133 = 145'd5444517870735015415413993718908291383296;
parameter ap_ST_fsm_state134 = 145'd10889035741470030830827987437816582766592;
parameter ap_ST_fsm_state135 = 145'd21778071482940061661655974875633165533184;
parameter ap_ST_fsm_state136 = 145'd43556142965880123323311949751266331066368;
parameter ap_ST_fsm_state137 = 145'd87112285931760246646623899502532662132736;
parameter ap_ST_fsm_state138 = 145'd174224571863520493293247799005065324265472;
parameter ap_ST_fsm_state139 = 145'd348449143727040986586495598010130648530944;
parameter ap_ST_fsm_state140 = 145'd696898287454081973172991196020261297061888;
parameter ap_ST_fsm_state141 = 145'd1393796574908163946345982392040522594123776;
parameter ap_ST_fsm_state142 = 145'd2787593149816327892691964784081045188247552;
parameter ap_ST_fsm_state143 = 145'd5575186299632655785383929568162090376495104;
parameter ap_ST_fsm_state144 = 145'd11150372599265311570767859136324180752990208;
parameter ap_ST_fsm_state145 = 145'd22300745198530623141535718272648361505980416;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n;
input [31:0] r;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [63:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] temptemp4;
output temptemp4_ap_vld;
output [31:0] temptemp5;
output temptemp5_ap_vld;
output [63:0] temptemp6;
output temptemp6_ap_vld;
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
(* fsm_encoding = "none" *) reg [144:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] grp_fu_217_p2;
reg [31:0] reg_251;
wire [0:0] icmp_ln40_fu_263_p2;
wire ap_CS_fsm_state74;
reg [0:0] icmp_ln40_reg_378;
wire [31:0] grp_fu_241_p3;
reg [31:0] reg_257;
wire ap_CS_fsm_state5;
wire [0:0] icmp_ln40_2_fu_292_p2;
wire ap_CS_fsm_state76;
reg [0:0] icmp_ln40_2_reg_391;
wire [0:0] icmp_ln40_1_fu_273_p2;
reg [0:0] icmp_ln40_1_reg_382;
wire ap_CS_fsm_state3;
wire [31:0] add_ln40_2_fu_278_p2;
reg [31:0] add_ln40_2_reg_386;
wire [63:0] mul_ln29_fu_302_p2;
wire ap_CS_fsm_state7;
wire [63:0] grp_fu_308_p2;
reg [63:0] result_reg_400;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_ap_ready;
wire [63:0] grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_result_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_result_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_ap_ready;
wire [63:0] grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_result_2_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_result_2_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_ap_ready;
wire [63:0] grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_result_4_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_result_4_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_ap_ready;
wire [63:0] grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_result_7_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_result_7_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_ap_ready;
wire [63:0] grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_result_9_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_result_9_out_ap_vld;
reg [63:0] result_0_lcssa_i_i_reg_128;
reg signed [63:0] result_0_lcssa_i11_i_reg_140;
reg signed [63:0] ap_phi_mux_result_0_lcssa_i23_i_phi_fu_156_p4;
reg signed [63:0] result_0_lcssa_i23_i_reg_152;
reg [63:0] result_0_lcssa_i_i11_reg_163;
reg [63:0] ap_phi_mux_result_0_lcssa_i11_i24_phi_fu_179_p4;
reg [63:0] result_0_lcssa_i11_i24_reg_175;
wire ap_CS_fsm_state78;
reg grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_ap_start_reg;
wire ap_CS_fsm_state4;
reg grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_ap_start_reg;
wire ap_CS_fsm_state6;
reg grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_ap_start_reg;
wire ap_CS_fsm_state75;
reg grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_ap_start_reg;
wire ap_CS_fsm_state77;
wire [63:0] grp_fu_322_p2;
wire ap_CS_fsm_state145;
wire [31:0] grp_fu_225_p2;
wire [31:0] grp_fu_230_p2;
wire [0:0] grp_fu_235_p2;
wire [31:0] sub_ln29_fu_288_p2;
reg grp_fu_308_ap_start;
wire grp_fu_308_ap_done;
reg grp_fu_322_ap_start;
wire grp_fu_322_ap_done;
reg [144:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
reg ap_ST_fsm_state6_blk;
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
reg ap_ST_fsm_state75_blk;
wire ap_ST_fsm_state76_blk;
reg ap_ST_fsm_state77_blk;
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
wire ap_ST_fsm_state103_blk;
wire ap_ST_fsm_state104_blk;
wire ap_ST_fsm_state105_blk;
wire ap_ST_fsm_state106_blk;
wire ap_ST_fsm_state107_blk;
wire ap_ST_fsm_state108_blk;
wire ap_ST_fsm_state109_blk;
wire ap_ST_fsm_state110_blk;
wire ap_ST_fsm_state111_blk;
wire ap_ST_fsm_state112_blk;
wire ap_ST_fsm_state113_blk;
wire ap_ST_fsm_state114_blk;
wire ap_ST_fsm_state115_blk;
wire ap_ST_fsm_state116_blk;
wire ap_ST_fsm_state117_blk;
wire ap_ST_fsm_state118_blk;
wire ap_ST_fsm_state119_blk;
wire ap_ST_fsm_state120_blk;
wire ap_ST_fsm_state121_blk;
wire ap_ST_fsm_state122_blk;
wire ap_ST_fsm_state123_blk;
wire ap_ST_fsm_state124_blk;
wire ap_ST_fsm_state125_blk;
wire ap_ST_fsm_state126_blk;
wire ap_ST_fsm_state127_blk;
wire ap_ST_fsm_state128_blk;
wire ap_ST_fsm_state129_blk;
wire ap_ST_fsm_state130_blk;
wire ap_ST_fsm_state131_blk;
wire ap_ST_fsm_state132_blk;
wire ap_ST_fsm_state133_blk;
wire ap_ST_fsm_state134_blk;
wire ap_ST_fsm_state135_blk;
wire ap_ST_fsm_state136_blk;
wire ap_ST_fsm_state137_blk;
wire ap_ST_fsm_state138_blk;
wire ap_ST_fsm_state139_blk;
wire ap_ST_fsm_state140_blk;
wire ap_ST_fsm_state141_blk;
wire ap_ST_fsm_state142_blk;
wire ap_ST_fsm_state143_blk;
wire ap_ST_fsm_state144_blk;
wire ap_ST_fsm_state145_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 145'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_40_1 grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_ap_ready),
 .add_ln40(reg_251),
 .result_out(grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_result_out),
 .result_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_result_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_40_11 grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_ap_ready),
 .add_ln40_2(add_ln40_2_reg_386),
 .result_2_out(grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_result_2_out),
 .result_2_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_result_2_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_40_12 grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_ap_ready),
 .zext_ln40(reg_257),
 .result_4_out(grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_result_4_out),
 .result_4_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_result_4_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_40_13 grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_ap_ready),
 .add_ln40_6(reg_251),
 .result_7_out(grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_result_7_out),
 .result_7_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_result_7_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_40_14 grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_ap_ready),
 .zext_ln40_1(reg_257),
 .result_9_out(grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_result_9_out),
 .result_9_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_result_9_out_ap_vld)
);
entry_point_mul_64s_64s_64_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
mul_64s_64s_64_1_1_U18(
 .din0(ap_phi_mux_result_0_lcssa_i23_i_phi_fu_156_p4),
 .din1(result_0_lcssa_i11_i_reg_140),
 .dout(mul_ln29_fu_302_p2)
);
entry_point_sdiv_64ns_64ns_64_68_seq_1 #(
 .ID( 1 ),
 .NUM_STAGE( 68 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
sdiv_64ns_64ns_64_68_seq_1_U19(
 .clk(ap_clk),
 .reset(ap_rst),
 .start(grp_fu_308_ap_start),
 .done(grp_fu_308_ap_done),
 .din0(result_0_lcssa_i_i_reg_128),
 .din1(mul_ln29_fu_302_p2),
 .ce(1'b1),
 .dout(grp_fu_308_p2)
);
entry_point_sdiv_64ns_64ns_64_68_seq_1 #(
 .ID( 1 ),
 .NUM_STAGE( 68 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
sdiv_64ns_64ns_64_68_seq_1_U20(
 .clk(ap_clk),
 .reset(ap_rst),
 .start(grp_fu_322_ap_start),
 .done(grp_fu_322_ap_done),
 .din0(result_0_lcssa_i_i11_reg_163),
 .din1(ap_phi_mux_result_0_lcssa_i11_i24_phi_fu_179_p4),
 .ce(1'b1),
 .dout(grp_fu_322_p2)
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
 grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln40_1_fu_273_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln40_2_fu_292_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state74) & (icmp_ln40_reg_378 == 1'd1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln40_2_reg_391 == 1'd1) & (1'b1 == ap_CS_fsm_state76))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state1) & (icmp_ln40_fu_263_p2 == 1'd1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln40_2_reg_391 == 1'd0) & (1'b1 == ap_CS_fsm_state76))) begin
 result_0_lcssa_i11_i24_reg_175 <= 64'd1;
 end else if (((icmp_ln40_2_reg_391 == 1'd1) & (1'b1 == ap_CS_fsm_state78))) begin
 result_0_lcssa_i11_i24_reg_175 <= grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_result_9_out;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln40_1_fu_273_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 result_0_lcssa_i11_i_reg_140 <= 64'd1;
 end else if (((icmp_ln40_1_reg_382 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
 result_0_lcssa_i11_i_reg_140 <= grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_result_2_out;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln40_2_fu_292_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
 result_0_lcssa_i23_i_reg_152 <= 64'd1;
 end else if (((icmp_ln40_2_reg_391 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
 result_0_lcssa_i23_i_reg_152 <= grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_result_4_out;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state74) & (icmp_ln40_reg_378 == 1'd0))) begin
 result_0_lcssa_i_i11_reg_163 <= 64'd1;
 end else if (((1'b1 == ap_CS_fsm_state76) & (icmp_ln40_reg_378 == 1'd1))) begin
 result_0_lcssa_i_i11_reg_163 <= grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_result_7_out;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (icmp_ln40_fu_263_p2 == 1'd0) & (ap_start == 1'b1))) begin
 result_0_lcssa_i_i_reg_128 <= 64'd1;
 end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln40_reg_378 == 1'd1))) begin
 result_0_lcssa_i_i_reg_128 <= grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_result_out;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln40_1_fu_273_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 add_ln40_2_reg_386 <= add_ln40_2_fu_278_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 icmp_ln40_1_reg_382 <= icmp_ln40_1_fu_273_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 icmp_ln40_2_reg_391 <= icmp_ln40_2_fu_292_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln40_reg_378 <= icmp_ln40_fu_263_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((((1'b1 == ap_CS_fsm_state74) & (icmp_ln40_reg_378 == 1'd1)) | ((1'b1 == ap_CS_fsm_state1) & (icmp_ln40_fu_263_p2 == 1'd1)))) begin
 reg_251 <= grp_fu_217_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((((icmp_ln40_2_reg_391 == 1'd1) & (1'b1 == ap_CS_fsm_state76)) | ((icmp_ln40_2_fu_292_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5)))) begin
 reg_257 <= grp_fu_241_p3;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state74)) begin
 result_reg_400 <= grp_fu_308_p2;
 end
end
assign ap_ST_fsm_state100_blk = 1'b0;
assign ap_ST_fsm_state101_blk = 1'b0;
assign ap_ST_fsm_state102_blk = 1'b0;
assign ap_ST_fsm_state103_blk = 1'b0;
assign ap_ST_fsm_state104_blk = 1'b0;
assign ap_ST_fsm_state105_blk = 1'b0;
assign ap_ST_fsm_state106_blk = 1'b0;
assign ap_ST_fsm_state107_blk = 1'b0;
assign ap_ST_fsm_state108_blk = 1'b0;
assign ap_ST_fsm_state109_blk = 1'b0;
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state110_blk = 1'b0;
assign ap_ST_fsm_state111_blk = 1'b0;
assign ap_ST_fsm_state112_blk = 1'b0;
assign ap_ST_fsm_state113_blk = 1'b0;
assign ap_ST_fsm_state114_blk = 1'b0;
assign ap_ST_fsm_state115_blk = 1'b0;
assign ap_ST_fsm_state116_blk = 1'b0;
assign ap_ST_fsm_state117_blk = 1'b0;
assign ap_ST_fsm_state118_blk = 1'b0;
assign ap_ST_fsm_state119_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state120_blk = 1'b0;
assign ap_ST_fsm_state121_blk = 1'b0;
assign ap_ST_fsm_state122_blk = 1'b0;
assign ap_ST_fsm_state123_blk = 1'b0;
assign ap_ST_fsm_state124_blk = 1'b0;
assign ap_ST_fsm_state125_blk = 1'b0;
assign ap_ST_fsm_state126_blk = 1'b0;
assign ap_ST_fsm_state127_blk = 1'b0;
assign ap_ST_fsm_state128_blk = 1'b0;
assign ap_ST_fsm_state129_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state130_blk = 1'b0;
assign ap_ST_fsm_state131_blk = 1'b0;
assign ap_ST_fsm_state132_blk = 1'b0;
assign ap_ST_fsm_state133_blk = 1'b0;
assign ap_ST_fsm_state134_blk = 1'b0;
assign ap_ST_fsm_state135_blk = 1'b0;
assign ap_ST_fsm_state136_blk = 1'b0;
assign ap_ST_fsm_state137_blk = 1'b0;
assign ap_ST_fsm_state138_blk = 1'b0;
assign ap_ST_fsm_state139_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state140_blk = 1'b0;
assign ap_ST_fsm_state141_blk = 1'b0;
assign ap_ST_fsm_state142_blk = 1'b0;
assign ap_ST_fsm_state143_blk = 1'b0;
assign ap_ST_fsm_state144_blk = 1'b0;
assign ap_ST_fsm_state145_blk = 1'b0;
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
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
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
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
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
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_ap_done == 1'b0)) begin
 ap_ST_fsm_state6_blk = 1'b1;
 end else begin
 ap_ST_fsm_state6_blk = 1'b0;
 end
end
assign ap_ST_fsm_state70_blk = 1'b0;
assign ap_ST_fsm_state71_blk = 1'b0;
assign ap_ST_fsm_state72_blk = 1'b0;
assign ap_ST_fsm_state73_blk = 1'b0;
assign ap_ST_fsm_state74_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_ap_done == 1'b0)) begin
 ap_ST_fsm_state75_blk = 1'b1;
 end else begin
 ap_ST_fsm_state75_blk = 1'b0;
 end
end
assign ap_ST_fsm_state76_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_ap_done == 1'b0)) begin
 ap_ST_fsm_state77_blk = 1'b1;
 end else begin
 ap_ST_fsm_state77_blk = 1'b0;
 end
end
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
 if ((1'b1 == ap_CS_fsm_state145)) begin
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
 if (((icmp_ln40_2_reg_391 == 1'd1) & (1'b1 == ap_CS_fsm_state78))) begin
 ap_phi_mux_result_0_lcssa_i11_i24_phi_fu_179_p4 = grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_result_9_out;
 end else begin
 ap_phi_mux_result_0_lcssa_i11_i24_phi_fu_179_p4 = result_0_lcssa_i11_i24_reg_175;
 end
end
always @ (*) begin
 if (((icmp_ln40_2_reg_391 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
 ap_phi_mux_result_0_lcssa_i23_i_phi_fu_156_p4 = grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_result_4_out;
 end else begin
 ap_phi_mux_result_0_lcssa_i23_i_phi_fu_156_p4 = result_0_lcssa_i23_i_reg_152;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state145)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 grp_fu_308_ap_start = 1'b1;
 end else begin
 grp_fu_308_ap_start = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state78)) begin
 grp_fu_322_ap_start = 1'b1;
 end else begin
 grp_fu_322_ap_start = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state78)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state78)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state78)) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state78)) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state78)) begin
 temptemp5_ap_vld = 1'b1;
 end else begin
 temptemp5_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state145)) begin
 temptemp6_ap_vld = 1'b1;
 end else begin
 temptemp6_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((1'b1 == ap_CS_fsm_state1) & (icmp_ln40_fu_263_p2 == 1'd0) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else if (((1'b1 == ap_CS_fsm_state1) & (icmp_ln40_fu_263_p2 == 1'd1) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((icmp_ln40_1_fu_273_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state4 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state5 : begin
 if (((icmp_ln40_2_fu_292_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 end
 ap_ST_fsm_state6 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
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
 ap_NS_fsm = ap_ST_fsm_state72;
 end
 ap_ST_fsm_state72 : begin
 ap_NS_fsm = ap_ST_fsm_state73;
 end
 ap_ST_fsm_state73 : begin
 ap_NS_fsm = ap_ST_fsm_state74;
 end
 ap_ST_fsm_state74 : begin
 if (((1'b1 == ap_CS_fsm_state74) & (icmp_ln40_reg_378 == 1'd0))) begin
 ap_NS_fsm = ap_ST_fsm_state76;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state75;
 end
 end
 ap_ST_fsm_state75 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state75))) begin
 ap_NS_fsm = ap_ST_fsm_state76;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state75;
 end
 end
 ap_ST_fsm_state76 : begin
 if (((icmp_ln40_2_reg_391 == 1'd0) & (1'b1 == ap_CS_fsm_state76))) begin
 ap_NS_fsm = ap_ST_fsm_state78;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state77;
 end
 end
 ap_ST_fsm_state77 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state77))) begin
 ap_NS_fsm = ap_ST_fsm_state78;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state77;
 end
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
 ap_NS_fsm = ap_ST_fsm_state103;
 end
 ap_ST_fsm_state103 : begin
 ap_NS_fsm = ap_ST_fsm_state104;
 end
 ap_ST_fsm_state104 : begin
 ap_NS_fsm = ap_ST_fsm_state105;
 end
 ap_ST_fsm_state105 : begin
 ap_NS_fsm = ap_ST_fsm_state106;
 end
 ap_ST_fsm_state106 : begin
 ap_NS_fsm = ap_ST_fsm_state107;
 end
 ap_ST_fsm_state107 : begin
 ap_NS_fsm = ap_ST_fsm_state108;
 end
 ap_ST_fsm_state108 : begin
 ap_NS_fsm = ap_ST_fsm_state109;
 end
 ap_ST_fsm_state109 : begin
 ap_NS_fsm = ap_ST_fsm_state110;
 end
 ap_ST_fsm_state110 : begin
 ap_NS_fsm = ap_ST_fsm_state111;
 end
 ap_ST_fsm_state111 : begin
 ap_NS_fsm = ap_ST_fsm_state112;
 end
 ap_ST_fsm_state112 : begin
 ap_NS_fsm = ap_ST_fsm_state113;
 end
 ap_ST_fsm_state113 : begin
 ap_NS_fsm = ap_ST_fsm_state114;
 end
 ap_ST_fsm_state114 : begin
 ap_NS_fsm = ap_ST_fsm_state115;
 end
 ap_ST_fsm_state115 : begin
 ap_NS_fsm = ap_ST_fsm_state116;
 end
 ap_ST_fsm_state116 : begin
 ap_NS_fsm = ap_ST_fsm_state117;
 end
 ap_ST_fsm_state117 : begin
 ap_NS_fsm = ap_ST_fsm_state118;
 end
 ap_ST_fsm_state118 : begin
 ap_NS_fsm = ap_ST_fsm_state119;
 end
 ap_ST_fsm_state119 : begin
 ap_NS_fsm = ap_ST_fsm_state120;
 end
 ap_ST_fsm_state120 : begin
 ap_NS_fsm = ap_ST_fsm_state121;
 end
 ap_ST_fsm_state121 : begin
 ap_NS_fsm = ap_ST_fsm_state122;
 end
 ap_ST_fsm_state122 : begin
 ap_NS_fsm = ap_ST_fsm_state123;
 end
 ap_ST_fsm_state123 : begin
 ap_NS_fsm = ap_ST_fsm_state124;
 end
 ap_ST_fsm_state124 : begin
 ap_NS_fsm = ap_ST_fsm_state125;
 end
 ap_ST_fsm_state125 : begin
 ap_NS_fsm = ap_ST_fsm_state126;
 end
 ap_ST_fsm_state126 : begin
 ap_NS_fsm = ap_ST_fsm_state127;
 end
 ap_ST_fsm_state127 : begin
 ap_NS_fsm = ap_ST_fsm_state128;
 end
 ap_ST_fsm_state128 : begin
 ap_NS_fsm = ap_ST_fsm_state129;
 end
 ap_ST_fsm_state129 : begin
 ap_NS_fsm = ap_ST_fsm_state130;
 end
 ap_ST_fsm_state130 : begin
 ap_NS_fsm = ap_ST_fsm_state131;
 end
 ap_ST_fsm_state131 : begin
 ap_NS_fsm = ap_ST_fsm_state132;
 end
 ap_ST_fsm_state132 : begin
 ap_NS_fsm = ap_ST_fsm_state133;
 end
 ap_ST_fsm_state133 : begin
 ap_NS_fsm = ap_ST_fsm_state134;
 end
 ap_ST_fsm_state134 : begin
 ap_NS_fsm = ap_ST_fsm_state135;
 end
 ap_ST_fsm_state135 : begin
 ap_NS_fsm = ap_ST_fsm_state136;
 end
 ap_ST_fsm_state136 : begin
 ap_NS_fsm = ap_ST_fsm_state137;
 end
 ap_ST_fsm_state137 : begin
 ap_NS_fsm = ap_ST_fsm_state138;
 end
 ap_ST_fsm_state138 : begin
 ap_NS_fsm = ap_ST_fsm_state139;
 end
 ap_ST_fsm_state139 : begin
 ap_NS_fsm = ap_ST_fsm_state140;
 end
 ap_ST_fsm_state140 : begin
 ap_NS_fsm = ap_ST_fsm_state141;
 end
 ap_ST_fsm_state141 : begin
 ap_NS_fsm = ap_ST_fsm_state142;
 end
 ap_ST_fsm_state142 : begin
 ap_NS_fsm = ap_ST_fsm_state143;
 end
 ap_ST_fsm_state143 : begin
 ap_NS_fsm = ap_ST_fsm_state144;
 end
 ap_ST_fsm_state144 : begin
 ap_NS_fsm = ap_ST_fsm_state145;
 end
 ap_ST_fsm_state145 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln40_2_fu_278_p2 = (r + 32'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state145 = ap_CS_fsm[32'd144];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state74 = ap_CS_fsm[32'd73];
assign ap_CS_fsm_state75 = ap_CS_fsm[32'd74];
assign ap_CS_fsm_state76 = ap_CS_fsm[32'd75];
assign ap_CS_fsm_state77 = ap_CS_fsm[32'd76];
assign ap_CS_fsm_state78 = ap_CS_fsm[32'd77];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_40_11_fu_193_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_40_12_fu_199_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_40_13_fu_205_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_40_14_fu_211_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_40_1_fu_187_ap_start_reg;
assign grp_fu_217_p2 = (n + 32'd1);
assign grp_fu_225_p2 = (n + 32'd1);
assign grp_fu_230_p2 = (grp_fu_225_p2 - r);
assign grp_fu_235_p2 = ((grp_fu_230_p2 != 32'd1) ? 1'b1 : 1'b0);
assign grp_fu_241_p3 = ((grp_fu_235_p2[0:0] == 1'b1) ? grp_fu_230_p2 : 32'd2);
assign icmp_ln40_1_fu_273_p2 = (($signed(r) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln40_2_fu_292_p2 = (($signed(sub_ln29_fu_288_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln40_fu_263_p2 = (($signed(n) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign sub_ln29_fu_288_p2 = (n - r);
assign temptemp1 = n;
assign temptemp2 = r;
assign temptemp3 = result_reg_400;
assign temptemp4 = n;
assign temptemp5 = r;
assign temptemp6 = grp_fu_322_p2;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_40_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 add_ln40,
 result_out,
 result_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] add_ln40;
output [63:0] result_out;
output result_out_ap_vld;
reg ap_idle;
reg result_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln40_fu_64_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg signed [63:0] result_fu_30;
wire [63:0] result_4_fu_76_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg [31:0] c_fu_34;
wire [31:0] add_ln40_1_fu_82_p2;
wire ap_block_pp0_stage0_01001;
wire [31:0] result_4_fu_76_p0;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire [63:0] result_4_fu_76_p00;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_32ns_64s_64_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
mul_32ns_64s_64_1_1_U1(
 .din0(result_4_fu_76_p0),
 .din1(result_fu_30),
 .dout(result_4_fu_76_p2)
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
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 c_fu_34 <= 32'd1;
 end else if (((icmp_ln40_fu_64_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 c_fu_34 <= add_ln40_1_fu_82_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 result_fu_30 <= 64'd1;
 end else if (((icmp_ln40_fu_64_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 result_fu_30 <= result_4_fu_76_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln40_fu_64_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln40_fu_64_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 result_out_ap_vld = 1'b1;
 end else begin
 result_out_ap_vld = 1'b0;
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
assign add_ln40_1_fu_82_p2 = (c_fu_34 + 32'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign icmp_ln40_fu_64_p2 = ((c_fu_34 == add_ln40) ? 1'b1 : 1'b0);
assign result_4_fu_76_p0 = result_4_fu_76_p00;
assign result_4_fu_76_p00 = c_fu_34;
assign result_out = result_fu_30;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_40_11 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 add_ln40_2,
 result_2_out,
 result_2_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] add_ln40_2;
output [63:0] result_2_out;
output result_2_out_ap_vld;
reg ap_idle;
reg result_2_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln40_fu_64_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg signed [63:0] result_2_fu_30;
wire [63:0] result_fu_76_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg [31:0] c_1_fu_34;
wire [31:0] add_ln40_fu_82_p2;
wire ap_block_pp0_stage0_01001;
wire [31:0] result_fu_76_p0;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire [63:0] result_fu_76_p00;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_32ns_64s_64_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
mul_32ns_64s_64_1_1_U5(
 .din0(result_fu_76_p0),
 .din1(result_2_fu_30),
 .dout(result_fu_76_p2)
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
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 c_1_fu_34 <= 32'd1;
 end else if (((icmp_ln40_fu_64_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 c_1_fu_34 <= add_ln40_fu_82_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 result_2_fu_30 <= 64'd1;
 end else if (((icmp_ln40_fu_64_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 result_2_fu_30 <= result_fu_76_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln40_fu_64_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln40_fu_64_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 result_2_out_ap_vld = 1'b1;
 end else begin
 result_2_out_ap_vld = 1'b0;
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
assign add_ln40_fu_82_p2 = (c_1_fu_34 + 32'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign icmp_ln40_fu_64_p2 = ((c_1_fu_34 == add_ln40_2) ? 1'b1 : 1'b0);
assign result_2_out = result_2_fu_30;
assign result_fu_76_p0 = result_fu_76_p00;
assign result_fu_76_p00 = c_1_fu_34;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_40_12 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 zext_ln40,
 result_4_out,
 result_4_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] zext_ln40;
output [63:0] result_4_out;
output result_4_out_ap_vld;
reg ap_idle;
reg result_4_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln40_fu_62_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] zext_ln40_cast_fu_45_p1;
reg [63:0] zext_ln40_cast_reg_111;
wire ap_block_pp0_stage0_11001;
reg signed [63:0] result_fu_24;
wire [63:0] result_3_fu_70_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg signed [63:0] c_2_fu_28;
wire [63:0] add_ln40_fu_76_p2;
wire ap_block_pp0_stage0_01001;
wire signed [63:0] icmp_ln40_fu_62_p0;
wire signed [63:0] add_ln40_fu_76_p0;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_64s_64s_64_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
mul_64s_64s_64_1_1_U8(
 .din0(c_2_fu_28),
 .din1(result_fu_24),
 .dout(result_3_fu_70_p2)
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
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 c_2_fu_28 <= 64'd1;
 end else if (((icmp_ln40_fu_62_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 c_2_fu_28 <= add_ln40_fu_76_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 result_fu_24 <= 64'd1;
 end else if (((icmp_ln40_fu_62_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 result_fu_24 <= result_3_fu_70_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 zext_ln40_cast_reg_111[31 : 0] <= zext_ln40_cast_fu_45_p1[31 : 0];
 end
end
always @ (*) begin
 if (((icmp_ln40_fu_62_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln40_fu_62_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 result_4_out_ap_vld = 1'b1;
 end else begin
 result_4_out_ap_vld = 1'b0;
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
assign add_ln40_fu_76_p0 = c_2_fu_28;
assign add_ln40_fu_76_p2 = ($signed(add_ln40_fu_76_p0) + $signed(64'd1));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign icmp_ln40_fu_62_p0 = c_2_fu_28;
assign icmp_ln40_fu_62_p2 = ((icmp_ln40_fu_62_p0 == zext_ln40_cast_reg_111) ? 1'b1 : 1'b0);
assign result_4_out = result_fu_24;
assign zext_ln40_cast_fu_45_p1 = zext_ln40;
always @ (posedge ap_clk) begin
 zext_ln40_cast_reg_111[63:32] <= 32'b00000000000000000000000000000000;
end
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_40_13 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 add_ln40_6,
 result_7_out,
 result_7_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] add_ln40_6;
output [63:0] result_7_out;
output result_7_out_ap_vld;
reg ap_idle;
reg result_7_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln40_fu_64_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg signed [63:0] result_fu_30;
wire [63:0] result_2_fu_76_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg [31:0] c_fu_34;
wire [31:0] add_ln40_fu_82_p2;
wire ap_block_pp0_stage0_01001;
wire [31:0] result_2_fu_76_p0;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire [63:0] result_2_fu_76_p00;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_32ns_64s_64_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
mul_32ns_64s_64_1_1_U12(
 .din0(result_2_fu_76_p0),
 .din1(result_fu_30),
 .dout(result_2_fu_76_p2)
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
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 c_fu_34 <= 32'd1;
 end else if (((icmp_ln40_fu_64_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 c_fu_34 <= add_ln40_fu_82_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 result_fu_30 <= 64'd1;
 end else if (((icmp_ln40_fu_64_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 result_fu_30 <= result_2_fu_76_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln40_fu_64_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln40_fu_64_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 result_7_out_ap_vld = 1'b1;
 end else begin
 result_7_out_ap_vld = 1'b0;
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
assign add_ln40_fu_82_p2 = (c_fu_34 + 32'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign icmp_ln40_fu_64_p2 = ((c_fu_34 == add_ln40_6) ? 1'b1 : 1'b0);
assign result_2_fu_76_p0 = result_2_fu_76_p00;
assign result_2_fu_76_p00 = c_fu_34;
assign result_7_out = result_fu_30;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_40_14 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 zext_ln40_1,
 result_9_out,
 result_9_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] zext_ln40_1;
output [63:0] result_9_out;
output result_9_out_ap_vld;
reg ap_idle;
reg result_9_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln40_fu_62_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] zext_ln40_1_cast_fu_45_p1;
reg [63:0] zext_ln40_1_cast_reg_111;
wire ap_block_pp0_stage0_11001;
reg signed [63:0] result_fu_24;
wire [63:0] result_1_fu_70_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg signed [63:0] c_fu_28;
wire [63:0] add_ln40_fu_76_p2;
wire ap_block_pp0_stage0_01001;
wire signed [63:0] icmp_ln40_fu_62_p0;
wire signed [63:0] add_ln40_fu_76_p0;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_64s_64s_64_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
mul_64s_64s_64_1_1_U15(
 .din0(c_fu_28),
 .din1(result_fu_24),
 .dout(result_1_fu_70_p2)
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
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 c_fu_28 <= 64'd1;
 end else if (((icmp_ln40_fu_62_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 c_fu_28 <= add_ln40_fu_76_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 result_fu_24 <= 64'd1;
 end else if (((icmp_ln40_fu_62_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 result_fu_24 <= result_1_fu_70_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 zext_ln40_1_cast_reg_111[31 : 0] <= zext_ln40_1_cast_fu_45_p1[31 : 0];
 end
end
always @ (*) begin
 if (((icmp_ln40_fu_62_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln40_fu_62_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 result_9_out_ap_vld = 1'b1;
 end else begin
 result_9_out_ap_vld = 1'b0;
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
assign add_ln40_fu_76_p0 = c_fu_28;
assign add_ln40_fu_76_p2 = ($signed(add_ln40_fu_76_p0) + $signed(64'd1));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign icmp_ln40_fu_62_p0 = c_fu_28;
assign icmp_ln40_fu_62_p2 = ((icmp_ln40_fu_62_p0 == zext_ln40_1_cast_reg_111) ? 1'b1 : 1'b0);
assign result_9_out = result_fu_24;
assign zext_ln40_1_cast_fu_45_p1 = zext_ln40_1;
always @ (posedge ap_clk) begin
 zext_ln40_1_cast_reg_111[63:32] <= 32'b00000000000000000000000000000000;
end
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
module entry_point_mul_32ns_64s_64_1_1(din0, din1, dout);
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
module entry_point_mul_64s_64s_64_1_1(din0, din1, dout);
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
module entry_point_sdiv_64ns_64ns_64_68_seq_1_divseq
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
module entry_point_sdiv_64ns_64ns_64_68_seq_1
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
entry_point_sdiv_64ns_64ns_64_68_seq_1_divseq #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_sdiv_64ns_64ns_64_68_seq_1_divseq_u (
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
