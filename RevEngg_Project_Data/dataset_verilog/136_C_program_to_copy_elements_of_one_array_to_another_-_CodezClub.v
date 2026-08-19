module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 size,
 first,
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
input [31:0] size;
input [31:0] first;
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
wire [6:0] trunc_ln9_fu_109_p1;
reg [6:0] trunc_ln9_reg_134;
wire [0:0] icmp_ln12_fu_113_p2;
reg [0:0] icmp_ln12_reg_139;
wire [30:0] trunc_ln21_fu_119_p1;
reg [30:0] trunc_ln21_reg_143;
wire ap_CS_fsm_state3;
reg [6:0] second_address0;
reg second_ce0;
reg second_we0;
wire [31:0] second_q0;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_second_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_second_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_second_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_second_d0;
reg grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_ap_start_reg;
wire ap_CS_fsm_state2;
wire [63:0] zext_ln27_fu_129_p1;
wire ap_CS_fsm_state4;
wire [6:0] add_ln24_fu_124_p2;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_ap_start_reg = 1'b0;
end
entry_point_second_RAM_AUTO_1R1W #(
 .DataWidth( 32 ),
 .AddressRange( 100 ),
 .AddressWidth( 7 ))
second_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(second_address0),
 .ce0(second_ce0),
 .we0(second_we0),
 .d0(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_second_d0),
 .q0(second_q0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_19_2 grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_ap_ready),
 .trunc_ln(trunc_ln21_reg_143),
 .second_address0(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_second_address0),
 .second_ce0(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_second_ce0),
 .second_we0(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_second_we0),
 .second_d0(grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_second_d0),
 .first_load(first)
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
 grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (icmp_ln12_fu_113_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln12_reg_139 <= icmp_ln12_fu_113_p2;
 trunc_ln9_reg_134 <= trunc_ln9_fu_109_p1;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln12_fu_113_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 trunc_ln21_reg_143 <= trunc_ln21_fu_119_p1;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_ap_done == 1'b0)) begin
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
 second_address0 = zext_ln27_fu_129_p1;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 second_address0 = grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_second_address0;
 end else begin
 second_address0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 second_ce0 = 1'b1;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 second_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_second_ce0;
 end else begin
 second_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 second_we0 = grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_second_we0;
 end else begin
 second_we0 = 1'b0;
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
 if (((ap_start == 1'b1) & (icmp_ln12_fu_113_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln12_fu_113_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln12_reg_139 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((ap_start == 1'b1) & (icmp_ln12_fu_113_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else if (((ap_start == 1'b1) & (icmp_ln12_fu_113_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
assign add_ln24_fu_124_p2 = ($signed(trunc_ln9_reg_134) + $signed(7'd127));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_19_2_fu_100_ap_start_reg;
assign icmp_ln12_fu_113_p2 = (($signed(size) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign temptemp1 = size;
assign temptemp2 = size;
assign temptemp3 = first;
assign temptemp4 = second_q0;
assign trunc_ln21_fu_119_p1 = size[30:0];
assign trunc_ln9_fu_109_p1 = size[6:0];
assign zext_ln27_fu_129_p1 = add_ln24_fu_124_p2;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_19_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 trunc_ln,
 second_address0,
 second_ce0,
 second_we0,
 second_d0,
 first_load
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [30:0] trunc_ln;
output [6:0] second_address0;
output second_ce0;
output second_we0;
output [31:0] second_d0;
input [31:0] first_load;
reg ap_idle;
reg second_ce0;
reg second_we0;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln19_fu_78_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] i_cast2_fu_90_p1;
reg [6:0] i_fu_36;
wire [6:0] add_ln19_fu_84_p2;
wire ap_loop_init;
reg [6:0] ap_sig_allocacmp_i_1;
wire [30:0] i_cast_fu_74_p1;
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
 if ((icmp_ln19_fu_78_p2 == 1'd0)) begin
 i_fu_36 <= add_ln19_fu_84_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_36 <= 7'd0;
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
 if (((ap_start_int == 1'b1) & (icmp_ln19_fu_78_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_sig_allocacmp_i_1 = i_fu_36;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 second_ce0 = 1'b1;
 end else begin
 second_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln19_fu_78_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 second_we0 = 1'b1;
 end else begin
 second_we0 = 1'b0;
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
assign add_ln19_fu_84_p2 = (ap_sig_allocacmp_i_1 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign i_cast2_fu_90_p1 = ap_sig_allocacmp_i_1;
assign i_cast_fu_74_p1 = ap_sig_allocacmp_i_1;
assign icmp_ln19_fu_78_p2 = ((i_cast_fu_74_p1 == trunc_ln) ? 1'b1 : 1'b0);
assign second_address0 = i_cast2_fu_90_p1;
assign second_d0 = first_load;
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
module entry_point_second_RAM_AUTO_1R1W (
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
