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
 temptemp3,
 temptemp3_ap_vld,
 temptemp4,
 temptemp4_ap_vld,
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
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] temptemp4;
output temptemp4_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
(* fsm_encoding = "none" *) reg [5:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire ap_CS_fsm_state5;
reg [2:0] array_1_address0;
reg array_1_ce0;
reg array_1_we0;
reg [31:0] array_1_d0;
wire [31:0] array_1_q0;
reg array_1_ce1;
wire [31:0] array_1_q1;
reg [2:0] array_2_address0;
reg array_2_ce0;
reg array_2_we0;
reg [31:0] array_2_d0;
wire [31:0] array_2_q0;
reg array_2_ce1;
wire [31:0] array_2_q1;
wire grp_entry_point_Pipeline_1_fu_110_ap_start;
wire grp_entry_point_Pipeline_1_fu_110_ap_done;
wire grp_entry_point_Pipeline_1_fu_110_ap_idle;
wire grp_entry_point_Pipeline_1_fu_110_ap_ready;
wire [2:0] grp_entry_point_Pipeline_1_fu_110_array_1_address0;
wire grp_entry_point_Pipeline_1_fu_110_array_1_ce0;
wire grp_entry_point_Pipeline_1_fu_110_array_1_we0;
wire [31:0] grp_entry_point_Pipeline_1_fu_110_array_1_d0;
wire grp_entry_point_Pipeline_2_fu_118_ap_start;
wire grp_entry_point_Pipeline_2_fu_118_ap_done;
wire grp_entry_point_Pipeline_2_fu_118_ap_idle;
wire grp_entry_point_Pipeline_2_fu_118_ap_ready;
wire [2:0] grp_entry_point_Pipeline_2_fu_118_array_2_address0;
wire grp_entry_point_Pipeline_2_fu_118_array_2_ce0;
wire grp_entry_point_Pipeline_2_fu_118_array_2_we0;
wire [31:0] grp_entry_point_Pipeline_2_fu_118_array_2_d0;
wire grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_ap_start;
wire grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_ap_done;
wire grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_ap_idle;
wire grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_ap_ready;
wire [2:0] grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_1_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_1_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_1_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_1_d0;
wire [2:0] grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_1_address1;
wire grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_1_ce1;
wire [2:0] grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_2_address0;
wire grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_2_ce0;
wire grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_2_we0;
wire [31:0] grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_2_d0;
wire [2:0] grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_2_address1;
wire grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_2_ce1;
reg grp_entry_point_Pipeline_1_fu_110_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_entry_point_Pipeline_2_fu_118_ap_start_reg;
reg grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_ap_start_reg;
wire ap_CS_fsm_state3;
wire ap_CS_fsm_state4;
wire ap_CS_fsm_state6;
reg array_1_ce0_local;
reg array_2_ce0_local;
reg [5:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_block_state2_on_subcall_done;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ST_fsm_state6_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_entry_point_Pipeline_1_fu_110_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_2_fu_118_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_ap_start_reg = 1'b0;
end
entry_point_array_1_RAM_AUTO_1R1W #(
 .DataWidth( 32 ),
 .AddressRange( 6 ),
 .AddressWidth( 3 ))
array_1_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(array_1_address0),
 .ce0(array_1_ce0),
 .we0(array_1_we0),
 .d0(array_1_d0),
 .q0(array_1_q0),
 .address1(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_1_address1),
 .ce1(array_1_ce1),
 .q1(array_1_q1)
);
entry_point_array_1_RAM_AUTO_1R1W #(
 .DataWidth( 32 ),
 .AddressRange( 6 ),
 .AddressWidth( 3 ))
