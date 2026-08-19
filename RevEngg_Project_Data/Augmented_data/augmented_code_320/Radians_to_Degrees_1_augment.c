#include <stdio.h>

int main() {
    double rad, deg;
    printf("Enter angle in radians: ");
    scanf("%lf", &rad);
    deg = rad * (180.0 / 3.14);
    printf(" radians is %.2lf degrees.\n", deg);
    return 0;
}