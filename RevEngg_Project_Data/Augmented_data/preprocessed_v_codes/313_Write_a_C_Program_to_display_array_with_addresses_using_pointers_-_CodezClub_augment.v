module entry_point_sparsemux_7_2_6_1_1 (din0,din1,din2,def,sel,dout);
parameter din0_WIDTH = 1;
parameter din1_WIDTH = 1;
parameter din2_WIDTH = 1;
parameter def_WIDTH = 1;
parameter sel_WIDTH = 1;
parameter dout_WIDTH = 1;
parameter [sel_WIDTH-1:0] CASE0 = 1;
parameter [sel_WIDTH-1:0] CASE1 = 1;
parameter [sel_WIDTH-1:0] CASE2 = 1;
parameter ID = 1;
parameter NUM_STAGE = 1;
input [din0_WIDTH-1:0] din0;
input [din1_WIDTH-1:0] din1;
input [din2_WIDTH-1:0] din2;
input [def_WIDTH-1:0] def;
input [sel_WIDTH-1:0] sel;
output [dout_WIDTH-1:0] dout;
reg [dout_WIDTH-1:0] dout_tmp;
always @ (*) begin
(* parallel_case *) case (sel)
 CASE0 : dout_tmp = din0;
 CASE1 : dout_tmp = din1;
 CASE2 : dout_tmp = din2;
 default : dout_tmp = def;
