module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 num,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 3'd1;
parameter ap_ST_fsm_state2 = 3'd2;
parameter ap_ST_fsm_state3 = 3'd4;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] num;
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
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [5:0] mask_table_address0;
wire [51:0] mask_table_q0;
wire [5:0] mask_table_5_address0;
wire [51:0] mask_table_5_q0;
wire [63:0] dc_fu_132_p1;
reg [63:0] dc_reg_505;
reg [0:0] xs_sign_reg_511;
reg [10:0] xs_exp_reg_524;
wire [51:0] xs_sig_fu_160_p1;
reg [51:0] xs_sig_reg_534;
wire [62:0] t_4_fu_180_p1;
reg [62:0] t_4_reg_547;
wire [0:0] icmp_ln18_fu_184_p2;
reg [0:0] icmp_ln18_reg_558;
wire ap_CS_fsm_state2;
wire [0:0] icmp_ln24_fu_189_p2;
reg [0:0] icmp_ln24_reg_564;
reg [0:0] xs_sign_1_reg_570;
wire [10:0] xs_exp_2_fu_231_p3;
reg [10:0] xs_exp_2_reg_575;
wire [51:0] xs_sig_3_fu_249_p2;
reg [51:0] xs_sig_3_reg_580;
wire [0:0] and_ln19_1_fu_276_p2;
reg [0:0] and_ln19_1_reg_585;
wire [0:0] xs_sign_4_fu_331_p2;
reg [0:0] xs_sign_4_reg_590;
wire [10:0] xs_exp_4_fu_336_p3;
reg [10:0] xs_exp_4_reg_595;
wire [51:0] xs_sig_6_fu_354_p2;
reg [51:0] xs_sig_6_reg_600;
wire [0:0] and_ln21_1_fu_365_p2;
reg [0:0] and_ln21_1_reg_605;
wire [63:0] zext_ln32_fu_174_p1;
wire ap_CS_fsm_state3;
reg mask_table_ce0_local;
reg mask_table_5_ce0_local;
wire [63:0] retval_0_i_fu_427_p11;
wire [63:0] retval_0_i1_fu_471_p11;
wire [31:0] dc_fu_132_p0;
wire [63:0] data_fu_140_p1;
wire [5:0] index_fu_164_p4;
wire [63:0] zext_ln28_fu_194_p1;
wire [63:0] t_fu_198_p3;
wire [63:0] data_1_fu_205_p2;
wire [10:0] xs_exp_1_fu_219_p3;
wire [51:0] xs_sig_1_fu_227_p1;
wire [51:0] xs_sig_2_fu_237_p3;
wire [51:0] xor_ln39_fu_243_p2;
wire [0:0] icmp_ln19_1_fu_260_p2;
wire [0:0] icmp_ln19_fu_255_p2;
wire [0:0] or_ln19_fu_265_p2;
wire [0:0] and_ln19_fu_271_p2;
wire [0:0] icmp_ln21_fu_282_p2;
wire [0:0] icmp_ln21_1_fu_287_p2;
wire [63:0] zext_ln30_fu_298_p1;
wire [63:0] zext_ln479_fu_302_p1;
wire [63:0] data_2_fu_305_p2;
wire [0:0] xs_sign_3_fu_311_p3;
wire [10:0] xs_exp_3_fu_319_p3;
wire [51:0] xs_sig_4_fu_327_p1;
wire [51:0] xs_sig_5_fu_342_p3;
wire [51:0] xor_ln41_fu_348_p2;
wire [0:0] and_ln21_fu_292_p2;
wire [0:0] or_ln21_fu_360_p2;
wire [63:0] t_6_fu_371_p3;
wire [0:0] xs_sign_2_fu_382_p2;
wire [63:0] t_7_fu_386_p4;
wire [0:0] xor_ln18_fu_398_p2;
wire [0:0] or_ln24_fu_408_p2;
wire [0:0] and_ln24_fu_403_p2;
wire [0:0] xor_ln24_fu_412_p2;
wire [63:0] retval_0_i_fu_427_p4;
wire [63:0] bitcast_ln497_fu_378_p1;
wire [63:0] retval_0_i_fu_427_p9;
wire [2:0] retval_0_i_fu_427_p10;
wire [63:0] t_8_fu_451_p4;
wire [63:0] retval_0_i1_fu_471_p6;
wire [63:0] retval_0_i1_fu_471_p9;
wire [2:0] retval_0_i1_fu_471_p10;
wire [31:0] floorNum_fu_126_p1;
wire [31:0] ceilNum_fu_129_p1;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire signed [2:0] retval_0_i_fu_427_p1;
wire [2:0] retval_0_i_fu_427_p3;
wire [2:0] retval_0_i_fu_427_p5;
wire [2:0] retval_0_i_fu_427_p7;
wire signed [2:0] retval_0_i1_fu_471_p1;
wire [2:0] retval_0_i1_fu_471_p3;
wire [2:0] retval_0_i1_fu_471_p5;
wire [2:0] retval_0_i1_fu_471_p7;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
end
entry_point_mask_table_ROM_AUTO_1R #(
 .DataWidth( 52 ),
 .AddressRange( 64 ),
 .AddressWidth( 6 ))
