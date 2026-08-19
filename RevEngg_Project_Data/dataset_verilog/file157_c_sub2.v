module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n,
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
input [31:0] n;
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
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [31:0] num_load_reg_208;
wire ap_CS_fsm_state2;
wire [0:0] icmp_ln9_fu_102_p2;
reg [30:0] div_udiv_reg_214;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_return;
reg [0:0] targetBlock_reg_219;
wire ap_CS_fsm_state3;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_ready;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_icmp_ln10_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_icmp_ln10_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_start_reg;
reg [0:0] icmp_ln10_loc_fu_54;
reg [31:0] num_fu_42;
wire [31:0] num_1_fu_122_p2;
reg [31:0] nthPrime_fu_46;
wire [31:0] nthPrime_1_fu_153_p3;
wire ap_CS_fsm_state4;
reg [31:0] count_fu_50;
wire [31:0] count_3_fu_146_p3;
wire [0:0] and_ln10_fu_136_p2;
wire [31:0] add_ln17_fu_141_p2;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_10_2 grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_ready),
 .empty(div_udiv_reg_214),
 .num(num_load_reg_208),
 .icmp_ln10_out(grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_icmp_ln10_out),
 .icmp_ln10_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_icmp_ln10_out_ap_vld),
 .ap_return(grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_return)
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
 grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln9_fu_102_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 count_fu_50 <= 32'd0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 count_fu_50 <= count_3_fu_146_p3;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 num_fu_42 <= 32'd2;
 end else if (((icmp_ln9_fu_102_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 num_fu_42 <= num_1_fu_122_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln9_fu_102_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 div_udiv_reg_214 <= {{num_fu_42[31:1]}};
 num_load_reg_208 <= num_fu_42;
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_icmp_ln10_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 icmp_ln10_loc_fu_54 <= grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_icmp_ln10_out;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 nthPrime_fu_46 <= nthPrime_1_fu_153_p3;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 targetBlock_reg_219 <= grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_return;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_done == 1'b0)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
 if (((icmp_ln9_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
 if (((icmp_ln9_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln9_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln9_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
 if (((icmp_ln9_fu_102_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state4 : begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln17_fu_141_p2 = (count_fu_50 + 32'd1);
assign and_ln10_fu_136_p2 = (targetBlock_reg_219 & icmp_ln10_loc_fu_54);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_return = 32'd0;
assign count_3_fu_146_p3 = ((and_ln10_fu_136_p2[0:0] == 1'b1) ? add_ln17_fu_141_p2 : count_fu_50);
assign grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_10_2_fu_78_ap_start_reg;
assign icmp_ln9_fu_102_p2 = (($signed(count_fu_50) < $signed(n)) ? 1'b1 : 1'b0);
assign nthPrime_1_fu_153_p3 = ((and_ln10_fu_136_p2[0:0] == 1'b1) ? num_load_reg_208 : nthPrime_fu_46);
assign num_1_fu_122_p2 = (num_fu_42 + 32'd1);
assign temptemp1 = n;
assign temptemp2 = nthPrime_fu_46;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_10_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 empty,
 num,
 icmp_ln10_out,
 icmp_ln10_out_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 39'd1;
parameter ap_ST_fsm_state2 = 39'd2;
parameter ap_ST_fsm_state3 = 39'd4;
parameter ap_ST_fsm_state4 = 39'd8;
parameter ap_ST_fsm_state5 = 39'd16;
parameter ap_ST_fsm_state6 = 39'd32;
parameter ap_ST_fsm_state7 = 39'd64;
parameter ap_ST_fsm_state8 = 39'd128;
parameter ap_ST_fsm_state9 = 39'd256;
parameter ap_ST_fsm_state10 = 39'd512;
parameter ap_ST_fsm_state11 = 39'd1024;
parameter ap_ST_fsm_state12 = 39'd2048;
parameter ap_ST_fsm_state13 = 39'd4096;
parameter ap_ST_fsm_state14 = 39'd8192;
parameter ap_ST_fsm_state15 = 39'd16384;
parameter ap_ST_fsm_state16 = 39'd32768;
parameter ap_ST_fsm_state17 = 39'd65536;
parameter ap_ST_fsm_state18 = 39'd131072;
parameter ap_ST_fsm_state19 = 39'd262144;
parameter ap_ST_fsm_state20 = 39'd524288;
parameter ap_ST_fsm_state21 = 39'd1048576;
parameter ap_ST_fsm_state22 = 39'd2097152;
parameter ap_ST_fsm_state23 = 39'd4194304;
parameter ap_ST_fsm_state24 = 39'd8388608;
parameter ap_ST_fsm_state25 = 39'd16777216;
parameter ap_ST_fsm_state26 = 39'd33554432;
parameter ap_ST_fsm_state27 = 39'd67108864;
parameter ap_ST_fsm_state28 = 39'd134217728;
parameter ap_ST_fsm_state29 = 39'd268435456;
parameter ap_ST_fsm_state30 = 39'd536870912;
parameter ap_ST_fsm_state31 = 39'd1073741824;
parameter ap_ST_fsm_state32 = 39'd2147483648;
parameter ap_ST_fsm_state33 = 39'd4294967296;
parameter ap_ST_fsm_state34 = 39'd8589934592;
parameter ap_ST_fsm_state35 = 39'd17179869184;
parameter ap_ST_fsm_state36 = 39'd34359738368;
parameter ap_ST_fsm_state37 = 39'd68719476736;
parameter ap_ST_fsm_state38 = 39'd137438953472;
parameter ap_ST_fsm_state39 = 39'd274877906944;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] empty;
input [31:0] num;
output [0:0] icmp_ln10_out;
output icmp_ln10_out_ap_vld;
output [0:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[0:0] icmp_ln10_out;
reg icmp_ln10_out_ap_vld;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg [38:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] p_cast_fu_71_p1;
reg [31:0] p_cast_reg_125;
reg [31:0] i_2_reg_130;
wire ap_CS_fsm_state2;
wire [0:0] icmp_ln10_fu_83_p2;
reg [0:0] icmp_ln10_reg_136;
reg [0:0] ap_phi_mux_UnifiedRetVal_phi_fu_63_p4;
reg [0:0] UnifiedRetVal_reg_59;
wire ap_CS_fsm_state39;
wire ap_CS_fsm_state38;
reg [31:0] i_fu_34;
wire [31:0] i_3_fu_103_p2;
wire ap_CS_fsm_state37;
wire [0:0] icmp_ln11_fu_97_p2;
wire [30:0] grp_fu_88_p2;
wire [30:0] trunc_ln11_fu_93_p1;
reg [0:0] ap_return_preg;
reg [38:0] ap_NS_fsm;
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
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 39'd1;
#0 ap_return_preg = 1'd0;
end
entry_point_urem_32ns_32ns_31_36_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 31 ))
urem_32ns_32ns_31_36_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(num),
 .din1(i_fu_34),
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
 ap_return_preg <= 1'd0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state38)) begin
 ap_return_preg <= ap_phi_mux_UnifiedRetVal_phi_fu_63_p4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln10_reg_136 == 1'd0) & (1'b1 == ap_CS_fsm_state38))) begin
 UnifiedRetVal_reg_59 <= 1'd0;
 end else if ((1'b1 == ap_CS_fsm_state39)) begin
 UnifiedRetVal_reg_59 <= 1'd1;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 i_fu_34 <= 32'd2;
 end else if (((icmp_ln10_reg_136 == 1'd0) & (1'b1 == ap_CS_fsm_state37) & (icmp_ln11_fu_97_p2 == 1'd0))) begin
 i_fu_34 <= i_3_fu_103_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 i_2_reg_130 <= i_fu_34;
 icmp_ln10_reg_136 <= icmp_ln10_fu_83_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 p_cast_reg_125[30 : 0] <= p_cast_fu_71_p1[30 : 0];
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
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state38) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
 if (((icmp_ln10_reg_136 == 1'd0) & (1'b1 == ap_CS_fsm_state38))) begin
 ap_phi_mux_UnifiedRetVal_phi_fu_63_p4 = 1'd0;
 end else begin
 ap_phi_mux_UnifiedRetVal_phi_fu_63_p4 = UnifiedRetVal_reg_59;
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
 if ((1'b1 == ap_CS_fsm_state38)) begin
 ap_return = ap_phi_mux_UnifiedRetVal_phi_fu_63_p4;
 end else begin
 ap_return = ap_return_preg;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state39)) begin
 icmp_ln10_out = 1'd1;
 end else if (((icmp_ln10_reg_136 == 1'd0) & (1'b1 == ap_CS_fsm_state38))) begin
 icmp_ln10_out = 1'd0;
 end else begin
 icmp_ln10_out = 'bx;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state39) | ((icmp_ln10_reg_136 == 1'd0) & (1'b1 == ap_CS_fsm_state38)))) begin
 icmp_ln10_out_ap_vld = 1'b1;
 end else begin
 icmp_ln10_out_ap_vld = 1'b0;
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
 if (((icmp_ln10_reg_136 == 1'd0) & (1'b1 == ap_CS_fsm_state37) & (icmp_ln11_fu_97_p2 == 1'd0))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else if (((icmp_ln10_reg_136 == 1'd1) & (1'b1 == ap_CS_fsm_state37))) begin
 ap_NS_fsm = ap_ST_fsm_state39;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state38;
 end
 end
 ap_ST_fsm_state38 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 ap_ST_fsm_state39 : begin
 ap_NS_fsm = ap_ST_fsm_state38;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state37 = ap_CS_fsm[32'd36];
assign ap_CS_fsm_state38 = ap_CS_fsm[32'd37];
assign ap_CS_fsm_state39 = ap_CS_fsm[32'd38];
assign i_3_fu_103_p2 = (i_2_reg_130 + 32'd1);
assign icmp_ln10_fu_83_p2 = (($signed(i_fu_34) > $signed(p_cast_reg_125)) ? 1'b1 : 1'b0);
assign icmp_ln11_fu_97_p2 = ((trunc_ln11_fu_93_p1 == 31'd0) ? 1'b1 : 1'b0);
assign p_cast_fu_71_p1 = empty;
assign trunc_ln11_fu_93_p1 = grp_fu_88_p2[30:0];
always @ (posedge ap_clk) begin
 p_cast_reg_125[31] <= 1'b0;
end
endmodule
module entry_point_urem_32ns_32ns_31_36_1_divider
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
 output wire [out_WIDTH-1:0] quot,
 output wire [out_WIDTH-1:0] remd
);
localparam cal_WIDTH = (in0_WIDTH > in1_WIDTH)? in0_WIDTH : in1_WIDTH;
reg [in0_WIDTH-1:0] dividend_tmp[0:in0_WIDTH];
reg [in1_WIDTH-1:0] divisor_tmp[0:in0_WIDTH];
reg [in0_WIDTH-1:0] remd_tmp[0:in0_WIDTH];
wire [in0_WIDTH-1:0] comb_tmp[0:in0_WIDTH-1];
wire [cal_WIDTH:0] cal_tmp[0:in0_WIDTH-1];
assign quot = dividend_tmp[in0_WIDTH];
assign remd = remd_tmp[in0_WIDTH];
always @(posedge clk)
begin
 if (ce) begin
 dividend_tmp[0] <= dividend;
 divisor_tmp[0] <= divisor;
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
 end
 end
 end
endgenerate
endmodule
module entry_point_urem_32ns_32ns_31_36_1
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
entry_point_urem_32ns_32ns_31_36_1_divider #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_urem_32ns_32ns_31_36_1_divider_u (
 .clk ( clk ),
 .reset ( reset ),
 .ce ( ce ),
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
 end
end
always @(posedge clk)
begin
 if (ce) begin
 quot <= quot_u;
 remd <= remd_u;
 end
end
assign dout = remd;
endmodule
