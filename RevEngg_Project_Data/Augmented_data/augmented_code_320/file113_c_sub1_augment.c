#include <stdio.h>

#define PI 3.14159

int main() {
    float r, h, areaCircle, areaSide, totalArea;

    printf("Enter the radius of the cylinder: ");
    scanf("%f", &r);

    printf("Enter the height of the cylinder: ");
    scanf("%f", &h);

    areaCircle = PI * r * r;
    areaSide = 2 * PI * r * h;
    totalArea = 2 * areaCircle + areaSide;

    printf("Surface area of the cylinder: %.2f\n", totalArea);

    return 0;
}