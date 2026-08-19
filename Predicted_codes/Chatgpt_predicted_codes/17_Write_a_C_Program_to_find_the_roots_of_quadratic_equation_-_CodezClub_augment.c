#include <stdio.h>
#include <math.h>

int entry_point(int a, int b, int c, int *temptemp1, int *temptemp2, int *temptemp3) {
    int sub_ln13 = (a * c) - (b * b);
    int shl_ln13 = sub_ln13 << 2;
    int shl_ln14 = shl_ln13 << 1;
    int bitcast_ln15 = shl_ln14;
    unsigned char tmp_1 = (bitcast_ln15 >> 0) & 255;
    unsigned int trunc_ln15 = (bitcast_ln15 >> 0) & 8388607;
    int icmp_ln15 = (trunc_ln15 == 0);
    int icmp_ln15_1 = (tmp_1 == 0);
    int or_ln15 = icmp_ln15 | icmp_ln15_1;
    int and_ln15 = or_ln15 & 1;
    int and_ln24 = (b != 0);
    float f_a = (float)a;
    float f_b = (float)b;
    float f_c = (float)c;
    float div_val = f_c / f_a;
    float div1_val = ((double)tmp_reg_290) / ((double)reg_163);
    double sqrt_val = sqrt((double)reg_163);
    double add_val = ((double)reg_163) + ((double)div1_val);
    double sub_val = ((double)reg_163) - ((double)div1_val);
    int root1 = (int)add_val;
    int root2 = (int)sub_val;
    *temptemp1 = root1;
    *temptemp2 = root2;
    *temptemp3 = div_val;
    return 0;
}