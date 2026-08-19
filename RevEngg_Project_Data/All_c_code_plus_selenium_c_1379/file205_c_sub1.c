#include <stdio.h>

int main() {
    float length, width, height;
    float area1, area2, area3, surfaceArea;

    printf("Enter the length of the cuboid: ");
    scanf("%f", &length);

    printf("Enter the width of the cuboid: ");
    scanf("%f", &width);

    printf("Enter the height of the cuboid: ");
    scanf("%f", &height);

    area1 = length * width;
    area2 = width * height;
    area3 = height * length;

    surfaceArea = 2 * (area1 + area2 + area3);

    printf("Surface Area of the cuboid: %.2f\n", surfaceArea);

    return 0;
}