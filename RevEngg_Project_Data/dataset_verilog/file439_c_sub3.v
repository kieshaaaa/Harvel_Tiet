module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 inputValue,
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
input [31:0] inputValue;
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
wire [5:0] mask_table_1_address0;
reg mask_table_1_ce0;
wire [51:0] mask_table_1_q0;
wire [5:0] mask_table_address0;
reg mask_table_ce0;
wire [51:0] mask_table_q0;
wire [63:0] dc_fu_122_p1;
reg [63:0] dc_reg_487;
wire [63:0] data_V_fu_130_p1;
reg [63:0] data_V_reg_493;
reg [0:0] p_Result_s_reg_499;
reg [10:0] xs_exp_V_2_reg_510;
wire [51:0] xs_sig_V_3_fu_152_p1;
reg [51:0] xs_sig_V_3_reg_520;
wire [62:0] trunc_ln368_fu_172_p1;
reg [62:0] trunc_ln368_reg_533;
wire [63:0] select_ln19_fu_316_p3;
reg [63:0] select_ln19_reg_544;
wire ap_CS_fsm_state2;
wire [0:0] and_ln1035_fu_330_p2;
reg [0:0] and_ln1035_reg_549;
wire [63:0] select_ln1035_2_fu_457_p3;
reg [63:0] select_ln1035_2_reg_555;
wire [63:0] zext_ln541_fu_166_p1;
wire ap_CS_fsm_state3;
wire [63:0] resultFloor_fu_116_p0;
wire [63:0] resultCeil_fu_119_p0;
wire [31:0] dc_fu_122_p0;
wire [5:0] index_fu_156_p4;
wire [63:0] zext_ln28_fu_193_p1;
wire [63:0] p_Result_2_fu_197_p3;
wire [63:0] data_V_2_fu_204_p2;
wire [63:0] and_ln779_fu_224_p2;
wire [10:0] xs_exp_V_fu_210_p4;
wire [51:0] xs_sig_V_fu_220_p1;
wire [51:0] xs_sig_V_1_fu_243_p3;
wire [51:0] xor_ln1497_fu_249_p2;
wire [0:0] xs_sign_V_1_fu_229_p3;
wire [10:0] xs_exp_V_5_fu_237_p3;
wire [51:0] xs_sig_V_7_fu_255_p2;
wire [0:0] icmp_ln1035_fu_176_p2;
wire [0:0] icmp_ln1035_1_fu_181_p2;
wire [0:0] or_ln1035_fu_271_p2;
wire [63:0] p_Result_1_fu_186_p3;
wire [63:0] p_Result_3_fu_261_p4;
wire [63:0] select_ln1035_fu_277_p3;
wire [0:0] icmp_ln19_1_fu_294_p2;
wire [0:0] icmp_ln19_fu_289_p2;
wire [0:0] or_ln19_fu_299_p2;
wire [0:0] and_ln19_fu_305_p2;
wire [0:0] and_ln19_1_fu_310_p2;
wire [63:0] bitcast_ln1035_fu_285_p1;
wire [0:0] xor_ln1035_fu_324_p2;
wire [0:0] icmp_ln1019_fu_336_p2;
wire [0:0] icmp_ln1019_1_fu_341_p2;
wire [63:0] zext_ln30_fu_352_p1;
wire [63:0] p_Result_4_fu_360_p3;
wire [63:0] data_V_3_fu_367_p2;
wire [63:0] or_ln779_fu_387_p2;
wire [10:0] xs_exp_V_3_fu_373_p4;
wire [51:0] xs_sig_V_4_fu_383_p1;
wire [51:0] xs_sig_V_5_fu_406_p3;
wire [51:0] xor_ln1497_1_fu_412_p2;
wire [0:0] xs_sign_V_2_fu_392_p3;
wire [10:0] xs_exp_V_6_fu_400_p3;
wire [51:0] xs_sig_V_8_fu_418_p2;
wire [63:0] p_Result_5_fu_424_p4;
wire [0:0] and_ln21_fu_346_p2;
wire [0:0] or_ln21_fu_438_p2;
wire [0:0] and_ln21_1_fu_443_p2;
wire [63:0] bitcast_ln526_fu_356_p1;
wire [63:0] select_ln21_fu_449_p3;
wire [63:0] bitcast_ln526_1_fu_434_p1;
wire [31:0] resultFloor_fu_116_p1;
wire [31:0] resultCeil_fu_119_p1;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
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
 .din0(resultFloor_fu_116_p0),
 .dout(resultFloor_fu_116_p1)
);
entry_point_fptrunc_64ns_32_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 64 ),
 .dout_WIDTH( 32 ))
