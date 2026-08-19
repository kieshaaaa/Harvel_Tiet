#include <stdio.h>
#include <math.h>

int main() {
    float sideLength, slantHeight, baseArea, lateralArea, surfaceArea;
    const float pi = 3.14159;

    printf("Enter the side length of the pentagon: ");
    scanf("%f", &sideLength);
    printf("Enter the slant height of the pyramid: ");
    scanf("%f", &slantHeight);

    baseArea = (5 * sideLength * sideLength) / (4 * tan(pi / 5));
    lateralArea = (5 * sideLength * slantHeight) / 2;
    surfaceArea = baseArea + lateralArea;

    printf("Surface area of the pentagonal pyramid: %.2f\n", surfaceArea);

    return 0;
}
