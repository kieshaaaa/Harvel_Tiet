#include <stdio.h>

int entry_point(float height_meters_i, float weight_kg, float *height_meters_o, float *temptemp1) {
    float div_reg_88 = height_meters_i / 42.0f;
    float mul_reg_94 = div_reg_88 * div_reg_88;
    float result = weight_kg / mul_reg_94;
    *height_meters_o = result;
    *temptemp1 = result;
    return 0;
}