#include <stdio.h>
#define PI 3.14159265358979323846

int main() {
    float R, r, factor, surfaceArea;
    
    printf("Enter the major radius (R) of the torus: ");
    scanf("%f", &R);
    printf("Enter the minor radius (r) of the torus: ");
    scanf("%f", &r);

    factor = PI * PI;
    surfaceArea = factor * 4 * R * r;

    printf("Surface area of the torus: ");
    printf("%.2f\n", surfaceArea);

    return 0;
}