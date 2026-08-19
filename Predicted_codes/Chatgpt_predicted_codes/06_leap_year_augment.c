#include <stdio.h>

int entry_point(unsigned int yr, int *temptemp1, int *temptemp2) {
    unsigned int yr_read_reg_101;
    unsigned int trunc_ln5_1_fu_66_p1;
    unsigned int trunc_ln5_2_fu_86_p1;
    unsigned int trunc_ln5_fu_56_p1;
    unsigned char phitmp_reg_118;
    unsigned char icmp_ln5_1_fu_90_p2;
    unsigned char icmp_ln5_fu_70_p2;
    unsigned char or_ln6_fu_96_p2;

    yr_read_reg_101 = yr;
    trunc_ln5_fu_56_p1 = yr & 0x3;
    trunc_ln5_1_fu_66_p1 = 400;
    trunc_ln5_2_fu_86_p1 = 100;

    icmp_ln5_fu_70_p2 = (trunc_ln5_1_fu_66_p1 == 0) ? 1 : 0;
    phitmp_reg_118 = (trunc_ln5_fu_56_p1 != 0) ? 1 : 0;
    icmp_ln5_1_fu_90_p2 = (trunc_ln5_2_fu_86_p1 == 0) ? 1 : 0;
    or_ln6_fu_96_p2 = phitmp_reg_118 | icmp_ln5_1_fu_90_p2;

    *temptemp1 = yr_read_reg_101;
    *temptemp2 = yr_read_reg_101;

    return 0;
}