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
 ap_return
);
parameter ap_ST_fsm_state1 = 14'd1;
parameter ap_ST_fsm_state2 = 14'd2;
parameter ap_ST_fsm_state3 = 14'd4;
parameter ap_ST_fsm_state4 = 14'd8;
parameter ap_ST_fsm_state5 = 14'd16;
parameter ap_ST_fsm_state6 = 14'd32;
parameter ap_ST_fsm_state7 = 14'd64;
parameter ap_ST_fsm_state8 = 14'd128;
parameter ap_ST_fsm_state9 = 14'd256;
parameter ap_ST_fsm_state10 = 14'd512;
parameter ap_ST_fsm_state11 = 14'd1024;
parameter ap_ST_fsm_state12 = 14'd2048;
parameter ap_ST_fsm_state13 = 14'd4096;
parameter ap_ST_fsm_state14 = 14'd8192;
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
output [31:0] temptemp3;
output temptemp3_ap_vld;
output [31:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
(* fsm_encoding = "none" *) reg [13:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire [3:0] buffer_addr_reg_124;
wire ap_CS_fsm_state5;
wire ap_CS_fsm_state13;
reg [3:0] buffer_address0;
reg buffer_ce0;
reg buffer_we0;
reg [5:0] buffer_d0;
wire [5:0] buffer_q0;
wire grp_entry_point_Pipeline_1_fu_88_ap_start;
wire grp_entry_point_Pipeline_1_fu_88_ap_done;
wire grp_entry_point_Pipeline_1_fu_88_ap_idle;
wire grp_entry_point_Pipeline_1_fu_88_ap_ready;
wire [3:0] grp_entry_point_Pipeline_1_fu_88_buffer_r_address0;
wire grp_entry_point_Pipeline_1_fu_88_buffer_r_ce0;
wire grp_entry_point_Pipeline_1_fu_88_buffer_r_we0;
wire [5:0] grp_entry_point_Pipeline_1_fu_88_buffer_r_d0;
wire grp_entry_point_Pipeline_2_fu_94_ap_start;
wire grp_entry_point_Pipeline_2_fu_94_ap_done;
wire grp_entry_point_Pipeline_2_fu_94_ap_idle;
wire grp_entry_point_Pipeline_2_fu_94_ap_ready;
wire [3:0] grp_entry_point_Pipeline_2_fu_94_buffer_r_address0;
wire grp_entry_point_Pipeline_2_fu_94_buffer_r_ce0;
wire grp_entry_point_Pipeline_2_fu_94_buffer_r_we0;
wire [5:0] grp_entry_point_Pipeline_2_fu_94_buffer_r_d0;
wire grp_entry_point_Pipeline_3_fu_99_ap_start;
wire grp_entry_point_Pipeline_3_fu_99_ap_done;
wire grp_entry_point_Pipeline_3_fu_99_ap_idle;
wire grp_entry_point_Pipeline_3_fu_99_ap_ready;
wire [3:0] grp_entry_point_Pipeline_3_fu_99_buffer_r_address0;
wire grp_entry_point_Pipeline_3_fu_99_buffer_r_ce0;
wire grp_entry_point_Pipeline_3_fu_99_buffer_r_we0;
wire [5:0] grp_entry_point_Pipeline_3_fu_99_buffer_r_d0;
wire grp_entry_point_Pipeline_4_fu_104_ap_start;
wire grp_entry_point_Pipeline_4_fu_104_ap_done;
wire grp_entry_point_Pipeline_4_fu_104_ap_idle;
wire grp_entry_point_Pipeline_4_fu_104_ap_ready;
wire [3:0] grp_entry_point_Pipeline_4_fu_104_buffer_r_address0;
wire grp_entry_point_Pipeline_4_fu_104_buffer_r_ce0;
wire grp_entry_point_Pipeline_4_fu_104_buffer_r_we0;
wire [5:0] grp_entry_point_Pipeline_4_fu_104_buffer_r_d0;
reg grp_entry_point_Pipeline_1_fu_88_ap_start_reg;
wire ap_CS_fsm_state2;
reg grp_entry_point_Pipeline_2_fu_94_ap_start_reg;
wire ap_CS_fsm_state3;
wire ap_CS_fsm_state4;
reg grp_entry_point_Pipeline_3_fu_99_ap_start_reg;
wire ap_CS_fsm_state7;
wire ap_CS_fsm_state8;
reg grp_entry_point_Pipeline_4_fu_104_ap_start_reg;
wire ap_CS_fsm_state11;
wire ap_CS_fsm_state12;
wire ap_CS_fsm_state6;
wire ap_CS_fsm_state10;
wire ap_CS_fsm_state14;
wire ap_CS_fsm_state9;
reg [13:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
reg ap_ST_fsm_state2_blk;
wire ap_ST_fsm_state3_blk;
reg ap_ST_fsm_state4_blk;
wire ap_ST_fsm_state5_blk;
wire ap_ST_fsm_state6_blk;
wire ap_ST_fsm_state7_blk;
reg ap_ST_fsm_state8_blk;
wire ap_ST_fsm_state9_blk;
wire ap_ST_fsm_state10_blk;
wire ap_ST_fsm_state11_blk;
reg ap_ST_fsm_state12_blk;
wire ap_ST_fsm_state13_blk;
wire ap_ST_fsm_state14_blk;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 grp_entry_point_Pipeline_1_fu_88_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_2_fu_94_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_3_fu_99_ap_start_reg = 1'b0;
#0 grp_entry_point_Pipeline_4_fu_104_ap_start_reg = 1'b0;
end
entry_point_buffer_RAM_AUTO_1R1W #(
 .DataWidth( 6 ),
 .AddressRange( 10 ),
 .AddressWidth( 4 ))
buffer_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(buffer_address0),
 .ce0(buffer_ce0),
 .we0(buffer_we0),
 .d0(buffer_d0),
 .q0(buffer_q0)
);
entry_point_entry_point_Pipeline_1 grp_entry_point_Pipeline_1_fu_88(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_1_fu_88_ap_start),
 .ap_done(grp_entry_point_Pipeline_1_fu_88_ap_done),
 .ap_idle(grp_entry_point_Pipeline_1_fu_88_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_1_fu_88_ap_ready),
 .buffer_r_address0(grp_entry_point_Pipeline_1_fu_88_buffer_r_address0),
 .buffer_r_ce0(grp_entry_point_Pipeline_1_fu_88_buffer_r_ce0),
 .buffer_r_we0(grp_entry_point_Pipeline_1_fu_88_buffer_r_we0),
 .buffer_r_d0(grp_entry_point_Pipeline_1_fu_88_buffer_r_d0)
);
entry_point_entry_point_Pipeline_2 grp_entry_point_Pipeline_2_fu_94(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_2_fu_94_ap_start),
 .ap_done(grp_entry_point_Pipeline_2_fu_94_ap_done),
 .ap_idle(grp_entry_point_Pipeline_2_fu_94_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_2_fu_94_ap_ready),
 .buffer_r_address0(grp_entry_point_Pipeline_2_fu_94_buffer_r_address0),
 .buffer_r_ce0(grp_entry_point_Pipeline_2_fu_94_buffer_r_ce0),
 .buffer_r_we0(grp_entry_point_Pipeline_2_fu_94_buffer_r_we0),
 .buffer_r_d0(grp_entry_point_Pipeline_2_fu_94_buffer_r_d0)
);
entry_point_entry_point_Pipeline_3 grp_entry_point_Pipeline_3_fu_99(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_3_fu_99_ap_start),
 .ap_done(grp_entry_point_Pipeline_3_fu_99_ap_done),
 .ap_idle(grp_entry_point_Pipeline_3_fu_99_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_3_fu_99_ap_ready),
 .buffer_r_address0(grp_entry_point_Pipeline_3_fu_99_buffer_r_address0),
 .buffer_r_ce0(grp_entry_point_Pipeline_3_fu_99_buffer_r_ce0),
 .buffer_r_we0(grp_entry_point_Pipeline_3_fu_99_buffer_r_we0),
 .buffer_r_d0(grp_entry_point_Pipeline_3_fu_99_buffer_r_d0)
);
entry_point_entry_point_Pipeline_4 grp_entry_point_Pipeline_4_fu_104(
 .ap_clk(ap_clk),
 .ap_rst(ap_rst),
 .ap_start(grp_entry_point_Pipeline_4_fu_104_ap_start),
 .ap_done(grp_entry_point_Pipeline_4_fu_104_ap_done),
 .ap_idle(grp_entry_point_Pipeline_4_fu_104_ap_idle),
 .ap_ready(grp_entry_point_Pipeline_4_fu_104_ap_ready),
 .buffer_r_address0(grp_entry_point_Pipeline_4_fu_104_buffer_r_address0),
 .buffer_r_ce0(grp_entry_point_Pipeline_4_fu_104_buffer_r_ce0),
 .buffer_r_we0(grp_entry_point_Pipeline_4_fu_104_buffer_r_we0),
 .buffer_r_d0(grp_entry_point_Pipeline_4_fu_104_buffer_r_d0)
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
 grp_entry_point_Pipeline_1_fu_88_ap_start_reg <= 1'b0;
 end else begin
 if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
 grp_entry_point_Pipeline_1_fu_88_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_1_fu_88_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_1_fu_88_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_2_fu_94_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state3)) begin
 grp_entry_point_Pipeline_2_fu_94_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_2_fu_94_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_2_fu_94_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_3_fu_99_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state7)) begin
 grp_entry_point_Pipeline_3_fu_99_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_3_fu_99_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_3_fu_99_ap_start_reg <= 1'b0;
 end
 end
