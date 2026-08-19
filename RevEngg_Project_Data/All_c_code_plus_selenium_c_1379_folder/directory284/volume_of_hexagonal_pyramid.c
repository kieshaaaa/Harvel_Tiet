#include <stdio.h>
#include <math.h>

int main() {
    float s, h, baseArea, volume;
    const float pi = 3.14159;

    // Input: side length of the base hexagon and height of the pyramid
    printf("Enter the side length of the hexagon: ");
    scanf("%f", &s);
    printf("Enter the height of the pyramid: ");
    scanf("%f", &h);

    // Calculating the area of the hexagonal base
    baseArea = (3 * sqrt(3) / 2) * s * s;

    // Calculating the volume of the pyramid
    volume = (baseArea * h) / 3;

    // Output
    printf("Volume of the hexagonal pyramid: %.2f\n", volume);

    return 0;
}
