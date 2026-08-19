#include <stdio.h>
#include <math.h>

int main() {
    float radius;
    printf("Enter the radius of the sphere: ");
    scanf("%f", &radius);

    float radiusSquared = radius * radius;
    float surfaceArea = 4 * M_PI * radiusSquared;
    printf("Surface area of the sphere: ");
    printf("%.2f\n", surfaceArea);

    return 0;
}