#include <stdio.h>

int main() {
    float length, width, height, surfaceArea;

    printf("Enter length, width, and height of the cuboid: ");
    scanf("%f %f %f", &length, &width, &height);

    surfaceArea = 2 * ((length * width) + (width * height) + (height * length));

    printf("Surface Area of the cuboid: %.2f\n", surfaceArea);

    return 0;
}