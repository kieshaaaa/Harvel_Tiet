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
input [31:0] size;
input [31:0] arr;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [4:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [0:0] icmp_ln9_fu_104_p2;
reg [0:0] icmp_ln9_reg_182;
wire ap_CS_fsm_state2;
wire [30:0] trunc_ln16_fu_110_p1;
reg [30:0] trunc_ln16_reg_200;
wire [30:0] add_ln16_fu_114_p2;
reg [30:0] add_ln16_reg_207;
reg [30:0] i_1_load_reg_215;
wire ap_CS_fsm_state3;
wire [0:0] icmp_ln16_fu_133_p2;
wire [6:0] empty_fu_148_p1;
reg [6:0] empty_reg_220;
wire [30:0] select_ln16_fu_164_p3;
reg [30:0] select_ln16_reg_225;
reg [6:0] count_address0;
reg count_ce0;
reg count_we0;
reg [31:0] count_d0;
wire [31:0] count_q0;
reg count_ce1;
reg count_we1;
wire [31:0] count_q1;
wire grp_entry_point_Pipeline_1_fu_80_ap_start;
wire grp_entry_point_Pipeline_1_fu_80_ap_done;
wire grp_entry_point_Pipeline_1_fu_80_ap_idle;
wire grp_entry_point_Pipeline_1_fu_80_ap_ready;
wire [6:0] grp_entry_point_Pipeline_1_fu_80_count_address0;
wire grp_entry_point_Pipeline_1_fu_80_count_ce0;
wire grp_entry_point_Pipeline_1_fu_80_count_we0;
wire [31:0] grp_entry_point_Pipeline_1_fu_80_count_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_d0;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_address1;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_ce1;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_we1;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_d1;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_count_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_count_ce0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_temptemp2;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_temptemp2_ap_vld;
reg grp_entry_point_Pipeline_1_fu_80_ap_start_reg;
reg grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_ap_start_reg;
wire ap_CS_fsm_state4;
reg grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_ap_start_reg;
wire ap_CS_fsm_state5;
reg [30:0] idx_fu_52;
wire [30:0] add_ln16_2_fu_138_p2;
reg [30:0] i_1_fu_56;
wire [30:0] add_ln16_1_fu_158_p2;
wire [0:0] icmp_ln16_1_fu_153_p2;
reg ap_block_state5_on_subcall_done;
reg [4:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
reg ap_ST_fsm_state5_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_entry_point_Pipeline_1_fu_80_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_ap_start_reg = 1'b0;
end
entry_point_count_RAM_AUTO_1R1W #(
 .DataWidth( 32 ),
 .AddressRange( 100 ),
 .AddressWidth( 7 ))
count_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(count_address0),
 .ce0(count_ce0),
 .we0(count_we0),
 .d0(count_d0),
 .q0(count_q0),
 .address1(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_address1),
 .ce1(count_ce1),
 .we1(count_we1),
 .d1(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_d1),
 .q1(count_q1)
);
entry_point_entry_point_Pipeline_1 grp_entry_point_Pipeline_1_fu_80(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_1_fu_80_ap_start),
 .ap_done(grp_entry_point_Pipeline_1_fu_80_ap_done),
 .ap_idle(grp_entry_point_Pipeline_1_fu_80_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_1_fu_80_ap_ready),
 .count_address0(grp_entry_point_Pipeline_1_fu_80_count_address0),
 .count_ce0(grp_entry_point_Pipeline_1_fu_80_count_ce0),
 .count_we0(grp_entry_point_Pipeline_1_fu_80_count_we0),
 .count_d0(grp_entry_point_Pipeline_1_fu_80_count_d0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_16_3 grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_ap_ready),
 .i_1(i_1_load_reg_215),
 .count_address0(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_address0),
 .count_ce0(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_ce0),
 .count_we0(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_we0),
 .count_d0(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_d0),
 .count_q0(count_q0),
 .count_address1(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_address1),
 .count_ce1(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_ce1),
 .count_we1(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_we1),
 .count_d1(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_d1),
 .count_q1(count_q1),
 .zext_ln16(empty_reg_220),
 .select_ln16(select_ln16_reg_225)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_24_4 grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_ap_ready),
 .trunc_ln(trunc_ln16_reg_200),
 .count_address0(grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_count_address0),
 .count_ce0(grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_count_ce0),
 .count_q0(count_q0),
 .arr_load(arr),
 .temptemp2(grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_temptemp2),
 .temptemp2_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_temptemp2_ap_vld)
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
 grp_entry_point_Pipeline_1_fu_80_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_1_fu_80_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_1_fu_80_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_1_fu_80_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln16_fu_133_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln16_fu_133_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_1_fu_80_ap_done == 1'b1) & (icmp_ln9_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 i_1_fu_56 <= 31'd1;
 end else if (((icmp_ln16_fu_133_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 i_1_fu_56 <= add_ln16_1_fu_158_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_1_fu_80_ap_done == 1'b1) & (icmp_ln9_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 idx_fu_52 <= 31'd0;
 end else if (((icmp_ln16_fu_133_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 idx_fu_52 <= add_ln16_2_fu_138_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln9_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 add_ln16_reg_207 <= add_ln16_fu_114_p2;
 trunc_ln16_reg_200 <= trunc_ln16_fu_110_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln16_fu_133_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 empty_reg_220 <= empty_fu_148_p1;
 i_1_load_reg_215 <= i_1_fu_56;
 select_ln16_reg_225 <= select_ln16_fu_164_p3;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 icmp_ln9_reg_182 <= icmp_ln9_fu_104_p2;
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
 if ((grp_entry_point_Pipeline_1_fu_80_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_block_state5_on_subcall_done)) begin
 ap_ST_fsm_state5_blk = 1'b1;
 end else begin
 ap_ST_fsm_state5_blk = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
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
 if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln9_reg_182 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
 count_address0 = grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_count_address0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 count_address0 = grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 count_address0 = grp_entry_point_Pipeline_1_fu_80_count_address0;
 end else begin
 count_address0 = 'bx;
 end
end
always @ (*) begin
 if (((icmp_ln9_reg_182 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
 count_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_count_ce0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 count_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 count_ce0 = grp_entry_point_Pipeline_1_fu_80_count_ce0;
 end else begin
 count_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 count_ce1 = grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_ce1;
 end else begin
 count_ce1 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 count_d0 = grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_d0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 count_d0 = grp_entry_point_Pipeline_1_fu_80_count_d0;
 end else begin
 count_d0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 count_we0 = grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_we0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 count_we0 = grp_entry_point_Pipeline_1_fu_80_count_we0;
 end else begin
 count_we0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 count_we1 = grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_count_we1;
 end else begin
 count_we1 = 1'b0;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_1_fu_80_ap_done == 1'b1) & (icmp_ln9_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
 if (((grp_entry_point_Pipeline_1_fu_80_ap_done == 1'b1) & (icmp_ln9_fu_104_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else if (((grp_entry_point_Pipeline_1_fu_80_ap_done == 1'b1) & (icmp_ln9_fu_104_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((icmp_ln16_fu_133_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state4 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state5 : begin
 if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln16_1_fu_158_p2 = (i_1_fu_56 + 31'd1);
assign add_ln16_2_fu_138_p2 = (idx_fu_52 + 31'd1);
assign add_ln16_fu_114_p2 = ($signed(trunc_ln16_fu_110_p1) + $signed(31'd2147483647));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
always @ (*) begin
 ap_block_state5_on_subcall_done = ((icmp_ln9_reg_182 == 1'd1) & (grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_ap_done == 1'b0));
end
assign ap_return = 32'd0;
assign empty_fu_148_p1 = idx_fu_52[6:0];
assign grp_entry_point_Pipeline_1_fu_80_ap_start = grp_entry_point_Pipeline_1_fu_80_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_86_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_ap_start_reg;
assign icmp_ln16_1_fu_153_p2 = ((i_1_fu_56 != trunc_ln16_reg_200) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_133_p2 = ((idx_fu_52 == add_ln16_reg_207) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_104_p2 = (($signed(size) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign select_ln16_fu_164_p3 = ((icmp_ln16_1_fu_153_p2[0:0] == 1'b1) ? trunc_ln16_reg_200 : add_ln16_1_fu_158_p2);
assign temptemp1 = size;
assign temptemp2 = grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_temptemp2;
assign temptemp2_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_24_4_fu_94_temptemp2_ap_vld;
assign trunc_ln16_fu_110_p1 = size[30:0];
endmodule
module entry_point_count_RAM_AUTO_1R1W (
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
module entry_point_entry_point_Pipeline_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 count_address0,
 count_ce0,
 count_we0,
 count_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [6:0] count_address0;
output count_ce0;
output count_we0;
output [31:0] count_d0;
reg ap_idle;
reg count_ce0;
reg count_we0;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] exitcond227_fu_50_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] p_cast_fu_62_p1;
reg [6:0] empty_fu_24;
wire [6:0] empty_9_fu_56_p2;
wire ap_loop_init;
reg [6:0] ap_sig_allocacmp_p_load;
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
 if ((exitcond227_fu_50_p2 == 1'd0)) begin
 empty_fu_24 <= empty_9_fu_56_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 empty_fu_24 <= 7'd0;
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
 if (((ap_start_int == 1'b1) & (exitcond227_fu_50_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_sig_allocacmp_p_load = 7'd0;
 end else begin
 ap_sig_allocacmp_p_load = empty_fu_24;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 count_ce0 = 1'b1;
 end else begin
 count_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (exitcond227_fu_50_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 count_we0 = 1'b1;
 end else begin
 count_we0 = 1'b0;
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
assign count_address0 = p_cast_fu_62_p1;
assign count_d0 = 32'd0;
assign empty_9_fu_56_p2 = (ap_sig_allocacmp_p_load + 7'd1);
assign exitcond227_fu_50_p2 = ((ap_sig_allocacmp_p_load == 7'd100) ? 1'b1 : 1'b0);
assign p_cast_fu_62_p1 = ap_sig_allocacmp_p_load;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_16_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 i_1,
 count_address0,
 count_ce0,
 count_we0,
 count_d0,
 count_q0,
 count_address1,
 count_ce1,
 count_we1,
 count_d1,
 count_q1,
 zext_ln16,
 select_ln16
);
parameter ap_ST_fsm_state1 = 2'd1;
parameter ap_ST_fsm_state2 = 2'd2;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] i_1;
output [6:0] count_address0;
output count_ce0;
output count_we0;
output [31:0] count_d0;
input [31:0] count_q0;
output [6:0] count_address1;
output count_ce1;
output count_we1;
output [31:0] count_d1;
input [31:0] count_q1;
input [6:0] zext_ln16;
input [30:0] select_ln16;
reg ap_idle;
reg[6:0] count_address0;
reg count_ce0;
reg count_we0;
reg[6:0] count_address1;
reg count_ce1;
reg count_we1;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln16_fu_90_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_CS_fsm_state2;
wire ap_block_state2_pp0_stage1_iter0;
reg [6:0] count_addr_reg_133;
reg [6:0] count_addr_1_reg_141;
wire [63:0] zext_ln16_cast_fu_77_p1;
wire [63:0] j_cast_fu_96_p1;
reg [30:0] j_fu_30;
wire [30:0] add_ln16_fu_101_p2;
wire ap_loop_init;
reg [30:0] ap_sig_allocacmp_j_1;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [1:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 if ((icmp_ln16_fu_90_p2 == 1'd0)) begin
 j_fu_30 <= add_ln16_fu_101_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 j_fu_30 <= i_1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln16_fu_90_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 count_addr_1_reg_141 <= j_cast_fu_96_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 count_addr_reg_133 <= zext_ln16_cast_fu_77_p1;
 end
end
always @ (*) begin
 if ((ap_start_int == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
 if (((icmp_ln16_fu_90_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
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
 if ((1'b1 == ap_CS_fsm_state2)) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_j_1 = i_1;
 end else begin
 ap_sig_allocacmp_j_1 = j_fu_30;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 count_address0 = count_addr_1_reg_141;
 end else if (((icmp_ln16_fu_90_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 count_address0 = j_cast_fu_96_p1;
 end else begin
 count_address0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 count_address1 = count_addr_reg_133;
 end else if (((icmp_ln16_fu_90_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 count_address1 = zext_ln16_cast_fu_77_p1;
 end else begin
 count_address1 = 'bx;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln16_fu_90_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1)))) begin
 count_ce0 = 1'b1;
 end else begin
 count_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state2) | ((icmp_ln16_fu_90_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1)))) begin
 count_ce1 = 1'b1;
 end else begin
 count_ce1 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 count_we0 = 1'b1;
 end else begin
 count_we0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 count_we1 = 1'b1;
 end else begin
 count_we1 = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((icmp_ln16_fu_90_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln16_fu_101_p2 = (ap_sig_allocacmp_j_1 + 31'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign count_d0 = (count_q0 + 32'd1);
assign count_d1 = (count_q1 + 32'd1);
assign icmp_ln16_fu_90_p2 = ((ap_sig_allocacmp_j_1 == select_ln16) ? 1'b1 : 1'b0);
assign j_cast_fu_96_p1 = ap_sig_allocacmp_j_1;
assign zext_ln16_cast_fu_77_p1 = zext_ln16;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_24_4 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 trunc_ln,
 count_address0,
 count_ce0,
 count_q0,
 arr_load,
 temptemp2,
 temptemp2_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] trunc_ln;
output [6:0] count_address0;
output count_ce0;
input [31:0] count_q0;
input [31:0] arr_load;
output [31:0] temptemp2;
output temptemp2_ap_vld;
reg ap_idle;
reg count_ce0;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln24_fu_84_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
wire [63:0] i_cast_fu_96_p1;
wire ap_block_pp0_stage0;
reg [30:0] i_fu_40;
wire [30:0] add_ln24_fu_90_p2;
wire ap_loop_init;
reg [30:0] ap_sig_allocacmp_i_1;
wire ap_block_pp0_stage0_01001;
wire [0:0] icmp_ln25_fu_106_p2;
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
 if (((icmp_ln24_fu_84_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 i_fu_40 <= add_ln24_fu_90_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_40 <= 31'd0;
 end
 end
end
always @ (*) begin
 if (((icmp_ln24_fu_84_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 ap_sig_allocacmp_i_1 = i_fu_40;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 count_ce0 = 1'b1;
 end else begin
 count_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln25_fu_106_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
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
assign add_ln24_fu_90_p2 = (ap_sig_allocacmp_i_1 + 31'd1);
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
assign count_address0 = i_cast_fu_96_p1;
assign i_cast_fu_96_p1 = ap_sig_allocacmp_i_1;
assign icmp_ln24_fu_84_p2 = ((ap_sig_allocacmp_i_1 == trunc_ln) ? 1'b1 : 1'b0);
assign icmp_ln25_fu_106_p2 = ((count_q0 == 32'd0) ? 1'b1 : 1'b0);
assign temptemp2 = arr_load;
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
