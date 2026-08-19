#include <stdio.h>

int main() {
    float baseLength, slantHeight, surfaceArea;
    printf("Enter base length: ");
    scanf("%f", &baseLength);
    printf("Enter slant height: ");
    scanf("%f", &slantHeight);
    surfaceArea = baseLength * baseLength; // Base area calculation
    surfaceArea += 2 * baseLength * slantHeight; // Adding lateral surface area
    printf("Total Surface Area: %.2f\n", surfaceArea);
    return 0;
}