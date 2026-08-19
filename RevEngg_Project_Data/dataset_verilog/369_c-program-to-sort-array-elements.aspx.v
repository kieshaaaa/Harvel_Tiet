module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
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
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [2:0] indvars_iv_load_reg_114;
wire ap_CS_fsm_state2;
wire [0:0] icmp_ln23_fu_60_p2;
wire [1:0] trunc_ln22_fu_76_p1;
reg [1:0] trunc_ln22_reg_119;
wire [31:0] arr_q0;
wire [31:0] arr_q1;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_ap_ready;
wire [2:0] grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_d0;
wire [2:0] grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_address1;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_ce1;
wire grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_we1;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_d1;
reg grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_ap_start_reg;
wire ap_CS_fsm_state3;
reg [2:0] indvars_iv_fu_28;
wire [2:0] add_ln23_fu_81_p2;
reg [2:0] i_fu_32;
wire [2:0] add_ln24_fu_66_p2;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_ap_start_reg = 1'b0;
end
entry_point_arr_RAM_AUTO_1R1W #(
 .DataWidth( 32 ),
 .AddressRange( 5 ),
 .AddressWidth( 3 ))
arr_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_address0),
 .ce0(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_ce0),
 .we0(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_we0),
 .d0(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_d0),
 .q0(arr_q0),
 .address1(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_address1),
 .ce1(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_ce1),
 .we1(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_we1),
 .d1(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_d1),
 .q1(arr_q1)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_24_2 grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_ap_ready),
 .zext_ln23(indvars_iv_load_reg_114),
 .arr_address0(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_address0),
 .arr_ce0(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_ce0),
 .arr_we0(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_we0),
 .arr_d0(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_d0),
 .arr_q0(arr_q0),
 .arr_address1(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_address1),
 .arr_ce1(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_ce1),
 .arr_we1(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_we1),
 .arr_d1(grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_arr_d1),
 .arr_q1(arr_q1),
 .zext_ln23_1(trunc_ln22_reg_119)
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
 grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln23_fu_60_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 i_fu_32 <= 3'd0;
 end else if (((icmp_ln23_fu_60_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 i_fu_32 <= add_ln24_fu_66_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 indvars_iv_fu_28 <= 3'd1;
 end else if (((icmp_ln23_fu_60_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 indvars_iv_fu_28 <= add_ln23_fu_81_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln23_fu_60_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 indvars_iv_load_reg_114 <= indvars_iv_fu_28;
 trunc_ln22_reg_119 <= trunc_ln22_fu_76_p1;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_ap_done == 1'b0)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln23_fu_60_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
 if (((icmp_ln23_fu_60_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
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
 if (((icmp_ln23_fu_60_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln23_fu_81_p2 = (indvars_iv_fu_28 + 3'd1);
assign add_ln24_fu_66_p2 = (i_fu_32 + 3'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_24_2_fu_40_ap_start_reg;
assign icmp_ln23_fu_60_p2 = ((i_fu_32 == 3'd4) ? 1'b1 : 1'b0);
assign trunc_ln22_fu_76_p1 = i_fu_32[1:0];
endmodule
module entry_point_arr_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 address1, ce1,
 d1, we1, 
 q1, 
 reset, clk);
parameter DataWidth = 32;
parameter AddressWidth = 3;
parameter AddressRange = 5;
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
module entry_point_entry_point_Pipeline_VITIS_LOOP_24_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 zext_ln23,
 arr_address0,
 arr_ce0,
 arr_we0,
 arr_d0,
 arr_q0,
 arr_address1,
 arr_ce1,
 arr_we1,
 arr_d1,
 arr_q1,
 zext_ln23_1
);
parameter ap_ST_fsm_pp0_stage0 = 2'd1;
parameter ap_ST_fsm_pp0_stage1 = 2'd2;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [2:0] zext_ln23;
output [2:0] arr_address0;
output arr_ce0;
output arr_we0;
output [31:0] arr_d0;
input [31:0] arr_q0;
output [2:0] arr_address1;
output arr_ce1;
output arr_we1;
output [31:0] arr_d1;
input [31:0] arr_q1;
input [1:0] zext_ln23_1;
reg ap_idle;
reg[2:0] arr_address0;
reg arr_ce0;
reg arr_we0;
reg[2:0] arr_address1;
reg arr_ce1;
reg arr_we1;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
reg ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_CS_fsm_pp0_stage1;
wire ap_block_state2_pp0_stage1_iter0;
wire ap_block_pp0_stage1_subdone;
wire [0:0] icmp_ln24_fu_94_p2;
reg ap_condition_exit_pp0_iter0_stage1;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] zext_ln23_1_cast_fu_77_p1;
reg [63:0] zext_ln23_1_cast_reg_123;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state3_pp0_stage0_iter1;
wire ap_block_pp0_stage0_11001;
reg [63:0] j_1_reg_128;
wire ap_block_pp0_stage1_11001;
reg [2:0] arr_addr_reg_133;
reg [2:0] arr_addr_1_reg_141;
reg ap_enable_reg_pp0_iter0_reg;
wire ap_block_pp0_stage0_subdone;
wire ap_block_pp0_stage1;
reg [63:0] j_fu_34;
wire [63:0] add_ln24_fu_106_p2;
wire [63:0] zext_ln23_cast_fu_81_p1;
wire ap_loop_init;
wire [0:0] icmp_ln25_fu_100_p2;
wire ap_block_pp0_stage0;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [1:0] ap_NS_fsm;
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
 if (((1'b1 == ap_condition_exit_pp0_iter0_stage1) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 j_fu_34 <= zext_ln23_cast_fu_81_p1;
 end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
 j_fu_34 <= add_ln24_fu_106_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln24_fu_94_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 arr_addr_1_reg_141 <= j_fu_34;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 arr_addr_reg_133[1 : 0] <= zext_ln23_1_cast_reg_123[1 : 0];
 j_1_reg_128 <= j_fu_34;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 zext_ln23_1_cast_reg_123[1 : 0] <= zext_ln23_1_cast_fu_77_p1[1 : 0];
 end
end
always @ (*) begin
 if (((icmp_ln24_fu_94_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
 if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 arr_address0 = arr_addr_1_reg_141;
 end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 arr_address0 = j_fu_34;
 end else begin
 arr_address0 = 'bx;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 arr_address1 = arr_addr_reg_133;
 end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
 arr_address1 = zext_ln23_1_cast_reg_123;
 end else begin
 arr_address1 = 'bx;
 end
end
always @ (*) begin
 if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
 arr_ce0 = 1'b1;
 end else begin
 arr_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
 arr_ce1 = 1'b1;
 end else begin
 arr_ce1 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln25_fu_100_p2 == 1'd1))) begin
 arr_we0 = 1'b1;
 end else begin
 arr_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln25_fu_100_p2 == 1'd1))) begin
 arr_we1 = 1'b1;
 end else begin
 arr_we1 = 1'b0;
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
assign add_ln24_fu_106_p2 = (j_1_reg_128 + 64'd1);
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
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign arr_d0 = arr_q1;
assign arr_d1 = arr_q0;
assign icmp_ln24_fu_94_p2 = ((j_fu_34 == 64'd5) ? 1'b1 : 1'b0);
assign icmp_ln25_fu_100_p2 = (($signed(arr_q0) < $signed(arr_q1)) ? 1'b1 : 1'b0);
assign zext_ln23_1_cast_fu_77_p1 = zext_ln23_1;
assign zext_ln23_cast_fu_81_p1 = zext_ln23;
always @ (posedge ap_clk) begin
 zext_ln23_1_cast_reg_123[63:2] <= 62'b00000000000000000000000000000000000000000000000000000000000000;
 arr_addr_reg_133[2] <= 1'b0;
end
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
