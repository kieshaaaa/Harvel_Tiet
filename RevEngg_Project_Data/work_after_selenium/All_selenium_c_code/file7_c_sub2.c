#include <stdio.h>
#include <stdlib.h> // For abs()

int main() {
    int a, b, diff;

    printf("Enter first number :: ");
    scanf("%d", &a);
    printf("\nEnter second number :: ");
    scanf("%d", &b);

    diff = abs(a - b);

    printf("\nDifference between %d and %d is = %d\n", a, b, diff);
    return 0;
}