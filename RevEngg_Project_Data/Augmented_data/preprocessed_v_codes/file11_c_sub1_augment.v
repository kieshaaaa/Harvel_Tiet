module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 num1,
 num2,
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
input [31:0] num1;
input [31:0] num2;
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
(* fsm_encoding = "none" *) reg [4:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [31:0] i_reg_176;
reg [31:0] num2_read_reg_181;
wire [0:0] icmp_ln10_fu_126_p2;
reg [0:0] icmp_ln10_reg_191;
wire ap_CS_fsm_state2;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_return;
reg [0:0] targetBlock_reg_195;
wire ap_CS_fsm_state3;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_i_2_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_i_2_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_ready;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_return;
reg grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_start_reg;
reg [31:0] i_2_loc_fu_52;
reg grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_start_reg;
wire ap_CS_fsm_state4;
wire ap_CS_fsm_state5;
reg [31:0] i_1_fu_44;
wire [31:0] i_6_fu_146_p2;
reg [31:0] primeCount_fu_48;
wire [31:0] primeCount_1_fu_135_p2;
reg [4:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
reg ap_ST_fsm_state5_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_start_reg = 1'b0;
#0 i_1_fu_44 = 32'd0;
#0 primeCount_fu_48 = 32'd0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_10_1 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_ready),
 .i_1(i_1_fu_44),
 .num2_load(num2_read_reg_181),
 .i_2_out(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_i_2_out),
 .i_2_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_i_2_out_ap_vld),
 .ap_return(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_return)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_17_2 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_ready),
 .i_2_reload(i_2_loc_fu_52),
 .ap_return(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_return)
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
 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln10_fu_126_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_start_reg <= 1'b0;
 end else begin
 if (((targetBlock_reg_195 == 1'd0) & (icmp_ln10_reg_191 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 i_1_fu_44 <= num1;
 end else if (((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
 i_1_fu_44 <= i_6_fu_146_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 primeCount_fu_48 <= 32'd0;
 end else if (((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_return == 1'd1) & (grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
 primeCount_fu_48 <= primeCount_1_fu_135_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_i_2_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 i_2_loc_fu_52 <= grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_i_2_out;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 i_reg_176 <= num1;
 num2_read_reg_181 <= num2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 icmp_ln10_reg_191 <= icmp_ln10_fu_126_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 targetBlock_reg_195 <= grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_return;
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
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_done == 1'b0)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_done == 1'b0)) begin
 ap_ST_fsm_state5_blk = 1'b1;
 end else begin
 ap_ST_fsm_state5_blk = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state4) & ((targetBlock_reg_195 == 1'd1) | (icmp_ln10_reg_191 == 1'd1)))) begin
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
 if (((1'b1 == ap_CS_fsm_state4) & ((targetBlock_reg_195 == 1'd1) | (icmp_ln10_reg_191 == 1'd1)))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_return == 1'd1) & (grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state4) & ((targetBlock_reg_195 == 1'd1) | (icmp_ln10_reg_191 == 1'd1)))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state4) & ((targetBlock_reg_195 == 1'd1) | (icmp_ln10_reg_191 == 1'd1)))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state4) & ((targetBlock_reg_195 == 1'd1) | (icmp_ln10_reg_191 == 1'd1)))) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
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
 if (((icmp_ln10_fu_126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state4 : begin
 if (((1'b1 == ap_CS_fsm_state4) & ((targetBlock_reg_195 == 1'd1) | (icmp_ln10_reg_191 == 1'd1)))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end
 end
 ap_ST_fsm_state5 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state5;
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
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_96_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_103_ap_start_reg;
assign i_6_fu_146_p2 = (i_2_loc_fu_52 + 32'd1);
assign icmp_ln10_fu_126_p2 = (($signed(i_1_fu_44) > $signed(num2_read_reg_181)) ? 1'b1 : 1'b0);
assign primeCount_1_fu_135_p2 = (primeCount_fu_48 + 32'd1);
assign temptemp1 = i_2_loc_fu_52;
assign temptemp2 = i_reg_176;
assign temptemp3 = num2_read_reg_181;
assign temptemp4 = primeCount_fu_48;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_10_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 i_1,
 num2_load,
 i_2_out,
 i_2_out_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] i_1;
input [31:0] num2_load;
output [31:0] i_2_out;
output i_2_out_ap_vld;
output [0:0] ap_return;
reg ap_idle;
reg i_2_out_ap_vld;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln11_fu_93_p2;
wire [0:0] icmp_ln10_fu_77_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [0:0] ap_phi_mux_UnifiedRetVal_phi_fu_60_p4;
reg [31:0] i_fu_34;
wire [31:0] i_3_fu_99_p2;
wire ap_loop_init;
reg [31:0] ap_sig_allocacmp_i_2;
wire [30:0] tmp_fu_83_p4;
reg [0:0] ap_return_preg;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 i_fu_34 = 32'd0;
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_return_preg <= 1'd0;
 end else begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_return_preg <= ap_phi_mux_UnifiedRetVal_phi_fu_60_p4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 if (((icmp_ln10_fu_77_p2 == 1'd0) & (icmp_ln11_fu_93_p2 == 1'd1))) begin
 i_fu_34 <= i_3_fu_99_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_34 <= i_1;
 end
 end
end
always @ (*) begin
 if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & ((icmp_ln10_fu_77_p2 == 1'd1) | (icmp_ln11_fu_93_p2 == 1'd0)))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
 if ((1'b1 == ap_CS_fsm_state1)) begin
 if (((icmp_ln10_fu_77_p2 == 1'd0) & (icmp_ln11_fu_93_p2 == 1'd0))) begin
 ap_phi_mux_UnifiedRetVal_phi_fu_60_p4 = 1'd0;
 end else if ((icmp_ln10_fu_77_p2 == 1'd1)) begin
 ap_phi_mux_UnifiedRetVal_phi_fu_60_p4 = 1'd1;
 end else begin
 ap_phi_mux_UnifiedRetVal_phi_fu_60_p4 = 'bx;
 end
 end else begin
 ap_phi_mux_UnifiedRetVal_phi_fu_60_p4 = 'bx;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_return = ap_phi_mux_UnifiedRetVal_phi_fu_60_p4;
 end else begin
 ap_return = ap_return_preg;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_i_2 = i_1;
 end else begin
 ap_sig_allocacmp_i_2 = i_fu_34;
 end
end
always @ (*) begin
 if ((((ap_loop_exit_ready == 1'b1) & (icmp_ln10_fu_77_p2 == 1'd0) & (icmp_ln11_fu_93_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)) | ((ap_loop_exit_ready == 1'b1) & (icmp_ln10_fu_77_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
 i_2_out_ap_vld = 1'b1;
 end else begin
 i_2_out_ap_vld = 1'b0;
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
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign i_2_out = ap_sig_allocacmp_i_2;
assign i_3_fu_99_p2 = (ap_sig_allocacmp_i_2 + 32'd1);
assign icmp_ln10_fu_77_p2 = (($signed(ap_sig_allocacmp_i_2) > $signed(num2_load)) ? 1'b1 : 1'b0);
assign icmp_ln11_fu_93_p2 = (($signed(tmp_fu_83_p4) < $signed(31'd1)) ? 1'b1 : 1'b0);
assign tmp_fu_83_p4 = {{ap_sig_allocacmp_i_2[31:1]}};
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_17_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 i_2_reload,
 ap_return
);
parameter ap_ST_fsm_state1 = 36'd1;
parameter ap_ST_fsm_state2 = 36'd2;
parameter ap_ST_fsm_state3 = 36'd4;
parameter ap_ST_fsm_state4 = 36'd8;
parameter ap_ST_fsm_state5 = 36'd16;
parameter ap_ST_fsm_state6 = 36'd32;
parameter ap_ST_fsm_state7 = 36'd64;
parameter ap_ST_fsm_state8 = 36'd128;
parameter ap_ST_fsm_state9 = 36'd256;
parameter ap_ST_fsm_state10 = 36'd512;
parameter ap_ST_fsm_state11 = 36'd1024;
parameter ap_ST_fsm_state12 = 36'd2048;
parameter ap_ST_fsm_state13 = 36'd4096;
parameter ap_ST_fsm_state14 = 36'd8192;
parameter ap_ST_fsm_state15 = 36'd16384;
parameter ap_ST_fsm_state16 = 36'd32768;
parameter ap_ST_fsm_state17 = 36'd65536;
parameter ap_ST_fsm_state18 = 36'd131072;
parameter ap_ST_fsm_state19 = 36'd262144;
parameter ap_ST_fsm_state20 = 36'd524288;
parameter ap_ST_fsm_state21 = 36'd1048576;
parameter ap_ST_fsm_state22 = 36'd2097152;
parameter ap_ST_fsm_state23 = 36'd4194304;
parameter ap_ST_fsm_state24 = 36'd8388608;
parameter ap_ST_fsm_state25 = 36'd16777216;
parameter ap_ST_fsm_state26 = 36'd33554432;
parameter ap_ST_fsm_state27 = 36'd67108864;
parameter ap_ST_fsm_state28 = 36'd134217728;
parameter ap_ST_fsm_state29 = 36'd268435456;
parameter ap_ST_fsm_state30 = 36'd536870912;
parameter ap_ST_fsm_state31 = 36'd1073741824;
parameter ap_ST_fsm_state32 = 36'd2147483648;
parameter ap_ST_fsm_state33 = 36'd4294967296;
parameter ap_ST_fsm_state34 = 36'd8589934592;
parameter ap_ST_fsm_state35 = 36'd17179869184;
parameter ap_ST_fsm_state36 = 36'd34359738368;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] i_2_reload;
output [0:0] ap_return;
reg ap_idle;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg [35:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire ap_CS_fsm_state36;
wire [0:0] icmp_ln18_fu_78_p2;
reg [0:0] icmp_ln17_reg_112;
reg ap_condition_exit_pp0_iter0_stage35;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [0:0] merge_reg_36;
reg ap_block_state1_pp0_stage0_iter0;
reg signed [31:0] j_2_reg_106;
wire [0:0] icmp_ln17_fu_62_p2;
reg [0:0] ap_phi_mux_merge_phi_fu_40_p4;
reg [31:0] j_fu_26;
wire [31:0] j_3_fu_84_p2;
wire ap_loop_init;
reg signed [31:0] ap_sig_allocacmp_j_2;
wire [31:0] mul_ln17_fu_48_p2;
wire [30:0] grp_fu_68_p2;
wire [30:0] trunc_ln18_fu_74_p1;
reg [0:0] ap_return_preg;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [35:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ST_fsm_state6_blk;
wire ap_ST_fsm_state7_blk;
wire ap_ST_fsm_state8_blk;
wire ap_ST_fsm_state9_blk;
wire ap_ST_fsm_state10_blk;
wire ap_ST_fsm_state11_blk;
wire ap_ST_fsm_state12_blk;
wire ap_ST_fsm_state13_blk;
wire ap_ST_fsm_state14_blk;
wire ap_ST_fsm_state15_blk;
wire ap_ST_fsm_state16_blk;
wire ap_ST_fsm_state17_blk;
wire ap_ST_fsm_state18_blk;
wire ap_ST_fsm_state19_blk;
wire ap_ST_fsm_state20_blk;
wire ap_ST_fsm_state21_blk;
wire ap_ST_fsm_state22_blk;
wire ap_ST_fsm_state23_blk;
wire ap_ST_fsm_state24_blk;
wire ap_ST_fsm_state25_blk;
wire ap_ST_fsm_state26_blk;
wire ap_ST_fsm_state27_blk;
wire ap_ST_fsm_state28_blk;
wire ap_ST_fsm_state29_blk;
wire ap_ST_fsm_state30_blk;
wire ap_ST_fsm_state31_blk;
wire ap_ST_fsm_state32_blk;
wire ap_ST_fsm_state33_blk;
wire ap_ST_fsm_state34_blk;
wire ap_ST_fsm_state35_blk;
wire ap_ST_fsm_state36_blk;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 36'd1;
#0 j_fu_26 = 32'd0;
#0 ap_return_preg = 1'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U4(
 .din0(ap_sig_allocacmp_j_2),
 .din1(ap_sig_allocacmp_j_2),
 .dout(mul_ln17_fu_48_p2)
);
entry_point_srem_32ns_32s_31_36_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 31 ))
srem_32ns_32s_31_36_1_U5(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(i_2_reload),
 .din1(ap_sig_allocacmp_j_2),
 .ce(1'b1),
 .dout(grp_fu_68_p2)
);
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(ap_start),
 .ap_ready(ap_ready_sig),
 .ap_done(ap_done_sig),
 .ap_start_int(ap_start_int),
 .ap_loop_init(ap_loop_init),
 .ap_ready_int(ap_ready_int),
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage35),
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state36))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_return_preg <= 1'd0;
 end else begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state36))) begin
 ap_return_preg <= ap_phi_mux_merge_phi_fu_40_p4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 j_fu_26 <= 32'd2;
 end else if (((icmp_ln17_reg_112 == 1'd0) & (icmp_ln18_fu_78_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state36))) begin
 j_fu_26 <= j_3_fu_84_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln17_reg_112 == 1'd0) & (icmp_ln18_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state36))) begin
 merge_reg_36 <= 1'd0;
 end else if (((icmp_ln17_fu_62_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 merge_reg_36 <= 1'd1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 icmp_ln17_reg_112 <= icmp_ln17_fu_62_p2;
 j_2_reg_106 <= ap_sig_allocacmp_j_2;
 end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state30_blk = 1'b0;
assign ap_ST_fsm_state31_blk = 1'b0;
assign ap_ST_fsm_state32_blk = 1'b0;
assign ap_ST_fsm_state33_blk = 1'b0;
assign ap_ST_fsm_state34_blk = 1'b0;
assign ap_ST_fsm_state35_blk = 1'b0;
assign ap_ST_fsm_state36_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state36) & ((icmp_ln17_reg_112 == 1'd1) | (icmp_ln18_fu_78_p2 == 1'd1)))) begin
 ap_condition_exit_pp0_iter0_stage35 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage35 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state36))) begin
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
 if (((icmp_ln17_reg_112 == 1'd0) & (icmp_ln18_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state36))) begin
 ap_phi_mux_merge_phi_fu_40_p4 = 1'd0;
 end else begin
 ap_phi_mux_merge_phi_fu_40_p4 = merge_reg_36;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state36)) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state36))) begin
 ap_return = ap_phi_mux_merge_phi_fu_40_p4;
 end else begin
 ap_return = ap_return_preg;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_j_2 = 32'd2;
 end else begin
 ap_sig_allocacmp_j_2 = j_fu_26;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_NS_fsm = ap_ST_fsm_state5;
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 ap_ST_fsm_state6 : begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end
 ap_ST_fsm_state7 : begin
 ap_NS_fsm = ap_ST_fsm_state8;
 end
 ap_ST_fsm_state8 : begin
 ap_NS_fsm = ap_ST_fsm_state9;
 end
 ap_ST_fsm_state9 : begin
 ap_NS_fsm = ap_ST_fsm_state10;
 end
 ap_ST_fsm_state10 : begin
 ap_NS_fsm = ap_ST_fsm_state11;
 end
 ap_ST_fsm_state11 : begin
 ap_NS_fsm = ap_ST_fsm_state12;
 end
 ap_ST_fsm_state12 : begin
 ap_NS_fsm = ap_ST_fsm_state13;
 end
 ap_ST_fsm_state13 : begin
 ap_NS_fsm = ap_ST_fsm_state14;
 end
 ap_ST_fsm_state14 : begin
 ap_NS_fsm = ap_ST_fsm_state15;
 end
 ap_ST_fsm_state15 : begin
 ap_NS_fsm = ap_ST_fsm_state16;
 end
 ap_ST_fsm_state16 : begin
 ap_NS_fsm = ap_ST_fsm_state17;
 end
 ap_ST_fsm_state17 : begin
 ap_NS_fsm = ap_ST_fsm_state18;
 end
 ap_ST_fsm_state18 : begin
 ap_NS_fsm = ap_ST_fsm_state19;
 end
 ap_ST_fsm_state19 : begin
 ap_NS_fsm = ap_ST_fsm_state20;
 end
 ap_ST_fsm_state20 : begin
 ap_NS_fsm = ap_ST_fsm_state21;
 end
 ap_ST_fsm_state21 : begin
 ap_NS_fsm = ap_ST_fsm_state22;
 end
 ap_ST_fsm_state22 : begin
 ap_NS_fsm = ap_ST_fsm_state23;
 end
 ap_ST_fsm_state23 : begin
 ap_NS_fsm = ap_ST_fsm_state24;
 end
 ap_ST_fsm_state24 : begin
 ap_NS_fsm = ap_ST_fsm_state25;
 end
 ap_ST_fsm_state25 : begin
 ap_NS_fsm = ap_ST_fsm_state26;
 end
 ap_ST_fsm_state26 : begin
 ap_NS_fsm = ap_ST_fsm_state27;
 end
 ap_ST_fsm_state27 : begin
 ap_NS_fsm = ap_ST_fsm_state28;
 end
 ap_ST_fsm_state28 : begin
 ap_NS_fsm = ap_ST_fsm_state29;
 end
 ap_ST_fsm_state29 : begin
 ap_NS_fsm = ap_ST_fsm_state30;
 end
 ap_ST_fsm_state30 : begin
 ap_NS_fsm = ap_ST_fsm_state31;
 end
 ap_ST_fsm_state31 : begin
 ap_NS_fsm = ap_ST_fsm_state32;
 end
 ap_ST_fsm_state32 : begin
 ap_NS_fsm = ap_ST_fsm_state33;
 end
 ap_ST_fsm_state33 : begin
 ap_NS_fsm = ap_ST_fsm_state34;
 end
 ap_ST_fsm_state34 : begin
 ap_NS_fsm = ap_ST_fsm_state35;
 end
 ap_ST_fsm_state35 : begin
 ap_NS_fsm = ap_ST_fsm_state36;
 end
 ap_ST_fsm_state36 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state36 = ap_CS_fsm[32'd35];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage35;
assign ap_ready = ap_ready_sig;
assign icmp_ln17_fu_62_p2 = (($signed(mul_ln17_fu_48_p2) > $signed(i_2_reload)) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_78_p2 = ((trunc_ln18_fu_74_p1 == 31'd0) ? 1'b1 : 1'b0);
assign j_3_fu_84_p2 = ($signed(j_2_reg_106) + $signed(32'd1));
assign trunc_ln18_fu_74_p1 = grp_fu_68_p2[30:0];
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
 module entry_point_mul_32s_32s_32_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
wire signed [dout_WIDTH - 1 : 0] tmp_product;
assign tmp_product = $signed(din0) * $signed(din1);
assign dout = tmp_product;
endmodule
module entry_point_srem_32ns_32s_31_36_1_divider
#(parameter
 in0_WIDTH = 32,
 in1_WIDTH = 32,
 out_WIDTH = 32
)
(
 input clk,
 input reset,
 input ce,
 input [in0_WIDTH-1:0] dividend,
 input [in1_WIDTH-1:0] divisor,
 input [1:0] sign_i,
 output wire [1:0] sign_o,
 output wire [out_WIDTH-1:0] quot,
 output wire [out_WIDTH-1:0] remd
);
localparam cal_WIDTH = (in0_WIDTH > in1_WIDTH)? in0_WIDTH : in1_WIDTH;
reg [in0_WIDTH-1:0] dividend_tmp[0:in0_WIDTH];
reg [in1_WIDTH-1:0] divisor_tmp[0:in0_WIDTH];
reg [in0_WIDTH-1:0] remd_tmp[0:in0_WIDTH];
wire [in0_WIDTH-1:0] comb_tmp[0:in0_WIDTH-1];
wire [cal_WIDTH:0] cal_tmp[0:in0_WIDTH-1];
reg [1:0] sign_tmp[0:in0_WIDTH];
assign quot = dividend_tmp[in0_WIDTH];
assign remd = remd_tmp[in0_WIDTH];
assign sign_o = sign_tmp[in0_WIDTH];
always @(posedge clk)
begin
 if (ce) begin
 dividend_tmp[0] <= dividend;
 divisor_tmp[0] <= divisor;
 sign_tmp[0] <= sign_i;
 remd_tmp[0] <= 1'b0;
 end
end
genvar i;
generate 
 for (i = 0; i < in0_WIDTH; i = i + 1)
 begin : loop
 if (in0_WIDTH == 1) assign comb_tmp[i] = dividend_tmp[i][0];
 else assign comb_tmp[i] = {remd_tmp[i][in0_WIDTH-2:0], dividend_tmp[i][in0_WIDTH-1]};
 assign cal_tmp[i] = {1'b0, comb_tmp[i]} - {1'b0, divisor_tmp[i]};
 always @(posedge clk)
 begin
 if (ce) begin
 if (in0_WIDTH == 1) dividend_tmp[i+1] <= ~cal_tmp[i][cal_WIDTH];
 else dividend_tmp[i+1] <= {dividend_tmp[i][in0_WIDTH-2:0], ~cal_tmp[i][cal_WIDTH]};
 divisor_tmp[i+1] <= divisor_tmp[i];
 remd_tmp[i+1] <= cal_tmp[i][cal_WIDTH]? comb_tmp[i] : cal_tmp[i][in0_WIDTH-1:0];
 sign_tmp[i+1] <= sign_tmp[i];
 end
 end
 end
endgenerate
endmodule
module entry_point_srem_32ns_32s_31_36_1
#(parameter
 ID = 1,
 NUM_STAGE = 2,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 dout_WIDTH = 32
)
(
 input clk,
 input reset,
 input ce,
 input [din0_WIDTH-1:0] din0,
 input [din1_WIDTH-1:0] din1,
 output [dout_WIDTH-1:0] dout
);
reg [din0_WIDTH-1:0] dividend0;
reg [din1_WIDTH-1:0] divisor0;
wire [din0_WIDTH-1:0] dividend_u;
wire [din1_WIDTH-1:0] divisor_u;
wire [dout_WIDTH-1:0] quot_u;
wire [dout_WIDTH-1:0] remd_u;
reg [dout_WIDTH-1:0] quot;
reg [dout_WIDTH-1:0] remd;
wire [1:0] sign_i;
wire [1:0] sign_o;
entry_point_srem_32ns_32s_31_36_1_divider #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_srem_32ns_32s_31_36_1_divider_u (
 .clk ( clk ),
 .reset ( reset ),
 .ce ( ce ),
 .dividend ( dividend_u ),
 .divisor ( divisor_u ),
 .sign_i ( sign_i ),
 .sign_o ( sign_o ),
 .quot ( quot_u ),
 .remd ( remd_u )
);
assign sign_i = {dividend0[din0_WIDTH-1] ^ divisor0[din1_WIDTH-1], dividend0[din0_WIDTH-1]};
assign dividend_u = dividend0[din0_WIDTH-1]? ~dividend0[din0_WIDTH-1:0] + 1'b1 :
 dividend0[din0_WIDTH-1:0];
assign divisor_u = divisor0[din1_WIDTH-1]? ~divisor0[din1_WIDTH-1:0] + 1'b1 :
 divisor0[din1_WIDTH-1:0];
always @(posedge clk)
begin
 if (ce) begin
 dividend0 <= din0;
 divisor0 <= din1;
 end
end
always @(posedge clk)
begin
 if (ce) begin
 if (sign_o[1])
 quot <= ~quot_u + 1'b1;
 else
 quot <= quot_u;
 end
end
always @(posedge clk)
begin
 if (ce) begin
 if (sign_o[0])
 remd <= ~remd_u + 1'b1;
 else
 remd <= remd_u;
 end
end
assign dout = remd;
endmodule
