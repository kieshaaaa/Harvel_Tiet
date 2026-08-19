module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 text_r,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 temptemp4,
 temptemp4_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 3'd1;
parameter ap_ST_fsm_state2 = 3'd2;
parameter ap_ST_fsm_state3 = 3'd4;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [7:0] text_r;
output [7:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] temptemp4;
output temptemp4_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [0:0] icmp_ln15_fu_102_p2;
reg [0:0] icmp_ln15_reg_178;
wire [0:0] icmp_ln17_fu_115_p2;
reg [0:0] icmp_ln17_reg_183;
wire [0:0] or_ln17_fu_134_p2;
reg [0:0] or_ln17_reg_188;
wire [0:0] xor_ln17_fu_141_p2;
reg [0:0] xor_ln17_reg_193;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_countS_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_countS_out_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_countU_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_countU_out_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_countL_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_countL_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_ap_start_reg;
wire ap_CS_fsm_state2;
wire ap_CS_fsm_state3;
wire [7:0] add_ln17_fu_109_p2;
wire [7:0] add_ln17_1_fu_122_p2;
wire [0:0] icmp_ln17_1_fu_128_p2;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_15_1 grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_ap_ready),
 .icmp_ln15(icmp_ln15_reg_178),
 .or_ln17(or_ln17_reg_188),
 .icmp_ln17(icmp_ln17_reg_183),
 .xor_ln17(xor_ln17_reg_193),
 .countS_out(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_countS_out),
 .countS_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_countS_out_ap_vld),
 .countU_out(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_countU_out),
 .countU_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_countU_out_ap_vld),
 .countL_out(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_countL_out),
 .countL_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_countL_out_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln15_reg_178 <= icmp_ln15_fu_102_p2;
 icmp_ln17_reg_183 <= icmp_ln17_fu_115_p2;
 or_ln17_reg_188 <= or_ln17_fu_134_p2;
 xor_ln17_reg_193 <= xor_ln17_fu_141_p2;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
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
 if ((1'b1 == ap_CS_fsm_state3)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln17_1_fu_122_p2 = ($signed(text_r) + $signed(8'd159));
assign add_ln17_fu_109_p2 = ($signed(text_r) + $signed(8'd191));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_ap_start_reg;
assign icmp_ln15_fu_102_p2 = ((text_r == 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln17_1_fu_128_p2 = ((add_ln17_1_fu_122_p2 < 8'd26) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_115_p2 = ((add_ln17_fu_109_p2 < 8'd26) ? 1'b1 : 1'b0);
assign or_ln17_fu_134_p2 = (icmp_ln17_fu_115_p2 | icmp_ln17_1_fu_128_p2);
assign temptemp1 = text_r;
assign temptemp2 = grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_countU_out;
assign temptemp3 = grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_countL_out;
assign temptemp4 = grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_91_countS_out;
assign xor_ln17_fu_141_p2 = (or_ln17_fu_134_p2 ^ icmp_ln17_fu_115_p2);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_15_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 icmp_ln15,
 or_ln17,
 icmp_ln17,
 xor_ln17,
 countS_out,
 countS_out_ap_vld,
 countU_out,
 countU_out_ap_vld,
 countL_out,
 countL_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [0:0] icmp_ln15;
input [0:0] or_ln17;
input [0:0] icmp_ln17;
input [0:0] xor_ln17;
output [31:0] countS_out;
output countS_out_ap_vld;
output [31:0] countU_out;
output countU_out_ap_vld;
output [31:0] countL_out;
output countL_out_ap_vld;
reg ap_idle;
reg countS_out_ap_vld;
reg countU_out_ap_vld;
reg countL_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln15_read_read_fu_62_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
wire [0:0] icmp_ln15_read_reg_218;
reg [31:0] countL_fu_32;
wire [31:0] countL_2_fu_145_p3;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg [31:0] countU_fu_36;
wire [31:0] countU_2_fu_138_p3;
reg [31:0] countS_fu_40;
wire [31:0] countS_2_fu_131_p3;
wire ap_block_pp0_stage0_01001;
wire [31:0] countS_1_fu_113_p2;
wire [31:0] countU_1_fu_119_p2;
wire [31:0] countL_1_fu_125_p2;
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
 end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
 countL_fu_32 <= 32'd0;
 end else if (((icmp_ln15_read_reg_218 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 countL_fu_32 <= countL_2_fu_145_p3;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 countS_fu_40 <= 32'd0;
 end else if (((icmp_ln15_read_reg_218 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 countS_fu_40 <= countS_2_fu_131_p3;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 countU_fu_36 <= 32'd0;
 end else if (((icmp_ln15_read_reg_218 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 countU_fu_36 <= countU_2_fu_138_p3;
 end
 end
end
always @ (*) begin
 if (((icmp_ln15_read_read_fu_62_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln15_read_reg_218 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 countL_out_ap_vld = 1'b1;
 end else begin
 countL_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln15_read_reg_218 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 countS_out_ap_vld = 1'b1;
 end else begin
 countS_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln15_read_reg_218 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 countU_out_ap_vld = 1'b1;
 end else begin
 countU_out_ap_vld = 1'b0;
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign countL_1_fu_125_p2 = (countL_fu_32 + 32'd1);
assign countL_2_fu_145_p3 = ((xor_ln17[0:0] == 1'b1) ? countL_1_fu_125_p2 : countL_fu_32);
assign countL_out = countL_fu_32;
assign countS_1_fu_113_p2 = (countS_fu_40 + 32'd1);
assign countS_2_fu_131_p3 = ((or_ln17[0:0] == 1'b1) ? countS_fu_40 : countS_1_fu_113_p2);
assign countS_out = countS_fu_40;
assign countU_1_fu_119_p2 = (countU_fu_36 + 32'd1);
assign countU_2_fu_138_p3 = ((icmp_ln17[0:0] == 1'b1) ? countU_1_fu_119_p2 : countU_fu_36);
assign countU_out = countU_fu_36;
assign icmp_ln15_read_read_fu_62_p2 = icmp_ln15;
assign icmp_ln15_read_reg_218 = icmp_ln15;
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
