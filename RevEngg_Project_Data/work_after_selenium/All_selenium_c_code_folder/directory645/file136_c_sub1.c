#include <stdio.h>
#include <math.h>
#define PI 3.14159

int main() {
    float radius, height, l, area;

    printf("Enter the radius and height of the cone: ");
    scanf("%f %f", &radius, &height);

    l = sqrt(pow(radius, 2) + pow(height, 2));
    area = PI * radius * (radius + l);

    printf("Radius: %.2f, Height: %.2f\n", radius, height);
    printf("Surface Area: %.2f\n", area);

    return 0;
}