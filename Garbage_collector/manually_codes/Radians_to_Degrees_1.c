#include <stdio.h>


int main() {
    double radians, degrees;
    printf("Enter angle in radians: ");
    scanf("%lf", &radians);
    degrees = radians * (180.0 / 3.14);
    printf(" radians is %.2lf degrees.\n", degrees);
    return 0;
}
