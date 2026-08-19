#include <stdio.h>
#include <math.h>
#define PI 3.14159

int main() {
    float radius, height, surfaceArea;

    // Prompt the user for the radius and height of the cone
    printf("Enter the radius of the cone: ");
    scanf("%f", &radius);
    printf("Enter the height of the cone: ");
    scanf("%f", &height);

    // Calculate the slant height (l) of the cone
    float slantHeight = sqrt(height * height + radius * radius);

    // Calculate the surface area
    surfaceArea = PI * radius * (radius + slantHeight);

    // Display the result
    printf("Surface area of the cone: %.2f\n", surfaceArea);

    return 0;
}
