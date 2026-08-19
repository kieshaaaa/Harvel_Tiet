module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 choice,
 value_r,
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
input [31:0] choice;
input [31:0] value_r;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [31:0] rear;
reg [31:0] front;
wire [31:0] choice_read_read_fu_38_p2;
wire [31:0] add_ln9_fu_170_p2;
wire ap_CS_fsm_state2;
wire [0:0] icmp_ln7_fu_152_p2;
wire grp_entry_point_Pipeline_1_fu_139_ap_start;
wire grp_entry_point_Pipeline_1_fu_139_ap_done;
wire grp_entry_point_Pipeline_1_fu_139_ap_idle;
wire grp_entry_point_Pipeline_1_fu_139_ap_ready;
wire [1:0] grp_entry_point_Pipeline_1_fu_139_ap_return;
reg [31:0] rear_loc_3_reg_76;
reg [31:0] rear_loc_0_reg_44;
wire ap_CS_fsm_state4;
reg ap_block_state4_on_subcall_done;
reg [31:0] front_loc_5_reg_90;
reg [31:0] front_loc_0_reg_54;
reg [31:0] ap_phi_mux_front_loc_1_phi_fu_67_p4;
wire [0:0] icmp_ln8_fu_158_p2;
reg [31:0] ap_phi_mux_rear_loc_2_phi_fu_109_p4;
reg [31:0] ap_phi_mux_front_loc_4_phi_fu_131_p4;
reg [31:0] rear_loc_2_reg_105;
reg [31:0] ap_phi_mux_front_loc_3_phi_fu_120_p4;
reg [31:0] front_loc_3_reg_117;
wire [31:0] add_ln21_fu_200_p2;
wire [0:0] or_ln17_fu_194_p2;
reg grp_entry_point_Pipeline_1_fu_139_ap_start_reg;
wire ap_CS_fsm_state3;
wire [0:0] icmp_ln17_fu_182_p2;
wire [0:0] icmp_ln17_1_fu_188_p2;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
reg ap_condition_121;
reg ap_condition_127;
reg ap_condition_187;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 rear = 32'd4294967295;
#0 front = 32'd4294967295;
#0 grp_entry_point_Pipeline_1_fu_139_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_1 grp_entry_point_Pipeline_1_fu_139(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_1_fu_139_ap_start),
 .ap_done(grp_entry_point_Pipeline_1_fu_139_ap_done),
 .ap_idle(grp_entry_point_Pipeline_1_fu_139_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_1_fu_139_ap_ready),
 .choice_load(choice),
 .ap_return(grp_entry_point_Pipeline_1_fu_139_ap_return)
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
 grp_entry_point_Pipeline_1_fu_139_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_entry_point_Pipeline_1_fu_139_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_1_fu_139_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_1_fu_139_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln8_fu_158_p2 == 1'd1) & (icmp_ln7_fu_152_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 front <= 32'd0;
 end else if (((1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4) & ((~(choice == 32'd1) & (choice_read_read_fu_38_p2 == 32'd2) & (or_ln17_fu_194_p2 == 1'd0)) | (~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd1) & ~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd0) & (choice == 32'd1) & (or_ln17_fu_194_p2 == 1'd0))))) begin
 front <= add_ln21_fu_200_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((choice == 32'd1)) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 front_loc_0_reg_54 <= front;
 end else if ((1'b1 == ap_condition_187)) begin
 front_loc_0_reg_54 <= front_loc_5_reg_90;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd1) & ~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd0) & (1'b0 == ap_block_state4_on_subcall_done) & (choice == 32'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 front_loc_3_reg_117 <= front_loc_5_reg_90;
 end else if (((ap_start == 1'b1) & (choice_read_read_fu_38_p2 == 32'd2) & (1'b1 == ap_CS_fsm_state1))) begin
 front_loc_3_reg_117 <= front;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln7_fu_152_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 front_loc_5_reg_90 <= ap_phi_mux_front_loc_1_phi_fu_67_p4;
 end else if (((1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4) & ((~(choice == 32'd1) & (choice_read_read_fu_38_p2 == 32'd2)) | (~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd1) & ~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd0) & (choice == 32'd1))))) begin
 front_loc_5_reg_90 <= ap_phi_mux_front_loc_4_phi_fu_131_p4;
 end else if (((icmp_ln7_fu_152_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 front_loc_5_reg_90 <= front_loc_0_reg_54;
 end
end
always @ (posedge ap_clk) begin
 if ((choice == 32'd1)) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 rear_loc_0_reg_44 <= rear;
 end else if ((1'b1 == ap_condition_187)) begin
 rear_loc_0_reg_44 <= rear_loc_3_reg_76;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd1) & ~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd0) & (1'b0 == ap_block_state4_on_subcall_done) & (choice == 32'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 rear_loc_2_reg_105 <= rear_loc_3_reg_76;
 end else if (((ap_start == 1'b1) & (choice_read_read_fu_38_p2 == 32'd2) & (1'b1 == ap_CS_fsm_state1))) begin
 rear_loc_2_reg_105 <= rear;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln7_fu_152_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 rear_loc_3_reg_76 <= add_ln9_fu_170_p2;
 end else if (((1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4) & ((~(choice == 32'd1) & (choice_read_read_fu_38_p2 == 32'd2)) | (~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd1) & ~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd0) & (choice == 32'd1))))) begin
 rear_loc_3_reg_76 <= ap_phi_mux_rear_loc_2_phi_fu_109_p4;
 end else if (((icmp_ln7_fu_152_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 rear_loc_3_reg_76 <= rear_loc_0_reg_44;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln7_fu_152_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 rear <= add_ln9_fu_170_p2;
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
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_block_state4_on_subcall_done)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4) & ((~(choice_read_read_fu_38_p2 == 32'd2) & ~(choice == 32'd1)) | ((grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd0) & (choice == 32'd1))))) begin
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
 if (((icmp_ln7_fu_152_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 if ((icmp_ln8_fu_158_p2 == 1'd0)) begin
 ap_phi_mux_front_loc_1_phi_fu_67_p4 = front_loc_0_reg_54;
 end else if ((icmp_ln8_fu_158_p2 == 1'd1)) begin
 ap_phi_mux_front_loc_1_phi_fu_67_p4 = 32'd0;
 end else begin
 ap_phi_mux_front_loc_1_phi_fu_67_p4 = 'bx;
 end
 end else begin
 ap_phi_mux_front_loc_1_phi_fu_67_p4 = 'bx;
 end
end
always @ (*) begin
 if ((~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd1) & ~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd0) & (choice == 32'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_phi_mux_front_loc_3_phi_fu_120_p4 = front_loc_5_reg_90;
 end else begin
 ap_phi_mux_front_loc_3_phi_fu_120_p4 = front_loc_3_reg_117;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 if ((1'b1 == ap_condition_127)) begin
 ap_phi_mux_front_loc_4_phi_fu_131_p4 = ap_phi_mux_front_loc_3_phi_fu_120_p4;
 end else if ((1'b1 == ap_condition_121)) begin
 ap_phi_mux_front_loc_4_phi_fu_131_p4 = add_ln21_fu_200_p2;
 end else begin
 ap_phi_mux_front_loc_4_phi_fu_131_p4 = 'bx;
 end
 end else begin
 ap_phi_mux_front_loc_4_phi_fu_131_p4 = 'bx;
 end
end
always @ (*) begin
 if ((~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd1) & ~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd0) & (choice == 32'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_phi_mux_rear_loc_2_phi_fu_109_p4 = rear_loc_3_reg_76;
 end else begin
 ap_phi_mux_rear_loc_2_phi_fu_109_p4 = rear_loc_2_reg_105;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4) & ((~(choice_read_read_fu_38_p2 == 32'd2) & ~(choice == 32'd1)) | ((grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd0) & (choice == 32'd1))))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if ((~(choice == 32'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else if (((ap_start == 1'b1) & (choice == 32'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
 if (((1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4) & ((~(choice_read_read_fu_38_p2 == 32'd2) & ~(choice == 32'd1)) | ((grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd0) & (choice == 32'd1))))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else if (((1'b0 == ap_block_state4_on_subcall_done) & (1'b1 == ap_CS_fsm_state4) & ((~(choice == 32'd1) & (choice_read_read_fu_38_p2 == 32'd2)) | (~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd1) & ~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd0) & (choice == 32'd1))))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else if (((1'b0 == ap_block_state4_on_subcall_done) & (grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd1) & (choice == 32'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln21_fu_200_p2 = (ap_phi_mux_front_loc_3_phi_fu_120_p4 + 32'd1);
assign add_ln9_fu_170_p2 = (rear_loc_0_reg_44 + 32'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
always @ (*) begin
 ap_block_state4_on_subcall_done = ((grp_entry_point_Pipeline_1_fu_139_ap_done == 1'b0) & (choice == 32'd1));
end
always @ (*) begin
 ap_condition_121 = ((~(choice == 32'd1) & (choice_read_read_fu_38_p2 == 32'd2) & (or_ln17_fu_194_p2 == 1'd0)) | (~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd1) & ~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd0) & (choice == 32'd1) & (or_ln17_fu_194_p2 == 1'd0)));
end
always @ (*) begin
 ap_condition_127 = ((~(choice == 32'd1) & (choice_read_read_fu_38_p2 == 32'd2) & (or_ln17_fu_194_p2 == 1'd1)) | (~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd1) & ~(grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd0) & (choice == 32'd1) & (or_ln17_fu_194_p2 == 1'd1)));
end
always @ (*) begin
 ap_condition_187 = ((1'b0 == ap_block_state4_on_subcall_done) & (grp_entry_point_Pipeline_1_fu_139_ap_return == 2'd1) & (1'b1 == ap_CS_fsm_state4));
end
assign ap_return = 32'd0;
assign choice_read_read_fu_38_p2 = choice;
assign grp_entry_point_Pipeline_1_fu_139_ap_start = grp_entry_point_Pipeline_1_fu_139_ap_start_reg;
assign icmp_ln17_1_fu_188_p2 = (($signed(ap_phi_mux_front_loc_3_phi_fu_120_p4) > $signed(ap_phi_mux_rear_loc_2_phi_fu_109_p4)) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_182_p2 = ((ap_phi_mux_front_loc_3_phi_fu_120_p4 == 32'd4294967295) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_152_p2 = (($signed(rear_loc_0_reg_44) < $signed(32'd49)) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_158_p2 = ((front_loc_0_reg_54 == 32'd4294967295) ? 1'b1 : 1'b0);
assign or_ln17_fu_194_p2 = (icmp_ln17_fu_182_p2 | icmp_ln17_1_fu_188_p2);
endmodule
module entry_point_entry_point_Pipeline_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 choice_load,
 ap_return
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] choice_load;
output [1:0] ap_return;
reg ap_idle;
reg[1:0] ap_return;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [31:0] choice_load_read_read_fu_24_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [1:0] ap_phi_mux_merge_phi_fu_33_p6;
reg [1:0] ap_return_preg;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_start_int;
wire ap_loop_init;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_return_preg = 2'd0;
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
 if (ap_rst == 1'b1) begin
 ap_return_preg <= 2'd0;
 end else begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((choice_load_read_read_fu_24_p2 == 32'd4) | ((choice_load_read_read_fu_24_p2 == 32'd1) | (choice_load_read_read_fu_24_p2 == 32'd2))))) begin
 ap_return_preg <= ap_phi_mux_merge_phi_fu_33_p6;
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
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((choice_load_read_read_fu_24_p2 == 32'd4) | ((choice_load_read_read_fu_24_p2 == 32'd1) | (choice_load_read_read_fu_24_p2 == 32'd2))))) begin
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
 if ((1'b1 == ap_CS_fsm_state1)) begin
 if ((choice_load_read_read_fu_24_p2 == 32'd4)) begin
 ap_phi_mux_merge_phi_fu_33_p6 = 2'd0;
 end else if ((choice_load_read_read_fu_24_p2 == 32'd2)) begin
 ap_phi_mux_merge_phi_fu_33_p6 = 2'd2;
 end else if ((choice_load_read_read_fu_24_p2 == 32'd1)) begin
 ap_phi_mux_merge_phi_fu_33_p6 = 2'd1;
 end else begin
 ap_phi_mux_merge_phi_fu_33_p6 = 'bx;
 end
 end else begin
 ap_phi_mux_merge_phi_fu_33_p6 = 'bx;
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
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((choice_load_read_read_fu_24_p2 == 32'd4) | ((choice_load_read_read_fu_24_p2 == 32'd1) | (choice_load_read_read_fu_24_p2 == 32'd2))))) begin
 ap_return = ap_phi_mux_merge_phi_fu_33_p6;
 end else begin
 ap_return = ap_return_preg;
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign choice_load_read_read_fu_24_p2 = choice_load;
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
