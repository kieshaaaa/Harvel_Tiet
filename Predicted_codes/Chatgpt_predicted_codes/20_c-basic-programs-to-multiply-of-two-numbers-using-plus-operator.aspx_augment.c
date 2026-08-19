#include <stdint.h>

int entry_point(int num1, int num2, int *temptemp1, int *temptemp2, int *temptemp3) {
    int num2_read = num2;
    int add_ln11 = num2_read + 1;
    int icmp_ln11 = (num2 > 0) ? 1 : 0;
    int icmp_ln11_1 = (add_ln11 > 2) ? 1 : 0;
    int mul_ln11 = num1 * (icmp_ln11_1 ? num2_read : 1);

    *temptemp1 = num1;
    *temptemp2 = num2;
    *temptemp3 = (icmp_ln11 ? mul_ln11 : 0);

    return 0;
}