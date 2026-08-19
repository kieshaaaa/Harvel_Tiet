#include <stdio.h>

int main() {
    float meters, feet, conversionFactor;

    printf("Enter the length in meters: ");
    scanf("%f", &meters);

    conversionFactor = 3.28084f; // Directly using the inverse of 0.3048
    feet = meters * conversionFactor;

    printf("%.2f meters is equal to %.2f feet.\n", meters, feet);

    return 0;
}