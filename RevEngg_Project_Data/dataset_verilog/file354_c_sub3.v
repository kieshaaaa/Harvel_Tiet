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
parameter ap_ST_fsm_state1 = 6'd1;
parameter ap_ST_fsm_state2 = 6'd2;
parameter ap_ST_fsm_state3 = 6'd4;
parameter ap_ST_fsm_state4 = 6'd8;
parameter ap_ST_fsm_state5 = 6'd16;
parameter ap_ST_fsm_state6 = 6'd32;
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
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [5:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [30:0] trunc_ln9_fu_128_p1;
reg [30:0] trunc_ln9_reg_250;
wire [0:0] icmp_ln9_fu_133_p2;
reg [0:0] icmp_ln9_reg_257;
wire ap_CS_fsm_state2;
wire [6:0] add_ln13_fu_166_p2;
reg [6:0] add_ln13_reg_290;
wire ap_CS_fsm_state3;
wire [0:0] icmp_ln13_1_fu_161_p2;
reg [7:0] phi_ln13_1_load_1_reg_300;
wire ap_CS_fsm_state4;
wire [0:0] checked_q0;
reg [0:0] checked_load_reg_305;
reg [6:0] checked_address0;
reg checked_ce0;
reg checked_we0;
reg [0:0] checked_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_checked_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_checked_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_checked_we0;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_checked_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_checked_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_checked_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_checked_we0;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_checked_d0;
reg grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_ap_start_reg;
reg grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_ap_start_reg;
wire ap_CS_fsm_state5;
wire ap_CS_fsm_state6;
wire [63:0] zext_ln13_2_fu_172_p1;
reg [6:0] i_1_fu_58;
reg ap_block_state6_on_subcall_done;
reg [7:0] phi_ln13_1_fu_62;
wire [7:0] add_ln13_1_fu_218_p2;
reg [7:0] phi_ln13_fu_66;
wire [7:0] add_ln13_2_fu_224_p2;
wire [30:0] zext_ln13_fu_157_p1;
wire [31:0] zext_ln13_3_fu_181_p1;
wire [0:0] icmp_ln13_fu_185_p2;
wire [30:0] zext_ln13_1_fu_177_p1;
wire [30:0] select_ln13_fu_190_p3;
wire [7:0] add_ln5_fu_201_p2;
wire signed [31:0] sext_ln5_fu_207_p1;
wire [31:0] zext_ln5_fu_197_p1;
reg [5:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
reg ap_ST_fsm_state6_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_ap_start_reg = 1'b0;
end
entry_point_checked_RAM_AUTO_1R1W #(
 .DataWidth( 1 ),
 .AddressRange( 100 ),
 .AddressWidth( 7 ))
checked_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(checked_address0),
 .ce0(checked_ce0),
 .we0(checked_we0),
 .d0(checked_d0),
 .q0(checked_q0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_9_1 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_ap_ready),
 .trunc_ln9(trunc_ln9_reg_250),
 .checked_address0(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_checked_address0),
 .checked_ce0(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_checked_ce0),
 .checked_we0(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_checked_we0),
 .checked_d0(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_checked_d0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_16_3 grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_ap_ready),
 .zext_ln13_1(phi_ln13_1_load_1_reg_300),
 .size_load(size),
 .checked_address0(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_checked_address0),
 .checked_ce0(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_checked_ce0),
 .checked_we0(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_checked_we0),
 .checked_d0(grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_checked_d0)
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
 grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln9_fu_133_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln9_fu_133_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 i_1_fu_58 <= 7'd0;
 end else if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
 i_1_fu_58 <= add_ln13_reg_290;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln9_fu_133_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 phi_ln13_1_fu_62 <= 8'd1;
 end else if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
 phi_ln13_1_fu_62 <= add_ln13_1_fu_218_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln9_fu_133_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 phi_ln13_fu_66 <= 8'd255;
 end else if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
 phi_ln13_fu_66 <= add_ln13_2_fu_224_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln9_reg_257 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 add_ln13_reg_290 <= add_ln13_fu_166_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 checked_load_reg_305 <= checked_q0;
 phi_ln13_1_load_1_reg_300 <= phi_ln13_1_fu_62;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln9_reg_257 <= icmp_ln9_fu_133_p2;
 trunc_ln9_reg_250 <= trunc_ln9_fu_128_p1;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_block_state6_on_subcall_done)) begin
 ap_ST_fsm_state6_blk = 1'b1;
 end else begin
 ap_ST_fsm_state6_blk = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state3) & ((icmp_ln13_1_fu_161_p2 == 1'd1) | (icmp_ln9_reg_257 == 1'd0)))) begin
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
 if (((1'b1 == ap_CS_fsm_state3) & ((icmp_ln13_1_fu_161_p2 == 1'd1) | (icmp_ln9_reg_257 == 1'd0)))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 checked_address0 = zext_ln13_2_fu_172_p1;
 end else if (((checked_load_reg_305 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
 checked_address0 = grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_checked_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 checked_address0 = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_checked_address0;
 end else begin
 checked_address0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 checked_ce0 = 1'b1;
 end else if (((checked_load_reg_305 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
 checked_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_checked_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 checked_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_checked_ce0;
 end else begin
 checked_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((checked_load_reg_305 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
 checked_d0 = grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_checked_d0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 checked_d0 = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_checked_d0;
 end else begin
 checked_d0 = 'bx;
 end
end
always @ (*) begin
 if (((checked_load_reg_305 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
 checked_we0 = grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_checked_we0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 checked_we0 = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_checked_we0;
 end else begin
 checked_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((checked_q0 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((checked_q0 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((icmp_ln9_fu_133_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else if (((icmp_ln9_fu_133_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((1'b1 == ap_CS_fsm_state3) & ((icmp_ln13_1_fu_161_p2 == 1'd1) | (icmp_ln9_reg_257 == 1'd0)))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state4 : begin
 if (((checked_q0 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 ap_ST_fsm_state6 : begin
 if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln13_1_fu_218_p2 = (phi_ln13_1_fu_62 + 8'd1);
assign add_ln13_2_fu_224_p2 = ($signed(phi_ln13_fu_66) + $signed(8'd255));
assign add_ln13_fu_166_p2 = (i_1_fu_58 + 7'd1);
assign add_ln5_fu_201_p2 = (phi_ln13_fu_66 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
always @ (*) begin
 ap_block_state6_on_subcall_done = ((grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_ap_done == 1'b0) & (checked_load_reg_305 == 1'd0));
end
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_16_3_fu_115_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_108_ap_start_reg;
assign icmp_ln13_1_fu_161_p2 = ((zext_ln13_fu_157_p1 == trunc_ln9_reg_250) ? 1'b1 : 1'b0);
assign icmp_ln13_fu_185_p2 = (($signed(zext_ln13_3_fu_181_p1) > $signed(size)) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_133_p2 = (($signed(size) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign select_ln13_fu_190_p3 = ((icmp_ln13_fu_185_p2[0:0] == 1'b1) ? zext_ln13_1_fu_177_p1 : trunc_ln9_reg_250);
assign sext_ln5_fu_207_p1 = $signed(add_ln5_fu_201_p2);
assign temptemp1 = arr;
assign temptemp2 = ($signed(sext_ln5_fu_207_p1) + $signed(zext_ln5_fu_197_p1));
assign trunc_ln9_fu_128_p1 = size[30:0];
assign zext_ln13_1_fu_177_p1 = phi_ln13_1_fu_62;
assign zext_ln13_2_fu_172_p1 = i_1_fu_58;
assign zext_ln13_3_fu_181_p1 = phi_ln13_1_fu_62;
assign zext_ln13_fu_157_p1 = i_1_fu_58;
assign zext_ln5_fu_197_p1 = select_ln13_fu_190_p3;
endmodule
module entry_point_checked_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 reset, clk);
parameter DataWidth = 1;
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
module entry_point_entry_point_Pipeline_VITIS_LOOP_16_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 zext_ln13_1,
 size_load,
 checked_address0,
 checked_ce0,
 checked_we0,
 checked_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [7:0] zext_ln13_1;
input [31:0] size_load;
output [6:0] checked_address0;
output checked_ce0;
output checked_we0;
output [0:0] checked_d0;
reg ap_idle;
reg checked_ce0;
reg checked_we0;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln16_fu_76_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] j_cast3_fu_82_p1;
reg [30:0] j_fu_30;
wire [30:0] zext_ln13_1_cast_fu_60_p1;
wire [30:0] add_ln16_fu_87_p2;
wire ap_loop_init;
reg [30:0] ap_sig_allocacmp_j_1;
wire [31:0] j_cast_fu_72_p1;
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
 if ((icmp_ln16_fu_76_p2 == 1'd1)) begin
 j_fu_30 <= add_ln16_fu_87_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 j_fu_30 <= zext_ln13_1_cast_fu_60_p1;
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
 if (((ap_start_int == 1'b1) & (icmp_ln16_fu_76_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_sig_allocacmp_j_1 = zext_ln13_1_cast_fu_60_p1;
 end else begin
 ap_sig_allocacmp_j_1 = j_fu_30;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 checked_ce0 = 1'b1;
 end else begin
 checked_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln16_fu_76_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 checked_we0 = 1'b1;
 end else begin
 checked_we0 = 1'b0;
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
assign add_ln16_fu_87_p2 = (ap_sig_allocacmp_j_1 + 31'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign checked_address0 = j_cast3_fu_82_p1;
assign checked_d0 = 1'd1;
assign icmp_ln16_fu_76_p2 = (($signed(j_cast_fu_72_p1) < $signed(size_load)) ? 1'b1 : 1'b0);
assign j_cast3_fu_82_p1 = ap_sig_allocacmp_j_1;
assign j_cast_fu_72_p1 = ap_sig_allocacmp_j_1;
assign zext_ln13_1_cast_fu_60_p1 = zext_ln13_1;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_9_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 trunc_ln9,
 checked_address0,
 checked_ce0,
 checked_we0,
 checked_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] trunc_ln9;
output [6:0] checked_address0;
output checked_ce0;
output checked_we0;
output [0:0] checked_d0;
reg ap_idle;
reg checked_ce0;
reg checked_we0;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln9_fu_70_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] i_cast2_fu_82_p1;
reg [6:0] i_fu_34;
wire [6:0] add_ln9_fu_76_p2;
wire ap_loop_init;
reg [6:0] ap_sig_allocacmp_i_1;
wire [30:0] i_cast_fu_66_p1;
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
 if ((icmp_ln9_fu_70_p2 == 1'd0)) begin
 i_fu_34 <= add_ln9_fu_76_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_34 <= 7'd0;
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
 if (((ap_start_int == 1'b1) & (icmp_ln9_fu_70_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_sig_allocacmp_i_1 = 7'd0;
 end else begin
 ap_sig_allocacmp_i_1 = i_fu_34;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 checked_ce0 = 1'b1;
 end else begin
 checked_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln9_fu_70_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 checked_we0 = 1'b1;
 end else begin
 checked_we0 = 1'b0;
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
assign add_ln9_fu_76_p2 = (ap_sig_allocacmp_i_1 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign checked_address0 = i_cast2_fu_82_p1;
assign checked_d0 = 1'd0;
assign i_cast2_fu_82_p1 = ap_sig_allocacmp_i_1;
assign i_cast_fu_66_p1 = ap_sig_allocacmp_i_1;
assign icmp_ln9_fu_70_p2 = ((i_cast_fu_66_p1 == trunc_ln9) ? 1'b1 : 1'b0);
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
