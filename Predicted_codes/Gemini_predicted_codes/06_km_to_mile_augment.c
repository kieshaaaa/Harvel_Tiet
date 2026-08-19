#include <stdio.h>
#include <math.h>

int entry_point(float kilometers, float *temptemp1, float *temptemp2) {
    *temptemp1 = kilometers;
    double kilometers_d = (double)kilometers;
    
    // The constant 64'd4609926660211357856 is the 64-bit double-precision 
    // floating-point representation of 1.609344 (Hex 0x3FF999999999999A)
    // The calculation is miles = kilometers / 1.609344
    double miles_d = kilometers_d / 1.609344;
    
    float miles = (float)miles_d;
    *temptemp2 = miles;
    
    return 0;
}