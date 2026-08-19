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
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln13_fu_111_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [2:0] entry_point_diff_address0;
reg entry_point_diff_ce0;
wire [31:0] entry_point_diff_q0;
wire ap_block_pp0_stage0_11001;
wire [63:0] k_cast_fu_123_p1;
wire ap_block_pp0_stage0;
reg [3:0] j_fu_62;
wire [3:0] temp_fu_160_p2;
wire ap_loop_init;
reg [2:0] k_fu_66;
wire [2:0] add_ln22_fu_117_p2;
reg [2:0] ap_sig_allocacmp_k_1;
wire ap_block_pp0_stage0_01001;
wire [0:0] tmp_fu_174_p3;
wire [2:0] trunc_ln26_1_fu_140_p4;
wire [3:0] trunc_ln7_fu_136_p1;
wire [0:0] icmp_ln27_fu_154_p2;
wire [3:0] temp_1_fu_166_p3;
wire [2:0] trunc_ln32_fu_182_p1;
wire [6:0] zext_ln9_fu_150_p1;
wire [6:0] symbol_fu_190_p2;
wire [6:0] zext_ln26_fu_186_p1;
wire [6:0] sub_ln32_fu_196_p2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
reg ap_condition_84;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
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
 .ce0(entry_point_diff_ce0),
 .q0(entry_point_diff_q0)
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
 if (((ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 j_fu_62 <= 4'd6;
 end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
 j_fu_62 <= temp_fu_160_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_condition_84)) begin
 if ((icmp_ln13_fu_111_p2 == 1'd0)) begin
 k_fu_66 <= add_ln22_fu_117_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 k_fu_66 <= 3'd0;
 end
 end
end
always @ (*) begin
 if (((icmp_ln13_fu_111_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_sig_allocacmp_k_1 = 3'd0;
 end else begin
 ap_sig_allocacmp_k_1 = k_fu_66;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 entry_point_diff_ce0 = 1'b1;
 end else begin
 entry_point_diff_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln13_fu_111_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_fu_174_p3 == 1'd0))) begin
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
assign add_ln22_fu_117_p2 = (ap_sig_allocacmp_k_1 + 3'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
always @ (*) begin
 ap_condition_84 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_return = 32'd0;
assign entry_point_diff_address0 = k_cast_fu_123_p1;
assign icmp_ln13_fu_111_p2 = ((ap_sig_allocacmp_k_1 == 3'd7) ? 1'b1 : 1'b0);
assign icmp_ln27_fu_154_p2 = ((trunc_ln7_fu_136_p1 == 4'd0) ? 1'b1 : 1'b0);
assign k_cast_fu_123_p1 = ap_sig_allocacmp_k_1;
assign sub_ln32_fu_196_p2 = (symbol_fu_190_p2 - zext_ln26_fu_186_p1);
assign symbol_fu_190_p2 = ($signed(7'd70) - $signed(zext_ln9_fu_150_p1));
assign temp_1_fu_166_p3 = ((icmp_ln27_fu_154_p2[0:0] == 1'b1) ? temp_fu_160_p2 : j_fu_62);
assign temp_fu_160_p2 = ($signed(j_fu_62) + $signed(4'd15));
assign temptemp1 = 8'd65;
assign temptemp2 = sub_ln32_fu_196_p2;
assign tmp_fu_174_p3 = temp_1_fu_166_p3[32'd3];
assign trunc_ln26_1_fu_140_p4 = {{entry_point_diff_q0[3:1]}};
assign trunc_ln32_fu_182_p1 = temp_1_fu_166_p3[2:0];
assign trunc_ln7_fu_136_p1 = entry_point_diff_q0[3:0];
assign zext_ln26_fu_186_p1 = trunc_ln32_fu_182_p1;
assign zext_ln9_fu_150_p1 = trunc_ln26_1_fu_140_p4;
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
