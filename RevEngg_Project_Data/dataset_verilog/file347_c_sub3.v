module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 number,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
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
input [31:0] number;
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
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_return;
reg [0:0] targetBlock_reg_124;
wire ap_CS_fsm_state2;
wire grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_temp_2_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_temp_2_out_ap_vld;
wire [30:0] grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_temp_3_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_temp_3_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_start_reg;
reg [31:0] temp_2_loc_fu_38;
reg [30:0] temp_3_loc_fu_34;
wire ap_CS_fsm_state3;
wire [0:0] icmp_ln12_fu_87_p2;
wire [31:0] temp_3_reload_cast_fu_76_p1;
wire [31:0] temp_4_fu_80_p3;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_8_1 grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_ready),
 .temp(number),
 .temp_2_out(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_temp_2_out),
 .temp_2_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_temp_2_out_ap_vld),
 .temp_3_out(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_temp_3_out),
 .temp_3_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_temp_3_out_ap_vld),
 .ap_return(grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_return)
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
 grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 targetBlock_reg_124 <= grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_return;
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_temp_2_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 temp_2_loc_fu_38 <= grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_temp_2_out;
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_temp_3_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 temp_3_loc_fu_34 <= grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_temp_3_out;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_done == 1'b0)) begin
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
 if (((icmp_ln12_fu_87_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln12_fu_87_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
assign grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_8_1_fu_62_ap_start_reg;
assign icmp_ln12_fu_87_p2 = ((temp_4_fu_80_p3 == 32'd0) ? 1'b1 : 1'b0);
assign temp_3_reload_cast_fu_76_p1 = temp_3_loc_fu_34;
assign temp_4_fu_80_p3 = ((targetBlock_reg_124[0:0] == 1'b1) ? temp_2_loc_fu_38 : temp_3_reload_cast_fu_76_p1);
assign temptemp1 = (number + 32'd1);
assign temptemp2 = (number + 32'd2);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_8_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 temp,
 temp_2_out,
 temp_2_out_ap_vld,
 temp_3_out,
 temp_3_out_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] temp;
output [31:0] temp_2_out;
output temp_2_out_ap_vld;
output [30:0] temp_3_out;
output temp_3_out_ap_vld;
output [0:0] ap_return;
reg ap_idle;
reg temp_2_out_ap_vld;
reg temp_3_out_ap_vld;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln11_fu_97_p2;
wire [0:0] icmp_ln9_fu_80_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [0:0] ap_phi_mux_UnifiedRetVal_phi_fu_63_p4;
reg [31:0] temp_1_fu_36;
wire [31:0] temp_3_fu_86_p2;
wire ap_loop_init;
reg [31:0] ap_sig_allocacmp_temp_2;
reg [0:0] ap_return_preg;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
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
 ap_return_preg <= 1'd0;
 end else begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((icmp_ln9_fu_80_p2 == 1'd1) | (icmp_ln11_fu_97_p2 == 1'd0)))) begin
 ap_return_preg <= ap_phi_mux_UnifiedRetVal_phi_fu_63_p4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 if (((icmp_ln9_fu_80_p2 == 1'd0) & (icmp_ln11_fu_97_p2 == 1'd1))) begin
 temp_1_fu_36 <= temp_3_fu_86_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 temp_1_fu_36 <= temp;
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
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((icmp_ln9_fu_80_p2 == 1'd1) | (icmp_ln11_fu_97_p2 == 1'd0)))) begin
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
 if (((icmp_ln9_fu_80_p2 == 1'd0) & (icmp_ln11_fu_97_p2 == 1'd0))) begin
 ap_phi_mux_UnifiedRetVal_phi_fu_63_p4 = 1'd0;
 end else if ((icmp_ln9_fu_80_p2 == 1'd1)) begin
 ap_phi_mux_UnifiedRetVal_phi_fu_63_p4 = 1'd1;
 end else begin
 ap_phi_mux_UnifiedRetVal_phi_fu_63_p4 = 'bx;
 end
 end else begin
 ap_phi_mux_UnifiedRetVal_phi_fu_63_p4 = 'bx;
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
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((icmp_ln9_fu_80_p2 == 1'd1) | (icmp_ln11_fu_97_p2 == 1'd0)))) begin
 ap_return = ap_phi_mux_UnifiedRetVal_phi_fu_63_p4;
 end else begin
 ap_return = ap_return_preg;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_temp_2 = temp;
 end else begin
 ap_sig_allocacmp_temp_2 = temp_1_fu_36;
 end
end
always @ (*) begin
 if ((((ap_start_int == 1'b1) & (icmp_ln9_fu_80_p2 == 1'd0) & (icmp_ln11_fu_97_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1)) | ((ap_start_int == 1'b1) & (icmp_ln9_fu_80_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1)))) begin
 temp_2_out_ap_vld = 1'b1;
 end else begin
 temp_2_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln9_fu_80_p2 == 1'd0) & (icmp_ln11_fu_97_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 temp_3_out_ap_vld = 1'b1;
 end else begin
 temp_3_out_ap_vld = 1'b0;
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
assign icmp_ln11_fu_97_p2 = (($signed(temp_3_fu_86_p2) > $signed(32'd6)) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_80_p2 = (($signed(ap_sig_allocacmp_temp_2) < $signed(32'd7)) ? 1'b1 : 1'b0);
assign temp_2_out = ap_sig_allocacmp_temp_2;
assign temp_3_fu_86_p2 = ($signed(ap_sig_allocacmp_temp_2) + $signed(32'd4294967289));
assign temp_3_out = temp_3_fu_86_p2[30:0];
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
