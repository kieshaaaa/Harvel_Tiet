module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 arr1,
 arr2,
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
input [31:0] arr1;
input [31:0] arr2;
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
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire ap_CS_fsm_state3;
reg [3:0] arr3_address0;
reg arr3_ce0;
reg arr3_we0;
wire [31:0] arr3_q0;
reg arr3_ce1;
reg arr3_we1;
wire grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_ap_ready;
wire [3:0] grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_d0;
wire [3:0] grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_address1;
wire grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_ce1;
wire grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_we1;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_d1;
reg grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_ap_start_reg;
wire ap_CS_fsm_state2;
wire ap_CS_fsm_state4;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_ap_start_reg = 1'b0;
end
entry_point_arr3_RAM_AUTO_1R1W #(
 .DataWidth( 32 ),
 .AddressRange( 10 ),
 .AddressWidth( 4 ))
arr3_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(arr3_address0),
 .ce0(arr3_ce0),
 .we0(arr3_we0),
 .d0(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_d0),
 .q0(arr3_q0),
 .address1(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_address1),
 .ce1(arr3_ce1),
 .we1(arr3_we1),
 .d1(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_d1)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_20_3 grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_ap_ready),
 .arr3_address0(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_address0),
 .arr3_ce0(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_ce0),
 .arr3_we0(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_we0),
 .arr3_d0(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_d0),
 .arr3_address1(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_address1),
 .arr3_ce1(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_ce1),
 .arr3_we1(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_we1),
 .arr3_d1(grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_d1),
 .arr1_load(arr1),
 .arr2_load(arr2)
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
 grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_ap_start_reg <= 1'b0;
 end
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_ap_done == 1'b0)) begin
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
 arr3_address0 = 64'd9;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 arr3_address0 = grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_address0;
 end else begin
 arr3_address0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 arr3_ce0 = 1'b1;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 arr3_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_ce0;
 end else begin
 arr3_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 arr3_ce1 = grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_ce1;
 end else begin
 arr3_ce1 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 arr3_we0 = grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_we0;
 end else begin
 arr3_we0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 arr3_we1 = grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_arr3_we1;
 end else begin
 arr3_we1 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_20_3_fu_105_ap_start_reg;
assign temptemp1 = 32'd5;
assign temptemp2 = 32'd5;
assign temptemp3 = 32'd9;
assign temptemp4 = arr3_q0;
endmodule
module entry_point_arr3_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 address1, ce1,
 d1, we1, 
 reset, clk);
parameter DataWidth = 32;
parameter AddressWidth = 4;
parameter AddressRange = 10;
input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input we0; 
output reg[DataWidth-1:0] q0; 
input[AddressWidth-1:0] address1;
input ce1;
input[DataWidth-1:0] d1;
input we1; 
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
 end
end 
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_20_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 arr3_address0,
 arr3_ce0,
 arr3_we0,
 arr3_d0,
 arr3_address1,
 arr3_ce1,
 arr3_we1,
 arr3_d1,
 arr1_load,
 arr2_load
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [3:0] arr3_address0;
output arr3_ce0;
output arr3_we0;
output [31:0] arr3_d0;
output [3:0] arr3_address1;
output arr3_ce1;
output arr3_we1;
output [31:0] arr3_d1;
input [31:0] arr1_load;
input [31:0] arr2_load;
reg ap_idle;
reg arr3_ce0;
reg arr3_we0;
reg arr3_ce1;
reg arr3_we1;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln20_fu_87_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] i_cast1_fu_99_p1;
wire [63:0] zext_ln22_fu_114_p1;
reg [2:0] i_fu_36;
wire [2:0] add_ln20_fu_93_p2;
wire ap_loop_init;
reg [2:0] ap_sig_allocacmp_i_1;
wire [3:0] i_cast_fu_104_p1;
wire [3:0] add_ln22_fu_108_p2;
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
 if ((icmp_ln20_fu_87_p2 == 1'd0)) begin
 i_fu_36 <= add_ln20_fu_93_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_36 <= 3'd0;
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
 if (((ap_start_int == 1'b1) & (icmp_ln20_fu_87_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_sig_allocacmp_i_1 = 3'd0;
 end else begin
 ap_sig_allocacmp_i_1 = i_fu_36;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 arr3_ce0 = 1'b1;
 end else begin
 arr3_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 arr3_ce1 = 1'b1;
 end else begin
 arr3_ce1 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln20_fu_87_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 arr3_we0 = 1'b1;
 end else begin
 arr3_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln20_fu_87_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 arr3_we1 = 1'b1;
 end else begin
 arr3_we1 = 1'b0;
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
assign add_ln20_fu_93_p2 = (ap_sig_allocacmp_i_1 + 3'd1);
assign add_ln22_fu_108_p2 = (i_cast_fu_104_p1 + 4'd5);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign arr3_address0 = zext_ln22_fu_114_p1;
assign arr3_address1 = i_cast1_fu_99_p1;
assign arr3_d0 = arr2_load;
assign arr3_d1 = arr1_load;
assign i_cast1_fu_99_p1 = ap_sig_allocacmp_i_1;
assign i_cast_fu_104_p1 = ap_sig_allocacmp_i_1;
assign icmp_ln20_fu_87_p2 = ((ap_sig_allocacmp_i_1 == 3'd5) ? 1'b1 : 1'b0);
assign zext_ln22_fu_114_p1 = add_ln22_fu_108_p2;
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
