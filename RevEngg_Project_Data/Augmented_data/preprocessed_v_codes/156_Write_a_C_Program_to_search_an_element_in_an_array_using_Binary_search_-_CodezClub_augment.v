module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n,
 arr,
 search,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 temptemp4,
 temptemp4_ap_vld,
 temptemp5,
 temptemp5_ap_vld,
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
input [31:0] n;
input [31:0] arr;
input [31:0] search;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] temptemp4;
output temptemp4_ap_vld;
output [31:0] temptemp5;
output temptemp5_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
reg temptemp5_ap_vld;
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] last_fu_117_p2;
reg [31:0] last_reg_147;
reg [31:0] arr_read_reg_152;
reg [31:0] search_read_reg_158;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_return;
reg [0:0] targetBlock_reg_164;
wire ap_CS_fsm_state2;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_ready;
wire [30:0] grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_middle_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_middle_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_start_reg;
reg [30:0] middle_loc_fu_42;
wire ap_CS_fsm_state3;
wire [0:0] icmp_ln16_fu_111_p2;
wire signed [31:0] middle_reload_cast_fu_127_p1;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_26_2 grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_ready),
 .last(last_reg_147),
 .arr_load(arr_read_reg_152),
 .search_load(search_read_reg_158),
 .middle_out(grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_middle_out),
 .middle_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_middle_out_ap_vld),
 .ap_return(grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_return)
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
 grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 arr_read_reg_152 <= arr;
 last_reg_147 <= last_fu_117_p2;
 search_read_reg_158 <= search;
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_middle_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 middle_loc_fu_42 <= grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_middle_out;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 targetBlock_reg_164 <= grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_return;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_done == 1'b0)) begin
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
 if (((ap_start == 1'b1) & (icmp_ln16_fu_111_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((targetBlock_reg_164 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((targetBlock_reg_164 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((targetBlock_reg_164 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 temptemp5_ap_vld = 1'b1;
 end else begin
 temptemp5_ap_vld = 1'b0;
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
assign grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_26_2_fu_101_ap_start_reg;
assign icmp_ln16_fu_111_p2 = (($signed(n) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign last_fu_117_p2 = ($signed(n) + $signed(32'd4294967295));
assign middle_reload_cast_fu_127_p1 = $signed(middle_loc_fu_42);
assign temptemp1 = n;
assign temptemp2 = n;
assign temptemp3 = arr_read_reg_152;
assign temptemp4 = ($signed(middle_reload_cast_fu_127_p1) + $signed(32'd1));
assign temptemp5 = search_read_reg_158;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_26_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 last,
 arr_load,
 search_load,
 middle_out,
 middle_out_ap_vld,
 ap_return
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] last;
input [31:0] arr_load;
input [31:0] search_load;
output [30:0] middle_out;
output middle_out_ap_vld;
output [0:0] ap_return;
reg ap_idle;
reg middle_out_ap_vld;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln27_fu_169_p2;
wire [0:0] icmp_ln29_fu_173_p2;
wire [0:0] icmp_ln26_fu_163_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg [0:0] ap_phi_mux_UnifiedRetVal_phi_fu_78_p4;
wire ap_block_pp0_stage0;
reg [31:0] middle_0_in_fu_38;
wire [31:0] add_ln38_fu_205_p2;
wire ap_loop_init;
reg [31:0] first_fu_42;
wire [31:0] first_2_fu_188_p2;
reg [31:0] ap_sig_allocacmp_first_3;
reg [31:0] last_1_fu_46;
wire [31:0] last_3_fu_177_p2;
reg [31:0] ap_sig_allocacmp_last_4;
wire signed [30:0] middle_fu_150_p3;
wire ap_block_pp0_stage0_01001;
wire [31:0] sub_ln6_fu_118_p2;
wire [30:0] lshr_ln6_1_fu_124_p4;
wire [0:0] tmp_fu_110_p3;
wire [30:0] sub_ln6_1_fu_134_p2;
wire [30:0] lshr_ln6_2_fu_140_p4;
wire signed [31:0] sext_ln26_fu_159_p1;
reg [0:0] ap_return_preg;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
reg ap_condition_80;
reg ap_condition_76;
reg ap_condition_225;
reg ap_condition_228;
reg ap_condition_231;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 middle_0_in_fu_38 = 32'd0;
#0 first_fu_42 = 32'd0;
#0 last_1_fu_46 = 32'd0;
#0 ap_return_preg = 1'd0;
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
 if (ap_rst == 1'b1) begin
 ap_return_preg <= 1'd0;
 end else begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_return_preg <= ap_phi_mux_UnifiedRetVal_phi_fu_78_p4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 first_fu_42 <= 32'd0;
 end else if ((1'b1 == ap_condition_225)) begin
 first_fu_42 <= first_2_fu_188_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 last_1_fu_46 <= last;
 end else if ((1'b1 == ap_condition_228)) begin
 last_1_fu_46 <= last_3_fu_177_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 middle_0_in_fu_38 <= last;
 end else if ((1'b1 == ap_condition_231)) begin
 middle_0_in_fu_38 <= add_ln38_fu_205_p2;
 end
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln26_fu_163_p2 == 1'd1) | ((icmp_ln29_fu_173_p2 == 1'd1) & (icmp_ln27_fu_169_p2 == 1'd0))))) begin
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
 if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if ((1'b1 == ap_condition_76)) begin
 if ((1'b1 == ap_condition_80)) begin
 ap_phi_mux_UnifiedRetVal_phi_fu_78_p4 = 1'd0;
 end else if ((icmp_ln26_fu_163_p2 == 1'd1)) begin
 ap_phi_mux_UnifiedRetVal_phi_fu_78_p4 = 1'd1;
 end else begin
 ap_phi_mux_UnifiedRetVal_phi_fu_78_p4 = 'bx;
 end
 end else begin
 ap_phi_mux_UnifiedRetVal_phi_fu_78_p4 = 'bx;
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
 if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_return = ap_phi_mux_UnifiedRetVal_phi_fu_78_p4;
 end else begin
 ap_return = ap_return_preg;
 end
end
always @ (*) begin
 if (((icmp_ln26_fu_163_p2 == 1'd0) & (icmp_ln27_fu_169_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_sig_allocacmp_first_3 = first_2_fu_188_p2;
 end else begin
 ap_sig_allocacmp_first_3 = first_fu_42;
 end
end
always @ (*) begin
 if (((icmp_ln26_fu_163_p2 == 1'd0) & (icmp_ln29_fu_173_p2 == 1'd0) & (icmp_ln27_fu_169_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_sig_allocacmp_last_4 = last_3_fu_177_p2;
 end else begin
 ap_sig_allocacmp_last_4 = last_1_fu_46;
 end
end
always @ (*) begin
 if ((((ap_loop_exit_ready == 1'b1) & (icmp_ln26_fu_163_p2 == 1'd0) & (icmp_ln29_fu_173_p2 == 1'd1) & (icmp_ln27_fu_169_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_loop_exit_ready == 1'b1) & (icmp_ln26_fu_163_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
 middle_out_ap_vld = 1'b1;
 end else begin
 middle_out_ap_vld = 1'b0;
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
assign add_ln38_fu_205_p2 = (ap_sig_allocacmp_first_3 + ap_sig_allocacmp_last_4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
 ap_condition_225 = ((icmp_ln26_fu_163_p2 == 1'd0) & (icmp_ln27_fu_169_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
 ap_condition_228 = ((icmp_ln26_fu_163_p2 == 1'd0) & (icmp_ln29_fu_173_p2 == 1'd0) & (icmp_ln27_fu_169_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
 ap_condition_231 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (((icmp_ln26_fu_163_p2 == 1'd0) & (icmp_ln27_fu_169_p2 == 1'd1)) | ((icmp_ln26_fu_163_p2 == 1'd0) & (icmp_ln29_fu_173_p2 == 1'd0))));
end
always @ (*) begin
 ap_condition_76 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
 ap_condition_80 = ((icmp_ln26_fu_163_p2 == 1'd0) & (icmp_ln29_fu_173_p2 == 1'd1) & (icmp_ln27_fu_169_p2 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign first_2_fu_188_p2 = ($signed(sext_ln26_fu_159_p1) + $signed(32'd1));
assign icmp_ln26_fu_163_p2 = (($signed(first_fu_42) > $signed(last_1_fu_46)) ? 1'b1 : 1'b0);
assign icmp_ln27_fu_169_p2 = (($signed(arr_load) < $signed(search_load)) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_173_p2 = ((arr_load == search_load) ? 1'b1 : 1'b0);
assign last_3_fu_177_p2 = ($signed(sext_ln26_fu_159_p1) + $signed(32'd4294967295));
assign lshr_ln6_1_fu_124_p4 = {{sub_ln6_fu_118_p2[31:1]}};
assign lshr_ln6_2_fu_140_p4 = {{middle_0_in_fu_38[31:1]}};
assign middle_fu_150_p3 = ((tmp_fu_110_p3[0:0] == 1'b1) ? sub_ln6_1_fu_134_p2 : lshr_ln6_2_fu_140_p4);
assign middle_out = middle_fu_150_p3;
assign sext_ln26_fu_159_p1 = middle_fu_150_p3;
assign sub_ln6_1_fu_134_p2 = (31'd0 - lshr_ln6_1_fu_124_p4);
assign sub_ln6_fu_118_p2 = (32'd0 - middle_0_in_fu_38);
assign tmp_fu_110_p3 = middle_0_in_fu_38[32'd31];
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
