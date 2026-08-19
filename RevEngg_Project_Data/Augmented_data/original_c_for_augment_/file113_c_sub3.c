#include <stdio.h>

#define PI 3.14159

int main() {
    float radius, height;
    float baseArea, lateralSurfaceArea, totalSurfaceArea;

    printf("Enter the radius of the cylinder: ");
    scanf("%f", &radius);
    printf("Enter the height of the cylinder: ");
    scanf("%f", &height);

    baseArea = PI * radius * radius;
    lateralSurfaceArea = 2 * PI * radius * height;
    totalSurfaceArea = 2 * baseArea + lateralSurfaceArea;

    printf("Surface area of the cylinder: %.2f\n", totalSurfaceArea);

    return 0;
}