array_2_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(array_2_address0),
 .ce0(array_2_ce0),
 .we0(array_2_we0),
 .d0(array_2_d0),
 .q0(array_2_q0),
 .address1(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_2_address1),
 .ce1(array_2_ce1),
 .q1(array_2_q1)
);
entry_point_entry_point_Pipeline_1 grp_entry_point_Pipeline_1_fu_110(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_1_fu_110_ap_start),
 .ap_done(grp_entry_point_Pipeline_1_fu_110_ap_done),
 .ap_idle(grp_entry_point_Pipeline_1_fu_110_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_1_fu_110_ap_ready),
 .array_1_address0(grp_entry_point_Pipeline_1_fu_110_array_1_address0),
 .array_1_ce0(grp_entry_point_Pipeline_1_fu_110_array_1_ce0),
 .array_1_we0(grp_entry_point_Pipeline_1_fu_110_array_1_we0),
 .array_1_d0(grp_entry_point_Pipeline_1_fu_110_array_1_d0)
);
entry_point_entry_point_Pipeline_2 grp_entry_point_Pipeline_2_fu_118(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_2_fu_118_ap_start),
 .ap_done(grp_entry_point_Pipeline_2_fu_118_ap_done),
 .ap_idle(grp_entry_point_Pipeline_2_fu_118_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_2_fu_118_ap_ready),
 .array_2_address0(grp_entry_point_Pipeline_2_fu_118_array_2_address0),
 .array_2_ce0(grp_entry_point_Pipeline_2_fu_118_array_2_ce0),
 .array_2_we0(grp_entry_point_Pipeline_2_fu_118_array_2_we0),
 .array_2_d0(grp_entry_point_Pipeline_2_fu_118_array_2_d0)
);
entry_point_entry_point_Pipeline_VITIS_LOOP_6_1 grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_ap_start),
 .ap_done(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_ap_done),
 .ap_idle(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_ap_ready),
 .array_1_address0(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_1_address0),
 .array_1_ce0(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_1_ce0),
 .array_1_we0(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_1_we0),
 .array_1_d0(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_1_d0),
 .array_1_address1(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_1_address1),
 .array_1_ce1(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_1_ce1),
 .array_1_q1(array_1_q1),
 .array_2_address0(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_2_address0),
 .array_2_ce0(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_2_ce0),
 .array_2_we0(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_2_we0),
 .array_2_d0(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_2_d0),
 .array_2_address1(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_2_address1),
 .array_2_ce1(grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_2_ce1),
 .array_2_q1(array_2_q1)
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
 grp_entry_point_Pipeline_1_fu_110_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_1_fu_110_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_1_fu_110_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_1_fu_110_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_2_fu_118_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_2_fu_118_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_2_fu_118_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_2_fu_118_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_ap_start_reg <= 1'b0;
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
 if ((1'b1 == ap_block_state2_on_subcall_done)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
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
 if ((1'b1 == ap_CS_fsm_state6)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 array_1_address0 = grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_1_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 array_1_address0 = grp_entry_point_Pipeline_1_fu_110_array_1_address0;
 end else begin
 array_1_address0 = 64'd4;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 array_1_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_1_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 array_1_ce0 = grp_entry_point_Pipeline_1_fu_110_array_1_ce0;
 end else begin
 array_1_ce0 = array_1_ce0_local;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 array_1_ce0_local = 1'b1;
 end else begin
 array_1_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 array_1_ce1 = grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_1_ce1;
 end else begin
 array_1_ce1 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 array_1_d0 = grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_1_d0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 array_1_d0 = grp_entry_point_Pipeline_1_fu_110_array_1_d0;
 end else begin
 array_1_d0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 array_1_we0 = grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_1_we0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 array_1_we0 = grp_entry_point_Pipeline_1_fu_110_array_1_we0;
 end else begin
 array_1_we0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 array_2_address0 = grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_2_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 array_2_address0 = grp_entry_point_Pipeline_2_fu_118_array_2_address0;
 end else begin
 array_2_address0 = 64'd4;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 array_2_ce0 = grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_2_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 array_2_ce0 = grp_entry_point_Pipeline_2_fu_118_array_2_ce0;
 end else begin
 array_2_ce0 = array_2_ce0_local;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state5)) begin
 array_2_ce0_local = 1'b1;
 end else begin
 array_2_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 array_2_ce1 = grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_2_ce1;
 end else begin
 array_2_ce1 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 array_2_d0 = grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_2_d0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 array_2_d0 = grp_entry_point_Pipeline_2_fu_118_array_2_d0;
 end else begin
 array_2_d0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state4)) begin
 array_2_we0 = grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_array_2_we0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 array_2_we0 = grp_entry_point_Pipeline_2_fu_118_array_2_we0;
 end else begin
 array_2_we0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state6)) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
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
 if (((1'b1 == ap_CS_fsm_state2) & (1'b0 == ap_block_state2_on_subcall_done))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
 if (((grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 ap_ST_fsm_state6 : begin
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
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
always @ (*) begin
 ap_block_state2_on_subcall_done = ((grp_entry_point_Pipeline_2_fu_118_ap_done == 1'b0) | (grp_entry_point_Pipeline_1_fu_110_ap_done == 1'b0));
end
assign ap_return = 32'd0;
assign grp_entry_point_Pipeline_1_fu_110_ap_start = grp_entry_point_Pipeline_1_fu_110_ap_start_reg;
assign grp_entry_point_Pipeline_2_fu_118_ap_start = grp_entry_point_Pipeline_2_fu_118_ap_start_reg;
assign grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_ap_start = grp_entry_point_Pipeline_VITIS_LOOP_6_1_fu_126_ap_start_reg;
assign temptemp1 = 32'd4;
assign temptemp2 = array_1_q0;
assign temptemp3 = 32'd4;
assign temptemp4 = array_2_q0;
endmodule
module entry_point_array_1_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 address1, ce1,
 q1, 
 reset, clk);
parameter DataWidth = 32;
parameter AddressWidth = 3;
parameter AddressRange = 6;
input[AddressWidth-1:0] address0;
input ce0;
input[DataWidth-1:0] d0;
input we0; 
output reg[DataWidth-1:0] q0; 
input[AddressWidth-1:0] address1;
input ce1;
output reg[DataWidth-1:0] q1; 
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
always @(posedge clk) 
begin 
 if (ce1) begin
 q1 <= ram[address1];
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
 array_1_address0,
 array_1_ce0,
 array_1_we0,
 array_1_d0
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [2:0] array_1_address0;
output array_1_ce0;
output array_1_we0;
output [31:0] array_1_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] exitcond93_fu_65_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [2:0] entry_point_array_1_address0;
wire [31:0] entry_point_array_1_q0;
wire [63:0] loop_index3_cast_fu_77_p1;
reg [63:0] loop_index3_cast_reg_97;
wire ap_block_pp0_stage0_11001;
wire ap_block_pp0_stage0;
reg [2:0] loop_index3_fu_26;
wire [2:0] empty_fu_71_p2;
wire ap_loop_init;
reg [2:0] ap_sig_allocacmp_loop_index3_load;
reg entry_point_array_1_ce0_local;
reg array_1_we0_local;
reg array_1_ce0_local;
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
#0 loop_index3_fu_26 = 3'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_entry_point_Pipeline_1_entry_point_array_1_ROM_AUTO_1R #(
 .DataWidth( 32 ),
 .AddressRange( 6 ),
 .AddressWidth( 3 ))
entry_point_array_1_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(entry_point_array_1_address0),
 .ce0(entry_point_array_1_ce0_local),
 .q0(entry_point_array_1_q0)
);
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
 if (((exitcond93_fu_65_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 loop_index3_fu_26 <= empty_fu_71_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 loop_index3_fu_26 <= 3'd0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 loop_index3_cast_reg_97[2 : 0] <= loop_index3_cast_fu_77_p1[2 : 0];
 end
end
always @ (*) begin
 if (((exitcond93_fu_65_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 ap_sig_allocacmp_loop_index3_load = 3'd0;
 end else begin
 ap_sig_allocacmp_loop_index3_load = loop_index3_fu_26;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 array_1_ce0_local = 1'b1;
 end else begin
 array_1_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 array_1_we0_local = 1'b1;
 end else begin
 array_1_we0_local = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 entry_point_array_1_ce0_local = 1'b1;
 end else begin
 entry_point_array_1_ce0_local = 1'b0;
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
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign array_1_address0 = loop_index3_cast_reg_97;
assign array_1_ce0 = array_1_ce0_local;
assign array_1_d0 = entry_point_array_1_q0;
assign array_1_we0 = array_1_we0_local;
assign empty_fu_71_p2 = (ap_sig_allocacmp_loop_index3_load + 3'd1);
assign entry_point_array_1_address0 = loop_index3_cast_fu_77_p1;
assign exitcond93_fu_65_p2 = ((ap_sig_allocacmp_loop_index3_load == 3'd6) ? 1'b1 : 1'b0);
assign loop_index3_cast_fu_77_p1 = ap_sig_allocacmp_loop_index3_load;
always @ (posedge ap_clk) begin
 loop_index3_cast_reg_97[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end
endmodule
module entry_point_entry_point_Pipeline_1_entry_point_array_1_ROM_AUTO_1R (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 32;
parameter AddressWidth = 3;
parameter AddressRange = 6;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h00000000;
 rom0[1]=8'h00000001;
 rom0[2]=8'h00000002;
 rom0[3]=8'h00000003;
 rom0[4]=8'h00000004;
 rom0[5]=8'h00000000;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_entry_point_Pipeline_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 array_2_address0,
 array_2_ce0,
 array_2_we0,
 array_2_d0
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [2:0] array_2_address0;
output array_2_ce0;
output array_2_we0;
output [31:0] array_2_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] exitcond2_fu_65_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [2:0] entry_point_array_2_address0;
wire [31:0] entry_point_array_2_q0;
wire [63:0] loop_index_cast_fu_77_p1;
reg [63:0] loop_index_cast_reg_97;
wire ap_block_pp0_stage0_11001;
wire ap_block_pp0_stage0;
reg [2:0] loop_index_fu_26;
wire [2:0] empty_fu_71_p2;
wire ap_loop_init;
reg [2:0] ap_sig_allocacmp_loop_index_load;
reg entry_point_array_2_ce0_local;
reg array_2_we0_local;
reg array_2_ce0_local;
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
#0 loop_index_fu_26 = 3'd0;
#0 ap_done_reg = 1'b0;
end
entry_point_entry_point_Pipeline_2_entry_point_array_2_ROM_AUTO_1R #(
 .DataWidth( 32 ),
 .AddressRange( 6 ),
 .AddressWidth( 3 ))
entry_point_array_2_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(entry_point_array_2_address0),
 .ce0(entry_point_array_2_ce0_local),
 .q0(entry_point_array_2_q0)
);
entry_point_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
 if (((exitcond2_fu_65_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 loop_index_fu_26 <= empty_fu_71_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 loop_index_fu_26 <= 3'd0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 loop_index_cast_reg_97[2 : 0] <= loop_index_cast_fu_77_p1[2 : 0];
 end
end
always @ (*) begin
 if (((exitcond2_fu_65_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 ap_sig_allocacmp_loop_index_load = 3'd0;
 end else begin
 ap_sig_allocacmp_loop_index_load = loop_index_fu_26;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 array_2_ce0_local = 1'b1;
 end else begin
 array_2_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 array_2_we0_local = 1'b1;
 end else begin
 array_2_we0_local = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 entry_point_array_2_ce0_local = 1'b1;
 end else begin
 entry_point_array_2_ce0_local = 1'b0;
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
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign array_2_address0 = loop_index_cast_reg_97;
assign array_2_ce0 = array_2_ce0_local;
assign array_2_d0 = entry_point_array_2_q0;
assign array_2_we0 = array_2_we0_local;
assign empty_fu_71_p2 = (ap_sig_allocacmp_loop_index_load + 3'd1);
assign entry_point_array_2_address0 = loop_index_cast_fu_77_p1;
assign exitcond2_fu_65_p2 = ((ap_sig_allocacmp_loop_index_load == 3'd6) ? 1'b1 : 1'b0);
assign loop_index_cast_fu_77_p1 = ap_sig_allocacmp_loop_index_load;
always @ (posedge ap_clk) begin
 loop_index_cast_reg_97[63:3] <= 61'b0000000000000000000000000000000000000000000000000000000000000;
end
endmodule
module entry_point_entry_point_Pipeline_2_entry_point_array_2_ROM_AUTO_1R (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 32;
parameter AddressWidth = 3;
parameter AddressRange = 6;
input[AddressWidth-1:0] address0;
input ce0;
output reg[DataWidth-1:0] q0;
input reset;
input clk;
reg [DataWidth-1:0] rom0[0:AddressRange-1];
initial begin
 rom0[0]=8'h00000005;
 rom0[1]=8'h00000006;
 rom0[2]=8'h00000007;
 rom0[3]=8'h00000008;
 rom0[4]=8'h00000009;
 rom0[5]=8'h00000000;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
module entry_point_entry_point_Pipeline_VITIS_LOOP_6_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 array_1_address0,
 array_1_ce0,
 array_1_we0,
 array_1_d0,
 array_1_address1,
 array_1_ce1,
 array_1_q1,
 array_2_address0,
 array_2_ce0,
 array_2_we0,
 array_2_d0,
 array_2_address1,
 array_2_ce1,
 array_2_q1
);
parameter ap_ST_fsm_pp0_stage0 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [2:0] array_1_address0;
output array_1_ce0;
output array_1_we0;
output [31:0] array_1_d0;
output [2:0] array_1_address1;
output array_1_ce1;
input [31:0] array_1_q1;
output [2:0] array_2_address0;
output array_2_ce0;
output array_2_we0;
output [31:0] array_2_d0;
output [2:0] array_2_address1;
output array_2_ce1;
input [31:0] array_2_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_pp0_stage0;
wire ap_enable_reg_pp0_iter0;
reg ap_enable_reg_pp0_iter1;
reg ap_idle_pp0;
wire ap_block_pp0_stage0_subdone;
wire [0:0] icmp_ln6_fu_78_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [2:0] array_1_addr_reg_111;
wire ap_block_pp0_stage0_11001;
reg [2:0] array_2_addr_reg_117;
wire [63:0] zext_ln6_fu_90_p1;
wire ap_block_pp0_stage0;
reg [2:0] i_fu_30;
wire [2:0] add_ln10_fu_84_p2;
wire ap_loop_init;
reg [2:0] ap_sig_allocacmp_i_1;
reg array_1_ce1_local;
reg array_1_we0_local;
reg array_1_ce0_local;
reg array_2_ce1_local;
reg array_2_we0_local;
reg array_2_ce0_local;
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
#0 i_fu_30 = 3'd0;
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
 if (((icmp_ln6_fu_78_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
 i_fu_30 <= add_ln10_fu_84_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 i_fu_30 <= 3'd0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 array_1_addr_reg_111 <= zext_ln6_fu_90_p1;
 array_2_addr_reg_117 <= zext_ln6_fu_90_p1;
 end
end
always @ (*) begin
 if (((icmp_ln6_fu_78_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
 ap_sig_allocacmp_i_1 = 3'd0;
 end else begin
 ap_sig_allocacmp_i_1 = i_fu_30;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 array_1_ce0_local = 1'b1;
 end else begin
 array_1_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 array_1_ce1_local = 1'b1;
 end else begin
 array_1_ce1_local = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 array_1_we0_local = 1'b1;
 end else begin
 array_1_we0_local = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 array_2_ce0_local = 1'b1;
 end else begin
 array_2_ce0_local = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 array_2_ce1_local = 1'b1;
 end else begin
 array_2_ce1_local = 1'b0;
 end
end
always @ (*) begin
 if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
 array_2_we0_local = 1'b1;
 end else begin
 array_2_we0_local = 1'b0;
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
assign add_ln10_fu_84_p2 = (ap_sig_allocacmp_i_1 + 3'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign array_1_address0 = array_1_addr_reg_111;
assign array_1_address1 = zext_ln6_fu_90_p1;
assign array_1_ce0 = array_1_ce0_local;
assign array_1_ce1 = array_1_ce1_local;
assign array_1_d0 = array_2_q1;
assign array_1_we0 = array_1_we0_local;
assign array_2_address0 = array_2_addr_reg_117;
assign array_2_address1 = zext_ln6_fu_90_p1;
assign array_2_ce0 = array_2_ce0_local;
assign array_2_ce1 = array_2_ce1_local;
assign array_2_d0 = array_1_q1;
assign array_2_we0 = array_2_we0_local;
assign icmp_ln6_fu_78_p2 = ((ap_sig_allocacmp_i_1 == 3'd5) ? 1'b1 : 1'b0);
assign zext_ln6_fu_90_p1 = ap_sig_allocacmp_i_1;
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
