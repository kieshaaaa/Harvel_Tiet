module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 a_i,
 a_o,
 a_o_ap_vld,
 b_i,
 b_o,
 b_o_ap_vld,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 37'd1;
parameter ap_ST_fsm_pp0_stage0 = 37'd2;
parameter ap_ST_fsm_pp0_stage1 = 37'd4;
parameter ap_ST_fsm_pp0_stage2 = 37'd8;
parameter ap_ST_fsm_pp0_stage3 = 37'd16;
parameter ap_ST_fsm_pp0_stage4 = 37'd32;
parameter ap_ST_fsm_pp0_stage5 = 37'd64;
parameter ap_ST_fsm_pp0_stage6 = 37'd128;
parameter ap_ST_fsm_pp0_stage7 = 37'd256;
parameter ap_ST_fsm_pp0_stage8 = 37'd512;
parameter ap_ST_fsm_pp0_stage9 = 37'd1024;
parameter ap_ST_fsm_pp0_stage10 = 37'd2048;
parameter ap_ST_fsm_pp0_stage11 = 37'd4096;
parameter ap_ST_fsm_pp0_stage12 = 37'd8192;
parameter ap_ST_fsm_pp0_stage13 = 37'd16384;
parameter ap_ST_fsm_pp0_stage14 = 37'd32768;
parameter ap_ST_fsm_pp0_stage15 = 37'd65536;
parameter ap_ST_fsm_pp0_stage16 = 37'd131072;
parameter ap_ST_fsm_pp0_stage17 = 37'd262144;
parameter ap_ST_fsm_pp0_stage18 = 37'd524288;
parameter ap_ST_fsm_pp0_stage19 = 37'd1048576;
parameter ap_ST_fsm_pp0_stage20 = 37'd2097152;
parameter ap_ST_fsm_pp0_stage21 = 37'd4194304;
parameter ap_ST_fsm_pp0_stage22 = 37'd8388608;
parameter ap_ST_fsm_pp0_stage23 = 37'd16777216;
parameter ap_ST_fsm_pp0_stage24 = 37'd33554432;
parameter ap_ST_fsm_pp0_stage25 = 37'd67108864;
parameter ap_ST_fsm_pp0_stage26 = 37'd134217728;
parameter ap_ST_fsm_pp0_stage27 = 37'd268435456;
parameter ap_ST_fsm_pp0_stage28 = 37'd536870912;
parameter ap_ST_fsm_pp0_stage29 = 37'd1073741824;
parameter ap_ST_fsm_pp0_stage30 = 37'd2147483648;
parameter ap_ST_fsm_pp0_stage31 = 37'd4294967296;
parameter ap_ST_fsm_pp0_stage32 = 37'd8589934592;
parameter ap_ST_fsm_pp0_stage33 = 37'd17179869184;
parameter ap_ST_fsm_pp0_stage34 = 37'd34359738368;
parameter ap_ST_fsm_state38 = 37'd68719476736;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] a_i;
output [31:0] a_o;
output a_o_ap_vld;
input [31:0] b_i;
output [31:0] b_o;
output b_o_ap_vld;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] a_o;
reg a_o_ap_vld;
reg[31:0] b_o;
reg b_o_ap_vld;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [36:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire ap_CS_fsm_pp0_stage0;
wire ap_block_state2_pp0_stage0_iter0;
wire ap_block_state37_pp0_stage0_iter1;
wire ap_block_pp0_stage0_11001;
wire [0:0] icmp_ln7_fu_82_p2;
reg [31:0] temp_reg_116;
reg ap_enable_reg_pp0_iter0;
wire ap_block_pp0_stage0_subdone;
reg ap_condition_pp0_exit_iter0_state2;
reg ap_enable_reg_pp0_iter1;
wire ap_block_state36_pp0_stage34_iter0;
wire ap_block_pp0_stage34_subdone;
wire ap_CS_fsm_pp0_stage34;
reg [31:0] empty_fu_36;
wire [31:0] grp_fu_88_p2;
reg [31:0] ap_sig_allocacmp_p_load;
wire ap_block_pp0_stage0;
wire ap_block_pp0_stage0_01001;
wire ap_CS_fsm_state38;
reg [36:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state38_blk;
wire ap_block_state3_pp0_stage1_iter0;
wire ap_block_pp0_stage1_subdone;
wire ap_block_pp0_stage1_11001;
wire ap_block_state4_pp0_stage2_iter0;
wire ap_block_pp0_stage2_subdone;
wire ap_block_pp0_stage2_11001;
wire ap_block_state5_pp0_stage3_iter0;
wire ap_block_pp0_stage3_subdone;
wire ap_block_pp0_stage3_11001;
wire ap_block_state6_pp0_stage4_iter0;
wire ap_block_pp0_stage4_subdone;
wire ap_block_pp0_stage4_11001;
wire ap_block_state7_pp0_stage5_iter0;
wire ap_block_pp0_stage5_subdone;
wire ap_block_pp0_stage5_11001;
wire ap_block_state8_pp0_stage6_iter0;
wire ap_block_pp0_stage6_subdone;
wire ap_block_pp0_stage6_11001;
wire ap_block_state9_pp0_stage7_iter0;
wire ap_block_pp0_stage7_subdone;
wire ap_block_pp0_stage7_11001;
wire ap_block_state10_pp0_stage8_iter0;
wire ap_block_pp0_stage8_subdone;
wire ap_block_pp0_stage8_11001;
wire ap_block_state11_pp0_stage9_iter0;
wire ap_block_pp0_stage9_subdone;
wire ap_block_pp0_stage9_11001;
wire ap_block_state12_pp0_stage10_iter0;
wire ap_block_pp0_stage10_subdone;
wire ap_block_pp0_stage10_11001;
wire ap_block_state13_pp0_stage11_iter0;
wire ap_block_pp0_stage11_subdone;
wire ap_block_pp0_stage11_11001;
wire ap_block_state14_pp0_stage12_iter0;
wire ap_block_pp0_stage12_subdone;
wire ap_block_pp0_stage12_11001;
wire ap_block_state15_pp0_stage13_iter0;
wire ap_block_pp0_stage13_subdone;
wire ap_block_pp0_stage13_11001;
wire ap_block_state16_pp0_stage14_iter0;
wire ap_block_pp0_stage14_subdone;
wire ap_block_pp0_stage14_11001;
wire ap_block_state17_pp0_stage15_iter0;
wire ap_block_pp0_stage15_subdone;
wire ap_block_pp0_stage15_11001;
wire ap_block_state18_pp0_stage16_iter0;
wire ap_block_pp0_stage16_subdone;
wire ap_block_pp0_stage16_11001;
wire ap_block_state19_pp0_stage17_iter0;
wire ap_block_pp0_stage17_subdone;
wire ap_block_pp0_stage17_11001;
wire ap_block_state20_pp0_stage18_iter0;
wire ap_block_pp0_stage18_subdone;
wire ap_block_pp0_stage18_11001;
wire ap_block_state21_pp0_stage19_iter0;
wire ap_block_pp0_stage19_subdone;
wire ap_block_pp0_stage19_11001;
wire ap_block_state22_pp0_stage20_iter0;
wire ap_block_pp0_stage20_subdone;
wire ap_block_pp0_stage20_11001;
wire ap_block_state23_pp0_stage21_iter0;
wire ap_block_pp0_stage21_subdone;
wire ap_block_pp0_stage21_11001;
wire ap_block_state24_pp0_stage22_iter0;
wire ap_block_pp0_stage22_subdone;
wire ap_block_pp0_stage22_11001;
wire ap_block_state25_pp0_stage23_iter0;
wire ap_block_pp0_stage23_subdone;
wire ap_block_pp0_stage23_11001;
wire ap_block_state26_pp0_stage24_iter0;
wire ap_block_pp0_stage24_subdone;
wire ap_block_pp0_stage24_11001;
wire ap_block_state27_pp0_stage25_iter0;
wire ap_block_pp0_stage25_subdone;
wire ap_block_pp0_stage25_11001;
wire ap_block_state28_pp0_stage26_iter0;
wire ap_block_pp0_stage26_subdone;
wire ap_block_pp0_stage26_11001;
wire ap_block_state29_pp0_stage27_iter0;
wire ap_block_pp0_stage27_subdone;
wire ap_block_pp0_stage27_11001;
wire ap_block_state30_pp0_stage28_iter0;
wire ap_block_pp0_stage28_subdone;
wire ap_block_pp0_stage28_11001;
wire ap_block_state31_pp0_stage29_iter0;
wire ap_block_pp0_stage29_subdone;
wire ap_block_pp0_stage29_11001;
wire ap_block_state32_pp0_stage30_iter0;
wire ap_block_pp0_stage30_subdone;
wire ap_block_pp0_stage30_11001;
wire ap_block_state33_pp0_stage31_iter0;
wire ap_block_pp0_stage31_subdone;
wire ap_block_pp0_stage31_11001;
wire ap_block_state34_pp0_stage32_iter0;
wire ap_block_pp0_stage32_subdone;
wire ap_block_pp0_stage32_11001;
wire ap_block_state35_pp0_stage33_iter0;
wire ap_block_pp0_stage33_subdone;
wire ap_block_pp0_stage33_11001;
wire ap_block_pp0_stage34_11001;
reg ap_idle_pp0;
wire ap_enable_pp0;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 37'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
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
 .din0(a_i),
 .din1(ap_sig_allocacmp_p_load),
 .ce(1'b1),
 .dout(grp_fu_88_p2)
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
 ap_enable_reg_pp0_iter0 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_enable_reg_pp0_iter0 <= 1'b0;
 end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_enable_reg_pp0_iter0 <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if ((((ap_enable_reg_pp0_iter0 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage34_subdone) & (1'b1 == ap_CS_fsm_pp0_stage34)))) begin
 ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
 end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 empty_fu_36 <= b_i;
 end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 empty_fu_36 <= grp_fu_88_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 temp_reg_116 <= a_i;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln7_fu_82_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_01001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 a_o = ap_sig_allocacmp_p_load;
 end else begin
 a_o = a_i;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln7_fu_82_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 a_o_ap_vld = 1'b1;
 end else begin
 a_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((ap_start == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
assign ap_ST_fsm_state38_blk = 1'b0;
always @ (*) begin
 if ((icmp_ln7_fu_82_p2 == 1'd1)) begin
 ap_condition_pp0_exit_iter0_state2 = 1'b1;
 end else begin
 ap_condition_pp0_exit_iter0_state2 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state38)) begin
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
 if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
 ap_idle_pp0 = 1'b1;
 end else begin
 ap_idle_pp0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state38)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_sig_allocacmp_p_load = grp_fu_88_p2;
 end else begin
 ap_sig_allocacmp_p_load = empty_fu_36;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_01001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 b_o = grp_fu_88_p2;
 end else begin
 b_o = b_i;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 b_o_ap_vld = 1'b1;
 end else begin
 b_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state38)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_pp0_stage0 : begin
 if ((~((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln7_fu_82_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
 end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln7_fu_82_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_NS_fsm = ap_ST_fsm_state38;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end
 end
 ap_ST_fsm_pp0_stage1 : begin
 if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
 end
 end
 ap_ST_fsm_pp0_stage2 : begin
 if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage2;
 end
 end
 ap_ST_fsm_pp0_stage3 : begin
 if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage3;
 end
 end
 ap_ST_fsm_pp0_stage4 : begin
 if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage4;
 end
 end
 ap_ST_fsm_pp0_stage5 : begin
 if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage6;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage5;
 end
 end
 ap_ST_fsm_pp0_stage6 : begin
 if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage7;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage6;
 end
 end
 ap_ST_fsm_pp0_stage7 : begin
 if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage8;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage7;
 end
 end
 ap_ST_fsm_pp0_stage8 : begin
 if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage9;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage8;
 end
 end
 ap_ST_fsm_pp0_stage9 : begin
 if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage10;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage9;
 end
 end
 ap_ST_fsm_pp0_stage10 : begin
 if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage11;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage10;
 end
 end
 ap_ST_fsm_pp0_stage11 : begin
 if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage12;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage11;
 end
 end
 ap_ST_fsm_pp0_stage12 : begin
 if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage13;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage12;
 end
 end
 ap_ST_fsm_pp0_stage13 : begin
 if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage14;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage13;
 end
 end
 ap_ST_fsm_pp0_stage14 : begin
 if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage15;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage14;
 end
 end
 ap_ST_fsm_pp0_stage15 : begin
 if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage16;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage15;
 end
 end
 ap_ST_fsm_pp0_stage16 : begin
 if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage17;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage16;
 end
 end
 ap_ST_fsm_pp0_stage17 : begin
 if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage18;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage17;
 end
 end
 ap_ST_fsm_pp0_stage18 : begin
 if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage19;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage18;
 end
 end
 ap_ST_fsm_pp0_stage19 : begin
 if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage20;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage19;
 end
 end
 ap_ST_fsm_pp0_stage20 : begin
 if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage21;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage20;
 end
 end
 ap_ST_fsm_pp0_stage21 : begin
 if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage22;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage21;
 end
 end
 ap_ST_fsm_pp0_stage22 : begin
 if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage23;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage22;
 end
 end
 ap_ST_fsm_pp0_stage23 : begin
 if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage24;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage23;
 end
 end
 ap_ST_fsm_pp0_stage24 : begin
 if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage25;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage24;
 end
 end
 ap_ST_fsm_pp0_stage25 : begin
 if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage26;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage25;
 end
 end
 ap_ST_fsm_pp0_stage26 : begin
 if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage27;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage26;
 end
 end
 ap_ST_fsm_pp0_stage27 : begin
 if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage28;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage27;
 end
 end
 ap_ST_fsm_pp0_stage28 : begin
 if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage29;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage28;
 end
 end
 ap_ST_fsm_pp0_stage29 : begin
 if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage30;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage29;
 end
 end
 ap_ST_fsm_pp0_stage30 : begin
 if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage31;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage30;
 end
 end
 ap_ST_fsm_pp0_stage31 : begin
 if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage32;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage31;
 end
 end
 ap_ST_fsm_pp0_stage32 : begin
 if ((1'b0 == ap_block_pp0_stage32_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage33;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage32;
 end
 end
 ap_ST_fsm_pp0_stage33 : begin
 if ((1'b0 == ap_block_pp0_stage33_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage34;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage33;
 end
 end
 ap_ST_fsm_pp0_stage34 : begin
 if ((1'b0 == ap_block_pp0_stage34_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage34;
 end
 end
 ap_ST_fsm_state38 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage34 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state38 = ap_CS_fsm[32'd36];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_block_state10_pp0_stage8_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state11_pp0_stage9_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state12_pp0_stage10_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state13_pp0_stage11_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state14_pp0_stage12_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state15_pp0_stage13_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state16_pp0_stage14_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state17_pp0_stage15_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state18_pp0_stage16_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state19_pp0_stage17_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state20_pp0_stage18_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state21_pp0_stage19_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state22_pp0_stage20_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state23_pp0_stage21_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state24_pp0_stage22_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state25_pp0_stage23_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state26_pp0_stage24_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state27_pp0_stage25_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state28_pp0_stage26_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state29_pp0_stage27_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state30_pp0_stage28_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state31_pp0_stage29_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state32_pp0_stage30_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state33_pp0_stage31_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state34_pp0_stage32_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state35_pp0_stage33_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state36_pp0_stage34_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state37_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state4_pp0_stage2_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state5_pp0_stage3_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state6_pp0_stage4_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state7_pp0_stage5_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state8_pp0_stage6_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state9_pp0_stage7_iter0 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_return = 32'd0;
assign icmp_ln7_fu_82_p2 = ((ap_sig_allocacmp_p_load == 32'd0) ? 1'b1 : 1'b0);
assign temptemp1 = temp_reg_116;
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
