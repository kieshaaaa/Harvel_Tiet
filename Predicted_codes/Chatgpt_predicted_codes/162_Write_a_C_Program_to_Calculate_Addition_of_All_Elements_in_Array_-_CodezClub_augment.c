#include <stdio.h>

int entry_point(int numElements, int values, int *temptemp1, int *temptemp2, int *temptemp3, int *temptemp4) {
    int ap_phi_mux_total_0_lcssa_phi_fu_78_p4;
    int mul_ln19_fu_86_p2;
    int icmp_ln10_fu_93_p2;

    mul_ln19_fu_86_p2 = values * numElements;
    icmp_ln10_fu_93_p2 = (numElements > 0) ? 1 : 0;

    if (icmp_ln10_fu_93_p2 == 0) {
        ap_phi_mux_total_0_lcssa_phi_fu_78_p4 = 0;
    } else if (icmp_ln10_fu_93_p2 == 1) {
        ap_phi_mux_total_0_lcssa_phi_fu_78_p4 = mul_ln19_fu_86_p2;
    }

    *temptemp1 = numElements;
    *temptemp2 = numElements;
    *temptemp3 = values;
    *temptemp4 = ap_phi_mux_total_0_lcssa_phi_fu_78_p4;

    return 0;
}