endcase
end
assign dout = dout_tmp;
endmodule
module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 temptemp4,
 temptemp4_ap_vld,
 temptemp5,
 temptemp5_ap_vld,
 temptemp6,
 temptemp6_ap_vld,
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
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] temptemp4;
output temptemp4_ap_vld;
output [31:0] temptemp5;
output temptemp5_ap_vld;
output [31:0] temptemp6;
output temptemp6_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
reg temptemp5_ap_vld;
reg temptemp6_ap_vld;
(* fsm_encoding = "none" *) reg [4:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire ap_CS_fsm_state3;
wire ap_CS_fsm_state4;
reg [1:0] arr_address0;
reg arr_ce0;
reg arr_we0;
wire [5:0] arr_q0;
wire [1:0] arr_address1;
wire [5:0] arr_q1;
wire grp_entry_point_Pipeline_1_fu_124_ap_start;
wire grp_entry_point_Pipeline_1_fu_124_ap_done;
wire grp_entry_point_Pipeline_1_fu_124_ap_idle;
wire grp_entry_point_Pipeline_1_fu_124_ap_ready;
wire [1:0] grp_entry_point_Pipeline_1_fu_124_arr_address0;
wire grp_entry_point_Pipeline_1_fu_124_arr_ce0;
wire grp_entry_point_Pipeline_1_fu_124_arr_we0;
wire [5:0] grp_entry_point_Pipeline_1_fu_124_arr_d0;
reg grp_entry_point_Pipeline_1_fu_124_ap_start_reg;
wire ap_CS_fsm_state2;
wire ap_CS_fsm_state5;
reg arr_ce0_local;
reg [1:0] arr_address0_local;
reg arr_ce1_local;
reg [4:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_entry_point_Pipeline_1_fu_124_ap_start_reg = 1'b0;
end
entry_point_arr_RAM_AUTO_1R1W #(
 .DataWidth( 6 ),
 .AddressRange( 3 ),
 .AddressWidth( 2 ))
arr_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(arr_address0),
 .ce0(arr_ce0),
 .we0(arr_we0),
 .d0(grp_entry_point_Pipeline_1_fu_124_arr_d0),
 .q0(arr_q0),
 .address1(arr_address1),
 .ce1(arr_ce1_local),
 .q1(arr_q1)
);
entry_point_entry_point_Pipeline_1 grp_entry_point_Pipeline_1_fu_124(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_1_fu_124_ap_start),
 .ap_done(grp_entry_point_Pipeline_1_fu_124_ap_done),
 .ap_idle(grp_entry_point_Pipeline_1_fu_124_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_1_fu_124_ap_ready),
 .arr_address0(grp_entry_point_Pipeline_1_fu_124_arr_address0),
 .arr_ce0(grp_entry_point_Pipeline_1_fu_124_arr_ce0),
 .arr_we0(grp_entry_point_Pipeline_1_fu_124_arr_we0),
 .arr_d0(grp_entry_point_Pipeline_1_fu_124_arr_d0)
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
 grp_entry_point_Pipeline_1_fu_124_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_1_fu_124_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_1_fu_124_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_1_fu_124_ap_start_reg <= 1'b0;
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
 if ((grp_entry_point_Pipeline_1_fu_124_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
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
 if ((1'b1 == ap_CS_fsm_state5)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 arr_address0 = grp_entry_point_Pipeline_1_fu_124_arr_address0;
 end else begin
 arr_address0 = arr_address0_local;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 arr_address0_local = 64'd2;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 arr_address0_local = 64'd0;
 end else begin
 arr_address0_local = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 arr_ce0 = grp_entry_point_Pipeline_1_fu_124_arr_ce0;
 end else begin
 arr_ce0 = arr_ce0_local;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
 arr_ce0_local = 1'b1;
 end else begin
 arr_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 arr_ce1_local = 1'b1;
 end else begin
 arr_ce1_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 arr_we0 = grp_entry_point_Pipeline_1_fu_124_arr_we0;
 end else begin
 arr_we0 = 1'b0;
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
 if ((1'b1 == ap_CS_fsm_state5)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 temptemp5_ap_vld = 1'b1;
 end else begin
 temptemp5_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 temptemp6_ap_vld = 1'b1;
 end else begin
 temptemp6_ap_vld = 1'b0;
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
 if (((grp_entry_point_Pipeline_1_fu_124_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end
 ap_ST_fsm_state5 : begin
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
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_return = 32'd0;
assign arr_address1 = 64'd1;
assign grp_entry_point_Pipeline_1_fu_124_ap_start = grp_entry_point_Pipeline_1_fu_124_ap_start_reg;
assign temptemp1 = arr_q0;
assign temptemp2 = 32'd0;
assign temptemp3 = arr_q1;
assign temptemp4 = 32'd1;
assign temptemp5 = arr_q0;
assign temptemp6 = 32'd2;
endmodule
module entry_point_arr_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 address1, ce1,
 q1, 
 reset, clk);
parameter DataWidth = 6;
parameter AddressWidth = 2;
parameter AddressRange = 3;
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
module entry_point_entry_point_Pipeline_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 arr_address0,
 arr_ce0,
 arr_we0,
 arr_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [1:0] arr_address0;
output arr_ce0;
output arr_we0;
output [5:0] arr_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] exitcond1_fu_91_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] loop_index_cast_fu_59_p1;
reg [1:0] loop_index46_fu_34;
wire [1:0] empty_fu_85_p2;
wire ap_loop_init;
reg [1:0] ap_sig_allocacmp_loop_index46_load;
reg arr_we0_local;
wire [5:0] tmp_3_cast_cast_fu_64_p9;
reg arr_ce0_local;
wire [5:0] tmp_3_cast_cast_fu_64_p7;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
wire [1:0] tmp_3_cast_cast_fu_64_p1;
wire [1:0] tmp_3_cast_cast_fu_64_p3;
wire signed [1:0] tmp_3_cast_cast_fu_64_p5;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 loop_index46_fu_34 = 2'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) entry_point_sparsemux_7_2_6_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .CASE0( 2'h0 ),
 .din0_WIDTH( 6 ),
 .CASE1( 2'h1 ),
 .din1_WIDTH( 6 ),
 .CASE2( 2'h2 ),
 .din2_WIDTH( 6 ),
 .def_WIDTH( 6 ),
 .sel_WIDTH( 2 ),
 .dout_WIDTH( 6 ))
sparsemux_7_2_6_1_1_U1(
 .din0(6'd11),
 .din1(6'd22),
 .din2(6'd33),
 .def(tmp_3_cast_cast_fu_64_p7),
 .sel(ap_sig_allocacmp_loop_index46_load),
 .dout(tmp_3_cast_cast_fu_64_p9)
);
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
 loop_index46_fu_34 <= empty_fu_85_p2;
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
 if (((exitcond1_fu_91_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_sig_allocacmp_loop_index46_load = 2'd0;
 end else begin
 ap_sig_allocacmp_loop_index46_load = loop_index46_fu_34;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 arr_ce0_local = 1'b1;
 end else begin
 arr_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
 arr_we0_local = 1'b1;
 end else begin
 arr_we0_local = 1'b0;
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
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign arr_address0 = loop_index_cast_fu_59_p1;
assign arr_ce0 = arr_ce0_local;
assign arr_d0 = tmp_3_cast_cast_fu_64_p9;
assign arr_we0 = arr_we0_local;
assign empty_fu_85_p2 = (ap_sig_allocacmp_loop_index46_load + 2'd1);
assign exitcond1_fu_91_p2 = ((ap_sig_allocacmp_loop_index46_load == 2'd2) ? 1'b1 : 1'b0);
assign loop_index_cast_fu_59_p1 = ap_sig_allocacmp_loop_index46_load;
assign tmp_3_cast_cast_fu_64_p7 = 'bx;
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
