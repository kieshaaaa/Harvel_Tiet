module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 size,
 arr,
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
input [31:0] size;
input [31:0] arr;
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
(* fsm_encoding = "none" *) reg [6:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [0:0] icmp_ln11_fu_130_p2;
reg [0:0] icmp_ln11_reg_249;
wire [30:0] trunc_ln11_fu_136_p1;
reg [30:0] trunc_ln11_reg_275;
wire [30:0] add_ln22_fu_164_p2;
reg [30:0] add_ln22_reg_285;
wire ap_CS_fsm_state3;
wire [30:0] trunc_ln19_fu_175_p1;
reg [30:0] trunc_ln19_reg_290;
wire [0:0] icmp_ln22_fu_159_p2;
wire [31:0] select_ln19_fu_185_p3;
reg [31:0] select_ln19_reg_295;
reg [6:0] freq_addr_reg_300;
reg [6:0] freq_address0;
reg freq_ce0;
reg freq_we0;
reg [31:0] freq_d0;
wire [31:0] freq_q0;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_freq_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_freq_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_freq_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_freq_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_freq_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_freq_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_freq_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_freq_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_freq_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_freq_ce0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_temptemp2;
wire grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_temptemp2_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_temptemp3;
wire grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_temptemp3_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_ap_start_reg;
wire ap_CS_fsm_state4;
reg grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_ap_start_reg;
wire ap_CS_fsm_state7;
wire [63:0] zext_ln19_fu_170_p1;
reg [30:0] i_1_fu_58;
wire ap_CS_fsm_state6;
reg [31:0] phi_ln19_fu_62;
wire [31:0] add_ln19_fu_216_p2;
reg [31:0] phi_ln22_fu_66;
wire [31:0] add_ln19_1_fu_222_p2;
wire ap_CS_fsm_state5;
wire [0:0] icmp_ln30_fu_207_p2;
wire [31:0] count_fu_201_p2;
wire [0:0] icmp_ln19_fu_180_p2;
wire [31:0] add_ln6_fu_195_p2;
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
#0 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_ap_start_reg = 1'b0;
end
entry_point_freq_RAM_AUTO_1R1W #(
 .DataWidth( 32 ),
 .AddressRange( 100 ),
 .AddressWidth( 7 ))
