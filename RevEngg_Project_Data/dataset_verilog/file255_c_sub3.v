module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 num_i,
 num_o,
 num_o_ap_vld,
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
input [31:0] num_i;
output [31:0] num_o;
output num_o_ap_vld;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg num_o_ap_vld;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [31:0] select_ln6_fu_90_p3;
reg [31:0] select_ln6_reg_120;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_cnt_1_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_cnt_1_out_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_select_ln11_1_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_select_ln11_1_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_ap_start_reg;
wire ap_CS_fsm_state2;
reg [31:0] cnt_1_loc_fu_38;
reg [31:0] select_ln11_1_loc_fu_34;
wire ap_CS_fsm_state3;
wire [0:0] tmp_fu_76_p3;
wire [31:0] sub_ln7_fu_84_p2;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_9_1 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_ap_ready),
 .select_ln6(select_ln6_reg_120),
 .cnt_1_out(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_cnt_1_out),
 .cnt_1_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_cnt_1_out_ap_vld),
 .select_ln11_1_out(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_select_ln11_1_out),
 .select_ln11_1_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_select_ln11_1_out_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_cnt_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 cnt_1_loc_fu_38 <= grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_cnt_1_out;
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_select_ln11_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 select_ln11_1_loc_fu_34 <= grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_select_ln11_1_out;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 select_ln6_reg_120 <= select_ln6_fu_90_p3;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_ap_done == 1'b0)) begin
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
 if ((1'b1 == ap_CS_fsm_state3)) begin
 num_o_ap_vld = 1'b1;
 end else begin
 num_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
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
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
assign grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_69_ap_start_reg;
assign num_o = select_ln11_1_loc_fu_34;
assign select_ln6_fu_90_p3 = ((tmp_fu_76_p3[0:0] == 1'b1) ? sub_ln7_fu_84_p2 : num_i);
assign sub_ln7_fu_84_p2 = (32'd0 - num_i);
assign temptemp1 = cnt_1_loc_fu_38;
assign temptemp2 = select_ln11_1_loc_fu_34;
assign tmp_fu_76_p3 = num_i[32'd31];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_9_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 select_ln6,
 cnt_1_out,
 cnt_1_out_ap_vld,
 select_ln11_1_out,
 select_ln11_1_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] select_ln6;
output [31:0] cnt_1_out;
output cnt_1_out_ap_vld;
output [31:0] select_ln11_1_out;
output select_ln11_1_out_ap_vld;
reg ap_idle;
reg cnt_1_out_ap_vld;
reg select_ln11_1_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln12_fu_166_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [31:0] cnt_fu_40;
wire [31:0] cnt_3_fu_84_p2;
wire ap_block_pp0_stage0_11001;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg signed [31:0] empty_fu_44;
wire [31:0] select_ln11_1_fu_157_p3;
wire ap_block_pp0_stage0_01001;
wire [33:0] mul_ln11_fu_95_p1;
wire [64:0] mul_ln11_fu_95_p2;
wire signed [31:0] tmp_fu_107_p1;
wire [64:0] sub_ln11_fu_101_p2;
wire signed [28:0] tmp_3_fu_125_p4;
wire [0:0] tmp_fu_107_p3;
wire [28:0] tmp_2_fu_115_p4;
wire [28:0] select_ln11_2_fu_139_p3;
wire signed [31:0] sext_ln11_2_fu_147_p1;
wire [31:0] sub_ln11_1_fu_151_p2;
wire signed [31:0] sext_ln11_1_fu_135_p1;
wire signed [31:0] icmp_ln12_fu_166_p0;
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
entry_point_mul_32s_34ns_65_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 34 ),
 .dout_WIDTH( 65 ))
mul_32s_34ns_65_1_1_U1(
 .din0(empty_fu_44),
 .din1(mul_ln11_fu_95_p1),
 .dout(mul_ln11_fu_95_p2)
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
 cnt_fu_40 <= 32'd0;
 end else if (((icmp_ln12_fu_166_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 cnt_fu_40 <= cnt_3_fu_84_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 empty_fu_44 <= select_ln6;
 end else if (((icmp_ln12_fu_166_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 empty_fu_44 <= select_ln11_1_fu_157_p3;
 end
 end
end
always @ (*) begin
 if (((icmp_ln12_fu_166_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln12_fu_166_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 cnt_1_out_ap_vld = 1'b1;
 end else begin
 cnt_1_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln12_fu_166_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 select_ln11_1_out_ap_vld = 1'b1;
 end else begin
 select_ln11_1_out_ap_vld = 1'b0;
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign cnt_1_out = (cnt_fu_40 + 32'd1);
assign cnt_3_fu_84_p2 = (cnt_fu_40 + 32'd1);
assign icmp_ln12_fu_166_p0 = empty_fu_44;
assign icmp_ln12_fu_166_p2 = (($signed(icmp_ln12_fu_166_p0) > $signed(32'd9)) ? 1'b1 : 1'b0);
assign mul_ln11_fu_95_p1 = 65'd6871947674;
assign select_ln11_1_fu_157_p3 = ((tmp_fu_107_p3[0:0] == 1'b1) ? sub_ln11_1_fu_151_p2 : sext_ln11_1_fu_135_p1);
assign select_ln11_1_out = ((tmp_fu_107_p3[0:0] == 1'b1) ? sub_ln11_1_fu_151_p2 : sext_ln11_1_fu_135_p1);
assign select_ln11_2_fu_139_p3 = ((tmp_fu_107_p3[0:0] == 1'b1) ? tmp_2_fu_115_p4 : tmp_3_fu_125_p4);
assign sext_ln11_1_fu_135_p1 = tmp_3_fu_125_p4;
assign sext_ln11_2_fu_147_p1 = $signed(select_ln11_2_fu_139_p3);
assign sub_ln11_1_fu_151_p2 = ($signed(32'd0) - $signed(sext_ln11_2_fu_147_p1));
assign sub_ln11_fu_101_p2 = (65'd0 - mul_ln11_fu_95_p2);
assign tmp_2_fu_115_p4 = {{sub_ln11_fu_101_p2[64:36]}};
assign tmp_3_fu_125_p4 = {{mul_ln11_fu_95_p2[64:36]}};
assign tmp_fu_107_p1 = empty_fu_44;
assign tmp_fu_107_p3 = tmp_fu_107_p1[32'd31];
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
module entry_point_mul_32s_34ns_65_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed(din0) * $signed({1'b0, din1});
endmodule
