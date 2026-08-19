#include <stdio.h>

int main() {
    float lengthOfSide;
    printf("Input side length: ");
    scanf("%f", &lengthOfSide);

    float numberOfSides = 5;
    float calculatedPerimeter = lengthOfSide * numberOfSides;

    printf("Perimeter: ");
    printf("%.2f\n", calculatedPerimeter);

    return 0;
}