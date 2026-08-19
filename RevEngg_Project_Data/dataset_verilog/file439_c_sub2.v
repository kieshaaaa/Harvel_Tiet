module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 number,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
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
input [31:0] number;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [6:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [5:0] mask_table_1_address0;
reg mask_table_1_ce0;
wire [51:0] mask_table_1_q0;
wire [5:0] mask_table_address0;
reg mask_table_ce0;
wire [51:0] mask_table_q0;
wire [63:0] dc_1_fu_121_p1;
reg [63:0] dc_1_reg_567;
wire [63:0] data_V_2_fu_134_p1;
reg [63:0] data_V_2_reg_573;
reg [0:0] p_Result_4_reg_578;
reg [10:0] xs_exp_V_7_reg_586;
wire [51:0] xs_sig_V_9_fu_156_p1;
reg [51:0] xs_sig_V_9_reg_594;
wire [62:0] trunc_ln368_1_fu_175_p1;
reg [62:0] trunc_ln368_1_reg_605;
wire [0:0] icmp_ln1035_2_fu_179_p2;
reg [0:0] icmp_ln1035_2_reg_610;
wire ap_CS_fsm_state2;
wire [0:0] icmp_ln1035_3_fu_184_p2;
reg [0:0] icmp_ln1035_3_reg_615;
wire [63:0] select_ln1035_2_fu_323_p3;
reg [63:0] select_ln1035_2_reg_620;
wire [63:0] grp_fu_124_p2;
reg [63:0] dc_reg_625;
wire ap_CS_fsm_state4;
wire [63:0] data_V_fu_353_p1;
reg [63:0] data_V_reg_631;
wire ap_CS_fsm_state5;
reg [0:0] p_Result_s_reg_636;
reg [10:0] xs_exp_V_5_reg_644;
wire [51:0] xs_sig_V_7_fu_374_p1;
reg [51:0] xs_sig_V_7_reg_652;
wire [62:0] trunc_ln368_fu_393_p1;
reg [62:0] trunc_ln368_reg_663;
wire [0:0] icmp_ln1035_fu_397_p2;
reg [0:0] icmp_ln1035_reg_668;
wire ap_CS_fsm_state6;
wire [0:0] icmp_ln1035_1_fu_402_p2;
reg [0:0] icmp_ln1035_1_reg_673;
wire [63:0] select_ln19_fu_537_p3;
reg [63:0] select_ln19_reg_678;
wire [63:0] zext_ln541_1_fu_170_p1;
wire [63:0] zext_ln541_fu_388_p1;
wire ap_CS_fsm_state3;
wire ap_CS_fsm_state7;
reg [63:0] grp_fu_118_p0;
wire [63:0] select_ln1035_3_fu_341_p3;
wire [63:0] select_ln1035_1_fu_555_p3;
wire [31:0] dc_1_fu_121_p0;
wire [5:0] index_1_fu_160_p4;
wire [0:0] icmp_ln1019_fu_189_p2;
wire [0:0] icmp_ln1019_1_fu_194_p2;
wire [63:0] p_Result_5_fu_209_p3;
wire [63:0] zext_ln30_fu_205_p1;
wire [63:0] p_Result_6_fu_220_p3;
wire [63:0] data_V_3_fu_227_p2;
wire [63:0] or_ln779_fu_247_p2;
wire [10:0] xs_exp_V_3_fu_233_p4;
wire [51:0] xs_sig_V_4_fu_243_p1;
wire [51:0] xs_sig_V_5_fu_266_p3;
wire [51:0] xor_ln1497_1_fu_272_p2;
wire [0:0] xs_sign_V_4_fu_252_p3;
wire [10:0] xs_exp_V_8_fu_260_p3;
wire [51:0] xs_sig_V_10_fu_278_p2;
wire [63:0] p_Result_7_fu_284_p4;
wire [0:0] and_ln21_fu_199_p2;
wire [0:0] or_ln21_fu_298_p2;
wire [0:0] and_ln21_1_fu_303_p2;
wire [63:0] bitcast_ln526_fu_216_p1;
wire [0:0] or_ln1035_1_fu_317_p2;
wire [63:0] select_ln21_fu_309_p3;
wire [63:0] bitcast_ln526_1_fu_294_p1;
wire [0:0] xor_ln1035_1_fu_331_p2;
wire [0:0] and_ln1035_1_fu_336_p2;
wire [31:0] grp_fu_118_p1;
wire [5:0] index_fu_378_p4;
wire [63:0] zext_ln28_fu_414_p1;
wire [63:0] p_Result_2_fu_418_p3;
wire [63:0] data_V_1_fu_425_p2;
wire [63:0] and_ln779_fu_445_p2;
wire [10:0] xs_exp_V_fu_431_p4;
wire [51:0] xs_sig_V_fu_441_p1;
wire [51:0] xs_sig_V_1_fu_464_p3;
wire [51:0] xor_ln1497_fu_470_p2;
wire [0:0] xs_sign_V_1_fu_450_p3;
wire [10:0] xs_exp_V_6_fu_458_p3;
wire [51:0] xs_sig_V_8_fu_476_p2;
wire [0:0] or_ln1035_fu_492_p2;
wire [63:0] p_Result_1_fu_407_p3;
wire [63:0] p_Result_3_fu_482_p4;
wire [63:0] select_ln1035_fu_498_p3;
wire [0:0] icmp_ln19_1_fu_515_p2;
wire [0:0] icmp_ln19_fu_510_p2;
wire [0:0] or_ln19_fu_520_p2;
wire [0:0] and_ln19_fu_526_p2;
wire [0:0] and_ln19_1_fu_531_p2;
wire [63:0] bitcast_ln1035_fu_506_p1;
wire [0:0] xor_ln1035_fu_545_p2;
wire [0:0] and_ln1035_fu_550_p2;
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
entry_point_mask_table_1_ROM_AUTO_1R #(
 .DataWidth( 52 ),
 .AddressRange( 64 ),
 .AddressWidth( 6 ))
