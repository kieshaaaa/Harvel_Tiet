#include <stdio.h>
#include <math.h>

int main() {
    float a, h, volume;

    printf("Enter the side length of the base equilateral triangle: ");
    scanf("%f", &a);
    printf("Enter the height of the triangular pyramid: ");
    scanf("%f", &h);

    volume = (sqrt(3) / 4 * a * a * h) / 3;

    printf("Volume of the triangular pyramid: %.2f\n", volume);

    return 0;
}