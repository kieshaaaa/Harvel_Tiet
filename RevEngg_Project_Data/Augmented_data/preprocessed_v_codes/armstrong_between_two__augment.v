module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 lowerBound,
 upperBound,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 8'd1;
parameter ap_ST_fsm_state2 = 8'd2;
parameter ap_ST_fsm_state3 = 8'd4;
parameter ap_ST_fsm_state4 = 8'd8;
parameter ap_ST_fsm_state5 = 8'd16;
parameter ap_ST_fsm_state6 = 8'd32;
parameter ap_ST_fsm_state7 = 8'd64;
parameter ap_ST_fsm_state8 = 8'd128;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] lowerBound;
input [31:0] upperBound;
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
(* fsm_encoding = "none" *) reg [7:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [31:0] upperBound_read_reg_208;
wire [63:0] grp_fu_150_p1;
reg [63:0] y_assign_reg_222;
wire ap_CS_fsm_state5;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_nDigits_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_nDigits_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_sumOfPowers_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_sumOfPowers_out_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_grp_fu_150_p_din0;
wire grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_grp_fu_150_p_ce;
reg grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_ap_start_reg;
wire ap_CS_fsm_state2;
wire [0:0] icmp_ln20_fu_162_p2;
wire ap_CS_fsm_state3;
reg grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_ap_start_reg;
wire ap_CS_fsm_state6;
wire ap_CS_fsm_state7;
reg [31:0] num_fu_66;
wire [31:0] counter_2_fu_179_p2;
wire ap_CS_fsm_state8;
wire ap_CS_fsm_state4;
wire [0:0] icmp_ln35_fu_174_p2;
reg [31:0] grp_fu_150_p0;
reg grp_fu_150_ce;
reg [7:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ST_fsm_state6_blk;
reg ap_ST_fsm_state7_blk;
wire ap_ST_fsm_state8_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_ap_start_reg = 1'b0;
#0 num_fu_66 = 32'd0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_24_2 grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_ap_ready),
 .counter_3(num_fu_66),
 .nDigits_out(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_nDigits_out),
 .nDigits_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_nDigits_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_30_3 grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_ap_ready),
 .counter_3(num_fu_66),
 .y_assign(y_assign_reg_222),
 .sumOfPowers_out(grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_sumOfPowers_out),
 .sumOfPowers_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_sumOfPowers_out_ap_vld),
 .grp_fu_150_p_din0(grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_grp_fu_150_p_din0),
 .grp_fu_150_p_dout0(grp_fu_150_p1),
 .grp_fu_150_p_ce(grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_grp_fu_150_p_ce)
);
entry_point_sitodp_32ns_64_2_no_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 2 ),
 .din0_WIDTH( 32 ),
 .dout_WIDTH( 64 ))
