#include <stdio.h>
#define PI 3.14159

int main() {
    float baseRadius, cylinderHeight, cylinderVolume, baseArea;

    printf("Enter the radius of the cylinder: ");
    scanf("%f", &baseRadius);
    printf("Enter the height of the cylinder: ");
    scanf("%f", &cylinderHeight);

    baseArea = PI * baseRadius * baseRadius;
    cylinderVolume = baseArea * cylinderHeight;

    printf("Volume of the cylinder: ");
    printf("%.2f\n", cylinderVolume);

    return 0;
}