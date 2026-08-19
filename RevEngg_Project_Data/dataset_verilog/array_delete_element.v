module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n_i,
 n_o,
 n_o_ap_vld,
 pos_r,
 temptemp1,
 temptemp1_ap_vld,
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
input [31:0] n_i;
output [31:0] n_o;
output n_o_ap_vld;
input [31:0] pos_r;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg n_o_ap_vld;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [6:0] trunc_ln12_fu_85_p1;
reg [6:0] trunc_ln12_reg_120;
wire [31:0] add_ln12_fu_89_p2;
reg [31:0] add_ln12_reg_125;
wire [31:0] add_ln9_fu_97_p2;
reg [31:0] add_ln9_reg_130;
wire [0:0] icmp_ln14_fu_104_p2;
reg [0:0] icmp_ln14_reg_135;
wire ap_CS_fsm_state3;
reg [6:0] arr_address0;
reg arr_ce0;
reg arr_we0;
wire [31:0] arr_q0;
reg arr_ce1;
wire [31:0] arr_q1;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_arr_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_arr_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_arr_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_arr_d0;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_arr_address1;
wire grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_arr_ce1;
reg grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_ap_start_reg;
wire ap_CS_fsm_state2;
wire [63:0] zext_ln16_fu_115_p1;
wire ap_CS_fsm_state4;
wire [6:0] add_ln14_fu_110_p2;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_ap_start_reg = 1'b0;
end
entry_point_arr_RAM_AUTO_1R1W #(
 .DataWidth( 32 ),
 .AddressRange( 100 ),
 .AddressWidth( 7 ))
arr_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(arr_address0),
 .ce0(arr_ce0),
 .we0(arr_we0),
 .d0(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_arr_d0),
 .q0(arr_q0),
 .address1(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_arr_address1),
 .ce1(arr_ce1),
 .q1(arr_q1)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_9_1 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_ap_ready),
 .sext_ln9(add_ln9_reg_130),
 .add_ln12(add_ln12_reg_125),
 .arr_address0(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_arr_address0),
 .arr_ce0(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_arr_ce0),
 .arr_we0(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_arr_we0),
 .arr_d0(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_arr_d0),
 .arr_address1(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_arr_address1),
 .arr_ce1(grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_arr_ce1),
 .arr_q1(arr_q1)
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
 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 add_ln12_reg_125 <= add_ln12_fu_89_p2;
 add_ln9_reg_130 <= add_ln9_fu_97_p2;
 icmp_ln14_reg_135 <= icmp_ln14_fu_104_p2;
 trunc_ln12_reg_120 <= trunc_ln12_fu_85_p1;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
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
 if ((1'b1 == ap_CS_fsm_state4)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 arr_address0 = zext_ln16_fu_115_p1;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 arr_address0 = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_arr_address0;
 end else begin
 arr_address0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 arr_ce0 = 1'b1;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 arr_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_arr_ce0;
 end else begin
 arr_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 arr_ce1 = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_arr_ce1;
 end else begin
 arr_ce1 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 arr_we0 = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_arr_we0;
 end else begin
 arr_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 n_o_ap_vld = 1'b1;
 end else begin
 n_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln14_reg_135 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_ap_done == 1'b1) & (icmp_ln14_reg_135 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else if (((grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_ap_done == 1'b1) & (icmp_ln14_reg_135 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln12_fu_89_p2 = ($signed(n_i) + $signed(32'd4294967295));
assign add_ln14_fu_110_p2 = ($signed(trunc_ln12_reg_120) + $signed(7'd126));
assign add_ln9_fu_97_p2 = ($signed(pos_r) + $signed(32'd4294967295));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_9_1_fu_77_ap_start_reg;
assign icmp_ln14_fu_104_p2 = (($signed(add_ln12_fu_89_p2) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign n_o = add_ln12_fu_89_p2;
assign temptemp1 = arr_q0;
assign trunc_ln12_fu_85_p1 = n_i[6:0];
assign zext_ln16_fu_115_p1 = add_ln14_fu_110_p2;
endmodule
module entry_point_arr_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 address1, ce1,
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
 q1 <= ram[address1];
 end
end 
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_9_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 sext_ln9,
 add_ln12,
 arr_address0,
 arr_ce0,
 arr_we0,
 arr_d0,
 arr_address1,
 arr_ce1,
 arr_q1
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] sext_ln9;
input [31:0] add_ln12;
output [6:0] arr_address0;
output arr_ce0;
output arr_we0;
output [31:0] arr_d0;
output [6:0] arr_address1;
output arr_ce1;
input [31:0] arr_q1;
reg ap_idle;
reg arr_ce0;
reg arr_we0;
reg arr_ce1;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_enable_reg_pp0_iter2;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_state3_pp0_stage0_iter2;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln9_fu_103_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg [63:0] i_1_reg_176;
wire [0:0] addr_cmp_fu_118_p2;
reg [0:0] addr_cmp_reg_189;
wire [63:0] add_ln10_fu_108_p2;
wire ap_block_pp0_stage0;
reg [63:0] reuse_addr_reg_fu_28;
wire ap_loop_init;
reg [31:0] reuse_reg_fu_32;
wire [31:0] reuse_select_fu_137_p3;
reg [63:0] i_fu_36;
wire signed [63:0] sext_ln9_cast_fu_77_p1;
wire [31:0] trunc_ln9_fu_99_p1;
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
#0 ap_enable_reg_pp0_iter2 = 1'b0;
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
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter2 <= 1'b0;
 end else begin
 if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
 ap_enable_reg_pp0_iter2 <= 1'b0;
 end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
 ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_fu_36 <= sext_ln9_cast_fu_77_p1;
 end else if (((icmp_ln9_fu_103_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_fu_36 <= add_ln10_fu_108_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 reuse_addr_reg_fu_28 <= 64'd18446744073709551615;
 end else if (((icmp_ln9_fu_103_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 reuse_addr_reg_fu_28 <= i_fu_36;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 reuse_reg_fu_32 <= 32'd0;
 end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
 reuse_reg_fu_32 <= reuse_select_fu_137_p3;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln9_fu_103_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 addr_cmp_reg_189 <= addr_cmp_fu_118_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 i_1_reg_176 <= i_fu_36;
 end
end
always @ (*) begin
 if (((icmp_ln9_fu_103_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
 arr_ce0 = 1'b1;
 end else begin
 arr_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 arr_ce1 = 1'b1;
 end else begin
 arr_ce1 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
 arr_we0 = 1'b1;
 end else begin
 arr_we0 = 1'b0;
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
assign add_ln10_fu_108_p2 = (i_fu_36 + 64'd1);
assign addr_cmp_fu_118_p2 = ((reuse_addr_reg_fu_28 == add_ln10_fu_108_p2) ? 1'b1 : 1'b0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign arr_address0 = i_1_reg_176;
assign arr_address1 = add_ln10_fu_108_p2;
assign arr_d0 = ((addr_cmp_reg_189[0:0] == 1'b1) ? reuse_reg_fu_32 : arr_q1);
assign icmp_ln9_fu_103_p2 = (($signed(trunc_ln9_fu_99_p1) < $signed(add_ln12)) ? 1'b1 : 1'b0);
assign reuse_select_fu_137_p3 = ((addr_cmp_reg_189[0:0] == 1'b1) ? reuse_reg_fu_32 : arr_q1);
assign sext_ln9_cast_fu_77_p1 = $signed(sext_ln9);
assign trunc_ln9_fu_99_p1 = i_fu_36[31:0];
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
