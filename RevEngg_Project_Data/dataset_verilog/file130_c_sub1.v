module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 octal_i,
 octal_o,
 octal_o_ap_vld,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 3'd1;
parameter ap_ST_fsm_pp0_stage0 = 3'd2;
parameter ap_ST_fsm_state38 = 3'd4;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] octal_i;
output [31:0] octal_o;
output octal_o_ap_vld;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] octal_o;
reg octal_o_ap_vld;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire ap_CS_fsm_pp0_stage0;
wire ap_block_state2_pp0_stage0_iter0;
wire ap_block_state3_pp0_stage0_iter1;
wire ap_block_state4_pp0_stage0_iter2;
wire ap_block_state5_pp0_stage0_iter3;
wire ap_block_state6_pp0_stage0_iter4;
wire ap_block_state7_pp0_stage0_iter5;
wire ap_block_state8_pp0_stage0_iter6;
wire ap_block_state9_pp0_stage0_iter7;
wire ap_block_state10_pp0_stage0_iter8;
wire ap_block_state11_pp0_stage0_iter9;
wire ap_block_state12_pp0_stage0_iter10;
wire ap_block_state13_pp0_stage0_iter11;
wire ap_block_state14_pp0_stage0_iter12;
wire ap_block_state15_pp0_stage0_iter13;
wire ap_block_state16_pp0_stage0_iter14;
wire ap_block_state17_pp0_stage0_iter15;
wire ap_block_state18_pp0_stage0_iter16;
wire ap_block_state19_pp0_stage0_iter17;
wire ap_block_state20_pp0_stage0_iter18;
wire ap_block_state21_pp0_stage0_iter19;
wire ap_block_state22_pp0_stage0_iter20;
wire ap_block_state23_pp0_stage0_iter21;
wire ap_block_state24_pp0_stage0_iter22;
wire ap_block_state25_pp0_stage0_iter23;
wire ap_block_state26_pp0_stage0_iter24;
wire ap_block_state27_pp0_stage0_iter25;
wire ap_block_state28_pp0_stage0_iter26;
wire ap_block_state29_pp0_stage0_iter27;
wire ap_block_state30_pp0_stage0_iter28;
wire ap_block_state31_pp0_stage0_iter29;
wire ap_block_state32_pp0_stage0_iter30;
wire ap_block_state33_pp0_stage0_iter31;
wire ap_block_state34_pp0_stage0_iter32;
wire ap_block_state35_pp0_stage0_iter33;
wire ap_block_state36_pp0_stage0_iter34;
wire ap_block_state37_pp0_stage0_iter35;
wire ap_block_pp0_stage0_11001;
reg ap_enable_reg_pp0_iter0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln7_fu_106_p2;
reg ap_condition_pp0_exit_iter0_state2;
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
reg [31:0] decimal_fu_52;
wire [31:0] decimal_1_fu_207_p2;
wire ap_block_pp0_stage0;
wire ap_CS_fsm_state38;
reg signed [31:0] base_fu_56;
wire [31:0] base_1_fu_213_p2;
reg signed [31:0] empty_fu_60;
wire [31:0] select_ln7_1_fu_184_p3;
wire ap_block_pp0_stage0_01001;
wire signed [31:0] icmp_ln7_fu_106_p0;
wire [4:0] grp_fu_112_p1;
wire [33:0] mul_ln7_fu_122_p1;
wire [64:0] mul_ln7_fu_122_p2;
wire signed [31:0] tmp_fu_134_p1;
wire [64:0] sub_ln7_fu_128_p2;
wire signed [28:0] tmp_3_fu_152_p4;
wire [0:0] tmp_fu_134_p3;
wire [28:0] tmp_1_fu_142_p4;
wire [28:0] select_ln7_2_fu_166_p3;
wire signed [31:0] sext_ln7_2_fu_174_p1;
wire [31:0] sub_ln7_1_fu_178_p2;
wire signed [31:0] sext_ln7_1_fu_162_p1;
wire signed [4:0] mul_ln8_fu_201_p0;
wire signed [31:0] grp_fu_112_p2;
wire [31:0] mul_ln8_fu_201_p2;
wire signed [31:0] base_1_fu_213_p0;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state38_blk;
reg ap_idle_pp0;
wire ap_enable_pp0;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
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
 .din0(empty_fu_60),
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
 .din0(empty_fu_60),
 .din1(mul_ln7_fu_122_p1),
 .dout(mul_ln7_fu_122_p2)
);
entry_point_mul_5s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 5 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_5s_32s_32_1_1_U3(
 .din0(mul_ln8_fu_201_p0),
 .din1(base_fu_56),
 .dout(mul_ln8_fu_201_p2)
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
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
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
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
 ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
 end else if ((1'b1 == 1'b1)) begin
 ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
 end
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
 end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_enable_reg_pp0_iter35 <= 1'b0;
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
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 base_fu_56[0] <= 1'b1;
 base_fu_56[3] <= 1'b0;
 base_fu_56[6] <= 1'b0;
 base_fu_56[9] <= 1'b0;
 base_fu_56[12] <= 1'b0;
 base_fu_56[15] <= 1'b0;
 base_fu_56[18] <= 1'b0;
 base_fu_56[21] <= 1'b0;
 base_fu_56[24] <= 1'b0;
 base_fu_56[27] <= 1'b0;
 base_fu_56[30] <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter35 == 1'b1))) begin
 base_fu_56[0] <= base_1_fu_213_p2[0];
 base_fu_56[3] <= base_1_fu_213_p2[3];
 base_fu_56[6] <= base_1_fu_213_p2[6];
 base_fu_56[9] <= base_1_fu_213_p2[9];
 base_fu_56[12] <= base_1_fu_213_p2[12];
 base_fu_56[15] <= base_1_fu_213_p2[15];
 base_fu_56[18] <= base_1_fu_213_p2[18];
 base_fu_56[21] <= base_1_fu_213_p2[21];
 base_fu_56[24] <= base_1_fu_213_p2[24];
 base_fu_56[27] <= base_1_fu_213_p2[27];
 base_fu_56[30] <= base_1_fu_213_p2[30];
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 decimal_fu_52 <= 32'd0;
 end else if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter35 == 1'b1))) begin
 decimal_fu_52 <= decimal_1_fu_207_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 empty_fu_60 <= octal_i;
 end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln7_fu_106_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 empty_fu_60 <= select_ln7_1_fu_184_p3;
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
 if ((icmp_ln7_fu_106_p2 == 1'd1)) begin
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
 if (((ap_enable_reg_pp0_iter35 == 1'b0) & (ap_enable_reg_pp0_iter34 == 1'b0) & (ap_enable_reg_pp0_iter33 == 1'b0) & (ap_enable_reg_pp0_iter32 == 1'b0) & (ap_enable_reg_pp0_iter31 == 1'b0) & (ap_enable_reg_pp0_iter30 == 1'b0) & (ap_enable_reg_pp0_iter29 == 1'b0) & (ap_enable_reg_pp0_iter28 == 1'b0) & (ap_enable_reg_pp0_iter27 == 1'b0) & (ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
 if (((1'b0 == ap_block_pp0_stage0_01001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln7_fu_106_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 octal_o = select_ln7_1_fu_184_p3;
 end else begin
 octal_o = octal_i;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln7_fu_106_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 octal_o_ap_vld = 1'b1;
 end else begin
 octal_o_ap_vld = 1'b0;
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
 if ((~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln7_fu_106_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter35 == 1'b1) & (ap_enable_reg_pp0_iter34 == 1'b0)))) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else if ((((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter35 == 1'b1) & (ap_enable_reg_pp0_iter34 == 1'b0)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b0) & (icmp_ln7_fu_106_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
 ap_NS_fsm = ap_ST_fsm_state38;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state38 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state10_pp0_stage0_iter8 = ~(1'b1 == 1'b1);
assign ap_block_state11_pp0_stage0_iter9 = ~(1'b1 == 1'b1);
assign ap_block_state12_pp0_stage0_iter10 = ~(1'b1 == 1'b1);
assign ap_block_state13_pp0_stage0_iter11 = ~(1'b1 == 1'b1);
assign ap_block_state14_pp0_stage0_iter12 = ~(1'b1 == 1'b1);
assign ap_block_state15_pp0_stage0_iter13 = ~(1'b1 == 1'b1);
assign ap_block_state16_pp0_stage0_iter14 = ~(1'b1 == 1'b1);
assign ap_block_state17_pp0_stage0_iter15 = ~(1'b1 == 1'b1);
assign ap_block_state18_pp0_stage0_iter16 = ~(1'b1 == 1'b1);
assign ap_block_state19_pp0_stage0_iter17 = ~(1'b1 == 1'b1);
assign ap_block_state20_pp0_stage0_iter18 = ~(1'b1 == 1'b1);
assign ap_block_state21_pp0_stage0_iter19 = ~(1'b1 == 1'b1);
assign ap_block_state22_pp0_stage0_iter20 = ~(1'b1 == 1'b1);
assign ap_block_state23_pp0_stage0_iter21 = ~(1'b1 == 1'b1);
assign ap_block_state24_pp0_stage0_iter22 = ~(1'b1 == 1'b1);
assign ap_block_state25_pp0_stage0_iter23 = ~(1'b1 == 1'b1);
assign ap_block_state26_pp0_stage0_iter24 = ~(1'b1 == 1'b1);
assign ap_block_state27_pp0_stage0_iter25 = ~(1'b1 == 1'b1);
assign ap_block_state28_pp0_stage0_iter26 = ~(1'b1 == 1'b1);
assign ap_block_state29_pp0_stage0_iter27 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state30_pp0_stage0_iter28 = ~(1'b1 == 1'b1);
assign ap_block_state31_pp0_stage0_iter29 = ~(1'b1 == 1'b1);
assign ap_block_state32_pp0_stage0_iter30 = ~(1'b1 == 1'b1);
assign ap_block_state33_pp0_stage0_iter31 = ~(1'b1 == 1'b1);
assign ap_block_state34_pp0_stage0_iter32 = ~(1'b1 == 1'b1);
assign ap_block_state35_pp0_stage0_iter33 = ~(1'b1 == 1'b1);
assign ap_block_state36_pp0_stage0_iter34 = ~(1'b1 == 1'b1);
assign ap_block_state37_pp0_stage0_iter35 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);
assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);
assign ap_block_state6_pp0_stage0_iter4 = ~(1'b1 == 1'b1);
assign ap_block_state7_pp0_stage0_iter5 = ~(1'b1 == 1'b1);
assign ap_block_state8_pp0_stage0_iter6 = ~(1'b1 == 1'b1);
assign ap_block_state9_pp0_stage0_iter7 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_return = 32'd0;
assign base_1_fu_213_p0 = base_fu_56;
assign base_1_fu_213_p2 = base_1_fu_213_p0 << 32'd3;
assign decimal_1_fu_207_p2 = (mul_ln8_fu_201_p2 + decimal_fu_52);
assign grp_fu_112_p1 = 32'd10;
assign icmp_ln7_fu_106_p0 = empty_fu_60;
assign icmp_ln7_fu_106_p2 = ((icmp_ln7_fu_106_p0 == 32'd0) ? 1'b1 : 1'b0);
assign mul_ln7_fu_122_p1 = 65'd6871947674;
assign mul_ln8_fu_201_p0 = grp_fu_112_p2;
assign select_ln7_1_fu_184_p3 = ((tmp_fu_134_p3[0:0] == 1'b1) ? sub_ln7_1_fu_178_p2 : sext_ln7_1_fu_162_p1);
assign select_ln7_2_fu_166_p3 = ((tmp_fu_134_p3[0:0] == 1'b1) ? tmp_1_fu_142_p4 : tmp_3_fu_152_p4);
assign sext_ln7_1_fu_162_p1 = tmp_3_fu_152_p4;
assign sext_ln7_2_fu_174_p1 = $signed(select_ln7_2_fu_166_p3);
assign sub_ln7_1_fu_178_p2 = ($signed(32'd0) - $signed(sext_ln7_2_fu_174_p1));
assign sub_ln7_fu_128_p2 = (65'd0 - mul_ln7_fu_122_p2);
assign temptemp1 = decimal_fu_52;
assign tmp_1_fu_142_p4 = {{sub_ln7_fu_128_p2[64:36]}};
assign tmp_3_fu_152_p4 = {{mul_ln7_fu_122_p2[64:36]}};
assign tmp_fu_134_p1 = empty_fu_60;
assign tmp_fu_134_p3 = tmp_fu_134_p1[32'd31];
always @ (posedge ap_clk) begin
 base_fu_56[2:1] <= 2'b00;
 base_fu_56[5:4] <= 2'b00;
 base_fu_56[8:7] <= 2'b00;
 base_fu_56[11:10] <= 2'b00;
 base_fu_56[14:13] <= 2'b00;
 base_fu_56[17:16] <= 2'b00;
 base_fu_56[20:19] <= 2'b00;
 base_fu_56[23:22] <= 2'b00;
 base_fu_56[26:25] <= 2'b00;
 base_fu_56[29:28] <= 2'b00;
 base_fu_56[31] <= 1'b0;
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
module entry_point_mul_5s_32s_32_1_1(din0, din1, dout);
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
