#include <stdio.h>

int main() {
    float length, width, height, surfaceArea;

    printf("Enter the length of the cuboid: ");
    scanf("%f", &length);

    printf("Enter the width of the cuboid: ");
    scanf("%f", &width);

    printf("Enter the height of the cuboid: ");
    scanf("%f", &height);

    surfaceArea = length * width;
    surfaceArea += width * height;
    surfaceArea += height * length;
    surfaceArea *= 2;

    printf("Surface Area of the cuboid: %.2f\n", surfaceArea);

    return 0;
}