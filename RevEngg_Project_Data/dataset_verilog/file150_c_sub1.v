module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 number,
 temptemp1,
 temptemp1_ap_vld,
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
input [31:0] number;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg [5:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire ap_CS_fsm_state3;
reg [4:0] bin_address0;
reg bin_ce0;
reg bin_we0;
reg [0:0] bin_d0;
wire [0:0] bin_q0;
wire grp_entry_point_Pipeline_1_fu_40_ap_start;
wire grp_entry_point_Pipeline_1_fu_40_ap_done;
wire grp_entry_point_Pipeline_1_fu_40_ap_idle;
wire grp_entry_point_Pipeline_1_fu_40_ap_ready;
wire [4:0] grp_entry_point_Pipeline_1_fu_40_bin_address0;
wire grp_entry_point_Pipeline_1_fu_40_bin_ce0;
wire grp_entry_point_Pipeline_1_fu_40_bin_we0;
wire [0:0] grp_entry_point_Pipeline_1_fu_40_bin_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_ap_ready;
wire [4:0] grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_bin_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_bin_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_bin_we0;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_bin_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_ready;
wire [4:0] grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_bin_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_bin_ce0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_temptemp1;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_temptemp1_ap_vld;
reg grp_entry_point_Pipeline_1_fu_40_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_ap_start_reg;
wire ap_CS_fsm_state4;
reg grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_start_reg;
wire ap_CS_fsm_state5;
wire ap_CS_fsm_state6;
reg [5:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
reg ap_ST_fsm_state6_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_entry_point_Pipeline_1_fu_40_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_start_reg = 1'b0;
end
entry_point_bin_RAM_AUTO_1R1W #(
 .DataWidth( 1 ),
 .AddressRange( 32 ),
 .AddressWidth( 5 ))
bin_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(bin_address0),
 .ce0(bin_ce0),
 .we0(bin_we0),
 .d0(bin_d0),
 .q0(bin_q0)
);
entry_point_entry_point_Pipeline_1 grp_entry_point_Pipeline_1_fu_40(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_1_fu_40_ap_start),
 .ap_done(grp_entry_point_Pipeline_1_fu_40_ap_done),
 .ap_idle(grp_entry_point_Pipeline_1_fu_40_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_1_fu_40_ap_ready),
 .bin_address0(grp_entry_point_Pipeline_1_fu_40_bin_address0),
 .bin_ce0(grp_entry_point_Pipeline_1_fu_40_bin_ce0),
 .bin_we0(grp_entry_point_Pipeline_1_fu_40_bin_we0),
 .bin_d0(grp_entry_point_Pipeline_1_fu_40_bin_d0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_7_1 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_ap_ready),
 .number_load(number),
 .bin_address0(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_bin_address0),
 .bin_ce0(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_bin_ce0),
 .bin_we0(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_bin_we0),
 .bin_d0(grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_bin_d0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_12_2 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_ready),
 .bin_address0(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_bin_address0),
 .bin_ce0(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_bin_ce0),
 .bin_q0(bin_q0),
 .temptemp1(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_temptemp1),
 .temptemp1_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_temptemp1_ap_vld)
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
 grp_entry_point_Pipeline_1_fu_40_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_1_fu_40_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_1_fu_40_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_1_fu_40_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_ap_start_reg <= 1'b0;
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
 if ((grp_entry_point_Pipeline_1_fu_40_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_done == 1'b0)) begin
 ap_ST_fsm_state6_blk = 1'b1;
 end else begin
 ap_ST_fsm_state6_blk = 1'b0;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 bin_address0 = grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_bin_address0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 bin_address0 = grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_bin_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 bin_address0 = grp_entry_point_Pipeline_1_fu_40_bin_address0;
 end else begin
 bin_address0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 bin_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_bin_ce0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 bin_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_bin_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 bin_ce0 = grp_entry_point_Pipeline_1_fu_40_bin_ce0;
 end else begin
 bin_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 bin_d0 = grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_bin_d0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 bin_d0 = grp_entry_point_Pipeline_1_fu_40_bin_d0;
 end else begin
 bin_d0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 bin_we0 = grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_bin_we0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 bin_we0 = grp_entry_point_Pipeline_1_fu_40_bin_we0;
 end else begin
 bin_we0 = 1'b0;
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
 if (((grp_entry_point_Pipeline_1_fu_40_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 ap_ST_fsm_state6 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
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
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_1_fu_40_ap_start = grp_entry_point_Pipeline_1_fu_40_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_7_1_fu_46_ap_start_reg;
assign temptemp1 = grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_temptemp1;
assign temptemp1_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_12_2_fu_53_temptemp1_ap_vld;
endmodule
module entry_point_bin_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 reset, clk);
parameter DataWidth = 1;
parameter AddressWidth = 5;
parameter AddressRange = 32;
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
module entry_point_entry_point_Pipeline_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 bin_address0,
 bin_ce0,
 bin_we0,
 bin_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [4:0] bin_address0;
output bin_ce0;
output bin_we0;
output [0:0] bin_d0;
reg ap_idle;
reg bin_ce0;
reg bin_we0;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] exitcond73_fu_52_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] p_cast_fu_64_p1;
reg [5:0] empty_fu_26;
wire [5:0] empty_8_fu_58_p2;
wire ap_loop_init;
reg [5:0] ap_sig_allocacmp_p_load;
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
 if ((exitcond73_fu_52_p2 == 1'd0)) begin
 empty_fu_26 <= empty_8_fu_58_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 empty_fu_26 <= 6'd0;
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
 if (((ap_start_int == 1'b1) & (exitcond73_fu_52_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_sig_allocacmp_p_load = 6'd0;
 end else begin
 ap_sig_allocacmp_p_load = empty_fu_26;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 bin_ce0 = 1'b1;
 end else begin
 bin_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (exitcond73_fu_52_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 bin_we0 = 1'b1;
 end else begin
 bin_we0 = 1'b0;
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
assign bin_address0 = p_cast_fu_64_p1;
assign bin_d0 = 1'd0;
assign empty_8_fu_58_p2 = (ap_sig_allocacmp_p_load + 6'd1);
assign exitcond73_fu_52_p2 = ((ap_sig_allocacmp_p_load == 6'd32) ? 1'b1 : 1'b0);
assign p_cast_fu_64_p1 = ap_sig_allocacmp_p_load;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_12_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 bin_address0,
 bin_ce0,
 bin_q0,
 temptemp1,
 temptemp1_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [4:0] bin_address0;
output bin_ce0;
input [0:0] bin_q0;
output [31:0] temptemp1;
output temptemp1_ap_vld;
reg ap_idle;
reg bin_ce0;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] tmp_fu_75_p3;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
wire [63:0] i_1_cast_fu_83_p1;
wire ap_block_pp0_stage0;
reg [31:0] startPrinting_fu_34;
wire [31:0] startPrinting_1_fu_107_p3;
wire ap_loop_init;
reg [5:0] i_1_fu_38;
wire [5:0] add_ln12_fu_88_p2;
reg [5:0] ap_sig_allocacmp_i;
wire ap_block_pp0_stage0_01001;
wire [0:0] icmp_ln15_fu_115_p2;
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
 if (((tmp_fu_75_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 i_1_fu_38 <= add_ln12_fu_88_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_1_fu_38 <= 6'd31;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 startPrinting_fu_34 <= 32'd0;
 end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
 startPrinting_fu_34 <= startPrinting_1_fu_107_p3;
 end
 end
end
always @ (*) begin
 if (((tmp_fu_75_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 ap_sig_allocacmp_i = 6'd31;
 end else begin
 ap_sig_allocacmp_i = i_1_fu_38;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 bin_ce0 = 1'b1;
 end else begin
 bin_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln15_fu_115_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
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
assign add_ln12_fu_88_p2 = ($signed(ap_sig_allocacmp_i) + $signed(6'd63));
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
assign bin_address0 = i_1_cast_fu_83_p1;
assign i_1_cast_fu_83_p1 = ap_sig_allocacmp_i;
assign icmp_ln15_fu_115_p2 = ((startPrinting_1_fu_107_p3 == 32'd0) ? 1'b1 : 1'b0);
assign startPrinting_1_fu_107_p3 = ((bin_q0[0:0] == 1'b1) ? 32'd1 : startPrinting_fu_34);
assign temptemp1 = bin_q0;
assign tmp_fu_75_p3 = ap_sig_allocacmp_i[32'd5];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_7_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 number_load,
 bin_address0,
 bin_ce0,
 bin_we0,
 bin_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] number_load;
output [4:0] bin_address0;
output bin_ce0;
output bin_we0;
output [0:0] bin_d0;
reg ap_idle;
reg bin_ce0;
reg bin_we0;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln7_fu_63_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] i_cast_fu_75_p1;
reg [5:0] i_fu_32;
wire [5:0] add_ln7_fu_69_p2;
wire ap_loop_init;
reg [5:0] ap_sig_allocacmp_i_1;
wire [4:0] trunc_ln8_fu_80_p1;
wire [31:0] zext_ln8_fu_84_p1;
wire [31:0] lshr_ln8_fu_88_p2;
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
 if ((icmp_ln7_fu_63_p2 == 1'd0)) begin
 i_fu_32 <= add_ln7_fu_69_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_32 <= 6'd0;
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
 if (((ap_start_int == 1'b1) & (icmp_ln7_fu_63_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_sig_allocacmp_i_1 = 6'd0;
 end else begin
 ap_sig_allocacmp_i_1 = i_fu_32;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 bin_ce0 = 1'b1;
 end else begin
 bin_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln7_fu_63_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 bin_we0 = 1'b1;
 end else begin
 bin_we0 = 1'b0;
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
assign add_ln7_fu_69_p2 = (ap_sig_allocacmp_i_1 + 6'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign bin_address0 = i_cast_fu_75_p1;
assign bin_d0 = lshr_ln8_fu_88_p2[0:0];
assign i_cast_fu_75_p1 = ap_sig_allocacmp_i_1;
assign icmp_ln7_fu_63_p2 = ((ap_sig_allocacmp_i_1 == 6'd32) ? 1'b1 : 1'b0);
assign lshr_ln8_fu_88_p2 = number_load >> zext_ln8_fu_84_p1;
assign trunc_ln8_fu_80_p1 = ap_sig_allocacmp_i_1[4:0];
assign zext_ln8_fu_84_p1 = trunc_ln8_fu_80_p1;
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
