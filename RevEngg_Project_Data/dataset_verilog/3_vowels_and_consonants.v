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
output [31:0] ap_return;
reg ap_idle;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
(* fsm_encoding = "none" *) reg [1:0] ap_CS_fsm;
wire ap_CS_fsm_state1;
wire ap_CS_fsm_state2;
wire ap_block_state2_pp0_stage1_iter0;
wire [0:0] icmp_ln13_fu_118_p2;
reg ap_condition_exit_pp0_iter0_stage1;
wire ap_loop_exit_ready;
reg ap_ready_int;
reg [63:0] i_1_reg_329;
reg ap_block_state1_pp0_stage0_iter0;
wire [9:0] s_address0;
reg s_ce0;
wire [7:0] s_q0;
reg [31:0] vowels_fu_56;
wire [31:0] vowels_2_fu_275_p3;
wire ap_loop_init;
reg [31:0] consonants_fu_60;
wire [31:0] consonants_2_fu_249_p3;
reg [63:0] i_fu_64;
wire [63:0] add_ln13_fu_124_p2;
reg [63:0] ap_sig_allocacmp_i_1;
wire [7:0] add_ln15_fu_135_p2;
wire [7:0] add_ln15_1_fu_147_p2;
wire [0:0] icmp_ln15_fu_141_p2;
wire [0:0] icmp_ln15_1_fu_153_p2;
wire [0:0] or_ln15_1_fu_207_p2;
wire [0:0] icmp_ln17_fu_177_p2;
wire [0:0] icmp_ln17_1_fu_183_p2;
wire [0:0] icmp_ln17_3_fu_195_p2;
wire [0:0] icmp_ln17_4_fu_201_p2;
wire [0:0] or_ln17_2_fu_225_p2;
wire [0:0] icmp_ln17_2_fu_189_p2;
wire [0:0] xor_ln15_fu_213_p2;
wire [0:0] or_ln17_fu_219_p2;
wire [0:0] or_ln17_1_fu_237_p2;
wire [0:0] or_ln17_3_fu_231_p2;
wire [0:0] or_ln17_4_fu_243_p2;
wire [31:0] consonants_1_fu_165_p2;
wire [0:0] or_ln17_5_fu_257_p2;
wire [0:0] or_ln15_fu_159_p2;
wire [0:0] or_ln17_6_fu_263_p2;
wire [0:0] and_ln17_fu_269_p2;
wire [31:0] vowels_1_fu_171_p2;
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
entry_point_s_RAM_AUTO_1R1W #(
 .DataWidth( 8 ),
 .AddressRange( 1000 ),
 .AddressWidth( 10 ))
