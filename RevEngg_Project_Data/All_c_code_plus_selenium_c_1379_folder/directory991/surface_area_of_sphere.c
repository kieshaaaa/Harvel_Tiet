#include <stdio.h>
#include <math.h>

int main() {
    float radius, surfaceArea;

    // Prompt the user for the radius of the sphere
    printf("Enter the radius of the sphere: ");
    scanf("%f", &radius);

    // Calculate the surface area
    surfaceArea = 4 * M_PI * (radius * radius);

    // Display the result
    printf("Surface area of the sphere: %.2f\n", surfaceArea);

    return 0;
}
