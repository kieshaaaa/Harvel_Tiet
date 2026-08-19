#include <stdio.h>
#include <math.h>

int main() {
    float radius;
    float pi = 3.14159;
    float squareRadius, surfaceArea;

    printf("Enter the radius of the sphere: ");
    scanf("%f", &radius);

    squareRadius = radius * radius;
    surfaceArea = 4 * pi * squareRadius;

    printf("Surface area of the sphere: ");
    printf("%.2f\n", surfaceArea);

    return 0;
}