module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n,
 a,
 m,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 2'd1;
parameter ap_ST_fsm_state2 = 2'd2;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n;
input [31:0] a;
input [31:0] m;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [30:0] sub_fu_68_p2;
reg [30:0] sub_reg_88;
wire [0:0] icmp_ln8_fu_75_p2;
reg [0:0] icmp_ln8_reg_93;
wire [0:0] icmp_ln17_fu_81_p2;
reg [0:0] icmp_ln17_reg_97;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58_ap_ready;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58_ap_return;
reg grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58_ap_start_reg;
wire ap_CS_fsm_state2;
wire [30:0] empty_fu_64_p1;
reg ap_block_state2_on_subcall_done;
reg [1:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_16_2 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58_ap_ready),
 .icmp_ln17(icmp_ln17_reg_97),
 .zext_ln16(sub_reg_88),
 .ap_return(grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58_ap_return)
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
 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (icmp_ln8_fu_75_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln8_fu_75_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 icmp_ln17_reg_97 <= icmp_ln17_fu_81_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln8_reg_93 <= icmp_ln8_fu_75_p2;
 sub_reg_88 <= sub_fu_68_p2;
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
 if ((1'b1 == ap_block_state2_on_subcall_done)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
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
 if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln8_fu_75_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
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
 if (((1'b0 == ap_block_state2_on_subcall_done) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
 ap_block_state2_on_subcall_done = ((grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58_ap_done == 1'b0) & (icmp_ln8_reg_93 == 1'd1));
end
assign ap_return = 32'd0;
assign empty_fu_64_p1 = n[30:0];
assign grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_16_2_fu_58_ap_start_reg;
assign icmp_ln17_fu_81_p2 = ((a == m) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_75_p2 = (($signed(n) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign sub_fu_68_p2 = ($signed(empty_fu_64_p1) + $signed(31'd2147483647));
assign temptemp1 = n;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_16_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 icmp_ln17,
 zext_ln16,
 ap_return
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [0:0] icmp_ln17;
input [30:0] zext_ln16;
output [0:0] ap_return;
reg ap_idle;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln16_fu_75_p2;
wire [0:0] icmp_ln17_read_reg_92;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
wire [63:0] zext_ln16_cast_fu_57_p1;
reg [63:0] zext_ln16_cast_reg_96;
reg [0:0] ap_phi_mux_merge_phi_fu_49_p4;
wire ap_block_pp0_stage0;
reg [63:0] i_fu_30;
wire [63:0] add_ln16_fu_69_p2;
wire ap_loop_init;
reg [0:0] ap_return_preg;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
reg ap_condition_71;
reg ap_condition_138;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_return_preg = 1'd0;
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
 ap_return_preg <= 1'd0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln17_read_reg_92 == 1'd1) | (icmp_ln16_fu_75_p2 == 1'd0)))) begin
 ap_return_preg <= ap_phi_mux_merge_phi_fu_49_p4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_fu_30 <= 64'd0;
 end else if ((1'b1 == ap_condition_138)) begin
 i_fu_30 <= add_ln16_fu_69_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 zext_ln16_cast_reg_96[30 : 0] <= zext_ln16_cast_fu_57_p1[30 : 0];
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln17_read_reg_92 == 1'd1) | (icmp_ln16_fu_75_p2 == 1'd0)))) begin
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
 if ((1'b1 == ap_condition_71)) begin
 if (((icmp_ln17_read_reg_92 == 1'd0) & (icmp_ln16_fu_75_p2 == 1'd0))) begin
 ap_phi_mux_merge_phi_fu_49_p4 = 1'd0;
 end else if ((icmp_ln17_read_reg_92 == 1'd1)) begin
 ap_phi_mux_merge_phi_fu_49_p4 = 1'd1;
 end else begin
 ap_phi_mux_merge_phi_fu_49_p4 = 'bx;
 end
 end else begin
 ap_phi_mux_merge_phi_fu_49_p4 = 'bx;
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
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln17_read_reg_92 == 1'd1) | (icmp_ln16_fu_75_p2 == 1'd0)))) begin
 ap_return = ap_phi_mux_merge_phi_fu_49_p4;
 end else begin
 ap_return = ap_return_preg;
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
assign add_ln16_fu_69_p2 = (i_fu_30 + 64'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
always @ (*) begin
 ap_condition_138 = ((icmp_ln17_read_reg_92 == 1'd0) & (icmp_ln16_fu_75_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
 ap_condition_71 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign icmp_ln16_fu_75_p2 = (($signed(i_fu_30) < $signed(zext_ln16_cast_reg_96)) ? 1'b1 : 1'b0);
assign icmp_ln17_read_reg_92 = icmp_ln17;
assign zext_ln16_cast_fu_57_p1 = zext_ln16;
always @ (posedge ap_clk) begin
 zext_ln16_cast_reg_96[63:31] <= 33'b000000000000000000000000000000000;
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
