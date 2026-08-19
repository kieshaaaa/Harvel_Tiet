#include <stdio.h>
#define RAD_TO_DEG 57.2957795

int main() {
    float radians, degrees;
    printf("Enter angle in radians: ");
    scanf("%f", &radians);
    degrees = radians * RAD_TO_DEG;
    printf("%f radians is %f degrees.\n", radians, degrees);
    return 0;
}