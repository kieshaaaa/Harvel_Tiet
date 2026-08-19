#include <stdio.h>
#define PI 3.14

int main() {
    float g, r;
    printf("Enter angle in gradians: ");
    scanf("%f", &g);
    r = g * (PI / 200.0);
    printf("gradians is %f radians.\n", r);
    return 0;
}