fptrunc_64ns_32_1_no_dsp_1_U2(
 .din0(resultCeil_fu_119_p0),
 .dout(resultCeil_fu_119_p1)
);
entry_point_fpext_32ns_64_1_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
fpext_32ns_64_1_no_dsp_1_U3(
 .din0(dc_fu_122_p0),
 .dout(dc_fu_122_p1)
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
 and_ln1035_reg_549 <= and_ln1035_fu_330_p2;
 select_ln1035_2_reg_555 <= select_ln1035_2_fu_457_p3;
 select_ln19_reg_544 <= select_ln19_fu_316_p3;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 data_V_reg_493 <= data_V_fu_130_p1;
 dc_reg_487 <= dc_fu_122_p1;
 p_Result_s_reg_499 <= data_V_fu_130_p1[32'd63];
 trunc_ln368_reg_533 <= trunc_ln368_fu_172_p1;
 xs_exp_V_2_reg_510 <= {{data_V_fu_130_p1[62:52]}};
 xs_sig_V_3_reg_520 <= xs_sig_V_3_fu_152_p1;
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
 mask_table_1_ce0 = 1'b1;
 end else begin
 mask_table_1_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 mask_table_ce0 = 1'b1;
 end else begin
 mask_table_ce0 = 1'b0;
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
assign and_ln1035_fu_330_p2 = (xor_ln1035_fu_324_p2 & icmp_ln1035_1_fu_181_p2);
assign and_ln19_1_fu_310_p2 = (icmp_ln1035_fu_176_p2 & and_ln19_fu_305_p2);
assign and_ln19_fu_305_p2 = (p_Result_s_reg_499 & or_ln19_fu_299_p2);
assign and_ln21_1_fu_443_p2 = (or_ln21_fu_438_p2 & icmp_ln1035_fu_176_p2);
assign and_ln21_fu_346_p2 = (icmp_ln1019_fu_336_p2 & icmp_ln1019_1_fu_341_p2);
assign and_ln779_fu_224_p2 = (data_V_reg_493 & data_V_2_fu_204_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign bitcast_ln1035_fu_285_p1 = select_ln1035_fu_277_p3;
assign bitcast_ln526_1_fu_434_p1 = p_Result_5_fu_424_p4;
assign bitcast_ln526_fu_356_p1 = p_Result_1_fu_186_p3;
assign data_V_2_fu_204_p2 = (zext_ln28_fu_193_p1 + p_Result_2_fu_197_p3);
assign data_V_3_fu_367_p2 = (zext_ln30_fu_352_p1 + p_Result_4_fu_360_p3);
assign data_V_fu_130_p1 = dc_fu_122_p1;
assign dc_fu_122_p0 = inputValue;
assign icmp_ln1019_1_fu_341_p2 = ((xs_exp_V_2_reg_510 == 11'd0) ? 1'b1 : 1'b0);
assign icmp_ln1019_fu_336_p2 = ((xs_sig_V_3_reg_520 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln1035_1_fu_181_p2 = ((xs_exp_V_2_reg_510 > 11'd1075) ? 1'b1 : 1'b0);
assign icmp_ln1035_fu_176_p2 = ((xs_exp_V_2_reg_510 < 11'd1023) ? 1'b1 : 1'b0);
assign icmp_ln19_1_fu_294_p2 = ((xs_exp_V_2_reg_510 != 11'd0) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_289_p2 = ((xs_sig_V_3_reg_520 != 52'd0) ? 1'b1 : 1'b0);
assign index_fu_156_p4 = {{data_V_fu_130_p1[57:52]}};
assign mask_table_1_address0 = zext_ln541_fu_166_p1;
assign mask_table_address0 = zext_ln541_fu_166_p1;
assign or_ln1035_fu_271_p2 = (icmp_ln1035_fu_176_p2 | icmp_ln1035_1_fu_181_p2);
assign or_ln19_fu_299_p2 = (icmp_ln19_fu_289_p2 | icmp_ln19_1_fu_294_p2);
assign or_ln21_fu_438_p2 = (p_Result_s_reg_499 | and_ln21_fu_346_p2);
assign or_ln779_fu_387_p2 = (data_V_reg_493 | data_V_3_fu_367_p2);
assign p_Result_1_fu_186_p3 = {{p_Result_s_reg_499}, {63'd0}};
assign p_Result_2_fu_197_p3 = {{1'd1}, {trunc_ln368_reg_533}};
assign p_Result_3_fu_261_p4 = {{{xs_sign_V_1_fu_229_p3}, {xs_exp_V_5_fu_237_p3}}, {xs_sig_V_7_fu_255_p2}};
assign p_Result_4_fu_360_p3 = {{1'd0}, {trunc_ln368_reg_533}};
assign p_Result_5_fu_424_p4 = {{{xs_sign_V_2_fu_392_p3}, {xs_exp_V_6_fu_400_p3}}, {xs_sig_V_8_fu_418_p2}};
assign resultCeil_fu_119_p0 = ((and_ln1035_reg_549[0:0] == 1'b1) ? dc_reg_487 : select_ln1035_2_reg_555);
assign resultFloor_fu_116_p0 = ((and_ln1035_reg_549[0:0] == 1'b1) ? dc_reg_487 : select_ln19_reg_544);
assign select_ln1035_2_fu_457_p3 = ((or_ln1035_fu_271_p2[0:0] == 1'b1) ? select_ln21_fu_449_p3 : bitcast_ln526_1_fu_434_p1);
assign select_ln1035_fu_277_p3 = ((or_ln1035_fu_271_p2[0:0] == 1'b1) ? p_Result_1_fu_186_p3 : p_Result_3_fu_261_p4);
assign select_ln19_fu_316_p3 = ((and_ln19_1_fu_310_p2[0:0] == 1'b1) ? 64'd13830554455654793216 : bitcast_ln1035_fu_285_p1);
assign select_ln21_fu_449_p3 = ((and_ln21_1_fu_443_p2[0:0] == 1'b1) ? bitcast_ln526_fu_356_p1 : 64'd4607182418800017408);
assign temptemp1 = resultFloor_fu_116_p1;
assign temptemp2 = resultCeil_fu_119_p1;
assign trunc_ln368_fu_172_p1 = data_V_fu_130_p1[62:0];
assign xor_ln1035_fu_324_p2 = (icmp_ln1035_fu_176_p2 ^ 1'd1);
assign xor_ln1497_1_fu_412_p2 = (mask_table_q0 ^ 52'd4503599627370495);
assign xor_ln1497_fu_249_p2 = (mask_table_1_q0 ^ 52'd4503599627370495);
assign xs_exp_V_3_fu_373_p4 = {{data_V_3_fu_367_p2[62:52]}};
assign xs_exp_V_5_fu_237_p3 = ((p_Result_s_reg_499[0:0] == 1'b1) ? xs_exp_V_fu_210_p4 : xs_exp_V_2_reg_510);
assign xs_exp_V_6_fu_400_p3 = ((p_Result_s_reg_499[0:0] == 1'b1) ? xs_exp_V_2_reg_510 : xs_exp_V_3_fu_373_p4);
assign xs_exp_V_fu_210_p4 = {{data_V_2_fu_204_p2[62:52]}};
assign xs_sig_V_1_fu_243_p3 = ((p_Result_s_reg_499[0:0] == 1'b1) ? xs_sig_V_fu_220_p1 : xs_sig_V_3_reg_520);
assign xs_sig_V_3_fu_152_p1 = data_V_fu_130_p1[51:0];
assign xs_sig_V_4_fu_383_p1 = data_V_3_fu_367_p2[51:0];
assign xs_sig_V_5_fu_406_p3 = ((p_Result_s_reg_499[0:0] == 1'b1) ? xs_sig_V_3_reg_520 : xs_sig_V_4_fu_383_p1);
assign xs_sig_V_7_fu_255_p2 = (xs_sig_V_1_fu_243_p3 & xor_ln1497_fu_249_p2);
assign xs_sig_V_8_fu_418_p2 = (xs_sig_V_5_fu_406_p3 & xor_ln1497_1_fu_412_p2);
assign xs_sig_V_fu_220_p1 = data_V_2_fu_204_p2[51:0];
assign xs_sign_V_1_fu_229_p3 = and_ln779_fu_224_p2[32'd63];
assign xs_sign_V_2_fu_392_p3 = or_ln779_fu_387_p2[32'd63];
assign zext_ln28_fu_193_p1 = mask_table_1_q0;
assign zext_ln30_fu_352_p1 = mask_table_q0;
assign zext_ln541_fu_166_p1 = index_fu_156_p4;
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
