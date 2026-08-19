#include <stdio.h>
#include <math.h>

int main() {
    float x;
    float e_pos, e_neg, s, d;

    printf("Enter the value of x: ");
    scanf("%f", &x);

    e_pos = expf(x);
    e_neg = expf(-x);

    s = e_pos + e_neg;
    d = e_pos - e_neg;

    printf("%f\n", s);
    printf("%f\n", d);

    return 0;
}