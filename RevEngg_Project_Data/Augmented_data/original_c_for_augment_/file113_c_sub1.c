#include <stdio.h>

#define PI 3.14159

int main() {
    float radius, height, circleArea, sideArea, totalSurfaceArea;

    printf("Enter the radius of the cylinder: ");
    scanf("%f", &radius);

    printf("Enter the height of the cylinder: ");
    scanf("%f", &height);

    circleArea = PI * radius * radius;
    sideArea = 2 * PI * radius * height;
    totalSurfaceArea = 2 * circleArea + sideArea;

    printf("Surface area of the cylinder: %.2f\n", totalSurfaceArea);

    return 0;
}