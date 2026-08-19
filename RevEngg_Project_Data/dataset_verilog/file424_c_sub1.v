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
parameter ap_ST_fsm_state1 = 2'd1;
parameter ap_ST_fsm_state2 = 2'd2;
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
reg ap_idle;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire ap_CS_fsm_state2;
wire ap_block_state2_pp0_stage1_iter0;
wire [0:0] icmp_ln11_fu_150_p2;
reg ap_condition_exit_pp0_iter0_stage1;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [63:0] counter_1_reg_391;
reg ap_block_state1_pp0_stage0_iter0;
wire [6:0] str_address0;
reg str_ce0;
wire [7:0] str_q0;
reg [31:0] countDigits_fu_56;
wire [31:0] countDigits_2_fu_303_p3;
wire ap_loop_init;
reg [31:0] countAlphabet_fu_60;
wire [31:0] countAlphabet_2_fu_295_p3;
reg [31:0] countSpecialChar_fu_64;
wire [31:0] countSpecialChar_3_fu_275_p3;
reg [31:0] countSpaces_fu_68;
wire [31:0] countSpaces_3_fu_267_p3;
reg [63:0] counter_fu_72;
wire [63:0] add_ln20_fu_156_p2;
reg [63:0] ap_sig_allocacmp_counter_1;
wire [7:0] add_ln12_fu_173_p2;
wire [7:0] add_ln14_fu_191_p2;
wire [7:0] add_ln14_1_fu_203_p2;
wire [0:0] icmp_ln14_fu_197_p2;
wire [0:0] icmp_ln14_1_fu_209_p2;
wire [0:0] icmp_ln16_fu_227_p2;
wire [31:0] countSpaces_1_fu_233_p2;
wire [31:0] countSpecialChar_1_fu_239_p2;
wire [0:0] icmp_ln12_fu_179_p2;
wire [0:0] or_ln14_fu_215_p2;
wire [0:0] or_ln14_1_fu_261_p2;
wire [31:0] countSpaces_2_fu_245_p3;
wire [31:0] countSpecialChar_2_fu_253_p3;
wire [0:0] xor_ln12_fu_283_p2;
wire [0:0] and_ln14_fu_289_p2;
wire [31:0] countAlphabet_1_fu_221_p2;
wire [31:0] countDigits_1_fu_185_p2;
reg ap_done_reg;
wire ap_continue_int;
reg ap_done_int;
reg [1:0] ap_NS_fsm;
reg ap_ST_fsm_state1_blk;
wire ap_ST_fsm_state2_blk;
wire ap_start_int;
wire ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_done_reg = 1'b0;
end
entry_point_str_RAM_AUTO_1R1W #(
 .DataWidth( 8 ),
 .AddressRange( 100 ),
 .AddressWidth( 7 ))