end
always @ (posedge ap_clk) begin
 if (ap_rst == 1'b1) begin
 grp_entry_point_Pipeline_4_fu_104_ap_start_reg <= 1'b0;
 end else begin
 if ((1'b1 == ap_CS_fsm_state11)) begin
 grp_entry_point_Pipeline_4_fu_104_ap_start_reg <= 1'b1;
 end else if ((grp_entry_point_Pipeline_4_fu_104_ap_ready == 1'b1)) begin
 grp_entry_point_Pipeline_4_fu_104_ap_start_reg <= 1'b0;
 end
 end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_4_fu_104_ap_done == 1'b0)) begin
 ap_ST_fsm_state12_blk = 1'b1;
 end else begin
 ap_ST_fsm_state12_blk = 1'b0;
 end
end
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
always @ (*) begin
 if ((ap_start == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
always @ (*) begin
 if ((grp_entry_point_Pipeline_1_fu_88_ap_done == 1'b0)) begin
 ap_ST_fsm_state2_blk = 1'b1;
 end else begin
 ap_ST_fsm_state2_blk = 1'b0;
 end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_2_fu_94_ap_done == 1'b0)) begin
 ap_ST_fsm_state4_blk = 1'b1;
 end else begin
 ap_ST_fsm_state4_blk = 1'b0;
 end
end
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
 if ((grp_entry_point_Pipeline_3_fu_99_ap_done == 1'b0)) begin
 ap_ST_fsm_state8_blk = 1'b1;
 end else begin
 ap_ST_fsm_state8_blk = 1'b0;
 end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
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
 if ((1'b1 == ap_CS_fsm_state14)) begin
 ap_ready = 1'b1;
 end else begin
 ap_ready = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state13)) begin
 buffer_address0 = 64'd9;
 end else if ((1'b1 == ap_CS_fsm_state9)) begin
 buffer_address0 = buffer_addr_reg_124;
 end else if ((1'b1 == ap_CS_fsm_state5)) begin
 buffer_address0 = 64'd8;
 end else if ((1'b1 == ap_CS_fsm_state12)) begin
 buffer_address0 = grp_entry_point_Pipeline_4_fu_104_buffer_r_address0;
 end else if ((1'b1 == ap_CS_fsm_state8)) begin
 buffer_address0 = grp_entry_point_Pipeline_3_fu_99_buffer_r_address0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 buffer_address0 = grp_entry_point_Pipeline_2_fu_94_buffer_r_address0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 buffer_address0 = grp_entry_point_Pipeline_1_fu_88_buffer_r_address0;
 end else begin
 buffer_address0 = 'bx;
 end
end
always @ (*) begin
 if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state9))) begin
 buffer_ce0 = 1'b1;
 end else if ((1'b1 == ap_CS_fsm_state12)) begin
 buffer_ce0 = grp_entry_point_Pipeline_4_fu_104_buffer_r_ce0;
 end else if ((1'b1 == ap_CS_fsm_state8)) begin
 buffer_ce0 = grp_entry_point_Pipeline_3_fu_99_buffer_r_ce0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 buffer_ce0 = grp_entry_point_Pipeline_2_fu_94_buffer_r_ce0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 buffer_ce0 = grp_entry_point_Pipeline_1_fu_88_buffer_r_ce0;
 end else begin
 buffer_ce0 = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state12)) begin
 buffer_d0 = grp_entry_point_Pipeline_4_fu_104_buffer_r_d0;
 end else if ((1'b1 == ap_CS_fsm_state8)) begin
 buffer_d0 = grp_entry_point_Pipeline_3_fu_99_buffer_r_d0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 buffer_d0 = grp_entry_point_Pipeline_2_fu_94_buffer_r_d0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 buffer_d0 = grp_entry_point_Pipeline_1_fu_88_buffer_r_d0;
 end else begin
 buffer_d0 = 'bx;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state12)) begin
 buffer_we0 = grp_entry_point_Pipeline_4_fu_104_buffer_r_we0;
 end else if ((1'b1 == ap_CS_fsm_state8)) begin
 buffer_we0 = grp_entry_point_Pipeline_3_fu_99_buffer_r_we0;
 end else if ((1'b1 == ap_CS_fsm_state4)) begin
 buffer_we0 = grp_entry_point_Pipeline_2_fu_94_buffer_r_we0;
 end else if ((1'b1 == ap_CS_fsm_state2)) begin
 buffer_we0 = grp_entry_point_Pipeline_1_fu_88_buffer_r_we0;
 end else begin
 buffer_we0 = 1'b0;
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
 if ((1'b1 == ap_CS_fsm_state10)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((1'b1 == ap_CS_fsm_state14)) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
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
 if (((grp_entry_point_Pipeline_1_fu_88_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_NS_fsm = ap_ST_fsm_state3;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end
 end
 ap_ST_fsm_state3 : begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 ap_ST_fsm_state4 : begin
 if (((grp_entry_point_Pipeline_2_fu_94_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
 ap_NS_fsm = ap_ST_fsm_state5;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state4;
 end
 end
 ap_ST_fsm_state5 : begin
 ap_NS_fsm = ap_ST_fsm_state6;
 end
 ap_ST_fsm_state6 : begin
 ap_NS_fsm = ap_ST_fsm_state7;
 end
 ap_ST_fsm_state7 : begin
 ap_NS_fsm = ap_ST_fsm_state8;
 end
 ap_ST_fsm_state8 : begin
 if (((grp_entry_point_Pipeline_3_fu_99_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
 ap_NS_fsm = ap_ST_fsm_state9;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state8;
 end
 end
 ap_ST_fsm_state9 : begin
 ap_NS_fsm = ap_ST_fsm_state10;
 end
 ap_ST_fsm_state10 : begin
 ap_NS_fsm = ap_ST_fsm_state11;
 end
 ap_ST_fsm_state11 : begin
 ap_NS_fsm = ap_ST_fsm_state12;
 end
 ap_ST_fsm_state12 : begin
 if (((grp_entry_point_Pipeline_4_fu_104_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
 ap_NS_fsm = ap_ST_fsm_state13;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state12;
 end
 end
 ap_ST_fsm_state13 : begin
 ap_NS_fsm = ap_ST_fsm_state14;
 end
 ap_ST_fsm_state14 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
assign ap_return = 32'd0;
assign buffer_addr_reg_124 = 64'd8;
assign grp_entry_point_Pipeline_1_fu_88_ap_start = grp_entry_point_Pipeline_1_fu_88_ap_start_reg;
assign grp_entry_point_Pipeline_2_fu_94_ap_start = grp_entry_point_Pipeline_2_fu_94_ap_start_reg;
assign grp_entry_point_Pipeline_3_fu_99_ap_start = grp_entry_point_Pipeline_3_fu_99_ap_start_reg;
assign grp_entry_point_Pipeline_4_fu_104_ap_start = grp_entry_point_Pipeline_4_fu_104_ap_start_reg;
assign temptemp1 = buffer_q0;
assign temptemp2 = buffer_q0;
assign temptemp3 = buffer_q0;
endmodule
module entry_point_buffer_RAM_AUTO_1R1W (
 address0, ce0,
 d0, we0, 
 q0, 
 reset, clk);
parameter DataWidth = 6;
parameter AddressWidth = 4;
parameter AddressRange = 10;
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
module entry_point_entry_point_Pipeline_1 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 buffer_r_address0,
 buffer_r_ce0,
 buffer_r_we0,
 buffer_r_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [3:0] buffer_r_address0;
output buffer_r_ce0;
output buffer_r_we0;
output [5:0] buffer_r_d0;
reg ap_idle;
reg buffer_r_ce0;
reg buffer_r_we0;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] exitcond194_fu_52_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] p_cast_fu_64_p1;
reg [3:0] empty_fu_26;
wire [3:0] empty_12_fu_58_p2;
wire ap_loop_init;
reg [3:0] ap_sig_allocacmp_p_load;
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
 if ((exitcond194_fu_52_p2 == 1'd0)) begin
 empty_fu_26 <= empty_12_fu_58_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 empty_fu_26 <= 4'd0;
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
 if (((ap_start_int == 1'b1) & (exitcond194_fu_52_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_sig_allocacmp_p_load = 4'd0;
 end else begin
 ap_sig_allocacmp_p_load = empty_fu_26;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 buffer_r_ce0 = 1'b1;
 end else begin
 buffer_r_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (exitcond194_fu_52_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 buffer_r_we0 = 1'b1;
 end else begin
 buffer_r_we0 = 1'b0;
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign buffer_r_address0 = p_cast_fu_64_p1;
assign buffer_r_d0 = 6'd0;
assign empty_12_fu_58_p2 = (ap_sig_allocacmp_p_load + 4'd1);
assign exitcond194_fu_52_p2 = ((ap_sig_allocacmp_p_load == 4'd10) ? 1'b1 : 1'b0);
assign p_cast_fu_64_p1 = ap_sig_allocacmp_p_load;
endmodule
module entry_point_entry_point_Pipeline_2 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 buffer_r_address0,
 buffer_r_ce0,
 buffer_r_we0,
 buffer_r_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [3:0] buffer_r_address0;
output buffer_r_ce0;
output buffer_r_we0;
output [5:0] buffer_r_d0;
reg ap_idle;
reg buffer_r_ce0;
reg buffer_r_we0;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] exitcond183_fu_52_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] p_cast1_fu_64_p1;
reg [3:0] empty_fu_26;
wire [3:0] empty_10_fu_58_p2;
wire ap_loop_init;
reg [3:0] ap_sig_allocacmp_p_load;
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
 if ((exitcond183_fu_52_p2 == 1'd0)) begin
 empty_fu_26 <= empty_10_fu_58_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 empty_fu_26 <= 4'd0;
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
 if (((ap_start_int == 1'b1) & (exitcond183_fu_52_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_sig_allocacmp_p_load = 4'd0;
 end else begin
 ap_sig_allocacmp_p_load = empty_fu_26;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 buffer_r_ce0 = 1'b1;
 end else begin
 buffer_r_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (exitcond183_fu_52_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 buffer_r_we0 = 1'b1;
 end else begin
 buffer_r_we0 = 1'b0;
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign buffer_r_address0 = p_cast1_fu_64_p1;
assign buffer_r_d0 = 6'd48;
assign empty_10_fu_58_p2 = (ap_sig_allocacmp_p_load + 4'd1);
assign exitcond183_fu_52_p2 = ((ap_sig_allocacmp_p_load == 4'd9) ? 1'b1 : 1'b0);
assign p_cast1_fu_64_p1 = ap_sig_allocacmp_p_load;
endmodule
module entry_point_entry_point_Pipeline_3 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 buffer_r_address0,
 buffer_r_ce0,
 buffer_r_we0,
 buffer_r_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [3:0] buffer_r_address0;
output buffer_r_ce0;
output buffer_r_we0;
output [5:0] buffer_r_d0;
reg ap_idle;
reg buffer_r_ce0;
reg buffer_r_we0;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] exitcond162_fu_52_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] p_cast2_fu_64_p1;
reg [3:0] empty_fu_26;
wire [3:0] empty_8_fu_58_p2;
wire ap_loop_init;
reg [3:0] ap_sig_allocacmp_p_load;
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
 if ((exitcond162_fu_52_p2 == 1'd0)) begin
 empty_fu_26 <= empty_8_fu_58_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 empty_fu_26 <= 4'd0;
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
 if (((ap_start_int == 1'b1) & (exitcond162_fu_52_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_sig_allocacmp_p_load = 4'd0;
 end else begin
 ap_sig_allocacmp_p_load = empty_fu_26;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 buffer_r_ce0 = 1'b1;
 end else begin
 buffer_r_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (exitcond162_fu_52_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 buffer_r_we0 = 1'b1;
 end else begin
 buffer_r_we0 = 1'b0;
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign buffer_r_address0 = p_cast2_fu_64_p1;
assign buffer_r_d0 = 6'd42;
assign empty_8_fu_58_p2 = (ap_sig_allocacmp_p_load + 4'd1);
assign exitcond162_fu_52_p2 = ((ap_sig_allocacmp_p_load == 4'd9) ? 1'b1 : 1'b0);
assign p_cast2_fu_64_p1 = ap_sig_allocacmp_p_load;
endmodule
module entry_point_entry_point_Pipeline_4 (
 ap_clk,
 ap_rst,
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 buffer_r_address0,
 buffer_r_ce0,
 buffer_r_we0,
 buffer_r_d0
);
parameter ap_ST_fsm_state1 = 1'd1;
input ap_clk;
input ap_rst;
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
output [3:0] buffer_r_address0;
output buffer_r_ce0;
output buffer_r_we0;
output [5:0] buffer_r_d0;
reg ap_idle;
reg buffer_r_ce0;
reg buffer_r_we0;
(* fsm_encoding = "none" *) reg [0:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
reg ap_block_state1_pp0_stage0_iter0;
wire [0:0] exitcond141_fu_52_p2;
reg ap_condition_exit_pp0_iter0_stage0;
wire ap_loop_exit_ready;
reg ap_ready_int;
wire [63:0] p_cast3_fu_64_p1;
reg [3:0] empty_fu_26;
wire [3:0] empty_6_fu_58_p2;
wire ap_loop_init;
reg [3:0] ap_sig_allocacmp_p_load;
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
 if ((exitcond141_fu_52_p2 == 1'd0)) begin
 empty_fu_26 <= empty_6_fu_58_p2;
 end else if ((ap_loop_init == 1'b1)) begin
 empty_fu_26 <= 4'd0;
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
 if (((ap_start_int == 1'b1) & (exitcond141_fu_52_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
 ap_sig_allocacmp_p_load = 4'd0;
 end else begin
 ap_sig_allocacmp_p_load = empty_fu_26;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 buffer_r_ce0 = 1'b1;
 end else begin
 buffer_r_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (exitcond141_fu_52_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
 buffer_r_we0 = 1'b1;
 end else begin
 buffer_r_we0 = 1'b0;
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
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign buffer_r_address0 = p_cast3_fu_64_p1;
assign buffer_r_d0 = 6'd7;
assign empty_6_fu_58_p2 = (ap_sig_allocacmp_p_load + 4'd1);
assign exitcond141_fu_52_p2 = ((ap_sig_allocacmp_p_load == 4'd9) ? 1'b1 : 1'b0);
assign p_cast3_fu_64_p1 = ap_sig_allocacmp_p_load;
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
