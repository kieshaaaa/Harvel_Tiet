#include <stdio.h>

int main() {
    float g, r;
    printf("Enter angle in gradians: ");
    scanf("%f", &g);
    r = g * (3.14 / 200.0);
    printf(" gradians is %f radians.\n", r);
    return 0;
}