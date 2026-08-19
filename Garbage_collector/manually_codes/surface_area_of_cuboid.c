#include <stdio.h>

int main() {
    float length, width, height, surfaceArea;

    // Input length, width, and height
    printf("Enter the length of the cuboid: ");
    scanf("%f", &length);
    printf("Enter the width of the cuboid: ");
    scanf("%f", &width);
    printf("Enter the height of the cuboid: ");
    scanf("%f", &height);

    // Calculate the surface area
    surfaceArea = 2 * (length * width + width * height + height * length);

    // Display the surface area
    printf("Surface Area of the cuboid: %.2f\n", surfaceArea);

    return 0;
}
