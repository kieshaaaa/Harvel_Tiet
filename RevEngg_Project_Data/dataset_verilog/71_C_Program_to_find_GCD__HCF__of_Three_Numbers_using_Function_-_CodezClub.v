module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 num1,
 num2,
 num3,
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
input [31:0] num3;
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
wire ap_CS_fsm_state3;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_gcd1_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_gcd1_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_gcd2_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_gcd2_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_ap_start_reg;
wire ap_CS_fsm_state4;
wire ap_CS_fsm_state5;
reg [4:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_7_1 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_ap_ready),
 .num2_load(num2),
 .num1_load(num1),
 .gcd1_out(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_gcd1_out),
 .gcd1_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_gcd1_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_7_11 grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_ap_ready),
 .gcd1_reload(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_gcd1_out),
 .num3_load(num3),
 .gcd2_out(grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_gcd2_out),
 .gcd2_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_gcd2_out_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_ap_start_reg <= 1'b0;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
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
 if ((1'b1 == ap_CS_fsm_state5)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
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
 if ((1'b1 == ap_CS_fsm_state5)) begin
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state5 : begin
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
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_97_ap_start_reg;
assign temptemp1 = num1;
assign temptemp2 = num2;
assign temptemp3 = num3;
assign temptemp4 = grp_entry_point_Pipeline_VITIS_LOOP_7_11_fu_106_gcd2_out;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_7_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 num2_load,
 num1_load,
 gcd1_out,
 gcd1_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 35'd1;
parameter ap_ST_fsm_pp0_stage1 = 35'd2;
parameter ap_ST_fsm_pp0_stage2 = 35'd4;
parameter ap_ST_fsm_pp0_stage3 = 35'd8;
parameter ap_ST_fsm_pp0_stage4 = 35'd16;
parameter ap_ST_fsm_pp0_stage5 = 35'd32;
parameter ap_ST_fsm_pp0_stage6 = 35'd64;
parameter ap_ST_fsm_pp0_stage7 = 35'd128;
parameter ap_ST_fsm_pp0_stage8 = 35'd256;
parameter ap_ST_fsm_pp0_stage9 = 35'd512;
parameter ap_ST_fsm_pp0_stage10 = 35'd1024;
parameter ap_ST_fsm_pp0_stage11 = 35'd2048;
parameter ap_ST_fsm_pp0_stage12 = 35'd4096;
parameter ap_ST_fsm_pp0_stage13 = 35'd8192;
parameter ap_ST_fsm_pp0_stage14 = 35'd16384;
parameter ap_ST_fsm_pp0_stage15 = 35'd32768;
parameter ap_ST_fsm_pp0_stage16 = 35'd65536;
parameter ap_ST_fsm_pp0_stage17 = 35'd131072;
parameter ap_ST_fsm_pp0_stage18 = 35'd262144;
parameter ap_ST_fsm_pp0_stage19 = 35'd524288;
parameter ap_ST_fsm_pp0_stage20 = 35'd1048576;
parameter ap_ST_fsm_pp0_stage21 = 35'd2097152;
parameter ap_ST_fsm_pp0_stage22 = 35'd4194304;
parameter ap_ST_fsm_pp0_stage23 = 35'd8388608;
parameter ap_ST_fsm_pp0_stage24 = 35'd16777216;
parameter ap_ST_fsm_pp0_stage25 = 35'd33554432;
parameter ap_ST_fsm_pp0_stage26 = 35'd67108864;
parameter ap_ST_fsm_pp0_stage27 = 35'd134217728;
parameter ap_ST_fsm_pp0_stage28 = 35'd268435456;
parameter ap_ST_fsm_pp0_stage29 = 35'd536870912;
parameter ap_ST_fsm_pp0_stage30 = 35'd1073741824;
parameter ap_ST_fsm_pp0_stage31 = 35'd2147483648;
parameter ap_ST_fsm_pp0_stage32 = 35'd4294967296;
parameter ap_ST_fsm_pp0_stage33 = 35'd8589934592;
parameter ap_ST_fsm_pp0_stage34 = 35'd17179869184;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] num2_load;
input [31:0] num1_load;
output [31:0] gcd1_out;
output gcd1_out_ap_vld;
reg ap_idle;
reg gcd1_out_ap_vld;
(* fsm_encoding = "none" *) reg [34:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
reg ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_CS_fsm_pp0_stage1;
wire ap_block_state2_pp0_stage1_iter0;
wire ap_block_state37_pp0_stage1_iter1;
wire ap_block_pp0_stage1_subdone;
wire [0:0] icmp_ln7_fu_64_p2;
reg ap_condition_exit_pp0_iter0_stage1;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_CS_fsm_pp0_stage34;
wire ap_block_state35_pp0_stage34_iter0;
wire ap_block_pp0_stage34_subdone;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state36_pp0_stage0_iter1;
wire ap_block_pp0_stage0_11001;
wire ap_block_pp0_stage1_11001;
reg ap_enable_reg_pp0_iter0_reg;
reg [31:0] gcd1_fu_24;
wire ap_loop_init;
wire ap_block_pp0_stage1;
reg [31:0] n_assign_7_fu_28;
wire [31:0] grp_fu_73_p2;
reg [31:0] ap_sig_allocacmp_n_assign_7_load;
wire ap_block_pp0_stage1_01001;
wire ap_block_pp0_stage0;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [34:0] ap_NS_fsm;
wire ap_block_pp0_stage0_subdone;
reg ap_idle_pp0_1to1;
wire ap_block_state3_pp0_stage2_iter0;
wire ap_block_pp0_stage2_subdone;
wire ap_block_state4_pp0_stage3_iter0;
wire ap_block_pp0_stage3_subdone;
wire ap_block_state5_pp0_stage4_iter0;
wire ap_block_pp0_stage4_subdone;
wire ap_block_state6_pp0_stage5_iter0;
wire ap_block_pp0_stage5_subdone;
wire ap_block_state7_pp0_stage6_iter0;
wire ap_block_pp0_stage6_subdone;
wire ap_block_state8_pp0_stage7_iter0;
wire ap_block_pp0_stage7_subdone;
wire ap_block_state9_pp0_stage8_iter0;
wire ap_block_pp0_stage8_subdone;
wire ap_block_state10_pp0_stage9_iter0;
wire ap_block_pp0_stage9_subdone;
wire ap_block_state11_pp0_stage10_iter0;
wire ap_block_pp0_stage10_subdone;
wire ap_block_state12_pp0_stage11_iter0;
wire ap_block_pp0_stage11_subdone;
wire ap_block_state13_pp0_stage12_iter0;
wire ap_block_pp0_stage12_subdone;
wire ap_block_state14_pp0_stage13_iter0;
wire ap_block_pp0_stage13_subdone;
wire ap_block_state15_pp0_stage14_iter0;
wire ap_block_pp0_stage14_subdone;
wire ap_block_state16_pp0_stage15_iter0;
wire ap_block_pp0_stage15_subdone;
wire ap_block_state17_pp0_stage16_iter0;
wire ap_block_pp0_stage16_subdone;
wire ap_block_state18_pp0_stage17_iter0;
wire ap_block_pp0_stage17_subdone;
wire ap_block_state19_pp0_stage18_iter0;
wire ap_block_pp0_stage18_subdone;
wire ap_block_state20_pp0_stage19_iter0;
wire ap_block_pp0_stage19_subdone;
wire ap_block_state21_pp0_stage20_iter0;
wire ap_block_pp0_stage20_subdone;
wire ap_block_state22_pp0_stage21_iter0;
wire ap_block_pp0_stage21_subdone;
wire ap_block_state23_pp0_stage22_iter0;
wire ap_block_pp0_stage22_subdone;
wire ap_block_state24_pp0_stage23_iter0;
wire ap_block_pp0_stage23_subdone;
wire ap_block_state25_pp0_stage24_iter0;
wire ap_block_pp0_stage24_subdone;
wire ap_block_state26_pp0_stage25_iter0;
wire ap_block_pp0_stage25_subdone;
wire ap_block_state27_pp0_stage26_iter0;
wire ap_block_pp0_stage26_subdone;
wire ap_block_state28_pp0_stage27_iter0;
wire ap_block_pp0_stage27_subdone;
wire ap_block_state29_pp0_stage28_iter0;
wire ap_block_pp0_stage28_subdone;
wire ap_block_state30_pp0_stage29_iter0;
wire ap_block_pp0_stage29_subdone;
wire ap_block_state31_pp0_stage30_iter0;
wire ap_block_pp0_stage30_subdone;
wire ap_block_state32_pp0_stage31_iter0;
wire ap_block_pp0_stage31_subdone;
wire ap_block_state33_pp0_stage32_iter0;
wire ap_block_pp0_stage32_subdone;
wire ap_block_state34_pp0_stage33_iter0;
wire ap_block_pp0_stage33_subdone;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 35'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_srem_32ns_32ns_32_36_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
srem_32ns_32ns_32_36_1_U1(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(gcd1_fu_24),
 .din1(ap_sig_allocacmp_n_assign_7_load),
 .ce(1'b1),
 .dout(grp_fu_73_p2)
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
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter0_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
 ap_enable_reg_pp0_iter0_reg <= 1'b0;
 end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 ap_enable_reg_pp0_iter0_reg <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage34_subdone) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
 ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 gcd1_fu_24 <= num1_load;
 end else if (((icmp_ln7_fu_64_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 gcd1_fu_24 <= ap_sig_allocacmp_n_assign_7_load;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 n_assign_7_fu_28 <= num2_load;
 end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 n_assign_7_fu_28 <= grp_fu_73_p2;
 end
end
always @ (*) begin
 if (((icmp_ln7_fu_64_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_condition_exit_pp0_iter0_stage1 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage1 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 ap_enable_reg_pp0_iter0 = ap_start_int;
 end else begin
 ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
 if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
 ap_idle_pp0_1to1 = 1'b1;
 end else begin
 ap_idle_pp0_1to1 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage34_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_sig_allocacmp_n_assign_7_load = grp_fu_73_p2;
 end else begin
 ap_sig_allocacmp_n_assign_7_load = n_assign_7_fu_28;
 end
end
always @ (*) begin
 if (((icmp_ln7_fu_64_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 gcd1_out_ap_vld = 1'b1;
 end else begin
 gcd1_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_pp0_stage0 : begin
 if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end
 end
 ap_ST_fsm_pp0_stage1 : begin
 if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
 end
 end
 ap_ST_fsm_pp0_stage2 : begin
 if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage2;
 end
 end
 ap_ST_fsm_pp0_stage3 : begin
 if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage3;
 end
 end
 ap_ST_fsm_pp0_stage4 : begin
 if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage4;
 end
 end
 ap_ST_fsm_pp0_stage5 : begin
 if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage6;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage5;
 end
 end
 ap_ST_fsm_pp0_stage6 : begin
 if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage7;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage6;
 end
 end
 ap_ST_fsm_pp0_stage7 : begin
 if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage8;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage7;
 end
 end
 ap_ST_fsm_pp0_stage8 : begin
 if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage9;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage8;
 end
 end
 ap_ST_fsm_pp0_stage9 : begin
 if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage10;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage9;
 end
 end
 ap_ST_fsm_pp0_stage10 : begin
 if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage11;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage10;
 end
 end
 ap_ST_fsm_pp0_stage11 : begin
 if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage12;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage11;
 end
 end
 ap_ST_fsm_pp0_stage12 : begin
 if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage13;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage12;
 end
 end
 ap_ST_fsm_pp0_stage13 : begin
 if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage14;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage13;
 end
 end
 ap_ST_fsm_pp0_stage14 : begin
 if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage15;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage14;
 end
 end
 ap_ST_fsm_pp0_stage15 : begin
 if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage16;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage15;
 end
 end
 ap_ST_fsm_pp0_stage16 : begin
 if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage17;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage16;
 end
 end
 ap_ST_fsm_pp0_stage17 : begin
 if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage18;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage17;
 end
 end
 ap_ST_fsm_pp0_stage18 : begin
 if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage19;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage18;
 end
 end
 ap_ST_fsm_pp0_stage19 : begin
 if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage20;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage19;
 end
 end
 ap_ST_fsm_pp0_stage20 : begin
 if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage21;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage20;
 end
 end
 ap_ST_fsm_pp0_stage21 : begin
 if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage22;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage21;
 end
 end
 ap_ST_fsm_pp0_stage22 : begin
 if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage23;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage22;
 end
 end
 ap_ST_fsm_pp0_stage23 : begin
 if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage24;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage23;
 end
 end
 ap_ST_fsm_pp0_stage24 : begin
 if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage25;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage24;
 end
 end
 ap_ST_fsm_pp0_stage25 : begin
 if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage26;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage25;
 end
 end
 ap_ST_fsm_pp0_stage26 : begin
 if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage27;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage26;
 end
 end
 ap_ST_fsm_pp0_stage27 : begin
 if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage28;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage27;
 end
 end
 ap_ST_fsm_pp0_stage28 : begin
 if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage29;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage28;
 end
 end
 ap_ST_fsm_pp0_stage29 : begin
 if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage30;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage29;
 end
 end
 ap_ST_fsm_pp0_stage30 : begin
 if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage31;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage30;
 end
 end
 ap_ST_fsm_pp0_stage31 : begin
 if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage32;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage31;
 end
 end
 ap_ST_fsm_pp0_stage32 : begin
 if ((1'b0 == ap_block_pp0_stage32_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage33;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage32;
 end
 end
 ap_ST_fsm_pp0_stage33 : begin
 if ((1'b0 == ap_block_pp0_stage33_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage34;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage33;
 end
 end
 ap_ST_fsm_pp0_stage34 : begin
 if ((1'b0 == ap_block_pp0_stage34_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage34;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage34 = ap_CS_fsm[32'd34];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_block_state10_pp0_stage9_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state11_pp0_stage10_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state12_pp0_stage11_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state13_pp0_stage12_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state14_pp0_stage13_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state15_pp0_stage14_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state16_pp0_stage15_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state17_pp0_stage16_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state18_pp0_stage17_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state19_pp0_stage18_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state20_pp0_stage19_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state21_pp0_stage20_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state22_pp0_stage21_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state23_pp0_stage22_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state24_pp0_stage23_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state25_pp0_stage24_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state26_pp0_stage25_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state27_pp0_stage26_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state28_pp0_stage27_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state29_pp0_stage28_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state30_pp0_stage29_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state31_pp0_stage30_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state32_pp0_stage31_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state33_pp0_stage32_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state34_pp0_stage33_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state35_pp0_stage34_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state36_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state37_pp0_stage1_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state6_pp0_stage5_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state7_pp0_stage6_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state8_pp0_stage7_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state9_pp0_stage8_iter0 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign gcd1_out = gcd1_fu_24;
assign icmp_ln7_fu_64_p2 = ((ap_sig_allocacmp_n_assign_7_load == 32'd0) ? 1'b1 : 1'b0);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_7_11 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 gcd1_reload,
 num3_load,
 gcd2_out,
 gcd2_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 35'd1;
parameter ap_ST_fsm_pp0_stage1 = 35'd2;
parameter ap_ST_fsm_pp0_stage2 = 35'd4;
parameter ap_ST_fsm_pp0_stage3 = 35'd8;
parameter ap_ST_fsm_pp0_stage4 = 35'd16;
parameter ap_ST_fsm_pp0_stage5 = 35'd32;
parameter ap_ST_fsm_pp0_stage6 = 35'd64;
parameter ap_ST_fsm_pp0_stage7 = 35'd128;
parameter ap_ST_fsm_pp0_stage8 = 35'd256;
parameter ap_ST_fsm_pp0_stage9 = 35'd512;
parameter ap_ST_fsm_pp0_stage10 = 35'd1024;
parameter ap_ST_fsm_pp0_stage11 = 35'd2048;
parameter ap_ST_fsm_pp0_stage12 = 35'd4096;
parameter ap_ST_fsm_pp0_stage13 = 35'd8192;
parameter ap_ST_fsm_pp0_stage14 = 35'd16384;
parameter ap_ST_fsm_pp0_stage15 = 35'd32768;
parameter ap_ST_fsm_pp0_stage16 = 35'd65536;
parameter ap_ST_fsm_pp0_stage17 = 35'd131072;
parameter ap_ST_fsm_pp0_stage18 = 35'd262144;
parameter ap_ST_fsm_pp0_stage19 = 35'd524288;
parameter ap_ST_fsm_pp0_stage20 = 35'd1048576;
parameter ap_ST_fsm_pp0_stage21 = 35'd2097152;
parameter ap_ST_fsm_pp0_stage22 = 35'd4194304;
parameter ap_ST_fsm_pp0_stage23 = 35'd8388608;
parameter ap_ST_fsm_pp0_stage24 = 35'd16777216;
parameter ap_ST_fsm_pp0_stage25 = 35'd33554432;
parameter ap_ST_fsm_pp0_stage26 = 35'd67108864;
parameter ap_ST_fsm_pp0_stage27 = 35'd134217728;
parameter ap_ST_fsm_pp0_stage28 = 35'd268435456;
parameter ap_ST_fsm_pp0_stage29 = 35'd536870912;
parameter ap_ST_fsm_pp0_stage30 = 35'd1073741824;
parameter ap_ST_fsm_pp0_stage31 = 35'd2147483648;
parameter ap_ST_fsm_pp0_stage32 = 35'd4294967296;
parameter ap_ST_fsm_pp0_stage33 = 35'd8589934592;
parameter ap_ST_fsm_pp0_stage34 = 35'd17179869184;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] gcd1_reload;
input [31:0] num3_load;
output [31:0] gcd2_out;
output gcd2_out_ap_vld;
reg ap_idle;
reg gcd2_out_ap_vld;
(* fsm_encoding = "none" *) reg [34:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
reg ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_CS_fsm_pp0_stage1;
wire ap_block_state2_pp0_stage1_iter0;
wire ap_block_state37_pp0_stage1_iter1;
wire ap_block_pp0_stage1_subdone;
wire [0:0] icmp_ln7_fu_64_p2;
reg ap_condition_exit_pp0_iter0_stage1;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_CS_fsm_pp0_stage34;
wire ap_block_state35_pp0_stage34_iter0;
wire ap_block_pp0_stage34_subdone;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state36_pp0_stage0_iter1;
wire ap_block_pp0_stage0_11001;
wire ap_block_pp0_stage1_11001;
reg ap_enable_reg_pp0_iter0_reg;
reg [31:0] gcd2_fu_24;
wire ap_loop_init;
wire ap_block_pp0_stage1;
reg [31:0] n_assign_8_fu_28;
wire [31:0] grp_fu_73_p2;
reg [31:0] ap_sig_allocacmp_n_assign_8_load;
wire ap_block_pp0_stage1_01001;
wire ap_block_pp0_stage0;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [34:0] ap_NS_fsm;
wire ap_block_pp0_stage0_subdone;
reg ap_idle_pp0_1to1;
wire ap_block_state3_pp0_stage2_iter0;
wire ap_block_pp0_stage2_subdone;
wire ap_block_state4_pp0_stage3_iter0;
wire ap_block_pp0_stage3_subdone;
wire ap_block_state5_pp0_stage4_iter0;
wire ap_block_pp0_stage4_subdone;
wire ap_block_state6_pp0_stage5_iter0;
wire ap_block_pp0_stage5_subdone;
wire ap_block_state7_pp0_stage6_iter0;
wire ap_block_pp0_stage6_subdone;
wire ap_block_state8_pp0_stage7_iter0;
wire ap_block_pp0_stage7_subdone;
wire ap_block_state9_pp0_stage8_iter0;
wire ap_block_pp0_stage8_subdone;
wire ap_block_state10_pp0_stage9_iter0;
wire ap_block_pp0_stage9_subdone;
wire ap_block_state11_pp0_stage10_iter0;
wire ap_block_pp0_stage10_subdone;
wire ap_block_state12_pp0_stage11_iter0;
wire ap_block_pp0_stage11_subdone;
wire ap_block_state13_pp0_stage12_iter0;
wire ap_block_pp0_stage12_subdone;
wire ap_block_state14_pp0_stage13_iter0;
wire ap_block_pp0_stage13_subdone;
wire ap_block_state15_pp0_stage14_iter0;
wire ap_block_pp0_stage14_subdone;
wire ap_block_state16_pp0_stage15_iter0;
wire ap_block_pp0_stage15_subdone;
wire ap_block_state17_pp0_stage16_iter0;
wire ap_block_pp0_stage16_subdone;
wire ap_block_state18_pp0_stage17_iter0;
wire ap_block_pp0_stage17_subdone;
wire ap_block_state19_pp0_stage18_iter0;
wire ap_block_pp0_stage18_subdone;
wire ap_block_state20_pp0_stage19_iter0;
wire ap_block_pp0_stage19_subdone;
wire ap_block_state21_pp0_stage20_iter0;
wire ap_block_pp0_stage20_subdone;
wire ap_block_state22_pp0_stage21_iter0;
wire ap_block_pp0_stage21_subdone;
wire ap_block_state23_pp0_stage22_iter0;
wire ap_block_pp0_stage22_subdone;
wire ap_block_state24_pp0_stage23_iter0;
wire ap_block_pp0_stage23_subdone;
wire ap_block_state25_pp0_stage24_iter0;
wire ap_block_pp0_stage24_subdone;
wire ap_block_state26_pp0_stage25_iter0;
wire ap_block_pp0_stage25_subdone;
wire ap_block_state27_pp0_stage26_iter0;
wire ap_block_pp0_stage26_subdone;
wire ap_block_state28_pp0_stage27_iter0;
wire ap_block_pp0_stage27_subdone;
wire ap_block_state29_pp0_stage28_iter0;
wire ap_block_pp0_stage28_subdone;
wire ap_block_state30_pp0_stage29_iter0;
wire ap_block_pp0_stage29_subdone;
wire ap_block_state31_pp0_stage30_iter0;
wire ap_block_pp0_stage30_subdone;
wire ap_block_state32_pp0_stage31_iter0;
wire ap_block_pp0_stage31_subdone;
wire ap_block_state33_pp0_stage32_iter0;
wire ap_block_pp0_stage32_subdone;
wire ap_block_state34_pp0_stage33_iter0;
wire ap_block_pp0_stage33_subdone;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 35'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_srem_32ns_32ns_32_36_1 #(
 .ID( 1 ),
 .NUM_STAGE( 36 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .dout_WIDTH( 32 ))
srem_32ns_32ns_32_36_1_U6(
 .clk(ap_clk),
 .reset(ap_rst),
 .din0(gcd2_fu_24),
 .din1(ap_sig_allocacmp_n_assign_8_load),
 .ce(1'b1),
 .dout(grp_fu_73_p2)
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
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter0_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
 ap_enable_reg_pp0_iter0_reg <= 1'b0;
 end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 ap_enable_reg_pp0_iter0_reg <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage34_subdone) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
 ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 gcd2_fu_24 <= num3_load;
 end else if (((icmp_ln7_fu_64_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 gcd2_fu_24 <= ap_sig_allocacmp_n_assign_8_load;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 n_assign_8_fu_28 <= gcd1_reload;
 end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 n_assign_8_fu_28 <= grp_fu_73_p2;
 end
end
always @ (*) begin
 if (((icmp_ln7_fu_64_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_condition_exit_pp0_iter0_stage1 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage1 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 ap_enable_reg_pp0_iter0 = ap_start_int;
 end else begin
 ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
 if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
 ap_idle_pp0_1to1 = 1'b1;
 end else begin
 ap_idle_pp0_1to1 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage34_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage34))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_sig_allocacmp_n_assign_8_load = grp_fu_73_p2;
 end else begin
 ap_sig_allocacmp_n_assign_8_load = n_assign_8_fu_28;
 end
end
always @ (*) begin
 if (((icmp_ln7_fu_64_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 gcd2_out_ap_vld = 1'b1;
 end else begin
 gcd2_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_pp0_stage0 : begin
 if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end
 end
 ap_ST_fsm_pp0_stage1 : begin
 if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
 end
 end
 ap_ST_fsm_pp0_stage2 : begin
 if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage2;
 end
 end
 ap_ST_fsm_pp0_stage3 : begin
 if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage3;
 end
 end
 ap_ST_fsm_pp0_stage4 : begin
 if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage4;
 end
 end
 ap_ST_fsm_pp0_stage5 : begin
 if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage6;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage5;
 end
 end
 ap_ST_fsm_pp0_stage6 : begin
 if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage7;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage6;
 end
 end
 ap_ST_fsm_pp0_stage7 : begin
 if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage8;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage7;
 end
 end
 ap_ST_fsm_pp0_stage8 : begin
 if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage9;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage8;
 end
 end
 ap_ST_fsm_pp0_stage9 : begin
 if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage10;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage9;
 end
 end
 ap_ST_fsm_pp0_stage10 : begin
 if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage11;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage10;
 end
 end
 ap_ST_fsm_pp0_stage11 : begin
 if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage12;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage11;
 end
 end
 ap_ST_fsm_pp0_stage12 : begin
 if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage13;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage12;
 end
 end
 ap_ST_fsm_pp0_stage13 : begin
 if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage14;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage13;
 end
 end
 ap_ST_fsm_pp0_stage14 : begin
 if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage15;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage14;
 end
 end
 ap_ST_fsm_pp0_stage15 : begin
 if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage16;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage15;
 end
 end
 ap_ST_fsm_pp0_stage16 : begin
 if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage17;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage16;
 end
 end
 ap_ST_fsm_pp0_stage17 : begin
 if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage18;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage17;
 end
 end
 ap_ST_fsm_pp0_stage18 : begin
 if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage19;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage18;
 end
 end
 ap_ST_fsm_pp0_stage19 : begin
 if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage20;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage19;
 end
 end
 ap_ST_fsm_pp0_stage20 : begin
 if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage21;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage20;
 end
 end
 ap_ST_fsm_pp0_stage21 : begin
 if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage22;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage21;
 end
 end
 ap_ST_fsm_pp0_stage22 : begin
 if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage23;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage22;
 end
 end
 ap_ST_fsm_pp0_stage23 : begin
 if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage24;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage23;
 end
 end
 ap_ST_fsm_pp0_stage24 : begin
 if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage25;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage24;
 end
 end
 ap_ST_fsm_pp0_stage25 : begin
 if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage26;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage25;
 end
 end
 ap_ST_fsm_pp0_stage26 : begin
 if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage27;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage26;
 end
 end
 ap_ST_fsm_pp0_stage27 : begin
 if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage28;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage27;
 end
 end
 ap_ST_fsm_pp0_stage28 : begin
 if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage29;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage28;
 end
 end
 ap_ST_fsm_pp0_stage29 : begin
 if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage30;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage29;
 end
 end
 ap_ST_fsm_pp0_stage30 : begin
 if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage31;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage30;
 end
 end
 ap_ST_fsm_pp0_stage31 : begin
 if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage32;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage31;
 end
 end
 ap_ST_fsm_pp0_stage32 : begin
 if ((1'b0 == ap_block_pp0_stage32_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage33;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage32;
 end
 end
 ap_ST_fsm_pp0_stage33 : begin
 if ((1'b0 == ap_block_pp0_stage33_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage34;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage33;
 end
 end
 ap_ST_fsm_pp0_stage34 : begin
 if ((1'b0 == ap_block_pp0_stage34_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage34;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage34 = ap_CS_fsm[32'd34];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage32_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage33_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage34_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_block_state10_pp0_stage9_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state11_pp0_stage10_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state12_pp0_stage11_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state13_pp0_stage12_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state14_pp0_stage13_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state15_pp0_stage14_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state16_pp0_stage15_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state17_pp0_stage16_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state18_pp0_stage17_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state19_pp0_stage18_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state20_pp0_stage19_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state21_pp0_stage20_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state22_pp0_stage21_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state23_pp0_stage22_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state24_pp0_stage23_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state25_pp0_stage24_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state26_pp0_stage25_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state27_pp0_stage26_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state28_pp0_stage27_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state29_pp0_stage28_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state30_pp0_stage29_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state31_pp0_stage30_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state32_pp0_stage31_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state33_pp0_stage32_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state34_pp0_stage33_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state35_pp0_stage34_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state36_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state37_pp0_stage1_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage2_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state4_pp0_stage3_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state5_pp0_stage4_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state6_pp0_stage5_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state7_pp0_stage6_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state8_pp0_stage7_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state9_pp0_stage8_iter0 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign gcd2_out = gcd2_fu_24;
assign icmp_ln7_fu_64_p2 = ((ap_sig_allocacmp_n_assign_8_load == 32'd0) ? 1'b1 : 1'b0);
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
module entry_point_srem_32ns_32ns_32_36_1_divider
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
module entry_point_srem_32ns_32ns_32_36_1
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
entry_point_srem_32ns_32ns_32_36_1_divider #(
 .in0_WIDTH ( din0_WIDTH ),
 .in1_WIDTH ( din1_WIDTH ),
 .out_WIDTH ( dout_WIDTH )
) entry_point_srem_32ns_32ns_32_36_1_divider_u (
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
