#include <stdio.h>
#include <math.h>

int main() {
    float radius, surfaceArea;
    float pi = 3.14159; // Direct value of π

    // Prompt the user for the radius of the sphere
    printf("Enter the radius of the sphere: ");
    scanf("%f", &radius);

    // Calculate the surface area
    surfaceArea = 4 * pi * (radius * radius);

    // Display the result
    printf("Surface area of the sphere: %.2f\n", surfaceArea);

    return 0;
}
