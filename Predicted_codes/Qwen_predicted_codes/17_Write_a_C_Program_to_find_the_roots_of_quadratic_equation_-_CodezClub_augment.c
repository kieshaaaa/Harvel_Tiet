#include <stdio.h>
#include <math.h>

int entry_point(int a, int b, int c, int *temptemp1, int *temptemp2, int *temptemp3) {
    float discriminant;
    float sqrt_discriminant;
    float root1_val, root2_val;
    float a_float, b_float, c_float;

    a_float = (float)a;
    b_float = (float)b;
    c_float = (float)c;

    discriminant = b_float * b_float - 4.0f * a_float * c_float;

    if (discriminant < 0.0f) {
        *temptemp3 = (int)(-b_float / (2.0f * a_float));
        *temptemp1 = 0;
        *temptemp2 = 0;
    } else if (discriminant == 0.0f) {
        root1_val = -b_float / (2.0f * a_float);
        *temptemp1 = (int)root1_val;
        *temptemp2 = (int)root1_val;
    } else {
        sqrt_discriminant = sqrtf(discriminant);
        root1_val = (-b_float + sqrt_discriminant) / (2.0f * a_float);
        root2_val = (-b_float - sqrt_discriminant) / (2.0f * a_float);
        *temptemp1 = (int)root1_val;
        *temptemp2 = (int)root2_val;
    }

    return 0;
}