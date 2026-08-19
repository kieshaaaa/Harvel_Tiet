module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 temptemp1,
 temptemp1_ap_vld,
 ap_return
);
parameter ap_ST_fsm_state1 = 2'd1;
parameter ap_ST_fsm_state2 = 2'd2;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [7:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_idle;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire ap_CS_fsm_state2;
wire ap_block_state2_pp0_stage1_iter0;
wire [0:0] icmp_ln9_fu_97_p2;
reg ap_condition_exit_pp0_iter0_stage1;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [63:0] i_1_reg_176;
reg ap_block_state1_pp0_stage0_iter0;
reg [7:0] line_address0;
reg line_ce0;
reg line_we0;
wire [7:0] line_q0;
wire [63:0] zext_ln11_fu_147_p1;
wire [0:0] or_ln10_fu_132_p2;
reg [63:0] i_fu_42;
wire [63:0] add_ln9_fu_103_p2;
wire ap_loop_init;
reg [63:0] ap_sig_allocacmp_i_1;
reg [31:0] len_fu_46;
wire [31:0] len_1_fu_141_p2;
wire [7:0] add_ln10_fu_108_p2;
wire [7:0] add_ln10_1_fu_120_p2;
wire [0:0] icmp_ln10_fu_114_p2;
wire [0:0] icmp_ln10_1_fu_126_p2;
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
entry_point_line_RAM_AUTO_1R1W #(
 .DataWidth( 8 ),
 .AddressRange( 150 ),
 .AddressWidth( 8 ))
line_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(line_address0),
 .ce0(line_ce0),
 .we0(line_we0),
 .d0(line_q0),
 .q0(line_q0)
);
entry_point_flow_control_loop_pipe flow_control_loop_pipe_U(
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
 .ap_done_int(ap_done_int),
 .ap_continue(1'b1)
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 i_fu_42 <= 64'd0;
 end else if (((icmp_ln9_fu_97_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 i_fu_42 <= add_ln9_fu_103_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 len_fu_46 <= 32'd0;
 end else if (((or_ln10_fu_132_p2 == 1'd1) & (icmp_ln9_fu_97_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 len_fu_46 <= len_1_fu_141_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 i_1_reg_176 <= ap_sig_allocacmp_i_1;
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
 if (((icmp_ln9_fu_97_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_condition_exit_pp0_iter0_stage1 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage1 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
 ap_sig_allocacmp_i_1 = 64'd0;
 end else begin
 ap_sig_allocacmp_i_1 = i_fu_42;
 end
end
always @ (*) begin
 if (((or_ln10_fu_132_p2 == 1'd1) & (icmp_ln9_fu_97_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 line_address0 = zext_ln11_fu_147_p1;
 end else if ((1'b1 == ap_CS_fsm_state1)) begin
 line_address0 = ap_sig_allocacmp_i_1;
 end else begin
 line_address0 = 'bx;
 end
end
always @ (*) begin
 if ((((or_ln10_fu_132_p2 == 1'd1) & (icmp_ln9_fu_97_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1)))) begin
 line_ce0 = 1'b1;
 end else begin
 line_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((or_ln10_fu_132_p2 == 1'd1) & (icmp_ln9_fu_97_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 line_we0 = 1'b1;
 end else begin
 line_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln9_fu_97_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
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
assign add_ln10_1_fu_120_p2 = ($signed(line_q0) + $signed(8'd191));
assign add_ln10_fu_108_p2 = ($signed(line_q0) + $signed(8'd159));
assign add_ln9_fu_103_p2 = (i_1_reg_176 + 64'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_return = 32'd0;
assign icmp_ln10_1_fu_126_p2 = ((add_ln10_1_fu_120_p2 < 8'd26) ? 1'b1 : 1'b0);
assign icmp_ln10_fu_114_p2 = ((add_ln10_fu_108_p2 < 8'd26) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_97_p2 = ((line_q0 == 8'd0) ? 1'b1 : 1'b0);
assign len_1_fu_141_p2 = (len_fu_46 + 32'd1);
assign or_ln10_fu_132_p2 = (icmp_ln10_fu_114_p2 | icmp_ln10_1_fu_126_p2);
assign temptemp1 = 8'd0;
assign zext_ln11_fu_147_p1 = len_fu_46;
endmodule
module entry_point_flow_control_loop_pipe(
 ap_clk,
 ap_rst,
 ap_start,
 ap_ready,
 ap_done,
 ap_continue,
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
input ap_continue;
output ap_start_int;
input ap_ready_int;
input ap_done_int;
output ap_continue_int;
output ap_loop_init;
reg ap_loop_init;
input ap_loop_exit_ready;
input ap_loop_exit_done;
initial begin
#0 ap_loop_init = 1'b1;
end
assign ap_start_int = ap_start;
assign ap_continue_int = ap_continue;
assign ap_done = ap_loop_exit_done;
assign ap_ready = ap_loop_exit_ready;
always @ (posedge ap_clk)
begin
 if (ap_rst == 1'b1) begin
 ap_loop_init <= 1'b1;
 end else if(ap_loop_exit_ready == 1'b1) begin
 ap_loop_init <= 1'b1;
 end else if(ap_ready_int == 1'b1) begin
 ap_loop_init <= 1'b0;
 end
end
endmodule
module entry_point_line_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 reset, clk);
parameter DataWidth = 8;
parameter AddressWidth = 8;
parameter AddressRange = 150;
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
