#include <stdio.h>

int main() {
    float baseLength, sideLength;
    float totalBaseLength, totalSideLength;
    float perimeter;

    printf("Base length: ");
    scanf("%f", &baseLength);
    printf("Side length: ");
    scanf("%f", &sideLength);

    totalBaseLength = baseLength * 2;
    totalSideLength = sideLength * 2;

    perimeter = totalBaseLength + totalSideLength;

    printf("Perimeter: %.2f\n", perimeter);

    return 0;
}