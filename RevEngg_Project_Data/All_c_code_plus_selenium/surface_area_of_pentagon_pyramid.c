#include <stdio.h>
#include <math.h>

int main() {
    float sideLength, slantHeight, baseArea, lateralArea, surfaceArea;

    // Input: side length of the base pentagon and slant height of the pyramid
    printf("Enter the side length of the pentagon: ");
    scanf("%f", &sideLength);
    printf("Enter the slant height of the pyramid: ");
    scanf("%f", &slantHeight);

    // Calculating the area of the pentagonal base
    baseArea = (5 * sideLength * sideLength) / (4 * tan(M_PI / 5));

    // Calculating the lateral surface area (area of the five triangular faces)
    lateralArea = (5 * sideLength * slantHeight) / 2;

    // Calculating the total surface area
    surfaceArea = baseArea + lateralArea;

    // Output
    printf("Surface area of the pentagonal pyramid: %.2f\n", surfaceArea);

    return 0;
}
