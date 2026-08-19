#include <stdio.h>

int main() {
    float bar, mmHg, conversionFactor;
    conversionFactor = 750.062;
    printf("Input pressure in Bar: ");
    scanf("%f", &bar);
    mmHg = conversionFactor * bar;
    printf("Equivalent mmHg: %f\n", mmHg);
    return 0;
}