sitodp_32ns_64_2_no_dsp_1_U67(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(grp_fu_150_p0),
 .ce(grp_fu_150_ce),
 .dout(grp_fu_150_p1)
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
 grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln20_fu_162_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 num_fu_66 <= lowerBound;
 end else if ((1'b1 == ap_CS_fsm_state8)) begin
 num_fu_66 <= counter_2_fu_179_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 upperBound_read_reg_208 <= upperBound;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 y_assign_reg_222 <= grp_fu_150_p1;
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
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_ap_done == 1'b0)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_ap_done == 1'b0)) begin
 ap_ST_fsm_state7_blk = 1'b1;
 end else begin
 ap_ST_fsm_state7_blk = 1'b0;
 end
end
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
 if (((icmp_ln20_fu_162_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
 if (((icmp_ln20_fu_162_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 grp_fu_150_ce = grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_grp_fu_150_p_ce;
 end else begin
 grp_fu_150_ce = 1'b1;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 grp_fu_150_p0 = grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_grp_fu_150_p_din0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 grp_fu_150_p0 = grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_nDigits_out;
 end else begin
 grp_fu_150_p0 = 'bx;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln35_fu_174_p2 == 1'd1))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
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
 if (((icmp_ln20_fu_162_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
 ap_NS_fsm = ap_ST_fsm_state7;
 end
 ap_ST_fsm_state7 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state7))) begin
 ap_NS_fsm = ap_ST_fsm_state8;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end
 end
 ap_ST_fsm_state8 : begin
 ap_NS_fsm = ap_ST_fsm_state2;
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
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_return = 32'd0;
assign counter_2_fu_179_p2 = (num_fu_66 + 32'd1);
assign grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_113_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_ap_start_reg;
assign icmp_ln20_fu_162_p2 = (($signed(num_fu_66) > $signed(upperBound_read_reg_208)) ? 1'b1 : 1'b0);
assign icmp_ln35_fu_174_p2 = ((grp_entry_point_Pipeline_VITIS_LOOP_30_3_fu_119_sumOfPowers_out == num_fu_66) ? 1'b1 : 1'b0);
assign temptemp1 = lowerBound;
assign temptemp2 = upperBound;
assign temptemp3 = num_fu_66;
endmodule
module entry_point_bitselect_1ns_52ns_32s_1_1_1 (sel,din,dout);
parameter ADDRWIDTH = 32;
parameter DATAWIDTH = 52;
input [ADDRWIDTH-1:0] sel;
input [DATAWIDTH-1:0] din;
output dout;
reg out_tmp;
always @ (*) begin
(* parallel_case *) case (sel)
0: out_tmp = din[0];
1: out_tmp = din[1];
2: out_tmp = din[2];
3: out_tmp = din[3];
4: out_tmp = din[4];
5: out_tmp = din[5];
6: out_tmp = din[6];
7: out_tmp = din[7];
8: out_tmp = din[8];
9: out_tmp = din[9];
10: out_tmp = din[10];
11: out_tmp = din[11];
12: out_tmp = din[12];
13: out_tmp = din[13];
14: out_tmp = din[14];
15: out_tmp = din[15];
16: out_tmp = din[16];
17: out_tmp = din[17];
18: out_tmp = din[18];
19: out_tmp = din[19];
20: out_tmp = din[20];
21: out_tmp = din[21];
22: out_tmp = din[22];
23: out_tmp = din[23];
24: out_tmp = din[24];
25: out_tmp = din[25];
26: out_tmp = din[26];
27: out_tmp = din[27];
28: out_tmp = din[28];
29: out_tmp = din[29];
30: out_tmp = din[30];
31: out_tmp = din[31];
32: out_tmp = din[32];
33: out_tmp = din[33];
34: out_tmp = din[34];
35: out_tmp = din[35];
36: out_tmp = din[36];
37: out_tmp = din[37];
38: out_tmp = din[38];
39: out_tmp = din[39];
40: out_tmp = din[40];
41: out_tmp = din[41];
42: out_tmp = din[42];
43: out_tmp = din[43];
44: out_tmp = din[44];
45: out_tmp = din[45];
46: out_tmp = din[46];
47: out_tmp = din[47];
48: out_tmp = din[48];
49: out_tmp = din[49];
50: out_tmp = din[50];
51: out_tmp = din[51];
default: out_tmp = 'bx;
endcase
end
assign dout = out_tmp;
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
module entry_point_entry_point_Pipeline_VITIS_LOOP_24_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 counter_3,
 nDigits_out,
 nDigits_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] counter_3;
output [31:0] nDigits_out;
output nDigits_out_ap_vld;
reg ap_idle;
reg nDigits_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln24_fu_85_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [31:0] temp_fu_42;
wire signed [31:0] sext_ln9_fu_172_p1;
wire ap_block_pp0_stage0_11001;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg [31:0] nDigits_fu_46;
wire [31:0] nDigits_2_fu_91_p2;
wire ap_block_pp0_stage0_01001;
wire [33:0] mul_ln25_fu_63_p1;
wire signed [31:0] icmp_ln24_fu_85_p0;
wire signed [31:0] sext_ln25_fu_97_p0;
wire [64:0] mul_ln25_fu_63_p2;
wire signed [31:0] tmp_fu_108_p1;
wire [64:0] sub_ln25_fu_102_p2;
wire [0:0] tmp_fu_108_p3;
wire [27:0] tmp_47_cast_fu_116_p4;
wire [27:0] tmp_48_cast_fu_136_p4;
wire [27:0] select_ln25_fu_146_p3;
wire [28:0] zext_ln25_fu_154_p1;
wire [28:0] sub_ln25_1_fu_158_p2;
wire [28:0] tmp_48_cast1_fu_126_p4;
wire [28:0] temp_4_fu_164_p3;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 temp_fu_42 = 32'd0;
#0 nDigits_fu_46 = 32'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_32s_34ns_65_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 34 ),
 .dout_WIDTH( 65 ))
mul_32s_34ns_65_1_1_U1(
 .din0(sext_ln25_fu_97_p0),
 .din1(mul_ln25_fu_63_p1),
 .dout(mul_ln25_fu_63_p2)
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
 nDigits_fu_46 <= 32'd0;
 end else if (((icmp_ln24_fu_85_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 nDigits_fu_46 <= nDigits_2_fu_91_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 temp_fu_42 <= counter_3;
 end else if (((icmp_ln24_fu_85_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 temp_fu_42 <= sext_ln9_fu_172_p1;
 end
 end
end
always @ (*) begin
 if (((icmp_ln24_fu_85_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((ap_loop_exit_ready == 1'b1) & (icmp_ln24_fu_85_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 nDigits_out_ap_vld = 1'b1;
 end else begin
 nDigits_out_ap_vld = 1'b0;
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
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln24_fu_85_p0 = temp_fu_42;
assign icmp_ln24_fu_85_p2 = ((icmp_ln24_fu_85_p0 == 32'd0) ? 1'b1 : 1'b0);
assign mul_ln25_fu_63_p1 = 65'd6871947674;
assign nDigits_2_fu_91_p2 = (nDigits_fu_46 + 32'd1);
assign nDigits_out = nDigits_fu_46;
assign select_ln25_fu_146_p3 = ((tmp_fu_108_p3[0:0] == 1'b1) ? tmp_47_cast_fu_116_p4 : tmp_48_cast_fu_136_p4);
assign sext_ln25_fu_97_p0 = temp_fu_42;
assign sext_ln9_fu_172_p1 = $signed(temp_4_fu_164_p3);
assign sub_ln25_1_fu_158_p2 = (29'd0 - zext_ln25_fu_154_p1);
assign sub_ln25_fu_102_p2 = (65'd0 - mul_ln25_fu_63_p2);
assign temp_4_fu_164_p3 = ((tmp_fu_108_p3[0:0] == 1'b1) ? sub_ln25_1_fu_158_p2 : tmp_48_cast1_fu_126_p4);
assign tmp_47_cast_fu_116_p4 = {{sub_ln25_fu_102_p2[63:36]}};
assign tmp_48_cast1_fu_126_p4 = {{mul_ln25_fu_63_p2[64:36]}};
assign tmp_48_cast_fu_136_p4 = {{mul_ln25_fu_63_p2[63:36]}};
assign tmp_fu_108_p1 = temp_fu_42;
assign tmp_fu_108_p3 = tmp_fu_108_p1[32'd31];
assign zext_ln25_fu_154_p1 = select_ln25_fu_146_p3;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_30_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 counter_3,
 y_assign,
 sumOfPowers_out,
 sumOfPowers_out_ap_vld,
 grp_fu_150_p_din0,
 grp_fu_150_p_dout0,
 grp_fu_150_p_ce
);
parameter ap_ST_fsm_pp0_stage0 = 6'd1;
parameter ap_ST_fsm_pp0_stage1 = 6'd2;
parameter ap_ST_fsm_pp0_stage2 = 6'd4;
parameter ap_ST_fsm_pp0_stage3 = 6'd8;
parameter ap_ST_fsm_pp0_stage4 = 6'd16;
parameter ap_ST_fsm_pp0_stage5 = 6'd32;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] counter_3;
input [63:0] y_assign;
output [31:0] sumOfPowers_out;
output sumOfPowers_out_ap_vld;
output [31:0] grp_fu_150_p_din0;
input [63:0] grp_fu_150_p_dout0;
output grp_fu_150_p_ce;
reg ap_idle;
reg sumOfPowers_out_ap_vld;
(* fsm_encoding = "none" *) reg [5:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
reg ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_enable_reg_pp0_iter2;
reg ap_enable_reg_pp0_iter3;
reg ap_enable_reg_pp0_iter4;
reg ap_enable_reg_pp0_iter5;
reg ap_enable_reg_pp0_iter6;
reg ap_enable_reg_pp0_iter7;
reg ap_enable_reg_pp0_iter8;
reg ap_enable_reg_pp0_iter9;
reg ap_idle_pp0;
wire ap_CS_fsm_pp0_stage5;
wire ap_block_pp0_stage5_subdone;
reg ap_enable_reg_pp0_iter0_reg;
reg [0:0] icmp_ln30_reg_453;
reg ap_condition_exit_pp0_iter0_stage5;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
wire [0:0] icmp_ln30_fu_183_p2;
reg [0:0] icmp_ln30_reg_453_pp0_iter1_reg;
reg [0:0] icmp_ln30_reg_453_pp0_iter2_reg;
reg [0:0] icmp_ln30_reg_453_pp0_iter3_reg;
reg [0:0] icmp_ln30_reg_453_pp0_iter4_reg;
reg [0:0] icmp_ln30_reg_453_pp0_iter5_reg;
reg [0:0] icmp_ln30_reg_453_pp0_iter6_reg;
reg [0:0] icmp_ln30_reg_453_pp0_iter7_reg;
reg [0:0] icmp_ln30_reg_453_pp0_iter8_reg;
wire [31:0] grp_fu_189_p2;
wire ap_block_pp0_stage5_11001;
wire [63:0] grp_pow_generic_double_s_fu_127_ap_return;
reg [63:0] tmp_reg_472;
wire ap_block_pp0_stage0_11001_ignoreCallOp144;
reg [63:0] conv_reg_477;
wire ap_CS_fsm_pp0_stage1;
wire ap_block_pp0_stage1_11001;
wire [63:0] grp_fu_157_p2;
reg [63:0] dc_reg_482;
wire ap_CS_fsm_pp0_stage4;
wire ap_block_pp0_stage4_11001;
wire ap_block_pp0_stage0_ignoreCallOp124;
reg [31:0] sumOfPowers_fu_100;
wire [31:0] result_fu_411_p3;
wire ap_block_pp0_stage5;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg ap_loop_exit_ready_pp0_iter1_reg;
reg ap_loop_exit_ready_pp0_iter2_reg;
reg ap_loop_exit_ready_pp0_iter3_reg;
reg ap_loop_exit_ready_pp0_iter4_reg;
reg ap_loop_exit_ready_pp0_iter5_reg;
reg ap_loop_exit_ready_pp0_iter6_reg;
reg ap_loop_exit_ready_pp0_iter7_reg;
reg ap_loop_exit_ready_pp0_iter8_reg;
reg [31:0] temp_fu_104;
wire signed [31:0] sext_ln9_fu_271_p1;
reg signed [31:0] ap_sig_allocacmp_temp_1;
wire ap_block_pp0_stage5_01001;
wire ap_CS_fsm_pp0_stage2;
wire ap_block_pp0_stage2;
reg [31:0] grp_fu_161_p0;
wire [33:0] mul_ln33_fu_165_p1;
wire signed [31:0] icmp_ln30_fu_183_p0;
wire [4:0] grp_fu_189_p1;
wire signed [31:0] sext_ln33_fu_196_p0;
wire [64:0] mul_ln33_fu_165_p2;
wire signed [31:0] tmp_33_fu_207_p1;
wire [64:0] sub_ln33_fu_201_p2;
wire [0:0] tmp_33_fu_207_p3;
wire [27:0] tmp_51_cast_fu_215_p4;
wire [27:0] tmp_52_cast_fu_235_p4;
wire [27:0] select_ln33_fu_245_p3;
wire [28:0] zext_ln33_fu_253_p1;
wire [28:0] sub_ln33_1_fu_257_p2;
wire [28:0] tmp_52_cast1_fu_225_p4;
wire [28:0] temp_2_fu_263_p3;
wire [63:0] data_fu_284_p1;
wire [51:0] trunc_ln505_fu_303_p1;
wire [53:0] mantissa_fu_307_p4;
wire [10:0] xs_exp_fu_295_p3;
wire [11:0] zext_ln486_fu_321_p1;
wire [11:0] add_ln486_fu_325_p2;
wire [10:0] sub_ln18_fu_339_p2;
wire [0:0] tmp_32_fu_331_p3;
wire signed [11:0] sext_ln18_fu_345_p1;
wire [11:0] select_ln18_fu_349_p3;
wire signed [31:0] sext_ln18_1_fu_357_p1;
wire [136:0] zext_ln15_fu_317_p1;
wire [136:0] zext_ln18_fu_361_p1;
wire [136:0] lshr_ln18_fu_365_p2;
wire [136:0] shl_ln18_fu_371_p2;
wire [31:0] tmp_s_fu_377_p4;
wire [31:0] tmp_28_fu_387_p4;
wire [31:0] val_fu_397_p3;
wire [0:0] xs_sign_fu_287_p3;
wire [31:0] result_2_fu_405_p2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [5:0] ap_NS_fsm;
wire ap_block_pp0_stage0_subdone;
reg ap_idle_pp0_1to9;
reg ap_done_pending_pp0;
wire ap_block_pp0_stage1_subdone;
wire ap_block_pp0_stage2_subdone;
wire ap_block_pp0_stage3_subdone;
wire ap_block_pp0_stage4_subdone;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 sumOfPowers_fu_100 = 32'd0;
#0 temp_fu_104 = 32'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_pow_generic_double_s grp_pow_generic_double_s_fu_127(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .base_r(grp_fu_150_p_dout0),
 .exp(y_assign),
 .ap_return(grp_pow_generic_double_s_fu_127_ap_return)
);
entry_point_dadd_64ns_64ns_64_3_full_dsp_1 #(
 .ID( 1 ),
 .NUM_STAGE( 3 ),
 .din0_WIDTH( 64 ),
 .din1_WIDTH( 64 ),
 .dout_WIDTH( 64 ))
dadd_64ns_64ns_64_3_full_dsp_1_U58(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(conv_reg_477),
 .din1(tmp_reg_472),
 .ce(1'b1),
 .dout(grp_fu_157_p2)
);
entry_point_mul_32s_34ns_65_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 34 ),
 .dout_WIDTH( 65 ))
mul_32s_34ns_65_1_1_U60(
 .din0(sext_ln33_fu_196_p0),
 .din1(mul_ln33_fu_165_p1),
 .dout(mul_ln33_fu_165_p2)
);
entry_point_srem_32s_5ns_32_36_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 5 ),
 .dout_WIDTH( 32 ))
srem_32s_5ns_32_36_1_U61(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(ap_sig_allocacmp_temp_1),
 .din1(grp_fu_189_p1),
 .ce(1'b1),
 .dout(grp_fu_189_p2)
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
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),
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
 end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter0_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 ap_enable_reg_pp0_iter0_reg <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
 ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter2 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
 ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter3 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
 ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter4 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
 ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter5 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
 ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter6 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
 ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter7 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
 ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter8 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
 ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter9 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
 ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 sumOfPowers_fu_100 <= 32'd0;
 end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
 sumOfPowers_fu_100 <= result_fu_411_p3;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln30_fu_183_p2 == 1'd0))) begin
 temp_fu_104 <= sext_ln9_fu_271_p1;
 end else if ((ap_loop_init == 1'b1)) begin
 temp_fu_104 <= counter_3;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
 ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
 ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
 ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
 ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
 ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
 ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
 ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
 ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 conv_reg_477 <= grp_fu_150_p_dout0;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
 dc_reg_482 <= grp_fu_157_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 icmp_ln30_reg_453 <= icmp_ln30_fu_183_p2;
 icmp_ln30_reg_453_pp0_iter1_reg <= icmp_ln30_reg_453;
 icmp_ln30_reg_453_pp0_iter2_reg <= icmp_ln30_reg_453_pp0_iter1_reg;
 icmp_ln30_reg_453_pp0_iter3_reg <= icmp_ln30_reg_453_pp0_iter2_reg;
 icmp_ln30_reg_453_pp0_iter4_reg <= icmp_ln30_reg_453_pp0_iter3_reg;
 icmp_ln30_reg_453_pp0_iter5_reg <= icmp_ln30_reg_453_pp0_iter4_reg;
 icmp_ln30_reg_453_pp0_iter6_reg <= icmp_ln30_reg_453_pp0_iter5_reg;
 icmp_ln30_reg_453_pp0_iter7_reg <= icmp_ln30_reg_453_pp0_iter6_reg;
 icmp_ln30_reg_453_pp0_iter8_reg <= icmp_ln30_reg_453_pp0_iter7_reg;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001_ignoreCallOp144) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 tmp_reg_472 <= grp_pow_generic_double_s_fu_127_ap_return;
 end
end
always @ (*) begin
 if (((icmp_ln30_reg_453 == 1'd1) & (ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
 ap_condition_exit_pp0_iter0_stage5 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage5 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (~((ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
 ap_done_pending_pp0 = 1'b1;
 end else begin
 ap_done_pending_pp0 = 1'b0;
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
 if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
 ap_idle_pp0 = 1'b1;
 end else begin
 ap_idle_pp0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
 ap_idle_pp0_1to9 = 1'b1;
 end else begin
 ap_idle_pp0_1to9 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter0_reg == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 ap_sig_allocacmp_temp_1 = counter_3;
 end else begin
 ap_sig_allocacmp_temp_1 = temp_fu_104;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 grp_fu_161_p0 = sumOfPowers_fu_100;
 end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
 grp_fu_161_p0 = grp_fu_189_p2;
 end else begin
 grp_fu_161_p0 = 'bx;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (icmp_ln30_reg_453_pp0_iter8_reg == 1'd1))) begin
 sumOfPowers_out_ap_vld = 1'b1;
 end else begin
 sumOfPowers_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_pp0_stage0 : begin
 if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to9 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage5;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln486_fu_325_p2 = ($signed(zext_ln486_fu_321_p1) + $signed(12'd3073));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001_ignoreCallOp144 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_ignoreCallOp124 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign data_fu_284_p1 = dc_reg_482;
assign grp_fu_150_p_ce = 1'b1;
assign grp_fu_150_p_din0 = grp_fu_161_p0;
assign grp_fu_189_p1 = 32'd10;
assign icmp_ln30_fu_183_p0 = ap_sig_allocacmp_temp_1;
assign icmp_ln30_fu_183_p2 = ((icmp_ln30_fu_183_p0 == 32'd0) ? 1'b1 : 1'b0);
assign lshr_ln18_fu_365_p2 = zext_ln15_fu_317_p1 >> zext_ln18_fu_361_p1;
assign mantissa_fu_307_p4 = {{{{1'd1}, {trunc_ln505_fu_303_p1}}}, {1'd0}};
assign mul_ln33_fu_165_p1 = 65'd6871947674;
assign result_2_fu_405_p2 = (32'd0 - val_fu_397_p3);
assign result_fu_411_p3 = ((xs_sign_fu_287_p3[0:0] == 1'b1) ? result_2_fu_405_p2 : val_fu_397_p3);
assign select_ln18_fu_349_p3 = ((tmp_32_fu_331_p3[0:0] == 1'b1) ? sext_ln18_fu_345_p1 : add_ln486_fu_325_p2);
assign select_ln33_fu_245_p3 = ((tmp_33_fu_207_p3[0:0] == 1'b1) ? tmp_51_cast_fu_215_p4 : tmp_52_cast_fu_235_p4);
assign sext_ln18_1_fu_357_p1 = $signed(select_ln18_fu_349_p3);
assign sext_ln18_fu_345_p1 = $signed(sub_ln18_fu_339_p2);
assign sext_ln33_fu_196_p0 = ap_sig_allocacmp_temp_1;
assign sext_ln9_fu_271_p1 = $signed(temp_2_fu_263_p3);
assign shl_ln18_fu_371_p2 = zext_ln15_fu_317_p1 << zext_ln18_fu_361_p1;
assign sub_ln18_fu_339_p2 = (11'd1023 - xs_exp_fu_295_p3);
assign sub_ln33_1_fu_257_p2 = (29'd0 - zext_ln33_fu_253_p1);
assign sub_ln33_fu_201_p2 = (65'd0 - mul_ln33_fu_165_p2);
assign sumOfPowers_out = sumOfPowers_fu_100;
assign temp_2_fu_263_p3 = ((tmp_33_fu_207_p3[0:0] == 1'b1) ? sub_ln33_1_fu_257_p2 : tmp_52_cast1_fu_225_p4);
assign tmp_28_fu_387_p4 = {{shl_ln18_fu_371_p2[84:53]}};
assign tmp_32_fu_331_p3 = add_ln486_fu_325_p2[32'd11];
assign tmp_33_fu_207_p1 = ap_sig_allocacmp_temp_1;
assign tmp_33_fu_207_p3 = tmp_33_fu_207_p1[32'd31];
assign tmp_51_cast_fu_215_p4 = {{sub_ln33_fu_201_p2[63:36]}};
assign tmp_52_cast1_fu_225_p4 = {{mul_ln33_fu_165_p2[64:36]}};
assign tmp_52_cast_fu_235_p4 = {{mul_ln33_fu_165_p2[63:36]}};
assign tmp_s_fu_377_p4 = {{lshr_ln18_fu_365_p2[84:53]}};
assign trunc_ln505_fu_303_p1 = data_fu_284_p1[51:0];
assign val_fu_397_p3 = ((tmp_32_fu_331_p3[0:0] == 1'b1) ? tmp_s_fu_377_p4 : tmp_28_fu_387_p4);
assign xs_exp_fu_295_p3 = {{data_fu_284_p1[62:52]}};
assign xs_sign_fu_287_p3 = data_fu_284_p1[32'd63];
assign zext_ln15_fu_317_p1 = mantissa_fu_307_p4;
assign zext_ln18_fu_361_p1 = $unsigned(sext_ln18_1_fu_357_p1);
assign zext_ln33_fu_253_p1 = select_ln33_fu_245_p3;
assign zext_ln486_fu_321_p1 = xs_exp_fu_295_p3;
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
module entry_point_mac_muladd_16s_15ns_19s_31_4_1_DSP48_0(
 input clk,
 input rst,
 input ce,
 input [16 - 1:0] in0,
 input [15 - 1:0] in1,
 input [19 - 1:0] in2,
 output [31 - 1:0] dout);
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
module entry_point_mac_muladd_16s_15ns_19s_31_4_1(
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
entry_point_mac_muladd_16s_15ns_19s_31_4_1_DSP48_0 entry_point_mac_muladd_16s_15ns_19s_31_4_1_DSP48_0_U(
 .clk( clk ),
 .rst( reset ),
 .ce( ce ),
 .in0( din0 ),
 .in1( din1 ),
 .in2( din2 ),
 .dout( dout ));
endmodule
 module entry_point_mul_12s_80ns_90_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed(din0) * $signed({1'b0, din1});
assign dout = tmp_product;
endmodule
 module entry_point_mul_13s_71s_71_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed(din0) * $signed(din1);
assign dout = tmp_product;
endmodule
 module entry_point_mul_32s_34ns_65_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed(din0) * $signed({1'b0, din1});
assign dout = tmp_product;
endmodule
 module entry_point_mul_40ns_40ns_79_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed({1'b0, din0}) * $signed({1'b0, din1});
assign dout = tmp_product;
endmodule
 module entry_point_mul_43ns_36ns_79_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed({1'b0, din0}) * $signed({1'b0, din1});
assign dout = tmp_product;
endmodule
 module entry_point_mul_49ns_44ns_93_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed({1'b0, din0}) * $signed({1'b0, din1});
assign dout = tmp_product;
endmodule
 module entry_point_mul_50ns_50ns_99_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed({1'b0, din0}) * $signed({1'b0, din1});
assign dout = tmp_product;
endmodule
 module entry_point_mul_54s_6ns_54_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed(din0) * $signed({1'b0, din1});
assign dout = tmp_product;
endmodule
 module entry_point_mul_71ns_4ns_75_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed({1'b0, din0}) * $signed({1'b0, din1});
assign dout = tmp_product;
endmodule
 module entry_point_mul_73ns_6ns_79_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed({1'b0, din0}) * $signed({1'b0, din1});
assign dout = tmp_product;
endmodule
 module entry_point_mul_77ns_6ns_82_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed({1'b0, din0}) * $signed({1'b0, din1});
assign dout = tmp_product;
endmodule
 module entry_point_mul_78s_54s_131_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed(din0) * $signed(din1);
assign dout = tmp_product;
endmodule
 module entry_point_mul_82ns_6ns_87_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed({1'b0, din0}) * $signed({1'b0, din1});
assign dout = tmp_product;
endmodule
 module entry_point_mul_83ns_6ns_89_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed({1'b0, din0}) * $signed({1'b0, din1});
assign dout = tmp_product;
endmodule
 module entry_point_mul_87ns_6ns_92_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed({1'b0, din0}) * $signed({1'b0, din1});
assign dout = tmp_product;
endmodule
 module entry_point_mul_92ns_6ns_97_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed({1'b0, din0}) * $signed({1'b0, din1});
assign dout = tmp_product;
endmodule
module entry_point_pow_generic_double_s (
 ap_clk,
 ap_rst,
 base_r,
 exp,
 ap_return
);
input ap_clk;
input ap_rst;
input [63:0] base_r;
input [63:0] exp;
output [63:0] ap_return;
wire [5:0] pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_address0;
wire [5:0] pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_q0;
wire [5:0] pow_reduce_anonymous_namespace_log0_lut_table_array_address0;
wire [108:0] pow_reduce_anonymous_namespace_log0_lut_table_array_q0;
wire [3:0] pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_address0;
wire [104:0] pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_q0;
wire [5:0] pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_address0;
wire [101:0] pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_q0;
wire [5:0] pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_address0;
wire [96:0] pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_q0;
wire [5:0] pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_address0;
wire [91:0] pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_q0;
wire [5:0] pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_address0;
wire [86:0] pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_q0;
wire [5:0] pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_address0;
wire [81:0] pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_q0;
wire [5:0] pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_address0;
wire [76:0] pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_q0;
wire [7:0] pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_address0;
wire [57:0] pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_q0;
wire [7:0] pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_address0;
wire [25:0] pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_q0;
wire [7:0] pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_address1;
wire [25:0] pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_q1;
wire [7:0] pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_address0;
wire [41:0] pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_q0;
reg [63:0] exp_read_reg_2978;
wire ap_block_pp0_stage0_11001;
reg [63:0] exp_read_reg_2978_pp0_iter1_reg;
reg [63:0] exp_read_reg_2978_pp0_iter2_reg;
reg [63:0] exp_read_reg_2978_pp0_iter3_reg;
reg [63:0] exp_read_reg_2978_pp0_iter4_reg;
reg [63:0] exp_read_reg_2978_pp0_iter5_reg;
reg [63:0] exp_read_reg_2978_pp0_iter6_reg;
reg [63:0] exp_read_reg_2978_pp0_iter7_reg;
reg [63:0] exp_read_reg_2978_pp0_iter8_reg;
reg [10:0] bs_exp_reg_2983;
reg [10:0] bs_exp_reg_2983_pp0_iter1_reg;
reg [10:0] bs_exp_reg_2983_pp0_iter2_reg;
reg [10:0] bs_exp_reg_2983_pp0_iter3_reg;
reg [10:0] bs_exp_reg_2983_pp0_iter4_reg;
reg [10:0] bs_exp_reg_2983_pp0_iter5_reg;
reg [10:0] bs_exp_reg_2983_pp0_iter6_reg;
reg [10:0] bs_exp_reg_2983_pp0_iter7_reg;
reg [10:0] bs_exp_reg_2983_pp0_iter8_reg;
wire [51:0] bs_sig_fu_674_p1;
reg [51:0] bs_sig_reg_2990;
reg [0:0] tmp_reg_2998;
reg [0:0] tmp_reg_2998_pp0_iter1_reg;
reg [0:0] tmp_reg_2998_pp0_iter2_reg;
reg [0:0] tmp_reg_2998_pp0_iter3_reg;
reg [0:0] tmp_reg_2998_pp0_iter4_reg;
reg [0:0] tmp_reg_2998_pp0_iter5_reg;
reg [0:0] tmp_reg_2998_pp0_iter6_reg;
reg [0:0] tmp_reg_2998_pp0_iter7_reg;
reg [0:0] tmp_reg_2998_pp0_iter8_reg;
reg [0:0] tmp_5_reg_3005;
reg [0:0] tmp_5_reg_3005_pp0_iter1_reg;
reg [0:0] tmp_5_reg_3005_pp0_iter2_reg;
reg [0:0] tmp_5_reg_3005_pp0_iter3_reg;
reg [0:0] tmp_5_reg_3005_pp0_iter4_reg;
reg [0:0] tmp_5_reg_3005_pp0_iter5_reg;
reg [0:0] tmp_5_reg_3005_pp0_iter6_reg;
reg [0:0] tmp_5_reg_3005_pp0_iter7_reg;
reg [0:0] tmp_5_reg_3005_pp0_iter8_reg;
wire [63:0] zext_ln502_fu_704_p1;
reg [63:0] zext_ln502_reg_3011;
reg [63:0] zext_ln502_reg_3011_pp0_iter1_reg;
reg [63:0] zext_ln502_reg_3011_pp0_iter2_reg;
reg [63:0] zext_ln502_reg_3011_pp0_iter3_reg;
reg [63:0] zext_ln502_reg_3011_pp0_iter4_reg;
reg [63:0] zext_ln502_reg_3011_pp0_iter5_reg;
reg [63:0] zext_ln502_reg_3011_pp0_iter6_reg;
reg [63:0] zext_ln502_reg_3011_pp0_iter7_reg;
wire [0:0] icmp_ln340_1_fu_709_p2;
reg [0:0] icmp_ln340_1_reg_3021;
reg [0:0] icmp_ln340_1_reg_3021_pp0_iter2_reg;
reg [0:0] icmp_ln340_1_reg_3021_pp0_iter3_reg;
reg [0:0] icmp_ln340_1_reg_3021_pp0_iter4_reg;
reg [0:0] icmp_ln340_1_reg_3021_pp0_iter5_reg;
reg [0:0] icmp_ln340_1_reg_3021_pp0_iter6_reg;
reg [0:0] icmp_ln340_1_reg_3021_pp0_iter7_reg;
reg [0:0] icmp_ln340_1_reg_3021_pp0_iter8_reg;
wire [0:0] icmp_ln18_4_fu_714_p2;
reg [0:0] icmp_ln18_4_reg_3027;
reg [0:0] icmp_ln18_4_reg_3027_pp0_iter2_reg;
reg [0:0] icmp_ln18_4_reg_3027_pp0_iter3_reg;
reg [0:0] icmp_ln18_4_reg_3027_pp0_iter4_reg;
reg [0:0] icmp_ln18_4_reg_3027_pp0_iter5_reg;
reg [0:0] icmp_ln18_4_reg_3027_pp0_iter6_reg;
reg [0:0] icmp_ln18_4_reg_3027_pp0_iter7_reg;
reg [0:0] icmp_ln18_4_reg_3027_pp0_iter8_reg;
wire [53:0] mul_ln516_fu_630_p2;
reg [53:0] mul_ln516_reg_3032;
reg [3:0] a_reg_3038;
reg [3:0] a_reg_3038_pp0_iter2_reg;
reg [3:0] a_reg_3038_pp0_iter3_reg;
reg [3:0] a_reg_3038_pp0_iter4_reg;
reg [3:0] a_reg_3038_pp0_iter5_reg;
reg [3:0] a_reg_3038_pp0_iter6_reg;
reg [3:0] a_reg_3038_pp0_iter7_reg;
wire [49:0] trunc_ln39_fu_762_p1;
reg [49:0] trunc_ln39_reg_3044;
reg [0:0] tmp_6_reg_3049;
reg [72:0] z2_reg_3054;
reg [5:0] a_1_reg_3060;
reg [5:0] a_1_reg_3060_pp0_iter3_reg;
reg [5:0] a_1_reg_3060_pp0_iter4_reg;
reg [5:0] a_1_reg_3060_pp0_iter5_reg;
reg [5:0] a_1_reg_3060_pp0_iter6_reg;
reg [5:0] a_1_reg_3060_pp0_iter7_reg;
reg [66:0] tmp_7_reg_3066;
wire [81:0] sub_ln44_1_fu_941_p2;
reg [81:0] sub_ln44_1_reg_3071;
reg [5:0] a_2_reg_3076;
reg [5:0] a_2_reg_3076_pp0_iter4_reg;
reg [5:0] a_2_reg_3076_pp0_iter5_reg;
reg [5:0] a_2_reg_3076_pp0_iter6_reg;
reg [5:0] a_2_reg_3076_pp0_iter7_reg;
wire [75:0] trunc_ln39_1_fu_957_p1;
reg [75:0] trunc_ln39_1_reg_3082;
reg [91:0] z4_reg_3087;
reg [85:0] tmp_8_reg_3093;
reg [5:0] tmp_9_reg_3098;
reg [5:0] tmp_9_reg_3098_pp0_iter5_reg;
reg [5:0] tmp_9_reg_3098_pp0_iter6_reg;
reg [5:0] tmp_9_reg_3098_pp0_iter7_reg;
reg [86:0] tmp_10_reg_3104;
reg [80:0] tmp_11_reg_3110;
reg [5:0] tmp_13_reg_3115;
reg [5:0] tmp_13_reg_3115_pp0_iter6_reg;
reg [5:0] tmp_13_reg_3115_pp0_iter7_reg;
reg [81:0] tmp_14_reg_3121;
reg [75:0] tmp_15_reg_3127;
reg [5:0] tmp_16_reg_3132;
reg [5:0] tmp_16_reg_3132_pp0_iter7_reg;
reg [76:0] tmp_17_reg_3138;
reg [70:0] tmp_18_reg_3144;
reg [5:0] tmp_19_reg_3149;
reg [71:0] tmp_20_reg_3195;
reg [39:0] tmp_21_reg_3200;
wire [10:0] es_exp_fu_1439_p3;
reg [10:0] es_exp_reg_3205;
wire signed [11:0] m_exp_fu_1464_p2;
reg signed [11:0] m_exp_reg_3210;
wire [0:0] x_is_n1_fu_1498_p2;
reg [0:0] x_is_n1_reg_3217;
reg [0:0] x_is_n1_reg_3217_pp0_iter10_reg;
reg [0:0] x_is_n1_reg_3217_pp0_iter11_reg;
reg [0:0] x_is_n1_reg_3217_pp0_iter12_reg;
reg [0:0] x_is_n1_reg_3217_pp0_iter13_reg;
reg [0:0] x_is_n1_reg_3217_pp0_iter14_reg;
reg [0:0] x_is_n1_reg_3217_pp0_iter15_reg;
reg [0:0] x_is_n1_reg_3217_pp0_iter16_reg;
wire [0:0] tmp_1_fu_1576_p3;
reg [0:0] tmp_1_reg_3223;
reg [0:0] tmp_1_reg_3223_pp0_iter10_reg;
wire [0:0] or_ln378_1_fu_1674_p2;
reg [0:0] or_ln378_1_reg_3231;
reg [0:0] or_ln378_1_reg_3231_pp0_iter10_reg;
reg [0:0] or_ln378_1_reg_3231_pp0_iter11_reg;
reg [0:0] or_ln378_1_reg_3231_pp0_iter12_reg;
reg [0:0] or_ln378_1_reg_3231_pp0_iter13_reg;
reg [0:0] or_ln378_1_reg_3231_pp0_iter14_reg;
reg [0:0] or_ln378_1_reg_3231_pp0_iter15_reg;
reg [0:0] or_ln378_1_reg_3231_pp0_iter16_reg;
wire [0:0] or_ln386_2_fu_1704_p2;
reg [0:0] or_ln386_2_reg_3238;
reg [0:0] or_ln386_2_reg_3238_pp0_iter10_reg;
reg [0:0] or_ln386_2_reg_3238_pp0_iter11_reg;
reg [0:0] or_ln386_2_reg_3238_pp0_iter12_reg;
reg [0:0] or_ln386_2_reg_3238_pp0_iter13_reg;
reg [0:0] or_ln386_2_reg_3238_pp0_iter14_reg;
reg [0:0] or_ln386_2_reg_3238_pp0_iter15_reg;
reg [0:0] or_ln386_2_reg_3238_pp0_iter16_reg;
wire [0:0] icmp_ln422_fu_1748_p2;
reg [0:0] icmp_ln422_reg_3244;
reg [0:0] icmp_ln422_reg_3244_pp0_iter10_reg;
reg [0:0] icmp_ln422_reg_3244_pp0_iter11_reg;
reg [0:0] icmp_ln422_reg_3244_pp0_iter12_reg;
reg [0:0] icmp_ln422_reg_3244_pp0_iter13_reg;
reg [0:0] icmp_ln422_reg_3244_pp0_iter14_reg;
reg [0:0] icmp_ln422_reg_3244_pp0_iter15_reg;
reg [0:0] icmp_ln422_reg_3244_pp0_iter16_reg;
wire [0:0] r_sign_fu_1824_p2;
reg [0:0] r_sign_reg_3249;
reg [0:0] r_sign_reg_3249_pp0_iter10_reg;
reg [0:0] r_sign_reg_3249_pp0_iter11_reg;
reg [0:0] r_sign_reg_3249_pp0_iter12_reg;
reg [0:0] r_sign_reg_3249_pp0_iter13_reg;
reg [0:0] r_sign_reg_3249_pp0_iter14_reg;
reg [0:0] r_sign_reg_3249_pp0_iter15_reg;
reg [0:0] r_sign_reg_3249_pp0_iter16_reg;
wire [0:0] or_ln431_2_fu_1866_p2;
reg [0:0] or_ln431_2_reg_3257;
reg [0:0] or_ln431_2_reg_3257_pp0_iter10_reg;
reg [0:0] or_ln431_2_reg_3257_pp0_iter11_reg;
reg [0:0] or_ln431_2_reg_3257_pp0_iter12_reg;
reg [0:0] or_ln431_2_reg_3257_pp0_iter13_reg;
reg [0:0] or_ln431_2_reg_3257_pp0_iter14_reg;
reg [0:0] or_ln431_2_reg_3257_pp0_iter15_reg;
reg [0:0] or_ln431_2_reg_3257_pp0_iter16_reg;
wire [0:0] or_ln438_2_fu_1908_p2;
reg [0:0] or_ln438_2_reg_3263;
reg [0:0] or_ln438_2_reg_3263_pp0_iter10_reg;
reg [0:0] or_ln438_2_reg_3263_pp0_iter11_reg;
reg [0:0] or_ln438_2_reg_3263_pp0_iter12_reg;
reg [0:0] or_ln438_2_reg_3263_pp0_iter13_reg;
reg [0:0] or_ln438_2_reg_3263_pp0_iter14_reg;
reg [0:0] or_ln438_2_reg_3263_pp0_iter15_reg;
reg [0:0] or_ln438_2_reg_3263_pp0_iter16_reg;
reg signed [77:0] log_base_reg_3269;
wire [53:0] e_frac_2_fu_2116_p3;
reg signed [53:0] e_frac_2_reg_3274;
wire [130:0] m_frac_l_fu_642_p2;
reg [130:0] m_frac_l_reg_3279;
wire [11:0] select_ln545_fu_2141_p3;
reg [11:0] select_ln545_reg_3286;
reg [58:0] m_fix_reg_3291;
reg [58:0] m_fix_reg_3291_pp0_iter11_reg;
reg [58:0] m_fix_reg_3291_pp0_iter12_reg;
reg [58:0] m_fix_reg_3291_pp0_iter13_reg;
reg [0:0] tmp_23_reg_3296;
reg [0:0] tmp_23_reg_3296_pp0_iter11_reg;
reg [0:0] tmp_30_reg_3306;
reg [0:0] tmp_30_reg_3306_pp0_iter11_reg;
reg [0:0] tmp_30_reg_3306_pp0_iter12_reg;
reg [0:0] tmp_30_reg_3306_pp0_iter13_reg;
reg [0:0] tmp_30_reg_3306_pp0_iter14_reg;
reg [0:0] tmp_30_reg_3306_pp0_iter15_reg;
reg [0:0] tmp_30_reg_3306_pp0_iter16_reg;
wire [0:0] icmp_ln628_fu_2317_p2;
reg [0:0] icmp_ln628_reg_3312;
reg [0:0] icmp_ln628_reg_3312_pp0_iter12_reg;
reg [0:0] icmp_ln628_reg_3312_pp0_iter13_reg;
reg [0:0] icmp_ln628_reg_3312_pp0_iter14_reg;
reg [0:0] icmp_ln628_reg_3312_pp0_iter15_reg;
reg [0:0] icmp_ln628_reg_3312_pp0_iter16_reg;
wire signed [12:0] r_exp_fu_2372_p3;
reg signed [12:0] r_exp_reg_3322;
reg signed [12:0] r_exp_reg_3322_pp0_iter14_reg;
reg signed [12:0] r_exp_reg_3322_pp0_iter15_reg;
reg signed [12:0] r_exp_reg_3322_pp0_iter16_reg;
reg [7:0] m_diff_hi_reg_3329;
reg [7:0] Z2_reg_3334;
reg [7:0] Z2_reg_3334_pp0_iter15_reg;
wire [7:0] Z3_fu_2419_p4;
reg [7:0] Z3_reg_3341;
wire [34:0] Z4_fu_2429_p1;
reg [34:0] Z4_reg_3346;
wire [43:0] exp_Z2P_m_1_fu_2527_p2;
reg [43:0] exp_Z2P_m_1_reg_3366;
reg [57:0] exp_Z1_reg_3377;
reg [49:0] exp_Z1P_m_1_reg_3382;
reg [49:0] exp_Z1_hi_reg_3387;
wire ap_block_pp0_stage0;
wire [63:0] zext_ln46_fu_1322_p1;
wire [63:0] zext_ln46_1_fu_1326_p1;
wire [63:0] zext_ln46_2_fu_1330_p1;
wire [63:0] zext_ln46_3_fu_1334_p1;
wire [63:0] zext_ln46_4_fu_1338_p1;
wire [63:0] zext_ln46_5_fu_1342_p1;
wire [63:0] zext_ln46_6_fu_1404_p1;
wire [63:0] zext_ln249_fu_2443_p1;
wire [63:0] zext_ln254_fu_2448_p1;
wire [63:0] zext_ln611_fu_2453_p1;
wire [63:0] zext_ln273_fu_2533_p1;
reg pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_ce0_local;
reg pow_reduce_anonymous_namespace_log0_lut_table_array_ce0_local;
reg pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_ce0_local;
reg pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_ce0_local;
reg pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_ce0_local;
reg pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_ce0_local;
reg pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_ce0_local;
reg pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_ce0_local;
reg pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_ce0_local;
reg pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_ce1_local;
reg pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_ce0_local;
reg pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_ce0_local;
reg pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_ce0_local;
wire [79:0] Elog2_fu_604_p1;
wire [39:0] mul_ln522_fu_614_p0;
wire [78:0] zext_ln522_fu_2014_p1;
wire [39:0] mul_ln522_fu_614_p1;
wire [42:0] mul_ln258_fu_618_p0;
wire [35:0] mul_ln258_fu_618_p1;
wire [48:0] mul_ln277_fu_622_p0;
wire [43:0] mul_ln277_fu_622_p1;
wire [49:0] mul_ln616_fu_626_p0;
wire [49:0] mul_ln616_fu_626_p1;
wire signed [53:0] mul_ln516_fu_630_p0;
wire [5:0] mul_ln516_fu_630_p1;
wire [72:0] mul_ln44_1_fu_634_p0;
wire [5:0] mul_ln44_1_fu_634_p1;
wire [76:0] mul_ln44_6_fu_638_p0;
wire [5:0] mul_ln44_6_fu_638_p1;
wire [81:0] mul_ln44_5_fu_646_p0;
wire [5:0] mul_ln44_5_fu_646_p1;
wire [82:0] mul_ln44_2_fu_650_p0;
wire [5:0] mul_ln44_2_fu_650_p1;
wire [86:0] mul_ln44_4_fu_654_p0;
wire [5:0] mul_ln44_4_fu_654_p1;
wire [91:0] mul_ln44_3_fu_658_p0;
wire [5:0] mul_ln44_3_fu_658_p1;
wire [63:0] data_fu_662_p1;
wire [5:0] index0_fu_694_p4;
wire [52:0] b_frac_1_fu_728_p3;
wire [53:0] zext_ln485_fu_735_p1;
wire [53:0] b_frac_fu_719_p4;
wire [69:0] tmp_s_fu_781_p3;
wire [73:0] zext_ln42_fu_788_p1;
wire [70:0] z1_fu_774_p3;
wire [74:0] zext_ln42_1_fu_800_p1;
wire [74:0] zext_ln42_2_cast_fu_792_p3;
wire [75:0] tmp_4_fu_804_p3;
wire [75:0] zext_ln42_2_fu_812_p1;
wire [74:0] shl_ln_fu_823_p3;
wire [75:0] zext_ln44_fu_830_p1;
wire [75:0] select_ln42_fu_816_p3;
wire [70:0] mul_ln44_fu_843_p0;
wire [3:0] mul_ln44_fu_843_p1;
wire [74:0] mul_ln44_fu_843_p2;
wire [75:0] add_ln44_fu_834_p2;
wire [75:0] zext_ln44_2_fu_849_p1;
wire [75:0] sub_ln44_fu_853_p2;
wire [79:0] zext_ln40_fu_889_p1;
wire [80:0] shl_ln44_1_fu_900_p3;
wire [80:0] eZ_fu_892_p3;
wire [81:0] zext_ln44_3_fu_907_p1;
wire [81:0] zext_ln44_4_fu_911_p1;
wire [78:0] mul_ln44_1_fu_634_p2;
wire [79:0] shl_ln44_2_fu_929_p3;
wire [81:0] add_ln44_1_fu_915_p2;
wire [81:0] zext_ln44_7_fu_937_p1;
wire [82:0] z3_fu_961_p3;
wire [94:0] zext_ln40_1_fu_968_p1;
wire [100:0] shl_ln44_4_fu_980_p3;
wire [95:0] eZ_1_fu_972_p3;
wire [101:0] zext_ln44_8_fu_987_p1;
wire [101:0] zext_ln44_9_fu_991_p1;
wire [88:0] mul_ln44_2_fu_650_p2;
wire [94:0] shl_ln44_5_fu_1010_p3;
wire [101:0] add_ln44_2_fu_995_p2;
wire [101:0] zext_ln44_12_fu_1018_p1;
wire [101:0] sub_ln44_2_fu_1022_p2;
wire [108:0] zext_ln40_2_fu_1058_p1;
wire [119:0] shl_ln44_6_fu_1069_p3;
wire [109:0] eZ_2_fu_1061_p3;
wire [120:0] zext_ln44_13_fu_1076_p1;
wire [120:0] zext_ln44_14_fu_1080_p1;
wire [96:0] mul_ln44_3_fu_658_p2;
wire [107:0] shl_ln44_7_fu_1098_p3;
wire [120:0] add_ln44_3_fu_1084_p2;
wire [120:0] zext_ln44_17_fu_1106_p1;
wire [120:0] sub_ln44_3_fu_1110_p2;
wire [108:0] zext_ln40_3_fu_1146_p1;
wire [124:0] shl_ln44_8_fu_1157_p3;
wire [109:0] eZ_3_fu_1149_p3;
wire [125:0] zext_ln44_18_fu_1164_p1;
wire [125:0] zext_ln44_19_fu_1168_p1;
wire [91:0] mul_ln44_4_fu_654_p2;
wire [107:0] shl_ln44_9_fu_1186_p3;
wire [125:0] add_ln44_4_fu_1172_p2;
wire [125:0] zext_ln44_22_fu_1194_p1;
wire [125:0] sub_ln44_4_fu_1198_p2;
wire [108:0] zext_ln40_4_fu_1234_p1;
wire [129:0] shl_ln44_s_fu_1245_p3;
wire [109:0] eZ_4_fu_1237_p3;
wire [130:0] zext_ln44_23_fu_1252_p1;
wire [130:0] zext_ln44_24_fu_1256_p1;
wire [86:0] mul_ln44_5_fu_646_p2;
wire [107:0] shl_ln44_3_fu_1274_p3;
wire [130:0] add_ln44_5_fu_1260_p2;
wire [130:0] zext_ln44_27_fu_1282_p1;
wire [130:0] sub_ln44_5_fu_1286_p2;
wire [108:0] zext_ln40_5_fu_1346_p1;
wire [134:0] shl_ln44_10_fu_1357_p3;
wire [109:0] eZ_5_fu_1349_p3;
wire [135:0] zext_ln44_28_fu_1364_p1;
wire [135:0] zext_ln44_29_fu_1368_p1;
wire [81:0] mul_ln44_6_fu_638_p2;
wire [107:0] shl_ln44_11_fu_1386_p3;
wire [135:0] add_ln44_6_fu_1372_p2;
wire [135:0] zext_ln44_32_fu_1394_p1;
wire [135:0] sub_ln44_6_fu_1398_p2;
wire [63:0] data_1_fu_1428_p1;
wire [11:0] zext_ln486_fu_1451_p1;
wire [11:0] zext_ln486_1_fu_1460_p1;
wire [11:0] b_exp_fu_1454_p2;
wire [0:0] icmp_ln340_fu_1476_p2;
wire [0:0] x_is_1_fu_1482_p2;
wire [0:0] xor_ln341_fu_1487_p2;
wire [51:0] es_sig_fu_1447_p1;
wire [0:0] icmp_ln18_fu_1503_p2;
wire [0:0] icmp_ln18_1_fu_1509_p2;
wire [0:0] icmp_ln18_2_fu_1521_p2;
wire [0:0] icmp_ln18_3_fu_1533_p2;
wire [0:0] x_is_0_fu_1543_p2;
wire [0:0] x_is_inf_fu_1548_p2;
wire [0:0] or_ln357_fu_1553_p2;
wire [0:0] xor_ln357_fu_1559_p2;
wire [5:0] es_exp_cast_fu_1584_p4;
wire [5:0] add_ln373_fu_1594_p2;
wire [51:0] zext_ln373_fu_1600_p1;
wire [51:0] lshr_ln373_fu_1604_p2;
wire [51:0] and_ln373_1_fu_1610_p2;
wire [0:0] icmp_ln372_fu_1570_p2;
wire [0:0] or_ln373_fu_1622_p2;
wire [0:0] xor_ln373_fu_1628_p2;
wire [0:0] y_is_int_fu_1642_p4;
wire [0:0] y_is_int_fu_1642_p7;
wire [1:0] y_is_int_fu_1642_p8;
wire [0:0] y_is_inf_fu_1515_p2;
wire [0:0] x_is_p1_fu_1492_p2;
wire [0:0] and_ln378_fu_1662_p2;
wire [0:0] or_ln378_fu_1668_p2;
wire [0:0] y_is_0_fu_1470_p2;
wire [0:0] y_is_int_fu_1642_p9;
wire [0:0] or_ln386_fu_1680_p2;
wire [0:0] x_is_neg_fu_1565_p2;
wire [0:0] xor_ln386_fu_1686_p2;
wire [0:0] x_is_NaN_fu_1538_p2;
wire [0:0] and_ln386_fu_1692_p2;
wire [0:0] or_ln386_1_fu_1698_p2;
wire [0:0] y_is_NaN_fu_1527_p2;
wire [0:0] es_sign_fu_1431_p3;
wire [0:0] y_is_pos_fu_1710_p2;
wire [0:0] tmp_2_fu_1728_p3;
wire [11:0] sub_ln422_fu_1760_p2;
wire signed [31:0] y_is_odd_fu_1770_p2;
wire [0:0] icmp_ln421_fu_1742_p2;
wire [0:0] icmp_ln422_1_fu_1754_p2;
wire [0:0] xor_ln421_fu_1778_p2;
wire [0:0] and_ln422_fu_1784_p2;
wire [0:0] and_ln422_1_fu_1790_p2;
wire [0:0] y_is_odd_fu_1770_p3;
wire [0:0] y_is_odd_1_fu_1804_p7;
wire [1:0] y_is_odd_1_fu_1804_p8;
wire [0:0] y_is_odd_1_fu_1804_p9;
wire [0:0] y_is_pinf_fu_1716_p2;
wire [0:0] x_abs_greater_1_fu_1736_p2;
wire [0:0] y_is_ninf_fu_1722_p2;
wire [0:0] and_ln431_2_fu_1842_p2;
wire [0:0] and_ln431_fu_1830_p2;
wire [0:0] or_ln431_fu_1854_p2;
wire [0:0] and_ln431_3_fu_1848_p2;
wire [0:0] or_ln431_1_fu_1860_p2;
wire [0:0] and_ln431_1_fu_1836_p2;
wire [0:0] and_ln438_2_fu_1884_p2;
wire [0:0] and_ln438_1_fu_1878_p2;
wire [0:0] or_ln438_fu_1896_p2;
wire [0:0] and_ln438_3_fu_1890_p2;
wire [0:0] or_ln438_1_fu_1902_p2;
wire [0:0] and_ln438_fu_1872_p2;
wire [11:0] b_exp_1_fu_1914_p2;
wire signed [11:0] b_exp_2_fu_1920_p3;
wire [108:0] zext_ln194_fu_1932_p1;
wire [102:0] zext_ln194_1_fu_1936_p1;
wire [102:0] zext_ln194_2_fu_1940_p1;
wire [102:0] add_ln209_1_fu_1966_p2;
wire [108:0] zext_ln209_fu_1972_p1;
wire [108:0] add_ln209_fu_1960_p2;
wire [92:0] zext_ln194_3_fu_1944_p1;
wire [92:0] zext_ln194_4_fu_1948_p1;
wire [82:0] zext_ln194_5_fu_1952_p1;
wire [82:0] zext_ln194_6_fu_1956_p1;
wire [82:0] add_ln209_4_fu_1988_p2;
wire [92:0] zext_ln209_1_fu_1994_p1;
wire [92:0] add_ln209_3_fu_1982_p2;
wire [92:0] add_ln209_5_fu_1998_p2;
wire [108:0] zext_ln209_2_fu_2004_p1;
wire [108:0] add_ln209_2_fu_1976_p2;
wire [78:0] mul_ln522_fu_614_p2;
wire [77:0] lshr_ln_fu_2019_p4;
wire [116:0] shl_ln1_fu_2029_p3;
wire [116:0] zext_ln522_1_fu_2036_p1;
wire [116:0] sub_ln522_fu_2040_p2;
wire [89:0] Elog2_fu_604_p2;
wire [119:0] shl_ln2_fu_2056_p3;
wire [108:0] log_sum_1_fu_2008_p2;
wire signed [120:0] sext_ln525_fu_2064_p1;
wire signed [120:0] sext_ln525_1_fu_2068_p1;
wire [71:0] lshr_ln522_1_fu_2046_p4;
wire [120:0] add_ln525_fu_2072_p2;
wire [120:0] zext_ln525_fu_2078_p1;
wire [120:0] add_ln525_1_fu_2082_p2;
wire [52:0] e_frac_fu_2098_p3;
wire [53:0] zext_ln532_fu_2106_p1;
wire [53:0] e_frac_1_fu_2110_p2;
wire signed [10:0] sub_ln545_fu_2132_p2;
wire signed [11:0] sext_ln545_fu_2137_p1;
wire signed [31:0] sext_ln552_fu_2147_p1;
wire [130:0] zext_ln552_fu_2150_p1;
wire [0:0] tmp_22_fu_2160_p3;
wire [11:0] select_ln553_fu_2168_p3;
wire signed [31:0] sext_ln553_fu_2175_p1;
wire [130:0] zext_ln553_fu_2179_p1;
wire [130:0] shl_ln553_fu_2183_p2;
wire [130:0] ashr_ln553_fu_2189_p2;
wire [130:0] select_ln553_1_fu_2195_p3;
wire [130:0] shl_ln552_fu_2154_p2;
wire [130:0] m_fix_0_in_in_v_v_fu_2203_p3;
wire [129:0] empty_fu_2210_p1;
wire [130:0] zext_ln549_fu_2214_p1;
wire signed [15:0] m_fix_hi_fu_2228_p4;
wire signed [31:0] sext_ln545_1_fu_2258_p1;
wire [130:0] zext_ln545_fu_2261_p1;
wire [130:0] ashr_ln545_fu_2265_p2;
wire [130:0] shl_ln545_fu_2270_p2;
wire [129:0] trunc_ln545_fu_2275_p1;
wire [129:0] trunc_ln545_1_fu_2279_p1;
wire [129:0] m_fix_l_fu_2283_p3;
wire [129:0] zext_ln546_fu_2290_p1;
wire [129:0] shl_ln546_fu_2294_p2;
wire [129:0] ashr_ln546_fu_2300_p2;
wire [129:0] m_fix_back_fu_2306_p3;
wire signed [130:0] sext_ln628_fu_2313_p1;
wire signed [18:0] shl_ln3_fu_2322_p3;
wire signed [30:0] grp_fu_2967_p3;
wire [17:0] trunc_ln563_fu_2349_p1;
wire [12:0] tmp_9_cast_fu_2333_p4;
wire [0:0] icmp_ln563_fu_2352_p2;
wire [12:0] add_ln563_1_fu_2358_p2;
wire [0:0] tmp_24_fu_2342_p3;
wire [12:0] select_ln563_fu_2364_p3;
wire [70:0] mul_ln568_fu_609_p2;
wire [58:0] m_fix_a_fu_2384_p4;
wire [58:0] sub_ln574_fu_2394_p2;
wire [7:0] Z4_ind_fu_2433_p4;
wire [9:0] f_Z4_fu_2457_p4;
wire [35:0] zext_ln250_fu_2467_p1;
wire [35:0] zext_ln250_1_fu_2470_p1;
wire [42:0] exp_Z3_m_1_fu_2480_p4;
wire [35:0] exp_Z4_m_1_fu_2474_p2;
wire [78:0] mul_ln258_fu_618_p2;
wire [19:0] tmp_25_fu_2503_p4;
wire [35:0] zext_ln261_1_fu_2513_p1;
wire [35:0] add_ln261_fu_2517_p2;
wire [43:0] zext_ln261_fu_2523_p1;
wire [43:0] zext_ln255_fu_2489_p1;
wire [39:0] tmp_26_fu_2537_p4;
wire [48:0] exp_Z2_m_1_fu_2547_p4;
wire [50:0] and_ln_fu_2565_p5;
wire [92:0] mul_ln277_fu_622_p2;
wire [35:0] tmp_27_fu_2580_p4;
wire [43:0] zext_ln280_2_fu_2590_p1;
wire [43:0] add_ln280_fu_2594_p2;
wire [51:0] zext_ln280_1_fu_2599_p1;
wire [51:0] zext_ln280_fu_2576_p1;
wire [51:0] exp_Z1P_m_1_l_fu_2603_p2;
wire [63:0] t_fu_2629_p3;
wire [63:0] t_1_fu_2650_p3;
wire [63:0] t_2_fu_2661_p3;
wire [57:0] add_ln616_fu_2672_p2;
wire [98:0] mul_ln616_fu_626_p2;
wire [106:0] shl_ln4_fu_2685_p3;
wire [106:0] zext_ln616_2_fu_2693_p1;
wire [106:0] add_ln616_1_fu_2697_p2;
wire [0:0] tmp_28_fu_2703_p3;
wire [12:0] r_exp_1_fu_2711_p2;
wire [12:0] r_exp_2_fu_2716_p3;
wire [2:0] tmp_29_fu_2727_p4;
wire [0:0] and_ln628_fu_2723_p2;
wire [0:0] icmp_ln628_1_fu_2737_p2;
wire [51:0] tmp_3_fu_2755_p4;
wire [51:0] tmp_12_fu_2765_p4;
wire [10:0] trunc_ln657_fu_2783_p1;
wire [10:0] out_exp_fu_2787_p2;
wire [51:0] out_sig_fu_2775_p3;
wire [63:0] t_3_fu_2793_p4;
wire [0:0] or_ln386_3_fu_2806_p2;
wire [0:0] xor_ln386_1_fu_2810_p2;
wire [0:0] xor_ln386_2_fu_2821_p2;
wire [0:0] xor_ln342_fu_2831_p2;
wire [0:0] and_ln342_1_fu_2836_p2;
wire [0:0] xor_ln431_fu_2640_p2;
wire [0:0] and_ln431_5_fu_2847_p2;
wire [0:0] xor_ln438_fu_2645_p2;
wire [0:0] and_ln438_5_fu_2858_p2;
wire [0:0] or_ln628_fu_2743_p2;
wire [0:0] and_ln628_1_fu_2864_p2;
wire [0:0] xor_ln629_fu_2875_p2;
wire [0:0] icmp_ln645_fu_2749_p2;
wire [0:0] xor_ln628_fu_2886_p2;
wire [0:0] and_ln645_fu_2892_p2;
wire [0:0] and_ln342_fu_2816_p2;
wire [0:0] and_ln386_1_fu_2826_p2;
wire [0:0] and_ln431_4_fu_2842_p2;
wire [0:0] and_ln438_4_fu_2853_p2;
wire [0:0] and_ln629_fu_2870_p2;
wire [0:0] and_ln629_1_fu_2880_p2;
wire [0:0] and_ln645_1_fu_2898_p2;
wire [63:0] retval_2_fu_2923_p4;
wire [63:0] bitcast_ln497_1_fu_2657_p1;
wire [63:0] bitcast_ln497_2_fu_2668_p1;
wire [63:0] retval_2_fu_2923_p18;
wire [63:0] retval_2_fu_2923_p19;
wire [7:0] retval_2_fu_2923_p20;
wire [14:0] grp_fu_2967_p1;
wire [63:0] retval_2_fu_2923_p21;
reg [63:0] base_r_int_reg;
reg [63:0] exp_int_reg;
wire [78:0] mul_ln258_fu_618_p00;
wire [78:0] mul_ln258_fu_618_p10;
wire [92:0] mul_ln277_fu_622_p00;
wire [92:0] mul_ln277_fu_622_p10;
wire [78:0] mul_ln44_1_fu_634_p00;
wire [78:0] mul_ln44_1_fu_634_p10;
wire [88:0] mul_ln44_2_fu_650_p00;
wire [88:0] mul_ln44_2_fu_650_p10;
wire [96:0] mul_ln44_3_fu_658_p00;
wire [96:0] mul_ln44_3_fu_658_p10;
wire [91:0] mul_ln44_4_fu_654_p00;
wire [91:0] mul_ln44_4_fu_654_p10;
wire [86:0] mul_ln44_5_fu_646_p00;
wire [86:0] mul_ln44_5_fu_646_p10;
wire [81:0] mul_ln44_6_fu_638_p00;
wire [81:0] mul_ln44_6_fu_638_p10;
wire [74:0] mul_ln44_fu_843_p10;
wire [53:0] mul_ln516_fu_630_p10;
wire [98:0] mul_ln616_fu_626_p00;
wire [98:0] mul_ln616_fu_626_p10;
wire signed [1:0] y_is_int_fu_1642_p1;
wire [1:0] y_is_int_fu_1642_p3;
wire [1:0] y_is_int_fu_1642_p5;
wire [0:0] y_is_odd_fu_1770_p0;
wire signed [1:0] y_is_odd_1_fu_1804_p1;
wire [1:0] y_is_odd_1_fu_1804_p3;
wire [1:0] y_is_odd_1_fu_1804_p5;
wire signed [7:0] retval_2_fu_2923_p1;
wire [7:0] retval_2_fu_2923_p3;
wire [7:0] retval_2_fu_2923_p5;
wire [7:0] retval_2_fu_2923_p7;
wire [7:0] retval_2_fu_2923_p9;
wire [7:0] retval_2_fu_2923_p11;
wire [7:0] retval_2_fu_2923_p13;
wire [7:0] retval_2_fu_2923_p15;
wire [7:0] retval_2_fu_2923_p17;
wire ap_ce_reg;
entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_log_inverse_lut_table_powbkb #(
 .DataWidth( 6 ),
 .AddressRange( 64 ),
 .AddressWidth( 6 ))
pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_address0),
 .ce0(pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_ce0_local),
 .q0(pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_q0)
);
entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_log0_lut_table_array_ROM_cud #(
 .DataWidth( 109 ),
 .AddressRange( 64 ),
 .AddressWidth( 6 ))
pow_reduce_anonymous_namespace_log0_lut_table_array_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(pow_reduce_anonymous_namespace_log0_lut_table_array_address0),
 .ce0(pow_reduce_anonymous_namespace_log0_lut_table_array_ce0_local),
 .q0(pow_reduce_anonymous_namespace_log0_lut_table_array_q0)
);
entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_dEe #(
 .DataWidth( 105 ),
 .AddressRange( 16 ),
 .AddressWidth( 4 ))
pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_address0),
 .ce0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_ce0_local),
 .q0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_q0)
);
entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_eOg #(
 .DataWidth( 102 ),
 .AddressRange( 64 ),
 .AddressWidth( 6 ))
pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_address0),
 .ce0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_ce0_local),
 .q0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_q0)
);
entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12fYi #(
 .DataWidth( 97 ),
 .AddressRange( 64 ),
 .AddressWidth( 6 ))
pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_address0),
 .ce0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_ce0_local),
 .q0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_q0)
);
entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17g8j #(
 .DataWidth( 92 ),
 .AddressRange( 64 ),
 .AddressWidth( 6 ))
pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_address0),
 .ce0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_ce0_local),
 .q0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_q0)
);
entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22hbi #(
 .DataWidth( 87 ),
 .AddressRange( 64 ),
 .AddressWidth( 6 ))
pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_address0),
 .ce0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_ce0_local),
 .q0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_q0)
);
entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27ibs #(
 .DataWidth( 82 ),
 .AddressRange( 64 ),
 .AddressWidth( 6 ))
pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_address0),
 .ce0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_ce0_local),
 .q0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_q0)
);
entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32jbC #(
 .DataWidth( 77 ),
 .AddressRange( 64 ),
 .AddressWidth( 6 ))
pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_address0),
 .ce0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_ce0_local),
 .q0(pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_q0)
);
entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_arkbM #(
 .DataWidth( 58 ),
 .AddressRange( 256 ),
 .AddressWidth( 8 ))
pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_address0),
 .ce0(pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_ce0_local),
 .q0(pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_q0)
);
entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_arralbW #(
 .DataWidth( 26 ),
 .AddressRange( 256 ),
 .AddressWidth( 8 ))
pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_address0),
 .ce0(pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_ce0_local),
 .q0(pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_q0),
 .address1(pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_address1),
 .ce1(pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_ce1_local),
 .q1(pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_q1)
);
entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_arramb6 #(
 .DataWidth( 42 ),
 .AddressRange( 256 ),
 .AddressWidth( 8 ))
pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_address0),
 .ce0(pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_ce0_local),
 .q0(pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_q0)
);
entry_point_mul_12s_80ns_90_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 12 ),
 .din1_WIDTH( 80 ),
 .dout_WIDTH( 90 ))
mul_12s_80ns_90_1_1_U5(
 .din0(b_exp_2_fu_1920_p3),
 .din1(Elog2_fu_604_p1),
 .dout(Elog2_fu_604_p2)
);
entry_point_mul_13s_71s_71_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 13 ),
 .din1_WIDTH( 71 ),
 .dout_WIDTH( 71 ))
mul_13s_71s_71_1_1_U6(
 .din0(r_exp_reg_3322),
 .din1(71'd1636647506585939924452),
 .dout(mul_ln568_fu_609_p2)
);
entry_point_mul_40ns_40ns_79_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 40 ),
 .din1_WIDTH( 40 ),
 .dout_WIDTH( 79 ))
mul_40ns_40ns_79_1_1_U7(
 .din0(mul_ln522_fu_614_p0),
 .din1(mul_ln522_fu_614_p1),
 .dout(mul_ln522_fu_614_p2)
);
entry_point_mul_43ns_36ns_79_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 43 ),
 .din1_WIDTH( 36 ),
 .dout_WIDTH( 79 ))
mul_43ns_36ns_79_1_1_U8(
 .din0(mul_ln258_fu_618_p0),
 .din1(mul_ln258_fu_618_p1),
 .dout(mul_ln258_fu_618_p2)
);
entry_point_mul_49ns_44ns_93_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 49 ),
 .din1_WIDTH( 44 ),
 .dout_WIDTH( 93 ))
