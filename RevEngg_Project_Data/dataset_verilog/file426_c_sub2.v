module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n,
 array_r_i,
 array_r_o,
 array_r_o_ap_vld,
 temptemp1,
 temptemp1_ap_vld
);
parameter ap_ST_fsm_state1 = 7'd1;
parameter ap_ST_fsm_state2 = 7'd2;
parameter ap_ST_fsm_state3 = 7'd4;
parameter ap_ST_fsm_state4 = 7'd8;
parameter ap_ST_fsm_state5 = 7'd16;
parameter ap_ST_fsm_state6 = 7'd32;
parameter ap_ST_fsm_state7 = 7'd64;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n;
input [31:0] array_r_i;
output [31:0] array_r_o;
output array_r_o_ap_vld;
output [31:0] temptemp1;
output temptemp1_ap_vld;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] array_r_o;
reg array_r_o_ap_vld;
reg temptemp1_ap_vld;
(* fsm_encoding = "none" *) reg [6:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [6:0] array1_address0;
reg array1_ce0;
reg array1_we0;
wire [31:0] array1_q0;
wire [0:0] icmp_ln11_fu_157_p2;
reg [0:0] icmp_ln11_reg_269;
wire ap_CS_fsm_state2;
wire signed [63:0] sext_ln14_fu_167_p1;
reg signed [63:0] sext_ln14_reg_273;
wire signed [63:0] sext_ln14_1_fu_176_p1;
reg signed [63:0] sext_ln14_1_reg_278;
wire [1:0] k_2_fu_189_p2;
reg [1:0] k_2_reg_287;
wire ap_CS_fsm_state3;
wire [0:0] icmp_ln14_fu_183_p2;
wire [63:0] add_ln15_fu_203_p2;
reg [63:0] add_ln15_reg_300;
wire ap_CS_fsm_state4;
wire [0:0] tmp_fu_195_p3;
wire [0:0] icmp_ln16_fu_209_p2;
reg [0:0] icmp_ln16_reg_305;
wire [63:0] select_ln16_fu_223_p3;
reg [63:0] select_ln16_reg_309;
wire [63:0] add_ln15_1_fu_236_p2;
wire ap_CS_fsm_state5;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_ap_ready;
wire [6:0] grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_array1_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_array1_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_array1_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_array1_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_4_fu_132_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_4_fu_132_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_4_fu_132_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_16_4_fu_132_ap_ready;
wire grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_ap_ready;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_array_r;
wire grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_array_r_ap_vld;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_p_out_o;
wire grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_p_out_o_ap_vld;
reg [63:0] i_1_reg_103;
reg ap_block_state5_on_subcall_done;
reg [63:0] indvars_iv_reg_112;
reg grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_ap_start_reg;
reg grp_entry_point_Pipeline_VITIS_LOOP_16_4_fu_132_ap_start_reg;
reg grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_ap_start_reg;
wire ap_CS_fsm_state6;
reg [31:0] empty_fu_66;
reg [1:0] k_fu_62;
wire ap_CS_fsm_state7;
wire [31:0] add_ln14_fu_162_p2;
wire [31:0] add_ln14_1_fu_171_p2;
wire [0:0] tmp_4_fu_215_p3;
reg [6:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
reg ap_ST_fsm_state5_blk;
reg ap_ST_fsm_state6_blk;
wire ap_ST_fsm_state7_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_16_4_fu_132_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_ap_start_reg = 1'b0;
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
 .d0(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_array1_d0),
 .q0(array1_q0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_11_1 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_ap_ready),
 .n_load(n),
 .array_r_load(array_r_i),
 .array1_address0(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_array1_address0),
 .array1_ce0(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_array1_ce0),
 .array1_we0(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_array1_we0),
 .array1_d0(grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_array1_d0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_16_4 grp_entry_point_Pipeline_VITIS_LOOP_16_4_fu_132(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_16_4_fu_132_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_16_4_fu_132_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_16_4_fu_132_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_16_4_fu_132_ap_ready),
 .indvars_iv(indvars_iv_reg_112),
 .select_ln16(select_ln16_reg_309)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_27_5 grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_ap_ready),
 .n_load(n),
 .array_r(grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_array_r),
 .array_r_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_array_r_ap_vld),
 .p_out_i(empty_fu_66),
 .p_out_o(grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_p_out_o),
 .p_out_o_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_p_out_o_ap_vld)
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
 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_4_fu_132_ap_start_reg <= 1'b0;
 end else begin
 if (((icmp_ln16_fu_209_p2 == 1'd1) & (tmp_fu_195_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_4_fu_132_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_16_4_fu_132_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_16_4_fu_132_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_ap_start_reg <= 1'b0;
 end else begin
 if (((tmp_fu_195_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 empty_fu_66 <= array_r_i;
 end else if (((1'b1 == ap_CS_fsm_state6) & (grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_p_out_o_ap_vld == 1'b1))) begin
 empty_fu_66 <= grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_p_out_o;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln14_fu_183_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 i_1_reg_103 <= sext_ln14_1_reg_278;
 end else if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
 i_1_reg_103 <= add_ln15_reg_300;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln14_fu_183_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 indvars_iv_reg_112 <= sext_ln14_reg_273;
 end else if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
 indvars_iv_reg_112 <= add_ln15_1_fu_236_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 k_fu_62 <= 2'd0;
 end else if (((tmp_fu_195_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 k_fu_62 <= k_2_reg_287;
 end
end
always @ (posedge ap_clk) begin
 if (((tmp_fu_195_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 add_ln15_reg_300 <= add_ln15_fu_203_p2;
 icmp_ln16_reg_305 <= icmp_ln16_fu_209_p2;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 icmp_ln11_reg_269 <= icmp_ln11_fu_157_p2;
 sext_ln14_1_reg_278 <= sext_ln14_1_fu_176_p1;
 sext_ln14_reg_273 <= sext_ln14_fu_167_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 k_2_reg_287 <= k_2_fu_189_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln16_fu_209_p2 == 1'd1) & (tmp_fu_195_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 select_ln16_reg_309 <= select_ln16_fu_223_p3;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_block_state5_on_subcall_done)) begin
 ap_ST_fsm_state5_blk = 1'b1;
 end else begin
 ap_ST_fsm_state5_blk = 1'b0;
 end
end
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_ap_done == 1'b0)) begin
 ap_ST_fsm_state6_blk = 1'b1;
 end else begin
 ap_ST_fsm_state6_blk = 1'b0;
 end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
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
 if ((1'b1 == ap_CS_fsm_state7)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 array1_address0 = sext_ln14_1_reg_278;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 array1_address0 = grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_array1_address0;
 end else begin
 array1_address0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 array1_ce0 = 1'b1;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 array1_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_array1_ce0;
 end else begin
 array1_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 array1_we0 = grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_array1_we0;
 end else begin
 array1_we0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state6) & (grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_array_r_ap_vld == 1'b1))) begin
 array_r_o = grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_array_r;
 end else begin
 array_r_o = array_r_i;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 array_r_o_ap_vld = grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_array_r_ap_vld;
 end else begin
 array_r_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln11_reg_269 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
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
 if (((1'b1 == ap_CS_fsm_state2) & (grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_ap_done == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 if (((icmp_ln14_fu_183_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state4 : begin
 if (((tmp_fu_195_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 end
 ap_ST_fsm_state5 : begin
 if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5_on_subcall_done))) begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end
 end
 ap_ST_fsm_state6 : begin
 if (((1'b1 == ap_CS_fsm_state6) & (grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_ap_done == 1'b1))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 end
 ap_ST_fsm_state7 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln14_1_fu_171_p2 = ($signed(n) + $signed(32'd4294967295));
assign add_ln14_fu_162_p2 = ($signed(n) + $signed(32'd4294967294));
assign add_ln15_1_fu_236_p2 = ($signed(indvars_iv_reg_112) + $signed(64'd18446744073709551615));
assign add_ln15_fu_203_p2 = ($signed(i_1_reg_103) + $signed(64'd18446744073709551615));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
always @ (*) begin
 ap_block_state5_on_subcall_done = ((icmp_ln16_reg_305 == 1'd1) & (grp_entry_point_Pipeline_VITIS_LOOP_16_4_fu_132_ap_done == 1'b0));
end
assign grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_11_1_fu_122_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_16_4_fu_132_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_16_4_fu_132_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_27_5_fu_139_ap_start_reg;
assign icmp_ln11_fu_157_p2 = (($signed(n) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln14_fu_183_p2 = ((k_fu_62 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_209_p2 = (($signed(i_1_reg_103) > $signed(64'd0)) ? 1'b1 : 1'b0);
assign k_2_fu_189_p2 = (k_fu_62 + 2'd1);
assign select_ln16_fu_223_p3 = ((tmp_4_fu_215_p3[0:0] == 1'b1) ? indvars_iv_reg_112 : 64'd0);
assign sext_ln14_1_fu_176_p1 = $signed(add_ln14_1_fu_171_p2);
assign sext_ln14_fu_167_p1 = $signed(add_ln14_fu_162_p2);
assign temptemp1 = array1_q0;
assign tmp_4_fu_215_p3 = indvars_iv_reg_112[32'd63];
assign tmp_fu_195_p3 = i_1_reg_103[32'd63];
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
module entry_point_entry_point_Pipeline_VITIS_LOOP_11_1 (
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
wire [0:0] icmp_ln11_fu_70_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] i_cast1_fu_82_p1;
reg [6:0] i_fu_28;
wire [6:0] add_ln11_fu_76_p2;
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
 if ((icmp_ln11_fu_70_p2 == 1'd1)) begin
 i_fu_28 <= add_ln11_fu_76_p2;
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
 if (((ap_start_int == 1'b1) & (icmp_ln11_fu_70_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
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
 if (((ap_start_int == 1'b1) & (icmp_ln11_fu_70_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
assign add_ln11_fu_76_p2 = (ap_sig_allocacmp_i_1 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign array1_address0 = i_cast1_fu_82_p1;
assign array1_d0 = array_r_load;
assign i_cast1_fu_82_p1 = ap_sig_allocacmp_i_1;
assign i_cast_fu_66_p1 = ap_sig_allocacmp_i_1;
assign icmp_ln11_fu_70_p2 = (($signed(i_cast_fu_66_p1) < $signed(n_load)) ? 1'b1 : 1'b0);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_16_4 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 indvars_iv,
 select_ln16
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [63:0] indvars_iv;
input [63:0] select_ln16;
reg ap_idle;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_state1_pp0_stage0_iter0;
wire ap_block_state2_pp0_stage0_iter1;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln16_fu_46_p2;
reg ap_condition_exit_pp0_iter1_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire ap_block_pp0_stage0_11001;
reg [63:0] j_fu_22;
wire [63:0] add_ln16_fu_51_p2;
wire ap_loop_init;
wire ap_block_pp0_stage0;
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
 j_fu_22 <= indvars_iv;
 end else if (((icmp_ln16_fu_46_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
 j_fu_22 <= add_ln16_fu_51_p2;
 end
 end
end
always @ (*) begin
 if (((icmp_ln16_fu_46_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 case (ap_CS_fsm)
 ap_ST_fsm_pp0_stage0 : begin
 ap_NS_fsm = ap_ST_fsm_pp0_stage0;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln16_fu_51_p2 = ($signed(j_fu_22) + $signed(64'd18446744073709551615));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);
assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign icmp_ln16_fu_46_p2 = (($signed(j_fu_22) < $signed(select_ln16)) ? 1'b1 : 1'b0);
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_27_5 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n_load,
 array_r,
 array_r_ap_vld,
 p_out_i,
 p_out_o,
 p_out_o_ap_vld
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] n_load;
output [31:0] array_r;
output array_r_ap_vld;
input [31:0] p_out_i;
output [31:0] p_out_o;
output p_out_o_ap_vld;
reg ap_idle;
reg array_r_ap_vld;
reg[31:0] p_out_o;
reg p_out_o_ap_vld;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] icmp_ln27_fu_77_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [31:0] select_ln28_1_fu_159_p3;
reg [30:0] i_2_fu_48;
wire [30:0] add_ln27_fu_83_p2;
wire ap_loop_init;
reg [30:0] ap_sig_allocacmp_i_2_load;
wire [31:0] i_2_cast_fu_73_p1;
wire [33:0] mul_ln28_fu_97_p1;
wire [64:0] mul_ln28_fu_97_p2;
wire signed [31:0] tmp_fu_109_p1;
wire [64:0] sub_ln28_fu_103_p2;
wire signed [28:0] tmp_3_fu_127_p4;
wire [0:0] tmp_fu_109_p3;
wire [28:0] tmp_2_fu_117_p4;
wire [28:0] select_ln28_2_fu_141_p3;
wire signed [31:0] sext_ln28_2_fu_149_p1;
wire [31:0] sub_ln28_1_fu_153_p2;
wire signed [31:0] sext_ln28_1_fu_137_p1;
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
entry_point_mul_32s_34ns_65_1_1 #(
 .ID( 1 ),
 .NUM_STAGE( 1 ),
 .din0_WIDTH( 32 ),
 .din1_WIDTH( 34 ),
 .dout_WIDTH( 65 ))
mul_32s_34ns_65_1_1_U6(
 .din0(p_out_i),
 .din1(mul_ln28_fu_97_p1),
 .dout(mul_ln28_fu_97_p2)
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 if ((icmp_ln27_fu_77_p2 == 1'd1)) begin
 i_2_fu_48 <= add_ln27_fu_83_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_2_fu_48 <= 31'd0;
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
 if (((icmp_ln27_fu_77_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
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
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_i_2_load = 31'd0;
 end else begin
 ap_sig_allocacmp_i_2_load = i_2_fu_48;
 end
end
always @ (*) begin
 if (((icmp_ln27_fu_77_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 array_r_ap_vld = 1'b1;
 end else begin
 array_r_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln27_fu_77_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 p_out_o = select_ln28_1_fu_159_p3;
 end else begin
 p_out_o = p_out_i;
 end
end
always @ (*) begin
 if (((icmp_ln27_fu_77_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
 p_out_o_ap_vld = 1'b1;
 end else begin
 p_out_o_ap_vld = 1'b0;
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
assign add_ln27_fu_83_p2 = (ap_sig_allocacmp_i_2_load + 31'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign array_r = ((tmp_fu_109_p3[0:0] == 1'b1) ? sub_ln28_1_fu_153_p2 : sext_ln28_1_fu_137_p1);
assign i_2_cast_fu_73_p1 = ap_sig_allocacmp_i_2_load;
assign icmp_ln27_fu_77_p2 = (($signed(i_2_cast_fu_73_p1) < $signed(n_load)) ? 1'b1 : 1'b0);
assign mul_ln28_fu_97_p1 = 65'd6871947674;
assign select_ln28_1_fu_159_p3 = ((tmp_fu_109_p3[0:0] == 1'b1) ? sub_ln28_1_fu_153_p2 : sext_ln28_1_fu_137_p1);
assign select_ln28_2_fu_141_p3 = ((tmp_fu_109_p3[0:0] == 1'b1) ? tmp_2_fu_117_p4 : tmp_3_fu_127_p4);
assign sext_ln28_1_fu_137_p1 = tmp_3_fu_127_p4;
assign sext_ln28_2_fu_149_p1 = $signed(select_ln28_2_fu_141_p3);
assign sub_ln28_1_fu_153_p2 = ($signed(32'd0) - $signed(sext_ln28_2_fu_149_p1));
assign sub_ln28_fu_103_p2 = (65'd0 - mul_ln28_fu_97_p2);
assign tmp_2_fu_117_p4 = {{sub_ln28_fu_103_p2[64:36]}};
assign tmp_3_fu_127_p4 = {{mul_ln28_fu_97_p2[64:36]}};
assign tmp_fu_109_p1 = p_out_i;
assign tmp_fu_109_p3 = tmp_fu_109_p1[32'd31];
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
module entry_point_mul_32s_34ns_65_1_1(din0, din1, dout);
parameter ID = 1;
parameter NUM_STAGE = 0;
parameter din0_WIDTH = 14;
parameter din1_WIDTH = 12;
parameter dout_WIDTH = 26;
input [din0_WIDTH - 1 : 0] din0; 
input [din1_WIDTH - 1 : 0] din1; 
output [dout_WIDTH - 1 : 0] dout;
assign dout = $signed(din0) * $signed({1'b0, din1});
endmodule
