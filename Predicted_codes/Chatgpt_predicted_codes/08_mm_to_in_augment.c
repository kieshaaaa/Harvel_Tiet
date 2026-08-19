#include <stdint.h>

uint32_t entry_point(uint32_t millimeters, uint32_t* temptemp1, uint32_t* temptemp2) {
    uint64_t conv_reg_87;
    uint64_t div1_reg_92;
    uint32_t div_reg_82;
    uint32_t grp_fu_51_p2;
    uint32_t inches_fu_56_p1;

    div_reg_82 = millimeters / 1092616192U;
    conv_reg_87 = (uint64_t)div_reg_82;
    div1_reg_92 = conv_reg_87 / 4612901990326777938ULL;
    inches_fu_56_p1 = (uint32_t)div1_reg_92;

    *temptemp1 = millimeters;
    *temptemp2 = inches_fu_56_p1;

    return 0;
}