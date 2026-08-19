module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n,
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
input [31:0] n;
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
wire [31:0] add_ln15_fu_90_p2;
reg [31:0] add_ln15_reg_151;
wire [63:0] zext_ln15_fu_96_p1;
reg [63:0] zext_ln15_reg_157;
wire [31:0] empty_fu_123_p2;
reg [31:0] empty_reg_165;
wire ap_CS_fsm_state2;
wire [0:0] icmp_ln15_fu_112_p2;
wire [0:0] icmp_ln28_fu_134_p2;
reg [0:0] icmp_ln28_reg_170;
reg [6:0] array_address0;
reg array_ce0;
reg array_we0;
wire [31:0] array_q0;
reg array_ce1;
reg array_we1;
wire [31:0] array_q1;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_d0;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_address1;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_ce1;
wire grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_we1;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_d1;
reg grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_ap_start_reg;
wire ap_CS_fsm_state3;
reg [30:0] i_fu_42;
wire [30:0] add_ln15_1_fu_117_p2;
wire ap_CS_fsm_state4;
wire [31:0] zext_ln15_1_fu_108_p1;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_ap_start_reg = 1'b0;
end
entry_point_array_RAM_AUTO_1R1W #(
 .DataWidth( 32 ),
 .AddressRange( 100 ),
 .AddressWidth( 7 ))
