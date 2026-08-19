#include <stdio.h>
#include <math.h>
#define PI 3.14159

int main() {
    float radius, height, volume, baseArea;

    printf("Radius and height of the cone: ");
    scanf("%f %f", &radius, &height);

    baseArea = PI * pow(radius, 2);
    volume = baseArea * height / 3;

    printf("The volume is ");
    printf("%.2f\n", volume);

    return 0;
}