module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 numElements,
 array_r,
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
input [31:0] numElements;
input [31:0] array_r;
output [31:0] temptemp1;
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
wire [0:0] icmp_ln14_fu_118_p2;
reg [0:0] icmp_ln14_reg_154;
wire [30:0] empty_fu_124_p1;
reg [30:0] empty_reg_158;
wire [0:0] empty_7_fu_129_p1;
reg [0:0] empty_7_reg_163;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_evenCount_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_evenCount_out_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_oddCount_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_oddCount_out_ap_vld;
reg [31:0] ap_phi_mux_oddCount_0_lcssa_phi_fu_90_p4;
reg [31:0] oddCount_0_lcssa_reg_86;
wire ap_CS_fsm_state3;
reg [31:0] ap_phi_mux_evenCount_0_lcssa_phi_fu_102_p4;
reg [31:0] evenCount_0_lcssa_reg_98;
reg grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_ap_start_reg;
wire ap_CS_fsm_state2;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_24_2 grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_ap_ready),
 .empty(empty_reg_158),
 .array_r_load(empty_7_reg_163),
 .evenCount_out(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_evenCount_out),
 .evenCount_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_evenCount_out_ap_vld),
 .oddCount_out(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_oddCount_out),
 .oddCount_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_oddCount_out_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (icmp_ln14_fu_118_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln14_reg_154 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 evenCount_0_lcssa_reg_98 <= grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_evenCount_out;
 end else if (((ap_start == 1'b1) & (icmp_ln14_fu_118_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 evenCount_0_lcssa_reg_98 <= 32'd0;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln14_reg_154 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 oddCount_0_lcssa_reg_86 <= grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_oddCount_out;
 end else if (((ap_start == 1'b1) & (icmp_ln14_fu_118_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 oddCount_0_lcssa_reg_86 <= 32'd0;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 empty_7_reg_163 <= empty_7_fu_129_p1;
 empty_reg_158 <= empty_fu_124_p1;
 icmp_ln14_reg_154 <= icmp_ln14_fu_118_p2;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_ap_done == 1'b0)) begin
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
 if (((icmp_ln14_reg_154 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_phi_mux_evenCount_0_lcssa_phi_fu_102_p4 = grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_evenCount_out;
 end else begin
 ap_phi_mux_evenCount_0_lcssa_phi_fu_102_p4 = evenCount_0_lcssa_reg_98;
 end
end
always @ (*) begin
 if (((icmp_ln14_reg_154 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_phi_mux_oddCount_0_lcssa_phi_fu_90_p4 = grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_oddCount_out;
 end else begin
 ap_phi_mux_oddCount_0_lcssa_phi_fu_90_p4 = oddCount_0_lcssa_reg_86;
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
 if (((ap_start == 1'b1) & (icmp_ln14_fu_118_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
 if (((ap_start == 1'b1) & (icmp_ln14_fu_118_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else if (((ap_start == 1'b1) & (icmp_ln14_fu_118_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign empty_7_fu_129_p1 = array_r[0:0];
assign empty_fu_124_p1 = numElements[30:0];
assign grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_110_ap_start_reg;
assign icmp_ln14_fu_118_p2 = (($signed(numElements) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign temptemp1 = numElements;
assign temptemp2 = numElements;
assign temptemp3 = ap_phi_mux_evenCount_0_lcssa_phi_fu_102_p4;
assign temptemp4 = ap_phi_mux_oddCount_0_lcssa_phi_fu_90_p4;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_24_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 empty,
 array_r_load,
 evenCount_out,
 evenCount_out_ap_vld,
 oddCount_out,
 oddCount_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] empty;
input [0:0] array_r_load;
output [31:0] evenCount_out;
output evenCount_out_ap_vld;
output [31:0] oddCount_out;
output oddCount_out_ap_vld;
reg ap_idle;
reg evenCount_out_ap_vld;
reg oddCount_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln24_fu_96_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg [31:0] oddCount_fu_40;
wire [31:0] oddCount_2_fu_125_p3;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg [31:0] evenCount_fu_44;
wire [31:0] evenCount_2_fu_132_p3;
reg [30:0] index_fu_48;
wire [30:0] add_ln30_fu_101_p2;
wire ap_block_pp0_stage0_01001;
wire [31:0] oddCount_1_fu_119_p2;
wire [31:0] evenCount_1_fu_113_p2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 oddCount_fu_40 = 32'd0;
#0 evenCount_fu_44 = 32'd0;
#0 index_fu_48 = 31'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(ap_start),
 .ap_ready(ap_ready_sig),
 .ap_done(ap_done_sig),
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
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 evenCount_fu_44 <= 32'd0;
 end else if (((icmp_ln24_fu_96_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 evenCount_fu_44 <= evenCount_2_fu_132_p3;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 index_fu_48 <= 31'd0;
 end else if (((icmp_ln24_fu_96_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 index_fu_48 <= add_ln30_fu_101_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 oddCount_fu_40 <= 32'd0;
 end else if (((icmp_ln24_fu_96_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 oddCount_fu_40 <= oddCount_2_fu_125_p3;
 end
 end
end
always @ (*) begin
 if (((icmp_ln24_fu_96_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (icmp_ln24_fu_96_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 evenCount_out_ap_vld = 1'b1;
 end else begin
 evenCount_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (icmp_ln24_fu_96_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 oddCount_out_ap_vld = 1'b1;
 end else begin
 oddCount_out_ap_vld = 1'b0;
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
assign add_ln30_fu_101_p2 = (index_fu_48 + 31'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign evenCount_1_fu_113_p2 = (evenCount_fu_44 + 32'd1);
assign evenCount_2_fu_132_p3 = ((array_r_load[0:0] == 1'b1) ? evenCount_fu_44 : evenCount_1_fu_113_p2);
assign evenCount_out = evenCount_fu_44;
assign icmp_ln24_fu_96_p2 = ((index_fu_48 == empty) ? 1'b1 : 1'b0);
assign oddCount_1_fu_119_p2 = (oddCount_fu_40 + 32'd1);
assign oddCount_2_fu_125_p3 = ((array_r_load[0:0] == 1'b1) ? oddCount_1_fu_119_p2 : oddCount_fu_40);
assign oddCount_out = oddCount_fu_40;
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
