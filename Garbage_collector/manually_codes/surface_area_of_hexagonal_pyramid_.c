#include <stdio.h>
#include <math.h>

int main() {
    float s, sl, baseArea, lateralArea, surfaceArea;
    const float pi = 3.14159;

    // Input: side length and slant height
    printf("Enter the side length of the hexagon: ");
    scanf("%f", &s);
    printf("Enter the slant height of the pyramid: ");
    scanf("%f", &sl);

    // Calculating the area of the hexagonal base
    baseArea = (3 * sqrt(3) / 2) * s * s;

    // Calculating the lateral surface area (area of the six triangular faces)
    lateralArea = 6 * (s * sl) / 2;

    // Calculating the total surface area
    surfaceArea = baseArea + lateralArea;

    // Output
    printf("Surface area of the hexagonal pyramid: %.2f\n", surfaceArea);

    return 0;
}
