module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 binary,
 temptemp1,
 temptemp1_ap_vld,
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
input [7:0] binary;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [8:0] add_ln13_fu_57_p2;
reg [8:0] add_ln13_reg_74;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_octal_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_octal_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_ap_start_reg;
wire ap_CS_fsm_state2;
wire ap_CS_fsm_state3;
wire signed [8:0] sext_ln13_fu_53_p1;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_12_1 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_ap_ready),
 .sext_ln12(add_ln13_reg_74),
 .octal_out(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_octal_out),
 .octal_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_octal_out_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 add_ln13_reg_74 <= add_ln13_fu_57_p2;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
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
 if ((1'b1 == ap_CS_fsm_state3)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln13_fu_57_p2 = ($signed(sext_ln13_fu_53_p1) + $signed(9'd464));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_ap_start_reg;
assign sext_ln13_fu_53_p1 = $signed(binary);
assign temptemp1 = grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_47_octal_out;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_12_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 sext_ln12,
 octal_out,
 octal_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [8:0] sext_ln12;
output [31:0] octal_out;
output octal_out_ap_vld;
reg ap_idle;
reg octal_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] tmp_fu_91_p3;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire signed [31:0] sext_ln12_cast_fu_69_p1;
reg signed [31:0] sext_ln12_cast_reg_249;
wire ap_block_pp0_stage0_11001;
reg [31:0] octal_fu_40;
wire [31:0] octal_2_fu_167_p3;
wire ap_block_pp0_stage0;
reg signed [31:0] power_fu_44;
wire [31:0] power_2_fu_175_p3;
wire ap_loop_init;
reg [31:0] temp_fu_48;
wire [31:0] temp_2_fu_183_p3;
reg [4:0] i_fu_52;
wire [4:0] add_ln12_fu_191_p2;
wire ap_block_pp0_stage0_01001;
wire signed [8:0] mul_ln13_fu_108_p1;
wire [31:0] mul_ln13_fu_108_p2;
wire signed [31:0] power_1_fu_119_p0;
wire [31:0] power_1_fu_119_p2;
wire [0:0] icmp_ln15_fu_125_p2;
wire [0:0] icmp_ln15_1_fu_131_p2;
wire [31:0] shl_ln16_fu_143_p2;
wire [31:0] shl_ln16_1_fu_149_p2;
wire [31:0] add_ln16_fu_155_p2;
wire [31:0] temp_1_fu_113_p2;
wire [0:0] or_ln15_fu_137_p2;
wire [31:0] octal_1_fu_161_p2;
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
entry_point_mul_32s_9s_32_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 9 ),
 .dout_WIDTH( 32 ))
mul_32s_9s_32_1_1_U1(
 .din0(power_fu_44),
 .din1(mul_ln13_fu_108_p1),
 .dout(mul_ln13_fu_108_p2)
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
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
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
 if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
 ap_enable_reg_pp0_iter1 <= 1'b0;
 end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_enable_reg_pp0_iter1 <= ap_start_int;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_fu_52 <= 5'd10;
 end else if (((tmp_fu_91_p3 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_fu_52 <= add_ln12_fu_191_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 power_fu_44 <= 32'd1;
 end else if (((tmp_fu_91_p3 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 power_fu_44 <= power_2_fu_175_p3;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 temp_fu_48 <= 32'd0;
 end else if (((tmp_fu_91_p3 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 temp_fu_48 <= temp_2_fu_183_p3;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((tmp_fu_91_p3 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 octal_fu_40 <= octal_2_fu_167_p3;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 sext_ln12_cast_reg_249 <= sext_ln12_cast_fu_69_p1;
 end
end
always @ (*) begin
 if (((tmp_fu_91_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 ap_condition_exit_pp0_iter1_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
 if (((tmp_fu_91_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 octal_out_ap_vld = 1'b1;
 end else begin
 octal_out_ap_vld = 1'b0;
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
assign add_ln12_fu_191_p2 = ($signed(i_fu_52) + $signed(5'd31));
assign add_ln16_fu_155_p2 = (shl_ln16_fu_143_p2 + shl_ln16_1_fu_149_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign icmp_ln15_1_fu_131_p2 = ((i_fu_52 == 5'd0) ? 1'b1 : 1'b0);
assign icmp_ln15_fu_125_p2 = ((power_1_fu_119_p2 == 32'd8) ? 1'b1 : 1'b0);
assign mul_ln13_fu_108_p1 = sext_ln12_cast_reg_249;
assign octal_1_fu_161_p2 = (add_ln16_fu_155_p2 + temp_1_fu_113_p2);
assign octal_2_fu_167_p3 = ((or_ln15_fu_137_p2[0:0] == 1'b1) ? octal_1_fu_161_p2 : octal_fu_40);
assign octal_out = octal_fu_40;
assign or_ln15_fu_137_p2 = (icmp_ln15_fu_125_p2 | icmp_ln15_1_fu_131_p2);
assign power_1_fu_119_p0 = power_fu_44;
assign power_1_fu_119_p2 = power_1_fu_119_p0 << 32'd1;
assign power_2_fu_175_p3 = ((or_ln15_fu_137_p2[0:0] == 1'b1) ? 32'd1 : power_1_fu_119_p2);
assign sext_ln12_cast_fu_69_p1 = $signed(sext_ln12);
assign shl_ln16_1_fu_149_p2 = octal_fu_40 << 32'd1;
assign shl_ln16_fu_143_p2 = octal_fu_40 << 32'd3;
assign temp_1_fu_113_p2 = (mul_ln13_fu_108_p2 + temp_fu_48);
assign temp_2_fu_183_p3 = ((or_ln15_fu_137_p2[0:0] == 1'b1) ? 32'd0 : temp_1_fu_113_p2);
assign tmp_fu_91_p3 = i_fu_52[32'd4];
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
module entry_point_mul_32s_9s_32_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed(din0) * $signed(din1);
endmodule
