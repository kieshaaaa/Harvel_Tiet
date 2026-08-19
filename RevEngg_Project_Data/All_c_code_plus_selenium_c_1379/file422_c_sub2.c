#include <stdio.h>

int main() {
    int a, b, diff;

    printf("Enter first number: ");
    scanf("%d", &a);
    printf("Enter second number: ");
    scanf("%d", &b);

    diff = (a - b) * (a >= b) + (b - a) * (b > a);

    printf("\nDifference between %d and %d is = %d", a, b, diff);
    return 0;
}