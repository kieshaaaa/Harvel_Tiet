#include <stdio.h>
#include <math.h>

int main() {
    float radius, surfaceArea;
    float pi = 3.14159;

    printf("Enter the radius of the sphere: ");
    scanf("%f", &radius);

    surfaceArea = 4 * pi * pow(radius, 2);

    printf("Surface area of the sphere: ");
    printf("%.2f\n", surfaceArea);

    return 0;
}