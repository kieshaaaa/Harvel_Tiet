#include <stdio.h>

int entry_point(int height_meters_i, int *height_meters_o, int weight_kg, int *temptemp1) {
    float div_reg_88;
    float mul_reg_94;
    float result;

    div_reg_88 = (float)height_meters_i / 1120403456.0f;
    *height_meters_o = (int)div_reg_88;

    mul_reg_94 = div_reg_88 * div_reg_88;
    result = (float)weight_kg / mul_reg_94;

    *temptemp1 = (int)result;
    return 0;
}