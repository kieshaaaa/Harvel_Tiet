#include <stdio.h>

int main() {
    float mph, knots;
    printf("Speed Converter: MPH to Knots\n");
    printf("Enter speed in miles per hour: ");
    scanf("%f", &mph);
    knots = mph * 0.868976f; // Another method of conversion
    printf("Speed in knots: %f\n", knots);
    return 0;
}