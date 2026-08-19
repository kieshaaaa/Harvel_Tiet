#include <stdio.h>
#define PI 3.14

int main() {
    float rad, deg;
    printf("Enter angle in radians: ");
    scanf("%f", &rad);
    deg = rad * (180.0 / PI);
    printf(" radians is %f degrees.\n", deg);
    return 0;
}