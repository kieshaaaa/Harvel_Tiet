#include <stdio.h>

int main() {
    float pascals, atm, conversionFactor;
    conversionFactor = 101325;
    printf("Input the pressure (Pascals): ");
    scanf("%f", &pascals);
    atm = pascals / conversionFactor;
    printf("Equivalent atmospheric pressure: ");
    printf("%f atm\n", atm);
    return 0;
}