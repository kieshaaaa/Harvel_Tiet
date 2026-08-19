module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 number_i,
 number_o,
 number_o_ap_vld,
 temptemp1,
 temptemp1_ap_vld,
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
input [31:0] number_i;
output [31:0] number_o;
output number_o_ap_vld;
output [7:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] number_o;
reg number_o_ap_vld;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [4:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [31:0] number_read_reg_95;
wire [0:0] icmp_ln37_fu_78_p2;
reg [0:0] icmp_ln37_reg_100;
wire ap_CS_fsm_state4;
reg [4:0] hex_address0;
reg hex_ce0;
reg hex_we0;
wire [6:0] hex_q0;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_number;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_number_ap_vld;
wire [4:0] grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_hex_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_hex_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_hex_we0;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_hex_d0;
wire [5:0] grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_cnt_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_cnt_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_start_reg;
reg [4:0] ap_NS_fsm;
wire ap_NS_fsm_state2;
wire ap_CS_fsm_state3;
wire ap_CS_fsm_state5;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_start_reg = 1'b0;
end
entry_point_hex_RAM_AUTO_1R1W #(
 .DataWidth( 7 ),
 .AddressRange( 32 ),
 .AddressWidth( 5 ))
hex_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(hex_address0),
 .ce0(hex_ce0),
 .we0(hex_we0),
 .d0(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_hex_d0),
 .q0(hex_q0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_10_1 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_ready),
 .number_load(number_read_reg_95),
 .number(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_number),
 .number_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_number_ap_vld),
 .hex_address0(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_hex_address0),
 .hex_ce0(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_hex_ce0),
 .hex_we0(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_hex_we0),
 .hex_d0(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_hex_d0),
 .cnt_out(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_cnt_out),
 .cnt_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_cnt_out_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_NS_fsm_state2) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 icmp_ln37_reg_100 <= icmp_ln37_fu_78_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 number_read_reg_95 <= number_i;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_done == 1'b0)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
