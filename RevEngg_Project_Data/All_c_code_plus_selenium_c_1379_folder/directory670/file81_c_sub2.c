#include <stdio.h>
#include <math.h>

int main() {
    float sideLength, area, halfSqrt3;
    printf("Enter the side length of the triangular pyramid: ");
    scanf("%f", &sideLength);
    halfSqrt3 = sqrt(3) / 2;
    area = 2 * halfSqrt3 * sideLength * sideLength;
    printf("Surface area of the triangular pyramid: ");
    printf("%.2f\n", area);
    return 0;
}