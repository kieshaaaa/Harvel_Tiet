#include <stdio.h>

int main() {
    float pascals, mmHg;
    printf("Please enter the pressure value in Pascals: ");
    scanf("%f", &pascals);
    mmHg = pascals * 0.007; // Kept the original conversion factor here
    printf("Converted pressure in mmHg: %f\n", mmHg);
    return 0;
}