module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 number,
 searchDigit,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 ap_return
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] number;
input [31:0] searchDigit;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] ap_return;
reg ap_idle;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_enable_reg_pp0_iter2;
reg ap_enable_reg_pp0_iter3;
reg ap_enable_reg_pp0_iter4;
reg ap_enable_reg_pp0_iter5;
reg ap_enable_reg_pp0_iter6;
reg ap_enable_reg_pp0_iter7;
reg ap_enable_reg_pp0_iter8;
reg ap_enable_reg_pp0_iter9;
reg ap_enable_reg_pp0_iter10;
reg ap_enable_reg_pp0_iter11;
reg ap_enable_reg_pp0_iter12;
reg ap_enable_reg_pp0_iter13;
reg ap_enable_reg_pp0_iter14;
reg ap_enable_reg_pp0_iter15;
reg ap_enable_reg_pp0_iter16;
reg ap_enable_reg_pp0_iter17;
reg ap_enable_reg_pp0_iter18;
reg ap_enable_reg_pp0_iter19;
reg ap_enable_reg_pp0_iter20;
reg ap_enable_reg_pp0_iter21;
reg ap_enable_reg_pp0_iter22;
reg ap_enable_reg_pp0_iter23;
reg ap_enable_reg_pp0_iter24;
reg ap_enable_reg_pp0_iter25;
reg ap_enable_reg_pp0_iter26;
reg ap_enable_reg_pp0_iter27;
reg ap_enable_reg_pp0_iter28;
reg ap_enable_reg_pp0_iter29;
reg ap_enable_reg_pp0_iter30;
reg ap_enable_reg_pp0_iter31;
reg ap_enable_reg_pp0_iter32;
reg ap_enable_reg_pp0_iter33;
reg ap_enable_reg_pp0_iter34;
reg ap_enable_reg_pp0_iter35;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_state3_pp0_stage0_iter2;
wire ap_block_state4_pp0_stage0_iter3;
wire ap_block_state5_pp0_stage0_iter4;
wire ap_block_state6_pp0_stage0_iter5;
wire ap_block_state7_pp0_stage0_iter6;
wire ap_block_state8_pp0_stage0_iter7;
wire ap_block_state9_pp0_stage0_iter8;
wire ap_block_state10_pp0_stage0_iter9;
wire ap_block_state11_pp0_stage0_iter10;
wire ap_block_state12_pp0_stage0_iter11;
wire ap_block_state13_pp0_stage0_iter12;
wire ap_block_state14_pp0_stage0_iter13;
wire ap_block_state15_pp0_stage0_iter14;
wire ap_block_state16_pp0_stage0_iter15;
wire ap_block_state17_pp0_stage0_iter16;
wire ap_block_state18_pp0_stage0_iter17;
wire ap_block_state19_pp0_stage0_iter18;
wire ap_block_state20_pp0_stage0_iter19;
wire ap_block_state21_pp0_stage0_iter20;
wire ap_block_state22_pp0_stage0_iter21;
wire ap_block_state23_pp0_stage0_iter22;
wire ap_block_state24_pp0_stage0_iter23;
wire ap_block_state25_pp0_stage0_iter24;
wire ap_block_state26_pp0_stage0_iter25;
wire ap_block_state27_pp0_stage0_iter26;
wire ap_block_state28_pp0_stage0_iter27;
wire ap_block_state29_pp0_stage0_iter28;
wire ap_block_state30_pp0_stage0_iter29;
wire ap_block_state31_pp0_stage0_iter30;
wire ap_block_state32_pp0_stage0_iter31;
wire ap_block_state33_pp0_stage0_iter32;
wire ap_block_state34_pp0_stage0_iter33;
wire ap_block_state35_pp0_stage0_iter34;
wire ap_block_state36_pp0_stage0_iter35;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln13_fu_192_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg [31:0] temp_reg_245;
reg [31:0] temp_reg_245_pp0_iter1_reg;
reg [31:0] temp_reg_245_pp0_iter2_reg;
reg [31:0] temp_reg_245_pp0_iter3_reg;
reg [31:0] temp_reg_245_pp0_iter4_reg;
reg [31:0] temp_reg_245_pp0_iter5_reg;
reg [31:0] temp_reg_245_pp0_iter6_reg;
reg [31:0] temp_reg_245_pp0_iter7_reg;
reg [31:0] temp_reg_245_pp0_iter8_reg;
reg [31:0] temp_reg_245_pp0_iter9_reg;
reg [31:0] temp_reg_245_pp0_iter10_reg;
reg [31:0] temp_reg_245_pp0_iter11_reg;
reg [31:0] temp_reg_245_pp0_iter12_reg;
reg [31:0] temp_reg_245_pp0_iter13_reg;
reg [31:0] temp_reg_245_pp0_iter14_reg;
reg [31:0] temp_reg_245_pp0_iter15_reg;
reg [31:0] temp_reg_245_pp0_iter16_reg;
reg [31:0] temp_reg_245_pp0_iter17_reg;
reg [31:0] temp_reg_245_pp0_iter18_reg;
reg [31:0] temp_reg_245_pp0_iter19_reg;
reg [31:0] temp_reg_245_pp0_iter20_reg;
reg [31:0] temp_reg_245_pp0_iter21_reg;
reg [31:0] temp_reg_245_pp0_iter22_reg;
reg [31:0] temp_reg_245_pp0_iter23_reg;
reg [31:0] temp_reg_245_pp0_iter24_reg;
reg [31:0] temp_reg_245_pp0_iter25_reg;
reg [31:0] temp_reg_245_pp0_iter26_reg;
reg [31:0] temp_reg_245_pp0_iter27_reg;
reg [31:0] temp_reg_245_pp0_iter28_reg;
reg [31:0] temp_reg_245_pp0_iter29_reg;
reg [31:0] temp_reg_245_pp0_iter30_reg;
reg [31:0] temp_reg_245_pp0_iter31_reg;
reg [31:0] temp_reg_245_pp0_iter32_reg;
reg [31:0] temp_reg_245_pp0_iter33_reg;
reg [31:0] temp_reg_245_pp0_iter34_reg;
reg [31:0] searchDigit_read_reg_250;
reg [31:0] searchDigit_read_reg_250_pp0_iter1_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter2_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter3_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter4_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter5_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter6_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter7_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter8_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter9_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter10_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter11_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter12_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter13_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter14_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter15_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter16_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter17_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter18_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter19_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter20_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter21_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter22_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter23_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter24_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter25_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter26_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter27_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter28_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter29_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter30_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter31_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter32_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter33_reg;
reg [31:0] searchDigit_read_reg_250_pp0_iter34_reg;
reg [0:0] icmp_ln13_reg_261;
reg [0:0] icmp_ln13_reg_261_pp0_iter1_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter2_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter3_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter4_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter5_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter6_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter7_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter8_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter9_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter10_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter11_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter12_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter13_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter14_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter15_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter16_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter17_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter18_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter19_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter20_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter21_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter22_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter23_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter24_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter25_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter26_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter27_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter28_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter29_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter30_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter31_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter32_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter33_reg;
reg [0:0] icmp_ln13_reg_261_pp0_iter34_reg;
reg [31:0] temp_1_fu_58;
wire [31:0] temp_4_fu_184_p3;
wire ap_loop_init;
reg signed [31:0] ap_sig_allocacmp_temp_3;
wire ap_block_pp0_stage0;
reg [31:0] count_fu_62;
wire [31:0] count_3_fu_217_p3;
wire ap_block_pp0_stage0_01001;
wire [4:0] grp_fu_112_p1;
wire [33:0] mul_ln12_fu_122_p1;
wire [64:0] mul_ln12_fu_122_p2;
wire signed [31:0] tmp_fu_134_p1;
wire [64:0] sub_ln12_fu_128_p2;
wire signed [28:0] tmp_3_fu_152_p4;
wire [0:0] tmp_fu_134_p3;
wire [28:0] tmp_2_fu_142_p4;
wire [28:0] select_ln12_1_fu_166_p3;
wire signed [31:0] sext_ln12_2_fu_174_p1;
wire [31:0] sub_ln12_1_fu_178_p2;
wire signed [31:0] sext_ln12_1_fu_162_p1;
wire signed [31:0] icmp_ln13_fu_192_p0;
wire [31:0] grp_fu_112_p2;
wire [0:0] icmp_ln9_fu_206_p2;
wire [31:0] add_ln10_fu_211_p2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg ap_loop_exit_ready_pp0_iter1_reg;
reg ap_loop_exit_ready_pp0_iter2_reg;
reg ap_loop_exit_ready_pp0_iter3_reg;
reg ap_loop_exit_ready_pp0_iter4_reg;
reg ap_loop_exit_ready_pp0_iter5_reg;
reg ap_loop_exit_ready_pp0_iter6_reg;
reg ap_loop_exit_ready_pp0_iter7_reg;
reg ap_loop_exit_ready_pp0_iter8_reg;
reg ap_loop_exit_ready_pp0_iter9_reg;
reg ap_loop_exit_ready_pp0_iter10_reg;
reg ap_loop_exit_ready_pp0_iter11_reg;
reg ap_loop_exit_ready_pp0_iter12_reg;
reg ap_loop_exit_ready_pp0_iter13_reg;
reg ap_loop_exit_ready_pp0_iter14_reg;
reg ap_loop_exit_ready_pp0_iter15_reg;
reg ap_loop_exit_ready_pp0_iter16_reg;
reg ap_loop_exit_ready_pp0_iter17_reg;
reg ap_loop_exit_ready_pp0_iter18_reg;
reg ap_loop_exit_ready_pp0_iter19_reg;
reg ap_loop_exit_ready_pp0_iter20_reg;
reg ap_loop_exit_ready_pp0_iter21_reg;
reg ap_loop_exit_ready_pp0_iter22_reg;
reg ap_loop_exit_ready_pp0_iter23_reg;
reg ap_loop_exit_ready_pp0_iter24_reg;
reg ap_loop_exit_ready_pp0_iter25_reg;
reg ap_loop_exit_ready_pp0_iter26_reg;
reg ap_loop_exit_ready_pp0_iter27_reg;
reg ap_loop_exit_ready_pp0_iter28_reg;
reg ap_loop_exit_ready_pp0_iter29_reg;
reg ap_loop_exit_ready_pp0_iter30_reg;
reg ap_loop_exit_ready_pp0_iter31_reg;
reg ap_loop_exit_ready_pp0_iter32_reg;
reg ap_loop_exit_ready_pp0_iter33_reg;
reg ap_loop_exit_ready_pp0_iter34_reg;
reg ap_loop_exit_ready_pp0_iter35_reg;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
reg ap_condition_384;
reg ap_condition_233;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter24 = 1'b0;
#0 ap_enable_reg_pp0_iter25 = 1'b0;
#0 ap_enable_reg_pp0_iter26 = 1'b0;
#0 ap_enable_reg_pp0_iter27 = 1'b0;
#0 ap_enable_reg_pp0_iter28 = 1'b0;
#0 ap_enable_reg_pp0_iter29 = 1'b0;
#0 ap_enable_reg_pp0_iter30 = 1'b0;
#0 ap_enable_reg_pp0_iter31 = 1'b0;
#0 ap_enable_reg_pp0_iter32 = 1'b0;
#0 ap_enable_reg_pp0_iter33 = 1'b0;
#0 ap_enable_reg_pp0_iter34 = 1'b0;
#0 ap_enable_reg_pp0_iter35 = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_srem_32s_5ns_32_36_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 5 ),
 .dout_WIDTH( 32 ))
