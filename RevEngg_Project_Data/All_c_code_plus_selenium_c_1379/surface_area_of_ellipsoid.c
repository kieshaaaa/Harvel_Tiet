#include <stdio.h>
#include <math.h>
#define PI 3.14159265358979323846

int main() {
    float a, b, c, surfaceArea;

    // Prompt for semi-principal axes a, b, and c
    printf("Enter the semi-principal axis a: ");
    scanf("%f", &a);
    printf("Enter the semi-principal axis b: ");
    scanf("%f", &b);
    printf("Enter the semi-principal axis c: ");
    scanf("%f", &c);

    // Calculate the approximate surface area
    surfaceArea = 4 * PI * pow((pow(a * b, 1.6) + pow(a * c, 1.6) + pow(b * c, 1.6)) / 3, 1 / 1.6);

    // Display the result
    printf("Approximate surface area of the ellipsoid: %.2f\n", surfaceArea);

    return 0;
}
