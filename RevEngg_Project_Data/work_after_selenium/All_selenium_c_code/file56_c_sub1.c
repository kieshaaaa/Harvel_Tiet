#include <stdio.h>
#define CONVERT_FACTOR (3.14 / 200.0)

int main() {
    float grad, rad;
    printf("Enter angle in gradians: ");
    scanf("%f", &grad);
    rad = grad * CONVERT_FACTOR;
    printf("Angle in radians: ");
    printf("%f\n", rad);
    return 0;
}