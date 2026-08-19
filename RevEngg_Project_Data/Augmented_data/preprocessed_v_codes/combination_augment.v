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
 ap_return
);
parameter ap_ST_fsm_state1 = 38'd1;
parameter ap_ST_fsm_state2 = 38'd2;
parameter ap_ST_fsm_state3 = 38'd4;
parameter ap_ST_fsm_state4 = 38'd8;
parameter ap_ST_fsm_state5 = 38'd16;
parameter ap_ST_fsm_state6 = 38'd32;
parameter ap_ST_fsm_state7 = 38'd64;
parameter ap_ST_fsm_state8 = 38'd128;
parameter ap_ST_fsm_state9 = 38'd256;
parameter ap_ST_fsm_state10 = 38'd512;
parameter ap_ST_fsm_state11 = 38'd1024;
parameter ap_ST_fsm_state12 = 38'd2048;
parameter ap_ST_fsm_state13 = 38'd4096;
parameter ap_ST_fsm_state14 = 38'd8192;
parameter ap_ST_fsm_state15 = 38'd16384;
parameter ap_ST_fsm_state16 = 38'd32768;
parameter ap_ST_fsm_state17 = 38'd65536;
parameter ap_ST_fsm_state18 = 38'd131072;
parameter ap_ST_fsm_state19 = 38'd262144;
parameter ap_ST_fsm_state20 = 38'd524288;
parameter ap_ST_fsm_state21 = 38'd1048576;
parameter ap_ST_fsm_state22 = 38'd2097152;
parameter ap_ST_fsm_state23 = 38'd4194304;
parameter ap_ST_fsm_state24 = 38'd8388608;
parameter ap_ST_fsm_state25 = 38'd16777216;
parameter ap_ST_fsm_state26 = 38'd33554432;
parameter ap_ST_fsm_state27 = 38'd67108864;
parameter ap_ST_fsm_state28 = 38'd134217728;
parameter ap_ST_fsm_state29 = 38'd268435456;
parameter ap_ST_fsm_state30 = 38'd536870912;
parameter ap_ST_fsm_state31 = 38'd1073741824;
parameter ap_ST_fsm_state32 = 38'd2147483648;
parameter ap_ST_fsm_state33 = 38'd4294967296;
parameter ap_ST_fsm_state34 = 38'd8589934592;
parameter ap_ST_fsm_state35 = 38'd17179869184;
parameter ap_ST_fsm_state36 = 38'd34359738368;
parameter ap_ST_fsm_state37 = 38'd68719476736;
parameter ap_ST_fsm_state38 = 38'd137438953472;
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
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
(* fsm_encoding = "none" *) reg [37:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [31:0] n_read_reg_152;
reg [31:0] r_read_reg_157;
wire [31:0] sub_fu_109_p2;
reg [31:0] sub_reg_162;
wire [31:0] mul_ln30_fu_105_p2;
wire ap_CS_fsm_state3;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_factorial_n_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_factorial_n_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_ap_ready;
wire signed [31:0] grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_factorial_r_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_factorial_r_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_ap_ready;
wire signed [31:0] grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_factorial_nr_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_factorial_nr_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_ap_start_reg;
reg grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_ap_start_reg;
wire [31:0] grp_fu_127_p2;
wire ap_CS_fsm_state38;
reg grp_fu_127_ap_start;
wire grp_fu_127_ap_done;
reg [37:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_block_state2_on_subcall_done;
reg ap_ST_fsm_state2_blk;
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
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 38'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_16_1 grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_ap_ready),
 .n_load(n_read_reg_152),
 .factorial_n_out(grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_factorial_n_out),
 .factorial_n_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_factorial_n_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_21_2 grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_ap_ready),
 .r_load(r_read_reg_157),
 .factorial_r_out(grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_factorial_r_out),
 .factorial_r_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_factorial_r_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_26_3 grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_ap_ready),
 .sub(sub_reg_162),
 .factorial_nr_out(grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_factorial_nr_out),
 .factorial_nr_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_factorial_nr_out_ap_vld)
);
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U11(
 .din0(grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_factorial_nr_out),
 .din1(grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_factorial_r_out),
 .dout(mul_ln30_fu_105_p2)
);
entry_point_udiv_32ns_32ns_32_36_seq_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
udiv_32ns_32ns_32_36_seq_1_U12(
 .clk(ap_clk),
 .reset(ap_rst),
 .start(grp_fu_127_ap_start),
 .done(grp_fu_127_ap_done),
 .din0(grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_factorial_n_out),
 .din1(mul_ln30_fu_105_p2),
 .ce(1'b1),
 .dout(grp_fu_127_p2)
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
 grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 n_read_reg_152 <= n;
 r_read_reg_157 <= r;
 sub_reg_162 <= sub_fu_109_p2;
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
always @ (*) begin
 if ((1'b1 == ap_block_state2_on_subcall_done)) begin
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
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
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
 if ((1'b1 == ap_CS_fsm_state38)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_fu_127_ap_start = 1'b1;
 end else begin
 grp_fu_127_ap_start = 1'b0;
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
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state38)) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
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
 if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
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
assign ap_CS_fsm_state38 = ap_CS_fsm[32'd37];
always @ (*) begin
 ap_block_state2_on_subcall_done = ((grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_ap_done == 1'b0) | (grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_ap_done == 1'b0) | (grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_ap_done == 1'b0));
end
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_16_1_fu_85_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_21_2_fu_92_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_26_3_fu_99_ap_start_reg;
assign sub_fu_109_p2 = (n - r);
assign temptemp1 = n;
assign temptemp2 = r;
assign temptemp3 = grp_fu_127_p2;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_16_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n_load,
 factorial_n_out,
 factorial_n_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n_load;
output [31:0] factorial_n_out;
output factorial_n_out_ap_vld;
reg ap_idle;
reg factorial_n_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln16_fu_61_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg signed [31:0] i_fu_22;
wire [31:0] i_5_fu_70_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg signed [31:0] factorial_n_fu_26;
wire [31:0] factorial_n_1_fu_43_p2;
wire ap_block_pp0_stage0_01001;
wire signed [31:0] icmp_ln16_fu_61_p0;
wire signed [31:0] i_5_fu_70_p0;
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
#0 i_fu_22 = 32'd0;
#0 factorial_n_fu_26 = 32'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U1(
 .din0(i_fu_22),
 .din1(factorial_n_fu_26),
 .dout(factorial_n_1_fu_43_p2)
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
 factorial_n_fu_26 <= 32'd1;
 end else if (((icmp_ln16_fu_61_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 factorial_n_fu_26 <= factorial_n_1_fu_43_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_fu_22 <= 32'd1;
 end else if (((icmp_ln16_fu_61_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_fu_22 <= i_5_fu_70_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln16_fu_61_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((ap_loop_exit_ready == 1'b1) & (icmp_ln16_fu_61_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 factorial_n_out_ap_vld = 1'b1;
 end else begin
 factorial_n_out_ap_vld = 1'b0;
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
assign factorial_n_out = factorial_n_fu_26;
assign i_5_fu_70_p0 = i_fu_22;
assign i_5_fu_70_p2 = ($signed(i_5_fu_70_p0) + $signed(32'd1));
assign icmp_ln16_fu_61_p0 = i_fu_22;
assign icmp_ln16_fu_61_p2 = (($signed(icmp_ln16_fu_61_p0) > $signed(n_load)) ? 1'b1 : 1'b0);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_21_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 r_load,
 factorial_r_out,
 factorial_r_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] r_load;
output [31:0] factorial_r_out;
output factorial_r_out_ap_vld;
reg ap_idle;
reg factorial_r_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln21_fu_61_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg signed [31:0] i_2_fu_22;
wire [31:0] i_3_fu_70_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg signed [31:0] factorial_r_fu_26;
wire [31:0] factorial_r_1_fu_43_p2;
wire ap_block_pp0_stage0_01001;
wire signed [31:0] icmp_ln21_fu_61_p0;
wire signed [31:0] i_3_fu_70_p0;
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
#0 i_2_fu_22 = 32'd0;
#0 factorial_r_fu_26 = 32'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U5(
 .din0(i_2_fu_22),
 .din1(factorial_r_fu_26),
 .dout(factorial_r_1_fu_43_p2)
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
 factorial_r_fu_26 <= 32'd1;
 end else if (((icmp_ln21_fu_61_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 factorial_r_fu_26 <= factorial_r_1_fu_43_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_2_fu_22 <= 32'd1;
 end else if (((icmp_ln21_fu_61_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_2_fu_22 <= i_3_fu_70_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln21_fu_61_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((ap_loop_exit_ready == 1'b1) & (icmp_ln21_fu_61_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 factorial_r_out_ap_vld = 1'b1;
 end else begin
 factorial_r_out_ap_vld = 1'b0;
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
assign factorial_r_out = factorial_r_fu_26;
assign i_3_fu_70_p0 = i_2_fu_22;
assign i_3_fu_70_p2 = ($signed(i_3_fu_70_p0) + $signed(32'd1));
assign icmp_ln21_fu_61_p0 = i_2_fu_22;
assign icmp_ln21_fu_61_p2 = (($signed(icmp_ln21_fu_61_p0) > $signed(r_load)) ? 1'b1 : 1'b0);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_26_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 sub,
 factorial_nr_out,
 factorial_nr_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] sub;
output [31:0] factorial_nr_out;
output factorial_nr_out_ap_vld;
reg ap_idle;
reg factorial_nr_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln26_fu_61_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg signed [31:0] i_fu_22;
wire [31:0] i_2_fu_70_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg signed [31:0] factorial_nr_fu_26;
wire [31:0] factorial_nr_1_fu_43_p2;
wire ap_block_pp0_stage0_01001;
wire signed [31:0] icmp_ln26_fu_61_p0;
wire signed [31:0] i_2_fu_70_p0;
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
#0 i_fu_22 = 32'd0;
#0 factorial_nr_fu_26 = 32'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U8(
 .din0(i_fu_22),
 .din1(factorial_nr_fu_26),
 .dout(factorial_nr_1_fu_43_p2)
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
 factorial_nr_fu_26 <= 32'd1;
 end else if (((icmp_ln26_fu_61_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 factorial_nr_fu_26 <= factorial_nr_1_fu_43_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_fu_22 <= 32'd1;
 end else if (((icmp_ln26_fu_61_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_fu_22 <= i_2_fu_70_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln26_fu_61_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((ap_loop_exit_ready == 1'b1) & (icmp_ln26_fu_61_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 factorial_nr_out_ap_vld = 1'b1;
 end else begin
 factorial_nr_out_ap_vld = 1'b0;
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
assign factorial_nr_out = factorial_nr_fu_26;
assign i_2_fu_70_p0 = i_fu_22;
assign i_2_fu_70_p2 = ($signed(i_2_fu_70_p0) + $signed(32'd1));
assign icmp_ln26_fu_61_p0 = i_fu_22;
assign icmp_ln26_fu_61_p2 = (($signed(icmp_ln26_fu_61_p0) > $signed(sub)) ? 1'b1 : 1'b0);
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
 module entry_point_mul_32s_32s_32_1_1(din0, din1, dout);
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
module entry_point_udiv_32ns_32ns_32_36_seq_1_divseq
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
wire [in0_WIDTH-1:0] dividend_tmp_gen;
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
assign dividend_tmp_gen = (in0_WIDTH == 1) ? ~cal_tmp[cal_WIDTH] : {dividend_tmp_mux[in0_WIDTH-2:0], ~cal_tmp[cal_WIDTH]}; 
assign comb_tmp = (in0_WIDTH == 1) ? dividend_tmp_mux[0] : {remd_tmp_mux[in0_WIDTH-2:0], dividend_tmp_mux[in0_WIDTH-1]};
assign cal_tmp = {1'b0, comb_tmp} - {1'b0, divisor0};
always @(posedge clk)
begin
 if (ce) begin
 dividend_tmp <= dividend_tmp_gen;
 remd_tmp <= cal_tmp[cal_WIDTH]? comb_tmp : cal_tmp[in0_WIDTH-1:0];
 end
end
endmodule
module entry_point_udiv_32ns_32ns_32_36_seq_1
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
entry_point_udiv_32ns_32ns_32_36_seq_1_divseq #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_udiv_32ns_32ns_32_36_seq_1_divseq_u (
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
assign dout = quot;
endmodule
