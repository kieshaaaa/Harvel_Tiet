#include <stdint.h>

int entry_point(uint32_t num1, uint32_t num2, uint32_t num3, uint32_t num4, uint32_t num5, uint32_t num6, uint32_t* temptemp1) {
    int32_t add_ln12 = num1 + num2;
    int32_t sub_ln12 = num5 - num6;
    int32_t grp_fu_90_p2 = add_ln12 / num4;
    int32_t grp_fu_77_p2 = sub_ln12 * grp_fu_90_p2;
    *temptemp1 = grp_fu_77_p2;
    return 0;
}