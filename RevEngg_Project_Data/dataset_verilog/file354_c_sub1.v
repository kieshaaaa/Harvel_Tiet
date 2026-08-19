module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 size,
 arr,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 5'd1;
parameter ap_ST_fsm_state2 = 5'd2;
parameter ap_ST_fsm_state3 = 5'd4;
parameter ap_ST_fsm_state4 = 5'd8;
parameter ap_ST_fsm_state5 = 5'd16;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] size;
input [31:0] arr;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg [4:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [0:0] icmp_ln9_fu_107_p2;
reg [0:0] icmp_ln9_reg_199;
wire [30:0] trunc_ln9_fu_113_p1;
reg [30:0] trunc_ln9_reg_217;
wire [7:0] trunc_ln9_1_fu_118_p1;
reg [7:0] trunc_ln9_1_reg_225;
wire [30:0] add_ln14_fu_132_p2;
reg [30:0] add_ln14_reg_230;
wire ap_CS_fsm_state2;
reg [30:0] i_load_reg_238;
wire ap_CS_fsm_state3;
wire [0:0] icmp_ln14_fu_140_p2;
wire [6:0] empty_fu_155_p1;
reg [6:0] empty_reg_243;
wire [7:0] select_ln14_fu_181_p3;
reg [7:0] select_ln14_reg_248;
reg [6:0] flag_address0;
reg flag_ce0;
reg flag_we0;
reg [0:0] flag_d0;
wire [0:0] flag_q0;
reg [6:0] freq_address0;
reg freq_ce0;
reg freq_we0;
reg [31:0] freq_d0;
wire [31:0] freq_q0;
reg freq_ce1;
wire [31:0] freq_q1;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_freq_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_freq_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_freq_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_freq_d0;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_flag_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_flag_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_flag_we0;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_flag_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_freq_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_freq_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_freq_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_freq_d0;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_freq_address1;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_freq_ce1;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_flag_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_flag_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_flag_we0;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_flag_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_flag_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_flag_ce0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_temptemp1;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_temptemp1_ap_vld;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_freq_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_freq_ce0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_temptemp2;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_temptemp2_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_ap_start_reg;
reg grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_ap_start_reg;
wire ap_CS_fsm_state4;
reg grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_ap_start_reg;
wire ap_CS_fsm_state5;
reg [30:0] idx_fu_56;
wire [30:0] add_ln14_2_fu_145_p2;
reg [30:0] i_fu_60;
wire [30:0] add_ln14_1_fu_169_p2;
wire [7:0] trunc_ln14_fu_165_p1;
wire [0:0] icmp_ln14_1_fu_160_p2;
wire [7:0] add_ln14_3_fu_175_p2;
reg ap_block_state5_on_subcall_done;
reg [4:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
reg ap_ST_fsm_state5_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_ap_start_reg = 1'b0;
end
entry_point_flag_RAM_AUTO_1R1W #(
 .DataWidth( 1 ),
 .AddressRange( 100 ),
 .AddressWidth( 7 ))
flag_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(flag_address0),
 .ce0(flag_ce0),
 .we0(flag_we0),
 .d0(flag_d0),
 .q0(flag_q0)
);
entry_point_freq_RAM_AUTO_1R1W #(
 .DataWidth( 32 ),
 .AddressRange( 100 ),
 .AddressWidth( 7 ))
