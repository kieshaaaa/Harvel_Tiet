#include <stdio.h>

int main() {
    float mph, knots;
    printf("Enter speed in miles per hour: ");
    scanf("%f", &mph);
    knots = mph / 1.15078f; // More precise conversion factor
    printf("Equivalent in knots: %f\n", knots);
    return 0;
}