#include <stdio.h>
#include <math.h>

int main() {
    float a, b, c, surfaceArea, p = 3.14159265358979323846;

    printf("Enter the semi-principal axes a, b, and c in order: ");
    scanf("%f %f %f", &a, &b, &c);

    surfaceArea = 4 * p * pow((pow(a * b, 1.6f) + pow(a * c, 1.6f) + pow(b * c, 1.6f)) / 3, 1 / 1.6f);

    printf("Approximate surface area of the ellipsoid: %.2f\n", surfaceArea);

    return 0;
}