module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 size_i,
 size_o,
 size_o_ap_vld,
 arr,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
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
input [31:0] size_i;
output [31:0] size_o;
output size_o_ap_vld;
input [31:0] arr;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] size_o;
reg size_o_ap_vld;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [31:0] p_load_reg_211;
wire ap_CS_fsm_state2;
wire [31:0] add_ln19_1_fu_139_p2;
reg [31:0] add_ln19_1_reg_219;
wire [0:0] icmp_ln17_fu_120_p2;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_size;
wire grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_size_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_ap_start_reg;
wire ap_CS_fsm_state3;
reg [31:0] empty_fu_40;
wire [31:0] select_ln17_fu_152_p3;
reg [63:0] i_fu_44;
wire [63:0] add_ln19_fu_126_p2;
reg [31:0] indvars_iv1_fu_48;
wire [31:0] add_ln17_fu_160_p2;
wire [0:0] icmp_ln10_fu_88_p2;
wire [0:0] icmp_ln33_fu_181_p2;
wire signed [31:0] sext_ln17_fu_116_p0;
wire signed [63:0] sext_ln17_fu_116_p1;
wire [31:0] trunc_ln19_fu_135_p1;
wire signed [31:0] icmp_ln17_1_fu_146_p1;
wire [0:0] icmp_ln17_1_fu_146_p2;
wire signed [31:0] select_ln17_fu_152_p1;
wire signed [31:0] icmp_ln33_fu_181_p0;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_19_3 grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_ap_ready),
 .sext_ln17(p_load_reg_211),
 .sext_ln19(add_ln19_1_reg_219),
 .size(grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_size),
 .size_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_size_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln17_fu_120_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 empty_fu_40 <= size_i;
 end else if (((icmp_ln17_fu_120_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 empty_fu_40 <= select_ln17_fu_152_p3;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 i_fu_44 <= 64'd0;
 end else if (((icmp_ln17_fu_120_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 i_fu_44 <= add_ln19_fu_126_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 indvars_iv1_fu_48 <= 32'd1;
 end else if (((icmp_ln17_fu_120_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 indvars_iv1_fu_48 <= add_ln17_fu_160_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln17_fu_120_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 add_ln19_1_reg_219 <= add_ln19_1_fu_139_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 p_load_reg_211 <= empty_fu_40;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_ap_done == 1'b0)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln17_fu_120_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
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
 if (((icmp_ln17_fu_120_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_size_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 size_o = grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_size;
 end else begin
 size_o = size_i;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 size_o_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_size_ap_vld;
 end else begin
 size_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start == 1'b1) & (icmp_ln10_fu_88_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln33_fu_181_p2 == 1'd1) & (icmp_ln17_fu_120_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
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
 if (((icmp_ln17_fu_120_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
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
assign add_ln17_fu_160_p2 = (indvars_iv1_fu_48 + 32'd1);
assign add_ln19_1_fu_139_p2 = (trunc_ln19_fu_135_p1 + 32'd1);
assign add_ln19_fu_126_p2 = (i_fu_44 + 64'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_19_3_fu_80_ap_start_reg;
assign icmp_ln10_fu_88_p2 = (($signed(size_i) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln17_1_fu_146_p1 = empty_fu_40;
assign icmp_ln17_1_fu_146_p2 = (($signed(indvars_iv1_fu_48) > $signed(icmp_ln17_1_fu_146_p1)) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_120_p2 = (($signed(i_fu_44) < $signed(sext_ln17_fu_116_p1)) ? 1'b1 : 1'b0);
assign icmp_ln33_fu_181_p0 = empty_fu_40;
assign icmp_ln33_fu_181_p2 = (($signed(icmp_ln33_fu_181_p0) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign select_ln17_fu_152_p1 = empty_fu_40;
assign select_ln17_fu_152_p3 = ((icmp_ln17_1_fu_146_p2[0:0] == 1'b1) ? select_ln17_fu_152_p1 : indvars_iv1_fu_48);
assign sext_ln17_fu_116_p0 = empty_fu_40;
assign sext_ln17_fu_116_p1 = sext_ln17_fu_116_p0;
assign temptemp1 = size_i;
assign temptemp2 = arr;
assign trunc_ln19_fu_135_p1 = i_fu_44[31:0];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_19_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 sext_ln17,
 sext_ln19,
 size,
 size_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] sext_ln17;
input [31:0] sext_ln19;
output [31:0] size;
output size_ap_vld;
reg ap_idle;
reg size_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln19_fu_65_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire signed [63:0] sext_ln19_cast_fu_49_p1;
reg signed [63:0] sext_ln19_cast_reg_99;
wire ap_block_pp0_stage0_11001;
reg [63:0] indvars_iv3_fu_26;
wire [63:0] add_ln27_fu_74_p2;
wire signed [63:0] sext_ln17_cast_fu_53_p1;
wire ap_loop_init;
wire ap_block_pp0_stage0;
wire ap_block_pp0_stage0_01001;
wire [31:0] trunc_ln27_fu_70_p1;
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
 indvars_iv3_fu_26 <= sext_ln17_cast_fu_53_p1;
 end else if (((icmp_ln19_fu_65_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 indvars_iv3_fu_26 <= add_ln27_fu_74_p2;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 sext_ln19_cast_reg_99 <= sext_ln19_cast_fu_49_p1;
 end
end
always @ (*) begin
 if (((icmp_ln19_fu_65_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln19_fu_65_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 size_ap_vld = 1'b1;
 end else begin
 size_ap_vld = 1'b0;
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
assign add_ln27_fu_74_p2 = ($signed(indvars_iv3_fu_26) + $signed(64'd18446744073709551615));
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
assign icmp_ln19_fu_65_p2 = (($signed(indvars_iv3_fu_26) > $signed(sext_ln19_cast_reg_99)) ? 1'b1 : 1'b0);
assign sext_ln17_cast_fu_53_p1 = $signed(sext_ln17);
assign sext_ln19_cast_fu_49_p1 = $signed(sext_ln19);
assign size = ($signed(trunc_ln27_fu_70_p1) + $signed(32'd4294967295));
assign trunc_ln27_fu_70_p1 = indvars_iv3_fu_26[31:0];
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
