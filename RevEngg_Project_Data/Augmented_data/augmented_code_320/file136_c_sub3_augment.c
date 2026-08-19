#include <stdio.h>
#include <math.h>
#define PI 3.14159

int main() {
    float radius, height, slantHeight, area;

    printf("Input radius: ");
    scanf("%f", &radius);
    printf("Input height: ");
    scanf("%f", &height);

    slantHeight = sqrt(radius * radius + height * height);
    area = PI * radius * (radius + slantHeight);

    printf("Surface Area: ");
    printf("%.2f\n", area);

    return 0;
}