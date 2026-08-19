#include <stdio.h>

int main() {
    int a, b, diff;

    printf("Enter first number :: ");
    scanf("%d", &a);
    printf("\nEnter second number :: ");
    scanf("%d", &b);

    diff = (a > b) ? (a - b) : (b - a);

    printf("\nDifference between ");
    printf("%d", a);
    printf(" and ");
    printf("%d", b);
    printf(" is = ");
    printf("%d\n", diff);

    return 0;
}