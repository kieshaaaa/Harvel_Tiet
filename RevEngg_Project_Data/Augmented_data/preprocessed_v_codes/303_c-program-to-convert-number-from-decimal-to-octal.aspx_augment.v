module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 decimalNum_i,
 decimalNum_o,
 decimalNum_o_ap_vld,
 temptemp1,
 temptemp1_ap_vld,
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
input [31:0] decimalNum_i;
output [31:0] decimalNum_o;
output decimalNum_o_ap_vld;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] decimalNum_o;
reg decimalNum_o_ap_vld;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [4:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [31:0] decimalNum_read_reg_95;
wire [0:0] icmp_ln16_fu_78_p2;
reg [0:0] icmp_ln16_reg_100;
wire ap_CS_fsm_state4;
reg [4:0] octal_address0;
reg octal_ce0;
reg octal_we0;
wire [2:0] octal_q0;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_ready;
wire [4:0] grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_octal_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_octal_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_octal_we0;
wire [2:0] grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_octal_d0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_decimalNum;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_decimalNum_ap_vld;
wire [5:0] grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_i_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_i_out_ap_vld;
reg grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_start_reg;
reg [4:0] ap_NS_fsm;
wire ap_NS_fsm_state2;
wire ap_CS_fsm_state3;
reg [31:0] decimalNum_o_reg;
wire ap_CS_fsm_state5;
reg octal_ce0_local;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
reg ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_start_reg = 1'b0;
end
entry_point_octal_RAM_AUTO_1R1W #(
 .DataWidth( 3 ),
 .AddressRange( 32 ),
 .AddressWidth( 5 ))
octal_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(octal_address0),
 .ce0(octal_ce0),
 .we0(octal_we0),
 .d0(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_octal_d0),
 .q0(octal_q0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_10_1 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_ready),
 .decimalNum_load(decimalNum_read_reg_95),
 .octal_address0(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_octal_address0),
 .octal_ce0(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_octal_ce0),
 .octal_we0(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_octal_we0),
 .octal_d0(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_octal_d0),
 .decimalNum(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_decimalNum),
 .decimalNum_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_decimalNum_ap_vld),
 .i_out(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_i_out),
 .i_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_i_out_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_NS_fsm_state2) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_decimalNum_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 decimalNum_o_reg <= grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_decimalNum;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 decimalNum_read_reg_95 <= decimalNum_i;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 icmp_ln16_reg_100 <= icmp_ln16_fu_78_p2;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_done == 1'b0)) begin
 ap_ST_fsm_state3_blk = 1'b1;
 end else begin
 ap_ST_fsm_state3_blk = 1'b0;
 end
end
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_decimalNum_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 decimalNum_o = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_decimalNum;
 end else begin
 decimalNum_o = decimalNum_o_reg;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 decimalNum_o_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_decimalNum_ap_vld;
 end else begin
 decimalNum_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 octal_address0 = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_octal_address0;
 end else begin
 octal_address0 = 64'd0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 octal_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_octal_ce0;
 end else begin
 octal_ce0 = octal_ce0_local;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 octal_ce0_local = 1'b1;
 end else begin
 octal_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 octal_we0 = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_octal_we0;
 end else begin
 octal_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln16_reg_100 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
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
 ap_NS_fsm = ap_ST_fsm_state3;
 end
 ap_ST_fsm_state3 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end
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
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_NS_fsm_state2 = ap_NS_fsm[32'd1];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_ap_start_reg;
assign icmp_ln16_fu_78_p2 = ((grp_entry_point_Pipeline_VITIS_LOOP_10_1_fu_66_i_out == 6'd0) ? 1'b1 : 1'b0);
assign temptemp1 = octal_q0;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_10_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 decimalNum_load,
 octal_address0,
 octal_ce0,
 octal_we0,
 octal_d0,
 decimalNum,
 decimalNum_ap_vld,
 i_out,
 i_out_ap_vld
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] decimalNum_load;
output [4:0] octal_address0;
output octal_ce0;
output octal_we0;
output [2:0] octal_d0;
output [31:0] decimalNum;
output decimalNum_ap_vld;
output [5:0] i_out;
output i_out_ap_vld;
reg ap_idle;
reg decimalNum_ap_vld;
reg i_out_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln10_fu_98_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] zext_ln4_fu_110_p1;
wire ap_block_pp0_stage0;
reg [5:0] i_fu_40;
wire [5:0] add_ln10_fu_104_p2;
wire ap_block_pp0_stage0_11001;
wire ap_loop_init;
reg [31:0] empty_fu_44;
wire [31:0] div4_cast_fu_130_p1;
wire ap_block_pp0_stage0_01001;
reg octal_we0_local;
wire [2:0] trunc_ln4_fu_115_p1;
reg octal_ce0_local;
wire [28:0] div4_fu_120_p4;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [0:0] ap_NS_fsm;
wire ap_enable_pp0;
wire ap_start_int;
wire ap_ready_sig;
wire ap_done_sig;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 i_fu_40 = 6'd0;
#0 empty_fu_44 = 32'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(ap_start),
 .ap_ready(ap_ready_sig),
 .ap_done(ap_done_sig),
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
 empty_fu_44 <= decimalNum_load;
 end else if (((icmp_ln10_fu_98_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 empty_fu_44 <= div4_cast_fu_130_p1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 if ((ap_loop_init == 1'b1)) begin
 i_fu_40 <= 6'd0;
 end else if (((icmp_ln10_fu_98_p2 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 i_fu_40 <= add_ln10_fu_104_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln10_fu_98_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 if (((icmp_ln10_fu_98_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 decimalNum_ap_vld = 1'b1;
 end else begin
 decimalNum_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (icmp_ln10_fu_98_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 i_out_ap_vld = 1'b1;
 end else begin
 i_out_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 octal_ce0_local = 1'b1;
 end else begin
 octal_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln10_fu_98_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 octal_we0_local = 1'b1;
 end else begin
 octal_we0_local = 1'b0;
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
assign add_ln10_fu_104_p2 = (i_fu_40 + 6'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign decimalNum = div4_fu_120_p4;
assign div4_cast_fu_130_p1 = div4_fu_120_p4;
assign div4_fu_120_p4 = {{empty_fu_44[31:3]}};
assign i_out = i_fu_40;
assign icmp_ln10_fu_98_p2 = (($signed(empty_fu_44) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign octal_address0 = zext_ln4_fu_110_p1;
assign octal_ce0 = octal_ce0_local;
assign octal_d0 = trunc_ln4_fu_115_p1;
assign octal_we0 = octal_we0_local;
assign trunc_ln4_fu_115_p1 = empty_fu_44[2:0];
assign zext_ln4_fu_110_p1 = i_fu_40;
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
module entry_point_octal_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 reset, clk);
parameter DataWidth = 3;
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
