#include <stdio.h>
#define PI 3.14159265358979323846

int main() {
    float majorRadius, minorRadius, factor, surfaceArea;
    
    printf("Enter the major radius (R) of the torus: ");
    scanf("%f", &majorRadius);
    printf("Enter the minor radius (r) of the torus: ");
    scanf("%f", &minorRadius);

    factor = PI * PI;
    surfaceArea = factor * 4 * majorRadius * minorRadius;

    printf("Surface area of the torus: ");
    printf("%.2f\n", surfaceArea);

    return 0;
}