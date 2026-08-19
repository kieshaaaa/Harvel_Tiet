#include <stdio.h>

int entry_point(unsigned int n, unsigned int *temptemp1) {
    if (n > 0) {
        unsigned int add_ln9_fu_65_p2 = n + 1;
        unsigned int trunc_ln9_1_fu_71_p1 = add_ln9_fu_65_p2 & 0x7FFFFFFF;
        unsigned int select_ln9_fu_81_p3 = (add_ln9_fu_65_p2 > 2) ? trunc_ln9_1_fu_71_p1 : 2;
        unsigned int shl_ln9_fu_92_p3 = select_ln9_fu_81_p3 << 1;
        unsigned long long mul_ln9_fu_55_p2 = (unsigned long long)(select_ln9_fu_81_p3 + 2147483646U) * (select_ln9_fu_81_p3 + 4294967293U);
        unsigned int trunc_ln9_fu_120_p4 = (unsigned int)(mul_ln9_fu_55_p2 >> 1);
        *temptemp1 = trunc_ln9_fu_120_p4 + 4294967293U + shl_ln9_fu_92_p3;
    } else {
        *temptemp1 = 0;
    }
    return 0;
}