freq_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(freq_address0),
 .ce0(freq_ce0),
 .we0(freq_we0),
 .d0(freq_d0),
 .q0(freq_q0),
 .address1(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_freq_address1),
 .ce1(freq_ce1),
 .q1(freq_q1)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_9_1 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_ap_ready),
 .trunc_ln9(trunc_ln9_reg_217),
 .freq_address0(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_freq_address0),
 .freq_ce0(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_freq_ce0),
 .freq_we0(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_freq_we0),
 .freq_d0(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_freq_d0),
 .flag_address0(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_flag_address0),
 .flag_ce0(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_flag_ce0),
 .flag_we0(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_flag_we0),
 .flag_d0(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_flag_d0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_14_3 grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_ap_ready),
 .i_2(i_load_reg_238),
 .freq_address0(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_freq_address0),
 .freq_ce0(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_freq_ce0),
 .freq_we0(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_freq_we0),
 .freq_d0(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_freq_d0),
 .freq_address1(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_freq_address1),
 .freq_ce1(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_freq_ce1),
 .freq_q1(freq_q1),
 .zext_ln14(empty_reg_243),
 .zext_ln14_1(select_ln14_reg_248),
 .flag_address0(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_flag_address0),
 .flag_ce0(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_flag_ce0),
 .flag_we0(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_flag_we0),
 .flag_d0(grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_flag_d0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_22_4 grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_ap_ready),
 .trunc_ln9(trunc_ln9_reg_217),
 .flag_address0(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_flag_address0),
 .flag_ce0(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_flag_ce0),
 .flag_q0(flag_q0),
 .arr_load(arr),
 .temptemp1(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_temptemp1),
 .temptemp1_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_temptemp1_ap_vld),
 .freq_address0(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_freq_address0),
 .freq_ce0(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_freq_ce0),
 .freq_q0(freq_q0),
 .temptemp2(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_temptemp2),
 .temptemp2_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_temptemp2_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln14_fu_140_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln14_fu_140_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln9_fu_107_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln9_fu_107_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 i_fu_60 <= 31'd1;
 end else if (((icmp_ln14_fu_140_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 i_fu_60 <= add_ln14_1_fu_169_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln9_fu_107_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 idx_fu_56 <= 31'd0;
 end else if (((icmp_ln14_fu_140_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 idx_fu_56 <= add_ln14_2_fu_145_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 add_ln14_reg_230 <= add_ln14_fu_132_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln14_fu_140_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 empty_reg_243 <= empty_fu_155_p1;
 i_load_reg_238 <= i_fu_60;
 select_ln14_reg_248 <= select_ln14_fu_181_p3;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln9_reg_199 <= icmp_ln9_fu_107_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln9_fu_107_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 trunc_ln9_1_reg_225 <= trunc_ln9_1_fu_118_p1;
 trunc_ln9_reg_217 <= trunc_ln9_fu_113_p1;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_block_state5_on_subcall_done)) begin
 ap_ST_fsm_state5_blk = 1'b1;
 end else begin
 ap_ST_fsm_state5_blk = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
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
 if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln9_reg_199 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
 flag_address0 = grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_flag_address0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 flag_address0 = grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_flag_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 flag_address0 = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_flag_address0;
 end else begin
 flag_address0 = 'bx;
 end
end
always @ (*) begin
 if (((icmp_ln9_reg_199 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
 flag_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_flag_ce0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 flag_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_flag_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 flag_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_flag_ce0;
 end else begin
 flag_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 flag_d0 = grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_flag_d0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 flag_d0 = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_flag_d0;
 end else begin
 flag_d0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 flag_we0 = grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_flag_we0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 flag_we0 = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_flag_we0;
 end else begin
 flag_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln9_reg_199 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
 freq_address0 = grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_freq_address0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 freq_address0 = grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_freq_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 freq_address0 = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_freq_address0;
 end else begin
 freq_address0 = 'bx;
 end
end
always @ (*) begin
 if (((icmp_ln9_reg_199 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
 freq_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_freq_ce0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 freq_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_freq_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 freq_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_freq_ce0;
 end else begin
 freq_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 freq_ce1 = grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_freq_ce1;
 end else begin
 freq_ce1 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 freq_d0 = grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_freq_d0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 freq_d0 = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_freq_d0;
 end else begin
 freq_d0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 freq_we0 = grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_freq_we0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 freq_we0 = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_freq_we0;
 end else begin
 freq_we0 = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((icmp_ln9_fu_107_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else if (((icmp_ln9_fu_107_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((icmp_ln14_fu_140_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state4 : begin
 if (((1'b1 == ap_CS_fsm_state4) & (grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_ap_done == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state5 : begin
 if (((1'b0 == ap_block_state5_on_subcall_done) & (1'b1 == ap_CS_fsm_state5))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln14_1_fu_169_p2 = (i_fu_60 + 31'd1);
assign add_ln14_2_fu_145_p2 = (idx_fu_56 + 31'd1);
assign add_ln14_3_fu_175_p2 = (trunc_ln14_fu_165_p1 + 8'd1);
assign add_ln14_fu_132_p2 = ($signed(trunc_ln9_reg_217) + $signed(31'd2147483647));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
always @ (*) begin
 ap_block_state5_on_subcall_done = ((icmp_ln9_reg_199 == 1'd1) & (grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_ap_done == 1'b0));
end
assign ap_return = 32'd0;
assign empty_fu_155_p1 = idx_fu_56[6:0];
assign grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_14_3_fu_85_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_76_ap_start_reg;
assign icmp_ln14_1_fu_160_p2 = ((i_fu_60 != trunc_ln9_reg_217) ? 1'b1 : 1'b0);
assign icmp_ln14_fu_140_p2 = ((idx_fu_56 == add_ln14_reg_230) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_107_p2 = (($signed(size) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign select_ln14_fu_181_p3 = ((icmp_ln14_1_fu_160_p2[0:0] == 1'b1) ? trunc_ln9_1_reg_225 : add_ln14_3_fu_175_p2);
assign temptemp1 = grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_temptemp1;
assign temptemp1_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_temptemp1_ap_vld;
assign temptemp2 = grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_temptemp2;
assign temptemp2_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_22_4_fu_94_temptemp2_ap_vld;
assign trunc_ln14_fu_165_p1 = i_fu_60[7:0];
assign trunc_ln9_1_fu_118_p1 = size[7:0];
assign trunc_ln9_fu_113_p1 = size[30:0];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_14_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 i_2,
 freq_address0,
 freq_ce0,
 freq_we0,
 freq_d0,
 freq_address1,
 freq_ce1,
 freq_q1,
 zext_ln14,
 zext_ln14_1,
 flag_address0,
 flag_ce0,
 flag_we0,
 flag_d0
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] i_2;
output [6:0] freq_address0;
output freq_ce0;
output freq_we0;
output [31:0] freq_d0;
output [6:0] freq_address1;
output freq_ce1;
input [31:0] freq_q1;
input [6:0] zext_ln14;
input [7:0] zext_ln14_1;
output [6:0] flag_address0;
output flag_ce0;
output flag_we0;
output [0:0] flag_d0;
reg ap_idle;
reg freq_ce0;
reg freq_we0;
reg freq_ce1;
reg flag_ce0;
reg flag_we0;
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
wire [0:0] icmp_ln14_fu_125_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
wire [30:0] zext_ln14_1_cast_fu_99_p1;
reg [30:0] zext_ln14_1_cast_reg_201;
wire [63:0] zext_ln14_cast_fu_103_p1;
reg [63:0] zext_ln14_cast_reg_206;
reg [6:0] freq_addr_reg_213;
wire [0:0] addr_cmp_fu_138_p2;
reg [0:0] addr_cmp_reg_222;
wire ap_block_pp0_stage0;
wire [63:0] j_cast_fu_130_p1;
reg [63:0] reuse_addr_reg_fu_38;
wire ap_loop_init;
reg [31:0] reuse_reg_fu_42;
wire [31:0] add_ln16_fu_168_p2;
reg [30:0] j_fu_46;
wire [30:0] add_ln14_fu_147_p2;
wire [31:0] reuse_select_fu_161_p3;
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
 j_fu_46 <= i_2;
 end else if (((icmp_ln14_fu_125_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 j_fu_46 <= add_ln14_fu_147_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 reuse_addr_reg_fu_38 <= 64'd18446744073709551615;
 end else if (((icmp_ln14_fu_125_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 reuse_addr_reg_fu_38 <= zext_ln14_cast_reg_206;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 reuse_reg_fu_42 <= 32'd0;
 end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
 reuse_reg_fu_42 <= add_ln16_fu_168_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln14_fu_125_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 addr_cmp_reg_222 <= addr_cmp_fu_138_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 freq_addr_reg_213 <= zext_ln14_cast_reg_206;
 zext_ln14_1_cast_reg_201[7 : 0] <= zext_ln14_1_cast_fu_99_p1[7 : 0];
 zext_ln14_cast_reg_206[6 : 0] <= zext_ln14_cast_fu_103_p1[6 : 0];
 end
end
always @ (*) begin
 if (((icmp_ln14_fu_125_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 flag_ce0 = 1'b1;
 end else begin
 flag_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln14_fu_125_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 flag_we0 = 1'b1;
 end else begin
 flag_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
 freq_ce0 = 1'b1;
 end else begin
 freq_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 freq_ce1 = 1'b1;
 end else begin
 freq_ce1 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
 freq_we0 = 1'b1;
 end else begin
 freq_we0 = 1'b0;
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
assign add_ln14_fu_147_p2 = (j_fu_46 + 31'd1);
assign add_ln16_fu_168_p2 = (reuse_select_fu_161_p3 + 32'd1);
assign addr_cmp_fu_138_p2 = ((reuse_addr_reg_fu_38 == zext_ln14_cast_reg_206) ? 1'b1 : 1'b0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign flag_address0 = j_cast_fu_130_p1;
assign flag_d0 = 1'd1;
assign freq_address0 = freq_addr_reg_213;
assign freq_address1 = zext_ln14_cast_reg_206;
assign freq_d0 = (reuse_select_fu_161_p3 + 32'd1);
assign icmp_ln14_fu_125_p2 = ((j_fu_46 == zext_ln14_1_cast_reg_201) ? 1'b1 : 1'b0);
assign j_cast_fu_130_p1 = j_fu_46;
assign reuse_select_fu_161_p3 = ((addr_cmp_reg_222[0:0] == 1'b1) ? reuse_reg_fu_42 : freq_q1);
assign zext_ln14_1_cast_fu_99_p1 = zext_ln14_1;
assign zext_ln14_cast_fu_103_p1 = zext_ln14;
always @ (posedge ap_clk) begin
 zext_ln14_1_cast_reg_201[30:8] <= 23'b00000000000000000000000;
 zext_ln14_cast_reg_206[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_22_4 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 trunc_ln9,
 flag_address0,
 flag_ce0,
 flag_q0,
 arr_load,
 temptemp1,
 temptemp1_ap_vld,
 freq_address0,
 freq_ce0,
 freq_q0,
 temptemp2,
 temptemp2_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] trunc_ln9;
output [6:0] flag_address0;
output flag_ce0;
input [0:0] flag_q0;
input [31:0] arr_load;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [6:0] freq_address0;
output freq_ce0;
input [31:0] freq_q0;
output [31:0] temptemp2;
output temptemp2_ap_vld;
reg ap_idle;
reg flag_ce0;
reg temptemp1_ap_vld;
reg freq_ce0;
reg temptemp2_ap_vld;
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
wire [0:0] icmp_ln22_fu_113_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
wire [63:0] i_1_cast_fu_125_p1;
reg [63:0] i_1_cast_reg_151;
reg [0:0] flag_load_reg_161;
wire ap_block_pp0_stage0;
reg [6:0] i_1_fu_44;
wire [6:0] add_ln22_fu_119_p2;
wire ap_loop_init;
reg [6:0] ap_sig_allocacmp_i;
wire ap_block_pp0_stage0_01001;
wire [30:0] i_1_cast6_fu_109_p1;
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
 end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
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
 if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if (((icmp_ln22_fu_113_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 i_1_fu_44 <= add_ln22_fu_119_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_1_fu_44 <= 7'd0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
 flag_load_reg_161 <= flag_q0;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln22_fu_113_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 i_1_cast_reg_151[6 : 0] <= i_1_cast_fu_125_p1[6 : 0];
 end
end
always @ (*) begin
 if (((icmp_ln22_fu_113_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
 if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 ap_sig_allocacmp_i = 7'd0;
 end else begin
 ap_sig_allocacmp_i = i_1_fu_44;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 flag_ce0 = 1'b1;
 end else begin
 flag_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 freq_ce0 = 1'b1;
 end else begin
 freq_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((flag_q0 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((flag_load_reg_161 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
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
assign add_ln22_fu_119_p2 = (ap_sig_allocacmp_i + 7'd1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign flag_address0 = i_1_cast_fu_125_p1;
assign freq_address0 = i_1_cast_reg_151;
assign i_1_cast6_fu_109_p1 = ap_sig_allocacmp_i;
assign i_1_cast_fu_125_p1 = ap_sig_allocacmp_i;
assign icmp_ln22_fu_113_p2 = ((i_1_cast6_fu_109_p1 == trunc_ln9) ? 1'b1 : 1'b0);
assign temptemp1 = arr_load;
assign temptemp2 = freq_q0;
always @ (posedge ap_clk) begin
 i_1_cast_reg_151[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_9_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 trunc_ln9,
 freq_address0,
 freq_ce0,
 freq_we0,
 freq_d0,
 flag_address0,
 flag_ce0,
 flag_we0,
 flag_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] trunc_ln9;
output [6:0] freq_address0;
output freq_ce0;
output freq_we0;
output [31:0] freq_d0;
output [6:0] flag_address0;
output flag_ce0;
output flag_we0;
output [0:0] flag_d0;
reg ap_idle;
reg freq_ce0;
reg freq_we0;
reg flag_ce0;
reg flag_we0;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln9_fu_86_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] i_cast1_fu_98_p1;
reg [6:0] i_fu_36;
wire [6:0] add_ln9_fu_92_p2;
wire ap_loop_init;
reg [6:0] ap_sig_allocacmp_i_1;
wire [30:0] i_cast_fu_82_p1;
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
 if ((icmp_ln9_fu_86_p2 == 1'd0)) begin
 i_fu_36 <= add_ln9_fu_92_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_36 <= 7'd0;
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
 if (((ap_start_int == 1'b1) & (icmp_ln9_fu_86_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_sig_allocacmp_i_1 = 7'd0;
 end else begin
 ap_sig_allocacmp_i_1 = i_fu_36;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 flag_ce0 = 1'b1;
 end else begin
 flag_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln9_fu_86_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 flag_we0 = 1'b1;
 end else begin
 flag_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 freq_ce0 = 1'b1;
 end else begin
 freq_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln9_fu_86_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 freq_we0 = 1'b1;
 end else begin
 freq_we0 = 1'b0;
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
assign add_ln9_fu_92_p2 = (ap_sig_allocacmp_i_1 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign flag_address0 = i_cast1_fu_98_p1;
assign flag_d0 = 1'd0;
assign freq_address0 = i_cast1_fu_98_p1;
assign freq_d0 = 32'd1;
assign i_cast1_fu_98_p1 = ap_sig_allocacmp_i_1;
assign i_cast_fu_82_p1 = ap_sig_allocacmp_i_1;
assign icmp_ln9_fu_86_p2 = ((i_cast_fu_82_p1 == trunc_ln9) ? 1'b1 : 1'b0);
endmodule
module entry_point_flag_RAM_AUTO_1R1W (
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
module entry_point_freq_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 address1, ce1,
 q1, 
 reset, clk);
parameter DataWidth = 32;
parameter AddressWidth = 7;
parameter AddressRange = 100;
input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input we0; 
output reg[DataWidth-1:0] q0; 
input[AddressWidth-1:0] address1;
input ce1;
output reg[DataWidth-1:0] q1; 
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
always @(posedge clk) 
begin 
 if (ce1) begin
 q1 <= ram[address1];
 end
end 
endmodule
