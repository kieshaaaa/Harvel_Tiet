#include <stdio.h>
#include <math.h>

int main() {
    float baseLength, slantHeight, surfaceArea;

    // Prompt the user for the base length and slant height of the pyramid
    printf("Enter the base length of the square pyramid: ");
    scanf("%f", &baseLength);
    printf("Enter the slant height of the square pyramid: ");
    scanf("%f", &slantHeight);

    // Calculate the surface area
    surfaceArea = baseLength * baseLength + 2 * baseLength * slantHeight;

    // Display the result
    printf("Surface area of the square pyramid: %.2f\n", surfaceArea);

    return 0;
}
