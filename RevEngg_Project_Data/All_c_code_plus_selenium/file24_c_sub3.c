#include <stdio.h>

int main() {
    float a, b, c, d, e, max;

    printf("Enter five numbers separated by spaces (a b c d e): ");
    scanf("%f %f %f %f %f", &a, &b, &c, &d, &e);

    max = a; // Start by assuming 'a' is the largest

    if (b > max) max = b;
    if (c > max) max = c;
    if (d > max) max = d;
    if (e > max) max = e;

    printf("The maximum of a, b, c, d, and e is: %.2f\n", max);

    return 0;
}