#include <stdio.h>

int main() {
    float meters, kilometers, conversionFactor;
    conversionFactor = 1000.0;

    printf("Enter the length in meters: ");
    scanf("%f", &meters);

    kilometers = meters / conversionFactor;

    printf(" meters is equal to ");
    printf("%.2f", kilometers);
    printf(" kilometers.\n");

    return 0;
}