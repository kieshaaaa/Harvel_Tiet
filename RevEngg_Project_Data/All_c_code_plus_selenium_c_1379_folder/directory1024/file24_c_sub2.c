#include <stdio.h>

int main() {
    float a, b, c, d, e, product;

    printf("Enter five numbers separated by spaces (a b c d e): ");
    scanf("%f %f %f %f %f", &a, &b, &c, &d, &e);

    product = a * b * c * d * e;

    printf("The product of a, b, c, d, and e is: %.2f\n", product);

    return 0;
}