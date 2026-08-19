#include <stdio.h>

int main() {
    float degrees, gradians;
    printf("Enter angle in degrees: ");
    scanf("%f", &degrees);
    gradians = degrees * (200.0 / 180.0);
    printf("degrees is %f gradians.\n", gradians);
    return 0;
}
