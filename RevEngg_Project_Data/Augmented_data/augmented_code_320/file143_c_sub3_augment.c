#include <stdio.h>

int main() {
    float baseLength, baseWidth, pyramidHeight, volume;

    printf("Welcome to the Pyramid Volume Calculator!\n");

    printf("Enter base length: ");
    scanf("%f", &baseLength);
    printf("Enter base width: ");
    scanf("%f", &baseWidth);
    printf("Enter pyramid height: ");
    scanf("%f", &pyramidHeight);

    volume = (baseLength * baseWidth * pyramidHeight) / 3;

    printf("The pyramid's volume is: %.2f cubic units.\n", volume);

    return 0;
}