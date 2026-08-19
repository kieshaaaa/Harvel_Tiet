#include <stdio.h>

int main() {
    float inputPascals, resultBar, conversionFactor;
    printf("Enter the pressure in Pascals for conversion: ");
    scanf("%f", &inputPascals);
    conversionFactor = 100000;
    resultBar = inputPascals / conversionFactor;
    printf("Equivalent pressure in Bar: %f\n", resultBar);
    return 0;
}