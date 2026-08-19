#include <stdio.h>

int main() {
    float meters, kilometers, conversionResult;
    printf("Conversion tool: Meters to Kilometers.\nEnter the distance in meters: ");
    scanf("%f", &meters);

    conversionResult = meters / 1000;
    kilometers = conversionResult;

    printf("The distance ");
    printf("%.2f", meters);
    printf(" meters");
    printf(" is equivalent to ");
    printf("%.2f", kilometers);
    printf(" kilometers.\n");

    return 0;
}