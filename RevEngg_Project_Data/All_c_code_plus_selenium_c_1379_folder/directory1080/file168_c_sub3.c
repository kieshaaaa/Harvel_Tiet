#include <stdio.h>
#define PI 3.14f

int main() {
    float radians, degrees;
    printf("Enter angle in radians: ");
    scanf("%f", &radians);
    degrees = radians * (180.0f / PI);
    printf("Angle in degrees: ");
    printf("%.2f\n", degrees);
    return 0;
}