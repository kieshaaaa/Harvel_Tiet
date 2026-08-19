module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n,
 array_r,
 temptemp1,
 temptemp1_ap_vld
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
input [31:0] n;
input [31:0] array_r;
output [31:0] temptemp1;
output temptemp1_ap_vld;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [3:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [6:0] array1_address0;
reg array1_ce0;
reg array1_we0;
wire [31:0] array1_q0;
wire [6:0] trunc_ln12_fu_77_p1;
reg [6:0] trunc_ln12_reg_102;
wire [0:0] icmp_ln12_fu_81_p2;
reg [0:0] icmp_ln12_reg_107;
wire ap_CS_fsm_state3;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_array1_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_array1_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_array1_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_array1_d0;
reg grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_ap_start_reg;
wire ap_CS_fsm_state2;
wire [63:0] zext_ln32_fu_92_p1;
wire ap_CS_fsm_state4;
wire [6:0] add_ln30_fu_87_p2;
reg [3:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_ap_start_reg = 1'b0;
end
entry_point_array1_RAM_AUTO_1R1W #(
 .DataWidth( 32 ),
 .AddressRange( 100 ),
 .AddressWidth( 7 ))
array1_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(array1_address0),
 .ce0(array1_ce0),
 .we0(array1_we0),
 .d0(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_array1_d0),
 .q0(array1_q0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_12_1 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_ap_ready),
 .n_load(n),
 .array_r_load(array_r),
 .array1_address0(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_array1_address0),
 .array1_ce0(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_array1_ce0),
 .array1_we0(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_array1_we0),
 .array1_d0(grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_array1_d0)
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
 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln12_reg_107 <= icmp_ln12_fu_81_p2;
 trunc_ln12_reg_102 <= trunc_ln12_fu_77_p1;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_ap_done == 1'b0)) begin
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
 array1_address0 = zext_ln32_fu_92_p1;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 array1_address0 = grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_array1_address0;
 end else begin
 array1_address0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 array1_ce0 = 1'b1;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 array1_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_array1_ce0;
 end else begin
 array1_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 array1_we0 = grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_array1_we0;
 end else begin
 array1_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln12_reg_107 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
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
 if (((grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_ap_done == 1'b1) & (icmp_ln12_reg_107 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else if (((grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_ap_done == 1'b1) & (icmp_ln12_reg_107 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
assign add_ln30_fu_87_p2 = ($signed(trunc_ln12_reg_102) + $signed(7'd127));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_12_1_fu_67_ap_start_reg;
assign icmp_ln12_fu_81_p2 = (($signed(n) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign temptemp1 = array1_q0;
assign trunc_ln12_fu_77_p1 = n[6:0];
assign zext_ln32_fu_92_p1 = add_ln30_fu_87_p2;
endmodule
module entry_point_array1_RAM_AUTO_1R1W (
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
initial begin
 ram[0]=8'h0;
 ram[1]=8'h0;
 ram[2]=8'h0;
 ram[3]=8'h0;
 ram[4]=8'h0;
 ram[5]=8'h0;
 ram[6]=8'h0;
 ram[7]=8'h0;
 ram[8]=8'h0;
 ram[9]=8'h0;
 ram[10]=8'h0;
 ram[11]=8'h0;
 ram[12]=8'h0;
 ram[13]=8'h0;
 ram[14]=8'h0;
 ram[15]=8'h0;
 ram[16]=8'h0;
 ram[17]=8'h0;
 ram[18]=8'h0;
 ram[19]=8'h0;
 ram[20]=8'h0;
 ram[21]=8'h0;
 ram[22]=8'h0;
 ram[23]=8'h0;
 ram[24]=8'h0;
 ram[25]=8'h0;
 ram[26]=8'h0;
 ram[27]=8'h0;
 ram[28]=8'h0;
 ram[29]=8'h0;
 ram[30]=8'h0;
 ram[31]=8'h0;
 ram[32]=8'h0;
 ram[33]=8'h0;
 ram[34]=8'h0;
 ram[35]=8'h0;
 ram[36]=8'h0;
 ram[37]=8'h0;
 ram[38]=8'h0;
 ram[39]=8'h0;
 ram[40]=8'h0;
 ram[41]=8'h0;
 ram[42]=8'h0;
 ram[43]=8'h0;
 ram[44]=8'h0;
 ram[45]=8'h0;
 ram[46]=8'h0;
 ram[47]=8'h0;
 ram[48]=8'h0;
 ram[49]=8'h0;
 ram[50]=8'h0;
 ram[51]=8'h0;
 ram[52]=8'h0;
 ram[53]=8'h0;
 ram[54]=8'h0;
 ram[55]=8'h0;
 ram[56]=8'h0;
 ram[57]=8'h0;
 ram[58]=8'h0;
 ram[59]=8'h0;
 ram[60]=8'h0;
 ram[61]=8'h0;
 ram[62]=8'h0;
 ram[63]=8'h0;
 ram[64]=8'h0;
 ram[65]=8'h0;
 ram[66]=8'h0;
 ram[67]=8'h0;
 ram[68]=8'h0;
 ram[69]=8'h0;
 ram[70]=8'h0;
 ram[71]=8'h0;
 ram[72]=8'h0;
 ram[73]=8'h0;
 ram[74]=8'h0;
 ram[75]=8'h0;
 ram[76]=8'h0;
 ram[77]=8'h0;
 ram[78]=8'h0;
 ram[79]=8'h0;
 ram[80]=8'h0;
 ram[81]=8'h0;
 ram[82]=8'h0;
 ram[83]=8'h0;
 ram[84]=8'h0;
 ram[85]=8'h0;
 ram[86]=8'h0;
 ram[87]=8'h0;
 ram[88]=8'h0;
 ram[89]=8'h0;
 ram[90]=8'h0;
 ram[91]=8'h0;
 ram[92]=8'h0;
 ram[93]=8'h0;
 ram[94]=8'h0;
 ram[95]=8'h0;
 ram[96]=8'h0;
 ram[97]=8'h0;
 ram[98]=8'h0;
 ram[99]=8'h0;
end 
always @(posedge clk) 
begin 
 if (ce0) begin
 if (we0) 
 ram[address0] <= d0; 
 q0 <= ram[address0];
 end
end 
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_12_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n_load,
 array_r_load,
 array1_address0,
 array1_ce0,
 array1_we0,
 array1_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n_load;
input [31:0] array_r_load;
output [6:0] array1_address0;
output array1_ce0;
output array1_we0;
output [31:0] array1_d0;
reg ap_idle;
reg array1_ce0;
reg array1_we0;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln12_fu_70_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] i_cast1_fu_82_p1;
reg [6:0] i_fu_28;
wire [6:0] add_ln12_fu_76_p2;
wire ap_loop_init;
reg [6:0] ap_sig_allocacmp_i_1;
wire [31:0] i_cast_fu_66_p1;
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
 if ((icmp_ln12_fu_70_p2 == 1'd1)) begin
 i_fu_28 <= add_ln12_fu_76_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_28 <= 7'd0;
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
 if (((ap_start_int == 1'b1) & (icmp_ln12_fu_70_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_sig_allocacmp_i_1 = i_fu_28;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 array1_ce0 = 1'b1;
 end else begin
 array1_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (icmp_ln12_fu_70_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 array1_we0 = 1'b1;
 end else begin
 array1_we0 = 1'b0;
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
assign add_ln12_fu_76_p2 = (ap_sig_allocacmp_i_1 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign array1_address0 = i_cast1_fu_82_p1;
assign array1_d0 = array_r_load;
assign i_cast1_fu_82_p1 = ap_sig_allocacmp_i_1;
assign i_cast_fu_66_p1 = ap_sig_allocacmp_i_1;
assign icmp_ln12_fu_70_p2 = (($signed(i_cast_fu_66_p1) < $signed(n_load)) ? 1'b1 : 1'b0);
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
