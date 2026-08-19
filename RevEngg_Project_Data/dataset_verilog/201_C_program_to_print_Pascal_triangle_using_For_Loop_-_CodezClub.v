module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 line_r,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 78'd1;
parameter ap_ST_fsm_state2 = 78'd2;
parameter ap_ST_fsm_state3 = 78'd4;
parameter ap_ST_fsm_state4 = 78'd8;
parameter ap_ST_fsm_state5 = 78'd16;
parameter ap_ST_fsm_state6 = 78'd32;
parameter ap_ST_fsm_state7 = 78'd64;
parameter ap_ST_fsm_state8 = 78'd128;
parameter ap_ST_fsm_state9 = 78'd256;
parameter ap_ST_fsm_state10 = 78'd512;
parameter ap_ST_fsm_state11 = 78'd1024;
parameter ap_ST_fsm_state12 = 78'd2048;
parameter ap_ST_fsm_state13 = 78'd4096;
parameter ap_ST_fsm_state14 = 78'd8192;
parameter ap_ST_fsm_state15 = 78'd16384;
parameter ap_ST_fsm_state16 = 78'd32768;
parameter ap_ST_fsm_state17 = 78'd65536;
parameter ap_ST_fsm_state18 = 78'd131072;
parameter ap_ST_fsm_state19 = 78'd262144;
parameter ap_ST_fsm_state20 = 78'd524288;
parameter ap_ST_fsm_state21 = 78'd1048576;
parameter ap_ST_fsm_state22 = 78'd2097152;
parameter ap_ST_fsm_state23 = 78'd4194304;
parameter ap_ST_fsm_state24 = 78'd8388608;
parameter ap_ST_fsm_state25 = 78'd16777216;
parameter ap_ST_fsm_state26 = 78'd33554432;
parameter ap_ST_fsm_state27 = 78'd67108864;
parameter ap_ST_fsm_state28 = 78'd134217728;
parameter ap_ST_fsm_state29 = 78'd268435456;
parameter ap_ST_fsm_state30 = 78'd536870912;
parameter ap_ST_fsm_state31 = 78'd1073741824;
parameter ap_ST_fsm_state32 = 78'd2147483648;
parameter ap_ST_fsm_state33 = 78'd4294967296;
parameter ap_ST_fsm_state34 = 78'd8589934592;
parameter ap_ST_fsm_state35 = 78'd17179869184;
parameter ap_ST_fsm_state36 = 78'd34359738368;
parameter ap_ST_fsm_state37 = 78'd68719476736;
parameter ap_ST_fsm_state38 = 78'd137438953472;
parameter ap_ST_fsm_state39 = 78'd274877906944;
parameter ap_ST_fsm_state40 = 78'd549755813888;
parameter ap_ST_fsm_state41 = 78'd1099511627776;
parameter ap_ST_fsm_state42 = 78'd2199023255552;
parameter ap_ST_fsm_state43 = 78'd4398046511104;
parameter ap_ST_fsm_state44 = 78'd8796093022208;
parameter ap_ST_fsm_state45 = 78'd17592186044416;
parameter ap_ST_fsm_state46 = 78'd35184372088832;
parameter ap_ST_fsm_state47 = 78'd70368744177664;
parameter ap_ST_fsm_state48 = 78'd140737488355328;
parameter ap_ST_fsm_state49 = 78'd281474976710656;
parameter ap_ST_fsm_state50 = 78'd562949953421312;
parameter ap_ST_fsm_state51 = 78'd1125899906842624;
parameter ap_ST_fsm_state52 = 78'd2251799813685248;
parameter ap_ST_fsm_state53 = 78'd4503599627370496;
parameter ap_ST_fsm_state54 = 78'd9007199254740992;
parameter ap_ST_fsm_state55 = 78'd18014398509481984;
parameter ap_ST_fsm_state56 = 78'd36028797018963968;
parameter ap_ST_fsm_state57 = 78'd72057594037927936;
parameter ap_ST_fsm_state58 = 78'd144115188075855872;
parameter ap_ST_fsm_state59 = 78'd288230376151711744;
parameter ap_ST_fsm_state60 = 78'd576460752303423488;
parameter ap_ST_fsm_state61 = 78'd1152921504606846976;
parameter ap_ST_fsm_state62 = 78'd2305843009213693952;
parameter ap_ST_fsm_state63 = 78'd4611686018427387904;
parameter ap_ST_fsm_state64 = 78'd9223372036854775808;
parameter ap_ST_fsm_state65 = 78'd18446744073709551616;
parameter ap_ST_fsm_state66 = 78'd36893488147419103232;
parameter ap_ST_fsm_state67 = 78'd73786976294838206464;
parameter ap_ST_fsm_state68 = 78'd147573952589676412928;
parameter ap_ST_fsm_state69 = 78'd295147905179352825856;
parameter ap_ST_fsm_state70 = 78'd590295810358705651712;
parameter ap_ST_fsm_state71 = 78'd1180591620717411303424;
parameter ap_ST_fsm_state72 = 78'd2361183241434822606848;
parameter ap_ST_fsm_state73 = 78'd4722366482869645213696;
parameter ap_ST_fsm_state74 = 78'd9444732965739290427392;
parameter ap_ST_fsm_state75 = 78'd18889465931478580854784;
parameter ap_ST_fsm_state76 = 78'd37778931862957161709568;
parameter ap_ST_fsm_state77 = 78'd75557863725914323419136;
parameter ap_ST_fsm_state78 = 78'd151115727451828646838272;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] line_r;
output [63:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [77:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [0:0] icmp_ln8_fu_175_p2;
reg [0:0] icmp_ln8_reg_376;
wire [30:0] trunc_ln8_fu_181_p1;
reg [30:0] trunc_ln8_reg_412;
wire [30:0] add_ln8_fu_206_p2;
reg [30:0] add_ln8_reg_423;
wire ap_CS_fsm_state2;
wire [31:0] zext_ln8_fu_216_p1;
reg [31:0] zext_ln8_reg_428;
wire [0:0] icmp_ln8_1_fu_201_p2;
wire [30:0] select_ln23_fu_232_p3;
reg [30:0] select_ln23_reg_436;
wire [0:0] icmp_ln23_fu_220_p2;
wire [63:0] mul_ln13_fu_250_p2;
wire [30:0] add_ln11_fu_275_p2;
reg [30:0] add_ln11_reg_457;
wire ap_CS_fsm_state6;
wire [30:0] trunc_ln5_fu_281_p1;
reg [30:0] trunc_ln5_reg_462;
wire [0:0] icmp_ln11_fu_270_p2;
wire [0:0] icmp_ln23_2_fu_291_p2;
reg [0:0] icmp_ln23_2_reg_467;
wire [31:0] select_ln23_1_fu_325_p3;
reg [31:0] select_ln23_1_reg_474;
wire ap_CS_fsm_state8;
wire [31:0] add_ln11_1_fu_337_p2;
reg [31:0] add_ln11_1_reg_482;
wire ap_CS_fsm_state10;
wire [31:0] add_ln11_2_fu_343_p2;
reg [31:0] add_ln11_2_reg_487;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_ap_ready;
wire [63:0] grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_f_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_f_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_ap_ready;
wire [63:0] grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_f_2_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_f_2_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_ap_ready;
wire [63:0] grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_f_4_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_f_4_out_ap_vld;
reg [63:0] f_0_lcssa_i_reg_101;
wire ap_CS_fsm_state4;
reg [31:0] indvars_iv9_reg_113;
wire ap_CS_fsm_state11;
wire ap_CS_fsm_state5;
reg [31:0] indvars_iv46_reg_125;
reg [30:0] j_reg_135;
reg [63:0] f_0_lcssa_i28_reg_146;
reg grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_ap_start_reg;
wire ap_CS_fsm_state3;
reg grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_ap_start_reg;
wire ap_CS_fsm_state7;
reg grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_ap_start_reg;
wire ap_CS_fsm_state9;
reg [63:0] f_0_lcssa_i_phi_fu_68;
reg [30:0] i_3_fu_72;
reg signed [63:0] f_0_lcssa_i16_lcssa_phi_fu_76;
reg signed [63:0] f_0_lcssa_i28_lcssa_phi_fu_80;
reg [31:0] indvars_iv39_fu_84;
wire [31:0] add_ln8_1_fu_297_p2;
wire [63:0] grp_fu_256_p2;
wire ap_CS_fsm_state78;
wire [0:0] icmp_ln23_1_fu_226_p2;
wire [30:0] trunc_ln8_1_fu_212_p1;
wire [31:0] zext_ln11_fu_266_p1;
wire [31:0] sub_ln13_fu_286_p2;
wire [0:0] icmp_ln23_3_fu_319_p2;
reg grp_fu_256_ap_start;
wire grp_fu_256_ap_done;
reg [77:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ST_fsm_state6_blk;
reg ap_ST_fsm_state7_blk;
wire ap_ST_fsm_state8_blk;
reg ap_ST_fsm_state9_blk;
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
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 78'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_23_1 grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_ap_ready),
 .select_ln23(select_ln23_reg_436),
 .f_out(grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_f_out),
 .f_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_f_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_23_11 grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_ap_ready),
 .zext_ln11(trunc_ln5_reg_462),
 .f_2_out(grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_f_2_out),
 .f_2_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_f_2_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_23_12 grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_ap_ready),
 .sext_ln23(select_ln23_1_reg_474),
 .f_4_out(grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_f_4_out),
 .f_4_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_f_4_out_ap_vld)
);
entry_point_mul_64s_64s_64_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
mul_64s_64s_64_1_1_U12(
 .din0(f_0_lcssa_i28_lcssa_phi_fu_80),
 .din1(f_0_lcssa_i16_lcssa_phi_fu_76),
 .dout(mul_ln13_fu_250_p2)
);
entry_point_sdiv_64ns_64ns_64_68_seq_1 #(
 .ID( 1 ),
 .NUM_STAGE( 68 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
sdiv_64ns_64ns_64_68_seq_1_U13(
 .clk(ap_clk),
 .reset(ap_rst),
 .start(grp_fu_256_ap_start),
 .done(grp_fu_256_ap_done),
 .din0(f_0_lcssa_i_phi_fu_68),
 .din1(mul_ln13_fu_250_p2),
 .ce(1'b1),
 .dout(grp_fu_256_p2)
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
 grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln11_fu_270_p2 == 1'd0))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln23_2_reg_467 == 1'd1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln23_fu_220_p2 == 1'd0) & (icmp_ln8_1_fu_201_p2 == 1'd0))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln23_2_reg_467 == 1'd0))) begin
 f_0_lcssa_i28_reg_146 <= 64'd1;
 end else if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln23_2_reg_467 == 1'd1))) begin
 f_0_lcssa_i28_reg_146 <= grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_f_4_out;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln23_fu_220_p2 == 1'd1) & (icmp_ln8_1_fu_201_p2 == 1'd0))) begin
 f_0_lcssa_i_reg_101 <= 64'd1;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 f_0_lcssa_i_reg_101 <= grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_f_out;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln8_fu_175_p2 == 1'd1))) begin
 i_3_fu_72 <= 31'd0;
 end else if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln11_fu_270_p2 == 1'd1))) begin
 i_3_fu_72 <= add_ln8_reg_423;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln8_fu_175_p2 == 1'd1))) begin
 indvars_iv39_fu_84 <= 32'd1;
 end else if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln11_fu_270_p2 == 1'd1))) begin
 indvars_iv39_fu_84 <= add_ln8_1_fu_297_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 indvars_iv46_reg_125 <= indvars_iv39_fu_84;
 end else if ((1'b1 == ap_CS_fsm_state11)) begin
 indvars_iv46_reg_125 <= add_ln11_1_reg_482;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 indvars_iv9_reg_113 <= 32'd1;
 end else if ((1'b1 == ap_CS_fsm_state11)) begin
 indvars_iv9_reg_113 <= add_ln11_2_reg_487;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 j_reg_135 <= 31'd0;
 end else if ((1'b1 == ap_CS_fsm_state11)) begin
 j_reg_135 <= add_ln11_reg_457;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state10)) begin
 add_ln11_1_reg_482 <= add_ln11_1_fu_337_p2;
 add_ln11_2_reg_487 <= add_ln11_2_fu_343_p2;
 f_0_lcssa_i16_lcssa_phi_fu_76 <= grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_f_2_out;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 add_ln11_reg_457 <= add_ln11_fu_275_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 add_ln8_reg_423 <= add_ln8_fu_206_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state11)) begin
 f_0_lcssa_i28_lcssa_phi_fu_80 <= f_0_lcssa_i28_reg_146;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln11_fu_270_p2 == 1'd1))) begin
 f_0_lcssa_i_phi_fu_68 <= f_0_lcssa_i_reg_101;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln11_fu_270_p2 == 1'd0))) begin
 icmp_ln23_2_reg_467 <= icmp_ln23_2_fu_291_p2;
 trunc_ln5_reg_462 <= trunc_ln5_fu_281_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln8_reg_376 <= icmp_ln8_fu_175_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln23_2_reg_467 == 1'd1))) begin
 select_ln23_1_reg_474 <= select_ln23_1_fu_325_p3;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln23_fu_220_p2 == 1'd0) & (icmp_ln8_1_fu_201_p2 == 1'd0))) begin
 select_ln23_reg_436 <= select_ln23_fu_232_p3;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (icmp_ln8_fu_175_p2 == 1'd1))) begin
 trunc_ln8_reg_412 <= trunc_ln8_fu_181_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln8_1_fu_201_p2 == 1'd0))) begin
 zext_ln8_reg_428[30 : 0] <= zext_ln8_fu_216_p1[30 : 0];
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
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_ap_done == 1'b0)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
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
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_ap_done == 1'b0)) begin
 ap_ST_fsm_state7_blk = 1'b1;
 end else begin
 ap_ST_fsm_state7_blk = 1'b0;
 end
end
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_ap_done == 1'b0)) begin
 ap_ST_fsm_state9_blk = 1'b1;
 end else begin
 ap_ST_fsm_state9_blk = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state78)) begin
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
 if ((1'b1 == ap_CS_fsm_state78)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln8_1_fu_201_p2 == 1'd1))) begin
 grp_fu_256_ap_start = 1'b1;
 end else begin
 grp_fu_256_ap_start = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state78) & (icmp_ln8_reg_376 == 1'd1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln8_fu_175_p2 == 1'd1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (icmp_ln8_fu_175_p2 == 1'd0))) begin
 ap_NS_fsm = ap_ST_fsm_state78;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln23_fu_220_p2 == 1'd1) & (icmp_ln8_1_fu_201_p2 == 1'd0))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln23_fu_220_p2 == 1'd0) & (icmp_ln8_1_fu_201_p2 == 1'd0))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state12;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((1'b1 == ap_CS_fsm_state3) & (grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_ap_done == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state4 : begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 ap_ST_fsm_state6 : begin
 if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln11_fu_270_p2 == 1'd1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end
 end
 ap_ST_fsm_state7 : begin
 if (((1'b1 == ap_CS_fsm_state7) & (grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_ap_done == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state8;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end
 end
 ap_ST_fsm_state8 : begin
 if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln23_2_reg_467 == 1'd0))) begin
 ap_NS_fsm = ap_ST_fsm_state10;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state9;
 end
 end
 ap_ST_fsm_state9 : begin
 if (((1'b1 == ap_CS_fsm_state9) & (grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_ap_done == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state10;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state9;
 end
 end
 ap_ST_fsm_state10 : begin
 ap_NS_fsm = ap_ST_fsm_state11;
 end
 ap_ST_fsm_state11 : begin
 ap_NS_fsm = ap_ST_fsm_state6;
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln11_1_fu_337_p2 = ($signed(indvars_iv46_reg_125) + $signed(32'd4294967295));
assign add_ln11_2_fu_343_p2 = (indvars_iv9_reg_113 + 32'd1);
assign add_ln11_fu_275_p2 = (j_reg_135 + 31'd1);
assign add_ln8_1_fu_297_p2 = (indvars_iv39_fu_84 + 32'd1);
assign add_ln8_fu_206_p2 = (i_3_fu_72 + 31'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state78 = ap_CS_fsm[32'd77];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_23_11_fu_163_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_23_12_fu_169_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_23_1_fu_157_ap_start_reg;
assign icmp_ln11_fu_270_p2 = ((zext_ln11_fu_266_p1 == indvars_iv39_fu_84) ? 1'b1 : 1'b0);
assign icmp_ln23_1_fu_226_p2 = ((indvars_iv39_fu_84 != 32'd1) ? 1'b1 : 1'b0);
assign icmp_ln23_2_fu_291_p2 = (($signed(sub_ln13_fu_286_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln23_3_fu_319_p2 = ((indvars_iv46_reg_125 != 32'd1) ? 1'b1 : 1'b0);
assign icmp_ln23_fu_220_p2 = ((i_3_fu_72 == 31'd0) ? 1'b1 : 1'b0);
assign icmp_ln8_1_fu_201_p2 = ((i_3_fu_72 == trunc_ln8_reg_412) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_175_p2 = (($signed(line_r) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign select_ln23_1_fu_325_p3 = ((icmp_ln23_3_fu_319_p2[0:0] == 1'b1) ? indvars_iv46_reg_125 : 32'd2);
assign select_ln23_fu_232_p3 = ((icmp_ln23_1_fu_226_p2[0:0] == 1'b1) ? trunc_ln8_1_fu_212_p1 : 31'd2);
assign sub_ln13_fu_286_p2 = (zext_ln8_reg_428 - zext_ln11_fu_266_p1);
assign temptemp1 = grp_fu_256_p2;
assign trunc_ln5_fu_281_p1 = indvars_iv9_reg_113[30:0];
assign trunc_ln8_1_fu_212_p1 = indvars_iv39_fu_84[30:0];
assign trunc_ln8_fu_181_p1 = line_r[30:0];
assign zext_ln11_fu_266_p1 = j_reg_135;
assign zext_ln8_fu_216_p1 = i_3_fu_72;
always @ (posedge ap_clk) begin
 zext_ln8_reg_428[31] <= 1'b0;
end
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_23_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 select_ln23,
 f_out,
 f_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] select_ln23;
output [63:0] f_out;
output f_out_ap_vld;
reg ap_idle;
reg f_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln23_fu_60_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg signed [63:0] f_fu_26;
wire [63:0] f_3_fu_72_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg [30:0] i_fu_30;
wire [30:0] add_ln25_fu_78_p2;
wire ap_block_pp0_stage0_01001;
wire [30:0] f_3_fu_72_p0;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire [63:0] f_3_fu_72_p00;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_31ns_64s_64_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 31 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
mul_31ns_64s_64_1_1_U1(
 .din0(f_3_fu_72_p0),
 .din1(f_fu_26),
 .dout(f_3_fu_72_p2)
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
 f_fu_26 <= 64'd1;
 end else if (((icmp_ln23_fu_60_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 f_fu_26 <= f_3_fu_72_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_fu_30 <= 31'd1;
 end else if (((icmp_ln23_fu_60_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_fu_30 <= add_ln25_fu_78_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln23_fu_60_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln23_fu_60_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 f_out_ap_vld = 1'b1;
 end else begin
 f_out_ap_vld = 1'b0;
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
assign add_ln25_fu_78_p2 = (i_fu_30 + 31'd1);
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
assign f_3_fu_72_p0 = f_3_fu_72_p00;
assign f_3_fu_72_p00 = i_fu_30;
assign f_out = f_fu_26;
assign icmp_ln23_fu_60_p2 = ((i_fu_30 == select_ln23) ? 1'b1 : 1'b0);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_23_11 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 zext_ln11,
 f_2_out,
 f_2_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] zext_ln11;
output [63:0] f_2_out;
output f_2_out_ap_vld;
reg ap_idle;
reg f_2_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln23_fu_70_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg signed [63:0] f_fu_32;
wire [63:0] f_2_fu_78_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg [30:0] i_1_fu_36;
wire [30:0] add_ln25_fu_84_p2;
wire ap_block_pp0_stage0_01001;
wire [30:0] f_2_fu_78_p0;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire [63:0] f_2_fu_78_p00;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_31ns_64s_64_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 31 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
mul_31ns_64s_64_1_1_U5(
 .din0(f_2_fu_78_p0),
 .din1(f_fu_32),
 .dout(f_2_fu_78_p2)
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
 f_fu_32 <= 64'd1;
 end else if (((icmp_ln23_fu_70_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 f_fu_32 <= f_2_fu_78_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_1_fu_36 <= 31'd1;
 end else if (((icmp_ln23_fu_70_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_1_fu_36 <= add_ln25_fu_84_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln23_fu_70_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln23_fu_70_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 f_2_out_ap_vld = 1'b1;
 end else begin
 f_2_out_ap_vld = 1'b0;
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
assign add_ln25_fu_84_p2 = (i_1_fu_36 + 31'd1);
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
assign f_2_fu_78_p0 = f_2_fu_78_p00;
assign f_2_fu_78_p00 = i_1_fu_36;
assign f_2_out = f_fu_32;
assign icmp_ln23_fu_70_p2 = ((i_1_fu_36 == zext_ln11) ? 1'b1 : 1'b0);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_23_12 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 sext_ln23,
 f_4_out,
 f_4_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] sext_ln23;
output [63:0] f_4_out;
output f_4_out_ap_vld;
reg ap_idle;
reg f_4_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln23_fu_62_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire signed [63:0] sext_ln23_cast_fu_45_p1;
reg signed [63:0] sext_ln23_cast_reg_111;
wire ap_block_pp0_stage0_11001;
reg signed [63:0] f_fu_24;
wire [63:0] f_1_fu_70_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg signed [63:0] i_fu_28;
wire [63:0] add_ln25_fu_76_p2;
wire ap_block_pp0_stage0_01001;
wire signed [63:0] icmp_ln23_fu_62_p0;
wire signed [63:0] add_ln25_fu_76_p0;
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
 .din0(i_fu_28),
 .din1(f_fu_24),
 .dout(f_1_fu_70_p2)
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
 f_fu_24 <= 64'd1;
 end else if (((icmp_ln23_fu_62_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 f_fu_24 <= f_1_fu_70_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_fu_28 <= 64'd1;
 end else if (((icmp_ln23_fu_62_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_fu_28 <= add_ln25_fu_76_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 sext_ln23_cast_reg_111 <= sext_ln23_cast_fu_45_p1;
 end
end
always @ (*) begin
 if (((icmp_ln23_fu_62_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln23_fu_62_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 f_4_out_ap_vld = 1'b1;
 end else begin
 f_4_out_ap_vld = 1'b0;
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
assign add_ln25_fu_76_p0 = i_fu_28;
assign add_ln25_fu_76_p2 = ($signed(add_ln25_fu_76_p0) + $signed(64'd1));
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
assign f_4_out = f_fu_24;
assign icmp_ln23_fu_62_p0 = i_fu_28;
assign icmp_ln23_fu_62_p2 = ((icmp_ln23_fu_62_p0 == sext_ln23_cast_reg_111) ? 1'b1 : 1'b0);
assign sext_ln23_cast_fu_45_p1 = $signed(sext_ln23);
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
module entry_point_mul_31ns_64s_64_1_1(din0, din1, dout);
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
