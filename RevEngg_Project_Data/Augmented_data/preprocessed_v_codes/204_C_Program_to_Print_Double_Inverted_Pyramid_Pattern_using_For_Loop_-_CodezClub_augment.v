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
 ap_return
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [7:0] temptemp1;
output temptemp1_ap_vld;
output [7:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg ap_idle;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln14_fu_139_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [2:0] entry_point_diff_address0;
wire [31:0] entry_point_diff_q0;
wire [3:0] zext_ln14_1_fu_114_p1;
reg [3:0] zext_ln14_1_reg_264;
wire ap_block_pp0_stage0_11001;
wire [3:0] b_fu_129_p2;
reg [3:0] b_reg_274;
reg [0:0] icmp_ln14_reg_279;
wire [63:0] zext_ln14_fu_118_p1;
wire ap_block_pp0_stage0;
reg [2:0] c1_fu_62;
wire [2:0] c_fu_123_p2;
wire ap_loop_init;
reg [2:0] ap_sig_allocacmp_c1_load;
reg [2:0] b2_fu_66;
wire [2:0] trunc_ln10_fu_135_p1;
reg [2:0] ap_sig_allocacmp_b2_load;
wire ap_block_pp0_stage0_01001;
wire [0:0] tmp_fu_185_p3;
reg ap_loop_exit_ready_pp0_iter1_reg;
reg entry_point_diff_ce0_local;
wire [2:0] trunc_ln31_4_fu_159_p4;
wire [3:0] trunc_ln7_fu_155_p1;
wire [0:0] icmp_ln32_fu_173_p2;
wire [3:0] temp_1_fu_179_p3;
wire [3:0] add_ln38_fu_193_p2;
wire [2:0] tmp_1_fu_199_p4;
wire [6:0] zext_ln32_fu_169_p1;
wire [0:0] icmp_ln38_fu_209_p2;
wire [3:0] p_op_op_fu_221_p2;
wire [3:0] p_neg1_fu_227_p3;
wire [6:0] sub_ln38_fu_215_p2;
wire signed [6:0] sext_ln38_fu_235_p1;
wire [6:0] add_ln38_1_fu_239_p2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
reg ap_condition_79;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 c1_fu_62 = 3'd0;
#0 b2_fu_66 = 3'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_entry_point_diff_ROM_AUTO_1R #(
 .DataWidth( 32 ),
 .AddressRange( 7 ),
 .AddressWidth( 3 ))
entry_point_diff_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(entry_point_diff_address0),
 .ce0(entry_point_diff_ce0_local),
 .q0(entry_point_diff_q0)
);
entry_point_flow_control_loop_pipe flow_control_loop_pipe_U(
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
 .ap_done_int(ap_done_int),
 .ap_continue(1'b1)
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
 end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_enable_reg_pp0_iter1 <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
 if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
 ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
 end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
 ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_condition_79)) begin
 b2_fu_66 <= trunc_ln10_fu_135_p1;
 end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_79)) begin
 c1_fu_62 <= c_fu_123_p2;
end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 b_reg_274 <= b_fu_129_p2;
 icmp_ln14_reg_279 <= icmp_ln14_fu_139_p2;
 zext_ln14_1_reg_264[2 : 0] <= zext_ln14_1_fu_114_p1[2 : 0];
 end
end
always @ (*) begin
 if (((icmp_ln14_fu_139_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
 ap_done_int = 1'b1;
 end else begin
 ap_done_int = ap_done_reg;
 end
end
always @ (*) begin
 if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_sig_allocacmp_b2_load = 3'd6;
 end else begin
 ap_sig_allocacmp_b2_load = b2_fu_66;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_sig_allocacmp_c1_load = 3'd0;
 end else begin
 ap_sig_allocacmp_c1_load = c1_fu_62;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 entry_point_diff_ce0_local = 1'b1;
 end else begin
 entry_point_diff_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln14_reg_279 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((tmp_fu_185_p3 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
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
assign add_ln38_1_fu_239_p2 = ($signed(sub_ln38_fu_215_p2) + $signed(sext_ln38_fu_235_p1));
assign add_ln38_fu_193_p2 = (temp_1_fu_179_p3 + 4'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
 ap_condition_79 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign ap_return = 32'd0;
assign b_fu_129_p2 = ($signed(zext_ln14_1_fu_114_p1) + $signed(4'd15));
assign c_fu_123_p2 = (ap_sig_allocacmp_c1_load + 3'd1);
assign entry_point_diff_address0 = zext_ln14_fu_118_p1;
assign icmp_ln14_fu_139_p2 = ((ap_sig_allocacmp_c1_load == 3'd6) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_173_p2 = ((trunc_ln7_fu_155_p1 == 4'd0) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_209_p2 = (($signed(tmp_1_fu_199_p4) > $signed(3'd0)) ? 1'b1 : 1'b0);
assign p_neg1_fu_227_p3 = ((icmp_ln38_fu_209_p2[0:0] == 1'b1) ? p_op_op_fu_221_p2 : 4'd0);
assign p_op_op_fu_221_p2 = (4'd0 - temp_1_fu_179_p3);
assign sext_ln38_fu_235_p1 = $signed(p_neg1_fu_227_p3);
assign sub_ln38_fu_215_p2 = ($signed(7'd70) - $signed(zext_ln32_fu_169_p1));
assign temp_1_fu_179_p3 = ((icmp_ln32_fu_173_p2[0:0] == 1'b1) ? b_reg_274 : zext_ln14_1_reg_264);
assign temptemp1 = 8'd65;
assign temptemp2 = add_ln38_1_fu_239_p2;
assign tmp_1_fu_199_p4 = {{add_ln38_fu_193_p2[3:1]}};
assign tmp_fu_185_p3 = temp_1_fu_179_p3[32'd3];
assign trunc_ln10_fu_135_p1 = b_fu_129_p2[2:0];
assign trunc_ln31_4_fu_159_p4 = {{entry_point_diff_q0[3:1]}};
assign trunc_ln7_fu_155_p1 = entry_point_diff_q0[3:0];
assign zext_ln14_1_fu_114_p1 = ap_sig_allocacmp_b2_load;
assign zext_ln14_fu_118_p1 = ap_sig_allocacmp_c1_load;
assign zext_ln32_fu_169_p1 = trunc_ln31_4_fu_159_p4;
always @ (posedge ap_clk) begin
 zext_ln14_1_reg_264[3] <= 1'b0;
end
endmodule
module entry_point_entry_point_diff_ROM_AUTO_1R (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 32;
parameter AddressWidth = 3;
parameter AddressRange = 7;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h00000000;
 rom0[1]=8'h00000001;
 rom0[2]=8'h00000003;
 rom0[3]=8'h00000005;
 rom0[4]=8'h00000007;
 rom0[5]=8'h00000009;
 rom0[6]=8'h0000000B;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
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
