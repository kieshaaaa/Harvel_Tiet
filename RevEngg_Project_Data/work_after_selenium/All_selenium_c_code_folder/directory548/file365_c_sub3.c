#include <stdio.h>

int main() {
    int a, b, diff, sum;

    printf("Enter first number :: ");
    scanf("%d", &a);
    printf("\nEnter second number :: ");
    scanf("%d", &b);

    sum = a + b;
    diff = sum - 2 * (a > b ? a : b);

    printf("\nDifference between ");
    printf("%d", a);
    printf(" and ");
    printf("%d", b);
    printf(" is = ");
    printf("%d\n", diff < 0 ? -diff : diff); // Ensuring the difference is positive

    return 0;
}