mul_49ns_44ns_93_1_1_U9(
 .din0(mul_ln277_fu_622_p0),
 .din1(mul_ln277_fu_622_p1),
 .dout(mul_ln277_fu_622_p2)
);
entry_point_mul_50ns_50ns_99_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 50 ),
 .din1_WIDTH( 50 ),
 .dout_WIDTH( 99 ))
mul_50ns_50ns_99_1_1_U10(
 .din0(mul_ln616_fu_626_p0),
 .din1(mul_ln616_fu_626_p1),
 .dout(mul_ln616_fu_626_p2)
);
entry_point_mul_54s_6ns_54_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 54 ),
 .din1_WIDTH( 6 ),
 .dout_WIDTH( 54 ))
mul_54s_6ns_54_1_1_U11(
 .din0(mul_ln516_fu_630_p0),
 .din1(mul_ln516_fu_630_p1),
 .dout(mul_ln516_fu_630_p2)
);
entry_point_mul_73ns_6ns_79_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 73 ),
 .din1_WIDTH( 6 ),
 .dout_WIDTH( 79 ))
mul_73ns_6ns_79_1_1_U12(
 .din0(mul_ln44_1_fu_634_p0),
 .din1(mul_ln44_1_fu_634_p1),
 .dout(mul_ln44_1_fu_634_p2)
);
entry_point_mul_77ns_6ns_82_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 77 ),
 .din1_WIDTH( 6 ),
 .dout_WIDTH( 82 ))
mul_77ns_6ns_82_1_1_U13(
 .din0(mul_ln44_6_fu_638_p0),
 .din1(mul_ln44_6_fu_638_p1),
 .dout(mul_ln44_6_fu_638_p2)
);
entry_point_mul_78s_54s_131_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 78 ),
 .din1_WIDTH( 54 ),
 .dout_WIDTH( 131 ))
mul_78s_54s_131_1_1_U14(
 .din0(log_base_reg_3269),
 .din1(e_frac_2_reg_3274),
 .dout(m_frac_l_fu_642_p2)
);
entry_point_mul_82ns_6ns_87_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 82 ),
 .din1_WIDTH( 6 ),
 .dout_WIDTH( 87 ))
mul_82ns_6ns_87_1_1_U15(
 .din0(mul_ln44_5_fu_646_p0),
 .din1(mul_ln44_5_fu_646_p1),
 .dout(mul_ln44_5_fu_646_p2)
);
entry_point_mul_83ns_6ns_89_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 83 ),
 .din1_WIDTH( 6 ),
 .dout_WIDTH( 89 ))
mul_83ns_6ns_89_1_1_U16(
 .din0(mul_ln44_2_fu_650_p0),
 .din1(mul_ln44_2_fu_650_p1),
 .dout(mul_ln44_2_fu_650_p2)
);
entry_point_mul_87ns_6ns_92_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 87 ),
 .din1_WIDTH( 6 ),
 .dout_WIDTH( 92 ))
mul_87ns_6ns_92_1_1_U17(
 .din0(mul_ln44_4_fu_654_p0),
 .din1(mul_ln44_4_fu_654_p1),
 .dout(mul_ln44_4_fu_654_p2)
);
entry_point_mul_92ns_6ns_97_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 92 ),
 .din1_WIDTH( 6 ),
 .dout_WIDTH( 97 ))
mul_92ns_6ns_97_1_1_U18(
 .din0(mul_ln44_3_fu_658_p0),
 .din1(mul_ln44_3_fu_658_p1),
 .dout(mul_ln44_3_fu_658_p2)
);
entry_point_mul_71ns_4ns_75_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 71 ),
 .din1_WIDTH( 4 ),
 .dout_WIDTH( 75 ))
