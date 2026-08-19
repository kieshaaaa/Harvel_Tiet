#include <stdio.h>
#define PI 3.14159265358979323846

int main() {
    float R, r, surfaceArea;

    // Prompt for major and minor radii
    printf("Enter the major radius (R) of the torus: ");
    scanf("%f", &R);
    printf("Enter the minor radius (r) of the torus: ");
    scanf("%f", &r);

    // Calculate the surface area
    surfaceArea = 4 * PI * PI * R * r;

    // Display the result
    printf("Surface area of the torus: %.2f\n", surfaceArea);

    return 0;
}
