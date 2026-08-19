#include <stdio.h>

int entry_point(int yr, int *temptemp1, int *temptemp2) {
    int is_leap;
    int mod_4;
    int mod_100;
    int mod_400;

    mod_4 = yr % 4;
    mod_100 = yr % 100;
    mod_400 = yr % 400;

    // This is the core logic for determining a leap year:
    // (yr % 4 == 0) && ((yr % 100 != 0) || (yr % 400 == 0))
    
    // Deconstructed from Verilog logic:
    // trunc_ln5_fu_56_p1 = yr[1:0] which is yr % 4 in positive integer arithmetic (for yr >= 0)
    // trunc_ln5_reg_109 = yr % 4
    // phitmp_fu_81_p2 = (yr % 4 != 0) ? 1 : 0
    // icmp_ln5_fu_70_p2 = (grp_fu_60_p2 == 0) which is (yr % 400 == 0) ? 1 : 0
    // grp_fu_60_p2 is yr % 400
    // icmp_ln5_1_fu_90_p2 = (grp_fu_76_p2 == 0) which is (yr % 100 == 0) ? 1 : 0
    // grp_fu_76_p2 is yr % 100
    // or_ln6_fu_96_p2 = (phitmp_reg_118 | icmp_ln5_1_fu_90_p2) which is (yr % 4 != 0) || (yr % 100 == 0)

    // The logic structure in Verilog suggests:
    // if (yr % 400 == 0) { // icmp_ln5_fu_70_p2 == 1'b1
    //     is_leap = 1; // Handled by going to state 71 and using (icmp_ln5_reg_114 == 1'd1) to set temptemp2
    // } else { // icmp_ln5_fu_70_p2 == 1'b0
    //     if ((yr % 4 != 0) || (yr % 100 == 0)) { // or_ln6_fu_96_p2 == 1'd1
    //         is_leap = 0; // Handled by (or_ln6_fu_96_p2 == 1'd1) && (icmp_ln5_reg_114 == 1'd0) to set temptemp1
    //     } else { // (yr % 4 == 0) && (yr % 100 != 0)
    //         is_leap = 1; // Handled by ((or_ln6_fu_96_p2 == 1'd0) | (icmp_ln5_reg_114 == 1'd1)) to set temptemp2
    //     }
    // }
    
    // Combining this is the standard leap year rule:
    // (yr % 4 == 0 && yr % 100 != 0) || (yr % 400 == 0)
    
    if (mod_400 == 0) {
        is_leap = 1;
    } else if (mod_100 == 0) {
        is_leap = 0;
    } else if (mod_4 == 0) {
        is_leap = 1;
    } else {
        is_leap = 0;
    }

    // Output assignment based on final state 71 transitions:
    // temptemp1_ap_vld is true if is_leap is 0 (not a leap year)
    // temptemp2_ap_vld is true if is_leap is 1 (a leap year)
    // The Verilog sets temptemp1 and temptemp2 to the input 'yr' regardless of the result.
    // The C equivalent is likely meant to return a different value or to indicate the leap year status via the output pointers, but based on the hardware output signals (temptemp1 and temptemp2 being yr_read_reg_101), the actual C output should reflect the structure of the computation and its side effects on the pointer. Assuming the intent is to pass the year value *only* if it is or isn't a leap year.

    if (is_leap == 1) {
        *temptemp2 = yr;
    } else {
        *temptemp1 = yr;
    }

    return 0;
}