array_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(array_address0),
 .ce0(array_ce0),
 .we0(array_we0),
 .d0(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_d0),
 .q0(array_q0),
 .address1(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_address1),
 .ce1(array_ce1),
 .we1(array_we1),
 .d1(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_d1),
 .q1(array_q1)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_17_2 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_ap_ready),
 .empty(empty_reg_165),
 .array_r_address0(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_address0),
 .array_r_ce0(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_ce0),
 .array_r_we0(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_we0),
 .array_r_d0(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_d0),
 .array_r_q0(array_q0),
 .array_r_address1(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_address1),
 .array_r_ce1(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_ce1),
 .array_r_we1(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_we1),
 .array_r_d1(grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_d1),
 .array_r_q1(array_q1)
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
 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln15_fu_112_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 i_fu_42 <= 31'd0;
 end else if (((icmp_ln15_fu_112_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 i_fu_42 <= add_ln15_1_fu_117_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 add_ln15_reg_151 <= add_ln15_fu_90_p2;
 zext_ln15_reg_157[31 : 0] <= zext_ln15_fu_96_p1[31 : 0];
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln15_fu_112_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 empty_reg_165 <= empty_fu_123_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln15_fu_112_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 icmp_ln28_reg_170 <= icmp_ln28_fu_134_p2;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_ap_done == 1'b0)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
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
 if (((icmp_ln28_fu_134_p2 == 1'd1) & (icmp_ln15_fu_112_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 array_address0 = zext_ln15_reg_157;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 array_address0 = grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_address0;
 end else begin
 array_address0 = 'bx;
 end
end
always @ (*) begin
 if (((icmp_ln28_fu_134_p2 == 1'd1) & (icmp_ln15_fu_112_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 array_ce0 = 1'b1;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 array_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_ce0;
 end else begin
 array_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 array_ce1 = grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_ce1;
 end else begin
 array_ce1 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 array_we0 = grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_we0;
 end else begin
 array_we0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 array_we1 = grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_array_r_we1;
 end else begin
 array_we1 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln28_reg_170 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
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
 if (((icmp_ln15_fu_112_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state4 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln15_1_fu_117_p2 = (i_fu_42 + 31'd1);
assign add_ln15_fu_90_p2 = ($signed(n) + $signed(32'd4294967295));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_return = 32'd0;
assign empty_fu_123_p2 = (add_ln15_reg_151 - zext_ln15_1_fu_108_p1);
assign grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_17_2_fu_84_ap_start_reg;
assign icmp_ln15_fu_112_p2 = (($signed(zext_ln15_1_fu_108_p1) < $signed(add_ln15_reg_151)) ? 1'b1 : 1'b0);
assign icmp_ln28_fu_134_p2 = (($signed(n) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign temptemp1 = n;
assign temptemp2 = array_q0;
assign zext_ln15_1_fu_108_p1 = i_fu_42;
assign zext_ln15_fu_96_p1 = add_ln15_fu_90_p2;
always @ (posedge ap_clk) begin
 zext_ln15_reg_157[63:32] <= 32'b00000000000000000000000000000000;
end
endmodule
module entry_point_array_RAM_AUTO_1R1W (
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
module entry_point_entry_point_Pipeline_VITIS_LOOP_17_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 empty,
 array_r_address0,
 array_r_ce0,
 array_r_we0,
 array_r_d0,
 array_r_q0,
 array_r_address1,
 array_r_ce1,
 array_r_we1,
 array_r_d1,
 array_r_q1
);
parameter ap_ST_fsm_state1 = 2'd1;
parameter ap_ST_fsm_state2 = 2'd2;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] empty;
output [6:0] array_r_address0;
output array_r_ce0;
output array_r_we0;
output [31:0] array_r_d0;
input [31:0] array_r_q0;
output [6:0] array_r_address1;
output array_r_ce1;
output array_r_we1;
output [31:0] array_r_d1;
input [31:0] array_r_q1;
reg ap_idle;
reg[6:0] array_r_address0;
reg array_r_ce0;
reg array_r_we0;
reg[6:0] array_r_address1;
reg array_r_ce1;
reg array_r_we1;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln17_fu_75_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_CS_fsm_state2;
wire ap_block_state2_pp0_stage1_iter0;
wire [30:0] add_ln19_fu_81_p2;
reg [30:0] add_ln19_reg_117;
reg [6:0] array_addr_reg_122;
reg [6:0] array_addr_1_reg_127;
wire [63:0] j_cast2_fu_87_p1;
wire [63:0] zext_ln19_fu_92_p1;
reg [30:0] j_fu_26;
wire ap_loop_init;
reg [30:0] ap_sig_allocacmp_j_1;
wire [0:0] icmp_ln19_fu_97_p2;
wire [31:0] j_cast_fu_71_p1;
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
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 j_fu_26 <= 31'd0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 j_fu_26 <= add_ln19_reg_117;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 add_ln19_reg_117 <= add_ln19_fu_81_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln17_fu_75_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 array_addr_1_reg_127 <= zext_ln19_fu_92_p1;
 array_addr_reg_122 <= j_cast2_fu_87_p1;
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
 if (((icmp_ln17_fu_75_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
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
 ap_sig_allocacmp_j_1 = 31'd0;
 end else begin
 ap_sig_allocacmp_j_1 = j_fu_26;
 end
end
always @ (*) begin
 if (((icmp_ln19_fu_97_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 array_r_address0 = array_addr_1_reg_127;
 end else if (((icmp_ln17_fu_75_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 array_r_address0 = zext_ln19_fu_92_p1;
 end else begin
 array_r_address0 = 'bx;
 end
end
always @ (*) begin
 if (((icmp_ln19_fu_97_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 array_r_address1 = array_addr_reg_122;
 end else if (((icmp_ln17_fu_75_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 array_r_address1 = j_cast2_fu_87_p1;
 end else begin
 array_r_address1 = 'bx;
 end
end
always @ (*) begin
 if ((((icmp_ln19_fu_97_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln17_fu_75_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1)))) begin
 array_r_ce0 = 1'b1;
 end else begin
 array_r_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((((icmp_ln19_fu_97_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((icmp_ln17_fu_75_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1)))) begin
 array_r_ce1 = 1'b1;
 end else begin
 array_r_ce1 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln19_fu_97_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 array_r_we0 = 1'b1;
 end else begin
 array_r_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln19_fu_97_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 array_r_we1 = 1'b1;
 end else begin
 array_r_we1 = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((icmp_ln17_fu_75_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
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
assign add_ln19_fu_81_p2 = (ap_sig_allocacmp_j_1 + 31'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign array_r_d0 = array_r_q1;
assign array_r_d1 = array_r_q0;
assign icmp_ln17_fu_75_p2 = (($signed(j_cast_fu_71_p1) < $signed(empty)) ? 1'b1 : 1'b0);
assign icmp_ln19_fu_97_p2 = (($signed(array_r_q1) > $signed(array_r_q0)) ? 1'b1 : 1'b0);
assign j_cast2_fu_87_p1 = ap_sig_allocacmp_j_1;
assign j_cast_fu_71_p1 = ap_sig_allocacmp_j_1;
assign zext_ln19_fu_92_p1 = add_ln19_fu_81_p2;
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
