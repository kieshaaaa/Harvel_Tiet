#include <stdio.h>

int entry_point(int num1, int num2, int *temptemp1, int *temptemp2, int *temptemp3) {
    *temptemp1 = num1;
    *temptemp2 = num2;
    if (num2 > 0) {
        int add_ln11_fu_80_p2 = num2 + 1;
        int mul_ln11_fu_69_p1 = (add_ln11_fu_80_p2 > 2) ? num2 : 1;
        *temptemp3 = num1 * mul_ln11_fu_69_p1;
    } else {
        *temptemp3 = 0;
    }
    return 0;
}