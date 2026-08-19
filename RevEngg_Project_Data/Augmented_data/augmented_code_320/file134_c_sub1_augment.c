#include <stdio.h>
#define PI 3.14159265358979323846

int main() {
    float majorRadius, minorRadius, surfaceArea, piSquared;
    
    printf("Enter the major radius (R) of the torus: ");
    scanf("%f", &majorRadius);
    printf("Enter the minor radius (r) of the torus: ");
    scanf("%f", &minorRadius);

    piSquared = PI * PI;
    surfaceArea = 4 * piSquared * majorRadius * minorRadius;

    printf("Surface area of the torus: ");
    printf("%.2f\n", surfaceArea);

    return 0;
}