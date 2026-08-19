#include <stdio.h>

int main() {
    float speedMPS, speedKnots;
    printf("Enter speed in meters per second: ");
    scanf("%f", &speedMPS);
    speedKnots = speedMPS * 1.94384; // More precise conversion factor
    printf("Speed in knots: ");
    printf("%f", speedKnots);
    printf("\n");
    return 0;
}