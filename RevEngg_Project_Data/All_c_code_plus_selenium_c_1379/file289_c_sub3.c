#include <stdio.h>

int main() {
    float radians, degrees;
    printf("Enter angle in radians: ");
    scanf("%f", &radians);
    degrees = radians * (180.0 / 3.14);
    printf("%f radians is %f degrees.\n", radians, degrees);
    return 0;
}