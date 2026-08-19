module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n,
 data,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 7'd1;
parameter ap_ST_fsm_state2 = 7'd2;
parameter ap_ST_fsm_state3 = 7'd4;
parameter ap_ST_fsm_state4 = 7'd8;
parameter ap_ST_fsm_state5 = 7'd16;
parameter ap_ST_fsm_state6 = 7'd32;
parameter ap_ST_fsm_state7 = 7'd64;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n;
input [31:0] data;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg[31:0] temptemp2;
reg[31:0] temptemp3;
(* fsm_encoding = "none" *) reg [6:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [31:0] n_read_reg_267;
wire [30:0] trunc_ln12_fu_138_p1;
reg [30:0] trunc_ln12_reg_272;
wire [6:0] trunc_ln12_1_fu_143_p1;
reg [6:0] trunc_ln12_1_reg_280;
wire [0:0] icmp_ln12_fu_147_p2;
reg [0:0] icmp_ln12_reg_285;
wire [6:0] add_ln23_fu_180_p2;
reg [6:0] add_ln23_reg_316;
wire ap_CS_fsm_state3;
wire [31:0] counter_fu_220_p2;
reg [31:0] counter_reg_321;
wire [6:0] trunc_ln21_fu_226_p1;
reg [6:0] trunc_ln21_reg_326;
reg [31:0] data_read_reg_331;
reg [6:0] occurrences_addr_reg_336;
wire ap_CS_fsm_state5;
reg [6:0] occurrences_address0;
reg occurrences_ce0;
reg occurrences_we0;
reg [31:0] occurrences_d0;
wire [31:0] occurrences_q0;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_occurrences_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_occurrences_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_occurrences_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_occurrences_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_occurrences_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_occurrences_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_occurrences_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_occurrences_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_occurrences_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_occurrences_ce0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_temptemp2;
wire grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_temptemp2_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_temptemp3;
wire grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_temptemp3_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_ap_start_reg;
wire ap_CS_fsm_state2;
wire occurrences_we0_out;
reg grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_ap_start_reg;
wire [0:0] icmp_ln24_fu_175_p2;
wire ap_CS_fsm_state4;
reg grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_ap_start_reg;
wire ap_CS_fsm_state7;
reg [31:0] temptemp2_reg;
reg [31:0] temptemp3_reg;
wire [63:0] zext_ln21_2_fu_231_p1;
reg [6:0] i_1_fu_62;
wire ap_CS_fsm_state6;
reg [7:0] phi_ln21_fu_66;
wire [7:0] add_ln21_fu_241_p2;
reg [7:0] phi_ln24_fu_70;
wire [7:0] add_ln21_1_fu_247_p2;
reg occurrences_ce0_local;
reg [6:0] occurrences_address0_local;
reg occurrences_we0_local;
wire [0:0] icmp_ln31_fu_235_p2;
wire [30:0] zext_ln21_fu_171_p1;
wire [31:0] zext_ln21_3_fu_190_p1;
wire [0:0] icmp_ln21_fu_194_p2;
wire [30:0] zext_ln21_1_fu_186_p1;
wire [30:0] select_ln21_fu_199_p3;
wire [7:0] add_ln6_fu_210_p2;
wire signed [31:0] sext_ln6_fu_216_p1;
wire [31:0] zext_ln6_fu_206_p1;
reg ap_block_state7_on_subcall_done;
reg [6:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ST_fsm_state6_blk;
reg ap_ST_fsm_state7_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_ap_start_reg = 1'b0;
#0 i_1_fu_62 = 7'd0;
#0 phi_ln21_fu_66 = 8'd0;
#0 phi_ln24_fu_70 = 8'd0;
end
entry_point_occurrences_RAM_AUTO_1R1W #(
 .DataWidth( 32 ),
 .AddressRange( 100 ),
 .AddressWidth( 7 ))
occurrences_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(occurrences_address0),
 .ce0(occurrences_ce0),
 .we0(occurrences_we0),
 .d0(occurrences_d0),
 .q0(occurrences_q0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_12_1 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_ap_ready),
 .empty(trunc_ln12_reg_272),
 .occurrences_address0(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_occurrences_address0),
 .occurrences_ce0(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_occurrences_ce0),
 .occurrences_we0(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_occurrences_we0),
 .occurrences_d0(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_occurrences_d0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_24_3 grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_ap_ready),
 .zext_ln21_4(trunc_ln21_reg_326),
 .n_load(trunc_ln12_reg_272),
 .occurrences_address0(grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_occurrences_address0),
 .occurrences_ce0(grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_occurrences_ce0),
 .occurrences_we0(grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_occurrences_we0),
 .occurrences_d0(grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_occurrences_d0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_37_4 grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_ap_ready),
 .empty(trunc_ln12_1_reg_280),
 .occurrences_address0(grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_occurrences_address0),
 .occurrences_ce0(grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_occurrences_ce0),
 .occurrences_q0(occurrences_q0),
 .data_load(data_read_reg_331),
 .temptemp2(grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_temptemp2),
 .temptemp2_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_temptemp2_ap_vld),
 .temptemp3(grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_temptemp3),
 .temptemp3_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_temptemp3_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln12_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_175_p2 == 1'd0))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_175_p2 == 1'd1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln12_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 i_1_fu_62 <= 7'd0;
 end else if ((1'b1 == ap_CS_fsm_state6)) begin
 i_1_fu_62 <= add_ln23_reg_316;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln12_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 phi_ln21_fu_66 <= 8'd1;
 end else if ((1'b1 == ap_CS_fsm_state6)) begin
 phi_ln21_fu_66 <= add_ln21_fu_241_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln12_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 phi_ln24_fu_70 <= 8'd255;
 end else if ((1'b1 == ap_CS_fsm_state6)) begin
 phi_ln24_fu_70 <= add_ln21_1_fu_247_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 add_ln23_reg_316 <= add_ln23_fu_180_p2;
 counter_reg_321 <= counter_fu_220_p2;
 data_read_reg_331 <= data;
 trunc_ln21_reg_326 <= trunc_ln21_fu_226_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln12_reg_285 <= icmp_ln12_fu_147_p2;
 n_read_reg_267 <= n;
 trunc_ln12_1_reg_280 <= trunc_ln12_1_fu_143_p1;
 trunc_ln12_reg_272 <= trunc_ln12_fu_138_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 occurrences_addr_reg_336 <= zext_ln21_2_fu_231_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln12_reg_285 == 1'd1) & (1'b1 == ap_CS_fsm_state7) & (grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_temptemp2_ap_vld == 1'b1))) begin
 temptemp2_reg <= grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_temptemp2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln12_reg_285 == 1'd1) & (1'b1 == ap_CS_fsm_state7) & (grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_temptemp3_ap_vld == 1'b1))) begin
 temptemp3_reg <= grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_temptemp3;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_block_state7_on_subcall_done)) begin
 ap_ST_fsm_state7_blk = 1'b1;
 end else begin
 ap_ST_fsm_state7_blk = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7))) begin
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
 if (((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln12_reg_285 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
 occurrences_address0 = grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_occurrences_address0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 occurrences_address0 = grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_occurrences_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 occurrences_address0 = grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_occurrences_address0;
 end else begin
 occurrences_address0 = occurrences_address0_local;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 occurrences_address0_local = occurrences_addr_reg_336;
 end else if ((1'b1 == ap_CS_fsm_state5)) begin
 occurrences_address0_local = zext_ln21_2_fu_231_p1;
 end else begin
 occurrences_address0_local = 'bx;
 end
end
always @ (*) begin
 if (((icmp_ln12_reg_285 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
 occurrences_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_occurrences_ce0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 occurrences_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_occurrences_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 occurrences_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_occurrences_ce0;
 end else begin
 occurrences_ce0 = occurrences_ce0_local;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6))) begin
 occurrences_ce0_local = 1'b1;
 end else begin
 occurrences_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 occurrences_d0 = grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_occurrences_d0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 occurrences_d0 = grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_occurrences_d0;
 end else begin
 occurrences_d0 = counter_reg_321;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 occurrences_we0 = grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_occurrences_we0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 occurrences_we0 = grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_occurrences_we0;
 end else begin
 occurrences_we0 = (occurrences_we0_out | 1'b0);
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln31_fu_235_p2 == 1'd0))) begin
 occurrences_we0_local = 1'b1;
 end else begin
 occurrences_we0_local = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln12_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln12_reg_285 == 1'd1) & (1'b1 == ap_CS_fsm_state7) & (grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_temptemp2_ap_vld == 1'b1))) begin
 temptemp2 = grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_temptemp2;
 end else begin
 temptemp2 = temptemp2_reg;
 end
end
always @ (*) begin
 if (((icmp_ln12_reg_285 == 1'd1) & (1'b1 == ap_CS_fsm_state7) & (grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_temptemp3_ap_vld == 1'b1))) begin
 temptemp3 = grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_temptemp3;
 end else begin
 temptemp3 = temptemp3_reg;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((icmp_ln12_fu_147_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end else if (((icmp_ln12_fu_147_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_175_p2 == 1'd1))) begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state4 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 ap_ST_fsm_state6 : begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 ap_ST_fsm_state7 : begin
 if (((1'b0 == ap_block_state7_on_subcall_done) & (1'b1 == ap_CS_fsm_state7))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln21_1_fu_247_p2 = ($signed(phi_ln24_fu_70) + $signed(8'd255));
assign add_ln21_fu_241_p2 = (phi_ln21_fu_66 + 8'd1);
assign add_ln23_fu_180_p2 = (i_1_fu_62 + 7'd1);
assign add_ln6_fu_210_p2 = (phi_ln24_fu_70 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
always @ (*) begin
 ap_block_state7_on_subcall_done = ((icmp_ln12_reg_285 == 1'd1) & (grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_ap_done == 1'b0));
end
assign ap_return = 32'd0;
assign counter_fu_220_p2 = ($signed(sext_ln6_fu_216_p1) + $signed(zext_ln6_fu_206_p1));
assign grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_106_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_24_3_fu_113_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_ap_start_reg;
assign icmp_ln12_fu_147_p2 = (($signed(n) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_194_p2 = (($signed(zext_ln21_3_fu_190_p1) > $signed(n_read_reg_267)) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_175_p2 = ((zext_ln21_fu_171_p1 == trunc_ln12_reg_272) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_235_p2 = ((occurrences_q0 == 32'd0) ? 1'b1 : 1'b0);
assign occurrences_we0_out = occurrences_we0_local;
assign select_ln21_fu_199_p3 = ((icmp_ln21_fu_194_p2[0:0] == 1'b1) ? zext_ln21_1_fu_186_p1 : trunc_ln12_reg_272);
assign sext_ln6_fu_216_p1 = $signed(add_ln6_fu_210_p2);
assign temptemp1 = n;
assign temptemp2_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_temptemp2_ap_vld;
assign temptemp3_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_37_4_fu_120_temptemp3_ap_vld;
assign trunc_ln12_1_fu_143_p1 = n[6:0];
assign trunc_ln12_fu_138_p1 = n[30:0];
assign trunc_ln21_fu_226_p1 = phi_ln21_fu_66[6:0];
assign zext_ln21_1_fu_186_p1 = phi_ln21_fu_66;
assign zext_ln21_2_fu_231_p1 = i_1_fu_62;
assign zext_ln21_3_fu_190_p1 = phi_ln21_fu_66;
assign zext_ln21_fu_171_p1 = i_1_fu_62;
assign zext_ln6_fu_206_p1 = select_ln21_fu_199_p3;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_12_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 empty,
 occurrences_address0,
 occurrences_ce0,
 occurrences_we0,
 occurrences_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] empty;
output [6:0] occurrences_address0;
output occurrences_ce0;
output occurrences_we0;
output [31:0] occurrences_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln12_fu_68_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] zext_ln12_fu_80_p1;
reg [6:0] i_fu_32;
wire [6:0] add_ln14_fu_74_p2;
wire ap_loop_init;
reg [6:0] ap_sig_allocacmp_i_2;
reg occurrences_we0_local;
reg occurrences_ce0_local;
wire [30:0] zext_ln12_1_fu_64_p1;
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
#0 i_fu_32 = 7'd0;
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
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 if ((icmp_ln12_fu_68_p2 == 1'd0)) begin
 i_fu_32 <= add_ln14_fu_74_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_32 <= 7'd0;
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
 if (((icmp_ln12_fu_68_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
 if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
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
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_i_2 = 7'd0;
 end else begin
 ap_sig_allocacmp_i_2 = i_fu_32;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 occurrences_ce0_local = 1'b1;
 end else begin
 occurrences_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln12_fu_68_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 occurrences_we0_local = 1'b1;
 end else begin
 occurrences_we0_local = 1'b0;
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
assign add_ln14_fu_74_p2 = (ap_sig_allocacmp_i_2 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln12_fu_68_p2 = ((zext_ln12_1_fu_64_p1 == empty) ? 1'b1 : 1'b0);
assign occurrences_address0 = zext_ln12_fu_80_p1;
assign occurrences_ce0 = occurrences_ce0_local;
assign occurrences_d0 = 32'd4294967295;
assign occurrences_we0 = occurrences_we0_local;
assign zext_ln12_1_fu_64_p1 = ap_sig_allocacmp_i_2;
assign zext_ln12_fu_80_p1 = ap_sig_allocacmp_i_2;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_24_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 zext_ln21_4,
 n_load,
 occurrences_address0,
 occurrences_ce0,
 occurrences_we0,
 occurrences_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [6:0] zext_ln21_4;
input [30:0] n_load;
output [6:0] occurrences_address0;
output occurrences_ce0;
output occurrences_we0;
output [31:0] occurrences_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln24_fu_70_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] zext_ln24_fu_76_p1;
reg [30:0] j_fu_28;
wire [30:0] zext_ln21_4_cast_fu_58_p1;
wire [30:0] add_ln29_fu_81_p2;
wire ap_loop_init;
reg [30:0] ap_sig_allocacmp_j_1;
reg occurrences_we0_local;
reg occurrences_ce0_local;
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
#0 j_fu_28 = 31'd0;
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
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 if ((icmp_ln24_fu_70_p2 == 1'd1)) begin
 j_fu_28 <= add_ln29_fu_81_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 j_fu_28 <= zext_ln21_4_cast_fu_58_p1;
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
 if (((icmp_ln24_fu_70_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
 if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_idle = 1'b1;
 end else begin
 ap_idle = 1'b0;
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
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_j_1 = zext_ln21_4_cast_fu_58_p1;
 end else begin
 ap_sig_allocacmp_j_1 = j_fu_28;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 occurrences_ce0_local = 1'b1;
 end else begin
 occurrences_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln24_fu_70_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 occurrences_we0_local = 1'b1;
 end else begin
 occurrences_we0_local = 1'b0;
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
assign add_ln29_fu_81_p2 = (ap_sig_allocacmp_j_1 + 31'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln24_fu_70_p2 = ((ap_sig_allocacmp_j_1 < n_load) ? 1'b1 : 1'b0);
assign occurrences_address0 = zext_ln24_fu_76_p1;
assign occurrences_ce0 = occurrences_ce0_local;
assign occurrences_d0 = 32'd0;
assign occurrences_we0 = occurrences_we0_local;
assign zext_ln21_4_cast_fu_58_p1 = zext_ln21_4;
assign zext_ln24_fu_76_p1 = ap_sig_allocacmp_j_1;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_37_4 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 empty,
 occurrences_address0,
 occurrences_ce0,
 occurrences_q0,
 data_load,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [6:0] empty;
output [6:0] occurrences_address0;
output occurrences_ce0;
input [31:0] occurrences_q0;
input [31:0] data_load;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
reg ap_idle;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln37_fu_94_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
wire [63:0] zext_ln37_fu_106_p1;
wire ap_block_pp0_stage0;
reg [6:0] i_fu_42;
wire [6:0] add_ln45_fu_100_p2;
wire ap_loop_init;
reg [6:0] ap_sig_allocacmp_i_1;
wire ap_block_pp0_stage0_01001;
wire [0:0] icmp_ln38_fu_116_p2;
reg occurrences_ce0_local;
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
#0 i_fu_42 = 7'd0;
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
 if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_enable_reg_pp0_iter1 <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if (((icmp_ln37_fu_94_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 i_fu_42 <= add_ln45_fu_100_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_42 <= 7'd0;
 end
 end
end
always @ (*) begin
 if (((icmp_ln37_fu_94_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
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
 if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_sig_allocacmp_i_1 = 7'd0;
 end else begin
 ap_sig_allocacmp_i_1 = i_fu_42;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 occurrences_ce0_local = 1'b1;
 end else begin
 occurrences_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln38_fu_116_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln38_fu_116_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
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
assign add_ln45_fu_100_p2 = (ap_sig_allocacmp_i_1 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln37_fu_94_p2 = ((ap_sig_allocacmp_i_1 == empty) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_116_p2 = ((occurrences_q0 == 32'd0) ? 1'b1 : 1'b0);
assign occurrences_address0 = zext_ln37_fu_106_p1;
assign occurrences_ce0 = occurrences_ce0_local;
assign temptemp2 = data_load;
assign temptemp3 = occurrences_q0;
assign zext_ln37_fu_106_p1 = ap_sig_allocacmp_i_1;
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
module entry_point_occurrences_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 reset, clk);
parameter DataWidth = 32;
parameter AddressWidth = 7;
parameter AddressRange = 100;
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
