#include <stdio.h>
#define PI 3.14159

int main() {
    float r, h, v, area;

    printf("Enter cone radius and height: ");
    scanf("%f %f", &r, &h);

    area = PI * r * r;
    v = area * h / 3;

    printf("Computed volume: ");
    printf("%.2f cubic units\n", v);

    return 0;
}