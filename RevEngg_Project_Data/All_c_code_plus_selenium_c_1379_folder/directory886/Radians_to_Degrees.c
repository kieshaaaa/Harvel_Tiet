#include <stdio.h>
#define PI 3.14

int main() {
    float radians, degrees;
    printf("Enter angle in radians: ");
    scanf("%f", &radians);
    degrees = radians * (180.0 / PI);
    printf(" radians is %f degrees.\n", degrees);
    return 0;
}
