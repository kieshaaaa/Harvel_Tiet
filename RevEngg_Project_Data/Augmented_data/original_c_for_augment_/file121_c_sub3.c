#include <stdio.h>
#include <math.h>

int main() {
    float a, h, volume;
    const float sqrt3Over4 = sqrt(3) / 4.0f;
    const float oneThird = 1.0f / 3.0f;

    printf("Enter the side length of the base equilateral triangle: ");
    scanf("%f", &a);
    printf("Enter the height of the triangular pyramid: ");
    scanf("%f", &h);

    volume = sqrt3Over4 * a * a * h * oneThird;

    printf("Volume of the triangular pyramid: %.2f\n", volume);

    return 0;
}