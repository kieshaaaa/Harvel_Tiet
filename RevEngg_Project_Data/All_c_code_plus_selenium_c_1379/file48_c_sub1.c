#include <stdio.h>
#include <math.h>

int main() {
    float x;
    float exp_pos, exp_neg, sum, difference;

    printf("Enter the value of x: ");
    scanf("%f", &x);

    exp_pos = expf(x);
    exp_neg = expf(-x);

    sum = exp_pos + exp_neg;
    difference = exp_pos - exp_neg;

    printf("%f\n", sum);
    printf("%f\n", difference);

    return 0;
}