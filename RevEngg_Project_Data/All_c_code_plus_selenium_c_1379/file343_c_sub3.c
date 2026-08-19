#include <stdio.h>

int main() {
    float b, s; // 'b' for base, 's' for side

    printf("Base: ");
    scanf("%f", &b);
    printf("Side: ");
    scanf("%f", &s);

    // Calculating perimeter directly in the variable declaration
    float p = 2 * (b + s);

    printf("Parallelogram's Perimeter: %.2f\n", p);

    return 0;
}