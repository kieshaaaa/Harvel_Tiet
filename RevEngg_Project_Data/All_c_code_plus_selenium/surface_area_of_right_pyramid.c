#include <stdio.h>
#include <math.h>

int main() {
    float sideLength, slantHeight, baseArea, lateralArea, surfaceArea;

    // Input: side length of the square base and slant height
    printf("Enter the side length of the square base: ");
    scanf("%f", &sideLength);
    printf("Enter the slant height of the pyramid: ");
    scanf("%f", &slantHeight);

    // Calculating the area of the square base
    baseArea = sideLength * sideLength;

    // Calculating the lateral surface area (area of the four triangular faces)
    lateralArea = 4 * (sideLength * slantHeight) / 2;

    // Calculating the total surface area
    surfaceArea = baseArea + lateralArea;

    // Output
    printf("Surface area of the right pyramid with a square base: %.2f\n", surfaceArea);

    return 0;
}
