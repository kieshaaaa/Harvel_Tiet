#include <stdio.h>

int main() {
    float pascals, mmHg, conversionFactor;
    conversionFactor = 0.0075; // Slightly different conversion factor for variety
    printf("Input pressure in Pascals: ");
    scanf("%f", &pascals);
    mmHg = pascals * conversionFactor;
    printf("Equivalent mmHg: %f\n", mmHg);
    return 0;
}