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
output [7:0] temptemp1;
output temptemp1_ap_vld;
output [7:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [6:0] str_address0;
reg str_ce0;
reg str_we0;
reg [7:0] str_d0;
wire [7:0] str_q0;
wire grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_str_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_str_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_str_we0;
wire [7:0] grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_str_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_str_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_str_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_str_we0;
wire [7:0] grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_str_d0;
reg grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_start_reg;
wire ap_CS_fsm_state3;
wire ap_CS_fsm_state4;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_start_reg = 1'b0;
end
entry_point_str_RAM_AUTO_1R1W #(
 .DataWidth( 8 ),
 .AddressRange( 100 ),
 .AddressWidth( 7 ))
str_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(str_address0),
 .ce0(str_ce0),
 .we0(str_we0),
 .d0(str_d0),
 .q0(str_q0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_21_1 grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_ap_ready),
 .str_address0(grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_str_address0),
 .str_ce0(grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_str_ce0),
 .str_we0(grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_str_we0),
 .str_d0(grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_str_d0),
 .str_q0(str_q0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_26_1 grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_ready),
 .str_address0(grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_str_address0),
 .str_ce0(grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_str_ce0),
 .str_we0(grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_str_we0),
 .str_d0(grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_str_d0),
 .str_q0(str_q0)
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
 grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_start_reg <= 1'b0;
 end
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 str_address0 = grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_str_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 str_address0 = grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_str_address0;
 end else begin
 str_address0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 str_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_str_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 str_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_str_ce0;
 end else begin
 str_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 str_d0 = grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_str_d0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 str_d0 = grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_str_d0;
 end else begin
 str_d0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 str_we0 = grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_str_we0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 str_we0 = grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_str_we0;
 end else begin
 str_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
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
assign grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_21_1_fu_50_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_26_1_fu_56_ap_start_reg;
assign temptemp1 = 8'd0;
assign temptemp2 = 8'd0;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_21_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 str_address0,
 str_ce0,
 str_we0,
 str_d0,
 str_q0
);
parameter ap_ST_fsm_state1 = 2'd1;
parameter ap_ST_fsm_state2 = 2'd2;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [6:0] str_address0;
output str_ce0;
output str_we0;
output [7:0] str_d0;
input [7:0] str_q0;
reg ap_idle;
reg[6:0] str_address0;
reg str_ce0;
reg str_we0;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire ap_CS_fsm_state2;
wire ap_block_state2_pp0_stage1_iter0;
wire [0:0] icmp_ln21_fu_60_p2;
reg ap_condition_exit_pp0_iter0_stage1;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [6:0] i_2_reg_116;
reg ap_block_state1_pp0_stage0_iter0;
reg [6:0] str_addr_reg_121;
wire [63:0] i_cast_fu_55_p1;
reg [6:0] i_fu_30;
wire [6:0] add_ln21_fu_66_p2;
wire ap_loop_init;
reg [6:0] ap_sig_allocacmp_i_2;
wire [0:0] icmp_ln22_fu_71_p2;
wire [0:0] icmp_ln22_1_fu_77_p2;
wire [0:0] and_ln22_fu_83_p2;
wire [7:0] select_ln22_fu_89_p3;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [1:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
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
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 i_fu_30 <= 7'd0;
 end else if (((icmp_ln21_fu_60_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 i_fu_30 <= add_ln21_fu_66_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 i_2_reg_116 <= ap_sig_allocacmp_i_2;
 str_addr_reg_121 <= i_cast_fu_55_p1;
 end
end
always @ (*) begin
 if ((ap_start_int == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
 if (((icmp_ln21_fu_60_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_condition_exit_pp0_iter0_stage1 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage1 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_i_2 = 7'd0;
 end else begin
 ap_sig_allocacmp_i_2 = i_fu_30;
 end
end
always @ (*) begin
 if (((icmp_ln21_fu_60_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 str_address0 = str_addr_reg_121;
 end else if ((1'b1 == ap_CS_fsm_state1)) begin
 str_address0 = i_cast_fu_55_p1;
 end else begin
 str_address0 = 'bx;
 end
end
always @ (*) begin
 if ((((icmp_ln21_fu_60_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1)))) begin
 str_ce0 = 1'b1;
 end else begin
 str_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln21_fu_60_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 str_we0 = 1'b1;
 end else begin
 str_we0 = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln21_fu_66_p2 = (i_2_reg_116 + 7'd1);
assign and_ln22_fu_83_p2 = (icmp_ln22_fu_71_p2 & icmp_ln22_1_fu_77_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign i_cast_fu_55_p1 = ap_sig_allocacmp_i_2;
assign icmp_ln21_fu_60_p2 = ((str_q0 == 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln22_1_fu_77_p2 = (($signed(str_q0) < $signed(8'd91)) ? 1'b1 : 1'b0);
assign icmp_ln22_fu_71_p2 = (($signed(str_q0) > $signed(8'd64)) ? 1'b1 : 1'b0);
assign select_ln22_fu_89_p3 = ((and_ln22_fu_83_p2[0:0] == 1'b1) ? 8'd32 : 8'd0);
assign str_d0 = (str_q0 + select_ln22_fu_89_p3);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_26_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 str_address0,
 str_ce0,
 str_we0,
 str_d0,
 str_q0
);
parameter ap_ST_fsm_state1 = 2'd1;
parameter ap_ST_fsm_state2 = 2'd2;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [6:0] str_address0;
output str_ce0;
output str_we0;
output [7:0] str_d0;
input [7:0] str_q0;
reg ap_idle;
reg[6:0] str_address0;
reg str_ce0;
reg str_we0;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire ap_CS_fsm_state2;
wire ap_block_state2_pp0_stage1_iter0;
wire [0:0] icmp_ln26_fu_60_p2;
reg ap_condition_exit_pp0_iter0_stage1;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [6:0] i_1_reg_116;
reg ap_block_state1_pp0_stage0_iter0;
reg [6:0] str_addr_reg_121;
wire [63:0] i_1_cast_fu_55_p1;
reg [6:0] i_fu_30;
wire [6:0] add_ln26_fu_66_p2;
wire ap_loop_init;
reg [6:0] ap_sig_allocacmp_i_1;
wire [0:0] icmp_ln27_fu_71_p2;
wire [0:0] icmp_ln27_1_fu_77_p2;
wire [0:0] and_ln27_fu_83_p2;
wire [7:0] select_ln27_fu_89_p3;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [1:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
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
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 i_fu_30 <= 7'd0;
 end else if (((icmp_ln26_fu_60_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 i_fu_30 <= add_ln26_fu_66_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 i_1_reg_116 <= ap_sig_allocacmp_i_1;
 str_addr_reg_121 <= i_1_cast_fu_55_p1;
 end
end
always @ (*) begin
 if ((ap_start_int == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
 if (((icmp_ln26_fu_60_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_condition_exit_pp0_iter0_stage1 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage1 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_i_1 = 7'd0;
 end else begin
 ap_sig_allocacmp_i_1 = i_fu_30;
 end
end
always @ (*) begin
 if (((icmp_ln26_fu_60_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 str_address0 = str_addr_reg_121;
 end else if ((1'b1 == ap_CS_fsm_state1)) begin
 str_address0 = i_1_cast_fu_55_p1;
 end else begin
 str_address0 = 'bx;
 end
end
always @ (*) begin
 if ((((icmp_ln26_fu_60_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1)))) begin
 str_ce0 = 1'b1;
 end else begin
 str_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln26_fu_60_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 str_we0 = 1'b1;
 end else begin
 str_we0 = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln26_fu_66_p2 = (i_1_reg_116 + 7'd1);
assign and_ln27_fu_83_p2 = (icmp_ln27_fu_71_p2 & icmp_ln27_1_fu_77_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign i_1_cast_fu_55_p1 = ap_sig_allocacmp_i_1;
assign icmp_ln26_fu_60_p2 = ((str_q0 == 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln27_1_fu_77_p2 = (($signed(str_q0) < $signed(8'd123)) ? 1'b1 : 1'b0);
assign icmp_ln27_fu_71_p2 = (($signed(str_q0) > $signed(8'd96)) ? 1'b1 : 1'b0);
assign select_ln27_fu_89_p3 = ((and_ln27_fu_83_p2[0:0] == 1'b1) ? 8'd32 : 8'd0);
assign str_d0 = (str_q0 - select_ln27_fu_89_p3);
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
module entry_point_str_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 reset, clk);
parameter DataWidth = 8;
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
