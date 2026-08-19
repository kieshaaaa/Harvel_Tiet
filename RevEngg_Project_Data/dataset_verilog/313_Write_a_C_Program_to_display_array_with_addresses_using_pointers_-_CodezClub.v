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
reg [1:0] a_address0;
reg a_ce0;
reg a_we0;
wire [31:0] a_q0;
wire [1:0] a_address1;
reg a_ce1;
wire [31:0] a_q1;
wire grp_entry_point_Pipeline_1_fu_127_ap_start;
wire grp_entry_point_Pipeline_1_fu_127_ap_done;
wire grp_entry_point_Pipeline_1_fu_127_ap_idle;
wire grp_entry_point_Pipeline_1_fu_127_ap_ready;
wire [1:0] grp_entry_point_Pipeline_1_fu_127_a_address0;
wire grp_entry_point_Pipeline_1_fu_127_a_ce0;
wire grp_entry_point_Pipeline_1_fu_127_a_we0;
wire [31:0] grp_entry_point_Pipeline_1_fu_127_a_d0;
reg grp_entry_point_Pipeline_1_fu_127_ap_start_reg;
wire ap_CS_fsm_state2;
wire ap_CS_fsm_state5;
reg [4:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_entry_point_Pipeline_1_fu_127_ap_start_reg = 1'b0;
end
entry_point_a_RAM_AUTO_1R1W #(
 .DataWidth( 32 ),
 .AddressRange( 3 ),
 .AddressWidth( 2 ))
a_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(a_address0),
 .ce0(a_ce0),
 .we0(a_we0),
 .d0(grp_entry_point_Pipeline_1_fu_127_a_d0),
 .q0(a_q0),
 .address1(a_address1),
 .ce1(a_ce1),
 .q1(a_q1)
);
entry_point_entry_point_Pipeline_1 grp_entry_point_Pipeline_1_fu_127(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_1_fu_127_ap_start),
 .ap_done(grp_entry_point_Pipeline_1_fu_127_ap_done),
 .ap_idle(grp_entry_point_Pipeline_1_fu_127_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_1_fu_127_ap_ready),
 .a_address0(grp_entry_point_Pipeline_1_fu_127_a_address0),
 .a_ce0(grp_entry_point_Pipeline_1_fu_127_a_ce0),
 .a_we0(grp_entry_point_Pipeline_1_fu_127_a_we0),
 .a_d0(grp_entry_point_Pipeline_1_fu_127_a_d0)
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
 grp_entry_point_Pipeline_1_fu_127_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_1_fu_127_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_1_fu_127_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_1_fu_127_ap_start_reg <= 1'b0;
 end
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 a_address0 = 64'd2;
 end else if ((1'b1 == ap_CS_fsm_state3)) begin
 a_address0 = 64'd0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 a_address0 = grp_entry_point_Pipeline_1_fu_127_a_address0;
 end else begin
 a_address0 = 'bx;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
 a_ce0 = 1'b1;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 a_ce0 = grp_entry_point_Pipeline_1_fu_127_a_ce0;
 end else begin
 a_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 a_ce1 = 1'b1;
 end else begin
 a_ce1 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 a_we0 = grp_entry_point_Pipeline_1_fu_127_a_we0;
 end else begin
 a_we0 = 1'b0;
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
 if ((grp_entry_point_Pipeline_1_fu_127_ap_done == 1'b0)) begin
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
 if (((grp_entry_point_Pipeline_1_fu_127_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
assign a_address1 = 64'd1;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_1_fu_127_ap_start = grp_entry_point_Pipeline_1_fu_127_ap_start_reg;
assign temptemp1 = a_q0;
assign temptemp2 = 32'd0;
assign temptemp3 = a_q1;
assign temptemp4 = 32'd1;
assign temptemp5 = a_q0;
assign temptemp6 = 32'd2;
endmodule
module entry_point_a_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 address1, ce1,
 q1, 
 reset, clk);
parameter DataWidth = 32;
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
 a_address0,
 a_ce0,
 a_we0,
 a_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [1:0] a_address0;
output a_ce0;
output a_we0;
output [31:0] a_d0;
reg ap_idle;
reg a_ce0;
reg a_we0;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] exitcond1_fu_57_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] loop_index_t_cast_fu_69_p1;
reg [1:0] loop_index_t_fu_32;
wire [1:0] empty_5_fu_63_p2;
wire ap_loop_init;
reg [1:0] ap_sig_allocacmp_loop_index_t_load;
wire [31:0] merge_i_fu_74_p6;
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
entry_point_mux_42_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 32 ),
 .din2_WIDTH( 32 ),
 .din3_WIDTH( 32 ),
 .din4_WIDTH( 2 ),
 .dout_WIDTH( 32 ))
mux_42_32_1_1_U1(
 .din0(32'd11),
 .din1(32'd22),
 .din2(32'd33),
 .din3(32'd33),
 .din4(ap_sig_allocacmp_loop_index_t_load),
 .dout(merge_i_fu_74_p6)
);
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
 if ((exitcond1_fu_57_p2 == 1'd0)) begin
 loop_index_t_fu_32 <= empty_5_fu_63_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 loop_index_t_fu_32 <= 2'd0;
 end
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 a_ce0 = 1'b1;
 end else begin
 a_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (exitcond1_fu_57_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 a_we0 = 1'b1;
 end else begin
 a_we0 = 1'b0;
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
 if (((ap_start_int == 1'b1) & (exitcond1_fu_57_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_sig_allocacmp_loop_index_t_load = 2'd0;
 end else begin
 ap_sig_allocacmp_loop_index_t_load = loop_index_t_fu_32;
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
assign a_address0 = loop_index_t_cast_fu_69_p1;
assign a_d0 = merge_i_fu_74_p6;
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign empty_5_fu_63_p2 = (ap_sig_allocacmp_loop_index_t_load + 2'd1);
assign exitcond1_fu_57_p2 = ((ap_sig_allocacmp_loop_index_t_load == 2'd3) ? 1'b1 : 1'b0);
assign loop_index_t_cast_fu_69_p1 = ap_sig_allocacmp_loop_index_t_load;
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
module entry_point_mux_42_32_1_1 #(
parameter
 ID = 0,
 NUM_STAGE = 1,
 din0_WIDTH = 32,
 din1_WIDTH = 32,
 din2_WIDTH = 32,
 din3_WIDTH = 32,
 din4_WIDTH = 32,
 dout_WIDTH = 32
)(
 input [31 : 0] din0,
 input [31 : 0] din1,
 input [31 : 0] din2,
 input [31 : 0] din3,
 input [1 : 0] din4,
 output [31 : 0] dout);
wire [1 : 0] sel;
wire [31 : 0] mux_1_0;
wire [31 : 0] mux_1_1;
wire [31 : 0] mux_2_0;
assign sel = din4;
assign mux_1_0 = (sel[0] == 0)? din0 : din1;
assign mux_1_1 = (sel[0] == 0)? din2 : din3;
assign mux_2_0 = (sel[1] == 0)? mux_1_0 : mux_1_1;
assign dout = mux_2_0;
endmodule
