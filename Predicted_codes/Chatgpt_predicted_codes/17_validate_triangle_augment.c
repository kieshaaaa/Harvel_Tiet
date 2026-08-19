#include <stdio.h>

void entry_point(unsigned int side1, unsigned int side2, unsigned int side3, unsigned int* temptemp1, unsigned int* temptemp2) {
    unsigned int add_reg_412 = side1 + side2;
    unsigned int add1_reg_418 = side2 + side3;
    unsigned int add4_reg_424 = side1 + side3;

    unsigned int tmp_3 = (add_reg_412 != side1) && 1;
    unsigned int tmp_6 = (add1_reg_418 != side2) && 1;
    unsigned int tmp_9 = (add4_reg_424 != side2) && 1;

    unsigned int and_ln7_2 = tmp_3 & ((side1 != side2) && 1);
    unsigned int and_ln7_4 = tmp_6 & ((side2 != side3) && 1);
    unsigned int and_ln7_5 = (((tmp_9 & ((side3 != side1) && 1)) & and_ln7_4) & 1);

    unsigned int and_ln7_1 = and_ln7_5 & and_ln7_2;

    *temptemp1 = 1;
    *temptemp2 = 0;
}