mask_table_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(mask_table_address0),
 .ce0(mask_table_ce0_local),
 .q0(mask_table_q0)
);
entry_point_mask_table_ROM_AUTO_1R #(
 .DataWidth( 52 ),
 .AddressRange( 64 ),
 .AddressWidth( 6 ))
mask_table_5_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(mask_table_5_address0),
 .ce0(mask_table_5_ce0_local),
 .q0(mask_table_5_q0)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U1(
 .din0(retval_0_i_fu_427_p11),
 .dout(floorNum_fu_126_p1)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U2(
 .din0(retval_0_i1_fu_471_p11),
 .dout(ceilNum_fu_129_p1)
);
entry_point_fpext_32ns_64_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
fpext_32ns_64_1_no_dsp_1_U3(
 .din0(dc_fu_132_p0),
 .dout(dc_fu_132_p1)
);
(* dissolve_hierarchy = "yes" *) entry_point_sparsemux_9_3_64_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .CASE0( 3'h4 ),
 .din0_WIDTH( 64 ),
 .CASE1( 3'h2 ),
 .din1_WIDTH( 64 ),
 .CASE2( 3'h1 ),
 .din2_WIDTH( 64 ),
 .CASE3( 3'h0 ),
 .din3_WIDTH( 64 ),
 .def_WIDTH( 64 ),
 .sel_WIDTH( 3 ),
 .dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U4(
 .din0(dc_reg_505),
 .din1(retval_0_i_fu_427_p4),
 .din2(64'd13830554455654793216),
 .din3(bitcast_ln497_fu_378_p1),
 .def(retval_0_i_fu_427_p9),
 .sel(retval_0_i_fu_427_p10),
 .dout(retval_0_i_fu_427_p11)
);
(* dissolve_hierarchy = "yes" *) entry_point_sparsemux_9_3_64_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .CASE0( 3'h4 ),
 .din0_WIDTH( 64 ),
 .CASE1( 3'h2 ),
 .din1_WIDTH( 64 ),
 .CASE2( 3'h1 ),
 .din2_WIDTH( 64 ),
 .CASE3( 3'h0 ),
 .din3_WIDTH( 64 ),
 .def_WIDTH( 64 ),
 .sel_WIDTH( 3 ),
 .dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U5(
 .din0(dc_reg_505),
 .din1(bitcast_ln497_fu_378_p1),
 .din2(retval_0_i1_fu_471_p6),
 .din3(64'd4607182418800017408),
 .def(retval_0_i1_fu_471_p9),
 .sel(retval_0_i1_fu_471_p10),
 .dout(retval_0_i1_fu_471_p11)
);
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_CS_fsm <= ap_ST_fsm_state1;
 end else begin
 ap_CS_fsm <= ap_NS_fsm;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 and_ln19_1_reg_585 <= and_ln19_1_fu_276_p2;
 and_ln21_1_reg_605 <= and_ln21_1_fu_365_p2;
 icmp_ln18_reg_558 <= icmp_ln18_fu_184_p2;
 icmp_ln24_reg_564 <= icmp_ln24_fu_189_p2;
 xs_exp_2_reg_575 <= xs_exp_2_fu_231_p3;
 xs_exp_4_reg_595 <= xs_exp_4_fu_336_p3;
 xs_sig_3_reg_580 <= xs_sig_3_fu_249_p2;
 xs_sig_6_reg_600 <= xs_sig_6_fu_354_p2;
 xs_sign_1_reg_570 <= data_1_fu_205_p2[32'd63];
 xs_sign_4_reg_590 <= xs_sign_4_fu_331_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 dc_reg_505 <= dc_fu_132_p1;
 t_4_reg_547 <= t_4_fu_180_p1;
 xs_exp_reg_524 <= {{data_fu_140_p1[62:52]}};
 xs_sig_reg_534 <= xs_sig_fu_160_p1;
 xs_sign_reg_511 <= data_fu_140_p1[32'd63];
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
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
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
 if ((1'b1 == ap_CS_fsm_state3)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 mask_table_5_ce0_local = 1'b1;
 end else begin
 mask_table_5_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 mask_table_ce0_local = 1'b1;
 end else begin
 mask_table_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign and_ln19_1_fu_276_p2 = (icmp_ln18_fu_184_p2 & and_ln19_fu_271_p2);
assign and_ln19_fu_271_p2 = (xs_sign_reg_511 & or_ln19_fu_265_p2);
assign and_ln21_1_fu_365_p2 = (or_ln21_fu_360_p2 & icmp_ln18_fu_184_p2);
assign and_ln21_fu_292_p2 = (icmp_ln21_fu_282_p2 & icmp_ln21_1_fu_287_p2);
assign and_ln24_fu_403_p2 = (xor_ln18_fu_398_p2 & icmp_ln24_reg_564);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign bitcast_ln497_fu_378_p1 = t_6_fu_371_p3;
assign data_1_fu_205_p2 = (zext_ln28_fu_194_p1 + t_fu_198_p3);
assign data_2_fu_305_p2 = (zext_ln30_fu_298_p1 + zext_ln479_fu_302_p1);
assign data_fu_140_p1 = dc_fu_132_p1;
assign dc_fu_132_p0 = num;
assign icmp_ln18_fu_184_p2 = ((xs_exp_reg_524 < 11'd1023) ? 1'b1 : 1'b0);
assign icmp_ln19_1_fu_260_p2 = ((xs_exp_reg_524 != 11'd0) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_255_p2 = ((xs_sig_reg_534 != 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln21_1_fu_287_p2 = ((xs_exp_reg_524 == 11'd0) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_282_p2 = ((xs_sig_reg_534 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_189_p2 = ((xs_exp_reg_524 > 11'd1075) ? 1'b1 : 1'b0);
assign index_fu_164_p4 = {{data_fu_140_p1[57:52]}};
assign mask_table_5_address0 = zext_ln32_fu_174_p1;
assign mask_table_address0 = zext_ln32_fu_174_p1;
assign or_ln19_fu_265_p2 = (icmp_ln19_fu_255_p2 | icmp_ln19_1_fu_260_p2);
assign or_ln21_fu_360_p2 = (xs_sign_reg_511 | and_ln21_fu_292_p2);
assign or_ln24_fu_408_p2 = (icmp_ln24_reg_564 | icmp_ln18_reg_558);
assign retval_0_i1_fu_471_p10 = {{{and_ln24_fu_403_p2}, {and_ln21_1_reg_605}}, {xor_ln24_fu_412_p2}};
assign retval_0_i1_fu_471_p6 = t_8_fu_451_p4;
assign retval_0_i1_fu_471_p9 = 'bx;
assign retval_0_i_fu_427_p10 = {{{and_ln24_fu_403_p2}, {xor_ln24_fu_412_p2}}, {and_ln19_1_reg_585}};
assign retval_0_i_fu_427_p4 = t_7_fu_386_p4;
assign retval_0_i_fu_427_p9 = 'bx;
assign t_4_fu_180_p1 = data_fu_140_p1[62:0];
assign t_6_fu_371_p3 = {{xs_sign_reg_511}, {63'd0}};
assign t_7_fu_386_p4 = {{{xs_sign_2_fu_382_p2}, {xs_exp_2_reg_575}}, {xs_sig_3_reg_580}};
assign t_8_fu_451_p4 = {{{xs_sign_4_reg_590}, {xs_exp_4_reg_595}}, {xs_sig_6_reg_600}};
assign t_fu_198_p3 = {{1'd1}, {t_4_reg_547}};
assign temptemp1 = floorNum_fu_126_p1;
assign temptemp2 = ceilNum_fu_129_p1;
assign xor_ln18_fu_398_p2 = (icmp_ln18_reg_558 ^ 1'd1);
assign xor_ln24_fu_412_p2 = (or_ln24_fu_408_p2 ^ 1'd1);
assign xor_ln39_fu_243_p2 = (mask_table_q0 ^ 52'd4503599627370495);
assign xor_ln41_fu_348_p2 = (mask_table_5_q0 ^ 52'd4503599627370495);
assign xs_exp_1_fu_219_p3 = {{data_1_fu_205_p2[62:52]}};
assign xs_exp_2_fu_231_p3 = ((xs_sign_reg_511[0:0] == 1'b1) ? xs_exp_1_fu_219_p3 : xs_exp_reg_524);
assign xs_exp_3_fu_319_p3 = {{data_2_fu_305_p2[62:52]}};
assign xs_exp_4_fu_336_p3 = ((xs_sign_reg_511[0:0] == 1'b1) ? xs_exp_reg_524 : xs_exp_3_fu_319_p3);
assign xs_sig_1_fu_227_p1 = data_1_fu_205_p2[51:0];
assign xs_sig_2_fu_237_p3 = ((xs_sign_reg_511[0:0] == 1'b1) ? xs_sig_1_fu_227_p1 : xs_sig_reg_534);
assign xs_sig_3_fu_249_p2 = (xs_sig_2_fu_237_p3 & xor_ln39_fu_243_p2);
assign xs_sig_4_fu_327_p1 = data_2_fu_305_p2[51:0];
assign xs_sig_5_fu_342_p3 = ((xs_sign_reg_511[0:0] == 1'b1) ? xs_sig_reg_534 : xs_sig_4_fu_327_p1);
assign xs_sig_6_fu_354_p2 = (xs_sig_5_fu_342_p3 & xor_ln41_fu_348_p2);
assign xs_sig_fu_160_p1 = data_fu_140_p1[51:0];
assign xs_sign_2_fu_382_p2 = (xs_sign_reg_511 & xs_sign_1_reg_570);
assign xs_sign_3_fu_311_p3 = data_2_fu_305_p2[32'd63];
assign xs_sign_4_fu_331_p2 = (xs_sign_reg_511 | xs_sign_3_fu_311_p3);
assign zext_ln28_fu_194_p1 = mask_table_q0;
assign zext_ln30_fu_298_p1 = mask_table_5_q0;
assign zext_ln32_fu_174_p1 = index_fu_164_p4;
assign zext_ln479_fu_302_p1 = t_4_reg_547;
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
module entry_point_mask_table_ROM_AUTO_1R (
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
module entry_point_sparsemux_9_3_64_1_1 (din0,din1,din2,din3,def,sel,dout);
parameter din0_WIDTH = 1;
parameter din1_WIDTH = 1;
parameter din2_WIDTH = 1;
parameter din3_WIDTH = 1;
parameter def_WIDTH = 1;
parameter sel_WIDTH = 1;
parameter dout_WIDTH = 1;
parameter [sel_WIDTH-1:0] CASE0 = 1;
parameter [sel_WIDTH-1:0] CASE1 = 1;
parameter [sel_WIDTH-1:0] CASE2 = 1;
parameter [sel_WIDTH-1:0] CASE3 = 1;
parameter ID = 1;
parameter NUM_STAGE = 1;
input [din0_WIDTH-1:0] din0;
input [din1_WIDTH-1:0] din1;
input [din2_WIDTH-1:0] din2;
input [din3_WIDTH-1:0] din3;
input [def_WIDTH-1:0] def;
input [sel_WIDTH-1:0] sel;
output [dout_WIDTH-1:0] dout;
reg [dout_WIDTH-1:0] dout_tmp;
always @ (*) begin
(* parallel_case *) case (sel)
 CASE0 : dout_tmp = din0;
 CASE1 : dout_tmp = din1;
 CASE2 : dout_tmp = din2;
 CASE3 : dout_tmp = din3;
 default : dout_tmp = def;
endcase
end
assign dout = dout_tmp;
endmodule
