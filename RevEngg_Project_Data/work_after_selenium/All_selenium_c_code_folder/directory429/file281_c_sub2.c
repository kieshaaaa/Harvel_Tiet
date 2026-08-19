#include <stdio.h>

int main() {
    float meters, yards;
    const float conversionFactor = 1.09;

    printf("Meters to yards converter\nEnter the length in meters: ");
    scanf("%f", &meters);

    yards = meters * conversionFactor;

    printf("Conversion: %f meters = %f yards\n", meters, yards);

    return 0;
}