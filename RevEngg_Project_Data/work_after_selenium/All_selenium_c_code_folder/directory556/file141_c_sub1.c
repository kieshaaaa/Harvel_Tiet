#include <stdio.h>
#define PI_VALUE 3.14159

int main() {
    float radius, area;
    printf("Enter the radius of the circle: ");
    scanf("%f", &radius);
    area = PI_VALUE * radius * radius;
    printf("Area of the circle: ");
    printf("%.2f\n", area);
    return 0;
}