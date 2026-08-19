module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 ch,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 temptemp3,
 temptemp3_ap_vld,
 temptemp4,
 temptemp4_ap_vld,
 temptemp5,
 temptemp5_ap_vld,
 temptemp6,
 temptemp6_ap_vld,
 ap_return
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [7:0] ch;
output [7:0] temptemp1;
output temptemp1_ap_vld;
output [7:0] temptemp2;
output temptemp2_ap_vld;
output [7:0] temptemp3;
output temptemp3_ap_vld;
output [7:0] temptemp4;
output temptemp4_ap_vld;
output [7:0] temptemp5;
output temptemp5_ap_vld;
output [7:0] temptemp6;
output temptemp6_ap_vld;
output [31:0] ap_return;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg temptemp3_ap_vld;
reg temptemp4_ap_vld;
reg temptemp5_ap_vld;
reg temptemp6_ap_vld;
wire [7:0] ch_read_read_fu_44_p2;
wire ap_ce_reg;
always @ (*) begin
 if (((ch_read_read_fu_44_p2 == 8'd97) & (ap_start == 1'b1))) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ch_read_read_fu_44_p2 == 8'd101) & (ap_start == 1'b1))) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ch_read_read_fu_44_p2 == 8'd105) & (ap_start == 1'b1))) begin
 temptemp3_ap_vld = 1'b1;
 end else begin
 temptemp3_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ch_read_read_fu_44_p2 == 8'd111) & (ap_start == 1'b1))) begin
 temptemp4_ap_vld = 1'b1;
 end else begin
 temptemp4_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if (((ch_read_read_fu_44_p2 == 8'd117) & (ap_start == 1'b1))) begin
 temptemp5_ap_vld = 1'b1;
 end else begin
 temptemp5_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((~(ch_read_read_fu_44_p2 == 8'd97) & ~(ch_read_read_fu_44_p2 == 8'd101) & ~(ch_read_read_fu_44_p2 == 8'd105) & ~(ch_read_read_fu_44_p2 == 8'd111) & ~(ch_read_read_fu_44_p2 == 8'd117) & (ap_start == 1'b1))) begin
 temptemp6_ap_vld = 1'b1;
 end else begin
 temptemp6_ap_vld = 1'b0;
 end
end
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign ch_read_read_fu_44_p2 = ch;
assign temptemp1 = 8'd97;
assign temptemp2 = 8'd101;
assign temptemp3 = 8'd105;
assign temptemp4 = 8'd111;
assign temptemp5 = 8'd117;
assign temptemp6 = ch;
endmodule