mul_71ns_4ns_75_1_1_U19(
 .din0(mul_ln44_fu_843_p0),
 .din1(mul_ln44_fu_843_p1),
 .dout(mul_ln44_fu_843_p2)
);
(* dissolve_hierarchy = "yes" *) entry_point_sparsemux_7_2_1_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .CASE0( 2'h2 ),
 .din0_WIDTH( 1 ),
 .CASE1( 2'h1 ),
 .din1_WIDTH( 1 ),
 .CASE2( 2'h0 ),
 .din2_WIDTH( 1 ),
 .def_WIDTH( 1 ),
 .sel_WIDTH( 2 ),
 .dout_WIDTH( 1 ))
sparsemux_7_2_1_1_1_U20(
 .din0(1'd1),
 .din1(y_is_int_fu_1642_p4),
 .din2(1'd0),
 .def(y_is_int_fu_1642_p7),
 .sel(y_is_int_fu_1642_p8),
 .dout(y_is_int_fu_1642_p9)
);
entry_point_bitselect_1ns_52ns_32s_1_1_1 #(
 .DATAWIDTH( 52 ),
 .ADDRWIDTH( 32 ))
bitselect_1ns_52ns_32s_1_1_1_U21(
 .din(es_sig_fu_1447_p1),
 .sel(y_is_odd_fu_1770_p2),
 .dout(y_is_odd_fu_1770_p3)
);
(* dissolve_hierarchy = "yes" *) entry_point_sparsemux_7_2_1_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .CASE0( 2'h2 ),
 .din0_WIDTH( 1 ),
 .CASE1( 2'h1 ),
 .din1_WIDTH( 1 ),
 .CASE2( 2'h0 ),
 .din2_WIDTH( 1 ),
 .def_WIDTH( 1 ),
 .sel_WIDTH( 2 ),
 .dout_WIDTH( 1 ))
sparsemux_7_2_1_1_1_U22(
 .din0(1'd1),
 .din1(y_is_odd_fu_1770_p3),
 .din2(1'd0),
 .def(y_is_odd_1_fu_1804_p7),
 .sel(y_is_odd_1_fu_1804_p8),
 .dout(y_is_odd_1_fu_1804_p9)
);
(* dissolve_hierarchy = "yes" *) entry_point_sparsemux_19_8_64_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .CASE0( 8'h80 ),
 .din0_WIDTH( 64 ),
 .CASE1( 8'h40 ),
 .din1_WIDTH( 64 ),
 .CASE2( 8'h20 ),
 .din2_WIDTH( 64 ),
 .CASE3( 8'h10 ),
 .din3_WIDTH( 64 ),
 .CASE4( 8'h8 ),
 .din4_WIDTH( 64 ),
 .CASE5( 8'h4 ),
 .din5_WIDTH( 64 ),
 .CASE6( 8'h2 ),
 .din6_WIDTH( 64 ),
 .CASE7( 8'h1 ),
 .din7_WIDTH( 64 ),
 .CASE8( 8'h0 ),
 .din8_WIDTH( 64 ),
 .def_WIDTH( 64 ),
 .sel_WIDTH( 8 ),
 .dout_WIDTH( 64 ))
sparsemux_19_8_64_1_1_U23(
 .din0(64'd4607182418800017408),
 .din1(retval_2_fu_2923_p4),
 .din2(64'd9223372036854775807),
 .din3(bitcast_ln497_1_fu_2657_p1),
 .din4(bitcast_ln497_2_fu_2668_p1),
 .din5(bitcast_ln497_2_fu_2668_p1),
 .din6(bitcast_ln497_1_fu_2657_p1),
 .din7(bitcast_ln497_2_fu_2668_p1),
 .din8(retval_2_fu_2923_p18),
 .def(retval_2_fu_2923_p19),
 .sel(retval_2_fu_2923_p20),
 .dout(retval_2_fu_2923_p21)
);
entry_point_mac_muladd_16s_15ns_19s_31_4_1 #(
 .ID( 1 ),
 .NUM_STAGE( 4 ),
 .din0_WIDTH( 16 ),
 .din1_WIDTH( 15 ),
 .din2_WIDTH( 19 ),
 .dout_WIDTH( 31 ))
mac_muladd_16s_15ns_19s_31_4_1_U24(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(m_fix_hi_fu_2228_p4),
 .din1(grp_fu_2967_p1),
 .din2(shl_ln3_fu_2322_p3),
 .ce(1'b1),
 .dout(grp_fu_2967_p3)
);
always @ (posedge ap_clk) begin
 base_r_int_reg <= base_r;
end
always @ (posedge ap_clk) begin
 exp_int_reg <= exp;
end
always @ (posedge ap_clk) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 Z2_reg_3334 <= {{sub_ln574_fu_2394_p2[50:43]}};
 Z2_reg_3334_pp0_iter15_reg <= Z2_reg_3334;
 Z3_reg_3341 <= {{sub_ln574_fu_2394_p2[42:35]}};
 Z4_reg_3346 <= Z4_fu_2429_p1;
 a_1_reg_3060 <= {{sub_ln44_fu_853_p2[75:70]}};
 a_1_reg_3060_pp0_iter3_reg <= a_1_reg_3060;
 a_1_reg_3060_pp0_iter4_reg <= a_1_reg_3060_pp0_iter3_reg;
 a_1_reg_3060_pp0_iter5_reg <= a_1_reg_3060_pp0_iter4_reg;
 a_1_reg_3060_pp0_iter6_reg <= a_1_reg_3060_pp0_iter5_reg;
 a_1_reg_3060_pp0_iter7_reg <= a_1_reg_3060_pp0_iter6_reg;
 a_2_reg_3076 <= {{sub_ln44_1_fu_941_p2[81:76]}};
 a_2_reg_3076_pp0_iter4_reg <= a_2_reg_3076;
 a_2_reg_3076_pp0_iter5_reg <= a_2_reg_3076_pp0_iter4_reg;
 a_2_reg_3076_pp0_iter6_reg <= a_2_reg_3076_pp0_iter5_reg;
 a_2_reg_3076_pp0_iter7_reg <= a_2_reg_3076_pp0_iter6_reg;
 a_reg_3038 <= {{mul_ln516_fu_630_p2[53:50]}};
 a_reg_3038_pp0_iter2_reg <= a_reg_3038;
 a_reg_3038_pp0_iter3_reg <= a_reg_3038_pp0_iter2_reg;
 a_reg_3038_pp0_iter4_reg <= a_reg_3038_pp0_iter3_reg;
 a_reg_3038_pp0_iter5_reg <= a_reg_3038_pp0_iter4_reg;
 a_reg_3038_pp0_iter6_reg <= a_reg_3038_pp0_iter5_reg;
 a_reg_3038_pp0_iter7_reg <= a_reg_3038_pp0_iter6_reg;
 bs_exp_reg_2983 <= {{data_fu_662_p1[62:52]}};
 bs_exp_reg_2983_pp0_iter1_reg <= bs_exp_reg_2983;
 bs_exp_reg_2983_pp0_iter2_reg <= bs_exp_reg_2983_pp0_iter1_reg;
 bs_exp_reg_2983_pp0_iter3_reg <= bs_exp_reg_2983_pp0_iter2_reg;
 bs_exp_reg_2983_pp0_iter4_reg <= bs_exp_reg_2983_pp0_iter3_reg;
 bs_exp_reg_2983_pp0_iter5_reg <= bs_exp_reg_2983_pp0_iter4_reg;
 bs_exp_reg_2983_pp0_iter6_reg <= bs_exp_reg_2983_pp0_iter5_reg;
 bs_exp_reg_2983_pp0_iter7_reg <= bs_exp_reg_2983_pp0_iter6_reg;
 bs_exp_reg_2983_pp0_iter8_reg <= bs_exp_reg_2983_pp0_iter7_reg;
 bs_sig_reg_2990 <= bs_sig_fu_674_p1;
 e_frac_2_reg_3274 <= e_frac_2_fu_2116_p3;
 es_exp_reg_3205 <= {{data_1_fu_1428_p1[62:52]}};
 exp_Z1P_m_1_reg_3382 <= {{exp_Z1P_m_1_l_fu_2603_p2[51:2]}};
 exp_Z1_hi_reg_3387 <= {{pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_q0[57:8]}};
 exp_Z1_reg_3377 <= pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_q0;
 exp_Z2P_m_1_reg_3366 <= exp_Z2P_m_1_fu_2527_p2;
 exp_read_reg_2978 <= exp_int_reg;
 exp_read_reg_2978_pp0_iter1_reg <= exp_read_reg_2978;
 exp_read_reg_2978_pp0_iter2_reg <= exp_read_reg_2978_pp0_iter1_reg;
 exp_read_reg_2978_pp0_iter3_reg <= exp_read_reg_2978_pp0_iter2_reg;
 exp_read_reg_2978_pp0_iter4_reg <= exp_read_reg_2978_pp0_iter3_reg;
 exp_read_reg_2978_pp0_iter5_reg <= exp_read_reg_2978_pp0_iter4_reg;
 exp_read_reg_2978_pp0_iter6_reg <= exp_read_reg_2978_pp0_iter5_reg;
 exp_read_reg_2978_pp0_iter7_reg <= exp_read_reg_2978_pp0_iter6_reg;
 exp_read_reg_2978_pp0_iter8_reg <= exp_read_reg_2978_pp0_iter7_reg;
 icmp_ln18_4_reg_3027 <= icmp_ln18_4_fu_714_p2;
 icmp_ln18_4_reg_3027_pp0_iter2_reg <= icmp_ln18_4_reg_3027;
 icmp_ln18_4_reg_3027_pp0_iter3_reg <= icmp_ln18_4_reg_3027_pp0_iter2_reg;
 icmp_ln18_4_reg_3027_pp0_iter4_reg <= icmp_ln18_4_reg_3027_pp0_iter3_reg;
 icmp_ln18_4_reg_3027_pp0_iter5_reg <= icmp_ln18_4_reg_3027_pp0_iter4_reg;
 icmp_ln18_4_reg_3027_pp0_iter6_reg <= icmp_ln18_4_reg_3027_pp0_iter5_reg;
 icmp_ln18_4_reg_3027_pp0_iter7_reg <= icmp_ln18_4_reg_3027_pp0_iter6_reg;
 icmp_ln18_4_reg_3027_pp0_iter8_reg <= icmp_ln18_4_reg_3027_pp0_iter7_reg;
 icmp_ln340_1_reg_3021 <= icmp_ln340_1_fu_709_p2;
 icmp_ln340_1_reg_3021_pp0_iter2_reg <= icmp_ln340_1_reg_3021;
 icmp_ln340_1_reg_3021_pp0_iter3_reg <= icmp_ln340_1_reg_3021_pp0_iter2_reg;
 icmp_ln340_1_reg_3021_pp0_iter4_reg <= icmp_ln340_1_reg_3021_pp0_iter3_reg;
 icmp_ln340_1_reg_3021_pp0_iter5_reg <= icmp_ln340_1_reg_3021_pp0_iter4_reg;
 icmp_ln340_1_reg_3021_pp0_iter6_reg <= icmp_ln340_1_reg_3021_pp0_iter5_reg;
 icmp_ln340_1_reg_3021_pp0_iter7_reg <= icmp_ln340_1_reg_3021_pp0_iter6_reg;
 icmp_ln340_1_reg_3021_pp0_iter8_reg <= icmp_ln340_1_reg_3021_pp0_iter7_reg;
 icmp_ln422_reg_3244 <= icmp_ln422_fu_1748_p2;
 icmp_ln422_reg_3244_pp0_iter10_reg <= icmp_ln422_reg_3244;
 icmp_ln422_reg_3244_pp0_iter11_reg <= icmp_ln422_reg_3244_pp0_iter10_reg;
 icmp_ln422_reg_3244_pp0_iter12_reg <= icmp_ln422_reg_3244_pp0_iter11_reg;
 icmp_ln422_reg_3244_pp0_iter13_reg <= icmp_ln422_reg_3244_pp0_iter12_reg;
 icmp_ln422_reg_3244_pp0_iter14_reg <= icmp_ln422_reg_3244_pp0_iter13_reg;
 icmp_ln422_reg_3244_pp0_iter15_reg <= icmp_ln422_reg_3244_pp0_iter14_reg;
 icmp_ln422_reg_3244_pp0_iter16_reg <= icmp_ln422_reg_3244_pp0_iter15_reg;
 icmp_ln628_reg_3312 <= icmp_ln628_fu_2317_p2;
 icmp_ln628_reg_3312_pp0_iter12_reg <= icmp_ln628_reg_3312;
 icmp_ln628_reg_3312_pp0_iter13_reg <= icmp_ln628_reg_3312_pp0_iter12_reg;
 icmp_ln628_reg_3312_pp0_iter14_reg <= icmp_ln628_reg_3312_pp0_iter13_reg;
 icmp_ln628_reg_3312_pp0_iter15_reg <= icmp_ln628_reg_3312_pp0_iter14_reg;
 icmp_ln628_reg_3312_pp0_iter16_reg <= icmp_ln628_reg_3312_pp0_iter15_reg;
 log_base_reg_3269 <= {{add_ln525_1_fu_2082_p2[120:43]}};
 m_diff_hi_reg_3329 <= {{sub_ln574_fu_2394_p2[58:51]}};
 m_exp_reg_3210 <= m_exp_fu_1464_p2;
 m_fix_reg_3291 <= {{m_fix_0_in_in_v_v_fu_2203_p3[117:59]}};
 m_fix_reg_3291_pp0_iter11_reg <= m_fix_reg_3291;
 m_fix_reg_3291_pp0_iter12_reg <= m_fix_reg_3291_pp0_iter11_reg;
 m_fix_reg_3291_pp0_iter13_reg <= m_fix_reg_3291_pp0_iter12_reg;
 m_frac_l_reg_3279 <= m_frac_l_fu_642_p2;
 mul_ln516_reg_3032 <= mul_ln516_fu_630_p2;
 or_ln378_1_reg_3231 <= or_ln378_1_fu_1674_p2;
 or_ln378_1_reg_3231_pp0_iter10_reg <= or_ln378_1_reg_3231;
 or_ln378_1_reg_3231_pp0_iter11_reg <= or_ln378_1_reg_3231_pp0_iter10_reg;
 or_ln378_1_reg_3231_pp0_iter12_reg <= or_ln378_1_reg_3231_pp0_iter11_reg;
 or_ln378_1_reg_3231_pp0_iter13_reg <= or_ln378_1_reg_3231_pp0_iter12_reg;
 or_ln378_1_reg_3231_pp0_iter14_reg <= or_ln378_1_reg_3231_pp0_iter13_reg;
 or_ln378_1_reg_3231_pp0_iter15_reg <= or_ln378_1_reg_3231_pp0_iter14_reg;
 or_ln378_1_reg_3231_pp0_iter16_reg <= or_ln378_1_reg_3231_pp0_iter15_reg;
 or_ln386_2_reg_3238 <= or_ln386_2_fu_1704_p2;
 or_ln386_2_reg_3238_pp0_iter10_reg <= or_ln386_2_reg_3238;
 or_ln386_2_reg_3238_pp0_iter11_reg <= or_ln386_2_reg_3238_pp0_iter10_reg;
 or_ln386_2_reg_3238_pp0_iter12_reg <= or_ln386_2_reg_3238_pp0_iter11_reg;
 or_ln386_2_reg_3238_pp0_iter13_reg <= or_ln386_2_reg_3238_pp0_iter12_reg;
 or_ln386_2_reg_3238_pp0_iter14_reg <= or_ln386_2_reg_3238_pp0_iter13_reg;
 or_ln386_2_reg_3238_pp0_iter15_reg <= or_ln386_2_reg_3238_pp0_iter14_reg;
 or_ln386_2_reg_3238_pp0_iter16_reg <= or_ln386_2_reg_3238_pp0_iter15_reg;
 or_ln431_2_reg_3257 <= or_ln431_2_fu_1866_p2;
 or_ln431_2_reg_3257_pp0_iter10_reg <= or_ln431_2_reg_3257;
 or_ln431_2_reg_3257_pp0_iter11_reg <= or_ln431_2_reg_3257_pp0_iter10_reg;
 or_ln431_2_reg_3257_pp0_iter12_reg <= or_ln431_2_reg_3257_pp0_iter11_reg;
 or_ln431_2_reg_3257_pp0_iter13_reg <= or_ln431_2_reg_3257_pp0_iter12_reg;
 or_ln431_2_reg_3257_pp0_iter14_reg <= or_ln431_2_reg_3257_pp0_iter13_reg;
 or_ln431_2_reg_3257_pp0_iter15_reg <= or_ln431_2_reg_3257_pp0_iter14_reg;
 or_ln431_2_reg_3257_pp0_iter16_reg <= or_ln431_2_reg_3257_pp0_iter15_reg;
 or_ln438_2_reg_3263 <= or_ln438_2_fu_1908_p2;
 or_ln438_2_reg_3263_pp0_iter10_reg <= or_ln438_2_reg_3263;
 or_ln438_2_reg_3263_pp0_iter11_reg <= or_ln438_2_reg_3263_pp0_iter10_reg;
 or_ln438_2_reg_3263_pp0_iter12_reg <= or_ln438_2_reg_3263_pp0_iter11_reg;
 or_ln438_2_reg_3263_pp0_iter13_reg <= or_ln438_2_reg_3263_pp0_iter12_reg;
 or_ln438_2_reg_3263_pp0_iter14_reg <= or_ln438_2_reg_3263_pp0_iter13_reg;
 or_ln438_2_reg_3263_pp0_iter15_reg <= or_ln438_2_reg_3263_pp0_iter14_reg;
 or_ln438_2_reg_3263_pp0_iter16_reg <= or_ln438_2_reg_3263_pp0_iter15_reg;
 r_exp_reg_3322 <= r_exp_fu_2372_p3;
 r_exp_reg_3322_pp0_iter14_reg <= r_exp_reg_3322;
 r_exp_reg_3322_pp0_iter15_reg <= r_exp_reg_3322_pp0_iter14_reg;
 r_exp_reg_3322_pp0_iter16_reg <= r_exp_reg_3322_pp0_iter15_reg;
 r_sign_reg_3249 <= r_sign_fu_1824_p2;
 r_sign_reg_3249_pp0_iter10_reg <= r_sign_reg_3249;
 r_sign_reg_3249_pp0_iter11_reg <= r_sign_reg_3249_pp0_iter10_reg;
 r_sign_reg_3249_pp0_iter12_reg <= r_sign_reg_3249_pp0_iter11_reg;
 r_sign_reg_3249_pp0_iter13_reg <= r_sign_reg_3249_pp0_iter12_reg;
 r_sign_reg_3249_pp0_iter14_reg <= r_sign_reg_3249_pp0_iter13_reg;
 r_sign_reg_3249_pp0_iter15_reg <= r_sign_reg_3249_pp0_iter14_reg;
 r_sign_reg_3249_pp0_iter16_reg <= r_sign_reg_3249_pp0_iter15_reg;
 select_ln545_reg_3286 <= select_ln545_fu_2141_p3;
 sub_ln44_1_reg_3071 <= sub_ln44_1_fu_941_p2;
 tmp_10_reg_3104 <= {{sub_ln44_3_fu_1110_p2[120:34]}};
 tmp_11_reg_3110 <= {{sub_ln44_3_fu_1110_p2[114:34]}};
 tmp_13_reg_3115 <= {{sub_ln44_3_fu_1110_p2[120:115]}};
 tmp_13_reg_3115_pp0_iter6_reg <= tmp_13_reg_3115;
 tmp_13_reg_3115_pp0_iter7_reg <= tmp_13_reg_3115_pp0_iter6_reg;
 tmp_14_reg_3121 <= {{sub_ln44_4_fu_1198_p2[125:44]}};
 tmp_15_reg_3127 <= {{sub_ln44_4_fu_1198_p2[119:44]}};
 tmp_16_reg_3132 <= {{sub_ln44_4_fu_1198_p2[125:120]}};
 tmp_16_reg_3132_pp0_iter7_reg <= tmp_16_reg_3132;
 tmp_17_reg_3138 <= {{sub_ln44_5_fu_1286_p2[130:54]}};
 tmp_18_reg_3144 <= {{sub_ln44_5_fu_1286_p2[124:54]}};
 tmp_19_reg_3149 <= {{sub_ln44_5_fu_1286_p2[130:125]}};
 tmp_1_reg_3223 <= m_exp_fu_1464_p2[32'd11];
 tmp_1_reg_3223_pp0_iter10_reg <= tmp_1_reg_3223;
 tmp_20_reg_3195 <= {{sub_ln44_6_fu_1398_p2[135:64]}};
 tmp_21_reg_3200 <= {{sub_ln44_6_fu_1398_p2[135:96]}};
 tmp_23_reg_3296 <= zext_ln549_fu_2214_p1[32'd129];
 tmp_23_reg_3296_pp0_iter11_reg <= tmp_23_reg_3296;
 tmp_30_reg_3306 <= m_frac_l_fu_642_p2[32'd130];
 tmp_30_reg_3306_pp0_iter11_reg <= tmp_30_reg_3306;
 tmp_30_reg_3306_pp0_iter12_reg <= tmp_30_reg_3306_pp0_iter11_reg;
 tmp_30_reg_3306_pp0_iter13_reg <= tmp_30_reg_3306_pp0_iter12_reg;
 tmp_30_reg_3306_pp0_iter14_reg <= tmp_30_reg_3306_pp0_iter13_reg;
 tmp_30_reg_3306_pp0_iter15_reg <= tmp_30_reg_3306_pp0_iter14_reg;
 tmp_30_reg_3306_pp0_iter16_reg <= tmp_30_reg_3306_pp0_iter15_reg;
 tmp_5_reg_3005 <= data_fu_662_p1[32'd51];
 tmp_5_reg_3005_pp0_iter1_reg <= tmp_5_reg_3005;
 tmp_5_reg_3005_pp0_iter2_reg <= tmp_5_reg_3005_pp0_iter1_reg;
 tmp_5_reg_3005_pp0_iter3_reg <= tmp_5_reg_3005_pp0_iter2_reg;
 tmp_5_reg_3005_pp0_iter4_reg <= tmp_5_reg_3005_pp0_iter3_reg;
 tmp_5_reg_3005_pp0_iter5_reg <= tmp_5_reg_3005_pp0_iter4_reg;
 tmp_5_reg_3005_pp0_iter6_reg <= tmp_5_reg_3005_pp0_iter5_reg;
 tmp_5_reg_3005_pp0_iter7_reg <= tmp_5_reg_3005_pp0_iter6_reg;
 tmp_5_reg_3005_pp0_iter8_reg <= tmp_5_reg_3005_pp0_iter7_reg;
 tmp_6_reg_3049 <= mul_ln516_fu_630_p2[32'd53];
 tmp_7_reg_3066 <= {{sub_ln44_fu_853_p2[69:3]}};
 tmp_8_reg_3093 <= {{sub_ln44_2_fu_1022_p2[95:10]}};
 tmp_9_reg_3098 <= {{sub_ln44_2_fu_1022_p2[101:96]}};
 tmp_9_reg_3098_pp0_iter5_reg <= tmp_9_reg_3098;
 tmp_9_reg_3098_pp0_iter6_reg <= tmp_9_reg_3098_pp0_iter5_reg;
 tmp_9_reg_3098_pp0_iter7_reg <= tmp_9_reg_3098_pp0_iter6_reg;
 tmp_reg_2998 <= data_fu_662_p1[32'd63];
 tmp_reg_2998_pp0_iter1_reg <= tmp_reg_2998;
 tmp_reg_2998_pp0_iter2_reg <= tmp_reg_2998_pp0_iter1_reg;
 tmp_reg_2998_pp0_iter3_reg <= tmp_reg_2998_pp0_iter2_reg;
 tmp_reg_2998_pp0_iter4_reg <= tmp_reg_2998_pp0_iter3_reg;
 tmp_reg_2998_pp0_iter5_reg <= tmp_reg_2998_pp0_iter4_reg;
 tmp_reg_2998_pp0_iter6_reg <= tmp_reg_2998_pp0_iter5_reg;
 tmp_reg_2998_pp0_iter7_reg <= tmp_reg_2998_pp0_iter6_reg;
 tmp_reg_2998_pp0_iter8_reg <= tmp_reg_2998_pp0_iter7_reg;
 trunc_ln39_1_reg_3082 <= trunc_ln39_1_fu_957_p1;
 trunc_ln39_reg_3044 <= trunc_ln39_fu_762_p1;
 x_is_n1_reg_3217 <= x_is_n1_fu_1498_p2;
 x_is_n1_reg_3217_pp0_iter10_reg <= x_is_n1_reg_3217;
 x_is_n1_reg_3217_pp0_iter11_reg <= x_is_n1_reg_3217_pp0_iter10_reg;
 x_is_n1_reg_3217_pp0_iter12_reg <= x_is_n1_reg_3217_pp0_iter11_reg;
 x_is_n1_reg_3217_pp0_iter13_reg <= x_is_n1_reg_3217_pp0_iter12_reg;
 x_is_n1_reg_3217_pp0_iter14_reg <= x_is_n1_reg_3217_pp0_iter13_reg;
 x_is_n1_reg_3217_pp0_iter15_reg <= x_is_n1_reg_3217_pp0_iter14_reg;
 x_is_n1_reg_3217_pp0_iter16_reg <= x_is_n1_reg_3217_pp0_iter15_reg;
 z2_reg_3054 <= {{sub_ln44_fu_853_p2[75:3]}};
 z4_reg_3087 <= {{sub_ln44_2_fu_1022_p2[101:10]}};
 zext_ln502_reg_3011[5 : 0] <= zext_ln502_fu_704_p1[5 : 0];
 zext_ln502_reg_3011_pp0_iter1_reg[5 : 0] <= zext_ln502_reg_3011[5 : 0];
 zext_ln502_reg_3011_pp0_iter2_reg[5 : 0] <= zext_ln502_reg_3011_pp0_iter1_reg[5 : 0];
 zext_ln502_reg_3011_pp0_iter3_reg[5 : 0] <= zext_ln502_reg_3011_pp0_iter2_reg[5 : 0];
 zext_ln502_reg_3011_pp0_iter4_reg[5 : 0] <= zext_ln502_reg_3011_pp0_iter3_reg[5 : 0];
 zext_ln502_reg_3011_pp0_iter5_reg[5 : 0] <= zext_ln502_reg_3011_pp0_iter4_reg[5 : 0];
 zext_ln502_reg_3011_pp0_iter6_reg[5 : 0] <= zext_ln502_reg_3011_pp0_iter5_reg[5 : 0];
 zext_ln502_reg_3011_pp0_iter7_reg[5 : 0] <= zext_ln502_reg_3011_pp0_iter6_reg[5 : 0];
 end
end
always @ (*) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 pow_reduce_anonymous_namespace_log0_lut_table_array_ce0_local = 1'b1;
 end else begin
 pow_reduce_anonymous_namespace_log0_lut_table_array_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_ce0_local = 1'b1;
 end else begin
 pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_ce0_local = 1'b1;
 end else begin
 pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_ce0_local = 1'b1;
 end else begin
 pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_ce0_local = 1'b1;
 end else begin
 pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_ce0_local = 1'b1;
 end else begin
 pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_ce0_local = 1'b1;
 end else begin
 pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_ce0_local = 1'b1;
 end else begin
 pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_ce0_local = 1'b1;
 end else begin
 pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_ce0_local = 1'b1;
 end else begin
 pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_ce0_local = 1'b1;
 end else begin
 pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_ce0_local = 1'b1;
 end else begin
 pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_ce1_local = 1'b1;
 end else begin
 pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_ce1_local = 1'b0;
 end
end
assign Elog2_fu_604_p1 = 90'd418981761686000620659953;
assign Z3_fu_2419_p4 = {{sub_ln574_fu_2394_p2[42:35]}};
assign Z4_fu_2429_p1 = sub_ln574_fu_2394_p2[34:0];
assign Z4_ind_fu_2433_p4 = {{sub_ln574_fu_2394_p2[34:27]}};
assign add_ln209_1_fu_1966_p2 = (zext_ln194_1_fu_1936_p1 + zext_ln194_2_fu_1940_p1);
assign add_ln209_2_fu_1976_p2 = (zext_ln209_fu_1972_p1 + add_ln209_fu_1960_p2);
assign add_ln209_3_fu_1982_p2 = (zext_ln194_3_fu_1944_p1 + zext_ln194_4_fu_1948_p1);
assign add_ln209_4_fu_1988_p2 = (zext_ln194_5_fu_1952_p1 + zext_ln194_6_fu_1956_p1);
assign add_ln209_5_fu_1998_p2 = (zext_ln209_1_fu_1994_p1 + add_ln209_3_fu_1982_p2);
assign add_ln209_fu_1960_p2 = (zext_ln194_fu_1932_p1 + pow_reduce_anonymous_namespace_log0_lut_table_array_q0);
assign add_ln261_fu_2517_p2 = (exp_Z4_m_1_fu_2474_p2 + zext_ln261_1_fu_2513_p1);
assign add_ln280_fu_2594_p2 = (exp_Z2P_m_1_reg_3366 + zext_ln280_2_fu_2590_p1);
assign add_ln373_fu_1594_p2 = (es_exp_cast_fu_1584_p4 + 6'd1);
assign add_ln44_1_fu_915_p2 = (zext_ln44_3_fu_907_p1 + zext_ln44_4_fu_911_p1);
assign add_ln44_2_fu_995_p2 = (zext_ln44_8_fu_987_p1 + zext_ln44_9_fu_991_p1);
assign add_ln44_3_fu_1084_p2 = (zext_ln44_13_fu_1076_p1 + zext_ln44_14_fu_1080_p1);
assign add_ln44_4_fu_1172_p2 = (zext_ln44_18_fu_1164_p1 + zext_ln44_19_fu_1168_p1);
assign add_ln44_5_fu_1260_p2 = (zext_ln44_23_fu_1252_p1 + zext_ln44_24_fu_1256_p1);
assign add_ln44_6_fu_1372_p2 = (zext_ln44_28_fu_1364_p1 + zext_ln44_29_fu_1368_p1);
assign add_ln44_fu_834_p2 = (zext_ln44_fu_830_p1 + select_ln42_fu_816_p3);
assign add_ln525_1_fu_2082_p2 = (add_ln525_fu_2072_p2 + zext_ln525_fu_2078_p1);
assign add_ln525_fu_2072_p2 = ($signed(sext_ln525_fu_2064_p1) + $signed(sext_ln525_1_fu_2068_p1));
assign add_ln563_1_fu_2358_p2 = (tmp_9_cast_fu_2333_p4 + 13'd1);
assign add_ln616_1_fu_2697_p2 = (shl_ln4_fu_2685_p3 + zext_ln616_2_fu_2693_p1);
assign add_ln616_fu_2672_p2 = (exp_Z1_reg_3377 + 58'd16);
assign and_ln342_1_fu_2836_p2 = (xor_ln386_1_fu_2810_p2 & xor_ln342_fu_2831_p2);
assign and_ln342_fu_2816_p2 = (xor_ln386_1_fu_2810_p2 & x_is_n1_reg_3217_pp0_iter16_reg);
assign and_ln373_1_fu_1610_p2 = (lshr_ln373_fu_1604_p2 & es_sig_fu_1447_p1);
assign and_ln378_fu_1662_p2 = (y_is_inf_fu_1515_p2 & x_is_n1_fu_1498_p2);
assign and_ln386_1_fu_2826_p2 = (xor_ln386_2_fu_2821_p2 & or_ln386_2_reg_3238_pp0_iter16_reg);
assign and_ln386_fu_1692_p2 = (xor_ln386_fu_1686_p2 & x_is_neg_fu_1565_p2);
assign and_ln422_1_fu_1790_p2 = (icmp_ln422_fu_1748_p2 & and_ln422_fu_1784_p2);
assign and_ln422_fu_1784_p2 = (xor_ln421_fu_1778_p2 & icmp_ln422_1_fu_1754_p2);
assign and_ln431_1_fu_1836_p2 = (y_is_ninf_fu_1722_p2 & tmp_2_fu_1728_p3);
assign and_ln431_2_fu_1842_p2 = (y_is_pos_fu_1710_p2 & x_is_inf_fu_1548_p2);
assign and_ln431_3_fu_1848_p2 = (x_is_0_fu_1543_p2 & es_sign_fu_1431_p3);
assign and_ln431_4_fu_2842_p2 = (or_ln431_2_reg_3257_pp0_iter16_reg & and_ln342_1_fu_2836_p2);
assign and_ln431_5_fu_2847_p2 = (xor_ln431_fu_2640_p2 & and_ln342_1_fu_2836_p2);
assign and_ln431_fu_1830_p2 = (y_is_pinf_fu_1716_p2 & x_abs_greater_1_fu_1736_p2);
assign and_ln438_1_fu_1878_p2 = (y_is_ninf_fu_1722_p2 & x_abs_greater_1_fu_1736_p2);
assign and_ln438_2_fu_1884_p2 = (y_is_pos_fu_1710_p2 & x_is_0_fu_1543_p2);
assign and_ln438_3_fu_1890_p2 = (x_is_inf_fu_1548_p2 & es_sign_fu_1431_p3);
assign and_ln438_4_fu_2853_p2 = (or_ln438_2_reg_3263_pp0_iter16_reg & and_ln431_5_fu_2847_p2);
assign and_ln438_5_fu_2858_p2 = (xor_ln438_fu_2645_p2 & and_ln431_5_fu_2847_p2);
assign and_ln438_fu_1872_p2 = (y_is_pinf_fu_1716_p2 & tmp_2_fu_1728_p3);
assign and_ln628_1_fu_2864_p2 = (or_ln628_fu_2743_p2 & and_ln438_5_fu_2858_p2);
assign and_ln628_fu_2723_p2 = (icmp_ln628_reg_3312_pp0_iter16_reg & icmp_ln422_reg_3244_pp0_iter16_reg);
assign and_ln629_1_fu_2880_p2 = (xor_ln629_fu_2875_p2 & and_ln628_1_fu_2864_p2);
assign and_ln629_fu_2870_p2 = (tmp_30_reg_3306_pp0_iter16_reg & and_ln628_1_fu_2864_p2);
assign and_ln645_1_fu_2898_p2 = (and_ln645_fu_2892_p2 & and_ln438_5_fu_2858_p2);
assign and_ln645_fu_2892_p2 = (xor_ln628_fu_2886_p2 & icmp_ln645_fu_2749_p2);
assign and_ln_fu_2565_p5 = {{{{Z2_reg_3334_pp0_iter15_reg}, {1'd0}}, {tmp_26_fu_2537_p4}}, {2'd0}};
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_return = retval_2_fu_2923_p21;
assign ashr_ln545_fu_2265_p2 = $signed(m_frac_l_reg_3279) >>> zext_ln545_fu_2261_p1;
assign ashr_ln546_fu_2300_p2 = $signed(m_fix_l_fu_2283_p3) >>> zext_ln546_fu_2290_p1;
assign ashr_ln553_fu_2189_p2 = $signed(m_frac_l_fu_642_p2) >>> zext_ln553_fu_2179_p1;
assign b_exp_1_fu_1914_p2 = ($signed(zext_ln486_fu_1451_p1) + $signed(12'd3074));
assign b_exp_2_fu_1920_p3 = ((tmp_5_reg_3005_pp0_iter8_reg[0:0] == 1'b1) ? b_exp_1_fu_1914_p2 : b_exp_fu_1454_p2);
assign b_exp_fu_1454_p2 = ($signed(zext_ln486_fu_1451_p1) + $signed(12'd3073));
assign b_frac_1_fu_728_p3 = {{1'd1}, {bs_sig_reg_2990}};
assign b_frac_fu_719_p4 = {{{{1'd1}, {bs_sig_reg_2990}}}, {1'd0}};
assign bitcast_ln497_1_fu_2657_p1 = t_1_fu_2650_p3;
assign bitcast_ln497_2_fu_2668_p1 = t_2_fu_2661_p3;
assign bs_sig_fu_674_p1 = data_fu_662_p1[51:0];
assign data_1_fu_1428_p1 = exp_read_reg_2978_pp0_iter8_reg;
assign data_fu_662_p1 = base_r_int_reg;
assign eZ_1_fu_972_p3 = {{1'd1}, {zext_ln40_1_fu_968_p1}};
assign eZ_2_fu_1061_p3 = {{1'd1}, {zext_ln40_2_fu_1058_p1}};
assign eZ_3_fu_1149_p3 = {{1'd1}, {zext_ln40_3_fu_1146_p1}};
assign eZ_4_fu_1237_p3 = {{1'd1}, {zext_ln40_4_fu_1234_p1}};
assign eZ_5_fu_1349_p3 = {{1'd1}, {zext_ln40_5_fu_1346_p1}};
assign eZ_fu_892_p3 = {{1'd1}, {zext_ln40_fu_889_p1}};
assign e_frac_1_fu_2110_p2 = (54'd0 - zext_ln532_fu_2106_p1);
assign e_frac_2_fu_2116_p3 = ((es_sign_fu_1431_p3[0:0] == 1'b1) ? e_frac_1_fu_2110_p2 : zext_ln532_fu_2106_p1);
assign e_frac_fu_2098_p3 = {{1'd1}, {es_sig_fu_1447_p1}};
assign empty_fu_2210_p1 = m_fix_0_in_in_v_v_fu_2203_p3[129:0];
assign es_exp_cast_fu_1584_p4 = {{data_1_fu_1428_p1[57:52]}};
assign es_exp_fu_1439_p3 = {{data_1_fu_1428_p1[62:52]}};
assign es_sig_fu_1447_p1 = data_1_fu_1428_p1[51:0];
assign es_sign_fu_1431_p3 = data_1_fu_1428_p1[32'd63];
assign exp_Z1P_m_1_l_fu_2603_p2 = (zext_ln280_1_fu_2599_p1 + zext_ln280_fu_2576_p1);
assign exp_Z2P_m_1_fu_2527_p2 = (zext_ln261_fu_2523_p1 + zext_ln255_fu_2489_p1);
assign exp_Z2_m_1_fu_2547_p4 = {{{Z2_reg_3334_pp0_iter15_reg}, {1'd0}}, {tmp_26_fu_2537_p4}};
assign exp_Z3_m_1_fu_2480_p4 = {{{Z3_reg_3341}, {9'd0}}, {pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_q0}};
assign exp_Z4_m_1_fu_2474_p2 = (zext_ln250_fu_2467_p1 + zext_ln250_1_fu_2470_p1);
assign f_Z4_fu_2457_p4 = {{pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_q1[25:16]}};
assign grp_fu_2967_p1 = 31'd23637;
assign icmp_ln18_1_fu_1509_p2 = ((es_sig_fu_1447_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln18_2_fu_1521_p2 = ((es_sig_fu_1447_p1 != 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln18_3_fu_1533_p2 = ((bs_exp_reg_2983_pp0_iter8_reg == 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln18_4_fu_714_p2 = ((bs_sig_reg_2990 != 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_1503_p2 = ((es_exp_fu_1439_p3 == 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln340_1_fu_709_p2 = ((bs_sig_reg_2990 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln340_fu_1476_p2 = ((b_exp_fu_1454_p2 == 12'd0) ? 1'b1 : 1'b0);
assign icmp_ln372_fu_1570_p2 = (($signed(m_exp_fu_1464_p2) > $signed(12'd51)) ? 1'b1 : 1'b0);
assign icmp_ln421_fu_1742_p2 = ((m_exp_fu_1464_p2 == 12'd0) ? 1'b1 : 1'b0);
assign icmp_ln422_1_fu_1754_p2 = (($signed(m_exp_fu_1464_p2) < $signed(12'd53)) ? 1'b1 : 1'b0);
assign icmp_ln422_fu_1748_p2 = (($signed(m_exp_fu_1464_p2) > $signed(12'd0)) ? 1'b1 : 1'b0);
assign icmp_ln563_fu_2352_p2 = ((trunc_ln563_fu_2349_p1 != 18'd0) ? 1'b1 : 1'b0);
assign icmp_ln628_1_fu_2737_p2 = (($signed(tmp_29_fu_2727_p4) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign icmp_ln628_fu_2317_p2 = ((m_frac_l_reg_3279 != sext_ln628_fu_2313_p1) ? 1'b1 : 1'b0);
assign icmp_ln645_fu_2749_p2 = (($signed(r_exp_2_fu_2716_p3) < $signed(13'd7170)) ? 1'b1 : 1'b0);
assign index0_fu_694_p4 = {{data_fu_662_p1[51:46]}};
assign log_sum_1_fu_2008_p2 = (zext_ln209_2_fu_2004_p1 + add_ln209_2_fu_1976_p2);
assign lshr_ln373_fu_1604_p2 = 52'd4503599627370495 >> zext_ln373_fu_1600_p1;
assign lshr_ln522_1_fu_2046_p4 = {{sub_ln522_fu_2040_p2[116:45]}};
assign lshr_ln_fu_2019_p4 = {{mul_ln522_fu_614_p2[78:1]}};
assign m_exp_fu_1464_p2 = ($signed(zext_ln486_1_fu_1460_p1) + $signed(12'd3073));
assign m_fix_0_in_in_v_v_fu_2203_p3 = ((tmp_1_reg_3223[0:0] == 1'b1) ? select_ln553_1_fu_2195_p3 : shl_ln552_fu_2154_p2);
assign m_fix_a_fu_2384_p4 = {{mul_ln568_fu_609_p2[70:12]}};
assign m_fix_back_fu_2306_p3 = ((tmp_1_reg_3223_pp0_iter10_reg[0:0] == 1'b1) ? shl_ln546_fu_2294_p2 : ashr_ln546_fu_2300_p2);
assign m_fix_hi_fu_2228_p4 = {{m_fix_0_in_in_v_v_fu_2203_p3[129:114]}};
assign m_fix_l_fu_2283_p3 = ((tmp_1_reg_3223_pp0_iter10_reg[0:0] == 1'b1) ? trunc_ln545_fu_2275_p1 : trunc_ln545_1_fu_2279_p1);
assign mul_ln258_fu_618_p0 = mul_ln258_fu_618_p00;
assign mul_ln258_fu_618_p00 = exp_Z3_m_1_fu_2480_p4;
assign mul_ln258_fu_618_p1 = mul_ln258_fu_618_p10;
assign mul_ln258_fu_618_p10 = exp_Z4_m_1_fu_2474_p2;
assign mul_ln277_fu_622_p0 = mul_ln277_fu_622_p00;
assign mul_ln277_fu_622_p00 = exp_Z2_m_1_fu_2547_p4;
assign mul_ln277_fu_622_p1 = mul_ln277_fu_622_p10;
assign mul_ln277_fu_622_p10 = exp_Z2P_m_1_reg_3366;
assign mul_ln44_1_fu_634_p0 = mul_ln44_1_fu_634_p00;
assign mul_ln44_1_fu_634_p00 = z2_reg_3054;
assign mul_ln44_1_fu_634_p1 = mul_ln44_1_fu_634_p10;
assign mul_ln44_1_fu_634_p10 = a_1_reg_3060;
assign mul_ln44_2_fu_650_p0 = mul_ln44_2_fu_650_p00;
assign mul_ln44_2_fu_650_p00 = z3_fu_961_p3;
assign mul_ln44_2_fu_650_p1 = mul_ln44_2_fu_650_p10;
assign mul_ln44_2_fu_650_p10 = a_2_reg_3076;
assign mul_ln44_3_fu_658_p0 = mul_ln44_3_fu_658_p00;
assign mul_ln44_3_fu_658_p00 = z4_reg_3087;
assign mul_ln44_3_fu_658_p1 = mul_ln44_3_fu_658_p10;
assign mul_ln44_3_fu_658_p10 = tmp_9_reg_3098;
assign mul_ln44_4_fu_654_p0 = mul_ln44_4_fu_654_p00;
assign mul_ln44_4_fu_654_p00 = tmp_10_reg_3104;
assign mul_ln44_4_fu_654_p1 = mul_ln44_4_fu_654_p10;
assign mul_ln44_4_fu_654_p10 = tmp_13_reg_3115;
assign mul_ln44_5_fu_646_p0 = mul_ln44_5_fu_646_p00;
assign mul_ln44_5_fu_646_p00 = tmp_14_reg_3121;
assign mul_ln44_5_fu_646_p1 = mul_ln44_5_fu_646_p10;
assign mul_ln44_5_fu_646_p10 = tmp_16_reg_3132;
assign mul_ln44_6_fu_638_p0 = mul_ln44_6_fu_638_p00;
assign mul_ln44_6_fu_638_p00 = tmp_17_reg_3138;
assign mul_ln44_6_fu_638_p1 = mul_ln44_6_fu_638_p10;
assign mul_ln44_6_fu_638_p10 = tmp_19_reg_3149;
assign mul_ln44_fu_843_p0 = zext_ln42_1_fu_800_p1;
assign mul_ln44_fu_843_p1 = mul_ln44_fu_843_p10;
assign mul_ln44_fu_843_p10 = a_reg_3038;
assign mul_ln516_fu_630_p0 = ((tmp_5_reg_3005[0:0] == 1'b1) ? zext_ln485_fu_735_p1 : b_frac_fu_719_p4);
assign mul_ln516_fu_630_p1 = mul_ln516_fu_630_p10;
assign mul_ln516_fu_630_p10 = pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_q0;
assign mul_ln522_fu_614_p0 = zext_ln522_fu_2014_p1;
assign mul_ln522_fu_614_p1 = zext_ln522_fu_2014_p1;
assign mul_ln616_fu_626_p0 = mul_ln616_fu_626_p00;
assign mul_ln616_fu_626_p00 = exp_Z1P_m_1_reg_3382;
assign mul_ln616_fu_626_p1 = mul_ln616_fu_626_p10;
assign mul_ln616_fu_626_p10 = exp_Z1_hi_reg_3387;
assign or_ln357_fu_1553_p2 = (x_is_inf_fu_1548_p2 | x_is_0_fu_1543_p2);
assign or_ln373_fu_1622_p2 = (tmp_1_fu_1576_p3 | icmp_ln372_fu_1570_p2);
assign or_ln378_1_fu_1674_p2 = (y_is_0_fu_1470_p2 | or_ln378_fu_1668_p2);
assign or_ln378_fu_1668_p2 = (x_is_p1_fu_1492_p2 | and_ln378_fu_1662_p2);
assign or_ln386_1_fu_1698_p2 = (x_is_NaN_fu_1538_p2 | and_ln386_fu_1692_p2);
assign or_ln386_2_fu_1704_p2 = (y_is_NaN_fu_1527_p2 | or_ln386_1_fu_1698_p2);
assign or_ln386_3_fu_2806_p2 = (or_ln386_2_reg_3238_pp0_iter16_reg | or_ln378_1_reg_3231_pp0_iter16_reg);
assign or_ln386_fu_1680_p2 = (y_is_int_fu_1642_p9 | y_is_inf_fu_1515_p2);
assign or_ln431_1_fu_1860_p2 = (or_ln431_fu_1854_p2 | and_ln431_3_fu_1848_p2);
assign or_ln431_2_fu_1866_p2 = (or_ln431_1_fu_1860_p2 | and_ln431_1_fu_1836_p2);
assign or_ln431_fu_1854_p2 = (and_ln431_fu_1830_p2 | and_ln431_2_fu_1842_p2);
assign or_ln438_1_fu_1902_p2 = (or_ln438_fu_1896_p2 | and_ln438_3_fu_1890_p2);
assign or_ln438_2_fu_1908_p2 = (or_ln438_1_fu_1902_p2 | and_ln438_fu_1872_p2);
assign or_ln438_fu_1896_p2 = (and_ln438_2_fu_1884_p2 | and_ln438_1_fu_1878_p2);
assign or_ln628_fu_2743_p2 = (icmp_ln628_1_fu_2737_p2 | and_ln628_fu_2723_p2);
assign out_exp_fu_2787_p2 = (trunc_ln657_fu_2783_p1 + 11'd1023);
assign out_sig_fu_2775_p3 = ((tmp_28_fu_2703_p3[0:0] == 1'b1) ? tmp_3_fu_2755_p4 : tmp_12_fu_2765_p4);
assign pow_reduce_anonymous_namespace_log0_lut_table_array_address0 = zext_ln502_reg_3011_pp0_iter7_reg;
assign pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_address0 = zext_ln502_fu_704_p1;
assign pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_address0 = zext_ln46_2_fu_1330_p1;
assign pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_address0 = zext_ln46_3_fu_1334_p1;
assign pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_address0 = zext_ln46_4_fu_1338_p1;
assign pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_address0 = zext_ln46_5_fu_1342_p1;
assign pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_address0 = zext_ln46_6_fu_1404_p1;
assign pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_address0 = zext_ln46_fu_1322_p1;
assign pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_address0 = zext_ln46_1_fu_1326_p1;
assign pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_address0 = zext_ln611_fu_2453_p1;
assign pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_address0 = zext_ln273_fu_2533_p1;
assign pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_address0 = zext_ln254_fu_2448_p1;
assign pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_address1 = zext_ln249_fu_2443_p1;
assign r_exp_1_fu_2711_p2 = ($signed(r_exp_reg_3322_pp0_iter16_reg) + $signed(13'd8191));
assign r_exp_2_fu_2716_p3 = ((tmp_28_fu_2703_p3[0:0] == 1'b1) ? r_exp_reg_3322_pp0_iter16_reg : r_exp_1_fu_2711_p2);
assign r_exp_fu_2372_p3 = ((tmp_24_fu_2342_p3[0:0] == 1'b1) ? select_ln563_fu_2364_p3 : tmp_9_cast_fu_2333_p4);
assign r_sign_fu_1824_p2 = (y_is_odd_1_fu_1804_p9 & x_is_neg_fu_1565_p2);
assign retval_2_fu_2923_p18 = t_3_fu_2793_p4;
assign retval_2_fu_2923_p19 = 'bx;
assign retval_2_fu_2923_p20 = {{{{{{{{or_ln378_1_reg_3231_pp0_iter16_reg}, {and_ln342_fu_2816_p2}}, {and_ln386_1_fu_2826_p2}}, {and_ln431_4_fu_2842_p2}}, {and_ln438_4_fu_2853_p2}}, {and_ln629_fu_2870_p2}}, {and_ln629_1_fu_2880_p2}}, {and_ln645_1_fu_2898_p2}};
assign retval_2_fu_2923_p4 = t_fu_2629_p3;
assign select_ln42_fu_816_p3 = ((tmp_6_reg_3049[0:0] == 1'b1) ? tmp_4_fu_804_p3 : zext_ln42_2_fu_812_p1);
assign select_ln545_fu_2141_p3 = ((tmp_1_reg_3223[0:0] == 1'b1) ? sext_ln545_fu_2137_p1 : m_exp_reg_3210);
assign select_ln553_1_fu_2195_p3 = ((tmp_22_fu_2160_p3[0:0] == 1'b1) ? shl_ln553_fu_2183_p2 : ashr_ln553_fu_2189_p2);
assign select_ln553_fu_2168_p3 = ((tmp_22_fu_2160_p3[0:0] == 1'b1) ? m_exp_reg_3210 : sext_ln545_fu_2137_p1);
assign select_ln563_fu_2364_p3 = ((icmp_ln563_fu_2352_p2[0:0] == 1'b1) ? add_ln563_1_fu_2358_p2 : tmp_9_cast_fu_2333_p4);
assign sext_ln525_1_fu_2068_p1 = $signed(log_sum_1_fu_2008_p2);
assign sext_ln525_fu_2064_p1 = $signed(shl_ln2_fu_2056_p3);
assign sext_ln545_1_fu_2258_p1 = $signed(select_ln545_reg_3286);
assign sext_ln545_fu_2137_p1 = sub_ln545_fu_2132_p2;
assign sext_ln552_fu_2147_p1 = m_exp_reg_3210;
assign sext_ln553_fu_2175_p1 = $signed(select_ln553_fu_2168_p3);
assign sext_ln628_fu_2313_p1 = $signed(m_fix_back_fu_2306_p3);
assign shl_ln1_fu_2029_p3 = {{tmp_20_reg_3195}, {45'd0}};
assign shl_ln2_fu_2056_p3 = {{Elog2_fu_604_p2}, {30'd0}};
assign shl_ln3_fu_2322_p3 = {{tmp_23_reg_3296_pp0_iter11_reg}, {18'd131072}};
assign shl_ln44_10_fu_1357_p3 = {{tmp_18_reg_3144}, {64'd0}};
assign shl_ln44_11_fu_1386_p3 = {{mul_ln44_6_fu_638_p2}, {26'd0}};
assign shl_ln44_1_fu_900_p3 = {{tmp_7_reg_3066}, {14'd0}};
assign shl_ln44_2_fu_929_p3 = {{mul_ln44_1_fu_634_p2}, {1'd0}};
assign shl_ln44_3_fu_1274_p3 = {{mul_ln44_5_fu_646_p2}, {21'd0}};
assign shl_ln44_4_fu_980_p3 = {{trunc_ln39_1_reg_3082}, {25'd0}};
assign shl_ln44_5_fu_1010_p3 = {{mul_ln44_2_fu_650_p2}, {6'd0}};
assign shl_ln44_6_fu_1069_p3 = {{tmp_8_reg_3093}, {34'd0}};
assign shl_ln44_7_fu_1098_p3 = {{mul_ln44_3_fu_658_p2}, {11'd0}};
assign shl_ln44_8_fu_1157_p3 = {{tmp_11_reg_3110}, {44'd0}};
assign shl_ln44_9_fu_1186_p3 = {{mul_ln44_4_fu_654_p2}, {16'd0}};
assign shl_ln44_s_fu_1245_p3 = {{tmp_15_reg_3127}, {54'd0}};
assign shl_ln4_fu_2685_p3 = {{add_ln616_fu_2672_p2}, {49'd0}};
assign shl_ln545_fu_2270_p2 = m_frac_l_reg_3279 << zext_ln545_fu_2261_p1;
assign shl_ln546_fu_2294_p2 = m_fix_l_fu_2283_p3 << zext_ln546_fu_2290_p1;
assign shl_ln552_fu_2154_p2 = m_frac_l_fu_642_p2 << zext_ln552_fu_2150_p1;
assign shl_ln553_fu_2183_p2 = m_frac_l_fu_642_p2 << zext_ln553_fu_2179_p1;
assign shl_ln_fu_823_p3 = {{trunc_ln39_reg_3044}, {25'd0}};
assign sub_ln422_fu_1760_p2 = (12'd1075 - zext_ln486_1_fu_1460_p1);
assign sub_ln44_1_fu_941_p2 = (add_ln44_1_fu_915_p2 - zext_ln44_7_fu_937_p1);
assign sub_ln44_2_fu_1022_p2 = (add_ln44_2_fu_995_p2 - zext_ln44_12_fu_1018_p1);
assign sub_ln44_3_fu_1110_p2 = (add_ln44_3_fu_1084_p2 - zext_ln44_17_fu_1106_p1);
assign sub_ln44_4_fu_1198_p2 = (add_ln44_4_fu_1172_p2 - zext_ln44_22_fu_1194_p1);
assign sub_ln44_5_fu_1286_p2 = (add_ln44_5_fu_1260_p2 - zext_ln44_27_fu_1282_p1);
assign sub_ln44_6_fu_1398_p2 = (add_ln44_6_fu_1372_p2 - zext_ln44_32_fu_1394_p1);
assign sub_ln44_fu_853_p2 = (add_ln44_fu_834_p2 - zext_ln44_2_fu_849_p1);
assign sub_ln522_fu_2040_p2 = (shl_ln1_fu_2029_p3 - zext_ln522_1_fu_2036_p1);
assign sub_ln545_fu_2132_p2 = (11'd1023 - es_exp_reg_3205);
assign sub_ln574_fu_2394_p2 = (m_fix_reg_3291_pp0_iter13_reg - m_fix_a_fu_2384_p4);
assign t_1_fu_2650_p3 = {{r_sign_reg_3249_pp0_iter16_reg}, {63'd9218868437227405312}};
assign t_2_fu_2661_p3 = {{r_sign_reg_3249_pp0_iter16_reg}, {63'd0}};
assign t_3_fu_2793_p4 = {{{r_sign_reg_3249_pp0_iter16_reg}, {out_exp_fu_2787_p2}}, {out_sig_fu_2775_p3}};
assign t_fu_2629_p3 = {{r_sign_reg_3249_pp0_iter16_reg}, {63'd4607182418800017408}};
assign tmp_12_fu_2765_p4 = {{add_ln616_1_fu_2697_p2[104:53]}};
assign tmp_1_fu_1576_p3 = m_exp_fu_1464_p2[32'd11];
assign tmp_22_fu_2160_p3 = sub_ln545_fu_2132_p2[32'd10];
assign tmp_24_fu_2342_p3 = grp_fu_2967_p3[32'd30];
assign tmp_25_fu_2503_p4 = {{mul_ln258_fu_618_p2[78:59]}};
assign tmp_26_fu_2537_p4 = {{pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_q0[41:2]}};
assign tmp_27_fu_2580_p4 = {{mul_ln277_fu_622_p2[92:57]}};
assign tmp_28_fu_2703_p3 = add_ln616_1_fu_2697_p2[32'd106];
assign tmp_29_fu_2727_p4 = {{r_exp_2_fu_2716_p3[12:10]}};
assign tmp_2_fu_1728_p3 = b_exp_fu_1454_p2[32'd11];
assign tmp_3_fu_2755_p4 = {{add_ln616_1_fu_2697_p2[105:54]}};
assign tmp_4_fu_804_p3 = {{1'd1}, {zext_ln42_1_fu_800_p1}};
assign tmp_9_cast_fu_2333_p4 = {{grp_fu_2967_p3[30:18]}};
assign tmp_s_fu_781_p3 = {{mul_ln516_reg_3032}, {16'd0}};
assign trunc_ln39_1_fu_957_p1 = sub_ln44_1_fu_941_p2[75:0];
assign trunc_ln39_fu_762_p1 = mul_ln516_fu_630_p2[49:0];
assign trunc_ln545_1_fu_2279_p1 = shl_ln545_fu_2270_p2[129:0];
assign trunc_ln545_fu_2275_p1 = ashr_ln545_fu_2265_p2[129:0];
assign trunc_ln563_fu_2349_p1 = grp_fu_2967_p3[17:0];
assign trunc_ln657_fu_2783_p1 = r_exp_2_fu_2716_p3[10:0];
assign x_abs_greater_1_fu_1736_p2 = (tmp_2_fu_1728_p3 ^ 1'd1);
assign x_is_0_fu_1543_p2 = ((bs_exp_reg_2983_pp0_iter8_reg == 11'd0) ? 1'b1 : 1'b0);
assign x_is_1_fu_1482_p2 = (icmp_ln340_fu_1476_p2 & icmp_ln340_1_reg_3021_pp0_iter8_reg);
assign x_is_NaN_fu_1538_p2 = (icmp_ln18_4_reg_3027_pp0_iter8_reg & icmp_ln18_3_fu_1533_p2);
assign x_is_inf_fu_1548_p2 = (icmp_ln340_1_reg_3021_pp0_iter8_reg & icmp_ln18_3_fu_1533_p2);
assign x_is_n1_fu_1498_p2 = (x_is_1_fu_1482_p2 & tmp_reg_2998_pp0_iter8_reg);
assign x_is_neg_fu_1565_p2 = (xor_ln357_fu_1559_p2 & tmp_reg_2998_pp0_iter8_reg);
assign x_is_p1_fu_1492_p2 = (xor_ln341_fu_1487_p2 & x_is_1_fu_1482_p2);
assign xor_ln341_fu_1487_p2 = (tmp_reg_2998_pp0_iter8_reg ^ 1'd1);
assign xor_ln342_fu_2831_p2 = (x_is_n1_reg_3217_pp0_iter16_reg ^ 1'd1);
assign xor_ln357_fu_1559_p2 = (or_ln357_fu_1553_p2 ^ 1'd1);
assign xor_ln373_fu_1628_p2 = (or_ln373_fu_1622_p2 ^ 1'd1);
assign xor_ln386_1_fu_2810_p2 = (or_ln386_3_fu_2806_p2 ^ 1'd1);
assign xor_ln386_2_fu_2821_p2 = (or_ln378_1_reg_3231_pp0_iter16_reg ^ 1'd1);
assign xor_ln386_fu_1686_p2 = (or_ln386_fu_1680_p2 ^ 1'd1);
assign xor_ln421_fu_1778_p2 = (icmp_ln421_fu_1742_p2 ^ 1'd1);
assign xor_ln431_fu_2640_p2 = (or_ln431_2_reg_3257_pp0_iter16_reg ^ 1'd1);
assign xor_ln438_fu_2645_p2 = (or_ln438_2_reg_3263_pp0_iter16_reg ^ 1'd1);
assign xor_ln628_fu_2886_p2 = (or_ln628_fu_2743_p2 ^ 1'd1);
assign xor_ln629_fu_2875_p2 = (tmp_30_reg_3306_pp0_iter16_reg ^ 1'd1);
assign y_is_0_fu_1470_p2 = ((es_exp_fu_1439_p3 == 11'd0) ? 1'b1 : 1'b0);
assign y_is_NaN_fu_1527_p2 = (icmp_ln18_fu_1503_p2 & icmp_ln18_2_fu_1521_p2);
assign y_is_inf_fu_1515_p2 = (icmp_ln18_fu_1503_p2 & icmp_ln18_1_fu_1509_p2);
assign y_is_int_fu_1642_p4 = ((and_ln373_1_fu_1610_p2 == 52'd0) ? 1'b1 : 1'b0);
assign y_is_int_fu_1642_p7 = 'bx;
assign y_is_int_fu_1642_p8 = {{icmp_ln372_fu_1570_p2}, {xor_ln373_fu_1628_p2}};
assign y_is_ninf_fu_1722_p2 = (y_is_inf_fu_1515_p2 & es_sign_fu_1431_p3);
assign y_is_odd_1_fu_1804_p7 = 'bx;
assign y_is_odd_1_fu_1804_p8 = {{icmp_ln421_fu_1742_p2}, {and_ln422_1_fu_1790_p2}};
assign y_is_odd_fu_1770_p2 = $signed(sub_ln422_fu_1760_p2);
assign y_is_pinf_fu_1716_p2 = (y_is_pos_fu_1710_p2 & y_is_inf_fu_1515_p2);
assign y_is_pos_fu_1710_p2 = (es_sign_fu_1431_p3 ^ 1'd1);
assign z1_fu_774_p3 = {{mul_ln516_reg_3032}, {17'd0}};
assign z3_fu_961_p3 = {{sub_ln44_1_reg_3071}, {1'd0}};
assign zext_ln194_1_fu_1936_p1 = pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_q0;
assign zext_ln194_2_fu_1940_p1 = pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_q0;
assign zext_ln194_3_fu_1944_p1 = pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_q0;
assign zext_ln194_4_fu_1948_p1 = pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_q0;
assign zext_ln194_5_fu_1952_p1 = pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_q0;
assign zext_ln194_6_fu_1956_p1 = pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_q0;
assign zext_ln194_fu_1932_p1 = pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_q0;
assign zext_ln209_1_fu_1994_p1 = add_ln209_4_fu_1988_p2;
assign zext_ln209_2_fu_2004_p1 = add_ln209_5_fu_1998_p2;
assign zext_ln209_fu_1972_p1 = add_ln209_1_fu_1966_p2;
assign zext_ln249_fu_2443_p1 = Z4_ind_fu_2433_p4;
assign zext_ln250_1_fu_2470_p1 = f_Z4_fu_2457_p4;
assign zext_ln250_fu_2467_p1 = Z4_reg_3346;
assign zext_ln254_fu_2448_p1 = Z3_fu_2419_p4;
assign zext_ln255_fu_2489_p1 = exp_Z3_m_1_fu_2480_p4;
assign zext_ln261_1_fu_2513_p1 = tmp_25_fu_2503_p4;
assign zext_ln261_fu_2523_p1 = add_ln261_fu_2517_p2;
assign zext_ln273_fu_2533_p1 = Z2_reg_3334;
assign zext_ln280_1_fu_2599_p1 = add_ln280_fu_2594_p2;
assign zext_ln280_2_fu_2590_p1 = tmp_27_fu_2580_p4;
assign zext_ln280_fu_2576_p1 = and_ln_fu_2565_p5;
assign zext_ln373_fu_1600_p1 = add_ln373_fu_1594_p2;
assign zext_ln40_1_fu_968_p1 = z3_fu_961_p3;
assign zext_ln40_2_fu_1058_p1 = z4_reg_3087;
assign zext_ln40_3_fu_1146_p1 = tmp_10_reg_3104;
assign zext_ln40_4_fu_1234_p1 = tmp_14_reg_3121;
assign zext_ln40_5_fu_1346_p1 = tmp_17_reg_3138;
assign zext_ln40_fu_889_p1 = z2_reg_3054;
assign zext_ln42_1_fu_800_p1 = z1_fu_774_p3;
assign zext_ln42_2_cast_fu_792_p3 = {{1'd1}, {zext_ln42_fu_788_p1}};
assign zext_ln42_2_fu_812_p1 = zext_ln42_2_cast_fu_792_p3;
assign zext_ln42_fu_788_p1 = tmp_s_fu_781_p3;
assign zext_ln44_12_fu_1018_p1 = shl_ln44_5_fu_1010_p3;
assign zext_ln44_13_fu_1076_p1 = shl_ln44_6_fu_1069_p3;
assign zext_ln44_14_fu_1080_p1 = eZ_2_fu_1061_p3;
assign zext_ln44_17_fu_1106_p1 = shl_ln44_7_fu_1098_p3;
assign zext_ln44_18_fu_1164_p1 = shl_ln44_8_fu_1157_p3;
assign zext_ln44_19_fu_1168_p1 = eZ_3_fu_1149_p3;
assign zext_ln44_22_fu_1194_p1 = shl_ln44_9_fu_1186_p3;
assign zext_ln44_23_fu_1252_p1 = shl_ln44_s_fu_1245_p3;
assign zext_ln44_24_fu_1256_p1 = eZ_4_fu_1237_p3;
assign zext_ln44_27_fu_1282_p1 = shl_ln44_3_fu_1274_p3;
assign zext_ln44_28_fu_1364_p1 = shl_ln44_10_fu_1357_p3;
assign zext_ln44_29_fu_1368_p1 = eZ_5_fu_1349_p3;
assign zext_ln44_2_fu_849_p1 = mul_ln44_fu_843_p2;
assign zext_ln44_32_fu_1394_p1 = shl_ln44_11_fu_1386_p3;
assign zext_ln44_3_fu_907_p1 = shl_ln44_1_fu_900_p3;
assign zext_ln44_4_fu_911_p1 = eZ_fu_892_p3;
assign zext_ln44_7_fu_937_p1 = shl_ln44_2_fu_929_p3;
assign zext_ln44_8_fu_987_p1 = shl_ln44_4_fu_980_p3;
assign zext_ln44_9_fu_991_p1 = eZ_1_fu_972_p3;
assign zext_ln44_fu_830_p1 = shl_ln_fu_823_p3;
assign zext_ln46_1_fu_1326_p1 = a_1_reg_3060_pp0_iter7_reg;
assign zext_ln46_2_fu_1330_p1 = a_2_reg_3076_pp0_iter7_reg;
assign zext_ln46_3_fu_1334_p1 = tmp_9_reg_3098_pp0_iter7_reg;
assign zext_ln46_4_fu_1338_p1 = tmp_13_reg_3115_pp0_iter7_reg;
assign zext_ln46_5_fu_1342_p1 = tmp_16_reg_3132_pp0_iter7_reg;
assign zext_ln46_6_fu_1404_p1 = tmp_19_reg_3149;
assign zext_ln46_fu_1322_p1 = a_reg_3038_pp0_iter7_reg;
assign zext_ln485_fu_735_p1 = b_frac_1_fu_728_p3;
assign zext_ln486_1_fu_1460_p1 = es_exp_fu_1439_p3;
assign zext_ln486_fu_1451_p1 = bs_exp_reg_2983_pp0_iter8_reg;
assign zext_ln502_fu_704_p1 = index0_fu_694_p4;
assign zext_ln522_1_fu_2036_p1 = lshr_ln_fu_2019_p4;
assign zext_ln522_fu_2014_p1 = tmp_21_reg_3200;
assign zext_ln525_fu_2078_p1 = lshr_ln522_1_fu_2046_p4;
assign zext_ln532_fu_2106_p1 = e_frac_fu_2098_p3;
assign zext_ln545_fu_2261_p1 = $unsigned(sext_ln545_1_fu_2258_p1);
assign zext_ln546_fu_2290_p1 = $unsigned(sext_ln545_1_fu_2258_p1);
assign zext_ln549_fu_2214_p1 = empty_fu_2210_p1;
assign zext_ln552_fu_2150_p1 = $unsigned(sext_ln552_fu_2147_p1);
assign zext_ln553_fu_2179_p1 = $unsigned(sext_ln553_fu_2175_p1);
assign zext_ln611_fu_2453_p1 = m_diff_hi_reg_3329;
assign zext_ln616_2_fu_2693_p1 = mul_ln616_fu_626_p2;
always @ (posedge ap_clk) begin
 zext_ln502_reg_3011[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
 zext_ln502_reg_3011_pp0_iter1_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
 zext_ln502_reg_3011_pp0_iter2_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
 zext_ln502_reg_3011_pp0_iter3_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
 zext_ln502_reg_3011_pp0_iter4_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
 zext_ln502_reg_3011_pp0_iter5_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
 zext_ln502_reg_3011_pp0_iter6_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
 zext_ln502_reg_3011_pp0_iter7_reg[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule
module entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_log0_lut_table_array_ROM_cud (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 109;
parameter AddressWidth = 6;
parameter AddressRange = 64;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h1FEF83DFA325DC69F9DD4A33C550;
 rom0[1]=8'h1FEF83DFA325DC69F9DD4A33C550;
 rom0[2]=8'h1FEF83DFA325DC69F9DD4A33C550;
 rom0[3]=8'h00F399B8419A20B0FB51119112D9;
 rom0[4]=8'h00F399B8419A20B0FB51119112D9;
 rom0[5]=8'h020036F656ED1D3B0E5CFDB265B7;
 rom0[6]=8'h020036F656ED1D3B0E5CFDB265B7;
 rom0[7]=8'h0315EFAB4E4F0D7FBD891EB15EF5;
 rom0[8]=8'h0315EFAB4E4F0D7FBD891EB15EF5;
 rom0[9]=8'h0315EFAB4E4F0D7FBD891EB15EF5;
 rom0[10]=8'h043567802D1EFB6186C01AB2E208;
 rom0[11]=8'h043567802D1EFB6186C01AB2E208;
 rom0[12]=8'h055F53FA783548E8DA820572E5D2;
 rom0[13]=8'h055F53FA783548E8DA820572E5D2;
 rom0[14]=8'h055F53FA783548E8DA820572E5D2;
 rom0[15]=8'h06947F2EC5DC5545C4D7E81D3754;
 rom0[16]=8'h06947F2EC5DC5545C4D7E81D3754;
 rom0[17]=8'h06947F2EC5DC5545C4D7E81D3754;
 rom0[18]=8'h07D5CAFAD012BAC9602DB12D45F2;
 rom0[19]=8'h07D5CAFAD012BAC9602DB12D45F2;
 rom0[20]=8'h07D5CAFAD012BAC9602DB12D45F2;
 rom0[21]=8'h07D5CAFAD012BAC9602DB12D45F2;
 rom0[22]=8'h092434E83D93A5A617D3056F25A6;
 rom0[23]=8'h092434E83D93A5A617D3056F25A6;
 rom0[24]=8'h092434E83D93A5A617D3056F25A6;
 rom0[25]=8'h092434E83D93A5A617D3056F25A6;
 rom0[26]=8'h0A80DAE33F77C85101F396A95BD7;
 rom0[27]=8'h0A80DAE33F77C85101F396A95BD7;
 rom0[28]=8'h0A80DAE33F77C85101F396A95BD7;
 rom0[29]=8'h0A80DAE33F77C85101F396A95BD7;
 rom0[30]=8'h0BED00FD8F306A60ED5C24CD2795;
 rom0[31]=8'h0BED00FD8F306A60ED5C24CD2795;
 rom0[32]=8'h167B12823297441BE378BCF14143;
 rom0[33]=8'h167B12823297441BE378BCF14143;
 rom0[34]=8'h173BD589CD52D5682B795F7B41DF;
 rom0[35]=8'h173BD589CD52D5682B795F7B41DF;
 rom0[36]=8'h18013DC44B9651C6A48BAF25E01C;
 rom0[37]=8'h18013DC44B9651C6A48BAF25E01C;
 rom0[38]=8'h18013DC44B9651C6A48BAF25E01C;
 rom0[39]=8'h18CB85EDBC7F53FEF06742770562;
 rom0[40]=8'h18CB85EDBC7F53FEF06742770562;
 rom0[41]=8'h18CB85EDBC7F53FEF06742770562;
 rom0[42]=8'h199AED3866102F4C69912CE5972B;
 rom0[43]=8'h199AED3866102F4C69912CE5972B;
 rom0[44]=8'h1A6FB7C37940E777DCE4C7B1FD07;
 rom0[45]=8'h1A6FB7C37940E777DCE4C7B1FD07;
 rom0[46]=8'h1A6FB7C37940E777DCE4C7B1FD07;
 rom0[47]=8'h1B4A2F219B289396F8662DF34792;
 rom0[48]=8'h1B4A2F219B289396F8662DF34792;
 rom0[49]=8'h1B4A2F219B289396F8662DF34792;
 rom0[50]=8'h1C2AA2F1DDC77FACBC8C4A37857D;
 rom0[51]=8'h1C2AA2F1DDC77FACBC8C4A37857D;
 rom0[52]=8'h1C2AA2F1DDC77FACBC8C4A37857D;
 rom0[53]=8'h1C2AA2F1DDC77FACBC8C4A37857D;
 rom0[54]=8'h1D11698E467872F67D4A12F6221A;
 rom0[55]=8'h1D11698E467872F67D4A12F6221A;
 rom0[56]=8'h1D11698E467872F67D4A12F6221A;
 rom0[57]=8'h1DFEE0D3A20FB203E210B31CD69D;
 rom0[58]=8'h1DFEE0D3A20FB203E210B31CD69D;
 rom0[59]=8'h1DFEE0D3A20FB203E210B31CD69D;
 rom0[60]=8'h1DFEE0D3A20FB203E210B31CD69D;
 rom0[61]=8'h1EF36F072F64446792156995876C;
 rom0[62]=8'h1EF36F072F64446792156995876C;
 rom0[63]=8'h1EF36F072F64446792156995876C;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_log_inverse_lut_table_powbkb (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 6;
parameter AddressWidth = 6;
parameter AddressRange = 64;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h20;
 rom0[1]=8'h20;
 rom0[2]=8'h20;
 rom0[3]=8'h1F;
 rom0[4]=8'h1F;
 rom0[5]=8'h1E;
 rom0[6]=8'h1E;
 rom0[7]=8'h1D;
 rom0[8]=8'h1D;
 rom0[9]=8'h1D;
 rom0[10]=8'h1C;
 rom0[11]=8'h1C;
 rom0[12]=8'h1B;
 rom0[13]=8'h1B;
 rom0[14]=8'h1B;
 rom0[15]=8'h1A;
 rom0[16]=8'h1A;
 rom0[17]=8'h1A;
 rom0[18]=8'h19;
 rom0[19]=8'h19;
 rom0[20]=8'h19;
 rom0[21]=8'h19;
 rom0[22]=8'h18;
 rom0[23]=8'h18;
 rom0[24]=8'h18;
 rom0[25]=8'h18;
 rom0[26]=8'h17;
 rom0[27]=8'h17;
 rom0[28]=8'h17;
 rom0[29]=8'h17;
 rom0[30]=8'h16;
 rom0[31]=8'h16;
 rom0[32]=8'h2B;
 rom0[33]=8'h2B;
 rom0[34]=8'h2A;
 rom0[35]=8'h2A;
 rom0[36]=8'h29;
 rom0[37]=8'h29;
 rom0[38]=8'h29;
 rom0[39]=8'h28;
 rom0[40]=8'h28;
 rom0[41]=8'h28;
 rom0[42]=8'h27;
 rom0[43]=8'h27;
 rom0[44]=8'h26;
 rom0[45]=8'h26;
 rom0[46]=8'h26;
 rom0[47]=8'h25;
 rom0[48]=8'h25;
 rom0[49]=8'h25;
 rom0[50]=8'h24;
 rom0[51]=8'h24;
 rom0[52]=8'h24;
 rom0[53]=8'h24;
 rom0[54]=8'h23;
 rom0[55]=8'h23;
 rom0[56]=8'h23;
 rom0[57]=8'h22;
 rom0[58]=8'h22;
 rom0[59]=8'h22;
 rom0[60]=8'h22;
 rom0[61]=8'h21;
 rom0[62]=8'h21;
 rom0[63]=8'h21;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12fYi (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 97;
parameter AddressWidth = 6;
parameter AddressRange = 64;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h0000000000000000000000000;
 rom0[1]=8'h0080000F80028B2B22DA42540;
 rom0[2]=8'h0100003F0014D65D16176908C;
 rom0[3]=8'h0180008E8046E1A7A9C62C894;
 rom0[4]=8'h020000FE00A8AD28AE0D15606;
 rom0[5]=8'h0280018D814A3909F3367C5E9;
 rom0[6]=8'h0300023D023B858149BC8ACD8;
 rom0[7]=8'h0380030C838C92D082553AB41;
 rom0[8]=8'h040003FC054D61456DFE5727E;
 rom0[9]=8'h0480050B878DF139DE097CAF5;
 rom0[10]=8'h0500063B0A5E4313A42819B12;
 rom0[11]=8'h0580078A8DCE574492776EF41;
 rom0[12]=8'h060008FA11EE2E4A7B8C902D3;
 rom0[13]=8'h06800A8996CDC8AF3280649CF;
 rom0[14]=8'h07000C391C7D27088AFBA7BBB;
 rom0[15]=8'h07800E08A30C49F85942E9F4B;
 rom0[16]=8'h08000FF82A8B322C72429170C;
 rom0[17]=8'h08801207B309E05EAB9ADAEF5;
 rom0[18]=8'h090014373C985554DBABDAAEB;
 rom0[19]=8'h09801686C74691E0D9A17D63B;
 rom0[20]=8'h0A0018F6532496E07D7F893F9;
 rom0[21]=8'h0A801B85E042653DA02D9F05B;
 rom0[22]=8'h0B001E356EAFFDEE1B833B2F7;
 rom0[23]=8'h0B802104FE7D61F3CA53B7202;
 rom0[24]=8'h0C0023F48FBA925C887A4A66C;
 rom0[25]=8'h0C8027042277904232E60C0FC;
 rom0[26]=8'h0D002A33B6C45CCAA7A5F4053;
 rom0[27]=8'h0D802D834CB0F927C5F4DC7E3;
 rom0[28]=8'h0E0030F2E44D66976E45837D5;
 rom0[29]=8'h0E8034827DA9A663824E8C5DE;
 rom0[30]=8'h0F00383218D5B9E1E51681706;
 rom0[31]=8'h0F803C01B5E1A2747AFFD5A5F;
 rom0[32]=8'h10003FF154DD618929D4E64AB;
 rom0[33]=8'h10804400F5D8F899D8D3FCCF4;
 rom0[34]=8'h1100483098E4692C70BB50A11;
 rom0[35]=8'h11804C803E0FB4D2DBD50911E;
 rom0[36]=8'h120050EFE56ADD2B06033F4E5;
 rom0[37]=8'h1280557F8F05E3DEDCCC00632;
 rom0[38]=8'h13005A2F3AF0CAA44F654F51D;
 rom0[39]=8'h13805EFEE93B933D4EC127345;
 rom0[40]=8'h140063EE99F63F77CD997D6F0;
 rom0[41]=8'h148068FE4D30D12DC07C43F2A;
 rom0[42]=8'h15006E2E02FB4A451DD76B8CD;
 rom0[43]=8'h1580737DBB65ACAFDE04E6477;
 rom0[44]=8'h160078ED767FFA6BFB56A9D73;
 rom0[45]=8'h16807E7D345A35837222B2197;
 rom0[46]=8'h1700842CF504600C40CF03A07;
 rom0[47]=8'h178089FCB88E7C2867DDAE4F2;
 rom0[48]=8'h18008FEC7F088C05E9F8D003E;
 rom0[49]=8'h188095FC488291DECBFE9751E;
 rom0[50]=8'h19009C2C150C8FF9150D4649D;
 rom0[51]=8'h1980A27BE4B688A6CE8F3551C;
 rom0[52]=8'h1A00A8EBB7907E460446D60BB;
 rom0[53]=8'h1A80AF7B8DAA7340C45AB64B2;
 rom0[54]=8'h1B00B62B67146A0D1F61831A2;
 rom0[55]=8'h1B80BCFB43DE652D286E0BCCB;
 rom0[56]=8'h1C00C3EB2418672EF51B4523C;
 rom0[57]=8'h1C80CAFB07D272AC9D984C7EC;
 rom0[58]=8'h1D00D22AEF1C8A4C3CB46B1CC;
 rom0[59]=8'h1D80D97ADA06B0BFEFEB196BF;
 rom0[60]=8'h1E00E0EAC8A0E8C5D77002689;
 rom0[61]=8'h1E80E87ABAFB3528163B070AD;
 rom0[62]=8'h1F00F02AB12598BCD21441C3A;
 rom0[63]=8'h1F80F7FAAB30166633A00A08C;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17g8j (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 92;
parameter AddressWidth = 6;
parameter AddressRange = 64;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h00000000000000000000000;
 rom0[1]=8'h04000003FF000553559D515;
 rom0[2]=8'h0800000FFE002AA2ABAA8AA;
 rom0[3]=8'h0C000023FD008FEE0347941;
 rom0[4]=8'h1000003FFC0155355E54559;
 rom0[5]=8'h14000063FB029A78BF70B75;
 rom0[6]=8'h1800008FFA047FB829FCA19;
 rom0[7]=8'h1C0000C3F90724F3A217FCC;
 rom0[8]=8'h200000FFF80AAA2B2CA2B14;
 rom0[9]=8'h24000143F70F2F5ECF3CA7C;
 rom0[10]=8'h2800018FF614D48E9045C92;
 rom0[11]=8'h2C0001E3F51BB9BA76DDFE7;
 rom0[12]=8'h3000023FF423FEE28AE5310;
 rom0[13]=8'h340002A3F32DC406D4FB4A5;
 rom0[14]=8'h3800030FF23929275E80344;
 rom0[15]=8'h3C000383F1464E443193D8F;
 rom0[16]=8'h400003FFF055535D591622D;
 rom0[17]=8'h44000483EF665872E0A6FCC;
 rom0[18]=8'h4800050FEE797D84D4A651F;
 rom0[19]=8'h4C0005A3ED8EE29342340DF;
 rom0[20]=8'h5000063FECA6A79E37301CC;
 rom0[21]=8'h540006E3EBC0ECA5C23A6AE;
 rom0[22]=8'h5800078FEADDD1A9F2B2E53;
 rom0[23]=8'h5C000843E9FD76AAD8B9792;
 rom0[24]=8'h600008FFE91FFBA8852E14B;
 rom0[25]=8'h640009C3E84580A309B0A65;
 rom0[26]=8'h68000A8FE76E259A78A11D0;
 rom0[27]=8'h6C000B63E69A0A8EE51F686;
 rom0[28]=8'h70000C3FE5C94F80630B78B;
 rom0[29]=8'h74000D23E4FC146F07053EE;
 rom0[30]=8'h78000E0FE432795AE66CAC5;
 rom0[31]=8'h7C000F03E36C9E441761B35;
 rom0[32]=8'h80000FFFE2AAA32AB0C446C;
 rom0[33]=8'h84001103E1ECA80ECA345A4;
 rom0[34]=8'h8800120FE132CCF07C11E23;
 rom0[35]=8'h8C001323E07D31CFDF7CD3C;
 rom0[36]=8'h9000143FDFCBF6AD0E5524D;
 rom0[37]=8'h94001563DF1F3B88233ACC3;
 rom0[38]=8'h9800168FDE772061398DC19;
 rom0[39]=8'h9C0017C3DDD3C5386D6DFD5;
 rom0[40]=8'hA00018FFDD354A0DDBBB78E;
 rom0[41]=8'hA4001A43DC9BCEE1A2162E8;
 rom0[42]=8'hA8001B8FDC0773B3DEDE196;
 rom0[43]=8'hAC001CE3DB785884B13335D;
 rom0[44]=8'hB0001E3FDAEE9D5438F580E;
 rom0[45]=8'hB4001FA3DA6A622296C4F8C;
 rom0[46]=8'hB800210FD9EBC6EFEC019CB;
 rom0[47]=8'hBC002283D972EBBC5ACB6CF;
 rom0[48]=8'hC00023FFD8FFF08806026AD;
 rom0[49]=8'hC4002583D892F553114698D;
 rom0[50]=8'hC800270FD82C1A1DA0F7FA7;
 rom0[51]=8'hCC0028A3D7CB7EE7DA36947;
 rom0[52]=8'hD0002A3FD77143B1E2E26CC;
 rom0[53]=8'hD4002BE3D71D887BE19B8A5;
 rom0[54]=8'hD8002D8FD6D06D45FDC1F5A;
 rom0[55]=8'hDC002F43D68A12105F75B81;
 rom0[56]=8'hE00030FFD64A96DB2F96DC9;
 rom0[57]=8'hE40032C3D6121BA697C56F2;
 rom0[58]=8'hE800348FD5E0C072C2617D3;
 rom0[59]=8'hEC003663D5B6A53FDA8B158;
 rom0[60]=8'hF000383FD593EA0E0C22484;
 rom0[61]=8'hF4003A23D578AEDD83C726D;
 rom0[62]=8'hF8003C0FD56513AE6ED9C42;
 rom0[63]=8'hFC003E03D5593880FB7A349;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22hbi (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 87;
parameter AddressWidth = 6;
parameter AddressRange = 64;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h0000000000000000000000;
 rom0[1]=8'h020000000FFFE000AAA8AA;
 rom0[2]=8'h040000003FFFC005554D55;
 rom0[3]=8'h060000008FFFA011FFEE02;
 rom0[4]=8'h08000000FFFF802AAA8AB2;
 rom0[5]=8'h0A0000018FFF6053552368;
 rom0[6]=8'h0C0000023FFF408FFFB828;
 rom0[7]=8'h0E0000030FFF20E4AA48F5;
 rom0[8]=8'h10000003FFFF015554D5D5;
 rom0[9]=8'h120000050FFEE1E5FF5ECD;
 rom0[10]=8'h140000063FFEC29AA9E3E3;
 rom0[11]=8'h160000078FFEA37754651E;
 rom0[12]=8'h18000008FFFE847FFEE288;
 rom0[13]=8'h1A00000A8FFE65B8A95C27;
 rom0[14]=8'h1C00000C3FFE472553D205;
 rom0[15]=8'h1E00000E0FFE28C9FE442E;
 rom0[16]=8'h2000000FFFFE0AAAA8B2AA;
 rom0[17]=8'h220000120FFDECCB531D87;
 rom0[18]=8'h240000143FFDCF2FFD84D0;
 rom0[19]=8'h260000168FFDB1DCA7E893;
 rom0[20]=8'h28000018FFFD94D55248DD;
 rom0[21]=8'h2A00001B8FFD781DFCA5BD;
 rom0[22]=8'h2C00001E3FFD5BBAA6FF43;
 rom0[23]=8'h2E0000210FFD3FAF51557E;
 rom0[24]=8'h30000023FFFD23FFFBA880;
 rom0[25]=8'h320000270FFD08B0A5F859;
 rom0[26]=8'h3400002A3FFCEDC550451E;
 rom0[27]=8'h3600002D8FFCD341FA8EDF;
 rom0[28]=8'h38000030FFFCB92AA4D5B2;
 rom0[29]=8'h3A0000348FFC9F834F19AC;
 rom0[30]=8'h3C0000383FFC864FF95AE0;
 rom0[31]=8'h3E00003C0FFC6D94A39966;
 rom0[32]=8'h4000003FFFFC55554DD555;
 rom0[33]=8'h420000440FFC3D95F80EC4;
 rom0[34]=8'h440000483FFC265AA245CB;
 rom0[35]=8'h4600004C8FFC0FA74C7A84;
 rom0[36]=8'h48000050FFFBF97FF6AD08;
 rom0[37]=8'h4A0000558FFBE3E8A0DD72;
 rom0[38]=8'h4C00005A3FFBCEE54B0BDE;
 rom0[39]=8'h4E00005F0FFBBA79F53867;
 rom0[40]=8'h50000063FFFBA6AA9F632A;
 rom0[41]=8'h520000690FFB937B498C46;
 rom0[42]=8'h5400006E3FFB80EFF3B3D8;
 rom0[43]=8'h560000738FFB6F0C9DDA00;
 rom0[44]=8'h58000078FFFB5DD547FEDD;
 rom0[45]=8'h5A00007E8FFB4D4DF22290;
 rom0[46]=8'h5C0000843FFB3D7A9C453B;
 rom0[47]=8'h5E00008A0FFB2E5F4666FF;
 rom0[48]=8'h6000008FFFFB1FFFF08800;
 rom0[49]=8'h620000960FFB12609AA860;
 rom0[50]=8'h6400009C3FFB058544C846;
 rom0[51]=8'h660000A28FFAF971EEE7D4;
 rom0[52]=8'h680000A8FFFAEE2A990732;
 rom0[53]=8'h6A0000AF8FFAE3B3432687;
 rom0[54]=8'h6C0000B63FFADA0FED45F8;
 rom0[55]=8'h6E0000BD0FFAD1449765AF;
 rom0[56]=8'h700000C3FFFAC9554185D5;
 rom0[57]=8'h720000CB0FFAC245EBA693;
 rom0[58]=8'h740000D23FFABC1A95C813;
 rom0[59]=8'h760000D98FFAB6D73FEA81;
 rom0[60]=8'h780000E0FFFAB27FEA0E08;
 rom0[61]=8'h7A0000E88FFAAF189432D5;
 rom0[62]=8'h7C0000F03FFAACA53E5915;
 rom0[63]=8'h7E0000F80FFAAB29E880F8;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27ibs (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 82;
parameter AddressWidth = 6;
parameter AddressRange = 64;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h000000000000000000000;
 rom0[1]=8'h01000000003FFFFC00155;
 rom0[2]=8'h0200000000FFFFF800AAA;
 rom0[3]=8'h03000000023FFFF4023FF;
 rom0[4]=8'h0400000003FFFFF005555;
 rom0[5]=8'h05000000063FFFEC0A6AA;
 rom0[6]=8'h0600000008FFFFE811FFF;
 rom0[7]=8'h070000000C3FFFE41C955;
 rom0[8]=8'h080000000FFFFFE02AAAA;
 rom0[9]=8'h09000000143FFFDC3CBFF;
 rom0[10]=8'h0A00000018FFFFD853555;
 rom0[11]=8'h0B0000001E3FFFD46EEAA;
 rom0[12]=8'h0C00000023FFFFD08FFFF;
 rom0[13]=8'h0D0000002A3FFFCCB7155;
 rom0[14]=8'h0E00000030FFFFC8E4AAA;
 rom0[15]=8'h0F000000383FFFC5193FF;
 rom0[16]=8'h100000003FFFFFC155555;
 rom0[17]=8'h11000000483FFFBD996AA;
 rom0[18]=8'h1200000050FFFFB9E5FFF;
 rom0[19]=8'h130000005A3FFFB63B955;
 rom0[20]=8'h1400000063FFFFB29AAAA;
 rom0[21]=8'h150000006E3FFFAF03BFF;
 rom0[22]=8'h1600000078FFFFAB77555;
 rom0[23]=8'h17000000843FFFA7F5EAA;
 rom0[24]=8'h180000008FFFFFA47FFFF;
 rom0[25]=8'h190000009C3FFFA116155;
 rom0[26]=8'h1A000000A8FFFF9DB8AAA;
 rom0[27]=8'h1B000000B63FFF9A683FF;
 rom0[28]=8'h1C000000C3FFFF9725554;
 rom0[29]=8'h1D000000D23FFF93F06AA;
 rom0[30]=8'h1E000000E0FFFF90C9FFF;
 rom0[31]=8'h1F000000F03FFF8DB2954;
 rom0[32]=8'h20000000FFFFFF8AAAAAA;
 rom0[33]=8'h21000001103FFF87B2BFF;
 rom0[34]=8'h2200000120FFFF84CB554;
 rom0[35]=8'h23000001323FFF81F4EAA;
 rom0[36]=8'h2400000143FFFF7F2FFFF;
 rom0[37]=8'h25000001563FFF7C7D154;
 rom0[38]=8'h2600000168FFFF79DCAAA;
 rom0[39]=8'h270000017C3FFF774F3FF;
 rom0[40]=8'h280000018FFFFF74D5554;
 rom0[41]=8'h29000001A43FFF726F6A9;
 rom0[42]=8'h2A000001B8FFFF701DFFF;
 rom0[43]=8'h2B000001CE3FFF6DE1954;
 rom0[44]=8'h2C000001E3FFFF6BBAAA9;
 rom0[45]=8'h2D000001FA3FFF69A9BFF;
 rom0[46]=8'h2E00000210FFFF67AF554;
 rom0[47]=8'h2F000002283FFF65CBEA9;
 rom0[48]=8'h300000023FFFFF63FFFFF;
 rom0[49]=8'h31000002583FFF624C154;
 rom0[50]=8'h3200000270FFFF60B0AA9;
 rom0[51]=8'h330000028A3FFF5F2E3FE;
 rom0[52]=8'h34000002A3FFFF5DC5554;
 rom0[53]=8'h35000002BE3FFF5C766A9;
 rom0[54]=8'h36000002D8FFFF5B41FFE;
 rom0[55]=8'h37000002F43FFF5A28954;
 rom0[56]=8'h380000030FFFFF592AAA9;
 rom0[57]=8'h390000032C3FFF5848BFE;
 rom0[58]=8'h3A00000348FFFF5783554;
 rom0[59]=8'h3B000003663FFF56DAEA9;
 rom0[60]=8'h3C00000383FFFF564FFFE;
 rom0[61]=8'h3D000003A23FFF55E3153;
 rom0[62]=8'h3E000003C0FFFF5594AA9;
 rom0[63]=8'h3F000003E03FFF55653FE;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32jbC (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 77;
parameter AddressWidth = 6;
parameter AddressRange = 64;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h00000000000000000000;
 rom0[1]=8'h008000000000FFFFFF80;
 rom0[2]=8'h010000000003FFFFFF00;
 rom0[3]=8'h018000000008FFFFFE80;
 rom0[4]=8'h02000000000FFFFFFE00;
 rom0[5]=8'h028000000018FFFFFD81;
 rom0[6]=8'h030000000023FFFFFD02;
 rom0[7]=8'h038000000030FFFFFC83;
 rom0[8]=8'h04000000003FFFFFFC05;
 rom0[9]=8'h048000000050FFFFFB87;
 rom0[10]=8'h050000000063FFFFFB0A;
 rom0[11]=8'h058000000078FFFFFA8D;
 rom0[12]=8'h06000000008FFFFFFA11;
 rom0[13]=8'h0680000000A8FFFFF996;
 rom0[14]=8'h0700000000C3FFFFF91C;
 rom0[15]=8'h0780000000E0FFFFF8A3;
 rom0[16]=8'h0800000000FFFFFFF82A;
 rom0[17]=8'h088000000120FFFFF7B3;
 rom0[18]=8'h090000000143FFFFF73C;
 rom0[19]=8'h098000000168FFFFF6C7;
 rom0[20]=8'h0A000000018FFFFFF653;
 rom0[21]=8'h0A80000001B8FFFFF5E0;
 rom0[22]=8'h0B00000001E3FFFFF56E;
 rom0[23]=8'h0B8000000210FFFFF4FE;
 rom0[24]=8'h0C000000023FFFFFF48F;
 rom0[25]=8'h0C8000000270FFFFF422;
 rom0[26]=8'h0D00000002A3FFFFF3B7;
 rom0[27]=8'h0D80000002D8FFFFF34D;
 rom0[28]=8'h0E000000030FFFFFF2E4;
 rom0[29]=8'h0E8000000348FFFFF27E;
 rom0[30]=8'h0F0000000383FFFFF219;
 rom0[31]=8'h0F80000003C0FFFFF1B6;
 rom0[32]=8'h1000000003FFFFFFF155;
 rom0[33]=8'h108000000440FFFFF0F6;
 rom0[34]=8'h110000000483FFFFF099;
 rom0[35]=8'h1180000004C8FFFFF03E;
 rom0[36]=8'h12000000050FFFFFEFE5;
 rom0[37]=8'h128000000558FFFFEF8F;
 rom0[38]=8'h1300000005A3FFFFEF3B;
 rom0[39]=8'h1380000005F0FFFFEEE9;
 rom0[40]=8'h14000000063FFFFFEE9A;
 rom0[41]=8'h148000000690FFFFEE4D;
 rom0[42]=8'h1500000006E3FFFFEE03;
 rom0[43]=8'h158000000738FFFFEDBC;
 rom0[44]=8'h16000000078FFFFFED77;
 rom0[45]=8'h1680000007E8FFFFED35;
 rom0[46]=8'h170000000843FFFFECF5;
 rom0[47]=8'h1780000008A0FFFFECB9;
 rom0[48]=8'h1800000008FFFFFFEC7F;
 rom0[49]=8'h188000000960FFFFEC49;
 rom0[50]=8'h1900000009C3FFFFEC16;
 rom0[51]=8'h198000000A28FFFFEBE5;
 rom0[52]=8'h1A0000000A8FFFFFEBB8;
 rom0[53]=8'h1A8000000AF8FFFFEB8E;
 rom0[54]=8'h1B0000000B63FFFFEB68;
 rom0[55]=8'h1B8000000BD0FFFFEB45;
 rom0[56]=8'h1C0000000C3FFFFFEB25;
 rom0[57]=8'h1C8000000CB0FFFFEB09;
 rom0[58]=8'h1D0000000D23FFFFEAF0;
 rom0[59]=8'h1D8000000D98FFFFEADB;
 rom0[60]=8'h1E0000000E0FFFFFEAC9;
 rom0[61]=8'h1E8000000E88FFFFEABC;
 rom0[62]=8'h1F0000000F03FFFFEAB2;
 rom0[63]=8'h1F8000000F80FFFFEAAC;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_dEe (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 105;
parameter AddressWidth = 4;
parameter AddressRange = 16;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h000000000000000000000000000;
 rom0[1]=8'h0200002AAAB1111235A393193D3;
 rom0[2]=8'h04020257D865F1B5868813BDF41;
 rom0[3]=8'h06060A93A765431770247DDEBA5;
 rom0[4]=8'h080C1CF67F3048CBCB5D002F3E9;
 rom0[5]=8'h0A143DA5426F9B16ED860628BA0;
 rom0[6]=8'h0C1E70D181DE7230A792CD7AE8E;
 rom0[7]=8'h0E2ABAB9B03AA6C3260F70611D7;
 rom0[8]=8'h0F31A98B57ADFFFA04DB271D016;
 rom0[9]=8'h11411D9F349CCBA3DC78E9FF54F;
 rom0[10]=8'h1352B344DA70C5CEA55E2AA5181;
 rom0[11]=8'h15666EE97B3C70C04F7E77022E7;
 rom0[12]=8'h177C55082213DF74CA360842148;
 rom0[13]=8'h19946A29ED0BCA68DD0F60EBC0E;
 rom0[14]=8'h1BAEB2E64869834DFA782858875;
 rom0[15]=8'h1DCB33E32B0B52BAA1506026BD2;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_eOg (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 102;
parameter AddressWidth = 6;
parameter AddressRange = 64;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h00000000000000000000000000;
 rom0[1]=8'h01000000055555558888888AD1;
 rom0[2]=8'h020008004AAD2AC31203C580B4;
 rom0[3]=8'h0300180150138138ADF2F6784E;
 rom0[4]=8'h0400300395A05BE6BB60800B43;
 rom0[5]=8'h050050079B77C1BE5EF8C82568;
 rom0[6]=8'h0600780DE1C9BEF2373F3AA427;
 rom0[7]=8'h0700A816E8D266774CEABDAB20;
 rom0[8]=8'h0800E02330D9D3863F74DF8B0D;
 rom0[9]=8'h090120333A342B1CADE70A90DF;
 rom0[10]=8'h0A01684785419D7EDBF10D8C44;
 rom0[11]=8'h0B01B860926E67B993544A56FF;
 rom0[12]=8'h0C02107EE232D52441AEDE20E0;
 rom0[13]=8'h0D0270A2F51340E352B219BFA2;
 rom0[14]=8'h0E02D8CD4BA0176AC6CFA2BDB2;
 rom0[15]=8'h0F0348FE6675D8010668985F6D;
 rom0[16]=8'h1003C136C63D1641F18A1A5388;
 rom0[17]=8'h11044176EBAA7BA22C42914104;
 rom0[18]=8'h1204C9BF577EC8F2A79B1BE37E;
 rom0[19]=8'h13055A108A86D7E4674085E5A1;
 rom0[20]=8'h1405F26B059B9C8C83E730291C;
 rom0[21]=8'h150692CF49A226E86A7554ABC7;
 rom0[22]=8'h16073B3DD78BA46257FF12BA6C;
 rom0[23]=8'h1707EBB730556156129FB2A34D;
 rom0[24]=8'h1808A43BD508CA95DF3B929C71;
 rom0[25]=8'h190964CC46BB6EEFB4363114B1;
 rom0[26]=8'h1A0A2D69068F00B2A927CB29C1;
 rom0[27]=8'h1B0AFE1295B15734A39E08817F;
 rom0[28]=8'h1C0BD6C9755C705840F3304987;
 rom0[29]=8'h1D0CB78E26D67212FD4765A52E;
 rom0[30]=8'h1E0DA0612B71ABF397A76C581B;
 rom0[31]=8'h1F0E9143048C98A8B36C79021C;
 rom0[32]=8'h200F8A343391DF87B6E092C812;
 rom0[33]=8'h21108B3539F85613E7330ECDAA;
 rom0[34]=8'h2211944699430185C1C8B06BF0;
 rom0[35]=8'h2312A568D301185292F2FB99F6;
 rom0[36]=8'h2413BE9C68CE03B44A1A498676;
 rom0[37]=8'h2514DFE1DC5161318B6631EBBA;
 rom0[38]=8'h26160939AF3F0425FEEFDE3200;
 rom0[39]=8'h27173AA46356F74ADD89DE0058;
 rom0[40]=8'h281874227A657E3FBB29176809;
 rom0[41]=8'h2919B5B4764317138EFA6F63B3;
 rom0[42]=8'h2A1AFF5AD8D47BCDF930C9F0BB;
 rom0[43]=8'h2B1C5116240AA3F8C6970397E0;
 rom0[44]=8'h2C1DAAE6D9E2C629B1F188C8A5;
 rom0[45]=8'h2D1F0CCD7C66598C633B31FABA;
 rom0[46]=8'h2E2076CA8DAB176CACC90E18A1;
 rom0[47]=8'h2F21E8DE8FD2FCC10660C747AC;
 rom0[48]=8'h3023630A050C4BB5464D50B2B6;
 rom0[49]=8'h3124E54D6F918D35987D8E8F37;
 rom0[50]=8'h32266FA951A99279B3B8AC26CB;
 rom0[51]=8'h3328021E2DA776904CF3D642E2;
 rom0[52]=8'h34299CAC85EA9FEAC8D512EC1B;
 rom0[53]=8'h352B3F54DCDEC1E92B6EF20388;
 rom0[54]=8'h362CEA17B4FBDE664640D4D167;
 rom0[55]=8'h372E9CF590C6474424878D3ACC;
 rom0[56]=8'h383057EEF2CE9FF8B5EA17E64B;
 rom0[57]=8'h39321B045DB1DF1AB78E372EFF;
 rom0[58]=8'h3A33E63654194FEEDBA0B75D20;
 rom0[59]=8'h3B35B98558BA93F52F5D273402;
 rom0[60]=8'h3C3794F1EE57A476BFA0D27E70;
 rom0[61]=8'h3D39787C97BED4137C14CEDC51;
 rom0[62]=8'h3E3B6425D7CAD05058FAEDAEE3;
 rom0[63]=8'h3F3D57EE3162A325AFA9689C41;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_arkbM (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 58;
parameter AddressWidth = 8;
parameter AddressRange = 256;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h200000000000000;
 rom0[1]=8'h2020100556AAEEF;
 rom0[2]=8'h2040402AC0088B6;
 rom0[3]=8'h206090906C40ED4;
 rom0[4]=8'h20810156ABBC722;
 rom0[5]=8'h20A1929DEF440DB;
 rom0[6]=8'h20C24486C821BA2;
 rom0[7]=8'h20E31731E84109D;
 rom0[8]=8'h21040AC0224FD93;
 rom0[9]=8'h21251F5269DF212;
 rom0[10]=8'h21465509D383EB0;
 rom0[11]=8'h2167AC0794F864E;
 rom0[12]=8'h2189246D053D178;
 rom0[13]=8'h21AABE5B9CBA3D2;
 rom0[14]=8'h21CC79F4F5613A2;
 rom0[15]=8'h21EE575ACACE36D;
 rom0[16]=8'h221056AEFA69DAF;
 rom0[17]=8'h22327813838B2B8;
 rom0[18]=8'h2254BBAA879989B;
 rom0[19]=8'h227721964A2ED49;
 rom0[20]=8'h2299A9F93139AC8;
 rom0[21]=8'h22BC54F5C51FD94;
 rom0[22]=8'h22DF22AEB0E0D25;
 rom0[23]=8'h23021346C23869F;
 rom0[24]=8'h232526E0E9C19AD;
 rom0[25]=8'h23485DA03B1978C;
 rom0[26]=8'h236BB7A7ED02446;
 rom0[27]=8'h238F351B5986A1B;
 rom0[28]=8'h23B2D61DFE1CF27;
 rom0[29]=8'h23D69AD37BCAD34;
 rom0[30]=8'h23FA835F9748BCD;
 rom0[31]=8'h241E8FE63925C8C;
 rom0[32]=8'h2442C08B6DEB99F;
 rom0[33]=8'h246715736642692;
 rom0[34]=8'h248B8EC2771535E;
 rom0[35]=8'h24B02C9D19B61B0;
 rom0[36]=8'h24D4EF27EC02C85;
 rom0[37]=8'h24F9D687B089205;
 rom0[38]=8'h251EE2E14EABFAE;
 rom0[39]=8'h25441459D2C80C7;
 rom0[40]=8'h25696B166E58F2A;
 rom0[41]=8'h258EE73C781E657;
 rom0[42]=8'h25B488F16C418E7;
 rom0[43]=8'h25DA505AEC7A849;
 rom0[44]=8'h26003D9EC035EE0;
 rom0[45]=8'h262650E2D4BAC78;
 rom0[46]=8'h264C8A4D3D5051F;
 rom0[47]=8'h2672EA043364255;
 rom0[48]=8'h2699702E16B06A5;
 rom0[49]=8'h26C01CF16D623A3;
 rom0[50]=8'h26E6F074E440249;
 rom0[51]=8'h270DEADF4ED0DCC;
 rom0[52]=8'h27350C57A7820CB;
 rom0[53]=8'h275C55050FCF500;
 rom0[54]=8'h2783C50ED06954F;
 rom0[55]=8'h27AB5C9C595D259;
 rom0[56]=8'h27D31BD5423B975;
 rom0[57]=8'h27FB02E14A40E31;
 rom0[58]=8'h282311E8587C641;
 rom0[59]=8'h284B49127BF87F3;
 rom0[60]=8'h2873A887EBE2B1D;
 rom0[61]=8'h289C307107B3C93;
 rom0[62]=8'h28C4E0F6575841B;
 rom0[63]=8'h28EDBA408B58CF1;
 rom0[64]=8'h2916BC787D030CC;
 rom0[65]=8'h293FE7C72E92575;
 rom0[66]=8'h29693C55CB58CE8;
 rom0[67]=8'h2992BA4DA7E880E;
 rom0[68]=8'h29BC61D8423CC02;
 rom0[69]=8'h29E6331F41E39F3;
 rom0[70]=8'h2A102E4C782799E;
 rom0[71]=8'h2A3A5389E039661;
 rom0[72]=8'h2A64A3019F59EED;
 rom0[73]=8'h2A8F1CDE05047A0;
 rom0[74]=8'h2AB9C1498B18F76;
 rom0[75]=8'h2AE4906ED6067AC;
 rom0[76]=8'h2B0F8A78B4F5E04;
 rom0[77]=8'h2B3AAF9221F49BC;
 rom0[78]=8'h2B65FFE6421FB2A;
 rom0[79]=8'h2B917BA065CEE11;
 rom0[80]=8'h2BBD22EC08BFEA7;
 rom0[81]=8'h2BE8F5F4D24214E;
 rom0[82]=8'h2C14F4E69561D0E;
 rom0[83]=8'h2C411FED51148C2;
 rom0[84]=8'h2C6D77353064B09;
 rom0[85]=8'h2C99FAEA8A9DCF7;
 rom0[86]=8'h2CC6AB39E378F8B;
 rom0[87]=8'h2CF3884FEB493E7;
 rom0[88]=8'h2D2092597F28659;
 rom0[89]=8'h2D4DC983A923C2F;
 rom0[90]=8'h2D7B2DFBA06944F;
 rom0[91]=8'h2DA8BFEEC974AB6;
 rom0[92]=8'h2DD67F8AB63CEB6;
 rom0[93]=8'h2E046CFD2661C1B;
 rom0[94]=8'h2E3288740759725;
 rom0[95]=8'h2E60D21D749EB5B;
 rom0[96]=8'h2E8F4A27B7DED4C;
 rom0[97]=8'h2EBDF0C14927F1F;
 rom0[98]=8'h2EECC618CF1781D;
 rom0[99]=8'h2F1BCA5D1F08F17;
 rom0[100]=8'h2F4AFDBD3D447BC;
 rom0[101]=8'h2F7A60685D2E2DF;
 rom0[102]=8'h2FA9F28DE1751AD;
 rom0[103]=8'h2FD9B45D5C42BD7;
 rom0[104]=8'h3009A6068F6A8B9;
 rom0[105]=8'h3039C7B96C99B71;
 rom0[106]=8'h306A19A615871FE;
 rom0[107]=8'h309A9BFCDC2375E;
 rom0[108]=8'h30CB4EEE42C98A8;
 rom0[109]=8'h30FC32AAFC6ED34;
 rom0[110]=8'h312D4763ECD41CD;
 rom0[111]=8'h315E8D4A28B66EA;
 rom0[112]=8'h3190048EF6001FB;
 rom0[113]=8'h31C1AD63CBFA1CA;
 rom0[114]=8'h31F387FA537D5ED;
 rom0[115]=8'h322594846724954;
 rom0[116]=8'h3257D334137DFF6;
 rom0[117]=8'h328A443B973D797;
 rom0[118]=8'h32BCE7CD636EBB3;
 rom0[119]=8'h32EFBE1C1BA7C93;
 rom0[120]=8'h3322C75A963B982;
 rom0[121]=8'h335603BBDC6CE36;
 rom0[122]=8'h338973732AA1363;
 rom0[123]=8'h33BD16B3F094282;
 rom0[124]=8'h33F0EDB1D18ACCA;
 rom0[125]=8'h3424F8A0A487569;
 rom0[126]=8'h345937B4747CEF5;
 rom0[127]=8'h348DAB218083C15;
 rom0[128]=8'h1368B2FC6F9609F;
 rom0[129]=8'h137C25670270DD7;
 rom0[130]=8'h138FAB4DBC52613;
 rom0[131]=8'h13A344C42322EF9;
 rom0[132]=8'h13B6F1DDD05A919;
 rom0[133]=8'h13CAB2AE7114981;
 rom0[134]=8'h13DE8749C623495;
 rom0[135]=8'h13F26FC3A423A16;
 rom0[136]=8'h14066C2FF39126E;
 rom0[137]=8'h141A7CA2B0D9D3C;
 rom0[138]=8'h142EA12FEC72114;
 rom0[139]=8'h1442D9EBCAE8C8A;
 rom0[140]=8'h145726EA84FB87D;
 rom0[141]=8'h146B884067AABA0;
 rom0[142]=8'h147FFE01D44DF49;
 rom0[143]=8'h1494884340A858A;
 rom0[144]=8'h14A9271936FD08D;
 rom0[145]=8'h14BDDA985623B34;
 rom0[146]=8'h14D2A2D5519D30D;
 rom0[147]=8'h14E77FE4F1A8384;
 rom0[148]=8'h14FC71DC135626C;
 rom0[149]=8'h151178CFA89FDCD;
 rom0[150]=8'h152694D4B87AB04;
 rom0[151]=8'h153BC6005EED735;
 rom0[152]=8'h15510C67CD25909;
 rom0[153]=8'h15666820498C3C0;
 rom0[154]=8'h157BD93F2FDBB9C;
 rom0[155]=8'h15915FD9F134B98;
 rom0[156]=8'h15A6FC061433C7E;
 rom0[157]=8'h15BCADD93506D4D;
 rom0[158]=8'h15D275690582D00;
 rom0[159]=8'h15E852CB4D395A9;
 rom0[160]=8'h15FE4615E98E8EA;
 rom0[161]=8'h16144F5ECDCEDCD;
 rom0[162]=8'h162A6EBC0344FF8;
 rom0[163]=8'h1640A443A950041;
 rom0[164]=8'h1656F00BF5796A6;
 rom0[165]=8'h166D522B338B5A3;
 rom0[166]=8'h1683CAB7C5A6EF3;
 rom0[167]=8'h169A59C8245A9AC;
 rom0[168]=8'h16B0FF72DEB89CE;
 rom0[169]=8'h16C7BBCE9A6D931;
 rom0[170]=8'h16DE8EF213D71E1;
 rom0[171]=8'h16F578F41E1A9E4;
 rom0[172]=8'h170C79EBA33C06A;
 rom0[173]=8'h172391EFA434C73;
 rom0[174]=8'h173AC117390ACD7;
 rom0[175]=8'h1752077990E79CF;
 rom0[176]=8'h1769652DF22F7E1;
 rom0[177]=8'h1780DA4BBA98C48;
 rom0[178]=8'h179866EA5F432D2;
 rom0[179]=8'h17B00B216CCF52F;
 rom0[180]=8'h17C7C70887763BF;
 rom0[181]=8'h17DF9AB76B20FD1;
 rom0[182]=8'h17F78645EB80764;
 rom0[183]=8'h180F89CBF425264;
 rom0[184]=8'h1827A561889715E;
 rom0[185]=8'h183FD91EC46DDC0;
 rom0[186]=8'h1858251BDB68B8A;
 rom0[187]=8'h187089711986C94;
 rom0[188]=8'h18890636E31F543;
 rom0[189]=8'h18A19B85B4FA2D9;
 rom0[190]=8'h18BA49762468339;
 rom0[191]=8'h18D31020DF5BE43;
 rom0[192]=8'h18EBEF9EAC820AE;
 rom0[193]=8'h1904E8086B5A878;
 rom0[194]=8'h191DF97714512D8;
 rom0[195]=8'h19372403B8D6BCB;
 rom0[196]=8'h195067C78379F27;
 rom0[197]=8'h1969C4DBB800B47;
 rom0[198]=8'h19833B59B381543;
 rom0[199]=8'h199CCB5AEC7BEC8;
 rom0[200]=8'h19B674F8F2F3D7A;
 rom0[201]=8'h19D0384D70893F9;
 rom0[202]=8'h19EA15722892C77;
 rom0[203]=8'h1A040C80F8374F1;
 rom0[204]=8'h1A1E1D93D687D00;
 rom0[205]=8'h1A3848C4D49954C;
 rom0[206]=8'h1A528E2E1D9F098;
 rom0[207]=8'h1A6CEDE9F70467D;
 rom0[208]=8'h1A876812C0877BC;
 rom0[209]=8'h1AA1FCC2F453439;
 rom0[210]=8'h1ABCAC15271A2A3;
 rom0[211]=8'h1AD7762408309BB;
 rom0[212]=8'h1AF25B0A61A7B4A;
 rom0[213]=8'h1B0D5AE318680C3;
 rom0[214]=8'h1B2875C92C4C993;
 rom0[215]=8'h1B43ABD7B83DB1B;
 rom0[216]=8'h1B5EFD29F24C262;
 rom0[217]=8'h1B7A69DB2BCC776;
 rom0[218]=8'h1B95F206D172280;
 rom0[219]=8'h1BB195C86B6B290;
 rom0[220]=8'h1BCD553B9D7B620;
 rom0[221]=8'h1BE9307C271854F;
 rom0[222]=8'h1C0527A5E384DDC;
 rom0[223]=8'h1C213AD4C9ED0D8;
 rom0[224]=8'h1C3D6A24ED82218;
 rom0[225]=8'h1C59B5B27D96969;
 rom0[226]=8'h1C761D99C5BA587;
 rom0[227]=8'h1C92A1F72DD70D5;
 rom0[228]=8'h1CAF42E73A4C7D9;
 rom0[229]=8'h1CCC00868C0D187;
 rom0[230]=8'h1CE8DAF1E0BA94D;
 rom0[231]=8'h1D05D24612C2AEE;
 rom0[232]=8'h1D22E6A0197C02B;
 rom0[233]=8'h1D40181D0943034;
 rom0[234]=8'h1D5D66DA13970F3;
 rom0[235]=8'h1D7AD2F48737A20;
 rom0[236]=8'h1D985C89D041A31;
 rom0[237]=8'h1DB603B7784CD18;
 rom0[238]=8'h1DD3C89B26894DF;
 rom0[239]=8'h1DF1AB529FDD41C;
 rom0[240]=8'h1E0FABFBC702A3C;
 rom0[241]=8'h1E2DCAB49CA51B4;
 rom0[242]=8'h1E4C079B3F80005;
 rom0[243]=8'h1E6A62CDEC7C7AF;
 rom0[244]=8'h1E88DC6AFECFBFB;
 rom0[245]=8'h1EA77490F0196B0;
 rom0[246]=8'h1EC62B5E5881FAF;
 rom0[247]=8'h1EE500F1EED9671;
 rom0[248]=8'h1F03F56A88B5D79;
 rom0[249]=8'h1F2308E71A927A9;
 rom0[250]=8'h1F423B86B7EE791;
 rom0[251]=8'h1F618D68936C09D;
 rom0[252]=8'h1F80FEABFEEFA49;
 rom0[253]=8'h1FA08F706BBF538;
 rom0[254]=8'h1FC03FD56AA224F;
 rom0[255]=8'h1FE00FFAABFFBBC;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_arramb6 (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 42;
parameter AddressWidth = 8;
parameter AddressRange = 256;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h00000000000;
 rom0[1]=8'h00004000155;
 rom0[2]=8'h00010000AAA;
 rom0[3]=8'h00024002400;
 rom0[4]=8'h00040005555;
 rom0[5]=8'h0006400A6AB;
 rom0[6]=8'h00090012001;
 rom0[7]=8'h000C401C958;
 rom0[8]=8'h0010002AAB0;
 rom0[9]=8'h0014403CC08;
 rom0[10]=8'h00190053562;
 rom0[11]=8'h001E406EEBD;
 rom0[12]=8'h0024009001B;
 rom0[13]=8'h002A40B717A;
 rom0[14]=8'h003100E4ADC;
 rom0[15]=8'h00384119441;
 rom0[16]=8'h004001555AA;
 rom0[17]=8'h00484199717;
 rom0[18]=8'h005101E6088;
 rom0[19]=8'h005A423B9FF;
 rom0[20]=8'h0064029AB7B;
 rom0[21]=8'h006E4303CFD;
 rom0[22]=8'h00790377686;
 rom0[23]=8'h008443F6017;
 rom0[24]=8'h009004801B0;
 rom0[25]=8'h009C4516351;
 rom0[26]=8'h00A905B8CFD;
 rom0[27]=8'h00B646686B4;
 rom0[28]=8'h00C40725875;
 rom0[29]=8'h00D247F0A43;
 rom0[30]=8'h00E108CA41E;
 rom0[31]=8'h00F049B2E07;
 rom0[32]=8'h01000AAB000;
 rom0[33]=8'h01104BB3208;
 rom0[34]=8'h01210CCBC21;
 rom0[35]=8'h01324DF564C;
 rom0[36]=8'h01440F3088B;
 rom0[37]=8'h0156507DADD;
 rom0[38]=8'h016911DD546;
 rom0[39]=8'h017C534FFC4;
 rom0[40]=8'h019014D625B;
 rom0[41]=8'h01A4567050A;
 rom0[42]=8'h01B9181EFD4;
 rom0[43]=8'h01CE59E2AB9;
 rom0[44]=8'h01E41BBBDBB;
 rom0[45]=8'h01FA5DAB0DC;
 rom0[46]=8'h02111FB0C1C;
 rom0[47]=8'h022861CD77D;
 rom0[48]=8'h02402401B01;
 rom0[49]=8'h0258664DEA8;
 rom0[50]=8'h027128B2A75;
 rom0[51]=8'h028A6B3066A;
 rom0[52]=8'h02A42DC7A87;
 rom0[53]=8'h02BE7078ECE;
 rom0[54]=8'h02D93344B41;
 rom0[55]=8'h02F4762B7E2;
 rom0[56]=8'h0310392DCB2;
 rom0[57]=8'h032C7C4C1B3;
 rom0[58]=8'h03493F86EE6;
 rom0[59]=8'h036682DEC4F;
 rom0[60]=8'h038446541EE;
 rom0[61]=8'h03A289E77C5;
 rom0[62]=8'h03C14D995D6;
 rom0[63]=8'h03E0916A423;
 rom0[64]=8'h0400555AAAE;
 rom0[65]=8'h0420996B17A;
 rom0[66]=8'h04415D9C087;
 rom0[67]=8'h0462A1EDFD9;
 rom0[68]=8'h04846661770;
 rom0[69]=8'h04A6AAF6F50;
 rom0[70]=8'h04C96FAEF7B;
 rom0[71]=8'h04ECB489FF1;
 rom0[72]=8'h051079888B7;
 rom0[73]=8'h0534BEAB1CE;
 rom0[74]=8'h055983F2338;
 rom0[75]=8'h057EC95E4F8;
 rom0[76]=8'h05A48EEFF0F;
 rom0[77]=8'h05CAD4A7981;
 rom0[78]=8'h05F19A85C50;
 rom0[79]=8'h0618E08AF7D;
 rom0[80]=8'h0640A6B7B0D;
 rom0[81]=8'h0668ED0C700;
 rom0[82]=8'h0691B389B5A;
 rom0[83]=8'h06BAFA3001D;
 rom0[84]=8'h06E4C0FFD4B;
 rom0[85]=8'h070F07F9AE8;
 rom0[86]=8'h0739CF1E0F6;
 rom0[87]=8'h0765166D777;
 rom0[88]=8'h0790DDE866F;
 rom0[89]=8'h07BD258F5E0;
 rom0[90]=8'h07E9ED62DCD;
 rom0[91]=8'h08173563638;
 rom0[92]=8'h0844FD91725;
 rom0[93]=8'h087345ED896;
 rom0[94]=8'h08A20E7828E;
 rom0[95]=8'h08D15731D10;
 rom0[96]=8'h0901201B020;
 rom0[97]=8'h093169343BF;
 rom0[98]=8'h0962327DFF2;
 rom0[99]=8'h09937BF8CBB;
 rom0[100]=8'h09C545A521D;
 rom0[101]=8'h09F78F8381B;
 rom0[102]=8'h0A2A59946B9;
 rom0[103]=8'h0A5DA3D85FA;
 rom0[104]=8'h0A916E4FDE0;
 rom0[105]=8'h0AC5B8FB66F;
 rom0[106]=8'h0AFA83DB7AB;
 rom0[107]=8'h0B2FCEF0996;
 rom0[108]=8'h0B659A3B435;
 rom0[109]=8'h0B9BE5BBF8A;
 rom0[110]=8'h0BD2B173398;
 rom0[111]=8'h0C09FD61864;
 rom0[112]=8'h0C41C9875F0;
 rom0[113]=8'h0C7A15E5441;
 rom0[114]=8'h0CB2E27BB59;
 rom0[115]=8'h0CEC2F4B33C;
 rom0[116]=8'h0D25FC543EE;
 rom0[117]=8'h0D604997572;
 rom0[118]=8'h0D9B1714FCD;
 rom0[119]=8'h0DD664CDB01;
 rom0[120]=8'h0E1232C1F12;
 rom0[121]=8'h0E4E80F2405;
 rom0[122]=8'h0E8B4F5F1DD;
 rom0[123]=8'h0EC89E0909D;
 rom0[124]=8'h0F066CF084A;
 rom0[125]=8'h0F44BC160E7;
 rom0[126]=8'h0F838B7A278;
 rom0[127]=8'h0FC2DB1D502;
 rom0[128]=8'h1002AB00088;
 rom0[129]=8'h1042FB22D0E;
 rom0[130]=8'h1083CB86298;
 rom0[131]=8'h10C51C2A92B;
 rom0[132]=8'h1106ED108CA;
 rom0[133]=8'h11493E38979;
 rom0[134]=8'h118C0FA333D;
 rom0[135]=8'h11CF6150E1A;
 rom0[136]=8'h12133342213;
 rom0[137]=8'h1257857772E;
 rom0[138]=8'h129C57F156E;
 rom0[139]=8'h12E1AAB04D8;
 rom0[140]=8'h13277DB4D70;
 rom0[141]=8'h136DD0FF73B;
 rom0[142]=8'h13B4A490A3C;
 rom0[143]=8'h13FBF868E79;
 rom0[144]=8'h1443CC88BF6;
 rom0[145]=8'h148C20F0AB6;
 rom0[146]=8'h14D4F5A12C0;
 rom0[147]=8'h151E4A9AC17;
 rom0[148]=8'h15681FDDEBF;
 rom0[149]=8'h15B2756B2BF;
 rom0[150]=8'h15FD4B43019;
 rom0[151]=8'h1648A165ED3;
 rom0[152]=8'h169477D46F2;
 rom0[153]=8'h16E0CE8F07A;
 rom0[154]=8'h172DA596370;
 rom0[155]=8'h177AFCEA7D9;
 rom0[156]=8'h17C8D48C5BA;
 rom0[157]=8'h18172C7C517;
 rom0[158]=8'h186604BADF6;
 rom0[159]=8'h18B55D4885B;
 rom0[160]=8'h19053625C4B;
 rom0[161]=8'h19558F531CC;
 rom0[162]=8'h19A668D10E2;
 rom0[163]=8'h19F7C2A0192;
 rom0[164]=8'h1A499CC0BE2;
 rom0[165]=8'h1A9BF7337D7;
 rom0[166]=8'h1AEED1F8D75;
 rom0[167]=8'h1B422D114C2;
 rom0[168]=8'h1B96087D5C4;
 rom0[169]=8'h1BEA643D87E;
 rom0[170]=8'h1C3F40524F8;
 rom0[171]=8'h1C949CBC335;
 rom0[172]=8'h1CEA797BB3C;
 rom0[173]=8'h1D40D691511;
 rom0[174]=8'h1D97B3FD8BA;
 rom0[175]=8'h1DEF11C0E3D;
 rom0[176]=8'h1E46EFDBD9F;
 rom0[177]=8'h1E9F4E4EEE5;
 rom0[178]=8'h1EF82D1AA15;
 rom0[179]=8'h1F518C3F735;
 rom0[180]=8'h1FAB6BBDE4A;
 rom0[181]=8'h2005CB96759;
 rom0[182]=8'h2060ABC9A69;
 rom0[183]=8'h20BC0C57F7F;
 rom0[184]=8'h2117ED41EA1;
 rom0[185]=8'h21744E87FD4;
 rom0[186]=8'h21D1302AB1E;
 rom0[187]=8'h222E922A886;
 rom0[188]=8'h228C7488010;
 rom0[189]=8'h22EAD7439C3;
 rom0[190]=8'h2349BA5DDA5;
 rom0[191]=8'h23A91DD73BC;
 rom0[192]=8'h240901B040D;
 rom0[193]=8'h246965E969E;
 rom0[194]=8'h24CA4A83377;
 rom0[195]=8'h252BAF7E29C;
 rom0[196]=8'h258D94DAC13;
 rom0[197]=8'h25EFFA997E4;
 rom0[198]=8'h2652E0BAE13;
 rom0[199]=8'h26B6473F6A8;
 rom0[200]=8'h271A2E279A8;
 rom0[201]=8'h277E9573F19;
 rom0[202]=8'h27E37D24F03;
 rom0[203]=8'h2848E53B16B;
 rom0[204]=8'h28AECDB6E57;
 rom0[205]=8'h29153698DCE;
 rom0[206]=8'h297C1FE17D7;
 rom0[207]=8'h29E38991477;
 rom0[208]=8'h2A4B73A8BB6;
 rom0[209]=8'h2AB3DE28599;
 rom0[210]=8'h2B1CC910A28;
 rom0[211]=8'h2B863462168;
 rom0[212]=8'h2BF0201D361;
 rom0[213]=8'h2C5A8C42819;
 rom0[214]=8'h2CC578D2796;
 rom0[215]=8'h2D30E5CD9E0;
 rom0[216]=8'h2D9CD3346FD;
 rom0[217]=8'h2E0941076F4;
 rom0[218]=8'h2E762F471CB;
 rom0[219]=8'h2EE39DF3F89;
 rom0[220]=8'h2F518D0E836;
 rom0[221]=8'h2FBFFC973D8;
 rom0[222]=8'h302EEC8EA76;
 rom0[223]=8'h309E5CF5417;
 rom0[224]=8'h310E4DCB8C2;
 rom0[225]=8'h317EBF1207D;
 rom0[226]=8'h31EFB0C9351;
 rom0[227]=8'h326122F1944;
 rom0[228]=8'h32D3158BA5C;
 rom0[229]=8'h33458897EA2;
 rom0[230]=8'h33B87C16E1C;
 rom0[231]=8'h342BF0090D2;
 rom0[232]=8'h349FE46EECA;
 rom0[233]=8'h3514594900D;
 rom0[234]=8'h35894E97CA1;
 rom0[235]=8'h35FEC45BC8D;
 rom0[236]=8'h3674BA957D9;
 rom0[237]=8'h36EB314568D;
 rom0[238]=8'h3762286C0AF;
 rom0[239]=8'h37D9A009E47;
 rom0[240]=8'h3851981F75D;
 rom0[241]=8'h38CA10AD3F9;
 rom0[242]=8'h394309B3C20;
 rom0[243]=8'h39BC83337DC;
 rom0[244]=8'h3A367D2CF34;
 rom0[245]=8'h3AB0F7A0A2F;
 rom0[246]=8'h3B2BF28F0D5;
 rom0[247]=8'h3BA76DF8B2E;
 rom0[248]=8'h3C2369DE142;
 rom0[249]=8'h3C9FE63FB17;
 rom0[250]=8'h3D1CE31E0B7;
 rom0[251]=8'h3D9A6079A28;
 rom0[252]=8'h3E185E52F73;
 rom0[253]=8'h3E96DCAA8A0;
 rom0[254]=8'h3F15DB80DB6;
 rom0[255]=8'h3F955AD66BD;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_arralbW (
 address0, ce0, q0, 
 address1, ce1, q1, 
 reset, clk);
parameter DataWidth = 26;
parameter AddressWidth = 8;
parameter AddressRange = 256;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input[AddressWidth-1:0] address1;
input ce1;
output reg[DataWidth-1:0] q1;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h0000000;
 rom0[1]=8'h0000400;
 rom0[2]=8'h0001000;
 rom0[3]=8'h0002400;
 rom0[4]=8'h0004000;
 rom0[5]=8'h0006400;
 rom0[6]=8'h0009000;
 rom0[7]=8'h000C400;
 rom0[8]=8'h0010000;
 rom0[9]=8'h0014400;
 rom0[10]=8'h0019000;
 rom0[11]=8'h001E400;
 rom0[12]=8'h0024000;
 rom0[13]=8'h002A400;
 rom0[14]=8'h0031000;
 rom0[15]=8'h0038400;
 rom0[16]=8'h0040000;
 rom0[17]=8'h0048400;
 rom0[18]=8'h0051000;
 rom0[19]=8'h005A400;
 rom0[20]=8'h0064000;
 rom0[21]=8'h006E400;
 rom0[22]=8'h0079000;
 rom0[23]=8'h0084400;
 rom0[24]=8'h0090000;
 rom0[25]=8'h009C400;
 rom0[26]=8'h00A9000;
 rom0[27]=8'h00B6400;
 rom0[28]=8'h00C4000;
 rom0[29]=8'h00D2400;
 rom0[30]=8'h00E1000;
 rom0[31]=8'h00F0400;
 rom0[32]=8'h0100000;
 rom0[33]=8'h0110400;
 rom0[34]=8'h0121000;
 rom0[35]=8'h0132400;
 rom0[36]=8'h0144000;
 rom0[37]=8'h0156401;
 rom0[38]=8'h0169001;
 rom0[39]=8'h017C401;
 rom0[40]=8'h0190001;
 rom0[41]=8'h01A4401;
 rom0[42]=8'h01B9001;
 rom0[43]=8'h01CE401;
 rom0[44]=8'h01E4001;
 rom0[45]=8'h01FA401;
 rom0[46]=8'h0211001;
 rom0[47]=8'h0228402;
 rom0[48]=8'h0240002;
 rom0[49]=8'h0258402;
 rom0[50]=8'h0271002;
 rom0[51]=8'h028A402;
 rom0[52]=8'h02A4002;
 rom0[53]=8'h02BE403;
 rom0[54]=8'h02D9003;
 rom0[55]=8'h02F4403;
 rom0[56]=8'h0310003;
 rom0[57]=8'h032C403;
 rom0[58]=8'h0349003;
 rom0[59]=8'h0366404;
 rom0[60]=8'h0384004;
 rom0[61]=8'h03A2404;
 rom0[62]=8'h03C1004;
 rom0[63]=8'h03E0405;
 rom0[64]=8'h0400005;
 rom0[65]=8'h0420405;
 rom0[66]=8'h0441005;
 rom0[67]=8'h0462406;
 rom0[68]=8'h0484006;
 rom0[69]=8'h04A6406;
 rom0[70]=8'h04C9006;
 rom0[71]=8'h04EC407;
 rom0[72]=8'h0510007;
 rom0[73]=8'h0534407;
 rom0[74]=8'h0559008;
 rom0[75]=8'h057E408;
 rom0[76]=8'h05A4008;
 rom0[77]=8'h05CA409;
 rom0[78]=8'h05F1009;
 rom0[79]=8'h061840A;
 rom0[80]=8'h064000A;
 rom0[81]=8'h066840A;
 rom0[82]=8'h069100B;
 rom0[83]=8'h06BA40B;
 rom0[84]=8'h06E400C;
 rom0[85]=8'h070E40C;
 rom0[86]=8'h073900C;
 rom0[87]=8'h076440D;
 rom0[88]=8'h079000D;
 rom0[89]=8'h07BC40E;
 rom0[90]=8'h07E900E;
 rom0[91]=8'h081640F;
 rom0[92]=8'h084400F;
 rom0[93]=8'h0872410;
 rom0[94]=8'h08A1010;
 rom0[95]=8'h08D0411;
 rom0[96]=8'h0900012;
 rom0[97]=8'h0930412;
 rom0[98]=8'h0961013;
 rom0[99]=8'h0992413;
 rom0[100]=8'h09C4014;
 rom0[101]=8'h09F6414;
 rom0[102]=8'h0A29015;
 rom0[103]=8'h0A5C416;
 rom0[104]=8'h0A90016;
 rom0[105]=8'h0AC4417;
 rom0[106]=8'h0AF9018;
 rom0[107]=8'h0B2E418;
 rom0[108]=8'h0B64019;
 rom0[109]=8'h0B9A41A;
 rom0[110]=8'h0BD101B;
 rom0[111]=8'h0C0841B;
 rom0[112]=8'h0C4001C;
 rom0[113]=8'h0C7841D;
 rom0[114]=8'h0CB101E;
 rom0[115]=8'h0CEA41E;
 rom0[116]=8'h0D2401F;
 rom0[117]=8'h0D5E420;
 rom0[118]=8'h0D99021;
 rom0[119]=8'h0DD4422;
 rom0[120]=8'h0E10023;
 rom0[121]=8'h0E4C424;
 rom0[122]=8'h0E89024;
 rom0[123]=8'h0EC6425;
 rom0[124]=8'h0F04026;
 rom0[125]=8'h0F42427;
 rom0[126]=8'h0F81028;
 rom0[127]=8'h0FC0429;
 rom0[128]=8'h100002A;
 rom0[129]=8'h104042B;
 rom0[130]=8'h108102C;
 rom0[131]=8'h10C242D;
 rom0[132]=8'h110402E;
 rom0[133]=8'h114642F;
 rom0[134]=8'h1189030;
 rom0[135]=8'h11CC432;
 rom0[136]=8'h1210033;
 rom0[137]=8'h1254434;
 rom0[138]=8'h1299035;
 rom0[139]=8'h12DE436;
 rom0[140]=8'h1324037;
 rom0[141]=8'h136A439;
 rom0[142]=8'h13B103A;
 rom0[143]=8'h13F843B;
 rom0[144]=8'h144003C;
 rom0[145]=8'h148843E;
 rom0[146]=8'h14D103F;
 rom0[147]=8'h151A440;
 rom0[148]=8'h1564041;
 rom0[149]=8'h15AE443;
 rom0[150]=8'h15F9044;
 rom0[151]=8'h1644446;
 rom0[152]=8'h1690047;
 rom0[153]=8'h16DC448;
 rom0[154]=8'h172904A;
 rom0[155]=8'h177644B;
 rom0[156]=8'h17C404D;
 rom0[157]=8'h181244E;
 rom0[158]=8'h1861050;
 rom0[159]=8'h18B0451;
 rom0[160]=8'h1900053;
 rom0[161]=8'h1950454;
 rom0[162]=8'h19A1056;
 rom0[163]=8'h19F2458;
 rom0[164]=8'h1A44059;
 rom0[165]=8'h1A9645B;
 rom0[166]=8'h1AE905D;
 rom0[167]=8'h1B3C45E;
 rom0[168]=8'h1B90060;
 rom0[169]=8'h1BE4462;
 rom0[170]=8'h1C39063;
 rom0[171]=8'h1C8E465;
 rom0[172]=8'h1CE4067;
 rom0[173]=8'h1D3A469;
 rom0[174]=8'h1D9106B;
 rom0[175]=8'h1DE846D;
 rom0[176]=8'h1E4006E;
 rom0[177]=8'h1E98470;
 rom0[178]=8'h1EF1072;
 rom0[179]=8'h1F4A474;
 rom0[180]=8'h1FA4076;
 rom0[181]=8'h1FFE478;
 rom0[182]=8'h205907A;
 rom0[183]=8'h20B447C;
 rom0[184]=8'h211007E;
 rom0[185]=8'h216C480;
 rom0[186]=8'h21C9082;
 rom0[187]=8'h2226485;
 rom0[188]=8'h2284087;
 rom0[189]=8'h22E2489;
 rom0[190]=8'h234108B;
 rom0[191]=8'h23A048D;
 rom0[192]=8'h2400090;
 rom0[193]=8'h2460492;
 rom0[194]=8'h24C1094;
 rom0[195]=8'h2522496;
 rom0[196]=8'h2584099;
 rom0[197]=8'h25E649B;
 rom0[198]=8'h264909D;
 rom0[199]=8'h26AC4A0;
 rom0[200]=8'h27100A2;
 rom0[201]=8'h27744A5;
 rom0[202]=8'h27D90A7;
 rom0[203]=8'h283E4AA;
 rom0[204]=8'h28A40AC;
 rom0[205]=8'h290A4AF;
 rom0[206]=8'h29710B1;
 rom0[207]=8'h29D84B4;
 rom0[208]=8'h2A400B7;
 rom0[209]=8'h2AA84B9;
 rom0[210]=8'h2B110BC;
 rom0[211]=8'h2B7A4BF;
 rom0[212]=8'h2BE40C1;
 rom0[213]=8'h2C4E4C4;
 rom0[214]=8'h2CB90C7;
 rom0[215]=8'h2D244CA;
 rom0[216]=8'h2D900CD;
 rom0[217]=8'h2DFC4CF;
 rom0[218]=8'h2E690D2;
 rom0[219]=8'h2ED64D5;
 rom0[220]=8'h2F440D8;
 rom0[221]=8'h2FB24DB;
 rom0[222]=8'h30210DE;
 rom0[223]=8'h30904E1;
 rom0[224]=8'h31000E4;
 rom0[225]=8'h31704E7;
 rom0[226]=8'h31E10EA;
 rom0[227]=8'h32524ED;
 rom0[228]=8'h32C40F1;
 rom0[229]=8'h33364F4;
 rom0[230]=8'h33A90F7;
 rom0[231]=8'h341C4FA;
 rom0[232]=8'h34900FE;
 rom0[233]=8'h3504501;
 rom0[234]=8'h3579104;
 rom0[235]=8'h35EE508;
 rom0[236]=8'h366410B;
 rom0[237]=8'h36DA50E;
 rom0[238]=8'h3751112;
 rom0[239]=8'h37C8515;
 rom0[240]=8'h3840119;
 rom0[241]=8'h38B851C;
 rom0[242]=8'h3931120;
 rom0[243]=8'h39AA523;
 rom0[244]=8'h3A24127;
 rom0[245]=8'h3A9E52B;
 rom0[246]=8'h3B1912E;
 rom0[247]=8'h3B94532;
 rom0[248]=8'h3C10136;
 rom0[249]=8'h3C8C53A;
 rom0[250]=8'h3D0913D;
 rom0[251]=8'h3D86541;
 rom0[252]=8'h3E04145;
 rom0[253]=8'h3E82549;
 rom0[254]=8'h3F0114D;
 rom0[255]=8'h3F80551;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
always @(posedge clk) 
begin 
 if (ce1) 
 begin
 q1 <= rom0[address1];
 end
end
endmodule
module entry_point_sitodp_32ns_64_2_no_dsp_1
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
module entry_point_sparsemux_19_8_64_1_1 (din0,din1,din2,din3,din4,din5,din6,din7,din8,def,sel,dout);
parameter din0_WIDTH = 1;
parameter din1_WIDTH = 1;
parameter din2_WIDTH = 1;
parameter din3_WIDTH = 1;
parameter din4_WIDTH = 1;
parameter din5_WIDTH = 1;
parameter din6_WIDTH = 1;
parameter din7_WIDTH = 1;
parameter din8_WIDTH = 1;
parameter def_WIDTH = 1;
parameter sel_WIDTH = 1;
parameter dout_WIDTH = 1;
parameter [sel_WIDTH-1:0] CASE0 = 1;
parameter [sel_WIDTH-1:0] CASE1 = 1;
parameter [sel_WIDTH-1:0] CASE2 = 1;
parameter [sel_WIDTH-1:0] CASE3 = 1;
parameter [sel_WIDTH-1:0] CASE4 = 1;
parameter [sel_WIDTH-1:0] CASE5 = 1;
parameter [sel_WIDTH-1:0] CASE6 = 1;
parameter [sel_WIDTH-1:0] CASE7 = 1;
parameter [sel_WIDTH-1:0] CASE8 = 1;
parameter ID = 1;
parameter NUM_STAGE = 1;
input [din0_WIDTH-1:0] din0;
input [din1_WIDTH-1:0] din1;
input [din2_WIDTH-1:0] din2;
input [din3_WIDTH-1:0] din3;
input [din4_WIDTH-1:0] din4;
input [din5_WIDTH-1:0] din5;
input [din6_WIDTH-1:0] din6;
input [din7_WIDTH-1:0] din7;
input [din8_WIDTH-1:0] din8;
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
 CASE4 : dout_tmp = din4;
 CASE5 : dout_tmp = din5;
 CASE6 : dout_tmp = din6;
 CASE7 : dout_tmp = din7;
 CASE8 : dout_tmp = din8;
 default : dout_tmp = def;
endcase
end
assign dout = dout_tmp;
endmodule
module entry_point_sparsemux_7_2_1_1_1 (din0,din1,din2,def,sel,dout);
parameter din0_WIDTH = 1;
parameter din1_WIDTH = 1;
parameter din2_WIDTH = 1;
parameter def_WIDTH = 1;
parameter sel_WIDTH = 1;
parameter dout_WIDTH = 1;
parameter [sel_WIDTH-1:0] CASE0 = 1;
parameter [sel_WIDTH-1:0] CASE1 = 1;
parameter [sel_WIDTH-1:0] CASE2 = 1;
parameter ID = 1;
parameter NUM_STAGE = 1;
input [din0_WIDTH-1:0] din0;
input [din1_WIDTH-1:0] din1;
input [din2_WIDTH-1:0] din2;
input [def_WIDTH-1:0] def;
input [sel_WIDTH-1:0] sel;
output [dout_WIDTH-1:0] dout;
reg [dout_WIDTH-1:0] dout_tmp;
always @ (*) begin
(* parallel_case *) case (sel)
 CASE0 : dout_tmp = din0;
 CASE1 : dout_tmp = din1;
 CASE2 : dout_tmp = din2;
 default : dout_tmp = def;
endcase
end
assign dout = dout_tmp;
endmodule
module entry_point_srem_32s_5ns_32_36_1_divider
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
module entry_point_srem_32s_5ns_32_36_1
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
entry_point_srem_32s_5ns_32_36_1_divider #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_srem_32s_5ns_32_36_1_divider_u (
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
