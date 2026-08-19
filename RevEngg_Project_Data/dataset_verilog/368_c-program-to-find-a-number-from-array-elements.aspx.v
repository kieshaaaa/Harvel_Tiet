module entry_point (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n,
 item,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
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
input [31:0] n;
input [31:0] item;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
(* fsm_encoding = "none" *) reg [2:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [30:0] trunc_ln29_fu_90_p1;
reg [30:0] trunc_ln29_reg_121;
wire [0:0] icmp_ln13_fu_95_p2;
reg [0:0] icmp_ln13_reg_133;
wire [0:0] grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_return;
reg [0:0] targetBlock_reg_137;
wire ap_CS_fsm_state2;
wire grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_ready;
wire [30:0] grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_i_cast_out;
wire grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_i_cast_out_ap_vld;
reg [31:0] ap_phi_mux_pos_phi_fu_74_p4;
wire ap_CS_fsm_state3;
wire [31:0] i_cast_reload_cast_fu_104_p1;
reg grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_start_reg;
reg [30:0] i_cast_loc_fu_34;
wire [0:0] icmp_ln30_fu_109_p2;
reg [2:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_start_reg = 1'b0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_13_1 grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_ready),
 .n_load(trunc_ln29_reg_121),
 .item_load(item),
 .i_cast_out(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_i_cast_out),
 .i_cast_out_ap_vld(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_i_cast_out_ap_vld),
 .ap_return(grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_return)
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
 grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_start_reg <= 1'b0;
 end else begin
 if (((ap_start == 1'b1) & (icmp_ln13_fu_95_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_i_cast_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 i_cast_loc_fu_34 <= grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_i_cast_out;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state1)) begin
 icmp_ln13_reg_133 <= icmp_ln13_fu_95_p2;
 trunc_ln29_reg_121 <= trunc_ln29_fu_90_p1;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 targetBlock_reg_137 <= grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_return;
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
 if ((grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_done == 1'b0)) begin
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
 if (((targetBlock_reg_137 == 1'd0) & (icmp_ln13_reg_133 == 1'd1))) begin
 ap_phi_mux_pos_phi_fu_74_p4 = i_cast_reload_cast_fu_104_p1;
 end else if (((targetBlock_reg_137 == 1'd1) | (icmp_ln13_reg_133 == 1'd0))) begin
 ap_phi_mux_pos_phi_fu_74_p4 = 32'd4294967295;
 end else begin
 ap_phi_mux_pos_phi_fu_74_p4 = 'bx;
 end
 end else begin
 ap_phi_mux_pos_phi_fu_74_p4 = 'bx;
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
 if (((icmp_ln30_fu_109_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln30_fu_109_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln30_fu_109_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((ap_start == 1'b1) & (icmp_ln13_fu_95_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else if (((ap_start == 1'b1) & (icmp_ln13_fu_95_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_13_1_fu_82_ap_start_reg;
assign i_cast_reload_cast_fu_104_p1 = i_cast_loc_fu_34;
assign icmp_ln13_fu_95_p2 = (($signed(n) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_109_p2 = ((ap_phi_mux_pos_phi_fu_74_p4 == 32'd4294967295) ? 1'b1 : 1'b0);
assign temptemp1 = item;
assign temptemp2 = item;
assign temptemp3 = ap_phi_mux_pos_phi_fu_74_p4;
assign trunc_ln29_fu_90_p1 = n[30:0];
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_13_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 n_load,
 item_load,
 i_cast_out,
 i_cast_out_ap_vld,
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
input [30:0] n_load;
input [31:0] item_load;
output [30:0] i_cast_out;
output i_cast_out_ap_vld;
output [0:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg i_cast_out_ap_vld;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg [4:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg [30:0] i_1_reg_139;
wire ap_CS_fsm_state2;
wire [0:0] icmp_ln13_fu_97_p2;
reg [0:0] icmp_ln13_reg_144;
wire [30:0] add_ln13_fu_102_p2;
reg [30:0] add_ln13_reg_148;
wire [4:0] arr_address0;
reg arr_ce0;
wire [31:0] arr_q0;
reg [0:0] ap_phi_mux_UnifiedRetVal_phi_fu_81_p4;
reg [0:0] UnifiedRetVal_reg_77;
wire ap_CS_fsm_state5;
wire ap_CS_fsm_state4;
wire [63:0] trunc_ln30_cast_fu_108_p1;
reg [30:0] i_fu_38;
wire ap_CS_fsm_state3;
wire [0:0] icmp_ln14_fu_113_p2;
reg [0:0] ap_return_preg;
reg [4:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
wire ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_return_preg = 1'd0;
end
entry_point_entry_point_Pipeline_VITIS_LOOP_13_1_arr_RAM_AUTO_1R1W #(
 .DataWidth( 32 ),
 .AddressRange( 20 ),
 .AddressWidth( 5 ))
arr_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(arr_address0),
 .ce0(arr_ce0),
 .q0(arr_q0)
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
 ap_return_preg <= 1'd0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 ap_return_preg <= ap_phi_mux_UnifiedRetVal_phi_fu_81_p4;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((icmp_ln13_reg_144 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 UnifiedRetVal_reg_77 <= 1'd0;
 end else if ((1'b1 == ap_CS_fsm_state5)) begin
 UnifiedRetVal_reg_77 <= 1'd1;
 end
end
always @ (posedge ap_clk) begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 i_fu_38 <= 31'd0;
 end else if (((icmp_ln14_fu_113_p2 == 1'd0) & (icmp_ln13_reg_144 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 i_fu_38 <= add_ln13_reg_148;
 end
end
always @ (posedge ap_clk) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 add_ln13_reg_148 <= add_ln13_fu_102_p2;
 i_1_reg_139 <= i_fu_38;
 icmp_ln13_reg_144 <= icmp_ln13_fu_97_p2;
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
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
 if (((icmp_ln13_reg_144 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_phi_mux_UnifiedRetVal_phi_fu_81_p4 = 1'd0;
 end else begin
 ap_phi_mux_UnifiedRetVal_phi_fu_81_p4 = UnifiedRetVal_reg_77;
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
 if ((1'b1 == ap_CS_fsm_state4)) begin
 ap_return = ap_phi_mux_UnifiedRetVal_phi_fu_81_p4;
 end else begin
 ap_return = ap_return_preg;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state2)) begin
 arr_ce0 = 1'b1;
 end else begin
 arr_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state5) | ((icmp_ln13_reg_144 == 1'd1) & (1'b1 == ap_CS_fsm_state4)))) begin
 i_cast_out_ap_vld = 1'b1;
 end else begin
 i_cast_out_ap_vld = 1'b0;
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
 if (((icmp_ln14_fu_113_p2 == 1'd0) & (icmp_ln13_reg_144 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else if (((icmp_ln13_reg_144 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state4 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln13_fu_102_p2 = (i_fu_38 + 31'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign arr_address0 = trunc_ln30_cast_fu_108_p1;
assign i_cast_out = i_1_reg_139;
assign icmp_ln13_fu_97_p2 = ((i_fu_38 < n_load) ? 1'b1 : 1'b0);
assign icmp_ln14_fu_113_p2 = ((arr_q0 == item_load) ? 1'b1 : 1'b0);
assign trunc_ln30_cast_fu_108_p1 = i_fu_38;
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_13_1_arr_RAM_AUTO_1R1W (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 32;
parameter AddressWidth = 5;
parameter AddressRange = 20;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h0;
 rom0[1]=8'h0;
 rom0[2]=8'h0;
 rom0[3]=8'h0;
 rom0[4]=8'h0;
 rom0[5]=8'h0;
 rom0[6]=8'h0;
 rom0[7]=8'h0;
 rom0[8]=8'h0;
 rom0[9]=8'h0;
 rom0[10]=8'h0;
 rom0[11]=8'h0;
 rom0[12]=8'h0;
 rom0[13]=8'h0;
 rom0[14]=8'h0;
 rom0[15]=8'h0;
 rom0[16]=8'h0;
 rom0[17]=8'h0;
 rom0[18]=8'h0;
 rom0[19]=8'h0;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
