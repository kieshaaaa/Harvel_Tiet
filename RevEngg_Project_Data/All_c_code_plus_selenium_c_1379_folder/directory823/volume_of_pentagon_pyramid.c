#include <stdio.h>
#include <math.h>

int main() {
    float sideLength, height, baseArea, volume;
    const float pi = 3.14159;

    printf("Enter the side length of the pentagon: ");
    scanf("%f", &sideLength);
    printf("Enter the height of the pyramid: ");
    scanf("%f", &height);

    baseArea = (5 * sideLength * sideLength) / (4 * tan(pi / 5));
    volume = (baseArea * height) / 3;

    printf("Volume of the pentagonal pyramid: %.2f\n", volume);

    return 0;
}
