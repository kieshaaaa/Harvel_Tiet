module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 lower,
 upper,
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
input [31:0] lower;
input [31:0] upper;
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
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [0:0] and_ln18_fu_137_p2;
reg [0:0] and_ln18_reg_233;
wire ap_CS_fsm_state2;
wire [31:0] j_3_fu_143_p2;
reg [31:0] j_3_reg_237;
wire [0:0] icmp_ln6_fu_159_p2;
reg [0:0] icmp_ln6_reg_242;
wire [31:0] select_ln6_fu_171_p3;
reg [31:0] select_ln6_reg_246;
wire grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_result_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_result_out_ap_vld;
reg [31:0] ap_phi_mux_fact_phi_fu_90_p4;
reg [31:0] fact_reg_86;
wire ap_CS_fsm_state4;
reg grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_ap_start_reg;
wire ap_CS_fsm_state3;
reg [31:0] j_1_fu_52;
wire [0:0] and_ln20_fu_201_p2;
wire [0:0] icmp_ln18_fu_112_p2;
wire [0:0] tmp_fu_123_p3;
wire [0:0] xor_ln18_fu_117_p2;
wire [0:0] xor_ln18_1_fu_131_p2;
wire [30:0] tmp_1_fu_149_p4;
wire [0:0] icmp_ln6_1_fu_165_p2;
wire [0:0] icmp_ln20_fu_184_p2;
wire [0:0] xor_ln20_fu_189_p2;
wire [0:0] icmp_ln20_1_fu_195_p2;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_6_1 grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_ap_ready),
 .select_ln6(select_ln6_reg_246),
 .result_out(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_result_out),
 .result_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_result_out_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln6_fu_159_p2 == 1'd1) & (1'd1 == and_ln18_fu_137_p2) & (1'b1 == ap_CS_fsm_state2))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln6_fu_159_p2 == 1'd0) & (1'd1 == and_ln18_fu_137_p2) & (1'b1 == ap_CS_fsm_state2))) begin
 fact_reg_86 <= 32'd1;
 end else if (((icmp_ln6_reg_242 == 1'd1) & (1'd1 == and_ln18_reg_233) & (1'b1 == ap_CS_fsm_state4))) begin
 fact_reg_86 <= grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_result_out;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 j_1_fu_52 <= lower;
 end else if (((1'd1 == and_ln20_fu_201_p2) & (1'd1 == and_ln18_reg_233) & (1'b1 == ap_CS_fsm_state4))) begin
 j_1_fu_52 <= j_3_reg_237;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 and_ln18_reg_233 <= and_ln18_fu_137_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'd1 == and_ln18_fu_137_p2) & (1'b1 == ap_CS_fsm_state2))) begin
 icmp_ln6_reg_242 <= icmp_ln6_fu_159_p2;
 j_3_reg_237 <= j_3_fu_143_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln6_fu_159_p2 == 1'd1) & (1'd1 == and_ln18_fu_137_p2) & (1'b1 == ap_CS_fsm_state2))) begin
 select_ln6_reg_246 <= select_ln6_fu_171_p3;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_ap_done == 1'b0)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state4) & ((1'd0 == and_ln20_fu_201_p2) | (1'd0 == and_ln18_reg_233)))) begin
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
 if (((icmp_ln6_reg_242 == 1'd1) & (1'd1 == and_ln18_reg_233) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_phi_mux_fact_phi_fu_90_p4 = grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_result_out;
 end else begin
 ap_phi_mux_fact_phi_fu_90_p4 = fact_reg_86;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state4) & ((1'd0 == and_ln20_fu_201_p2) | (1'd0 == and_ln18_reg_233)))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((1'd1 == and_ln20_fu_201_p2) & (1'd1 == and_ln18_reg_233) & (1'b1 == ap_CS_fsm_state4))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'd1 == and_ln20_fu_201_p2) & (1'd1 == and_ln18_reg_233) & (1'b1 == ap_CS_fsm_state4))) begin
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
 if (((icmp_ln6_fu_159_p2 == 1'd1) & (1'd1 == and_ln18_fu_137_p2) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state4 : begin
 if (((1'b1 == ap_CS_fsm_state4) & ((1'd0 == and_ln20_fu_201_p2) | (1'd0 == and_ln18_reg_233)))) begin
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
assign and_ln18_fu_137_p2 = (xor_ln18_fu_117_p2 & xor_ln18_1_fu_131_p2);
assign and_ln20_fu_201_p2 = (xor_ln20_fu_189_p2 & icmp_ln20_1_fu_195_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_98_ap_start_reg;
assign icmp_ln18_fu_112_p2 = (($signed(upper) < $signed(j_1_fu_52)) ? 1'b1 : 1'b0);
assign icmp_ln20_1_fu_195_p2 = (($signed(ap_phi_mux_fact_phi_fu_90_p4) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln20_fu_184_p2 = (($signed(upper) < $signed(ap_phi_mux_fact_phi_fu_90_p4)) ? 1'b1 : 1'b0);
assign icmp_ln6_1_fu_165_p2 = ((j_3_fu_143_p2 != 32'd2) ? 1'b1 : 1'b0);
assign icmp_ln6_fu_159_p2 = (($signed(tmp_1_fu_149_p4) > $signed(31'd0)) ? 1'b1 : 1'b0);
assign j_3_fu_143_p2 = (j_1_fu_52 + 32'd1);
assign select_ln6_fu_171_p3 = ((icmp_ln6_1_fu_165_p2[0:0] == 1'b1) ? j_3_fu_143_p2 : 32'd3);
assign temptemp1 = j_1_fu_52;
assign temptemp2 = ap_phi_mux_fact_phi_fu_90_p4;
assign tmp_1_fu_149_p4 = {{j_1_fu_52[31:1]}};
assign tmp_fu_123_p3 = j_1_fu_52[32'd31];
assign xor_ln18_1_fu_131_p2 = (tmp_fu_123_p3 ^ 1'd1);
assign xor_ln18_fu_117_p2 = (icmp_ln18_fu_112_p2 ^ 1'd1);
assign xor_ln20_fu_189_p2 = (icmp_ln20_fu_184_p2 ^ 1'd1);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_6_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 select_ln6,
 result_out,
 result_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] select_ln6;
output [31:0] result_out;
output result_out_ap_vld;
reg ap_idle;
reg result_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln6_fu_58_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg signed [31:0] i_fu_24;
wire [31:0] i_3_fu_72_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg signed [31:0] result_fu_28;
wire [31:0] result_1_fu_66_p2;
wire ap_block_pp0_stage0_01001;
wire signed [31:0] icmp_ln6_fu_58_p0;
wire signed [31:0] i_3_fu_72_p0;
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
entry_point_mul_32s_32s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
mul_32s_32s_32_1_1_U1(
 .din0(i_fu_24),
 .din1(result_fu_28),
 .dout(result_1_fu_66_p2)
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
 i_fu_24 <= 32'd2;
 end else if (((icmp_ln6_fu_58_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_fu_24 <= i_3_fu_72_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 result_fu_28 <= 32'd1;
 end else if (((icmp_ln6_fu_58_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 result_fu_28 <= result_1_fu_66_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln6_fu_58_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln6_fu_58_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 result_out_ap_vld = 1'b1;
 end else begin
 result_out_ap_vld = 1'b0;
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
assign i_3_fu_72_p0 = i_fu_24;
assign i_3_fu_72_p2 = ($signed(i_3_fu_72_p0) + $signed(32'd1));
assign icmp_ln6_fu_58_p0 = i_fu_24;
assign icmp_ln6_fu_58_p2 = ((icmp_ln6_fu_58_p0 == select_ln6) ? 1'b1 : 1'b0);
assign result_out = result_fu_28;
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
assign dout = $signed(din0) * $signed(din1);
endmodule
