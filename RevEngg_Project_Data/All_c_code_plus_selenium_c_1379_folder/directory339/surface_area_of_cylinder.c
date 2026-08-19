#include <stdio.h>
#define PI 3.14159

int main() {
    float radius, height, surfaceArea;

    // Prompt the user for the radius and height of the cylinder
    printf("Enter the radius of the cylinder: ");
    scanf("%f", &radius);
    printf("Enter the height of the cylinder: ");
    scanf("%f", &height);

    // Calculate the surface area
    surfaceArea = 2 * PI * radius * height + 2 * PI * radius * radius;

    // Display the result
    printf("Surface area of the cylinder: %.2f\n", surfaceArea);

    return 0;
}