s_U(
 .clk(ap_clk),
 .reset(ap_rst),
 .address0(s_address0),
 .ce0(s_ce0),
 .q0(s_q0)
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
 consonants_fu_60 <= 32'd0;
 end else if (((icmp_ln13_fu_118_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 consonants_fu_60 <= consonants_2_fu_249_p3;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 i_fu_64 <= 64'd0;
 end else if (((icmp_ln13_fu_118_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 i_fu_64 <= add_ln13_fu_124_p2;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 vowels_fu_56 <= 32'd0;
 end else if (((icmp_ln13_fu_118_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
 vowels_fu_56 <= vowels_2_fu_275_p3;
 end
end
always @ (posedge ap_clk) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 i_1_reg_329 <= ap_sig_allocacmp_i_1;
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
 if (((icmp_ln13_fu_118_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
 ap_sig_allocacmp_i_1 = 64'd0;
 end else begin
 ap_sig_allocacmp_i_1 = i_fu_64;
 end
end
always @ (*) begin
 if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
 s_ce0 = 1'b1;
 end else begin
 s_ce0 = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln13_fu_118_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((icmp_ln13_fu_118_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
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
assign add_ln13_fu_124_p2 = (i_1_reg_329 + 64'd1);
assign add_ln15_1_fu_147_p2 = ($signed(s_q0) + $signed(8'd159));
assign add_ln15_fu_135_p2 = ($signed(s_q0) + $signed(8'd191));
assign and_ln17_fu_269_p2 = (or_ln17_6_fu_263_p2 & or_ln15_fu_159_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
 ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_return = 32'd0;
assign consonants_1_fu_165_p2 = (consonants_fu_60 + 32'd1);
assign consonants_2_fu_249_p3 = ((or_ln17_4_fu_243_p2[0:0] == 1'b1) ? consonants_fu_60 : consonants_1_fu_165_p2);
assign icmp_ln13_fu_118_p2 = ((s_q0 == 8'd0) ? 1'b1 : 1'b0);
assign icmp_ln15_1_fu_153_p2 = ((add_ln15_1_fu_147_p2 < 8'd26) ? 1'b1 : 1'b0);
assign icmp_ln15_fu_141_p2 = ((add_ln15_fu_135_p2 < 8'd26) ? 1'b1 : 1'b0);
assign icmp_ln17_1_fu_183_p2 = ((s_q0 == 8'd101) ? 1'b1 : 1'b0);
assign icmp_ln17_2_fu_189_p2 = ((s_q0 == 8'd105) ? 1'b1 : 1'b0);
assign icmp_ln17_3_fu_195_p2 = ((s_q0 == 8'd111) ? 1'b1 : 1'b0);
assign icmp_ln17_4_fu_201_p2 = ((s_q0 == 8'd117) ? 1'b1 : 1'b0);
assign icmp_ln17_fu_177_p2 = ((s_q0 == 8'd97) ? 1'b1 : 1'b0);
assign or_ln15_1_fu_207_p2 = (icmp_ln15_fu_141_p2 | icmp_ln15_1_fu_153_p2);
assign or_ln15_fu_159_p2 = (icmp_ln15_fu_141_p2 | icmp_ln15_1_fu_153_p2);
assign or_ln17_1_fu_237_p2 = (xor_ln15_fu_213_p2 | or_ln17_fu_219_p2);
assign or_ln17_2_fu_225_p2 = (icmp_ln17_4_fu_201_p2 | icmp_ln17_3_fu_195_p2);
assign or_ln17_3_fu_231_p2 = (or_ln17_2_fu_225_p2 | icmp_ln17_2_fu_189_p2);
assign or_ln17_4_fu_243_p2 = (or_ln17_3_fu_231_p2 | or_ln17_1_fu_237_p2);
assign or_ln17_5_fu_257_p2 = (icmp_ln17_fu_177_p2 | icmp_ln17_1_fu_183_p2);
assign or_ln17_6_fu_263_p2 = (or_ln17_5_fu_257_p2 | or_ln17_3_fu_231_p2);
assign or_ln17_fu_219_p2 = (icmp_ln17_fu_177_p2 | icmp_ln17_1_fu_183_p2);
assign s_address0 = ap_sig_allocacmp_i_1;
assign temptemp1 = vowels_fu_56;
assign temptemp2 = consonants_fu_60;
assign vowels_1_fu_171_p2 = (vowels_fu_56 + 32'd1);
assign vowels_2_fu_275_p3 = ((and_ln17_fu_269_p2[0:0] == 1'b1) ? vowels_1_fu_171_p2 : vowels_fu_56);
assign xor_ln15_fu_213_p2 = (or_ln15_1_fu_207_p2 ^ 1'd1);
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
module entry_point_s_RAM_AUTO_1R1W (
 address0, ce0, q0, 
 reset, clk);
parameter DataWidth = 8;
parameter AddressWidth = 10;
parameter AddressRange = 1000;
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
 rom0[100]=8'h0;
 rom0[101]=8'h0;
 rom0[102]=8'h0;
 rom0[103]=8'h0;
 rom0[104]=8'h0;
 rom0[105]=8'h0;
 rom0[106]=8'h0;
 rom0[107]=8'h0;
 rom0[108]=8'h0;
 rom0[109]=8'h0;
 rom0[110]=8'h0;
 rom0[111]=8'h0;
 rom0[112]=8'h0;
 rom0[113]=8'h0;
 rom0[114]=8'h0;
 rom0[115]=8'h0;
 rom0[116]=8'h0;
 rom0[117]=8'h0;
 rom0[118]=8'h0;
 rom0[119]=8'h0;
 rom0[120]=8'h0;
 rom0[121]=8'h0;
 rom0[122]=8'h0;
 rom0[123]=8'h0;
 rom0[124]=8'h0;
 rom0[125]=8'h0;
 rom0[126]=8'h0;
 rom0[127]=8'h0;
 rom0[128]=8'h0;
 rom0[129]=8'h0;
 rom0[130]=8'h0;
 rom0[131]=8'h0;
 rom0[132]=8'h0;
 rom0[133]=8'h0;
 rom0[134]=8'h0;
 rom0[135]=8'h0;
 rom0[136]=8'h0;
 rom0[137]=8'h0;
 rom0[138]=8'h0;
 rom0[139]=8'h0;
 rom0[140]=8'h0;
 rom0[141]=8'h0;
 rom0[142]=8'h0;
 rom0[143]=8'h0;
 rom0[144]=8'h0;
 rom0[145]=8'h0;
 rom0[146]=8'h0;
 rom0[147]=8'h0;
 rom0[148]=8'h0;
 rom0[149]=8'h0;
 rom0[150]=8'h0;
 rom0[151]=8'h0;
 rom0[152]=8'h0;
 rom0[153]=8'h0;
 rom0[154]=8'h0;
 rom0[155]=8'h0;
 rom0[156]=8'h0;
 rom0[157]=8'h0;
 rom0[158]=8'h0;
 rom0[159]=8'h0;
 rom0[160]=8'h0;
 rom0[161]=8'h0;
 rom0[162]=8'h0;
 rom0[163]=8'h0;
 rom0[164]=8'h0;
 rom0[165]=8'h0;
 rom0[166]=8'h0;
 rom0[167]=8'h0;
 rom0[168]=8'h0;
 rom0[169]=8'h0;
 rom0[170]=8'h0;
 rom0[171]=8'h0;
 rom0[172]=8'h0;
 rom0[173]=8'h0;
 rom0[174]=8'h0;
 rom0[175]=8'h0;
 rom0[176]=8'h0;
 rom0[177]=8'h0;
 rom0[178]=8'h0;
 rom0[179]=8'h0;
 rom0[180]=8'h0;
 rom0[181]=8'h0;
 rom0[182]=8'h0;
 rom0[183]=8'h0;
 rom0[184]=8'h0;
 rom0[185]=8'h0;
 rom0[186]=8'h0;
 rom0[187]=8'h0;
 rom0[188]=8'h0;
 rom0[189]=8'h0;
 rom0[190]=8'h0;
 rom0[191]=8'h0;
 rom0[192]=8'h0;
 rom0[193]=8'h0;
 rom0[194]=8'h0;
 rom0[195]=8'h0;
 rom0[196]=8'h0;
 rom0[197]=8'h0;
 rom0[198]=8'h0;
 rom0[199]=8'h0;
 rom0[200]=8'h0;
 rom0[201]=8'h0;
 rom0[202]=8'h0;
 rom0[203]=8'h0;
 rom0[204]=8'h0;
 rom0[205]=8'h0;
 rom0[206]=8'h0;
 rom0[207]=8'h0;
 rom0[208]=8'h0;
 rom0[209]=8'h0;
 rom0[210]=8'h0;
 rom0[211]=8'h0;
 rom0[212]=8'h0;
 rom0[213]=8'h0;
 rom0[214]=8'h0;
 rom0[215]=8'h0;
 rom0[216]=8'h0;
 rom0[217]=8'h0;
 rom0[218]=8'h0;
 rom0[219]=8'h0;
 rom0[220]=8'h0;
 rom0[221]=8'h0;
 rom0[222]=8'h0;
 rom0[223]=8'h0;
 rom0[224]=8'h0;
 rom0[225]=8'h0;
 rom0[226]=8'h0;
 rom0[227]=8'h0;
 rom0[228]=8'h0;
 rom0[229]=8'h0;
 rom0[230]=8'h0;
 rom0[231]=8'h0;
 rom0[232]=8'h0;
 rom0[233]=8'h0;
 rom0[234]=8'h0;
 rom0[235]=8'h0;
 rom0[236]=8'h0;
 rom0[237]=8'h0;
 rom0[238]=8'h0;
 rom0[239]=8'h0;
 rom0[240]=8'h0;
 rom0[241]=8'h0;
 rom0[242]=8'h0;
 rom0[243]=8'h0;
 rom0[244]=8'h0;
 rom0[245]=8'h0;
 rom0[246]=8'h0;
 rom0[247]=8'h0;
 rom0[248]=8'h0;
 rom0[249]=8'h0;
 rom0[250]=8'h0;
 rom0[251]=8'h0;
 rom0[252]=8'h0;
 rom0[253]=8'h0;
 rom0[254]=8'h0;
 rom0[255]=8'h0;
 rom0[256]=8'h0;
 rom0[257]=8'h0;
 rom0[258]=8'h0;
 rom0[259]=8'h0;
 rom0[260]=8'h0;
 rom0[261]=8'h0;
 rom0[262]=8'h0;
 rom0[263]=8'h0;
 rom0[264]=8'h0;
 rom0[265]=8'h0;
 rom0[266]=8'h0;
 rom0[267]=8'h0;
 rom0[268]=8'h0;
 rom0[269]=8'h0;
 rom0[270]=8'h0;
 rom0[271]=8'h0;
 rom0[272]=8'h0;
 rom0[273]=8'h0;
 rom0[274]=8'h0;
 rom0[275]=8'h0;
 rom0[276]=8'h0;
 rom0[277]=8'h0;
 rom0[278]=8'h0;
 rom0[279]=8'h0;
 rom0[280]=8'h0;
 rom0[281]=8'h0;
 rom0[282]=8'h0;
 rom0[283]=8'h0;
 rom0[284]=8'h0;
 rom0[285]=8'h0;
 rom0[286]=8'h0;
 rom0[287]=8'h0;
 rom0[288]=8'h0;
 rom0[289]=8'h0;
 rom0[290]=8'h0;
 rom0[291]=8'h0;
 rom0[292]=8'h0;
 rom0[293]=8'h0;
 rom0[294]=8'h0;
 rom0[295]=8'h0;
 rom0[296]=8'h0;
 rom0[297]=8'h0;
 rom0[298]=8'h0;
 rom0[299]=8'h0;
 rom0[300]=8'h0;
 rom0[301]=8'h0;
 rom0[302]=8'h0;
 rom0[303]=8'h0;
 rom0[304]=8'h0;
 rom0[305]=8'h0;
 rom0[306]=8'h0;
 rom0[307]=8'h0;
 rom0[308]=8'h0;
 rom0[309]=8'h0;
 rom0[310]=8'h0;
 rom0[311]=8'h0;
 rom0[312]=8'h0;
 rom0[313]=8'h0;
 rom0[314]=8'h0;
 rom0[315]=8'h0;
 rom0[316]=8'h0;
 rom0[317]=8'h0;
 rom0[318]=8'h0;
 rom0[319]=8'h0;
 rom0[320]=8'h0;
 rom0[321]=8'h0;
 rom0[322]=8'h0;
 rom0[323]=8'h0;
 rom0[324]=8'h0;
 rom0[325]=8'h0;
 rom0[326]=8'h0;
 rom0[327]=8'h0;
 rom0[328]=8'h0;
 rom0[329]=8'h0;
 rom0[330]=8'h0;
 rom0[331]=8'h0;
 rom0[332]=8'h0;
 rom0[333]=8'h0;
 rom0[334]=8'h0;
 rom0[335]=8'h0;
 rom0[336]=8'h0;
 rom0[337]=8'h0;
 rom0[338]=8'h0;
 rom0[339]=8'h0;
 rom0[340]=8'h0;
 rom0[341]=8'h0;
 rom0[342]=8'h0;
 rom0[343]=8'h0;
 rom0[344]=8'h0;
 rom0[345]=8'h0;
 rom0[346]=8'h0;
 rom0[347]=8'h0;
 rom0[348]=8'h0;
 rom0[349]=8'h0;
 rom0[350]=8'h0;
 rom0[351]=8'h0;
 rom0[352]=8'h0;
 rom0[353]=8'h0;
 rom0[354]=8'h0;
 rom0[355]=8'h0;
 rom0[356]=8'h0;
 rom0[357]=8'h0;
 rom0[358]=8'h0;
 rom0[359]=8'h0;
 rom0[360]=8'h0;
 rom0[361]=8'h0;
 rom0[362]=8'h0;
 rom0[363]=8'h0;
 rom0[364]=8'h0;
 rom0[365]=8'h0;
 rom0[366]=8'h0;
 rom0[367]=8'h0;
 rom0[368]=8'h0;
 rom0[369]=8'h0;
 rom0[370]=8'h0;
 rom0[371]=8'h0;
 rom0[372]=8'h0;
 rom0[373]=8'h0;
 rom0[374]=8'h0;
 rom0[375]=8'h0;
 rom0[376]=8'h0;
 rom0[377]=8'h0;
 rom0[378]=8'h0;
 rom0[379]=8'h0;
 rom0[380]=8'h0;
 rom0[381]=8'h0;
 rom0[382]=8'h0;
 rom0[383]=8'h0;
 rom0[384]=8'h0;
 rom0[385]=8'h0;
 rom0[386]=8'h0;
 rom0[387]=8'h0;
 rom0[388]=8'h0;
 rom0[389]=8'h0;
 rom0[390]=8'h0;
 rom0[391]=8'h0;
 rom0[392]=8'h0;
 rom0[393]=8'h0;
 rom0[394]=8'h0;
 rom0[395]=8'h0;
 rom0[396]=8'h0;
 rom0[397]=8'h0;
 rom0[398]=8'h0;
 rom0[399]=8'h0;
 rom0[400]=8'h0;
 rom0[401]=8'h0;
 rom0[402]=8'h0;
 rom0[403]=8'h0;
 rom0[404]=8'h0;
 rom0[405]=8'h0;
 rom0[406]=8'h0;
 rom0[407]=8'h0;
 rom0[408]=8'h0;
 rom0[409]=8'h0;
 rom0[410]=8'h0;
 rom0[411]=8'h0;
 rom0[412]=8'h0;
 rom0[413]=8'h0;
 rom0[414]=8'h0;
 rom0[415]=8'h0;
 rom0[416]=8'h0;
 rom0[417]=8'h0;
 rom0[418]=8'h0;
 rom0[419]=8'h0;
 rom0[420]=8'h0;
 rom0[421]=8'h0;
 rom0[422]=8'h0;
 rom0[423]=8'h0;
 rom0[424]=8'h0;
 rom0[425]=8'h0;
 rom0[426]=8'h0;
 rom0[427]=8'h0;
 rom0[428]=8'h0;
 rom0[429]=8'h0;
 rom0[430]=8'h0;
 rom0[431]=8'h0;
 rom0[432]=8'h0;
 rom0[433]=8'h0;
 rom0[434]=8'h0;
 rom0[435]=8'h0;
 rom0[436]=8'h0;
 rom0[437]=8'h0;
 rom0[438]=8'h0;
 rom0[439]=8'h0;
 rom0[440]=8'h0;
 rom0[441]=8'h0;
 rom0[442]=8'h0;
 rom0[443]=8'h0;
 rom0[444]=8'h0;
 rom0[445]=8'h0;
 rom0[446]=8'h0;
 rom0[447]=8'h0;
 rom0[448]=8'h0;
 rom0[449]=8'h0;
 rom0[450]=8'h0;
 rom0[451]=8'h0;
 rom0[452]=8'h0;
 rom0[453]=8'h0;
 rom0[454]=8'h0;
 rom0[455]=8'h0;
 rom0[456]=8'h0;
 rom0[457]=8'h0;
 rom0[458]=8'h0;
 rom0[459]=8'h0;
 rom0[460]=8'h0;
 rom0[461]=8'h0;
 rom0[462]=8'h0;
 rom0[463]=8'h0;
 rom0[464]=8'h0;
 rom0[465]=8'h0;
 rom0[466]=8'h0;
 rom0[467]=8'h0;
 rom0[468]=8'h0;
 rom0[469]=8'h0;
 rom0[470]=8'h0;
 rom0[471]=8'h0;
 rom0[472]=8'h0;
 rom0[473]=8'h0;
 rom0[474]=8'h0;
 rom0[475]=8'h0;
 rom0[476]=8'h0;
 rom0[477]=8'h0;
 rom0[478]=8'h0;
 rom0[479]=8'h0;
 rom0[480]=8'h0;
 rom0[481]=8'h0;
 rom0[482]=8'h0;
 rom0[483]=8'h0;
 rom0[484]=8'h0;
 rom0[485]=8'h0;
 rom0[486]=8'h0;
 rom0[487]=8'h0;
 rom0[488]=8'h0;
 rom0[489]=8'h0;
 rom0[490]=8'h0;
 rom0[491]=8'h0;
 rom0[492]=8'h0;
 rom0[493]=8'h0;
 rom0[494]=8'h0;
 rom0[495]=8'h0;
 rom0[496]=8'h0;
 rom0[497]=8'h0;
 rom0[498]=8'h0;
 rom0[499]=8'h0;
 rom0[500]=8'h0;
 rom0[501]=8'h0;
 rom0[502]=8'h0;
 rom0[503]=8'h0;
 rom0[504]=8'h0;
 rom0[505]=8'h0;
 rom0[506]=8'h0;
 rom0[507]=8'h0;
 rom0[508]=8'h0;
 rom0[509]=8'h0;
 rom0[510]=8'h0;
 rom0[511]=8'h0;
 rom0[512]=8'h0;
 rom0[513]=8'h0;
 rom0[514]=8'h0;
 rom0[515]=8'h0;
 rom0[516]=8'h0;
 rom0[517]=8'h0;
 rom0[518]=8'h0;
 rom0[519]=8'h0;
 rom0[520]=8'h0;
 rom0[521]=8'h0;
 rom0[522]=8'h0;
 rom0[523]=8'h0;
 rom0[524]=8'h0;
 rom0[525]=8'h0;
 rom0[526]=8'h0;
 rom0[527]=8'h0;
 rom0[528]=8'h0;
 rom0[529]=8'h0;
 rom0[530]=8'h0;
 rom0[531]=8'h0;
 rom0[532]=8'h0;
 rom0[533]=8'h0;
 rom0[534]=8'h0;
 rom0[535]=8'h0;
 rom0[536]=8'h0;
 rom0[537]=8'h0;
 rom0[538]=8'h0;
 rom0[539]=8'h0;
 rom0[540]=8'h0;
 rom0[541]=8'h0;
 rom0[542]=8'h0;
 rom0[543]=8'h0;
 rom0[544]=8'h0;
 rom0[545]=8'h0;
 rom0[546]=8'h0;
 rom0[547]=8'h0;
 rom0[548]=8'h0;
 rom0[549]=8'h0;
 rom0[550]=8'h0;
 rom0[551]=8'h0;
 rom0[552]=8'h0;
 rom0[553]=8'h0;
 rom0[554]=8'h0;
 rom0[555]=8'h0;
 rom0[556]=8'h0;
 rom0[557]=8'h0;
 rom0[558]=8'h0;
 rom0[559]=8'h0;
 rom0[560]=8'h0;
 rom0[561]=8'h0;
 rom0[562]=8'h0;
 rom0[563]=8'h0;
 rom0[564]=8'h0;
 rom0[565]=8'h0;
 rom0[566]=8'h0;
 rom0[567]=8'h0;
 rom0[568]=8'h0;
 rom0[569]=8'h0;
 rom0[570]=8'h0;
 rom0[571]=8'h0;
 rom0[572]=8'h0;
 rom0[573]=8'h0;
 rom0[574]=8'h0;
 rom0[575]=8'h0;
 rom0[576]=8'h0;
 rom0[577]=8'h0;
 rom0[578]=8'h0;
 rom0[579]=8'h0;
 rom0[580]=8'h0;
 rom0[581]=8'h0;
 rom0[582]=8'h0;
 rom0[583]=8'h0;
 rom0[584]=8'h0;
 rom0[585]=8'h0;
 rom0[586]=8'h0;
 rom0[587]=8'h0;
 rom0[588]=8'h0;
 rom0[589]=8'h0;
 rom0[590]=8'h0;
 rom0[591]=8'h0;
 rom0[592]=8'h0;
 rom0[593]=8'h0;
 rom0[594]=8'h0;
 rom0[595]=8'h0;
 rom0[596]=8'h0;
 rom0[597]=8'h0;
 rom0[598]=8'h0;
 rom0[599]=8'h0;
 rom0[600]=8'h0;
 rom0[601]=8'h0;
 rom0[602]=8'h0;
 rom0[603]=8'h0;
 rom0[604]=8'h0;
 rom0[605]=8'h0;
 rom0[606]=8'h0;
 rom0[607]=8'h0;
 rom0[608]=8'h0;
 rom0[609]=8'h0;
 rom0[610]=8'h0;
 rom0[611]=8'h0;
 rom0[612]=8'h0;
 rom0[613]=8'h0;
 rom0[614]=8'h0;
 rom0[615]=8'h0;
 rom0[616]=8'h0;
 rom0[617]=8'h0;
 rom0[618]=8'h0;
 rom0[619]=8'h0;
 rom0[620]=8'h0;
 rom0[621]=8'h0;
 rom0[622]=8'h0;
 rom0[623]=8'h0;
 rom0[624]=8'h0;
 rom0[625]=8'h0;
 rom0[626]=8'h0;
 rom0[627]=8'h0;
 rom0[628]=8'h0;
 rom0[629]=8'h0;
 rom0[630]=8'h0;
 rom0[631]=8'h0;
 rom0[632]=8'h0;
 rom0[633]=8'h0;
 rom0[634]=8'h0;
 rom0[635]=8'h0;
 rom0[636]=8'h0;
 rom0[637]=8'h0;
 rom0[638]=8'h0;
 rom0[639]=8'h0;
 rom0[640]=8'h0;
 rom0[641]=8'h0;
 rom0[642]=8'h0;
 rom0[643]=8'h0;
 rom0[644]=8'h0;
 rom0[645]=8'h0;
 rom0[646]=8'h0;
 rom0[647]=8'h0;
 rom0[648]=8'h0;
 rom0[649]=8'h0;
 rom0[650]=8'h0;
 rom0[651]=8'h0;
 rom0[652]=8'h0;
 rom0[653]=8'h0;
 rom0[654]=8'h0;
 rom0[655]=8'h0;
 rom0[656]=8'h0;
 rom0[657]=8'h0;
 rom0[658]=8'h0;
 rom0[659]=8'h0;
 rom0[660]=8'h0;
 rom0[661]=8'h0;
 rom0[662]=8'h0;
 rom0[663]=8'h0;
 rom0[664]=8'h0;
 rom0[665]=8'h0;
 rom0[666]=8'h0;
 rom0[667]=8'h0;
 rom0[668]=8'h0;
 rom0[669]=8'h0;
 rom0[670]=8'h0;
 rom0[671]=8'h0;
 rom0[672]=8'h0;
 rom0[673]=8'h0;
 rom0[674]=8'h0;
 rom0[675]=8'h0;
 rom0[676]=8'h0;
 rom0[677]=8'h0;
 rom0[678]=8'h0;
 rom0[679]=8'h0;
 rom0[680]=8'h0;
 rom0[681]=8'h0;
 rom0[682]=8'h0;
 rom0[683]=8'h0;
 rom0[684]=8'h0;
 rom0[685]=8'h0;
 rom0[686]=8'h0;
 rom0[687]=8'h0;
 rom0[688]=8'h0;
 rom0[689]=8'h0;
 rom0[690]=8'h0;
 rom0[691]=8'h0;
 rom0[692]=8'h0;
 rom0[693]=8'h0;
 rom0[694]=8'h0;
 rom0[695]=8'h0;
 rom0[696]=8'h0;
 rom0[697]=8'h0;
 rom0[698]=8'h0;
 rom0[699]=8'h0;
 rom0[700]=8'h0;
 rom0[701]=8'h0;
 rom0[702]=8'h0;
 rom0[703]=8'h0;
 rom0[704]=8'h0;
 rom0[705]=8'h0;
 rom0[706]=8'h0;
 rom0[707]=8'h0;
 rom0[708]=8'h0;
 rom0[709]=8'h0;
 rom0[710]=8'h0;
 rom0[711]=8'h0;
 rom0[712]=8'h0;
 rom0[713]=8'h0;
 rom0[714]=8'h0;
 rom0[715]=8'h0;
 rom0[716]=8'h0;
 rom0[717]=8'h0;
 rom0[718]=8'h0;
 rom0[719]=8'h0;
 rom0[720]=8'h0;
 rom0[721]=8'h0;
 rom0[722]=8'h0;
 rom0[723]=8'h0;
 rom0[724]=8'h0;
 rom0[725]=8'h0;
 rom0[726]=8'h0;
 rom0[727]=8'h0;
 rom0[728]=8'h0;
 rom0[729]=8'h0;
 rom0[730]=8'h0;
 rom0[731]=8'h0;
 rom0[732]=8'h0;
 rom0[733]=8'h0;
 rom0[734]=8'h0;
 rom0[735]=8'h0;
 rom0[736]=8'h0;
 rom0[737]=8'h0;
 rom0[738]=8'h0;
 rom0[739]=8'h0;
 rom0[740]=8'h0;
 rom0[741]=8'h0;
 rom0[742]=8'h0;
 rom0[743]=8'h0;
 rom0[744]=8'h0;
 rom0[745]=8'h0;
 rom0[746]=8'h0;
 rom0[747]=8'h0;
 rom0[748]=8'h0;
 rom0[749]=8'h0;
 rom0[750]=8'h0;
 rom0[751]=8'h0;
 rom0[752]=8'h0;
 rom0[753]=8'h0;
 rom0[754]=8'h0;
 rom0[755]=8'h0;
 rom0[756]=8'h0;
 rom0[757]=8'h0;
 rom0[758]=8'h0;
 rom0[759]=8'h0;
 rom0[760]=8'h0;
 rom0[761]=8'h0;
 rom0[762]=8'h0;
 rom0[763]=8'h0;
 rom0[764]=8'h0;
 rom0[765]=8'h0;
 rom0[766]=8'h0;
 rom0[767]=8'h0;
 rom0[768]=8'h0;
 rom0[769]=8'h0;
 rom0[770]=8'h0;
 rom0[771]=8'h0;
 rom0[772]=8'h0;
 rom0[773]=8'h0;
 rom0[774]=8'h0;
 rom0[775]=8'h0;
 rom0[776]=8'h0;
 rom0[777]=8'h0;
 rom0[778]=8'h0;
 rom0[779]=8'h0;
 rom0[780]=8'h0;
 rom0[781]=8'h0;
 rom0[782]=8'h0;
 rom0[783]=8'h0;
 rom0[784]=8'h0;
 rom0[785]=8'h0;
 rom0[786]=8'h0;
 rom0[787]=8'h0;
 rom0[788]=8'h0;
 rom0[789]=8'h0;
 rom0[790]=8'h0;
 rom0[791]=8'h0;
 rom0[792]=8'h0;
 rom0[793]=8'h0;
 rom0[794]=8'h0;
 rom0[795]=8'h0;
 rom0[796]=8'h0;
 rom0[797]=8'h0;
 rom0[798]=8'h0;
 rom0[799]=8'h0;
 rom0[800]=8'h0;
 rom0[801]=8'h0;
 rom0[802]=8'h0;
 rom0[803]=8'h0;
 rom0[804]=8'h0;
 rom0[805]=8'h0;
 rom0[806]=8'h0;
 rom0[807]=8'h0;
 rom0[808]=8'h0;
 rom0[809]=8'h0;
 rom0[810]=8'h0;
 rom0[811]=8'h0;
 rom0[812]=8'h0;
 rom0[813]=8'h0;
 rom0[814]=8'h0;
 rom0[815]=8'h0;
 rom0[816]=8'h0;
 rom0[817]=8'h0;
 rom0[818]=8'h0;
 rom0[819]=8'h0;
 rom0[820]=8'h0;
 rom0[821]=8'h0;
 rom0[822]=8'h0;
 rom0[823]=8'h0;
 rom0[824]=8'h0;
 rom0[825]=8'h0;
 rom0[826]=8'h0;
 rom0[827]=8'h0;
 rom0[828]=8'h0;
 rom0[829]=8'h0;
 rom0[830]=8'h0;
 rom0[831]=8'h0;
 rom0[832]=8'h0;
 rom0[833]=8'h0;
 rom0[834]=8'h0;
 rom0[835]=8'h0;
 rom0[836]=8'h0;
 rom0[837]=8'h0;
 rom0[838]=8'h0;
 rom0[839]=8'h0;
 rom0[840]=8'h0;
 rom0[841]=8'h0;
 rom0[842]=8'h0;
 rom0[843]=8'h0;
 rom0[844]=8'h0;
 rom0[845]=8'h0;
 rom0[846]=8'h0;
 rom0[847]=8'h0;
 rom0[848]=8'h0;
 rom0[849]=8'h0;
 rom0[850]=8'h0;
 rom0[851]=8'h0;
 rom0[852]=8'h0;
 rom0[853]=8'h0;
 rom0[854]=8'h0;
 rom0[855]=8'h0;
 rom0[856]=8'h0;
 rom0[857]=8'h0;
 rom0[858]=8'h0;
 rom0[859]=8'h0;
 rom0[860]=8'h0;
 rom0[861]=8'h0;
 rom0[862]=8'h0;
 rom0[863]=8'h0;
 rom0[864]=8'h0;
 rom0[865]=8'h0;
 rom0[866]=8'h0;
 rom0[867]=8'h0;
 rom0[868]=8'h0;
 rom0[869]=8'h0;
 rom0[870]=8'h0;
 rom0[871]=8'h0;
 rom0[872]=8'h0;
 rom0[873]=8'h0;
 rom0[874]=8'h0;
 rom0[875]=8'h0;
 rom0[876]=8'h0;
 rom0[877]=8'h0;
 rom0[878]=8'h0;
 rom0[879]=8'h0;
 rom0[880]=8'h0;
 rom0[881]=8'h0;
 rom0[882]=8'h0;
 rom0[883]=8'h0;
 rom0[884]=8'h0;
 rom0[885]=8'h0;
 rom0[886]=8'h0;
 rom0[887]=8'h0;
 rom0[888]=8'h0;
 rom0[889]=8'h0;
 rom0[890]=8'h0;
 rom0[891]=8'h0;
 rom0[892]=8'h0;
 rom0[893]=8'h0;
 rom0[894]=8'h0;
 rom0[895]=8'h0;
 rom0[896]=8'h0;
 rom0[897]=8'h0;
 rom0[898]=8'h0;
 rom0[899]=8'h0;
 rom0[900]=8'h0;
 rom0[901]=8'h0;
 rom0[902]=8'h0;
 rom0[903]=8'h0;
 rom0[904]=8'h0;
 rom0[905]=8'h0;
 rom0[906]=8'h0;
 rom0[907]=8'h0;
 rom0[908]=8'h0;
 rom0[909]=8'h0;
 rom0[910]=8'h0;
 rom0[911]=8'h0;
 rom0[912]=8'h0;
 rom0[913]=8'h0;
 rom0[914]=8'h0;
 rom0[915]=8'h0;
 rom0[916]=8'h0;
 rom0[917]=8'h0;
 rom0[918]=8'h0;
 rom0[919]=8'h0;
 rom0[920]=8'h0;
 rom0[921]=8'h0;
 rom0[922]=8'h0;
 rom0[923]=8'h0;
 rom0[924]=8'h0;
 rom0[925]=8'h0;
 rom0[926]=8'h0;
 rom0[927]=8'h0;
 rom0[928]=8'h0;
 rom0[929]=8'h0;
 rom0[930]=8'h0;
 rom0[931]=8'h0;
 rom0[932]=8'h0;
 rom0[933]=8'h0;
 rom0[934]=8'h0;
 rom0[935]=8'h0;
 rom0[936]=8'h0;
 rom0[937]=8'h0;
 rom0[938]=8'h0;
 rom0[939]=8'h0;
 rom0[940]=8'h0;
 rom0[941]=8'h0;
 rom0[942]=8'h0;
 rom0[943]=8'h0;
 rom0[944]=8'h0;
 rom0[945]=8'h0;
 rom0[946]=8'h0;
 rom0[947]=8'h0;
 rom0[948]=8'h0;
 rom0[949]=8'h0;
 rom0[950]=8'h0;
 rom0[951]=8'h0;
 rom0[952]=8'h0;
 rom0[953]=8'h0;
 rom0[954]=8'h0;
 rom0[955]=8'h0;
 rom0[956]=8'h0;
 rom0[957]=8'h0;
 rom0[958]=8'h0;
 rom0[959]=8'h0;
 rom0[960]=8'h0;
 rom0[961]=8'h0;
 rom0[962]=8'h0;
 rom0[963]=8'h0;
 rom0[964]=8'h0;
 rom0[965]=8'h0;
 rom0[966]=8'h0;
 rom0[967]=8'h0;
 rom0[968]=8'h0;
 rom0[969]=8'h0;
 rom0[970]=8'h0;
 rom0[971]=8'h0;
 rom0[972]=8'h0;
 rom0[973]=8'h0;
 rom0[974]=8'h0;
 rom0[975]=8'h0;
 rom0[976]=8'h0;
 rom0[977]=8'h0;
 rom0[978]=8'h0;
 rom0[979]=8'h0;
 rom0[980]=8'h0;
 rom0[981]=8'h0;
 rom0[982]=8'h0;
 rom0[983]=8'h0;
 rom0[984]=8'h0;
 rom0[985]=8'h0;
 rom0[986]=8'h0;
 rom0[987]=8'h0;
 rom0[988]=8'h0;
 rom0[989]=8'h0;
 rom0[990]=8'h0;
 rom0[991]=8'h0;
 rom0[992]=8'h0;
 rom0[993]=8'h0;
 rom0[994]=8'h0;
 rom0[995]=8'h0;
 rom0[996]=8'h0;
 rom0[997]=8'h0;
 rom0[998]=8'h0;
 rom0[999]=8'h0;
end
always @(posedge clk) 
begin 
 if (ce0) 
 begin
 q0 <= rom0[address0];
 end
end
endmodule
