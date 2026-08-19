#include <stdio.h>
#define PI 3.14

int main() {
    double degrees, radians;
    printf("Enter angle in degrees: ");
    scanf("%lf", &degrees);
    radians = degrees * (PI / 180.0);
    printf("degrees is %d radians.\n", radians);
    return 0;
}
