#include <stdio.h>

int entry_point(unsigned int rows, unsigned int *temptemp1) {
    if (rows > 0) {
        unsigned int add_ln10_fu_65_p2 = rows + 1;
        unsigned int trunc_ln10_fu_71_p1 = add_ln10_fu_65_p2 & 0x7FFFFFFF;
        unsigned int select_ln10_fu_81_p3 = (add_ln10_fu_65_p2 > 2) ? trunc_ln10_fu_71_p1 : 2;
        unsigned long long mul_ln10_fu_55_p2 = (unsigned long long)(select_ln10_fu_81_p3 + 2147483646U) * (select_ln10_fu_81_p3 + 4294967293U);
        unsigned int trunc_ln_fu_123_p4 = (unsigned int)(mul_ln10_fu_55_p2 >> 1);
        unsigned int shl_ln_fu_93_p3 = select_ln10_fu_81_p3 << 1;
        *temptemp1 = trunc_ln_fu_123_p4 + 4294967293U + shl_ln_fu_93_p3;
    }
    return 0;
}