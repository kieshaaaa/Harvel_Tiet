module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 str,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 10'd1;
parameter ap_ST_fsm_state2 = 10'd2;
parameter ap_ST_fsm_state3 = 10'd4;
parameter ap_ST_fsm_state4 = 10'd8;
parameter ap_ST_fsm_state5 = 10'd16;
parameter ap_ST_fsm_state6 = 10'd32;
parameter ap_ST_fsm_state7 = 10'd64;
parameter ap_ST_fsm_state8 = 10'd128;
parameter ap_ST_fsm_state9 = 10'd256;
parameter ap_ST_fsm_state10 = 10'd512;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [7:0] str;
output [7:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg [9:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [0:0] icmp_ln9_fu_120_p2;
reg [0:0] icmp_ln9_reg_175;
wire [6:0] trunc_ln7_fu_130_p1;
reg [6:0] trunc_ln7_reg_180;
wire ap_CS_fsm_state3;
wire [0:0] icmp_ln11_fu_134_p2;
reg [0:0] icmp_ln11_reg_185;
wire [30:0] trunc_ln11_fu_140_p1;
reg [30:0] trunc_ln11_reg_189;
wire ap_CS_fsm_state6;
wire [63:0] add_ln20_fu_159_p2;
reg [63:0] add_ln20_reg_212;
wire ap_CS_fsm_state7;
wire [0:0] text_q0;
reg [0:0] text_load_1_reg_222;
wire ap_CS_fsm_state8;
reg [6:0] text_address0;
reg text_ce0;
reg text_we0;
reg [0:0] text_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_i_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_i_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_text_r_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_text_r_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_text_r_we0;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_text_r_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_text_r_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_text_r_ce0;
wire [7:0] grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_temptemp1;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_temptemp1_ap_vld;
reg [6:0] j_0_lcssa_reg_89;
wire ap_CS_fsm_state4;
reg ap_block_state4_on_subcall_done;
reg grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_ap_start_reg;
wire ap_CS_fsm_state2;
reg [31:0] i_loc_fu_44;
reg grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_ap_start_reg;
reg grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_ap_start_reg;
reg [9:0] ap_NS_fsm;
wire ap_NS_fsm_state9;
wire ap_CS_fsm_state10;
wire [63:0] zext_ln16_fu_150_p1;
wire ap_CS_fsm_state5;
reg [63:0] i_fu_52;
reg ap_block_state10_on_subcall_done;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ST_fsm_state6_blk;
wire ap_ST_fsm_state7_blk;
wire ap_ST_fsm_state8_blk;
wire ap_ST_fsm_state9_blk;
reg ap_ST_fsm_state10_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_ap_start_reg = 1'b0;
end
entry_point_text_RAM_AUTO_1R1W #(
 .DataWidth( 1 ),
 .AddressRange( 100 ),
 .AddressWidth( 7 ))
text_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(text_address0),
 .ce0(text_ce0),
 .we0(text_we0),
 .d0(text_d0),
 .q0(text_q0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_9_1 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_ap_ready),
 .icmp_ln9(icmp_ln9_reg_175),
 .i_out(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_i_out),
 .i_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_i_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_11_2 grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_ap_ready),
 .trunc_ln(trunc_ln11_reg_189),
 .text_r_address0(grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_text_r_address0),
 .text_r_ce0(grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_text_r_ce0),
 .text_r_we0(grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_text_r_we0),
 .text_r_d0(grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_text_r_d0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_22_4 grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_ap_ready),
 .j_3(i_fu_52),
 .text_r_address0(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_text_r_address0),
 .text_r_ce0(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_text_r_ce0),
 .text_r_q0(text_q0),
 .temptemp1(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_temptemp1),
 .temptemp1_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_temptemp1_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln11_fu_134_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state8) & (1'b1 == ap_NS_fsm_state9))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state4) & (1'b0 == ap_block_state4_on_subcall_done))) begin
 i_fu_52 <= 64'd0;
 end else if (((1'b1 == ap_CS_fsm_state10) & (1'b0 == ap_block_state10_on_subcall_done))) begin
 i_fu_52 <= add_ln20_reg_212;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln11_fu_134_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 j_0_lcssa_reg_89 <= 7'd0;
 end else if (((icmp_ln11_reg_185 == 1'd1) & (1'b1 == ap_CS_fsm_state4) & (1'b0 == ap_block_state4_on_subcall_done))) begin
 j_0_lcssa_reg_89 <= trunc_ln7_reg_180;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 add_ln20_reg_212 <= add_ln20_fu_159_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_i_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 i_loc_fu_44 <= grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_i_out;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 icmp_ln11_reg_185 <= icmp_ln11_fu_134_p2;
 trunc_ln7_reg_180 <= trunc_ln7_fu_130_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln9_reg_175 <= icmp_ln9_fu_120_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state8)) begin
 text_load_1_reg_222 <= text_q0;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln11_fu_134_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 trunc_ln11_reg_189 <= trunc_ln11_fu_140_p1;
 end
end
always @ (*) begin
 if ((1'b1 == ap_block_state10_on_subcall_done)) begin
 ap_ST_fsm_state10_blk = 1'b1;
 end else begin
 ap_ST_fsm_state10_blk = 1'b0;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_block_state4_on_subcall_done)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if (((text_q0 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
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
 if (((text_q0 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 text_address0 = add_ln20_fu_159_p2;
 end else if ((1'b1 == ap_CS_fsm_state6)) begin
 text_address0 = i_fu_52;
 end else if ((1'b1 == ap_CS_fsm_state5)) begin
 text_address0 = zext_ln16_fu_150_p1;
 end else if (((text_load_1_reg_222 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
 text_address0 = grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_text_r_address0;
 end else if (((icmp_ln11_reg_185 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 text_address0 = grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_text_r_address0;
 end else begin
 text_address0 = 'bx;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
 text_ce0 = 1'b1;
 end else if (((text_load_1_reg_222 == 1'd0) & (1'b1 == ap_CS_fsm_state10))) begin
 text_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_text_r_ce0;
 end else if (((icmp_ln11_reg_185 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 text_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_text_r_ce0;
 end else begin
 text_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 text_d0 = 1'd0;
 end else if (((icmp_ln11_reg_185 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 text_d0 = grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_text_r_d0;
 end else begin
 text_d0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 text_we0 = 1'b1;
 end else if (((icmp_ln11_reg_185 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 text_we0 = grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_text_r_we0;
 end else begin
 text_we0 = 1'b0;
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
 if (((1'b1 == ap_CS_fsm_state4) & (1'b0 == ap_block_state4_on_subcall_done))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 ap_ST_fsm_state6 : begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end
 ap_ST_fsm_state7 : begin
 if (((text_q0 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state8;
 end
 end
 ap_ST_fsm_state8 : begin
 if (((text_q0 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
 ap_NS_fsm = ap_ST_fsm_state10;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state9;
 end
 end
 ap_ST_fsm_state9 : begin
 ap_NS_fsm = ap_ST_fsm_state10;
 end
 ap_ST_fsm_state10 : begin
 if (((1'b1 == ap_CS_fsm_state10) & (1'b0 == ap_block_state10_on_subcall_done))) begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state10;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln20_fu_159_p2 = (i_fu_52 + 64'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_NS_fsm_state9 = ap_NS_fsm[32'd8];
always @ (*) begin
 ap_block_state10_on_subcall_done = ((text_load_1_reg_222 == 1'd0) & (grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_ap_done == 1'b0));
end
always @ (*) begin
 ap_block_state4_on_subcall_done = ((grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_ap_done == 1'b0) & (icmp_ln11_reg_185 == 1'd1));
end
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_11_2_fu_106_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_100_ap_start_reg;
assign icmp_ln11_fu_134_p2 = (($signed(i_loc_fu_44) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_120_p2 = ((str == 8'd0) ? 1'b1 : 1'b0);
assign temptemp1 = grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_temptemp1;
assign temptemp1_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_112_temptemp1_ap_vld;
assign trunc_ln11_fu_140_p1 = i_loc_fu_44[30:0];
assign trunc_ln7_fu_130_p1 = i_loc_fu_44[6:0];
assign zext_ln16_fu_150_p1 = j_0_lcssa_reg_89;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_11_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 trunc_ln,
 text_r_address0,
 text_r_ce0,
 text_r_we0,
 text_r_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] trunc_ln;
output [6:0] text_r_address0;
output text_r_ce0;
output text_r_we0;
output [0:0] text_r_d0;
reg ap_idle;
reg text_r_ce0;
reg text_r_we0;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln11_fu_70_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] j_cast2_fu_82_p1;
reg [6:0] j_fu_34;
wire [6:0] add_ln14_fu_76_p2;
wire ap_loop_init;
reg [6:0] ap_sig_allocacmp_j_2;
wire [30:0] j_cast_fu_66_p1;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
 .ap_done_int(ap_done_int)
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
 ap_done_reg <= 1'b0;
 end else begin
 if ((ap_continue_int == 1'b1)) begin
 ap_done_reg <= 1'b0;
 end else if (((ap_start_int == 1'b1) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 if ((icmp_ln11_fu_70_p2 == 1'd0)) begin
 j_fu_34 <= add_ln14_fu_76_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 j_fu_34 <= 7'd0;
 end
 end
end
always @ (*) begin
 if ((ap_start_int == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln11_fu_70_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_j_2 = 7'd0;
 end else begin
 ap_sig_allocacmp_j_2 = j_fu_34;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 text_r_ce0 = 1'b1;
 end else begin
 text_r_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln11_fu_70_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 text_r_we0 = 1'b1;
 end else begin
 text_r_we0 = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln14_fu_76_p2 = (ap_sig_allocacmp_j_2 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign icmp_ln11_fu_70_p2 = ((j_cast_fu_66_p1 == trunc_ln) ? 1'b1 : 1'b0);
assign j_cast2_fu_82_p1 = ap_sig_allocacmp_j_2;
assign j_cast_fu_66_p1 = ap_sig_allocacmp_j_2;
assign text_r_address0 = j_cast2_fu_82_p1;
assign text_r_d0 = 1'd0;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_22_4 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 j_3,
 text_r_address0,
 text_r_ce0,
 text_r_q0,
 temptemp1,
 temptemp1_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [63:0] j_3;
output [6:0] text_r_address0;
output text_r_ce0;
input [0:0] text_r_q0;
output [7:0] temptemp1;
output temptemp1_ap_vld;
reg ap_idle;
reg text_r_ce0;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_enable_reg_pp0_iter2;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_state3_pp0_stage0_iter2;
wire ap_block_pp0_stage0_subdone;
wire [0:0] tmp_fu_71_p3;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
wire ap_block_pp0_stage0;
reg [63:0] j_fu_32;
wire [63:0] add_ln22_fu_79_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0_01001;
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
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end
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
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter2 <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
 ap_enable_reg_pp0_iter2 <= 1'b0;
 end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 j_fu_32 <= j_3;
 end else if (((tmp_fu_71_p3 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 j_fu_32 <= add_ln22_fu_79_p2;
 end
 end
end
always @ (*) begin
 if (((tmp_fu_71_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 text_r_ce0 = 1'b1;
 end else begin
 text_r_ce0 = 1'b0;
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
assign add_ln22_fu_79_p2 = ($signed(j_fu_32) + $signed(64'd18446744073709551615));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign temptemp1 = text_r_q0;
assign text_r_address0 = j_fu_32;
assign tmp_fu_71_p3 = j_fu_32[32'd63];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_9_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 icmp_ln9,
 i_out,
 i_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [0:0] icmp_ln9;
output [31:0] i_out;
output i_out_ap_vld;
reg ap_idle;
reg i_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln9_read_read_fu_30_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [0:0] icmp_ln9_read_reg_74;
wire ap_block_pp0_stage0_11001;
reg [63:0] i_fu_26;
wire [63:0] add_ln10_fu_56_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
wire ap_block_pp0_stage0_01001;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg ap_loop_exit_ready_pp0_iter1_reg;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
 end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_enable_reg_pp0_iter1 <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
 end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_fu_26 <= 64'd0;
 end else if (((icmp_ln9_read_reg_74 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_fu_26 <= add_ln10_fu_56_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln9_read_read_fu_30_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln9_read_reg_74 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 i_out_ap_vld = 1'b1;
 end else begin
 i_out_ap_vld = 1'b0;
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
assign add_ln10_fu_56_p2 = (i_fu_26 + 64'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign i_out = i_fu_26[31:0];
assign icmp_ln9_read_read_fu_30_p2 = icmp_ln9;
assign icmp_ln9_read_reg_74 = icmp_ln9;
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
module entry_point_text_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 reset, clk);
parameter DataWidth = 1;
parameter AddressWidth = 7;
parameter AddressRange = 100;
input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input we0; 
output reg[DataWidth-1:0] q0; 
input reset;
input clk;
(* ram_style = "auto" *)reg [DataWidth-1:0] ram[0:AddressRange-1];
always @(posedge clk) 
begin 
 if (ce0) begin
 if (we0) 
 ram[address0] <= d0; 
 q0 <= ram[address0];
 end
end 
endmodule
