#include <stdio.h>

#define PI 3.14159

int main() {
    float r, h;
    float areaBase, areaLateral, areaTotal;

    printf("Enter the radius of the cylinder: ");
    scanf("%f", &r);
    printf("Enter the height of the cylinder: ");
    scanf("%f", &h);

    areaBase = PI * r * r;
    areaLateral = 2 * PI * r * h;
    areaTotal = 2 * areaBase + areaLateral;

    printf("Surface area of the cylinder: %.2f\n", areaTotal);

    return 0;
}