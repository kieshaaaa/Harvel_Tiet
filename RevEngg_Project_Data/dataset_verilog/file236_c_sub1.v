module entry_point (
 ap_start,
 ap_done,
 ap_idle,
 ap_ready,
 a_i,
 a_o,
 a_o_ap_vld,
 b_i,
 b_o,
 b_o_ap_vld,
 temptemp1,
 temptemp1_ap_vld,
 temptemp2,
 temptemp2_ap_vld,
 ap_return
);
input ap_start;
output ap_done;
output ap_idle;
output ap_ready;
input [31:0] a_i;
output [31:0] a_o;
output a_o_ap_vld;
input [31:0] b_i;
output [31:0] b_o;
output b_o_ap_vld;
output [31:0] temptemp1;
output temptemp1_ap_vld;
output [31:0] temptemp2;
output temptemp2_ap_vld;
output [31:0] ap_return;
reg[31:0] a_o;
reg a_o_ap_vld;
reg[31:0] b_o;
reg b_o_ap_vld;
reg temptemp1_ap_vld;
reg temptemp2_ap_vld;
reg [31:0] ap_phi_mux_a_loc_0_phi_fu_73_p4;
wire [0:0] icmp_ln6_fu_94_p2;
reg [31:0] ap_phi_mux_empty_phi_fu_85_p4;
wire ap_ce_reg;
always @ (*) begin
 if (((icmp_ln6_fu_94_p2 == 1'd0) & (ap_start == 1'b1))) begin
 a_o = b_i;
 end else begin
 a_o = a_i;
 end
end
always @ (*) begin
 if (((icmp_ln6_fu_94_p2 == 1'd0) & (ap_start == 1'b1))) begin
 a_o_ap_vld = 1'b1;
 end else begin
 a_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((icmp_ln6_fu_94_p2 == 1'd0)) begin
 ap_phi_mux_a_loc_0_phi_fu_73_p4 = b_i;
 end else if ((icmp_ln6_fu_94_p2 == 1'd1)) begin
 ap_phi_mux_a_loc_0_phi_fu_73_p4 = a_i;
 end else begin
 ap_phi_mux_a_loc_0_phi_fu_73_p4 = 'bx;
 end
end
always @ (*) begin
 if ((icmp_ln6_fu_94_p2 == 1'd0)) begin
 ap_phi_mux_empty_phi_fu_85_p4 = a_i;
 end else if ((icmp_ln6_fu_94_p2 == 1'd1)) begin
 ap_phi_mux_empty_phi_fu_85_p4 = 32'd0;
 end else begin
 ap_phi_mux_empty_phi_fu_85_p4 = 'bx;
 end
end
always @ (*) begin
 if (((icmp_ln6_fu_94_p2 == 1'd0) & (ap_start == 1'b1))) begin
 b_o = a_i;
 end else begin
 b_o = b_i;
 end
end
always @ (*) begin
 if (((icmp_ln6_fu_94_p2 == 1'd0) & (ap_start == 1'b1))) begin
 b_o_ap_vld = 1'b1;
 end else begin
 b_o_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((ap_start == 1'b1)) begin
 temptemp1_ap_vld = 1'b1;
 end else begin
 temptemp1_ap_vld = 1'b0;
 end
end
always @ (*) begin
 if ((ap_start == 1'b1)) begin
 temptemp2_ap_vld = 1'b1;
 end else begin
 temptemp2_ap_vld = 1'b0;
 end
end
assign ap_done = ap_start;
assign ap_idle = 1'b1;
assign ap_ready = ap_start;
assign ap_return = 32'd0;
assign icmp_ln6_fu_94_p2 = ((b_i == 32'd0) ? 1'b1 : 1'b0);
assign temptemp1 = ap_phi_mux_a_loc_0_phi_fu_73_p4;
assign temptemp2 = ap_phi_mux_empty_phi_fu_85_p4;
endmodule
