module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 line_r,
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
input [7:0] line_r;
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
wire [0:0] or_ln18_fu_133_p2;
reg [0:0] or_ln18_reg_205;
wire [0:0] icmp_ln20_fu_146_p2;
reg [0:0] icmp_ln20_reg_210;
wire [0:0] icmp_ln22_fu_153_p2;
reg [0:0] icmp_ln22_reg_215;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_s_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_s_out_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_d_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_d_out_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_c_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_c_out_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_v_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_v_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_ap_start_reg;
wire ap_CS_fsm_state2;
wire ap_CS_fsm_state3;
wire [7:0] add_ln18_fu_109_p2;
wire [7:0] add_ln18_1_fu_121_p2;
wire [0:0] icmp_ln18_fu_115_p2;
wire [0:0] icmp_ln18_1_fu_127_p2;
wire [7:0] add_ln20_fu_140_p2;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_14_1 grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_ap_ready),
 .line_r_load(line_r),
 .or_ln18(or_ln18_reg_205),
 .icmp_ln20(icmp_ln20_reg_210),
 .icmp_ln22(icmp_ln22_reg_215),
 .s_out(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_s_out),
 .s_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_s_out_ap_vld),
 .d_out(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_d_out),
 .d_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_d_out_ap_vld),
 .c_out(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_c_out),
 .c_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_c_out_ap_vld),
 .v_out(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_v_out),
 .v_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_v_out_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln20_reg_210 <= icmp_ln20_fu_146_p2;
 icmp_ln22_reg_215 <= icmp_ln22_fu_153_p2;
 or_ln18_reg_205 <= or_ln18_fu_133_p2;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_ap_done == 1'b0)) begin
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
assign add_ln18_1_fu_121_p2 = ($signed(line_r) + $signed(8'd191));
assign add_ln18_fu_109_p2 = ($signed(line_r) + $signed(8'd159));
assign add_ln20_fu_140_p2 = ($signed(line_r) + $signed(8'd208));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_ap_start_reg;
assign icmp_ln18_1_fu_127_p2 = ((add_ln18_1_fu_121_p2 < 8'd26) ? 1'b1 : 1'b0);
assign icmp_ln18_fu_115_p2 = ((add_ln18_fu_109_p2 < 8'd26) ? 1'b1 : 1'b0);
assign icmp_ln20_fu_146_p2 = ((add_ln20_fu_140_p2 < 8'd10) ? 1'b1 : 1'b0);
assign icmp_ln22_fu_153_p2 = ((line_r == 8'd32) ? 1'b1 : 1'b0);
assign or_ln18_fu_133_p2 = (icmp_ln18_fu_115_p2 | icmp_ln18_1_fu_127_p2);
assign temptemp1 = grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_v_out;
assign temptemp2 = grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_c_out;
assign temptemp3 = grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_d_out;
assign temptemp4 = grp_entry_point_Pipeline_VITIS_LOOP_14_1_fu_96_s_out;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_14_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 line_r_load,
 or_ln18,
 icmp_ln20,
 icmp_ln22,
 s_out,
 s_out_ap_vld,
 d_out,
 d_out_ap_vld,
 c_out,
 c_out_ap_vld,
 v_out,
 v_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [7:0] line_r_load;
input [0:0] or_ln18;
input [0:0] icmp_ln20;
input [0:0] icmp_ln22;
output [31:0] s_out;
output s_out_ap_vld;
output [31:0] d_out;
output d_out_ap_vld;
output [31:0] c_out;
output c_out_ap_vld;
output [31:0] v_out;
output v_out_ap_vld;
reg ap_idle;
reg s_out_ap_vld;
reg d_out_ap_vld;
reg c_out_ap_vld;
reg v_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [7:0] line_r_load_read_read_fu_92_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
wire [0:0] icmp_ln20_read_reg_262;
wire [0:0] or_ln18_read_reg_266;
wire [7:0] line_r_load_read_reg_270;
reg [31:0] v_fu_58;
wire [31:0] v_1_fu_149_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg [31:0] c_fu_62;
wire [31:0] c_1_fu_198_p2;
reg [31:0] d_fu_66;
wire [31:0] d_1_fu_184_p2;
reg [31:0] s_fu_70;
wire [31:0] s_1_fu_169_p3;
wire ap_block_pp0_stage0_01001;
wire [31:0] add_ln23_fu_163_p2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg ap_loop_exit_ready_pp0_iter1_reg;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
reg ap_condition_247;
reg ap_condition_250;
reg ap_condition_253;
reg ap_condition_256;
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
 end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 c_fu_62 <= 32'd0;
 end else if ((1'b1 == ap_condition_247)) begin
 c_fu_62 <= c_1_fu_198_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 d_fu_66 <= 32'd0;
 end else if ((1'b1 == ap_condition_250)) begin
 d_fu_66 <= d_1_fu_184_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 s_fu_70 <= 32'd0;
 end else if ((1'b1 == ap_condition_253)) begin
 s_fu_70 <= s_1_fu_169_p3;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 v_fu_58 <= 32'd0;
 end else if ((1'b1 == ap_condition_256)) begin
 v_fu_58 <= v_1_fu_149_p2;
 end
 end
end
always @ (*) begin
 if (((line_r_load_read_read_fu_92_p2 == 8'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((line_r_load_read_reg_270 == 8'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 c_out_ap_vld = 1'b1;
 end else begin
 c_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((line_r_load_read_reg_270 == 8'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 d_out_ap_vld = 1'b1;
 end else begin
 d_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((line_r_load_read_reg_270 == 8'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 s_out_ap_vld = 1'b1;
 end else begin
 s_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((line_r_load_read_reg_270 == 8'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 v_out_ap_vld = 1'b1;
 end else begin
 v_out_ap_vld = 1'b0;
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
assign add_ln23_fu_163_p2 = (s_fu_70 + 32'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
always @ (*) begin
 ap_condition_247 = (~(line_r_load_read_reg_270 == 8'd101) & ~(line_r_load_read_reg_270 == 8'd105) & ~(line_r_load_read_reg_270 == 8'd111) & ~(line_r_load_read_reg_270 == 8'd117) & ~(line_r_load_read_reg_270 == 8'd65) & ~(line_r_load_read_reg_270 == 8'd69) & ~(line_r_load_read_reg_270 == 8'd73) & ~(line_r_load_read_reg_270 == 8'd79) & ~(line_r_load_read_reg_270 == 8'd85) & ~(line_r_load_read_reg_270 == 8'd0) & ~(line_r_load_read_reg_270 == 8'd97) & (or_ln18_read_reg_266 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
 ap_condition_250 = (~(line_r_load_read_reg_270 == 8'd101) & ~(line_r_load_read_reg_270 == 8'd105) & ~(line_r_load_read_reg_270 == 8'd111) & ~(line_r_load_read_reg_270 == 8'd117) & ~(line_r_load_read_reg_270 == 8'd65) & ~(line_r_load_read_reg_270 == 8'd69) & ~(line_r_load_read_reg_270 == 8'd73) & ~(line_r_load_read_reg_270 == 8'd79) & ~(line_r_load_read_reg_270 == 8'd85) & ~(line_r_load_read_reg_270 == 8'd0) & ~(line_r_load_read_reg_270 == 8'd97) & (or_ln18_read_reg_266 == 1'd0) & (icmp_ln20_read_reg_262 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
 ap_condition_253 = (~(line_r_load_read_reg_270 == 8'd101) & ~(line_r_load_read_reg_270 == 8'd105) & ~(line_r_load_read_reg_270 == 8'd111) & ~(line_r_load_read_reg_270 == 8'd117) & ~(line_r_load_read_reg_270 == 8'd65) & ~(line_r_load_read_reg_270 == 8'd69) & ~(line_r_load_read_reg_270 == 8'd73) & ~(line_r_load_read_reg_270 == 8'd79) & ~(line_r_load_read_reg_270 == 8'd85) & ~(line_r_load_read_reg_270 == 8'd0) & ~(line_r_load_read_reg_270 == 8'd97) & (or_ln18_read_reg_266 == 1'd0) & (icmp_ln20_read_reg_262 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
always @ (*) begin
 ap_condition_256 = ((ap_enable_reg_pp0_iter1 == 1'b1) & ((line_r_load_read_reg_270 == 8'd97) | ((line_r_load_read_reg_270 == 8'd101) | ((line_r_load_read_reg_270 == 8'd105) | ((line_r_load_read_reg_270 == 8'd111) | ((line_r_load_read_reg_270 == 8'd117) | ((line_r_load_read_reg_270 == 8'd65) | ((line_r_load_read_reg_270 == 8'd69) | ((line_r_load_read_reg_270 == 8'd73) | ((line_r_load_read_reg_270 == 8'd79) | (line_r_load_read_reg_270 == 8'd85)))))))))));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign c_1_fu_198_p2 = (c_fu_62 + 32'd1);
assign c_out = c_fu_62;
assign d_1_fu_184_p2 = (d_fu_66 + 32'd1);
assign d_out = d_fu_66;
assign icmp_ln20_read_reg_262 = icmp_ln20;
assign line_r_load_read_read_fu_92_p2 = line_r_load;
assign line_r_load_read_reg_270 = line_r_load;
assign or_ln18_read_reg_266 = or_ln18;
assign s_1_fu_169_p3 = ((icmp_ln22[0:0] == 1'b1) ? add_ln23_fu_163_p2 : s_fu_70);
assign s_out = s_fu_70;
assign v_1_fu_149_p2 = (v_fu_58 + 32'd1);
assign v_out = v_fu_58;
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