assign ap_ST_fsm_state4_blk = 1'b0;
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
 if ((1'b1 == ap_CS_fsm_state4)) begin
 hex_address0 = 64'd0;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 hex_address0 = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_hex_address0;
 end else begin
 hex_address0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 hex_ce0 = 1'b1;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 hex_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_hex_ce0;
 end else begin
 hex_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 hex_we0 = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_hex_we0;
 end else begin
 hex_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_number_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 number_o = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_number;
 end else begin
 number_o = number_i;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 number_o_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_number_ap_vld;
 end else begin
 number_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln37_reg_100 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
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
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state4 : begin
 ap_NS_fsm = ap_ST_fsm_state5;
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
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_NS_fsm_state2 = ap_NS_fsm[32'd1];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_start_reg;
assign icmp_ln37_fu_78_p2 = ((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_cnt_out == 6'd0) ? 1'b1 : 1'b0);
assign temptemp1 = hex_q0;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_10_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 number_load,
 number,
 number_ap_vld,
 hex_address0,
 hex_ce0,
 hex_we0,
 hex_d0,
 cnt_out,
 cnt_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] number_load;
output [31:0] number;
output number_ap_vld;
output [4:0] hex_address0;
output hex_ce0;
output hex_we0;
output [6:0] hex_d0;
output [5:0] cnt_out;
output cnt_out_ap_vld;
reg ap_idle;
reg number_ap_vld;
reg hex_ce0;
reg hex_we0;
reg[6:0] hex_d0;
reg cnt_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln10_fu_132_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] trunc_ln37_cast2_fu_144_p1;
wire ap_block_pp0_stage0;
reg [5:0] cnt_fu_68;
wire [5:0] add_ln34_fu_138_p2;
wire ap_block_pp0_stage0_11001;
wire ap_loop_init;
reg [31:0] empty_fu_72;
wire [31:0] div4_cast_fu_180_p1;
wire ap_block_pp0_stage0_01001;
wire [3:0] empty_8_fu_149_p1;
wire [6:0] zext_ln31_fu_165_p1;
wire [4:0] or_ln_fu_153_p3;
wire signed [5:0] sext_ln31_fu_161_p1;
wire [27:0] div4_fu_170_p4;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
reg ap_condition_231;
reg ap_condition_69;
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
 cnt_fu_68 <= 6'd0;
 end else if (((icmp_ln10_fu_132_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 cnt_fu_68 <= add_ln34_fu_138_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 empty_fu_72 <= number_load;
 end else if (((icmp_ln10_fu_132_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 empty_fu_72 <= div4_cast_fu_180_p1;
 end
 end
end
always @ (*) begin
 if (((icmp_ln10_fu_132_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln10_fu_132_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 cnt_out_ap_vld = 1'b1;
 end else begin
 cnt_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((((icmp_ln10_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_8_fu_149_p1 == 4'd10)) | ((icmp_ln10_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_8_fu_149_p1 == 4'd11)) | ((icmp_ln10_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_8_fu_149_p1 == 4'd12)) | ((icmp_ln10_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_8_fu_149_p1 == 4'd13)) | ((icmp_ln10_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_8_fu_149_p1 == 4'd14)) | ((icmp_ln10_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_8_fu_149_p1 == 4'd15)) | (~(empty_8_fu_149_p1 == 4'd10) & ~(empty_8_fu_149_p1 == 4'd11) & ~(empty_8_fu_149_p1 == 4'd12) & ~(empty_8_fu_149_p1 == 4'd13) & ~(empty_8_fu_149_p1 == 4'd14) & ~(empty_8_fu_149_p1 == 4'd15) & (icmp_ln10_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
 hex_ce0 = 1'b1;
 end else begin
 hex_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_condition_69)) begin
 if ((1'b1 == ap_condition_231)) begin
 hex_d0 = zext_ln31_fu_165_p1;
 end else if ((empty_8_fu_149_p1 == 4'd10)) begin
 hex_d0 = 7'd65;
 end else if ((empty_8_fu_149_p1 == 4'd11)) begin
 hex_d0 = 7'd66;
 end else if ((empty_8_fu_149_p1 == 4'd12)) begin
 hex_d0 = 7'd67;
 end else if ((empty_8_fu_149_p1 == 4'd13)) begin
 hex_d0 = 7'd68;
 end else if ((empty_8_fu_149_p1 == 4'd14)) begin
 hex_d0 = 7'd69;
 end else if ((empty_8_fu_149_p1 == 4'd15)) begin
 hex_d0 = 7'd70;
 end else begin
 hex_d0 = 'bx;
 end
 end else begin
 hex_d0 = 'bx;
 end
end
always @ (*) begin
 if ((((icmp_ln10_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_8_fu_149_p1 == 4'd10)) | ((icmp_ln10_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_8_fu_149_p1 == 4'd11)) | ((icmp_ln10_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_8_fu_149_p1 == 4'd12)) | ((icmp_ln10_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_8_fu_149_p1 == 4'd13)) | ((icmp_ln10_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_8_fu_149_p1 == 4'd14)) | ((icmp_ln10_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (empty_8_fu_149_p1 == 4'd15)) | (~(empty_8_fu_149_p1 == 4'd10) & ~(empty_8_fu_149_p1 == 4'd11) & ~(empty_8_fu_149_p1 == 4'd12) & ~(empty_8_fu_149_p1 == 4'd13) & ~(empty_8_fu_149_p1 == 4'd14) & ~(empty_8_fu_149_p1 == 4'd15) & (icmp_ln10_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
 hex_we0 = 1'b1;
 end else begin
 hex_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln10_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 number_ap_vld = 1'b1;
 end else begin
 number_ap_vld = 1'b0;
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
assign add_ln34_fu_138_p2 = (cnt_fu_68 + 6'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
always @ (*) begin
 ap_condition_231 = (~(empty_8_fu_149_p1 == 4'd10) & ~(empty_8_fu_149_p1 == 4'd11) & ~(empty_8_fu_149_p1 == 4'd12) & ~(empty_8_fu_149_p1 == 4'd13) & ~(empty_8_fu_149_p1 == 4'd14) & ~(empty_8_fu_149_p1 == 4'd15));
end
always @ (*) begin
 ap_condition_69 = ((icmp_ln10_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign cnt_out = cnt_fu_68;
assign div4_cast_fu_180_p1 = div4_fu_170_p4;
assign div4_fu_170_p4 = {{empty_fu_72[31:4]}};
assign empty_8_fu_149_p1 = empty_fu_72[3:0];
assign hex_address0 = trunc_ln37_cast2_fu_144_p1;
assign icmp_ln10_fu_132_p2 = (($signed(empty_fu_72) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign number = div4_fu_170_p4;
assign or_ln_fu_153_p3 = {{1'd1}, {empty_8_fu_149_p1}};
assign sext_ln31_fu_161_p1 = $signed(or_ln_fu_153_p3);
assign trunc_ln37_cast2_fu_144_p1 = cnt_fu_68;
assign zext_ln31_fu_165_p1 = $unsigned(sext_ln31_fu_161_p1);
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
module entry_point_hex_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 reset, clk);
parameter DataWidth = 7;
parameter AddressWidth = 5;
parameter AddressRange = 32;
input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input we0; 
output reg[DataWidth-1:0] q0; 
input reset;
input clk;
(* ram_style = "auto" *)reg [DataWidth-1:0] ram[0:AddressRange-1];
always @(posedge clk) 
begin 
 if (ce0) begin
 if (we0) 
 ram[address0] <= d0; 
 q0 <= ram[address0];
 end
end 
endmodule
