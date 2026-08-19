#include <stdio.h>

int main() {
    float speedInMetersPerSecond, speedInKnots, conversionFactor;
    conversionFactor = 1.94384; // Using a variable for conversion factor
    printf("Enter speed in meters per second: ");
    scanf("%f", &speedInMetersPerSecond);
    speedInKnots = speedInMetersPerSecond * conversionFactor;
    printf("Speed in knots: ");
    printf("%f", speedInKnots);
    printf("\n");
    return 0;
}