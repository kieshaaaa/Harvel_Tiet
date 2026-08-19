```c
#include <stdio.h>

int entry_point(int yr, int *temptemp1, int *temptemp2) {
    int yr_read_reg_101;
    int trunc_ln5_reg_109;
    int icmp_ln5_reg_114;
    int phitmp_reg_118;
    int grp_fu_60_p2;
    int grp_fu_76_p2;
    int trunc_ln5_1_fu_66_p1;
    int trunc_ln5_2_fu_86_p1;
    int icmp_ln5_fu_70_p2;
    int icmp_ln5_1_fu_90_p2;
    int phitmp_fu_81_p2;
    int or_ln6_fu_96_p2;

    yr_read_reg_101 = yr;
    trunc_ln5_reg_109 = yr & 3;

    grp_fu_60_p2 = yr % 400;
    trunc_ln5_1_fu_66_p1 = grp_fu_60_p2 & 0x3FF;
    icmp_ln5_fu_70_p2 = (trunc_ln5_1_fu_66_p1 == 0) ? 1 : 0;
    phitmp_fu_81_p2 = (trunc_ln5_reg_109 != 0) ? 1 : 0;

    icmp_ln5_reg_114 = icmp_ln5_fu_70_p2;
    phitmp_reg_118 = phitmp_fu_81_p2;

    if (icmp_ln5_fu_70_p2 == 0) {
        grp_fu_76_p2 = yr_read_reg_101 % 100;
        trunc_ln5_2_fu_86_p1 = grp_fu_76_p2 & 0xFF;
        icmp_ln5_1_fu_90_p2 = (trunc_ln5_2_fu_86_p1 == 0) ? 1 : 0;
    } else {
        icmp_ln5_1_fu_90_p2 = 0;
    }

    or_ln6_fu_96_p2 = phitmp_reg_118 | icmp_ln5_1_fu_90_p2;

    if (or_ln6_fu_96_p2 == 1 && icmp_ln5_reg_114 == 0) {
        *temptemp1 = yr_read_reg_101;
    }
    if (or_ln6_fu_96_p2 == 0 || icmp_ln5_reg_114 == 1) {
        *temptemp2 = yr_read_reg_101;
    }

    return 0;
}
```