freq_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(freq_address0),
 .ce0(freq_ce0),
 .we0(freq_we0),
 .d0(freq_d0),
 .q0(freq_q0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_11_1 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_ap_ready),
 .trunc_ln(trunc_ln11_reg_275),
 .freq_address0(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_freq_address0),
 .freq_ce0(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_freq_ce0),
 .freq_we0(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_freq_we0),
 .freq_d0(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_freq_d0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_22_3 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_ap_ready),
 .trunc_ln1(trunc_ln19_reg_290),
 .size_load(size),
 .freq_address0(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_freq_address0),
 .freq_ce0(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_freq_ce0),
 .freq_we0(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_freq_we0),
 .freq_d0(grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_freq_d0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_36_4 grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_ap_ready),
 .trunc_ln(trunc_ln11_reg_275),
 .freq_address0(grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_freq_address0),
 .freq_ce0(grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_freq_ce0),
 .freq_q0(freq_q0),
 .arr_load(arr),
 .temptemp2(grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_temptemp2),
 .temptemp2_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_temptemp2_ap_vld),
 .temptemp3(grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_temptemp3),
 .temptemp3_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_temptemp3_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln11_fu_130_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln22_fu_159_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln22_fu_159_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln11_fu_130_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 i_1_fu_58 <= 31'd0;
 end else if ((1'b1 == ap_CS_fsm_state6)) begin
 i_1_fu_58 <= add_ln22_reg_285;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln11_fu_130_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 phi_ln19_fu_62 <= 32'd1;
 end else if ((1'b1 == ap_CS_fsm_state6)) begin
 phi_ln19_fu_62 <= add_ln19_fu_216_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln11_fu_130_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 phi_ln22_fu_66 <= 32'd4294967295;
 end else if ((1'b1 == ap_CS_fsm_state6)) begin
 phi_ln22_fu_66 <= add_ln19_1_fu_222_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 add_ln22_reg_285 <= add_ln22_fu_164_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln22_fu_159_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 freq_addr_reg_300 <= zext_ln19_fu_170_p1;
 select_ln19_reg_295 <= select_ln19_fu_185_p3;
 trunc_ln19_reg_290 <= trunc_ln19_fu_175_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln11_reg_249 <= icmp_ln11_fu_130_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln11_fu_130_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 trunc_ln11_reg_275 <= trunc_ln11_fu_136_p1;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_ap_done == 1'b0)) begin
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
 if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6))) begin
 freq_address0 = freq_addr_reg_300;
 end else if (((icmp_ln11_reg_249 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
 freq_address0 = grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_freq_address0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 freq_address0 = grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_freq_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 freq_address0 = grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_freq_address0;
 end else begin
 freq_address0 = 'bx;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state6))) begin
 freq_ce0 = 1'b1;
 end else if (((icmp_ln11_reg_249 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
 freq_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_freq_ce0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 freq_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_freq_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 freq_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_freq_ce0;
 end else begin
 freq_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 freq_d0 = count_fu_201_p2;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 freq_d0 = grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_freq_d0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 freq_d0 = grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_freq_d0;
 end else begin
 freq_d0 = 'bx;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln30_fu_207_p2 == 1'd0))) begin
 freq_we0 = 1'b1;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 freq_we0 = grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_freq_we0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 freq_we0 = grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_freq_we0;
 end else begin
 freq_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln11_fu_130_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((icmp_ln11_fu_130_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end else if (((icmp_ln11_fu_130_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((icmp_ln22_fu_159_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state4 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
assign add_ln19_1_fu_222_p2 = ($signed(phi_ln22_fu_66) + $signed(32'd4294967295));
assign add_ln19_fu_216_p2 = (phi_ln19_fu_62 + 32'd1);
assign add_ln22_fu_164_p2 = (i_1_fu_58 + 31'd1);
assign add_ln6_fu_195_p2 = (phi_ln22_fu_66 + 32'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
always @ (*) begin
 ap_block_state7_on_subcall_done = ((icmp_ln11_reg_249 == 1'd1) & (grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_ap_done == 1'b0));
end
assign ap_return = 32'd0;
assign count_fu_201_p2 = (add_ln6_fu_195_p2 + select_ln19_reg_295);
assign grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_101_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_22_3_fu_108_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_ap_start_reg;
assign icmp_ln11_fu_130_p2 = (($signed(size) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_180_p2 = ((phi_ln19_fu_62 > size) ? 1'b1 : 1'b0);
assign icmp_ln22_fu_159_p2 = ((i_1_fu_58 == trunc_ln11_reg_275) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_207_p2 = ((freq_q0 == 32'd0) ? 1'b1 : 1'b0);
assign select_ln19_fu_185_p3 = ((icmp_ln19_fu_180_p2[0:0] == 1'b1) ? phi_ln19_fu_62 : size);
assign temptemp1 = size;
assign temptemp2 = grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_temptemp2;
assign temptemp2_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_temptemp2_ap_vld;
assign temptemp3 = grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_temptemp3;
assign temptemp3_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_36_4_fu_115_temptemp3_ap_vld;
assign trunc_ln11_fu_136_p1 = size[30:0];
assign trunc_ln19_fu_175_p1 = phi_ln19_fu_62[30:0];
assign zext_ln19_fu_170_p1 = i_1_fu_58;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_11_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 trunc_ln,
 freq_address0,
 freq_ce0,
 freq_we0,
 freq_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] trunc_ln;
output [6:0] freq_address0;
output freq_ce0;
output freq_we0;
output [31:0] freq_d0;
reg ap_idle;
reg freq_ce0;
reg freq_we0;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln11_fu_64_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] i_cast_fu_76_p1;
reg [30:0] i_fu_32;
wire [30:0] add_ln14_fu_70_p2;
wire ap_loop_init;
reg [30:0] ap_sig_allocacmp_i_2;
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
 if ((icmp_ln11_fu_64_p2 == 1'd0)) begin
 i_fu_32 <= add_ln14_fu_70_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_32 <= 31'd0;
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
 if (((ap_start_int == 1'b1) & (icmp_ln11_fu_64_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_sig_allocacmp_i_2 = 31'd0;
 end else begin
 ap_sig_allocacmp_i_2 = i_fu_32;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 freq_ce0 = 1'b1;
 end else begin
 freq_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln11_fu_64_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 freq_we0 = 1'b1;
 end else begin
 freq_we0 = 1'b0;
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
assign add_ln14_fu_70_p2 = (ap_sig_allocacmp_i_2 + 31'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign freq_address0 = i_cast_fu_76_p1;
assign freq_d0 = 32'd4294967295;
assign i_cast_fu_76_p1 = ap_sig_allocacmp_i_2;
assign icmp_ln11_fu_64_p2 = ((ap_sig_allocacmp_i_2 == trunc_ln) ? 1'b1 : 1'b0);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_22_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 trunc_ln1,
 size_load,
 freq_address0,
 freq_ce0,
 freq_we0,
 freq_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] trunc_ln1;
input [31:0] size_load;
output [6:0] freq_address0;
output freq_ce0;
output freq_we0;
output [31:0] freq_d0;
reg ap_idle;
reg freq_ce0;
reg freq_we0;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln22_fu_70_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] j_cast2_fu_76_p1;
reg [30:0] j_fu_28;
wire [30:0] add_ln22_fu_81_p2;
wire ap_loop_init;
reg [30:0] ap_sig_allocacmp_j_1;
wire [31:0] j_cast_fu_66_p1;
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
 if ((icmp_ln22_fu_70_p2 == 1'd1)) begin
 j_fu_28 <= add_ln22_fu_81_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 j_fu_28 <= trunc_ln1;
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
 if (((ap_start_int == 1'b1) & (icmp_ln22_fu_70_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_sig_allocacmp_j_1 = trunc_ln1;
 end else begin
 ap_sig_allocacmp_j_1 = j_fu_28;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 freq_ce0 = 1'b1;
 end else begin
 freq_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln22_fu_70_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 freq_we0 = 1'b1;
 end else begin
 freq_we0 = 1'b0;
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
assign add_ln22_fu_81_p2 = (ap_sig_allocacmp_j_1 + 31'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign freq_address0 = j_cast2_fu_76_p1;
assign freq_d0 = 32'd0;
assign icmp_ln22_fu_70_p2 = (($signed(j_cast_fu_66_p1) < $signed(size_load)) ? 1'b1 : 1'b0);
assign j_cast2_fu_76_p1 = ap_sig_allocacmp_j_1;
assign j_cast_fu_66_p1 = ap_sig_allocacmp_j_1;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_36_4 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 trunc_ln,
 freq_address0,
 freq_ce0,
 freq_q0,
 arr_load,
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
input [30:0] trunc_ln;
output [6:0] freq_address0;
output freq_ce0;
input [31:0] freq_q0;
input [31:0] arr_load;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
reg ap_idle;
reg freq_ce0;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln36_fu_94_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
wire [63:0] i_2_cast_fu_106_p1;
wire ap_block_pp0_stage0;
reg [30:0] i_fu_42;
wire [30:0] add_ln36_fu_100_p2;
wire ap_loop_init;
reg [30:0] ap_sig_allocacmp_i_1;
wire ap_block_pp0_stage0_01001;
wire [0:0] icmp_ln38_fu_116_p2;
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
 if (((icmp_ln36_fu_94_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 i_fu_42 <= add_ln36_fu_100_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_42 <= 31'd0;
 end
 end
end
always @ (*) begin
 if (((icmp_ln36_fu_94_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 ap_sig_allocacmp_i_1 = 31'd0;
 end else begin
 ap_sig_allocacmp_i_1 = i_fu_42;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 freq_ce0 = 1'b1;
 end else begin
 freq_ce0 = 1'b0;
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
assign add_ln36_fu_100_p2 = (ap_sig_allocacmp_i_1 + 31'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign freq_address0 = i_2_cast_fu_106_p1;
assign i_2_cast_fu_106_p1 = ap_sig_allocacmp_i_1;
assign icmp_ln36_fu_94_p2 = ((ap_sig_allocacmp_i_1 == trunc_ln) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_116_p2 = ((freq_q0 == 32'd0) ? 1'b1 : 1'b0);
assign temptemp2 = arr_load;
assign temptemp3 = freq_q0;
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
module entry_point_freq_RAM_AUTO_1R1W (
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
