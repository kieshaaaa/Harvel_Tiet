#include <stdio.h>
#include <math.h>

int main() {
    float a, surfaceArea, sqrt3;
    printf("Enter the side length of the triangular pyramid: ");
    scanf("%f", &a);
    sqrt3 = sqrt(3);
    surfaceArea = sqrt3 * a * a;
    printf("Surface area of the triangular pyramid: ");
    printf("%.2f\n", surfaceArea);
    return 0;
}