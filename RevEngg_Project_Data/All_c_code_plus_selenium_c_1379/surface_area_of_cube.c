#include <stdio.h>

int main() {
    float sideLength, surfaceArea;

    // Prompt the user for the side length of the cube
    printf("Enter the side length of the cube: ");
    scanf("%f", &sideLength);

    // Calculate the surface area
    surfaceArea = 6 * (sideLength * sideLength);

    // Display the result
    printf("Surface area of the cube: %.2f\n", surfaceArea);

    return 0;
}
