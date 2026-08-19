module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
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
output [7:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [7:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire ap_CS_fsm_state7;
reg [7:0] frequency_address0;
reg frequency_ce0;
reg frequency_we0;
reg [31:0] frequency_d0;
wire [31:0] frequency_q0;
reg frequency_ce1;
wire [31:0] frequency_q1;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_ap_ready;
wire [7:0] grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_frequency_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_frequency_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_frequency_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_frequency_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_ap_ready;
wire [7:0] grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_frequency_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_frequency_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_frequency_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_frequency_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_ap_ready;
wire [7:0] grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_frequency_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_frequency_ce0;
wire [7:0] grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_frequency_address1;
wire grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_frequency_ce1;
wire [7:0] grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_min_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_min_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_ap_start_reg;
reg [7:0] ap_NS_fsm;
wire ap_NS_fsm_state3;
wire ap_CS_fsm_state4;
reg grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_ap_start_reg;
wire ap_CS_fsm_state5;
wire ap_CS_fsm_state6;
reg [7:0] min_loc_fu_34;
wire [63:0] zext_ln28_fu_90_p1;
wire ap_CS_fsm_state8;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
reg ap_ST_fsm_state6_blk;
wire ap_ST_fsm_state7_blk;
wire ap_ST_fsm_state8_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_ap_start_reg = 1'b0;
end
entry_point_frequency_RAM_AUTO_1R1W #(
 .DataWidth( 32 ),
 .AddressRange( 255 ),
 .AddressWidth( 8 ))
frequency_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(frequency_address0),
 .ce0(frequency_ce0),
 .we0(frequency_we0),
 .d0(frequency_d0),
 .q0(frequency_q0),
 .address1(grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_frequency_address1),
 .ce1(frequency_ce1),
 .q1(frequency_q1)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_11_1 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_ap_ready),
 .frequency_address0(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_frequency_address0),
 .frequency_ce0(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_frequency_ce0),
 .frequency_we0(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_frequency_we0),
 .frequency_d0(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_frequency_d0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_14_2 grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_ap_ready),
 .frequency_address0(grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_frequency_address0),
 .frequency_ce0(grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_frequency_ce0),
 .frequency_we0(grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_frequency_we0),
 .frequency_d0(grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_frequency_d0),
 .frequency_q0(frequency_q0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_18_3 grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_ap_ready),
 .frequency_address0(grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_frequency_address0),
 .frequency_ce0(grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_frequency_ce0),
 .frequency_q0(frequency_q0),
 .frequency_address1(grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_frequency_address1),
 .frequency_ce1(grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_frequency_ce1),
 .frequency_q1(frequency_q1),
 .min_out(grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_min_out),
 .min_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_min_out_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state2) & (1'b1 == ap_NS_fsm_state3))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_min_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
 min_loc_fu_34 <= grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_min_out;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_ap_done == 1'b0)) begin
 ap_ST_fsm_state6_blk = 1'b1;
 end else begin
 ap_ST_fsm_state6_blk = 1'b0;
 end
end
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state8)) begin
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
 if ((1'b1 == ap_CS_fsm_state8)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 frequency_address0 = zext_ln28_fu_90_p1;
 end else if ((1'b1 == ap_CS_fsm_state6)) begin
 frequency_address0 = grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_frequency_address0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 frequency_address0 = grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_frequency_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 frequency_address0 = grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_frequency_address0;
 end else begin
 frequency_address0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 frequency_ce0 = 1'b1;
 end else if ((1'b1 == ap_CS_fsm_state6)) begin
 frequency_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_frequency_ce0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 frequency_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_frequency_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 frequency_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_frequency_ce0;
 end else begin
 frequency_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 frequency_ce1 = grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_frequency_ce1;
 end else begin
 frequency_ce1 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 frequency_d0 = grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_frequency_d0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 frequency_d0 = grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_frequency_d0;
 end else begin
 frequency_d0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 frequency_we0 = grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_frequency_we0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 frequency_we0 = grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_frequency_we0;
 end else begin
 frequency_we0 = 1'b0;
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
 if ((1'b1 == ap_CS_fsm_state8)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 ap_ST_fsm_state6 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 end
 ap_ST_fsm_state7 : begin
 ap_NS_fsm = ap_ST_fsm_state8;
 end
 ap_ST_fsm_state8 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_NS_fsm_state3 = ap_NS_fsm[32'd2];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_69_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_14_2_fu_75_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_18_3_fu_80_ap_start_reg;
assign temptemp1 = min_loc_fu_34;
assign temptemp2 = frequency_q0;
assign zext_ln28_fu_90_p1 = min_loc_fu_34;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_11_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 frequency_address0,
 frequency_ce0,
 frequency_we0,
 frequency_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [7:0] frequency_address0;
output frequency_ce0;
output frequency_we0;
output [31:0] frequency_d0;
reg ap_idle;
reg frequency_ce0;
reg frequency_we0;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln11_fu_54_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] i_cast_fu_66_p1;
reg [7:0] i_fu_28;
wire [7:0] add_ln11_fu_60_p2;
wire ap_loop_init;
reg [7:0] ap_sig_allocacmp_i_2;
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
 if ((icmp_ln11_fu_54_p2 == 1'd0)) begin
 i_fu_28 <= add_ln11_fu_60_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_28 <= 8'd0;
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
 if (((ap_start_int == 1'b1) & (icmp_ln11_fu_54_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_sig_allocacmp_i_2 = 8'd0;
 end else begin
 ap_sig_allocacmp_i_2 = i_fu_28;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 frequency_ce0 = 1'b1;
 end else begin
 frequency_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln11_fu_54_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 frequency_we0 = 1'b1;
 end else begin
 frequency_we0 = 1'b0;
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
assign add_ln11_fu_60_p2 = (ap_sig_allocacmp_i_2 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign frequency_address0 = i_cast_fu_66_p1;
assign frequency_d0 = 32'd0;
assign i_cast_fu_66_p1 = ap_sig_allocacmp_i_2;
assign icmp_ln11_fu_54_p2 = ((ap_sig_allocacmp_i_2 == 8'd255) ? 1'b1 : 1'b0);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_14_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 frequency_address0,
 frequency_ce0,
 frequency_we0,
 frequency_d0,
 frequency_q0
);
parameter ap_ST_fsm_pp0_stage0 = 2'd1;
parameter ap_ST_fsm_pp0_stage1 = 2'd2;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [7:0] frequency_address0;
output frequency_ce0;
output frequency_we0;
output [31:0] frequency_d0;
input [31:0] frequency_q0;
reg ap_idle;
reg[7:0] frequency_address0;
reg frequency_ce0;
reg frequency_we0;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
reg ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state3_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln14_fu_84_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_CS_fsm_pp0_stage1;
wire ap_block_state2_pp0_stage1_iter0;
wire ap_block_state4_pp0_stage1_iter1;
wire ap_block_pp0_stage1_subdone;
wire ap_block_pp0_stage0_11001;
reg [63:0] i_1_reg_162;
wire ap_block_pp0_stage1_11001;
reg [7:0] frequency_addr_1_reg_175;
wire [0:0] addr_cmp_fu_103_p2;
reg [0:0] addr_cmp_reg_180;
reg ap_enable_reg_pp0_iter0_reg;
wire [6:0] string_address0;
reg string_ce0;
wire [7:0] string_q0;
wire ap_block_pp0_stage1;
wire signed [63:0] sext_ln16_fu_95_p1;
wire ap_block_pp0_stage0;
reg [63:0] reuse_addr_reg_fu_24;
wire ap_loop_init;
reg [31:0] reuse_reg_fu_28;
wire [31:0] add_ln16_fu_129_p2;
reg [63:0] i_fu_32;
wire [63:0] add_ln14_fu_90_p2;
wire signed [7:0] icmp_ln14_fu_84_p0;
wire signed [7:0] sext_ln16_fu_95_p0;
wire [31:0] reuse_select_fu_122_p3;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [1:0] ap_NS_fsm;
reg ap_idle_pp0_1to1;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_14_2_string_RAM_AUTO_1R1W #(
 .DataWidth( 8 ),
 .AddressRange( 100 ),
 .AddressWidth( 7 ))
string_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(string_address0),
 .ce0(string_ce0),
 .q0(string_q0)
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
 ap_enable_reg_pp0_iter0_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
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
 if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_fu_32 <= 64'd0;
 end else if (((icmp_ln14_fu_84_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_fu_32 <= add_ln14_fu_90_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 reuse_addr_reg_fu_24 <= 64'd18446744073709551615;
 end else if (((icmp_ln14_fu_84_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 reuse_addr_reg_fu_24 <= sext_ln16_fu_95_p1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 reuse_reg_fu_28 <= 32'd0;
 end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 reuse_reg_fu_28 <= add_ln16_fu_129_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln14_fu_84_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 addr_cmp_reg_180 <= addr_cmp_fu_103_p2;
 frequency_addr_1_reg_175 <= sext_ln16_fu_95_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 i_1_reg_162 <= i_fu_32;
 end
end
always @ (*) begin
 if (((icmp_ln14_fu_84_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 ap_enable_reg_pp0_iter0 = ap_start_int;
 end else begin
 ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
 if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
 ap_idle_pp0_1to1 = 1'b1;
 end else begin
 ap_idle_pp0_1to1 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
 if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 frequency_address0 = frequency_addr_1_reg_175;
 end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 frequency_address0 = sext_ln16_fu_95_p1;
 end else begin
 frequency_address0 = 'bx;
 end
 end else begin
 frequency_address0 = 'bx;
 end
end
always @ (*) begin
 if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
 frequency_ce0 = 1'b1;
 end else begin
 frequency_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 frequency_we0 = 1'b1;
 end else begin
 frequency_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 string_ce0 = 1'b1;
 end else begin
 string_ce0 = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_pp0_stage0 : begin
 if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end
 end
 ap_ST_fsm_pp0_stage1 : begin
 if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln14_fu_90_p2 = (i_1_reg_162 + 64'd1);
assign add_ln16_fu_129_p2 = (reuse_select_fu_122_p3 + 32'd1);
assign addr_cmp_fu_103_p2 = ((reuse_addr_reg_fu_24 == sext_ln16_fu_95_p1) ? 1'b1 : 1'b0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state4_pp0_stage1_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign frequency_d0 = (reuse_select_fu_122_p3 + 32'd1);
assign icmp_ln14_fu_84_p0 = string_q0;
assign icmp_ln14_fu_84_p2 = ((icmp_ln14_fu_84_p0 == 8'd0) ? 1'b1 : 1'b0);
assign reuse_select_fu_122_p3 = ((addr_cmp_reg_180[0:0] == 1'b1) ? reuse_reg_fu_28 : frequency_q0);
assign sext_ln16_fu_95_p0 = string_q0;
assign sext_ln16_fu_95_p1 = sext_ln16_fu_95_p0;
assign string_address0 = i_fu_32;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_14_2_string_RAM_AUTO_1R1W (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 8;
parameter AddressWidth = 7;
parameter AddressRange = 100;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h0;
 rom0[1]=8'h0;
 rom0[2]=8'h0;
 rom0[3]=8'h0;
 rom0[4]=8'h0;
 rom0[5]=8'h0;
 rom0[6]=8'h0;
 rom0[7]=8'h0;
 rom0[8]=8'h0;
 rom0[9]=8'h0;
 rom0[10]=8'h0;
 rom0[11]=8'h0;
 rom0[12]=8'h0;
 rom0[13]=8'h0;
 rom0[14]=8'h0;
 rom0[15]=8'h0;
 rom0[16]=8'h0;
 rom0[17]=8'h0;
 rom0[18]=8'h0;
 rom0[19]=8'h0;
 rom0[20]=8'h0;
 rom0[21]=8'h0;
 rom0[22]=8'h0;
 rom0[23]=8'h0;
 rom0[24]=8'h0;
 rom0[25]=8'h0;
 rom0[26]=8'h0;
 rom0[27]=8'h0;
 rom0[28]=8'h0;
 rom0[29]=8'h0;
 rom0[30]=8'h0;
 rom0[31]=8'h0;
 rom0[32]=8'h0;
 rom0[33]=8'h0;
 rom0[34]=8'h0;
 rom0[35]=8'h0;
 rom0[36]=8'h0;
 rom0[37]=8'h0;
 rom0[38]=8'h0;
 rom0[39]=8'h0;
 rom0[40]=8'h0;
 rom0[41]=8'h0;
 rom0[42]=8'h0;
 rom0[43]=8'h0;
 rom0[44]=8'h0;
 rom0[45]=8'h0;
 rom0[46]=8'h0;
 rom0[47]=8'h0;
 rom0[48]=8'h0;
 rom0[49]=8'h0;
 rom0[50]=8'h0;
 rom0[51]=8'h0;
 rom0[52]=8'h0;
 rom0[53]=8'h0;
 rom0[54]=8'h0;
 rom0[55]=8'h0;
 rom0[56]=8'h0;
 rom0[57]=8'h0;
 rom0[58]=8'h0;
 rom0[59]=8'h0;
 rom0[60]=8'h0;
 rom0[61]=8'h0;
 rom0[62]=8'h0;
 rom0[63]=8'h0;
 rom0[64]=8'h0;
 rom0[65]=8'h0;
 rom0[66]=8'h0;
 rom0[67]=8'h0;
 rom0[68]=8'h0;
 rom0[69]=8'h0;
 rom0[70]=8'h0;
 rom0[71]=8'h0;
 rom0[72]=8'h0;
 rom0[73]=8'h0;
 rom0[74]=8'h0;
 rom0[75]=8'h0;
 rom0[76]=8'h0;
 rom0[77]=8'h0;
 rom0[78]=8'h0;
 rom0[79]=8'h0;
 rom0[80]=8'h0;
 rom0[81]=8'h0;
 rom0[82]=8'h0;
 rom0[83]=8'h0;
 rom0[84]=8'h0;
 rom0[85]=8'h0;
 rom0[86]=8'h0;
 rom0[87]=8'h0;
 rom0[88]=8'h0;
 rom0[89]=8'h0;
 rom0[90]=8'h0;
 rom0[91]=8'h0;
 rom0[92]=8'h0;
 rom0[93]=8'h0;
 rom0[94]=8'h0;
 rom0[95]=8'h0;
 rom0[96]=8'h0;
 rom0[97]=8'h0;
 rom0[98]=8'h0;
 rom0[99]=8'h0;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_18_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 frequency_address0,
 frequency_ce0,
 frequency_q0,
 frequency_address1,
 frequency_ce1,
 frequency_q1,
 min_out,
 min_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [7:0] frequency_address0;
output frequency_ce0;
input [31:0] frequency_q0;
output [7:0] frequency_address1;
output frequency_ce1;
input [31:0] frequency_q1;
output [7:0] min_out;
output min_out_ap_vld;
reg ap_idle;
reg frequency_ce0;
reg frequency_ce1;
reg min_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln18_fu_99_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [31:0] min_3_reg_213;
wire ap_block_pp0_stage0_11001;
reg [7:0] i_reg_218;
wire [63:0] trunc_ln23_cast_fu_111_p1;
wire ap_block_pp0_stage0;
wire [63:0] zext_ln20_fu_116_p1;
reg [31:0] firstFlag_fu_34;
wire [31:0] firstFlag_1_fu_144_p3;
wire ap_loop_init;
reg [31:0] min_fu_38;
wire [31:0] min_5_fu_176_p3;
reg [31:0] ap_sig_allocacmp_min_3;
reg [7:0] min_1_fu_42;
wire [7:0] add_ln18_fu_105_p2;
reg [7:0] ap_sig_allocacmp_i;
wire ap_block_pp0_stage0_01001;
wire [0:0] icmp_ln19_fu_129_p2;
wire [0:0] icmp_ln20_1_fu_152_p2;
wire [0:0] icmp_ln20_fu_135_p2;
wire [0:0] xor_ln20_fu_158_p2;
wire [0:0] and_ln20_fu_164_p2;
wire [0:0] or_ln20_fu_170_p2;
wire [31:0] zext_ln23_fu_141_p1;
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 firstFlag_fu_34 <= 32'd1;
 end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
 firstFlag_fu_34 <= firstFlag_1_fu_144_p3;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if (((icmp_ln18_fu_99_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 min_1_fu_42 <= add_ln18_fu_105_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 min_1_fu_42 <= 8'd0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 i_reg_218 <= ap_sig_allocacmp_i;
 min_3_reg_213 <= ap_sig_allocacmp_min_3;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 min_fu_38 <= min_5_fu_176_p3;
 end
end
always @ (*) begin
 if (((icmp_ln18_fu_99_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
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
 if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_sig_allocacmp_i = 8'd0;
 end else begin
 ap_sig_allocacmp_i = min_1_fu_42;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_sig_allocacmp_min_3 = min_5_fu_176_p3;
 end else begin
 ap_sig_allocacmp_min_3 = min_fu_38;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 frequency_ce0 = 1'b1;
 end else begin
 frequency_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 frequency_ce1 = 1'b1;
 end else begin
 frequency_ce1 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln18_fu_99_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 min_out_ap_vld = 1'b1;
 end else begin
 min_out_ap_vld = 1'b0;
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
assign add_ln18_fu_105_p2 = (ap_sig_allocacmp_i + 8'd1);
assign and_ln20_fu_164_p2 = (xor_ln20_fu_158_p2 & icmp_ln20_fu_135_p2);
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
assign firstFlag_1_fu_144_p3 = ((icmp_ln19_fu_129_p2[0:0] == 1'b1) ? firstFlag_fu_34 : 32'd0);
assign frequency_address0 = zext_ln20_fu_116_p1;
assign frequency_address1 = trunc_ln23_cast_fu_111_p1;
assign icmp_ln18_fu_99_p2 = ((ap_sig_allocacmp_i == 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_129_p2 = ((frequency_q1 == 32'd0) ? 1'b1 : 1'b0);
assign icmp_ln20_1_fu_152_p2 = (($signed(frequency_q1) < $signed(frequency_q0)) ? 1'b1 : 1'b0);
assign icmp_ln20_fu_135_p2 = ((firstFlag_fu_34 == 32'd0) ? 1'b1 : 1'b0);
assign min_5_fu_176_p3 = ((or_ln20_fu_170_p2[0:0] == 1'b1) ? min_3_reg_213 : zext_ln23_fu_141_p1);
assign min_out = ap_sig_allocacmp_min_3[7:0];
assign or_ln20_fu_170_p2 = (icmp_ln19_fu_129_p2 | and_ln20_fu_164_p2);
assign trunc_ln23_cast_fu_111_p1 = ap_sig_allocacmp_i;
assign xor_ln20_fu_158_p2 = (icmp_ln20_1_fu_152_p2 ^ 1'd1);
assign zext_ln20_fu_116_p1 = ap_sig_allocacmp_min_3;
assign zext_ln23_fu_141_p1 = i_reg_218;
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
module entry_point_frequency_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 address1, ce1,
 q1, 
 reset, clk);
parameter DataWidth = 32;
parameter AddressWidth = 8;
parameter AddressRange = 255;
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
