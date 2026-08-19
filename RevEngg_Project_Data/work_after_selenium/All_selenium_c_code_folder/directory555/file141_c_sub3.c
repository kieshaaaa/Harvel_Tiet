#include <stdio.h>
#define PI 3.14159

int main() {
    float radius, area;
    // Input block
    printf("Enter the radius of the circle: ");
    scanf("%f", &radius);

    // Calculation block
    area = PI * radius * radius;

    // Output block
    printf("Area of the circle: ");
    printf("%.2f\n", area);

    return 0;
}