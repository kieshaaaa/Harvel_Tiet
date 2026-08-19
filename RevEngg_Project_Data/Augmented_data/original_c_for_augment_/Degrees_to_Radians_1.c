#include <stdio.h>

int main() {
    double degrees, radians;
    printf("Enter angle in degrees: ");
    scanf("%lf", &degrees);
    radians = degrees * (3.14 / 180.0);
    printf(" degrees is %f radians.\n", radians);
    return 0;
}
