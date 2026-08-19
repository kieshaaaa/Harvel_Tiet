#include <stdio.h>

int main() {
    float radians, degrees, pi;
    printf("Enter the value of pi: ");
    scanf("%f", &pi);
    printf("Enter angle in radians: ");
    scanf("%f", &radians);
    degrees = radians * (180.0 / pi);
    printf("%f radians is %f degrees.\n", radians, degrees);
    return 0;
}