module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 count,
 array_r,
 temptemp1,
 temptemp1_ap_vld
);
parameter ap_ST_fsm_state1 = 10'd1;
parameter ap_ST_fsm_state2 = 10'd2;
parameter ap_ST_fsm_state3 = 10'd4;
parameter ap_ST_fsm_state4 = 10'd8;
parameter ap_ST_fsm_state5 = 10'd16;
parameter ap_ST_fsm_state6 = 10'd32;
parameter ap_ST_fsm_state7 = 10'd64;
parameter ap_ST_fsm_state8 = 10'd128;
parameter ap_ST_fsm_state9 = 10'd256;
parameter ap_ST_fsm_state10 = 10'd512;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] count;
input [31:0] array_r;
output [31:0] temptemp1;
output temptemp1_ap_vld;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [9:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [6:0] array1_address0;
reg array1_ce0;
reg array1_we0;
reg [31:0] array1_d0;
wire [31:0] array1_q0;
reg array1_ce1;
reg array1_we1;
wire [31:0] array1_q1;
reg [31:0] maxdigits;
wire [6:0] trunc_ln15_fu_144_p1;
reg [6:0] trunc_ln15_reg_242;
wire [0:0] icmp_ln15_fu_148_p2;
reg [0:0] icmp_ln15_reg_247;
wire [30:0] trunc_ln15_1_fu_154_p1;
reg [30:0] trunc_ln15_1_reg_266;
wire [30:0] add_ln19_fu_172_p2;
reg [30:0] add_ln19_reg_275;
wire ap_CS_fsm_state3;
reg [31:0] maxdigits_load_reg_280;
wire [0:0] icmp_ln19_fu_167_p2;
wire [30:0] trunc_ln33_fu_206_p1;
reg [30:0] trunc_ln33_reg_291;
wire ap_CS_fsm_state7;
wire [0:0] brmerge_demorgan_fu_210_p2;
reg [0:0] brmerge_demorgan_reg_296;
wire ap_CS_fsm_state9;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_array1_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_array1_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_array1_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_array1_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_p_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_p_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_n_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_n_out_ap_vld;
wire grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_d0;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_address1;
wire grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_ce1;
wire grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_we1;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_d1;
wire grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_ready;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_return;
reg grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_ap_start_reg;
wire ap_CS_fsm_state4;
reg grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_ap_start_reg;
wire ap_CS_fsm_state6;
reg grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_ap_start_reg;
wire ap_CS_fsm_state8;
reg grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_start_reg;
reg ap_block_state8_on_subcall_done;
wire [63:0] zext_ln66_fu_220_p1;
wire ap_CS_fsm_state5;
wire [0:0] icmp_ln27_fu_181_p2;
reg [30:0] indvars_iv72_fu_68;
wire ap_CS_fsm_state10;
wire [6:0] add_ln64_fu_215_p2;
reg [9:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
reg ap_ST_fsm_state6_blk;
wire ap_ST_fsm_state7_blk;
reg ap_ST_fsm_state8_blk;
reg ap_ST_fsm_state9_blk;
wire ap_ST_fsm_state10_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 maxdigits = 32'd0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_start_reg = 1'b0;
end
entry_point_array1_RAM_AUTO_1R1W #(
 .DataWidth( 32 ),
 .AddressRange( 100 ),
 .AddressWidth( 7 ))
array1_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(array1_address0),
 .ce0(array1_ce0),
 .we0(array1_we0),
 .d0(array1_d0),
 .q0(array1_q0),
 .address1(grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_address1),
 .ce1(array1_ce1),
 .we1(array1_we1),
 .d1(grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_d1),
 .q1(array1_q1)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_15_1 grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_ap_ready),
 .trunc_ln15_1(trunc_ln15_1_reg_266),
 .t(array_r),
 .array1_address0(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_array1_address0),
 .array1_ce0(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_array1_ce0),
 .array1_we0(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_array1_we0),
 .array1_d0(grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_array1_d0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_22_3 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_ap_ready),
 .t(array_r),
 .p_out(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_p_out),
 .p_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_p_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_31_4 grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_ap_ready),
 .maxdigits_load(maxdigits_load_reg_280),
 .n_out(grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_n_out),
 .n_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_n_out_ap_vld)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_33_5 grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_ap_ready),
 .trunc_ln1(trunc_ln33_reg_291),
 .array1_address0(grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_address0),
 .array1_ce0(grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_ce0),
 .array1_we0(grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_we0),
 .array1_d0(grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_d0),
 .array1_q0(array1_q0),
 .array1_address1(grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_address1),
 .array1_ce1(grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_ce1),
 .array1_we1(grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_we1),
 .array1_d1(grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_d1),
 .array1_q1(array1_q1)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_52_7 grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_ready),
 .n_reload(grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_n_out),
 .icmp_ln15(icmp_ln15_reg_247),
 .ap_return(grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_return)
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
 grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln15_fu_148_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln19_fu_167_p2 == 1'd0) & (icmp_ln15_reg_247 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state3) & ((icmp_ln19_fu_167_p2 == 1'd1) | (icmp_ln15_reg_247 == 1'd0)))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln15_reg_247 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_state8_on_subcall_done) & (1'b1 == ap_CS_fsm_state8))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln15_fu_148_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 indvars_iv72_fu_68 <= 31'd0;
 end else if ((1'b1 == ap_CS_fsm_state5)) begin
 indvars_iv72_fu_68 <= add_ln19_reg_275;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln27_fu_181_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
 maxdigits <= grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_p_out;
 end else if ((1'b1 == ap_CS_fsm_state7)) begin
 maxdigits <= 32'd0;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln15_reg_247 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 add_ln19_reg_275 <= add_ln19_fu_172_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state9)) begin
 brmerge_demorgan_reg_296 <= brmerge_demorgan_fu_210_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln15_reg_247 <= icmp_ln15_fu_148_p2;
 trunc_ln15_reg_242 <= trunc_ln15_fu_144_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state3) & ((icmp_ln19_fu_167_p2 == 1'd1) | (icmp_ln15_reg_247 == 1'd0)))) begin
 maxdigits_load_reg_280 <= maxdigits;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln15_fu_148_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 trunc_ln15_1_reg_266 <= trunc_ln15_1_fu_154_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln15_reg_247 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
 trunc_ln33_reg_291 <= trunc_ln33_fu_206_p1;
 end
end
assign ap_ST_fsm_state10_blk = 1'b0;
always @ (*) begin
 if ((ap_start == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_ap_done == 1'b0)) begin
 ap_ST_fsm_state6_blk = 1'b1;
 end else begin
 ap_ST_fsm_state6_blk = 1'b0;
 end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_block_state8_on_subcall_done)) begin
 ap_ST_fsm_state8_blk = 1'b1;
 end else begin
 ap_ST_fsm_state8_blk = 1'b0;
 end
end
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_done == 1'b0)) begin
 ap_ST_fsm_state9_blk = 1'b1;
 end else begin
 ap_ST_fsm_state9_blk = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state10)) begin
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
 if ((1'b1 == ap_CS_fsm_state10)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state9)) begin
 array1_address0 = zext_ln66_fu_220_p1;
 end else if (((icmp_ln15_reg_247 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
 array1_address0 = grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 array1_address0 = grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_array1_address0;
 end else begin
 array1_address0 = 'bx;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state9) & (grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_done == 1'b1))) begin
 array1_ce0 = 1'b1;
 end else if (((icmp_ln15_reg_247 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
 array1_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 array1_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_array1_ce0;
 end else begin
 array1_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln15_reg_247 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
 array1_ce1 = grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_ce1;
 end else begin
 array1_ce1 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln15_reg_247 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
 array1_d0 = grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_d0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 array1_d0 = grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_array1_d0;
 end else begin
 array1_d0 = 'bx;
 end
end
always @ (*) begin
 if (((icmp_ln15_reg_247 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
 array1_we0 = grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_we0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 array1_we0 = grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_array1_we0;
 end else begin
 array1_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln15_reg_247 == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
 array1_we1 = grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_array1_we1;
 end else begin
 array1_we1 = 1'b0;
 end
end
always @ (*) begin
 if (((brmerge_demorgan_reg_296 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((icmp_ln15_fu_148_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else if (((icmp_ln15_fu_148_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((1'b1 == ap_CS_fsm_state2) & (grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_ap_done == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((1'b1 == ap_CS_fsm_state3) & ((icmp_ln19_fu_167_p2 == 1'd1) | (icmp_ln15_reg_247 == 1'd0)))) begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state4 : begin
 if (((1'b1 == ap_CS_fsm_state4) & (grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_ap_done == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 ap_ST_fsm_state6 : begin
 if (((1'b1 == ap_CS_fsm_state6) & (grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_ap_done == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 end
 ap_ST_fsm_state7 : begin
 ap_NS_fsm = ap_ST_fsm_state8;
 end
 ap_ST_fsm_state8 : begin
 if (((1'b0 == ap_block_state8_on_subcall_done) & (1'b1 == ap_CS_fsm_state8))) begin
 ap_NS_fsm = ap_ST_fsm_state9;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state8;
 end
 end
 ap_ST_fsm_state9 : begin
 if (((1'b1 == ap_CS_fsm_state9) & (grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_done == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state10;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state9;
 end
 end
 ap_ST_fsm_state10 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln19_fu_172_p2 = (indvars_iv72_fu_68 + 31'd1);
assign add_ln64_fu_215_p2 = ($signed(trunc_ln15_reg_242) + $signed(7'd127));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
 ap_block_state8_on_subcall_done = ((icmp_ln15_reg_247 == 1'd1) & (grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_ap_done == 1'b0));
end
assign brmerge_demorgan_fu_210_p2 = (icmp_ln15_reg_247 & grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_return);
assign grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_15_1_fu_105_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_31_4_fu_120_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_33_5_fu_126_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_52_7_fu_133_ap_start_reg;
assign icmp_ln15_fu_148_p2 = (($signed(count) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_167_p2 = ((indvars_iv72_fu_68 == trunc_ln15_1_reg_266) ? 1'b1 : 1'b0);
assign icmp_ln27_fu_181_p2 = (($signed(maxdigits) < $signed(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_114_p_out)) ? 1'b1 : 1'b0);
assign temptemp1 = array1_q0;
assign trunc_ln15_1_fu_154_p1 = count[30:0];
assign trunc_ln15_fu_144_p1 = count[6:0];
assign trunc_ln33_fu_206_p1 = count[30:0];
assign zext_ln66_fu_220_p1 = add_ln64_fu_215_p2;
endmodule
module entry_point_array1_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 address1, ce1,
 d1, we1, 
 q1, 
 reset, clk);
parameter DataWidth = 32;
parameter AddressWidth = 7;
parameter AddressRange = 100;
input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input we0; 
output reg[DataWidth-1:0] q0; 
input[AddressWidth-1:0] address1;
input ce1;
input[DataWidth-1:0] d1;
input we1; 
output reg[DataWidth-1:0] q1; 
input reset;
input clk;
(* ram_style = "auto" *)reg [DataWidth-1:0] ram[0:AddressRange-1];
initial begin
 ram[0]=8'h0;
 ram[1]=8'h0;
 ram[2]=8'h0;
 ram[3]=8'h0;
 ram[4]=8'h0;
 ram[5]=8'h0;
 ram[6]=8'h0;
 ram[7]=8'h0;
 ram[8]=8'h0;
 ram[9]=8'h0;
 ram[10]=8'h0;
 ram[11]=8'h0;
 ram[12]=8'h0;
 ram[13]=8'h0;
 ram[14]=8'h0;
 ram[15]=8'h0;
 ram[16]=8'h0;
 ram[17]=8'h0;
 ram[18]=8'h0;
 ram[19]=8'h0;
 ram[20]=8'h0;
 ram[21]=8'h0;
 ram[22]=8'h0;
 ram[23]=8'h0;
 ram[24]=8'h0;
 ram[25]=8'h0;
 ram[26]=8'h0;
 ram[27]=8'h0;
 ram[28]=8'h0;
 ram[29]=8'h0;
 ram[30]=8'h0;
 ram[31]=8'h0;
 ram[32]=8'h0;
 ram[33]=8'h0;
 ram[34]=8'h0;
 ram[35]=8'h0;
 ram[36]=8'h0;
 ram[37]=8'h0;
 ram[38]=8'h0;
 ram[39]=8'h0;
 ram[40]=8'h0;
 ram[41]=8'h0;
 ram[42]=8'h0;
 ram[43]=8'h0;
 ram[44]=8'h0;
 ram[45]=8'h0;
 ram[46]=8'h0;
 ram[47]=8'h0;
 ram[48]=8'h0;
 ram[49]=8'h0;
 ram[50]=8'h0;
 ram[51]=8'h0;
 ram[52]=8'h0;
 ram[53]=8'h0;
 ram[54]=8'h0;
 ram[55]=8'h0;
 ram[56]=8'h0;
 ram[57]=8'h0;
 ram[58]=8'h0;
 ram[59]=8'h0;
 ram[60]=8'h0;
 ram[61]=8'h0;
 ram[62]=8'h0;
 ram[63]=8'h0;
 ram[64]=8'h0;
 ram[65]=8'h0;
 ram[66]=8'h0;
 ram[67]=8'h0;
 ram[68]=8'h0;
 ram[69]=8'h0;
 ram[70]=8'h0;
 ram[71]=8'h0;
 ram[72]=8'h0;
 ram[73]=8'h0;
 ram[74]=8'h0;
 ram[75]=8'h0;
 ram[76]=8'h0;
 ram[77]=8'h0;
 ram[78]=8'h0;
 ram[79]=8'h0;
 ram[80]=8'h0;
 ram[81]=8'h0;
 ram[82]=8'h0;
 ram[83]=8'h0;
 ram[84]=8'h0;
 ram[85]=8'h0;
 ram[86]=8'h0;
 ram[87]=8'h0;
 ram[88]=8'h0;
 ram[89]=8'h0;
 ram[90]=8'h0;
 ram[91]=8'h0;
 ram[92]=8'h0;
 ram[93]=8'h0;
 ram[94]=8'h0;
 ram[95]=8'h0;
 ram[96]=8'h0;
 ram[97]=8'h0;
 ram[98]=8'h0;
 ram[99]=8'h0;
end 
always @(posedge clk) 
begin 
 if (ce0) begin
 if (we0) 
 ram[address0] <= d0; 
 q0 <= ram[address0];
 end
end 
always @(posedge clk) 
begin 
 if (ce1) begin
 if (we1) 
 ram[address1] <= d1; 
 q1 <= ram[address1];
 end
end 
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_15_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 trunc_ln15_1,
 t,
 array1_address0,
 array1_ce0,
 array1_we0,
 array1_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] trunc_ln15_1;
input [31:0] t;
output [6:0] array1_address0;
output array1_ce0;
output array1_we0;
output [31:0] array1_d0;
reg ap_idle;
reg array1_ce0;
reg array1_we0;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln15_fu_78_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] indvars_iv76_cast3_fu_90_p1;
reg [6:0] indvars_iv76_fu_36;
wire [6:0] add_ln15_fu_84_p2;
wire ap_loop_init;
reg [6:0] ap_sig_allocacmp_indvars_iv76_load;
wire [30:0] indvars_iv76_cast_fu_74_p1;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
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
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 if ((icmp_ln15_fu_78_p2 == 1'd0)) begin
 indvars_iv76_fu_36 <= add_ln15_fu_84_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 indvars_iv76_fu_36 <= 7'd0;
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
 if (((ap_start_int == 1'b1) & (icmp_ln15_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_indvars_iv76_load = 7'd0;
 end else begin
 ap_sig_allocacmp_indvars_iv76_load = indvars_iv76_fu_36;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 array1_ce0 = 1'b1;
 end else begin
 array1_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln15_fu_78_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 array1_we0 = 1'b1;
 end else begin
 array1_we0 = 1'b0;
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
assign add_ln15_fu_84_p2 = (ap_sig_allocacmp_indvars_iv76_load + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign array1_address0 = indvars_iv76_cast3_fu_90_p1;
assign array1_d0 = t;
assign icmp_ln15_fu_78_p2 = ((indvars_iv76_cast_fu_74_p1 == trunc_ln15_1) ? 1'b1 : 1'b0);
assign indvars_iv76_cast3_fu_90_p1 = ap_sig_allocacmp_indvars_iv76_load;
assign indvars_iv76_cast_fu_74_p1 = ap_sig_allocacmp_indvars_iv76_load;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_22_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 t,
 p_out,
 p_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] t;
output [31:0] p_out;
output p_out_ap_vld;
reg ap_idle;
reg p_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln22_fu_68_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [31:0] t_1_fu_30;
wire [31:0] t_2_fu_100_p1;
wire ap_block_pp0_stage0_11001;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg [31:0] empty_fu_34;
wire [31:0] add_ln24_fu_74_p2;
wire ap_block_pp0_stage0_01001;
wire [31:0] mul_fu_84_p0;
wire [33:0] mul_fu_84_p1;
wire [63:0] mul_fu_84_p2;
wire [27:0] tmp_fu_90_p4;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire [63:0] mul_fu_84_p00;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_32ns_34ns_64_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 34 ),
 .dout_WIDTH( 64 ))
mul_32ns_34ns_64_1_1_U4(
 .din0(mul_fu_84_p0),
 .din1(mul_fu_84_p1),
 .dout(mul_fu_84_p2)
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
 empty_fu_34 <= 32'd0;
 end else if (((icmp_ln22_fu_68_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 empty_fu_34 <= add_ln24_fu_74_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 t_1_fu_30 <= t;
 end else if (((icmp_ln22_fu_68_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 t_1_fu_30 <= t_2_fu_100_p1;
 end
 end
end
always @ (*) begin
 if (((icmp_ln22_fu_68_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln22_fu_68_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 p_out_ap_vld = 1'b1;
 end else begin
 p_out_ap_vld = 1'b0;
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
assign add_ln24_fu_74_p2 = (empty_fu_34 + 32'd1);
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
assign icmp_ln22_fu_68_p2 = (($signed(t_1_fu_30) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign mul_fu_84_p0 = mul_fu_84_p00;
assign mul_fu_84_p00 = t_1_fu_30;
assign mul_fu_84_p1 = 64'd6871947674;
assign p_out = empty_fu_34;
assign t_2_fu_100_p1 = tmp_fu_90_p4;
assign tmp_fu_90_p4 = {{mul_fu_84_p2[63:36]}};
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_31_4 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 maxdigits_load,
 n_out,
 n_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] maxdigits_load;
output [31:0] n_out;
output n_out_ap_vld;
reg ap_idle;
reg n_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln31_fu_64_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [31:0] n_fu_24;
wire [31:0] n_3_fu_85_p2;
wire ap_block_pp0_stage0_11001;
wire ap_loop_init;
wire ap_block_pp0_stage0;
reg [31:0] dec9_fu_28;
wire [31:0] add_ln31_fu_58_p2;
wire ap_block_pp0_stage0_01001;
wire [31:0] shl_ln32_fu_73_p2;
wire [31:0] shl_ln32_1_fu_79_p2;
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
 dec9_fu_28 <= maxdigits_load;
 end else if (((icmp_ln31_fu_64_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 dec9_fu_28 <= add_ln31_fu_58_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 n_fu_24 <= 32'd1;
 end else if (((icmp_ln31_fu_64_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 n_fu_24 <= n_3_fu_85_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln31_fu_64_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln31_fu_64_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 n_out_ap_vld = 1'b1;
 end else begin
 n_out_ap_vld = 1'b0;
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
assign add_ln31_fu_58_p2 = ($signed(dec9_fu_28) + $signed(32'd4294967295));
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
assign icmp_ln31_fu_64_p2 = ((add_ln31_fu_58_p2 == 32'd0) ? 1'b1 : 1'b0);
assign n_3_fu_85_p2 = (shl_ln32_fu_73_p2 + shl_ln32_1_fu_79_p2);
assign n_out = n_fu_24;
assign shl_ln32_1_fu_79_p2 = n_fu_24 << 32'd1;
assign shl_ln32_fu_73_p2 = n_fu_24 << 32'd3;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_33_5 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 trunc_ln1,
 array1_address0,
 array1_ce0,
 array1_we0,
 array1_d0,
 array1_q0,
 array1_address1,
 array1_ce1,
 array1_we1,
 array1_d1,
 array1_q1
);
parameter ap_ST_fsm_pp0_stage0 = 2'd1;
parameter ap_ST_fsm_pp0_stage1 = 2'd2;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] trunc_ln1;
output [6:0] array1_address0;
output array1_ce0;
output array1_we0;
output [31:0] array1_d0;
input [31:0] array1_q0;
output [6:0] array1_address1;
output array1_ce1;
output array1_we1;
output [31:0] array1_d1;
input [31:0] array1_q1;
reg ap_idle;
reg[6:0] array1_address0;
reg array1_ce0;
reg array1_we0;
reg[6:0] array1_address1;
reg array1_ce1;
reg array1_we1;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
reg ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_CS_fsm_pp0_stage1;
wire ap_block_state2_pp0_stage1_iter0;
wire ap_block_state4_pp0_stage1_iter1;
wire ap_block_pp0_stage1_subdone;
reg [0:0] icmp_ln37_reg_114;
reg ap_condition_exit_pp0_iter0_stage1;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [0:0] icmp_ln37_fu_76_p2;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state3_pp0_stage0_iter1;
wire ap_block_pp0_stage0_11001;
reg [6:0] array1_addr_reg_118;
reg [6:0] array1_addr_1_reg_123;
reg [6:0] array1_addr_1_reg_123_pp0_iter1_reg;
reg [31:0] array1_load_reg_128;
wire ap_block_pp0_stage1_11001;
reg ap_enable_reg_pp0_iter0_reg;
wire [63:0] zext_ln45_fu_97_p1;
wire ap_block_pp0_stage0;
wire [63:0] t_3_cast_fu_88_p1;
reg [30:0] t_fu_32;
wire [30:0] add_ln37_fu_82_p2;
wire ap_loop_init;
reg [30:0] ap_sig_allocacmp_t_1;
wire ap_block_pp0_stage1;
wire [6:0] trunc_ln37_fu_93_p1;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [1:0] ap_NS_fsm;
wire ap_block_pp0_stage0_subdone;
reg ap_idle_pp0_1to1;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
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
 if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 ap_enable_reg_pp0_iter0_reg <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if (((icmp_ln37_fu_76_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 t_fu_32 <= add_ln37_fu_82_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 t_fu_32 <= 31'd0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln37_fu_76_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 array1_addr_1_reg_123 <= t_3_cast_fu_88_p1;
 array1_addr_reg_118 <= zext_ln45_fu_97_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 array1_addr_1_reg_123_pp0_iter1_reg <= array1_addr_1_reg_123;
 icmp_ln37_reg_114 <= icmp_ln37_fu_76_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln37_reg_114 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 array1_load_reg_128 <= array1_q1;
 end
end
always @ (*) begin
 if (((icmp_ln37_reg_114 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
 if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
 ap_idle_pp0_1to1 = 1'b1;
 end else begin
 ap_idle_pp0_1to1 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
 ap_sig_allocacmp_t_1 = 31'd0;
 end else begin
 ap_sig_allocacmp_t_1 = t_fu_32;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 array1_address0 = array1_addr_1_reg_123_pp0_iter1_reg;
 end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 array1_address0 = t_3_cast_fu_88_p1;
 end else begin
 array1_address0 = 'bx;
 end
end
always @ (*) begin
 if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
 if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 array1_address1 = array1_addr_reg_118;
 end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 array1_address1 = zext_ln45_fu_97_p1;
 end else begin
 array1_address1 = 'bx;
 end
 end else begin
 array1_address1 = 'bx;
 end
end
always @ (*) begin
 if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
 array1_ce0 = 1'b1;
 end else begin
 array1_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
 array1_ce1 = 1'b1;
 end else begin
 array1_ce1 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 array1_we0 = 1'b1;
 end else begin
 array1_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln37_reg_114 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 array1_we1 = 1'b1;
 end else begin
 array1_we1 = 1'b0;
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
 if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end else begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage1;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln37_fu_82_p2 = (ap_sig_allocacmp_t_1 + 31'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state4_pp0_stage1_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign array1_d0 = array1_load_reg_128;
assign array1_d1 = array1_q0;
assign icmp_ln37_fu_76_p2 = ((ap_sig_allocacmp_t_1 == trunc_ln1) ? 1'b1 : 1'b0);
assign t_3_cast_fu_88_p1 = ap_sig_allocacmp_t_1;
assign trunc_ln37_fu_93_p1 = ap_sig_allocacmp_t_1[6:0];
assign zext_ln45_fu_97_p1 = trunc_ln37_fu_93_p1;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_52_7 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n_reload,
 icmp_ln15,
 ap_return
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n_reload;
input [0:0] icmp_ln15;
output [0:0] ap_return;
reg ap_idle;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln15_read_read_fu_38_p2;
wire [0:0] icmp_ln52_fu_69_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [0:0] ap_phi_mux_merge_phi_fu_53_p4;
reg [31:0] n_fu_34;
wire [31:0] n_2_fu_95_p1;
wire ap_loop_init;
reg [31:0] ap_sig_allocacmp_n_1;
wire [31:0] mul_ln61_fu_79_p0;
wire [33:0] mul_ln61_fu_79_p1;
wire [63:0] mul_ln61_fu_79_p2;
wire [27:0] tmp_fu_85_p4;
reg [0:0] ap_return_preg;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_start_int;
wire [63:0] mul_ln61_fu_79_p00;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_return_preg = 1'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_mul_32ns_34ns_64_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 34 ),
 .dout_WIDTH( 64 ))
mul_32ns_34ns_64_1_1_U12(
 .din0(mul_ln61_fu_79_p0),
 .din1(mul_ln61_fu_79_p1),
 .dout(mul_ln61_fu_79_p2)
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
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((icmp_ln52_fu_69_p2 == 1'd0) | (icmp_ln15_read_read_fu_38_p2 == 1'd1)))) begin
 ap_return_preg <= ap_phi_mux_merge_phi_fu_53_p4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 if (((icmp_ln52_fu_69_p2 == 1'd1) & (icmp_ln15_read_read_fu_38_p2 == 1'd0))) begin
 n_fu_34 <= n_2_fu_95_p1;
 end else if ((ap_loop_init == 1'b1)) begin
 n_fu_34 <= n_reload;
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
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((icmp_ln52_fu_69_p2 == 1'd0) | (icmp_ln15_read_read_fu_38_p2 == 1'd1)))) begin
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
 if (((icmp_ln52_fu_69_p2 == 1'd1) & (icmp_ln15_read_read_fu_38_p2 == 1'd1))) begin
 ap_phi_mux_merge_phi_fu_53_p4 = 1'd0;
 end else if ((icmp_ln52_fu_69_p2 == 1'd0)) begin
 ap_phi_mux_merge_phi_fu_53_p4 = 1'd1;
 end else begin
 ap_phi_mux_merge_phi_fu_53_p4 = 'bx;
 end
 end else begin
 ap_phi_mux_merge_phi_fu_53_p4 = 'bx;
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
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1) & ((icmp_ln52_fu_69_p2 == 1'd0) | (icmp_ln15_read_read_fu_38_p2 == 1'd1)))) begin
 ap_return = ap_phi_mux_merge_phi_fu_53_p4;
 end else begin
 ap_return = ap_return_preg;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_n_1 = n_reload;
 end else begin
 ap_sig_allocacmp_n_1 = n_fu_34;
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
assign icmp_ln15_read_read_fu_38_p2 = icmp_ln15;
assign icmp_ln52_fu_69_p2 = (($signed(ap_sig_allocacmp_n_1) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign mul_ln61_fu_79_p0 = mul_ln61_fu_79_p00;
assign mul_ln61_fu_79_p00 = ap_sig_allocacmp_n_1;
assign mul_ln61_fu_79_p1 = 64'd6871947674;
assign n_2_fu_95_p1 = tmp_fu_85_p4;
assign tmp_fu_85_p4 = {{mul_ln61_fu_79_p2[63:36]}};
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
module entry_point_mul_32ns_34ns_64_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed({1'b0, din0}) * $signed({1'b0, din1});
endmodule
