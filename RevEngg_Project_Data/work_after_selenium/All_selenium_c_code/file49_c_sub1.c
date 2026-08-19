#include <stdio.h>

#define PI 3.14f

int main() {
    float radius = 5.0f;
    float area;

    area = PI * radius * radius;

    printf("Radius of circle: %f\n", radius);
    printf("Area of circle: %f\n", area);

    return 0;
}