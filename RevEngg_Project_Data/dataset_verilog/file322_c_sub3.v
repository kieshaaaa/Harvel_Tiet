module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 a,
 b,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
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
input [31:0] a;
input [31:0] b;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] hcf_fu_99_p3;
wire [30:0] trunc_ln4_fu_107_p1;
reg [30:0] trunc_ln4_reg_156;
wire [0:0] icmp_ln7_1_fu_112_p2;
reg [0:0] icmp_ln7_1_reg_161;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_return;
reg [0:0] targetBlock_reg_165;
wire ap_CS_fsm_state2;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_ready;
wire [30:0] grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_hcf_1_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_hcf_1_out_ap_vld;
wire [31:0] hcf_02_ph_cast_fu_128_p1;
reg [31:0] ap_phi_mux_hcf_02_phi_fu_76_p4;
reg [31:0] hcf_02_reg_73;
wire ap_CS_fsm_state3;
reg grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_start_reg;
reg [30:0] hcf_1_loc_fu_36;
wire [0:0] icmp_ln7_fu_93_p2;
wire [30:0] select_ln7_fu_121_p3;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_7_1 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_ready),
 .hcf(trunc_ln4_reg_156),
 .a_load(a),
 .b_load(b),
 .hcf_1_out(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_hcf_1_out),
 .hcf_1_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_hcf_1_out_ap_vld),
 .ap_return(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_return)
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
 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (icmp_ln7_1_fu_112_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (icmp_ln7_1_fu_112_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 hcf_02_reg_73 <= hcf_fu_99_p3;
 end else if (((icmp_ln7_1_reg_161 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 hcf_02_reg_73 <= hcf_02_ph_cast_fu_128_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_hcf_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 hcf_1_loc_fu_36 <= grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_hcf_1_out;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln7_1_reg_161 <= icmp_ln7_1_fu_112_p2;
 trunc_ln4_reg_156 <= trunc_ln4_fu_107_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 targetBlock_reg_165 <= grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_return;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
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
 if (((icmp_ln7_1_reg_161 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_phi_mux_hcf_02_phi_fu_76_p4 = hcf_02_ph_cast_fu_128_p1;
 end else begin
 ap_phi_mux_hcf_02_phi_fu_76_p4 = hcf_02_reg_73;
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
 if ((1'b1 == ap_CS_fsm_state3)) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((ap_start == 1'b1) & (icmp_ln7_1_fu_112_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else if (((ap_start == 1'b1) & (icmp_ln7_1_fu_112_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
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
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_83_ap_start_reg;
assign hcf_02_ph_cast_fu_128_p1 = select_ln7_fu_121_p3;
assign hcf_fu_99_p3 = ((icmp_ln7_fu_93_p2[0:0] == 1'b1) ? a : b);
assign icmp_ln7_1_fu_112_p2 = (($signed(hcf_fu_99_p3) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_93_p2 = (($signed(a) < $signed(b)) ? 1'b1 : 1'b0);
assign select_ln7_fu_121_p3 = ((targetBlock_reg_165[0:0] == 1'b1) ? 31'd0 : hcf_1_loc_fu_36);
assign temptemp1 = a;
assign temptemp2 = b;
assign temptemp3 = ap_phi_mux_hcf_02_phi_fu_76_p4;
assign trunc_ln4_fu_107_p1 = hcf_fu_99_p3[30:0];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_7_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 hcf,
 a_load,
 b_load,
 hcf_1_out,
 hcf_1_out_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 74'd1;
parameter ap_ST_fsm_state2 = 74'd2;
parameter ap_ST_fsm_state3 = 74'd4;
parameter ap_ST_fsm_state4 = 74'd8;
parameter ap_ST_fsm_state5 = 74'd16;
parameter ap_ST_fsm_state6 = 74'd32;
parameter ap_ST_fsm_state7 = 74'd64;
parameter ap_ST_fsm_state8 = 74'd128;
parameter ap_ST_fsm_state9 = 74'd256;
parameter ap_ST_fsm_state10 = 74'd512;
parameter ap_ST_fsm_state11 = 74'd1024;
parameter ap_ST_fsm_state12 = 74'd2048;
parameter ap_ST_fsm_state13 = 74'd4096;
parameter ap_ST_fsm_state14 = 74'd8192;
parameter ap_ST_fsm_state15 = 74'd16384;
parameter ap_ST_fsm_state16 = 74'd32768;
parameter ap_ST_fsm_state17 = 74'd65536;
parameter ap_ST_fsm_state18 = 74'd131072;
parameter ap_ST_fsm_state19 = 74'd262144;
parameter ap_ST_fsm_state20 = 74'd524288;
parameter ap_ST_fsm_state21 = 74'd1048576;
parameter ap_ST_fsm_state22 = 74'd2097152;
parameter ap_ST_fsm_state23 = 74'd4194304;
parameter ap_ST_fsm_state24 = 74'd8388608;
parameter ap_ST_fsm_state25 = 74'd16777216;
parameter ap_ST_fsm_state26 = 74'd33554432;
parameter ap_ST_fsm_state27 = 74'd67108864;
parameter ap_ST_fsm_state28 = 74'd134217728;
parameter ap_ST_fsm_state29 = 74'd268435456;
parameter ap_ST_fsm_state30 = 74'd536870912;
parameter ap_ST_fsm_state31 = 74'd1073741824;
parameter ap_ST_fsm_state32 = 74'd2147483648;
parameter ap_ST_fsm_state33 = 74'd4294967296;
parameter ap_ST_fsm_state34 = 74'd8589934592;
parameter ap_ST_fsm_state35 = 74'd17179869184;
parameter ap_ST_fsm_state36 = 74'd34359738368;
parameter ap_ST_fsm_state37 = 74'd68719476736;
parameter ap_ST_fsm_state38 = 74'd137438953472;
parameter ap_ST_fsm_state39 = 74'd274877906944;
parameter ap_ST_fsm_state40 = 74'd549755813888;
parameter ap_ST_fsm_state41 = 74'd1099511627776;
parameter ap_ST_fsm_state42 = 74'd2199023255552;
parameter ap_ST_fsm_state43 = 74'd4398046511104;
parameter ap_ST_fsm_state44 = 74'd8796093022208;
parameter ap_ST_fsm_state45 = 74'd17592186044416;
parameter ap_ST_fsm_state46 = 74'd35184372088832;
parameter ap_ST_fsm_state47 = 74'd70368744177664;
parameter ap_ST_fsm_state48 = 74'd140737488355328;
parameter ap_ST_fsm_state49 = 74'd281474976710656;
parameter ap_ST_fsm_state50 = 74'd562949953421312;
parameter ap_ST_fsm_state51 = 74'd1125899906842624;
parameter ap_ST_fsm_state52 = 74'd2251799813685248;
parameter ap_ST_fsm_state53 = 74'd4503599627370496;
parameter ap_ST_fsm_state54 = 74'd9007199254740992;
parameter ap_ST_fsm_state55 = 74'd18014398509481984;
parameter ap_ST_fsm_state56 = 74'd36028797018963968;
parameter ap_ST_fsm_state57 = 74'd72057594037927936;
parameter ap_ST_fsm_state58 = 74'd144115188075855872;
parameter ap_ST_fsm_state59 = 74'd288230376151711744;
parameter ap_ST_fsm_state60 = 74'd576460752303423488;
parameter ap_ST_fsm_state61 = 74'd1152921504606846976;
parameter ap_ST_fsm_state62 = 74'd2305843009213693952;
parameter ap_ST_fsm_state63 = 74'd4611686018427387904;
parameter ap_ST_fsm_state64 = 74'd9223372036854775808;
parameter ap_ST_fsm_state65 = 74'd18446744073709551616;
parameter ap_ST_fsm_state66 = 74'd36893488147419103232;
parameter ap_ST_fsm_state67 = 74'd73786976294838206464;
parameter ap_ST_fsm_state68 = 74'd147573952589676412928;
parameter ap_ST_fsm_state69 = 74'd295147905179352825856;
parameter ap_ST_fsm_state70 = 74'd590295810358705651712;
parameter ap_ST_fsm_state71 = 74'd1180591620717411303424;
parameter ap_ST_fsm_state72 = 74'd2361183241434822606848;
parameter ap_ST_fsm_state73 = 74'd4722366482869645213696;
parameter ap_ST_fsm_state74 = 74'd9444732965739290427392;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] hcf;
input [31:0] a_load;
input [31:0] b_load;
output [30:0] hcf_1_out;
output hcf_1_out_ap_vld;
output [0:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[30:0] hcf_1_out;
reg hcf_1_out_ap_vld;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg [73:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [30:0] hcf_3_reg_144;
wire ap_CS_fsm_state2;
wire [31:0] hcf_1_cast_fu_86_p1;
reg [31:0] hcf_1_cast_reg_150;
wire [0:0] icmp_ln7_fu_90_p2;
reg [0:0] icmp_ln7_reg_156;
wire [0:0] icmp_ln8_fu_101_p2;
reg [0:0] icmp_ln8_reg_160;
wire ap_CS_fsm_state37;
reg [0:0] ap_phi_mux_UnifiedRetVal_phi_fu_70_p4;
reg [0:0] UnifiedRetVal_reg_66;
wire ap_CS_fsm_state74;
wire ap_CS_fsm_state73;
reg [30:0] hcf_1_fu_36;
wire [30:0] hcf_4_fu_117_p2;
wire ap_CS_fsm_state72;
wire [0:0] icmp_ln8_1_fu_111_p2;
wire [31:0] grp_fu_96_p1;
wire [31:0] grp_fu_96_p2;
wire [31:0] grp_fu_107_p2;
reg [0:0] ap_return_preg;
reg [73:0] ap_NS_fsm;
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
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 74'd1;
#0 ap_return_preg = 1'd0;
end
entry_point_srem_32ns_32ns_32_36_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
srem_32ns_32ns_32_36_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(a_load),
 .din1(grp_fu_96_p1),
 .ce(1'b1),
 .dout(grp_fu_96_p2)
);
entry_point_srem_32ns_32ns_32_36_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
srem_32ns_32ns_32_36_1_U2(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(b_load),
 .din1(hcf_1_cast_reg_150),
 .ce(1'b1),
 .dout(grp_fu_107_p2)
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
 ap_return_preg <= 1'd0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state73)) begin
 ap_return_preg <= ap_phi_mux_UnifiedRetVal_phi_fu_70_p4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state73) & (icmp_ln7_reg_156 == 1'd0))) begin
 UnifiedRetVal_reg_66 <= 1'd0;
 end else if ((1'b1 == ap_CS_fsm_state74)) begin
 UnifiedRetVal_reg_66 <= 1'd1;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 hcf_1_fu_36 <= hcf;
 end else if (((1'b1 == ap_CS_fsm_state72) & (((icmp_ln8_reg_160 == 1'd0) & (icmp_ln7_reg_156 == 1'd0)) | ((icmp_ln8_1_fu_111_p2 == 1'd0) & (icmp_ln7_reg_156 == 1'd0))))) begin
 hcf_1_fu_36 <= hcf_4_fu_117_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 hcf_1_cast_reg_150[30 : 0] <= hcf_1_cast_fu_86_p1[30 : 0];
 hcf_3_reg_144 <= hcf_1_fu_36;
 icmp_ln7_reg_156 <= icmp_ln7_fu_90_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state37) & (icmp_ln7_reg_156 == 1'd0))) begin
 icmp_ln8_reg_160 <= icmp_ln8_fu_101_p2;
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
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state73) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
 if (((1'b1 == ap_CS_fsm_state73) & (icmp_ln7_reg_156 == 1'd0))) begin
 ap_phi_mux_UnifiedRetVal_phi_fu_70_p4 = 1'd0;
 end else begin
 ap_phi_mux_UnifiedRetVal_phi_fu_70_p4 = UnifiedRetVal_reg_66;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state73)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state73)) begin
 ap_return = ap_phi_mux_UnifiedRetVal_phi_fu_70_p4;
 end else begin
 ap_return = ap_return_preg;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state74)) begin
 hcf_1_out = 31'd0;
 end else if (((1'b1 == ap_CS_fsm_state73) & (icmp_ln7_reg_156 == 1'd0))) begin
 hcf_1_out = hcf_3_reg_144;
 end else begin
 hcf_1_out = 'bx;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state74) | ((1'b1 == ap_CS_fsm_state73) & (icmp_ln7_reg_156 == 1'd0)))) begin
 hcf_1_out_ap_vld = 1'b1;
 end else begin
 hcf_1_out_ap_vld = 1'b0;
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
 if (((1'b1 == ap_CS_fsm_state72) & (((icmp_ln8_reg_160 == 1'd0) & (icmp_ln7_reg_156 == 1'd0)) | ((icmp_ln8_1_fu_111_p2 == 1'd0) & (icmp_ln7_reg_156 == 1'd0))))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else if (((1'b1 == ap_CS_fsm_state72) & (icmp_ln7_reg_156 == 1'd1))) begin
 ap_NS_fsm = ap_ST_fsm_state74;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state73;
 end
 end
 ap_ST_fsm_state73 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 ap_ST_fsm_state74 : begin
 ap_NS_fsm = ap_ST_fsm_state73;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state37 = ap_CS_fsm[32'd36];
assign ap_CS_fsm_state72 = ap_CS_fsm[32'd71];
assign ap_CS_fsm_state73 = ap_CS_fsm[32'd72];
assign ap_CS_fsm_state74 = ap_CS_fsm[32'd73];
assign grp_fu_96_p1 = hcf_1_fu_36;
assign hcf_1_cast_fu_86_p1 = hcf_1_fu_36;
assign hcf_4_fu_117_p2 = ($signed(hcf_3_reg_144) + $signed(31'd2147483647));
assign icmp_ln7_fu_90_p2 = ((hcf_1_fu_36 == 31'd0) ? 1'b1 : 1'b0);
assign icmp_ln8_1_fu_111_p2 = ((grp_fu_107_p2 == 32'd0) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_101_p2 = ((grp_fu_96_p2 == 32'd0) ? 1'b1 : 1'b0);
always @ (posedge ap_clk) begin
 hcf_1_cast_reg_150[31] <= 1'b0;
end
endmodule
module entry_point_srem_32ns_32ns_32_36_1_divider
#(parameter
 in0_WIDTH = 32,
 in1_WIDTH = 32,
 out_WIDTH = 32
)
(
 input clk,
 input reset,
 input ce,
 input [in0_WIDTH-1:0] dividend,
 input [in1_WIDTH-1:0] divisor,
 input [1:0] sign_i,
 output wire [1:0] sign_o,
 output wire [out_WIDTH-1:0] quot,
 output wire [out_WIDTH-1:0] remd
);
localparam cal_WIDTH = (in0_WIDTH > in1_WIDTH)? in0_WIDTH : in1_WIDTH;
reg [in0_WIDTH-1:0] dividend_tmp[0:in0_WIDTH];
reg [in1_WIDTH-1:0] divisor_tmp[0:in0_WIDTH];
reg [in0_WIDTH-1:0] remd_tmp[0:in0_WIDTH];
wire [in0_WIDTH-1:0] comb_tmp[0:in0_WIDTH-1];
wire [cal_WIDTH:0] cal_tmp[0:in0_WIDTH-1];
reg [1:0] sign_tmp[0:in0_WIDTH];
assign quot = dividend_tmp[in0_WIDTH];
assign remd = remd_tmp[in0_WIDTH];
assign sign_o = sign_tmp[in0_WIDTH];
always @(posedge clk)
begin
 if (ce) begin
 dividend_tmp[0] <= dividend;
 divisor_tmp[0] <= divisor;
 sign_tmp[0] <= sign_i;
 remd_tmp[0] <= 1'b0;
 end
end
genvar i;
generate 
 for (i = 0; i < in0_WIDTH; i = i + 1)
 begin : loop
 if (in0_WIDTH == 1) assign comb_tmp[i] = dividend_tmp[i][0];
 else assign comb_tmp[i] = {remd_tmp[i][in0_WIDTH-2:0], dividend_tmp[i][in0_WIDTH-1]};
 assign cal_tmp[i] = {1'b0, comb_tmp[i]} - {1'b0, divisor_tmp[i]};
 always @(posedge clk)
 begin
 if (ce) begin
 if (in0_WIDTH == 1) dividend_tmp[i+1] <= ~cal_tmp[i][cal_WIDTH];
 else dividend_tmp[i+1] <= {dividend_tmp[i][in0_WIDTH-2:0], ~cal_tmp[i][cal_WIDTH]};
 divisor_tmp[i+1] <= divisor_tmp[i];
 remd_tmp[i+1] <= cal_tmp[i][cal_WIDTH]? comb_tmp[i] : cal_tmp[i][in0_WIDTH-1:0];
 sign_tmp[i+1] <= sign_tmp[i];
 end
 end
 end
endgenerate
endmodule
module entry_point_srem_32ns_32ns_32_36_1
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
 input [din0_WIDTH-1:0] din0,
 input [din1_WIDTH-1:0] din1,
 output [dout_WIDTH-1:0] dout
);
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
entry_point_srem_32ns_32ns_32_36_1_divider #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_srem_32ns_32ns_32_36_1_divider_u (
 .clk ( clk ),
 .reset ( reset ),
 .ce ( ce ),
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
 end
end
always @(posedge clk)
begin
 if (ce) begin
 if (sign_o[1])
 quot <= ~quot_u + 1'b1;
 else
 quot <= quot_u;
 end
end
always @(posedge clk)
begin
 if (ce) begin
 if (sign_o[0])
 remd <= ~remd_u + 1'b1;
 else
 remd <= remd_u;
 end
end
assign dout = remd;
endmodule
