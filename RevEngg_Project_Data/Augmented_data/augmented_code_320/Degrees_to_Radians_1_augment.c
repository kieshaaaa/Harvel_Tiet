#include <stdio.h>

int main() {
    double deg, rad;
    printf("Enter angle in degrees: ");
    scanf("%lf", &deg);
    rad = deg * (3.14 / 180.0);
    printf(" degrees is %f radians.\n", rad);
    return 0;
}