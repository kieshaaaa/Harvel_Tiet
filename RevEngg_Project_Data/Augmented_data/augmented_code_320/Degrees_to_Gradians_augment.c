#include <stdio.h>

int main() {
    float deg, grad;
    printf("Enter angle in degrees: ");
    scanf("%f", &deg);
    grad = deg * (200.0 / 180.0);
    printf("degrees is %f gradians.\n", grad);
    return 0;
}