srem_32s_5ns_32_36_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(ap_sig_allocacmp_temp_3),
 .din1(grp_fu_112_p1),
 .ce(1'b1),
 .dout(grp_fu_112_p2)
);
entry_point_mul_32s_34ns_65_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 34 ),
 .dout_WIDTH( 65 ))
mul_32s_34ns_65_1_1_U2(
 .din0(ap_sig_allocacmp_temp_3),
 .din1(mul_ln12_fu_122_p1),
 .dout(mul_ln12_fu_122_p2)
);
entry_point_flow_control_loop_pipe flow_control_loop_pipe_U(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(ap_start),
 .ap_ready(ap_ready),
 .ap_done(ap_done),
 .ap_start_int(ap_start_int),
 .ap_loop_init(ap_loop_init),
 .ap_ready_int(ap_ready_int),
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
 .ap_loop_exit_done(ap_done_int),
 .ap_continue_int(ap_continue_int),
 .ap_done_int(ap_done_int),
 .ap_continue(1'b1)
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
 end else if (((ap_loop_exit_ready_pp0_iter35_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_enable_reg_pp0_iter1 <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter10 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter11 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter12 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter13 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter14 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter15 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter16 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter17 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter18 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter19 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter2 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter20 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter21 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter22 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter23 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter24 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter24 <= ap_enable_reg_pp0_iter23;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter25 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter25 <= ap_enable_reg_pp0_iter24;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter26 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter26 <= ap_enable_reg_pp0_iter25;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter27 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter27 <= ap_enable_reg_pp0_iter26;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter28 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter28 <= ap_enable_reg_pp0_iter27;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter29 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter29 <= ap_enable_reg_pp0_iter28;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter3 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter30 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter30 <= ap_enable_reg_pp0_iter29;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter31 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter31 <= ap_enable_reg_pp0_iter30;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter32 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter32 <= ap_enable_reg_pp0_iter31;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter33 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter33 <= ap_enable_reg_pp0_iter32;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter34 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter34 <= ap_enable_reg_pp0_iter33;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter35 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter35 <= ap_enable_reg_pp0_iter34;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter4 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter5 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter6 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter7 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter8 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter9 <= 1'b0;
 end else begin
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_loop_exit_ready_pp0_iter34_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_loop_exit_ready_pp0_iter35_reg <= 1'b0;
 end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 ap_loop_exit_ready_pp0_iter35_reg <= ap_loop_exit_ready_pp0_iter34_reg;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 if ((1'b1 == ap_condition_384)) begin
 count_fu_62 <= 32'd0;
 end else if (((icmp_ln13_reg_261_pp0_iter34_reg == 1'd1) & (ap_enable_reg_pp0_iter35 == 1'b1))) begin
 count_fu_62 <= count_3_fu_217_p3;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_condition_233)) begin
 if ((icmp_ln13_fu_192_p2 == 1'd1)) begin
 temp_1_fu_58 <= temp_4_fu_184_p3;
 end else if ((ap_loop_init == 1'b1)) begin
 temp_1_fu_58 <= number;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
 ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
 ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
 ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
 ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
 ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
 ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
 ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
 ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
 ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
 ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
 ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
 ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
 ap_loop_exit_ready_pp0_iter23_reg <= ap_loop_exit_ready_pp0_iter22_reg;
 ap_loop_exit_ready_pp0_iter24_reg <= ap_loop_exit_ready_pp0_iter23_reg;
 ap_loop_exit_ready_pp0_iter25_reg <= ap_loop_exit_ready_pp0_iter24_reg;
 ap_loop_exit_ready_pp0_iter26_reg <= ap_loop_exit_ready_pp0_iter25_reg;
 ap_loop_exit_ready_pp0_iter27_reg <= ap_loop_exit_ready_pp0_iter26_reg;
 ap_loop_exit_ready_pp0_iter28_reg <= ap_loop_exit_ready_pp0_iter27_reg;
 ap_loop_exit_ready_pp0_iter29_reg <= ap_loop_exit_ready_pp0_iter28_reg;
 ap_loop_exit_ready_pp0_iter30_reg <= ap_loop_exit_ready_pp0_iter29_reg;
 ap_loop_exit_ready_pp0_iter31_reg <= ap_loop_exit_ready_pp0_iter30_reg;
 ap_loop_exit_ready_pp0_iter32_reg <= ap_loop_exit_ready_pp0_iter31_reg;
 ap_loop_exit_ready_pp0_iter33_reg <= ap_loop_exit_ready_pp0_iter32_reg;
 ap_loop_exit_ready_pp0_iter34_reg <= ap_loop_exit_ready_pp0_iter33_reg;
 ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
 ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
 ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
 ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
 ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
 ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
 ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
 icmp_ln13_reg_261_pp0_iter10_reg <= icmp_ln13_reg_261_pp0_iter9_reg;
 icmp_ln13_reg_261_pp0_iter11_reg <= icmp_ln13_reg_261_pp0_iter10_reg;
 icmp_ln13_reg_261_pp0_iter12_reg <= icmp_ln13_reg_261_pp0_iter11_reg;
 icmp_ln13_reg_261_pp0_iter13_reg <= icmp_ln13_reg_261_pp0_iter12_reg;
 icmp_ln13_reg_261_pp0_iter14_reg <= icmp_ln13_reg_261_pp0_iter13_reg;
 icmp_ln13_reg_261_pp0_iter15_reg <= icmp_ln13_reg_261_pp0_iter14_reg;
 icmp_ln13_reg_261_pp0_iter16_reg <= icmp_ln13_reg_261_pp0_iter15_reg;
 icmp_ln13_reg_261_pp0_iter17_reg <= icmp_ln13_reg_261_pp0_iter16_reg;
 icmp_ln13_reg_261_pp0_iter18_reg <= icmp_ln13_reg_261_pp0_iter17_reg;
 icmp_ln13_reg_261_pp0_iter19_reg <= icmp_ln13_reg_261_pp0_iter18_reg;
 icmp_ln13_reg_261_pp0_iter20_reg <= icmp_ln13_reg_261_pp0_iter19_reg;
 icmp_ln13_reg_261_pp0_iter21_reg <= icmp_ln13_reg_261_pp0_iter20_reg;
 icmp_ln13_reg_261_pp0_iter22_reg <= icmp_ln13_reg_261_pp0_iter21_reg;
 icmp_ln13_reg_261_pp0_iter23_reg <= icmp_ln13_reg_261_pp0_iter22_reg;
 icmp_ln13_reg_261_pp0_iter24_reg <= icmp_ln13_reg_261_pp0_iter23_reg;
 icmp_ln13_reg_261_pp0_iter25_reg <= icmp_ln13_reg_261_pp0_iter24_reg;
 icmp_ln13_reg_261_pp0_iter26_reg <= icmp_ln13_reg_261_pp0_iter25_reg;
 icmp_ln13_reg_261_pp0_iter27_reg <= icmp_ln13_reg_261_pp0_iter26_reg;
 icmp_ln13_reg_261_pp0_iter28_reg <= icmp_ln13_reg_261_pp0_iter27_reg;
 icmp_ln13_reg_261_pp0_iter29_reg <= icmp_ln13_reg_261_pp0_iter28_reg;
 icmp_ln13_reg_261_pp0_iter2_reg <= icmp_ln13_reg_261_pp0_iter1_reg;
 icmp_ln13_reg_261_pp0_iter30_reg <= icmp_ln13_reg_261_pp0_iter29_reg;
 icmp_ln13_reg_261_pp0_iter31_reg <= icmp_ln13_reg_261_pp0_iter30_reg;
 icmp_ln13_reg_261_pp0_iter32_reg <= icmp_ln13_reg_261_pp0_iter31_reg;
 icmp_ln13_reg_261_pp0_iter33_reg <= icmp_ln13_reg_261_pp0_iter32_reg;
 icmp_ln13_reg_261_pp0_iter34_reg <= icmp_ln13_reg_261_pp0_iter33_reg;
 icmp_ln13_reg_261_pp0_iter3_reg <= icmp_ln13_reg_261_pp0_iter2_reg;
 icmp_ln13_reg_261_pp0_iter4_reg <= icmp_ln13_reg_261_pp0_iter3_reg;
 icmp_ln13_reg_261_pp0_iter5_reg <= icmp_ln13_reg_261_pp0_iter4_reg;
 icmp_ln13_reg_261_pp0_iter6_reg <= icmp_ln13_reg_261_pp0_iter5_reg;
 icmp_ln13_reg_261_pp0_iter7_reg <= icmp_ln13_reg_261_pp0_iter6_reg;
 icmp_ln13_reg_261_pp0_iter8_reg <= icmp_ln13_reg_261_pp0_iter7_reg;
 icmp_ln13_reg_261_pp0_iter9_reg <= icmp_ln13_reg_261_pp0_iter8_reg;
 searchDigit_read_reg_250_pp0_iter10_reg <= searchDigit_read_reg_250_pp0_iter9_reg;
 searchDigit_read_reg_250_pp0_iter11_reg <= searchDigit_read_reg_250_pp0_iter10_reg;
 searchDigit_read_reg_250_pp0_iter12_reg <= searchDigit_read_reg_250_pp0_iter11_reg;
 searchDigit_read_reg_250_pp0_iter13_reg <= searchDigit_read_reg_250_pp0_iter12_reg;
 searchDigit_read_reg_250_pp0_iter14_reg <= searchDigit_read_reg_250_pp0_iter13_reg;
 searchDigit_read_reg_250_pp0_iter15_reg <= searchDigit_read_reg_250_pp0_iter14_reg;
 searchDigit_read_reg_250_pp0_iter16_reg <= searchDigit_read_reg_250_pp0_iter15_reg;
 searchDigit_read_reg_250_pp0_iter17_reg <= searchDigit_read_reg_250_pp0_iter16_reg;
 searchDigit_read_reg_250_pp0_iter18_reg <= searchDigit_read_reg_250_pp0_iter17_reg;
 searchDigit_read_reg_250_pp0_iter19_reg <= searchDigit_read_reg_250_pp0_iter18_reg;
 searchDigit_read_reg_250_pp0_iter20_reg <= searchDigit_read_reg_250_pp0_iter19_reg;
 searchDigit_read_reg_250_pp0_iter21_reg <= searchDigit_read_reg_250_pp0_iter20_reg;
 searchDigit_read_reg_250_pp0_iter22_reg <= searchDigit_read_reg_250_pp0_iter21_reg;
 searchDigit_read_reg_250_pp0_iter23_reg <= searchDigit_read_reg_250_pp0_iter22_reg;
 searchDigit_read_reg_250_pp0_iter24_reg <= searchDigit_read_reg_250_pp0_iter23_reg;
 searchDigit_read_reg_250_pp0_iter25_reg <= searchDigit_read_reg_250_pp0_iter24_reg;
 searchDigit_read_reg_250_pp0_iter26_reg <= searchDigit_read_reg_250_pp0_iter25_reg;
 searchDigit_read_reg_250_pp0_iter27_reg <= searchDigit_read_reg_250_pp0_iter26_reg;
 searchDigit_read_reg_250_pp0_iter28_reg <= searchDigit_read_reg_250_pp0_iter27_reg;
 searchDigit_read_reg_250_pp0_iter29_reg <= searchDigit_read_reg_250_pp0_iter28_reg;
 searchDigit_read_reg_250_pp0_iter2_reg <= searchDigit_read_reg_250_pp0_iter1_reg;
 searchDigit_read_reg_250_pp0_iter30_reg <= searchDigit_read_reg_250_pp0_iter29_reg;
 searchDigit_read_reg_250_pp0_iter31_reg <= searchDigit_read_reg_250_pp0_iter30_reg;
 searchDigit_read_reg_250_pp0_iter32_reg <= searchDigit_read_reg_250_pp0_iter31_reg;
 searchDigit_read_reg_250_pp0_iter33_reg <= searchDigit_read_reg_250_pp0_iter32_reg;
 searchDigit_read_reg_250_pp0_iter34_reg <= searchDigit_read_reg_250_pp0_iter33_reg;
 searchDigit_read_reg_250_pp0_iter3_reg <= searchDigit_read_reg_250_pp0_iter2_reg;
 searchDigit_read_reg_250_pp0_iter4_reg <= searchDigit_read_reg_250_pp0_iter3_reg;
 searchDigit_read_reg_250_pp0_iter5_reg <= searchDigit_read_reg_250_pp0_iter4_reg;
 searchDigit_read_reg_250_pp0_iter6_reg <= searchDigit_read_reg_250_pp0_iter5_reg;
 searchDigit_read_reg_250_pp0_iter7_reg <= searchDigit_read_reg_250_pp0_iter6_reg;
 searchDigit_read_reg_250_pp0_iter8_reg <= searchDigit_read_reg_250_pp0_iter7_reg;
 searchDigit_read_reg_250_pp0_iter9_reg <= searchDigit_read_reg_250_pp0_iter8_reg;
 temp_reg_245_pp0_iter10_reg <= temp_reg_245_pp0_iter9_reg;
 temp_reg_245_pp0_iter11_reg <= temp_reg_245_pp0_iter10_reg;
 temp_reg_245_pp0_iter12_reg <= temp_reg_245_pp0_iter11_reg;
 temp_reg_245_pp0_iter13_reg <= temp_reg_245_pp0_iter12_reg;
 temp_reg_245_pp0_iter14_reg <= temp_reg_245_pp0_iter13_reg;
 temp_reg_245_pp0_iter15_reg <= temp_reg_245_pp0_iter14_reg;
 temp_reg_245_pp0_iter16_reg <= temp_reg_245_pp0_iter15_reg;
 temp_reg_245_pp0_iter17_reg <= temp_reg_245_pp0_iter16_reg;
 temp_reg_245_pp0_iter18_reg <= temp_reg_245_pp0_iter17_reg;
 temp_reg_245_pp0_iter19_reg <= temp_reg_245_pp0_iter18_reg;
 temp_reg_245_pp0_iter20_reg <= temp_reg_245_pp0_iter19_reg;
 temp_reg_245_pp0_iter21_reg <= temp_reg_245_pp0_iter20_reg;
 temp_reg_245_pp0_iter22_reg <= temp_reg_245_pp0_iter21_reg;
 temp_reg_245_pp0_iter23_reg <= temp_reg_245_pp0_iter22_reg;
 temp_reg_245_pp0_iter24_reg <= temp_reg_245_pp0_iter23_reg;
 temp_reg_245_pp0_iter25_reg <= temp_reg_245_pp0_iter24_reg;
 temp_reg_245_pp0_iter26_reg <= temp_reg_245_pp0_iter25_reg;
 temp_reg_245_pp0_iter27_reg <= temp_reg_245_pp0_iter26_reg;
 temp_reg_245_pp0_iter28_reg <= temp_reg_245_pp0_iter27_reg;
 temp_reg_245_pp0_iter29_reg <= temp_reg_245_pp0_iter28_reg;
 temp_reg_245_pp0_iter2_reg <= temp_reg_245_pp0_iter1_reg;
 temp_reg_245_pp0_iter30_reg <= temp_reg_245_pp0_iter29_reg;
 temp_reg_245_pp0_iter31_reg <= temp_reg_245_pp0_iter30_reg;
 temp_reg_245_pp0_iter32_reg <= temp_reg_245_pp0_iter31_reg;
 temp_reg_245_pp0_iter33_reg <= temp_reg_245_pp0_iter32_reg;
 temp_reg_245_pp0_iter34_reg <= temp_reg_245_pp0_iter33_reg;
 temp_reg_245_pp0_iter3_reg <= temp_reg_245_pp0_iter2_reg;
 temp_reg_245_pp0_iter4_reg <= temp_reg_245_pp0_iter3_reg;
 temp_reg_245_pp0_iter5_reg <= temp_reg_245_pp0_iter4_reg;
 temp_reg_245_pp0_iter6_reg <= temp_reg_245_pp0_iter5_reg;
 temp_reg_245_pp0_iter7_reg <= temp_reg_245_pp0_iter6_reg;
 temp_reg_245_pp0_iter8_reg <= temp_reg_245_pp0_iter7_reg;
 temp_reg_245_pp0_iter9_reg <= temp_reg_245_pp0_iter8_reg;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
 ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
 ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
 icmp_ln13_reg_261 <= icmp_ln13_fu_192_p2;
 icmp_ln13_reg_261_pp0_iter1_reg <= icmp_ln13_reg_261;
 searchDigit_read_reg_250_pp0_iter1_reg <= searchDigit_read_reg_250;
 temp_reg_245_pp0_iter1_reg <= temp_reg_245;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
 searchDigit_read_reg_250 <= searchDigit;
 temp_reg_245 <= number;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln13_fu_192_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready_pp0_iter35_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_idle_pp0 == 1'b1))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter35 == 1'b0) & (ap_enable_reg_pp0_iter34 == 1'b0) & (ap_enable_reg_pp0_iter33 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0))) begin
 ap_idle_pp0 = 1'b1;
 end else begin
 ap_idle_pp0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
 ap_sig_allocacmp_temp_3 = number;
 end else begin
 ap_sig_allocacmp_temp_3 = temp_1_fu_58;
 end
end
always @ (*) begin
 if (((icmp_ln13_reg_261_pp0_iter34_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln13_reg_261_pp0_iter34_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln13_reg_261_pp0_iter34_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
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
assign add_ln10_fu_211_p2 = (count_fu_62 + 32'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);
assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);
assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);
assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);
assign ap_block_state14_pp0_stage0_iter13 = ~(1'b1 == 1'b1);
assign ap_block_state15_pp0_stage0_iter14 = ~(1'b1 == 1'b1);
assign ap_block_state16_pp0_stage0_iter15 = ~(1'b1 == 1'b1);
assign ap_block_state17_pp0_stage0_iter16 = ~(1'b1 == 1'b1);
assign ap_block_state18_pp0_stage0_iter17 = ~(1'b1 == 1'b1);
assign ap_block_state19_pp0_stage0_iter18 = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state20_pp0_stage0_iter19 = ~(1'b1 == 1'b1);
assign ap_block_state21_pp0_stage0_iter20 = ~(1'b1 == 1'b1);
assign ap_block_state22_pp0_stage0_iter21 = ~(1'b1 == 1'b1);
assign ap_block_state23_pp0_stage0_iter22 = ~(1'b1 == 1'b1);
assign ap_block_state24_pp0_stage0_iter23 = ~(1'b1 == 1'b1);
assign ap_block_state25_pp0_stage0_iter24 = ~(1'b1 == 1'b1);
assign ap_block_state26_pp0_stage0_iter25 = ~(1'b1 == 1'b1);
assign ap_block_state27_pp0_stage0_iter26 = ~(1'b1 == 1'b1);
assign ap_block_state28_pp0_stage0_iter27 = ~(1'b1 == 1'b1);
assign ap_block_state29_pp0_stage0_iter28 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state30_pp0_stage0_iter29 = ~(1'b1 == 1'b1);
assign ap_block_state31_pp0_stage0_iter30 = ~(1'b1 == 1'b1);
assign ap_block_state32_pp0_stage0_iter31 = ~(1'b1 == 1'b1);
assign ap_block_state33_pp0_stage0_iter32 = ~(1'b1 == 1'b1);
assign ap_block_state34_pp0_stage0_iter33 = ~(1'b1 == 1'b1);
assign ap_block_state35_pp0_stage0_iter34 = ~(1'b1 == 1'b1);
assign ap_block_state36_pp0_stage0_iter35 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);
assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);
assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);
assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);
assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);
assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);
assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);
always @ (*) begin
 ap_condition_233 = ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001));
end
always @ (*) begin
 ap_condition_384 = ((ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_return = 32'd0;
assign count_3_fu_217_p3 = ((icmp_ln9_fu_206_p2[0:0] == 1'b1) ? add_ln10_fu_211_p2 : count_fu_62);
assign grp_fu_112_p1 = 32'd10;
assign icmp_ln13_fu_192_p0 = ap_sig_allocacmp_temp_3;
assign icmp_ln13_fu_192_p2 = (($signed(icmp_ln13_fu_192_p0) > $signed(32'd9)) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_206_p2 = ((grp_fu_112_p2 == searchDigit_read_reg_250_pp0_iter34_reg) ? 1'b1 : 1'b0);
assign mul_ln12_fu_122_p1 = 65'd6871947674;
assign select_ln12_1_fu_166_p3 = ((tmp_fu_134_p3[0:0] == 1'b1) ? tmp_2_fu_142_p4 : tmp_3_fu_152_p4);
assign sext_ln12_1_fu_162_p1 = tmp_3_fu_152_p4;
assign sext_ln12_2_fu_174_p1 = $signed(select_ln12_1_fu_166_p3);
assign sub_ln12_1_fu_178_p2 = ($signed(32'd0) - $signed(sext_ln12_2_fu_174_p1));
assign sub_ln12_fu_128_p2 = (65'd0 - mul_ln12_fu_122_p2);
assign temp_4_fu_184_p3 = ((tmp_fu_134_p3[0:0] == 1'b1) ? sub_ln12_1_fu_178_p2 : sext_ln12_1_fu_162_p1);
assign temptemp1 = searchDigit_read_reg_250_pp0_iter34_reg;
assign temptemp2 = temp_reg_245_pp0_iter34_reg;
assign temptemp3 = ((icmp_ln9_fu_206_p2[0:0] == 1'b1) ? add_ln10_fu_211_p2 : count_fu_62);
assign tmp_2_fu_142_p4 = {{sub_ln12_fu_128_p2[64:36]}};
assign tmp_3_fu_152_p4 = {{mul_ln12_fu_122_p2[64:36]}};
assign tmp_fu_134_p1 = ap_sig_allocacmp_temp_3;
assign tmp_fu_134_p3 = tmp_fu_134_p1[32'd31];
endmodule
module entry_point_flow_control_loop_pipe(
 ap_clk,
 ap_rst,
 ap_start,
 ap_ready,
 ap_done,
 ap_continue,
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
input ap_continue;
output ap_start_int;
input ap_ready_int;
input ap_done_int;
output ap_continue_int;
output ap_loop_init;
reg ap_loop_init;
input ap_loop_exit_ready;
input ap_loop_exit_done;
initial begin
#0 ap_loop_init = 1'b1;
end
assign ap_start_int = ap_start;
assign ap_continue_int = ap_continue;
assign ap_done = ap_loop_exit_done;
assign ap_ready = ap_loop_exit_ready;
always @ (posedge ap_clk)
begin
 if (ap_rst == 1'b1) begin
 ap_loop_init <= 1'b1;
 end else if(ap_loop_exit_ready == 1'b1) begin
 ap_loop_init <= 1'b1;
 end else if(ap_ready_int == 1'b1) begin
 ap_loop_init <= 1'b0;
 end
end
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
assign dout = $signed(din0) * $signed({1'b0, din1});
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
