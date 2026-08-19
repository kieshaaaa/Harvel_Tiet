#include <stdio.h>
#include <math.h>

int main() {
    float sideLength, pyramidHeight, hexagonArea, pyramidVolume;
    float pi = 3.14159;

    printf("Enter the side length of the hexagon: ");
    scanf("%f", &sideLength);
    printf("Enter the height of the pyramid: ");
    scanf("%f", &pyramidHeight);

    hexagonArea = (3 * sqrt(3) / 2) * sideLength * sideLength;
    pyramidVolume = hexagonArea * pyramidHeight / 3;

    printf("Volume of the hexagonal pyramid: ");
    printf("%.2f\n", pyramidVolume);

    return 0;
}