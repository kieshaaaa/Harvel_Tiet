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
parameter ap_ST_fsm_state1 = 42'd1;
parameter ap_ST_fsm_state2 = 42'd2;
parameter ap_ST_fsm_state3 = 42'd4;
parameter ap_ST_fsm_state4 = 42'd8;
parameter ap_ST_fsm_state5 = 42'd16;
parameter ap_ST_fsm_state6 = 42'd32;
parameter ap_ST_fsm_state7 = 42'd64;
parameter ap_ST_fsm_state8 = 42'd128;
parameter ap_ST_fsm_state9 = 42'd256;
parameter ap_ST_fsm_state10 = 42'd512;
parameter ap_ST_fsm_state11 = 42'd1024;
parameter ap_ST_fsm_state12 = 42'd2048;
parameter ap_ST_fsm_state13 = 42'd4096;
parameter ap_ST_fsm_state14 = 42'd8192;
parameter ap_ST_fsm_state15 = 42'd16384;
parameter ap_ST_fsm_state16 = 42'd32768;
parameter ap_ST_fsm_state17 = 42'd65536;
parameter ap_ST_fsm_state18 = 42'd131072;
parameter ap_ST_fsm_state19 = 42'd262144;
parameter ap_ST_fsm_state20 = 42'd524288;
parameter ap_ST_fsm_state21 = 42'd1048576;
parameter ap_ST_fsm_state22 = 42'd2097152;
parameter ap_ST_fsm_state23 = 42'd4194304;
parameter ap_ST_fsm_state24 = 42'd8388608;
parameter ap_ST_fsm_state25 = 42'd16777216;
parameter ap_ST_fsm_state26 = 42'd33554432;
parameter ap_ST_fsm_state27 = 42'd67108864;
parameter ap_ST_fsm_state28 = 42'd134217728;
parameter ap_ST_fsm_state29 = 42'd268435456;
parameter ap_ST_fsm_state30 = 42'd536870912;
parameter ap_ST_fsm_state31 = 42'd1073741824;
parameter ap_ST_fsm_state32 = 42'd2147483648;
parameter ap_ST_fsm_state33 = 42'd4294967296;
parameter ap_ST_fsm_state34 = 42'd8589934592;
parameter ap_ST_fsm_state35 = 42'd17179869184;
parameter ap_ST_fsm_state36 = 42'd34359738368;
parameter ap_ST_fsm_state37 = 42'd68719476736;
parameter ap_ST_fsm_state38 = 42'd137438953472;
parameter ap_ST_fsm_state39 = 42'd274877906944;
parameter ap_ST_fsm_state40 = 42'd549755813888;
parameter ap_ST_fsm_state41 = 42'd1099511627776;
parameter ap_ST_fsm_state42 = 42'd2199023255552;
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
(* fsm_encoding = "none" *) reg [41:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [0:0] icmp_ln14_fu_140_p2;
reg [0:0] icmp_ln14_reg_251;
wire [31:0] add_ln14_fu_146_p2;
reg [31:0] add_ln14_reg_255;
wire ap_CS_fsm_state3;
wire [0:0] icmp_ln17_fu_157_p2;
reg [0:0] icmp_ln17_reg_267;
wire [31:0] add_ln17_fu_163_p2;
reg [31:0] add_ln17_reg_271;
wire [0:0] icmp_ln20_fu_178_p2;
reg [0:0] icmp_ln20_reg_276;
wire ap_CS_fsm_state5;
wire [31:0] select_ln20_fu_200_p3;
reg [31:0] select_ln20_reg_280;
wire [31:0] mul_ln23_fu_213_p2;
wire ap_CS_fsm_state7;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_fact_n_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_fact_n_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_fact_r_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_fact_r_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_fact_nr_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_fact_nr_out_ap_vld;
reg [31:0] fact_n_0_lcssa_reg_87;
reg signed [31:0] fact_r_0_lcssa_reg_99;
reg signed [31:0] ap_phi_mux_fact_nr_0_lcssa_phi_fu_115_p4;
reg signed [31:0] fact_nr_0_lcssa_reg_111;
reg grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_ap_start_reg;
wire ap_CS_fsm_state4;
reg grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_ap_start_reg;
wire ap_CS_fsm_state6;
wire [31:0] grp_fu_219_p2;
wire ap_CS_fsm_state42;
wire [31:0] sub_fu_174_p2;
wire [31:0] add_ln20_fu_184_p2;
wire [31:0] sub_ln20_fu_189_p2;
wire [0:0] icmp_ln20_1_fu_194_p2;
reg grp_fu_219_ap_start;
wire grp_fu_219_ap_done;
reg [41:0] ap_NS_fsm;
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
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 42'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_14_1 grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_ap_ready),
 .add_ln14(add_ln14_reg_255),
 .fact_n_out(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_fact_n_out),
 .fact_n_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_fact_n_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_17_2 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_ap_ready),
 .add_ln17(add_ln17_reg_271),
 .fact_r_out(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_fact_r_out),
 .fact_r_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_fact_r_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_20_3 grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_ap_ready),
 .select_ln20(select_ln20_reg_280),
 .fact_nr_out(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_fact_nr_out),
 .fact_nr_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_fact_nr_out_ap_vld)
);
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U11(
 .din0(ap_phi_mux_fact_nr_0_lcssa_phi_fu_115_p4),
 .din1(fact_r_0_lcssa_reg_99),
 .dout(mul_ln23_fu_213_p2)
);
entry_point_sdiv_32ns_32ns_32_36_seq_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
sdiv_32ns_32ns_32_36_seq_1_U12(
 .clk(ap_clk),
 .reset(ap_rst),
 .start(grp_fu_219_ap_start),
 .done(grp_fu_219_ap_done),
 .din0(fact_n_0_lcssa_reg_87),
 .din1(mul_ln23_fu_213_p2),
 .ce(1'b1),
 .dout(grp_fu_219_p2)
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
 grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln14_fu_140_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln17_fu_157_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln20_fu_178_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln14_fu_140_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 fact_n_0_lcssa_reg_87 <= 32'd1;
 end else if (((icmp_ln14_reg_251 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 fact_n_0_lcssa_reg_87 <= grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_fact_n_out;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln20_fu_178_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
 fact_nr_0_lcssa_reg_111 <= 32'd1;
 end else if (((icmp_ln20_reg_276 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
 fact_nr_0_lcssa_reg_111 <= grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_fact_nr_out;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln17_fu_157_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 fact_r_0_lcssa_reg_99 <= 32'd1;
 end else if (((icmp_ln17_reg_267 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
 fact_r_0_lcssa_reg_99 <= grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_fact_r_out;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln14_fu_140_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 add_ln14_reg_255 <= add_ln14_fu_146_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln17_fu_157_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 add_ln17_reg_271 <= add_ln17_fu_163_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln14_reg_251 <= icmp_ln14_fu_140_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 icmp_ln17_reg_267 <= icmp_ln17_fu_157_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 icmp_ln20_reg_276 <= icmp_ln20_fu_178_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln20_fu_178_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
 select_ln20_reg_280 <= select_ln20_fu_200_p3;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_ap_done == 1'b0)) begin
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
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_ap_done == 1'b0)) begin
 ap_ST_fsm_state6_blk = 1'b1;
 end else begin
 ap_ST_fsm_state6_blk = 1'b0;
 end
end
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state42)) begin
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
 if (((icmp_ln20_reg_276 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
 ap_phi_mux_fact_nr_0_lcssa_phi_fu_115_p4 = grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_fact_nr_out;
 end else begin
 ap_phi_mux_fact_nr_0_lcssa_phi_fu_115_p4 = fact_nr_0_lcssa_reg_111;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state42)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 grp_fu_219_ap_start = 1'b1;
 end else begin
 grp_fu_219_ap_start = 1'b0;
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
 if ((1'b1 == ap_CS_fsm_state7)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state42)) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((icmp_ln14_fu_140_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else if (((icmp_ln14_fu_140_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((1'b1 == ap_CS_fsm_state2) & (grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_ap_done == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((icmp_ln17_fu_157_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state4 : begin
 if (((1'b1 == ap_CS_fsm_state4) & (grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_ap_done == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state5 : begin
 if (((icmp_ln20_fu_178_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 end
 ap_ST_fsm_state6 : begin
 if (((1'b1 == ap_CS_fsm_state6) & (grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_ap_done == 1'b1))) begin
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
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln14_fu_146_p2 = (n + 32'd1);
assign add_ln17_fu_163_p2 = (r + 32'd1);
assign add_ln20_fu_184_p2 = (n + 32'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state42 = ap_CS_fsm[32'd41];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_122_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_128_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_134_ap_start_reg;
assign icmp_ln14_fu_140_p2 = (($signed(n) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_157_p2 = (($signed(r) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln20_1_fu_194_p2 = ((sub_ln20_fu_189_p2 != 32'd1) ? 1'b1 : 1'b0);
assign icmp_ln20_fu_178_p2 = (($signed(sub_fu_174_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign select_ln20_fu_200_p3 = ((icmp_ln20_1_fu_194_p2[0:0] == 1'b1) ? sub_ln20_fu_189_p2 : 32'd2);
assign sub_fu_174_p2 = (n - r);
assign sub_ln20_fu_189_p2 = (add_ln20_fu_184_p2 - r);
assign temptemp1 = n;
assign temptemp2 = r;
assign temptemp3 = grp_fu_219_p2;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_14_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 add_ln14,
 fact_n_out,
 fact_n_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] add_ln14;
output [31:0] fact_n_out;
output fact_n_out_ap_vld;
reg ap_idle;
reg fact_n_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln14_fu_64_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg signed [31:0] i_fu_30;
wire [31:0] i_5_fu_78_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg signed [31:0] fact_n_fu_34;
wire [31:0] fact_n_1_fu_72_p2;
wire ap_block_pp0_stage0_01001;
wire signed [31:0] icmp_ln14_fu_64_p0;
wire signed [31:0] i_5_fu_78_p0;
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
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U1(
 .din0(i_fu_30),
 .din1(fact_n_fu_34),
 .dout(fact_n_1_fu_72_p2)
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
 fact_n_fu_34 <= 32'd1;
 end else if (((icmp_ln14_fu_64_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 fact_n_fu_34 <= fact_n_1_fu_72_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_fu_30 <= 32'd1;
 end else if (((icmp_ln14_fu_64_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_fu_30 <= i_5_fu_78_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln14_fu_64_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln14_fu_64_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 fact_n_out_ap_vld = 1'b1;
 end else begin
 fact_n_out_ap_vld = 1'b0;
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
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign fact_n_out = fact_n_fu_34;
assign i_5_fu_78_p0 = i_fu_30;
assign i_5_fu_78_p2 = ($signed(i_5_fu_78_p0) + $signed(32'd1));
assign icmp_ln14_fu_64_p0 = i_fu_30;
assign icmp_ln14_fu_64_p2 = ((icmp_ln14_fu_64_p0 == add_ln14) ? 1'b1 : 1'b0);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_17_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 add_ln17,
 fact_r_out,
 fact_r_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] add_ln17;
output [31:0] fact_r_out;
output fact_r_out_ap_vld;
reg ap_idle;
reg fact_r_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln17_fu_64_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg signed [31:0] i_2_fu_30;
wire [31:0] i_3_fu_78_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg signed [31:0] fact_r_fu_34;
wire [31:0] fact_r_1_fu_72_p2;
wire ap_block_pp0_stage0_01001;
wire signed [31:0] icmp_ln17_fu_64_p0;
wire signed [31:0] i_3_fu_78_p0;
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
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U5(
 .din0(i_2_fu_30),
 .din1(fact_r_fu_34),
 .dout(fact_r_1_fu_72_p2)
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
 fact_r_fu_34 <= 32'd1;
 end else if (((icmp_ln17_fu_64_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 fact_r_fu_34 <= fact_r_1_fu_72_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_2_fu_30 <= 32'd1;
 end else if (((icmp_ln17_fu_64_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_2_fu_30 <= i_3_fu_78_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln17_fu_64_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln17_fu_64_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 fact_r_out_ap_vld = 1'b1;
 end else begin
 fact_r_out_ap_vld = 1'b0;
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
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign fact_r_out = fact_r_fu_34;
assign i_3_fu_78_p0 = i_2_fu_30;
assign i_3_fu_78_p2 = ($signed(i_3_fu_78_p0) + $signed(32'd1));
assign icmp_ln17_fu_64_p0 = i_2_fu_30;
assign icmp_ln17_fu_64_p2 = ((icmp_ln17_fu_64_p0 == add_ln17) ? 1'b1 : 1'b0);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_20_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 select_ln20,
 fact_nr_out,
 fact_nr_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] select_ln20;
output [31:0] fact_nr_out;
output fact_nr_out_ap_vld;
reg ap_idle;
reg fact_nr_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln20_fu_56_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg signed [31:0] i_fu_22;
wire [31:0] i_2_fu_70_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg signed [31:0] fact_nr_fu_26;
wire [31:0] fact_nr_1_fu_64_p2;
wire ap_block_pp0_stage0_01001;
wire signed [31:0] icmp_ln20_fu_56_p0;
wire signed [31:0] i_2_fu_70_p0;
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
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U8(
 .din0(i_fu_22),
 .din1(fact_nr_fu_26),
 .dout(fact_nr_1_fu_64_p2)
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
 fact_nr_fu_26 <= 32'd1;
 end else if (((icmp_ln20_fu_56_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 fact_nr_fu_26 <= fact_nr_1_fu_64_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_fu_22 <= 32'd1;
 end else if (((icmp_ln20_fu_56_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_fu_22 <= i_2_fu_70_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln20_fu_56_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln20_fu_56_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 fact_nr_out_ap_vld = 1'b1;
 end else begin
 fact_nr_out_ap_vld = 1'b0;
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
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign fact_nr_out = fact_nr_fu_26;
assign i_2_fu_70_p0 = i_fu_22;
assign i_2_fu_70_p2 = ($signed(i_2_fu_70_p0) + $signed(32'd1));
assign icmp_ln20_fu_56_p0 = i_fu_22;
assign icmp_ln20_fu_56_p2 = ((icmp_ln20_fu_56_p0 == select_ln20) ? 1'b1 : 1'b0);
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
assign dout = $signed(din0) * $signed(din1);
endmodule
module entry_point_sdiv_32ns_32ns_32_36_seq_1_divseq
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
module entry_point_sdiv_32ns_32ns_32_36_seq_1
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
entry_point_sdiv_32ns_32ns_32_36_seq_1_divseq #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_sdiv_32ns_32ns_32_36_seq_1_divseq_u (
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
