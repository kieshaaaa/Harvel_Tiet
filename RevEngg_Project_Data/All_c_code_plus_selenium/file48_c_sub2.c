#include <stdio.h>
#include <math.h>

int main() {
    float x;
    float positive, negative;
    float total, delta;

    printf("Enter the value of x: ");
    scanf("%f", &x);

    positive = expf(x);
    negative = expf(-x);

    total = positive + negative;
    delta = positive - negative;

    printf("%f\n", total);
    printf("%f\n", delta);

    return 0;
}