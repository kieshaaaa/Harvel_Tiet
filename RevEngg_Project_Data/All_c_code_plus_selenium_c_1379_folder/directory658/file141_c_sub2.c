#include <stdio.h>
#define PI 3.14159

int main() {
    float radius, radius_squared, area;
    printf("Enter the radius of the circle: ");
    scanf("%f", &radius);
    radius_squared = radius * radius;
    area = PI * radius_squared;
    printf("Area of the circle: ");
    printf("%.2f\n", area);
    return 0;
}