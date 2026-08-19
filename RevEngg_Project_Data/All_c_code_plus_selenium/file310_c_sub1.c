#include <stdio.h>

int main() {
    float atm, mmHg, conversionFactor;
    conversionFactor = 760.0;
    printf("Enter pressure in Atmospheres: ");
    scanf("%f", &atm);
    mmHg = atm * conversionFactor;
    printf("Pressure in mmHg: %f\n", mmHg);
    return 0;
}