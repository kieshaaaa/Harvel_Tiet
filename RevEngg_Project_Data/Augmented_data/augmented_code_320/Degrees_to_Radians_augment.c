#include <stdio.h>
#define PI 3.14

int main() {
    double deg, rad;
    printf("Enter angle in degrees: ");
    scanf("%lf", &deg);
    rad = deg * (PI / 180.0);
    printf("degrees is %lf radians.\n", rad);
    return 0;
}