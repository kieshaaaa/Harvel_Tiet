#include <stdio.h>

int main() {
    float grad, deg;
    printf("Enter angle in gradians: ");
    scanf("%f", &grad);
    deg = grad * (180.0 / 200.0);
    printf(" gradians is %f degrees.\n", deg);
    return 0;
}