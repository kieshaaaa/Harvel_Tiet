#include <stdio.h>

int main() {
    float base, height, areaFactor = 0.5, area;
    printf("Enter the base of the triangle: ");
    scanf("%f", &base);
    printf("Enter the height of the triangle: ");
    scanf("%f", &height);

    area = areaFactor * base * height;
    printf("Area of the triangle: %.2f\n", area);
    return 0;
}