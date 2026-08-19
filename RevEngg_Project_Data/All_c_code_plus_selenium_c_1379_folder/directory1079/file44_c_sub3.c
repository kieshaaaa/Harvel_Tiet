#include <stdio.h>

int main() {
    float mps, knots;
    printf("Enter speed in meters per second: ");
    scanf("%f", &mps);
    knots = mps * 1.94384; // Slightly more accurate conversion
    printf("The equivalent speed in knots is: ");
    printf("%f", knots);
    printf("\n");
    return 0;
}