#include <stdio.h>
#include <math.h>

int main() {
    float baseLength, height, volume;

    printf("Enter the side length of the base equilateral triangle: ");
    scanf("%f", &baseLength);
    printf("Enter the height of the triangular pyramid: ");
    scanf("%f", &height);

    volume = (((sqrt(3) / 4.0f) * (baseLength * baseLength)) * height) / 3.0f;

    printf("Volume of the triangular pyramid: %.2f\n", volume);

    return 0;
}