mask_table_1_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(mask_table_1_address0),
 .ce0(mask_table_1_ce0),
 .q0(mask_table_1_q0)
);
entry_point_mask_table_1_ROM_AUTO_1R #(
 .DataWidth( 52 ),
 .AddressRange( 64 ),
 .AddressWidth( 6 ))
mask_table_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(mask_table_address0),
 .ce0(mask_table_ce0),
 .q0(mask_table_q0)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U1(
 .din0(grp_fu_118_p0),
 .dout(grp_fu_118_p1)
);
entry_point_fpext_32ns_64_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
fpext_32ns_64_1_no_dsp_1_U2(
 .din0(dc_1_fu_121_p0),
 .dout(dc_1_fu_121_p1)
);
entry_point_dadd_64ns_64ns_64_3_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 3 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dadd_64ns_64ns_64_3_full_dsp_1_U3(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(dc_1_reg_567),
 .din1(64'd0),
 .ce(1'b1),
 .dout(grp_fu_124_p2)
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
 data_V_2_reg_573 <= data_V_2_fu_134_p1;
 dc_1_reg_567 <= dc_1_fu_121_p1;
 p_Result_4_reg_578 <= data_V_2_fu_134_p1[32'd63];
 trunc_ln368_1_reg_605 <= trunc_ln368_1_fu_175_p1;
 xs_exp_V_7_reg_586 <= {{data_V_2_fu_134_p1[62:52]}};
 xs_sig_V_9_reg_594 <= xs_sig_V_9_fu_156_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 data_V_reg_631 <= data_V_fu_353_p1;
 p_Result_s_reg_636 <= data_V_fu_353_p1[32'd63];
 trunc_ln368_reg_663 <= trunc_ln368_fu_393_p1;
 xs_exp_V_5_reg_644 <= {{data_V_fu_353_p1[62:52]}};
 xs_sig_V_7_reg_652 <= xs_sig_V_7_fu_374_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 dc_reg_625 <= grp_fu_124_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 icmp_ln1035_1_reg_673 <= icmp_ln1035_1_fu_402_p2;
 icmp_ln1035_reg_668 <= icmp_ln1035_fu_397_p2;
 select_ln19_reg_678 <= select_ln19_fu_537_p3;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 icmp_ln1035_2_reg_610 <= icmp_ln1035_2_fu_179_p2;
 icmp_ln1035_3_reg_615 <= icmp_ln1035_3_fu_184_p2;
 select_ln1035_2_reg_620 <= select_ln1035_2_fu_323_p3;
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
 if ((1'b1 == ap_CS_fsm_state7)) begin
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
 grp_fu_118_p0 = select_ln1035_1_fu_555_p3;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_fu_118_p0 = select_ln1035_3_fu_341_p3;
 end else begin
 grp_fu_118_p0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 mask_table_1_ce0 = 1'b1;
 end else begin
 mask_table_1_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 mask_table_ce0 = 1'b1;
 end else begin
 mask_table_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign and_ln1035_1_fu_336_p2 = (xor_ln1035_1_fu_331_p2 & icmp_ln1035_3_reg_615);
assign and_ln1035_fu_550_p2 = (xor_ln1035_fu_545_p2 & icmp_ln1035_1_reg_673);
assign and_ln19_1_fu_531_p2 = (icmp_ln1035_fu_397_p2 & and_ln19_fu_526_p2);
assign and_ln19_fu_526_p2 = (p_Result_s_reg_636 & or_ln19_fu_520_p2);
assign and_ln21_1_fu_303_p2 = (or_ln21_fu_298_p2 & icmp_ln1035_2_fu_179_p2);
assign and_ln21_fu_199_p2 = (icmp_ln1019_fu_189_p2 & icmp_ln1019_1_fu_194_p2);
assign and_ln779_fu_445_p2 = (data_V_reg_631 & data_V_1_fu_425_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_return = 32'd0;
assign bitcast_ln1035_fu_506_p1 = select_ln1035_fu_498_p3;
assign bitcast_ln526_1_fu_294_p1 = p_Result_7_fu_284_p4;
assign bitcast_ln526_fu_216_p1 = p_Result_5_fu_209_p3;
assign data_V_1_fu_425_p2 = (zext_ln28_fu_414_p1 + p_Result_2_fu_418_p3);
assign data_V_2_fu_134_p1 = dc_1_fu_121_p1;
assign data_V_3_fu_227_p2 = (zext_ln30_fu_205_p1 + p_Result_6_fu_220_p3);
assign data_V_fu_353_p1 = dc_reg_625;
assign dc_1_fu_121_p0 = number;
assign icmp_ln1019_1_fu_194_p2 = ((xs_exp_V_7_reg_586 == 11'd0) ? 1'b1 : 1'b0);
assign icmp_ln1019_fu_189_p2 = ((xs_sig_V_9_reg_594 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln1035_1_fu_402_p2 = ((xs_exp_V_5_reg_644 > 11'd1075) ? 1'b1 : 1'b0);
assign icmp_ln1035_2_fu_179_p2 = ((xs_exp_V_7_reg_586 < 11'd1023) ? 1'b1 : 1'b0);
assign icmp_ln1035_3_fu_184_p2 = ((xs_exp_V_7_reg_586 > 11'd1075) ? 1'b1 : 1'b0);
assign icmp_ln1035_fu_397_p2 = ((xs_exp_V_5_reg_644 < 11'd1023) ? 1'b1 : 1'b0);
assign icmp_ln19_1_fu_515_p2 = ((xs_exp_V_5_reg_644 != 11'd0) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_510_p2 = ((xs_sig_V_7_reg_652 != 52'd0) ? 1'b1 : 1'b0);
assign index_1_fu_160_p4 = {{data_V_2_fu_134_p1[57:52]}};
assign index_fu_378_p4 = {{data_V_fu_353_p1[57:52]}};
assign mask_table_1_address0 = zext_ln541_fu_388_p1;
assign mask_table_address0 = zext_ln541_1_fu_170_p1;
assign or_ln1035_1_fu_317_p2 = (icmp_ln1035_3_fu_184_p2 | icmp_ln1035_2_fu_179_p2);
assign or_ln1035_fu_492_p2 = (icmp_ln1035_fu_397_p2 | icmp_ln1035_1_fu_402_p2);
assign or_ln19_fu_520_p2 = (icmp_ln19_fu_510_p2 | icmp_ln19_1_fu_515_p2);
assign or_ln21_fu_298_p2 = (p_Result_4_reg_578 | and_ln21_fu_199_p2);
assign or_ln779_fu_247_p2 = (data_V_3_fu_227_p2 | data_V_2_reg_573);
assign p_Result_1_fu_407_p3 = {{p_Result_s_reg_636}, {63'd0}};
assign p_Result_2_fu_418_p3 = {{1'd1}, {trunc_ln368_reg_663}};
assign p_Result_3_fu_482_p4 = {{{xs_sign_V_1_fu_450_p3}, {xs_exp_V_6_fu_458_p3}}, {xs_sig_V_8_fu_476_p2}};
assign p_Result_5_fu_209_p3 = {{p_Result_4_reg_578}, {63'd0}};
assign p_Result_6_fu_220_p3 = {{1'd0}, {trunc_ln368_1_reg_605}};
assign p_Result_7_fu_284_p4 = {{{xs_sign_V_4_fu_252_p3}, {xs_exp_V_8_fu_260_p3}}, {xs_sig_V_10_fu_278_p2}};
assign select_ln1035_1_fu_555_p3 = ((and_ln1035_fu_550_p2[0:0] == 1'b1) ? dc_reg_625 : select_ln19_reg_678);
assign select_ln1035_2_fu_323_p3 = ((or_ln1035_1_fu_317_p2[0:0] == 1'b1) ? select_ln21_fu_309_p3 : bitcast_ln526_1_fu_294_p1);
assign select_ln1035_3_fu_341_p3 = ((and_ln1035_1_fu_336_p2[0:0] == 1'b1) ? dc_1_reg_567 : select_ln1035_2_reg_620);
assign select_ln1035_fu_498_p3 = ((or_ln1035_fu_492_p2[0:0] == 1'b1) ? p_Result_1_fu_407_p3 : p_Result_3_fu_482_p4);
assign select_ln19_fu_537_p3 = ((and_ln19_1_fu_531_p2[0:0] == 1'b1) ? 64'd13830554455654793216 : bitcast_ln1035_fu_506_p1);
assign select_ln21_fu_309_p3 = ((and_ln21_1_fu_303_p2[0:0] == 1'b1) ? bitcast_ln526_fu_216_p1 : 64'd4607182418800017408);
assign temptemp1 = grp_fu_118_p1;
assign temptemp2 = grp_fu_118_p1;
assign trunc_ln368_1_fu_175_p1 = data_V_2_fu_134_p1[62:0];
assign trunc_ln368_fu_393_p1 = data_V_fu_353_p1[62:0];
assign xor_ln1035_1_fu_331_p2 = (icmp_ln1035_2_reg_610 ^ 1'd1);
assign xor_ln1035_fu_545_p2 = (icmp_ln1035_reg_668 ^ 1'd1);
assign xor_ln1497_1_fu_272_p2 = (mask_table_q0 ^ 52'd4503599627370495);
assign xor_ln1497_fu_470_p2 = (mask_table_1_q0 ^ 52'd4503599627370495);
assign xs_exp_V_3_fu_233_p4 = {{data_V_3_fu_227_p2[62:52]}};
assign xs_exp_V_6_fu_458_p3 = ((p_Result_s_reg_636[0:0] == 1'b1) ? xs_exp_V_fu_431_p4 : xs_exp_V_5_reg_644);
assign xs_exp_V_8_fu_260_p3 = ((p_Result_4_reg_578[0:0] == 1'b1) ? xs_exp_V_7_reg_586 : xs_exp_V_3_fu_233_p4);
assign xs_exp_V_fu_431_p4 = {{data_V_1_fu_425_p2[62:52]}};
assign xs_sig_V_10_fu_278_p2 = (xs_sig_V_5_fu_266_p3 & xor_ln1497_1_fu_272_p2);
assign xs_sig_V_1_fu_464_p3 = ((p_Result_s_reg_636[0:0] == 1'b1) ? xs_sig_V_fu_441_p1 : xs_sig_V_7_reg_652);
assign xs_sig_V_4_fu_243_p1 = data_V_3_fu_227_p2[51:0];
assign xs_sig_V_5_fu_266_p3 = ((p_Result_4_reg_578[0:0] == 1'b1) ? xs_sig_V_9_reg_594 : xs_sig_V_4_fu_243_p1);
assign xs_sig_V_7_fu_374_p1 = data_V_fu_353_p1[51:0];
assign xs_sig_V_8_fu_476_p2 = (xs_sig_V_1_fu_464_p3 & xor_ln1497_fu_470_p2);
assign xs_sig_V_9_fu_156_p1 = data_V_2_fu_134_p1[51:0];
assign xs_sig_V_fu_441_p1 = data_V_1_fu_425_p2[51:0];
assign xs_sign_V_1_fu_450_p3 = and_ln779_fu_445_p2[32'd63];
assign xs_sign_V_4_fu_252_p3 = or_ln779_fu_247_p2[32'd63];
assign zext_ln28_fu_414_p1 = mask_table_1_q0;
assign zext_ln30_fu_205_p1 = mask_table_q0;
assign zext_ln541_1_fu_170_p1 = index_1_fu_160_p4;
assign zext_ln541_fu_388_p1 = index_fu_378_p4;
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
module entry_point_mask_table_1_ROM_AUTO_1R (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 52;
parameter AddressWidth = 6;
parameter AddressRange = 64;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h7FFFFFFFFFFFF;
 rom0[1]=8'h3FFFFFFFFFFFF;
 rom0[2]=8'h1FFFFFFFFFFFF;
 rom0[3]=8'h0FFFFFFFFFFFF;
 rom0[4]=8'h07FFFFFFFFFFF;
 rom0[5]=8'h03FFFFFFFFFFF;
 rom0[6]=8'h01FFFFFFFFFFF;
 rom0[7]=8'h00FFFFFFFFFFF;
 rom0[8]=8'h007FFFFFFFFFF;
 rom0[9]=8'h003FFFFFFFFFF;
 rom0[10]=8'h001FFFFFFFFFF;
 rom0[11]=8'h000FFFFFFFFFF;
 rom0[12]=8'h0007FFFFFFFFF;
 rom0[13]=8'h0003FFFFFFFFF;
 rom0[14]=8'h0001FFFFFFFFF;
 rom0[15]=8'h0000FFFFFFFFF;
 rom0[16]=8'h00007FFFFFFFF;
 rom0[17]=8'h00003FFFFFFFF;
 rom0[18]=8'h00001FFFFFFFF;
 rom0[19]=8'h00000FFFFFFFF;
 rom0[20]=8'h000007FFFFFFF;
 rom0[21]=8'h000003FFFFFFF;
 rom0[22]=8'h000001FFFFFFF;
 rom0[23]=8'h000000FFFFFFF;
 rom0[24]=8'h0000007FFFFFF;
 rom0[25]=8'h0000003FFFFFF;
 rom0[26]=8'h0000001FFFFFF;
 rom0[27]=8'h0000000FFFFFF;
 rom0[28]=8'h00000007FFFFF;
 rom0[29]=8'h00000003FFFFF;
 rom0[30]=8'h00000001FFFFF;
 rom0[31]=8'h00000000FFFFF;
 rom0[32]=8'h000000007FFFF;
 rom0[33]=8'h000000003FFFF;
 rom0[34]=8'h000000001FFFF;
 rom0[35]=8'h000000000FFFF;
 rom0[36]=8'h0000000007FFF;
 rom0[37]=8'h0000000003FFF;
 rom0[38]=8'h0000000001FFF;
 rom0[39]=8'h0000000000FFF;
 rom0[40]=8'h00000000007FF;
 rom0[41]=8'h00000000003FF;
 rom0[42]=8'h00000000001FF;
 rom0[43]=8'h00000000000FF;
 rom0[44]=8'h000000000007F;
 rom0[45]=8'h000000000003F;
 rom0[46]=8'h000000000001F;
 rom0[47]=8'h000000000000F;
 rom0[48]=8'h0000000000007;
 rom0[49]=8'h0000000000003;
 rom0[50]=8'h0000000000001;
 rom0[51]=8'h0000000000000;
 rom0[52]=8'h0000000000000;
 rom0[53]=8'h0000000000000;
 rom0[54]=8'h0000000000000;
 rom0[55]=8'h0000000000000;
 rom0[56]=8'h0000000000000;
 rom0[57]=8'h0000000000000;
 rom0[58]=8'h0000000000000;
 rom0[59]=8'h0000000000000;
 rom0[60]=8'h0000000000000;
 rom0[61]=8'h0000000000000;
 rom0[62]=8'hFFFFFFFFFFFFF;
 rom0[63]=8'hFFFFFFFFFFFFF;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