str_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(str_address0),
 .ce0(str_ce0),
 .q0(str_q0)
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
 .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
 .ap_loop_exit_done(ap_done_int),
 .ap_continue_int(ap_continue_int),
 .ap_done_int(ap_done_int),
 .ap_continue(1'b1)
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
 end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_done_reg <= 1'b1;
 end
 end
end
always @ (posedge ap_clk) begin
 if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 countAlphabet_fu_60 <= 32'd0;
 end else if (((icmp_ln11_fu_150_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 countAlphabet_fu_60 <= countAlphabet_2_fu_295_p3;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 countDigits_fu_56 <= 32'd0;
 end else if (((icmp_ln11_fu_150_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 countDigits_fu_56 <= countDigits_2_fu_303_p3;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 countSpaces_fu_68 <= 32'd0;
 end else if (((icmp_ln11_fu_150_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 countSpaces_fu_68 <= countSpaces_3_fu_267_p3;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 countSpecialChar_fu_64 <= 32'd0;
 end else if (((icmp_ln11_fu_150_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 countSpecialChar_fu_64 <= countSpecialChar_3_fu_275_p3;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 counter_fu_72 <= 64'd0;
 end else if (((icmp_ln11_fu_150_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 counter_fu_72 <= add_ln20_fu_156_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 counter_1_reg_391 <= ap_sig_allocacmp_counter_1;
 end
end
always @ (*) begin
 if ((ap_start_int == 1'b0)) begin
 ap_ST_fsm_state1_blk = 1'b1;
 end else begin
 ap_ST_fsm_state1_blk = 1'b0;
 end
end
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
 if (((icmp_ln11_fu_150_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 ap_condition_exit_pp0_iter0_stage1 = 1'b1;
 end else begin
 ap_condition_exit_pp0_iter0_stage1 = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
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
 if ((1'b1 == ap_CS_fsm_state2)) begin
 ap_ready_int = 1'b1;
 end else begin
 ap_ready_int = 1'b0;
 end
end
always @ (*) begin
 if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_sig_allocacmp_counter_1 = 64'd0;
 end else begin
 ap_sig_allocacmp_counter_1 = counter_fu_72;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 str_ce0 = 1'b1;
 end else begin
 str_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln11_fu_150_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln11_fu_150_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln11_fu_150_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln11_fu_150_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 case (ap_CS_fsm)
 ap_ST_fsm_state1 : begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 ap_NS_fsm = ap_ST_fsm_state2;
 end else begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 end
 ap_ST_fsm_state2 : begin
 ap_NS_fsm = ap_ST_fsm_state1;
 end
 default : begin
 ap_NS_fsm = 'bx;
 end
 endcase
end
assign add_ln12_fu_173_p2 = ($signed(str_q0) + $signed(8'd208));
assign add_ln14_1_fu_203_p2 = ($signed(str_q0) + $signed(8'd159));
assign add_ln14_fu_191_p2 = ($signed(str_q0) + $signed(8'd191));
assign add_ln20_fu_156_p2 = (counter_1_reg_391 + 64'd1);
assign and_ln14_fu_289_p2 = (xor_ln12_fu_283_p2 & or_ln14_fu_215_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_return = 32'd0;
assign countAlphabet_1_fu_221_p2 = (countAlphabet_fu_60 + 32'd1);
assign countAlphabet_2_fu_295_p3 = ((and_ln14_fu_289_p2[0:0] == 1'b1) ? countAlphabet_1_fu_221_p2 : countAlphabet_fu_60);
assign countDigits_1_fu_185_p2 = (countDigits_fu_56 + 32'd1);
assign countDigits_2_fu_303_p3 = ((icmp_ln12_fu_179_p2[0:0] == 1'b1) ? countDigits_1_fu_185_p2 : countDigits_fu_56);
assign countSpaces_1_fu_233_p2 = (countSpaces_fu_68 + 32'd1);
assign countSpaces_2_fu_245_p3 = ((icmp_ln16_fu_227_p2[0:0] == 1'b1) ? countSpaces_1_fu_233_p2 : countSpaces_fu_68);
assign countSpaces_3_fu_267_p3 = ((or_ln14_1_fu_261_p2[0:0] == 1'b1) ? countSpaces_fu_68 : countSpaces_2_fu_245_p3);
assign countSpecialChar_1_fu_239_p2 = (countSpecialChar_fu_64 + 32'd1);
assign countSpecialChar_2_fu_253_p3 = ((icmp_ln16_fu_227_p2[0:0] == 1'b1) ? countSpecialChar_fu_64 : countSpecialChar_1_fu_239_p2);
assign countSpecialChar_3_fu_275_p3 = ((or_ln14_1_fu_261_p2[0:0] == 1'b1) ? countSpecialChar_fu_64 : countSpecialChar_2_fu_253_p3);
assign icmp_ln11_fu_150_p2 = ((str_q0 == 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln12_fu_179_p2 = ((add_ln12_fu_173_p2 < 8'd10) ? 1'b1 : 1'b0);
assign icmp_ln14_1_fu_209_p2 = ((add_ln14_1_fu_203_p2 < 8'd26) ? 1'b1 : 1'b0);
assign icmp_ln14_fu_197_p2 = ((add_ln14_fu_191_p2 < 8'd26) ? 1'b1 : 1'b0);
assign icmp_ln16_fu_227_p2 = ((str_q0 == 8'd32) ? 1'b1 : 1'b0);
assign or_ln14_1_fu_261_p2 = (or_ln14_fu_215_p2 | icmp_ln12_fu_179_p2);
assign or_ln14_fu_215_p2 = (icmp_ln14_fu_197_p2 | icmp_ln14_1_fu_209_p2);
assign str_address0 = ap_sig_allocacmp_counter_1;
assign temptemp1 = countDigits_fu_56;
assign temptemp2 = countAlphabet_fu_60;
assign temptemp3 = countSpaces_fu_68;
assign temptemp4 = countSpecialChar_fu_64;
assign xor_ln12_fu_283_p2 = (icmp_ln12_fu_179_p2 ^ 1'd1);
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
module entry_point_str_RAM_AUTO_1R1W (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 8;
parameter AddressWidth = 7;
parameter AddressRange = 100;
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
 rom0[20]=8'h0;
 rom0[21]=8'h0;
 rom0[22]=8'h0;
 rom0[23]=8'h0;
 rom0[24]=8'h0;
 rom0[25]=8'h0;
 rom0[26]=8'h0;
 rom0[27]=8'h0;
 rom0[28]=8'h0;
 rom0[29]=8'h0;
 rom0[30]=8'h0;
 rom0[31]=8'h0;
 rom0[32]=8'h0;
 rom0[33]=8'h0;
 rom0[34]=8'h0;
 rom0[35]=8'h0;
 rom0[36]=8'h0;
 rom0[37]=8'h0;
 rom0[38]=8'h0;
 rom0[39]=8'h0;
 rom0[40]=8'h0;
 rom0[41]=8'h0;
 rom0[42]=8'h0;
 rom0[43]=8'h0;
 rom0[44]=8'h0;
 rom0[45]=8'h0;
 rom0[46]=8'h0;
 rom0[47]=8'h0;
 rom0[48]=8'h0;
 rom0[49]=8'h0;
 rom0[50]=8'h0;
 rom0[51]=8'h0;
 rom0[52]=8'h0;
 rom0[53]=8'h0;
 rom0[54]=8'h0;
 rom0[55]=8'h0;
 rom0[56]=8'h0;
 rom0[57]=8'h0;
 rom0[58]=8'h0;
 rom0[59]=8'h0;
 rom0[60]=8'h0;
 rom0[61]=8'h0;
 rom0[62]=8'h0;
 rom0[63]=8'h0;
 rom0[64]=8'h0;
 rom0[65]=8'h0;
 rom0[66]=8'h0;
 rom0[67]=8'h0;
 rom0[68]=8'h0;
 rom0[69]=8'h0;
 rom0[70]=8'h0;
 rom0[71]=8'h0;
 rom0[72]=8'h0;
 rom0[73]=8'h0;
 rom0[74]=8'h0;
 rom0[75]=8'h0;
 rom0[76]=8'h0;
 rom0[77]=8'h0;
 rom0[78]=8'h0;
 rom0[79]=8'h0;
 rom0[80]=8'h0;
 rom0[81]=8'h0;
 rom0[82]=8'h0;
 rom0[83]=8'h0;
 rom0[84]=8'h0;
 rom0[85]=8'h0;
 rom0[86]=8'h0;
 rom0[87]=8'h0;
 rom0[88]=8'h0;
 rom0[89]=8'h0;
 rom0[90]=8'h0;
 rom0[91]=8'h0;
 rom0[92]=8'h0;
 rom0[93]=8'h0;
 rom0[94]=8'h0;
 rom0[95]=8'h0;
 rom0[96]=8'h0;
 rom0[97]=8'h0;
 rom0[98]=8'h0;
 rom0[99]=8'h0;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
