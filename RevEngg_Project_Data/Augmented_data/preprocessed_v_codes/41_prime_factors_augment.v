module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n_i,
 n_o,
 n_o_ap_vld,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 4'd1;
parameter ap_ST_fsm_state2 = 4'd2;
parameter ap_ST_fsm_state3 = 4'd4;
parameter ap_ST_fsm_state4 = 4'd8;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n_i;
output [31:0] n_o;
output n_o_ap_vld;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] n_o;
reg n_o_ap_vld;
reg temptemp1_ap_vld;
reg[31:0] temptemp2;
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [31:0] p_load_reg_116;
wire ap_CS_fsm_state2;
reg [31:0] i_2_reg_121;
wire ap_CS_fsm_state3;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_temptemp2;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_temptemp2_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_n;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_n_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_p_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_p_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_ap_start_reg;
wire [0:0] icmp_ln18_fu_86_p2;
wire ap_CS_fsm_state4;
reg [31:0] temptemp2_reg;
reg [31:0] n_o_reg;
reg [31:0] empty_fu_40;
reg [31:0] i_fu_36;
wire [31:0] i_3_fu_91_p2;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_ap_start_reg = 1'b0;
#0 empty_fu_40 = 32'd0;
#0 i_fu_36 = 32'd0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_19_2 grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_ap_ready),
 .empty(p_load_reg_116),
 .i(i_2_reg_121),
 .temptemp2(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_temptemp2),
 .temptemp2_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_temptemp2_ap_vld),
 .n(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_n),
 .n_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_n_ap_vld),
 .p_out(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_p_out),
 .p_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_p_out_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln18_fu_86_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 empty_fu_40 <= n_i;
 end else if (((grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_p_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 empty_fu_40 <= grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_p_out;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 i_fu_36 <= 32'd2;
 end else if (((icmp_ln18_fu_86_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 i_fu_36 <= i_3_fu_91_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 i_2_reg_121 <= i_fu_36;
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_n_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 n_o_reg <= grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_n;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 p_load_reg_116 <= empty_fu_40;
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_temptemp2_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 temptemp2_reg <= grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_temptemp2;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln18_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
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
 if (((icmp_ln18_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_n_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 n_o = grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_n;
 end else begin
 n_o = n_o_reg;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 n_o_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_n_ap_vld;
 end else begin
 n_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_temptemp2_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 temptemp2 = grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_temptemp2;
 end else begin
 temptemp2 = temptemp2_reg;
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
 if (((icmp_ln18_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state4 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_ap_start_reg;
assign i_3_fu_91_p2 = (i_fu_36 + 32'd1);
assign icmp_ln18_fu_86_p2 = (($signed(i_fu_36) > $signed(empty_fu_40)) ? 1'b1 : 1'b0);
assign temptemp1 = n_i;
assign temptemp2_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_58_temptemp2_ap_vld;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_19_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 empty,
 i,
 temptemp2,
 temptemp2_ap_vld,
 n,
 n_ap_vld,
 p_out,
 p_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 70'd1;
parameter ap_ST_fsm_pp0_stage1 = 70'd2;
parameter ap_ST_fsm_pp0_stage2 = 70'd4;
parameter ap_ST_fsm_pp0_stage3 = 70'd8;
parameter ap_ST_fsm_pp0_stage4 = 70'd16;
parameter ap_ST_fsm_pp0_stage5 = 70'd32;
parameter ap_ST_fsm_pp0_stage6 = 70'd64;
parameter ap_ST_fsm_pp0_stage7 = 70'd128;
parameter ap_ST_fsm_pp0_stage8 = 70'd256;
parameter ap_ST_fsm_pp0_stage9 = 70'd512;
parameter ap_ST_fsm_pp0_stage10 = 70'd1024;
parameter ap_ST_fsm_pp0_stage11 = 70'd2048;
parameter ap_ST_fsm_pp0_stage12 = 70'd4096;
parameter ap_ST_fsm_pp0_stage13 = 70'd8192;
parameter ap_ST_fsm_pp0_stage14 = 70'd16384;
parameter ap_ST_fsm_pp0_stage15 = 70'd32768;
parameter ap_ST_fsm_pp0_stage16 = 70'd65536;
parameter ap_ST_fsm_pp0_stage17 = 70'd131072;
parameter ap_ST_fsm_pp0_stage18 = 70'd262144;
parameter ap_ST_fsm_pp0_stage19 = 70'd524288;
parameter ap_ST_fsm_pp0_stage20 = 70'd1048576;
parameter ap_ST_fsm_pp0_stage21 = 70'd2097152;
parameter ap_ST_fsm_pp0_stage22 = 70'd4194304;
parameter ap_ST_fsm_pp0_stage23 = 70'd8388608;
parameter ap_ST_fsm_pp0_stage24 = 70'd16777216;
parameter ap_ST_fsm_pp0_stage25 = 70'd33554432;
parameter ap_ST_fsm_pp0_stage26 = 70'd67108864;
parameter ap_ST_fsm_pp0_stage27 = 70'd134217728;
parameter ap_ST_fsm_pp0_stage28 = 70'd268435456;
parameter ap_ST_fsm_pp0_stage29 = 70'd536870912;
parameter ap_ST_fsm_pp0_stage30 = 70'd1073741824;
parameter ap_ST_fsm_pp0_stage31 = 70'd2147483648;
parameter ap_ST_fsm_pp0_stage32 = 70'd4294967296;
parameter ap_ST_fsm_pp0_stage33 = 70'd8589934592;
parameter ap_ST_fsm_pp0_stage34 = 70'd17179869184;
parameter ap_ST_fsm_pp0_stage35 = 70'd34359738368;
parameter ap_ST_fsm_pp0_stage36 = 70'd68719476736;
parameter ap_ST_fsm_pp0_stage37 = 70'd137438953472;
parameter ap_ST_fsm_pp0_stage38 = 70'd274877906944;
parameter ap_ST_fsm_pp0_stage39 = 70'd549755813888;
parameter ap_ST_fsm_pp0_stage40 = 70'd1099511627776;
parameter ap_ST_fsm_pp0_stage41 = 70'd2199023255552;
parameter ap_ST_fsm_pp0_stage42 = 70'd4398046511104;
parameter ap_ST_fsm_pp0_stage43 = 70'd8796093022208;
parameter ap_ST_fsm_pp0_stage44 = 70'd17592186044416;
parameter ap_ST_fsm_pp0_stage45 = 70'd35184372088832;
parameter ap_ST_fsm_pp0_stage46 = 70'd70368744177664;
parameter ap_ST_fsm_pp0_stage47 = 70'd140737488355328;
parameter ap_ST_fsm_pp0_stage48 = 70'd281474976710656;
parameter ap_ST_fsm_pp0_stage49 = 70'd562949953421312;
parameter ap_ST_fsm_pp0_stage50 = 70'd1125899906842624;
parameter ap_ST_fsm_pp0_stage51 = 70'd2251799813685248;
parameter ap_ST_fsm_pp0_stage52 = 70'd4503599627370496;
parameter ap_ST_fsm_pp0_stage53 = 70'd9007199254740992;
parameter ap_ST_fsm_pp0_stage54 = 70'd18014398509481984;
parameter ap_ST_fsm_pp0_stage55 = 70'd36028797018963968;
parameter ap_ST_fsm_pp0_stage56 = 70'd72057594037927936;
parameter ap_ST_fsm_pp0_stage57 = 70'd144115188075855872;
parameter ap_ST_fsm_pp0_stage58 = 70'd288230376151711744;
parameter ap_ST_fsm_pp0_stage59 = 70'd576460752303423488;
parameter ap_ST_fsm_pp0_stage60 = 70'd1152921504606846976;
parameter ap_ST_fsm_pp0_stage61 = 70'd2305843009213693952;
parameter ap_ST_fsm_pp0_stage62 = 70'd4611686018427387904;
parameter ap_ST_fsm_pp0_stage63 = 70'd9223372036854775808;
parameter ap_ST_fsm_pp0_stage64 = 70'd18446744073709551616;
parameter ap_ST_fsm_pp0_stage65 = 70'd36893488147419103232;
parameter ap_ST_fsm_pp0_stage66 = 70'd73786976294838206464;
parameter ap_ST_fsm_pp0_stage67 = 70'd147573952589676412928;
parameter ap_ST_fsm_pp0_stage68 = 70'd295147905179352825856;
parameter ap_ST_fsm_pp0_stage69 = 70'd590295810358705651712;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] empty;
input [31:0] i;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] n;
output n_ap_vld;
output [31:0] p_out;
output p_out_ap_vld;
reg ap_idle;
reg temptemp2_ap_vld;
reg n_ap_vld;
reg p_out_ap_vld;
(* fsm_encoding = "none" *) reg [69:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
reg ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_CS_fsm_pp0_stage35;
wire ap_block_pp0_stage35_subdone;
reg ap_enable_reg_pp0_iter0_reg;
wire [0:0] icmp_ln19_fu_72_p2;
reg ap_condition_exit_pp0_iter0_stage35;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_CS_fsm_pp0_stage69;
wire ap_block_pp0_stage69_subdone;
wire ap_block_pp0_stage0_11001;
reg [31:0] p_load_reg_107;
wire ap_block_pp0_stage35_11001;
wire ap_block_pp0_stage0_subdone;
wire ap_block_pp0_stage35;
reg [31:0] empty_7_fu_28;
wire [31:0] grp_fu_78_p2;
reg [31:0] ap_sig_allocacmp_p_load;
wire ap_block_pp0_stage0;
wire ap_loop_init;
wire ap_block_pp0_stage35_01001;
wire ap_block_pp0_stage0_01001;
wire [31:0] grp_fu_66_p2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [69:0] ap_NS_fsm;
reg ap_idle_pp0_1to1;
wire ap_block_pp0_stage1_subdone;
wire ap_block_pp0_stage2_subdone;
wire ap_block_pp0_stage3_subdone;
wire ap_block_pp0_stage4_subdone;
wire ap_block_pp0_stage5_subdone;
wire ap_block_pp0_stage6_subdone;
wire ap_block_pp0_stage7_subdone;
wire ap_block_pp0_stage8_subdone;
wire ap_block_pp0_stage9_subdone;
wire ap_block_pp0_stage10_subdone;
wire ap_block_pp0_stage11_subdone;
wire ap_block_pp0_stage12_subdone;
wire ap_block_pp0_stage13_subdone;
wire ap_block_pp0_stage14_subdone;
wire ap_block_pp0_stage15_subdone;
wire ap_block_pp0_stage16_subdone;
wire ap_block_pp0_stage17_subdone;
wire ap_block_pp0_stage18_subdone;
wire ap_block_pp0_stage19_subdone;
wire ap_block_pp0_stage20_subdone;
wire ap_block_pp0_stage21_subdone;
wire ap_block_pp0_stage22_subdone;
wire ap_block_pp0_stage23_subdone;
wire ap_block_pp0_stage24_subdone;
wire ap_block_pp0_stage25_subdone;
wire ap_block_pp0_stage26_subdone;
wire ap_block_pp0_stage27_subdone;
wire ap_block_pp0_stage28_subdone;
wire ap_block_pp0_stage29_subdone;
wire ap_block_pp0_stage30_subdone;
wire ap_block_pp0_stage31_subdone;
wire ap_block_pp0_stage32_subdone;
wire ap_block_pp0_stage33_subdone;
wire ap_block_pp0_stage34_subdone;
wire ap_block_pp0_stage36_subdone;
wire ap_block_pp0_stage37_subdone;
wire ap_block_pp0_stage38_subdone;
wire ap_block_pp0_stage39_subdone;
wire ap_block_pp0_stage40_subdone;
wire ap_block_pp0_stage41_subdone;
wire ap_block_pp0_stage42_subdone;
wire ap_block_pp0_stage43_subdone;
wire ap_block_pp0_stage44_subdone;
wire ap_block_pp0_stage45_subdone;
wire ap_block_pp0_stage46_subdone;
wire ap_block_pp0_stage47_subdone;
wire ap_block_pp0_stage48_subdone;
wire ap_block_pp0_stage49_subdone;
wire ap_block_pp0_stage50_subdone;
wire ap_block_pp0_stage51_subdone;
wire ap_block_pp0_stage52_subdone;
wire ap_block_pp0_stage53_subdone;
wire ap_block_pp0_stage54_subdone;
wire ap_block_pp0_stage55_subdone;
wire ap_block_pp0_stage56_subdone;
wire ap_block_pp0_stage57_subdone;
wire ap_block_pp0_stage58_subdone;
wire ap_block_pp0_stage59_subdone;
wire ap_block_pp0_stage60_subdone;
wire ap_block_pp0_stage61_subdone;
wire ap_block_pp0_stage62_subdone;
wire ap_block_pp0_stage63_subdone;
wire ap_block_pp0_stage64_subdone;
wire ap_block_pp0_stage65_subdone;
wire ap_block_pp0_stage66_subdone;
wire ap_block_pp0_stage67_subdone;
wire ap_block_pp0_stage68_subdone;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 70'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 empty_7_fu_28 = 32'd0;
#0 ap_done_reg = 1'b0;
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
 .din0(ap_sig_allocacmp_p_load),
 .din1(i),
 .ce(1'b1),
 .dout(grp_fu_66_p2)
);
entry_point_sdiv_32ns_32ns_32_36_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
sdiv_32ns_32ns_32_36_1_U2(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(p_load_reg_107),
 .din1(i),
 .ce(1'b1),
 .dout(grp_fu_78_p2)
);
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(ap_start),
 .ap_ready(ap_ready_sig),
 .ap_done(ap_done_sig),
 .ap_start_int(ap_start_int),
 .ap_loop_init(ap_loop_init),
 .ap_ready_int(ap_ready_int),
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage35),
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
 end else if (((1'b1 == ap_CS_fsm_pp0_stage35) & (ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage35_subdone))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter0_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter0_stage35)) begin
 ap_enable_reg_pp0_iter0_reg <= 1'b0;
 end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 ap_enable_reg_pp0_iter0_reg <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b1 == ap_CS_fsm_pp0_stage69) & (1'b0 == ap_block_pp0_stage69_subdone))) begin
 ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
 if ((ap_loop_init == 1'b1)) begin
 empty_7_fu_28 <= empty;
 end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
 empty_7_fu_28 <= grp_fu_78_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
 p_load_reg_107 <= ap_sig_allocacmp_p_load;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_pp0_stage35) & (icmp_ln19_fu_72_p2 == 1'd0) & (ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage35_subdone))) begin
 ap_condition_exit_pp0_iter0_stage35 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage35 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_pp0_stage35) & (ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage35_subdone))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 ap_enable_reg_pp0_iter0 = ap_start_int;
 end else begin
 ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
 end
end
always @ (*) begin
 if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
 ap_idle_pp0_1to1 = 1'b1;
 end else begin
 ap_idle_pp0_1to1 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_pp0_stage69) & (ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage69_subdone))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 ap_sig_allocacmp_p_load = empty;
 end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
 ap_sig_allocacmp_p_load = grp_fu_78_p2;
 end else begin
 ap_sig_allocacmp_p_load = empty_7_fu_28;
 end
 end else begin
 ap_sig_allocacmp_p_load = empty_7_fu_28;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
 n_ap_vld = 1'b1;
 end else begin
 n_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_pp0_stage35) & (ap_loop_exit_ready == 1'b1) & (icmp_ln19_fu_72_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage35_11001))) begin
 p_out_ap_vld = 1'b1;
 end else begin
 p_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_pp0_stage35) & (icmp_ln19_fu_72_p2 == 1'd1) & (ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage35_11001))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_pp0_stage0 : begin
 if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
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
 ap_NS_fsm = ap_ST_fsm_pp0_stage35;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage34;
 end
 end
 ap_ST_fsm_pp0_stage35 : begin
 if ((1'b1 == ap_condition_exit_pp0_iter0_stage35)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else if ((1'b0 == ap_block_pp0_stage35_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage36;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage35;
 end
 end
 ap_ST_fsm_pp0_stage36 : begin
 if ((1'b0 == ap_block_pp0_stage36_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage37;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage36;
 end
 end
 ap_ST_fsm_pp0_stage37 : begin
 if ((1'b0 == ap_block_pp0_stage37_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage38;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage37;
 end
 end
 ap_ST_fsm_pp0_stage38 : begin
 if ((1'b0 == ap_block_pp0_stage38_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage39;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage38;
 end
 end
 ap_ST_fsm_pp0_stage39 : begin
 if ((1'b0 == ap_block_pp0_stage39_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage40;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage39;
 end
 end
 ap_ST_fsm_pp0_stage40 : begin
 if ((1'b0 == ap_block_pp0_stage40_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage41;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage40;
 end
 end
 ap_ST_fsm_pp0_stage41 : begin
 if ((1'b0 == ap_block_pp0_stage41_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage42;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage41;
 end
 end
 ap_ST_fsm_pp0_stage42 : begin
 if ((1'b0 == ap_block_pp0_stage42_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage43;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage42;
 end
 end
 ap_ST_fsm_pp0_stage43 : begin
 if ((1'b0 == ap_block_pp0_stage43_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage44;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage43;
 end
 end
 ap_ST_fsm_pp0_stage44 : begin
 if ((1'b0 == ap_block_pp0_stage44_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage45;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage44;
 end
 end
 ap_ST_fsm_pp0_stage45 : begin
 if ((1'b0 == ap_block_pp0_stage45_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage46;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage45;
 end
 end
 ap_ST_fsm_pp0_stage46 : begin
 if ((1'b0 == ap_block_pp0_stage46_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage47;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage46;
 end
 end
 ap_ST_fsm_pp0_stage47 : begin
 if ((1'b0 == ap_block_pp0_stage47_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage48;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage47;
 end
 end
 ap_ST_fsm_pp0_stage48 : begin
 if ((1'b0 == ap_block_pp0_stage48_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage49;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage48;
 end
 end
 ap_ST_fsm_pp0_stage49 : begin
 if ((1'b0 == ap_block_pp0_stage49_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage50;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage49;
 end
 end
 ap_ST_fsm_pp0_stage50 : begin
 if ((1'b0 == ap_block_pp0_stage50_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage51;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage50;
 end
 end
 ap_ST_fsm_pp0_stage51 : begin
 if ((1'b0 == ap_block_pp0_stage51_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage52;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage51;
 end
 end
 ap_ST_fsm_pp0_stage52 : begin
 if ((1'b0 == ap_block_pp0_stage52_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage53;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage52;
 end
 end
 ap_ST_fsm_pp0_stage53 : begin
 if ((1'b0 == ap_block_pp0_stage53_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage54;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage53;
 end
 end
 ap_ST_fsm_pp0_stage54 : begin
 if ((1'b0 == ap_block_pp0_stage54_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage55;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage54;
 end
 end
 ap_ST_fsm_pp0_stage55 : begin
 if ((1'b0 == ap_block_pp0_stage55_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage56;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage55;
 end
 end
 ap_ST_fsm_pp0_stage56 : begin
 if ((1'b0 == ap_block_pp0_stage56_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage57;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage56;
 end
 end
 ap_ST_fsm_pp0_stage57 : begin
 if ((1'b0 == ap_block_pp0_stage57_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage58;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage57;
 end
 end
 ap_ST_fsm_pp0_stage58 : begin
 if ((1'b0 == ap_block_pp0_stage58_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage59;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage58;
 end
 end
 ap_ST_fsm_pp0_stage59 : begin
 if ((1'b0 == ap_block_pp0_stage59_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage60;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage59;
 end
 end
 ap_ST_fsm_pp0_stage60 : begin
 if ((1'b0 == ap_block_pp0_stage60_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage61;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage60;
 end
 end
 ap_ST_fsm_pp0_stage61 : begin
 if ((1'b0 == ap_block_pp0_stage61_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage62;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage61;
 end
 end
 ap_ST_fsm_pp0_stage62 : begin
 if ((1'b0 == ap_block_pp0_stage62_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage63;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage62;
 end
 end
 ap_ST_fsm_pp0_stage63 : begin
 if ((1'b0 == ap_block_pp0_stage63_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage64;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage63;
 end
 end
 ap_ST_fsm_pp0_stage64 : begin
 if ((1'b0 == ap_block_pp0_stage64_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage65;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage64;
 end
 end
 ap_ST_fsm_pp0_stage65 : begin
 if ((1'b0 == ap_block_pp0_stage65_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage66;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage65;
 end
 end
 ap_ST_fsm_pp0_stage66 : begin
 if ((1'b0 == ap_block_pp0_stage66_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage67;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage66;
 end
 end
 ap_ST_fsm_pp0_stage67 : begin
 if ((1'b0 == ap_block_pp0_stage67_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage68;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage67;
 end
 end
 ap_ST_fsm_pp0_stage68 : begin
 if ((1'b0 == ap_block_pp0_stage68_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage69;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage68;
 end
 end
 ap_ST_fsm_pp0_stage69 : begin
 if ((1'b0 == ap_block_pp0_stage69_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage69;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage35 = ap_CS_fsm[32'd35];
assign ap_CS_fsm_pp0_stage69 = ap_CS_fsm[32'd69];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage35_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage36_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage37_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage38_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage39_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage40_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage41_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage42_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage43_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage44_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage45_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage46_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage47_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage48_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage49_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage50_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage51_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage52_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage53_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage54_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage55_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage56_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage57_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage58_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage59_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage60_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage61_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage62_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage63_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage64_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage65_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage66_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage67_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage68_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage69_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage35;
assign ap_ready = ap_ready_sig;
assign icmp_ln19_fu_72_p2 = ((grp_fu_66_p2 == 32'd0) ? 1'b1 : 1'b0);
assign n = grp_fu_78_p2;
assign p_out = p_load_reg_107;
assign temptemp2 = i;
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
module entry_point_sdiv_32ns_32ns_32_36_1_divider
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
module entry_point_sdiv_32ns_32ns_32_36_1 
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
entry_point_sdiv_32ns_32ns_32_36_1_divider #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_sdiv_32ns_32ns_32_36_1_divider_u (
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
assign dout = quot;
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
