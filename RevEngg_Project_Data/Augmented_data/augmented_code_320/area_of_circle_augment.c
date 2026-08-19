#include <stdio.h>
#define PI 3.14159

int main() {
    float rad, area_circle;

    printf("Enter the radius of the circle: ");
    scanf("%f", &rad);

    area_circle = PI * rad * rad;

    printf("Area of the circle: %.2f\n", area_circle);

    return 0;
}