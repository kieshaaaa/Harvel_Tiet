#include <stdio.h>

int main() {
    int dividend, divisor, remainder;
    printf("Enter first number: ");
    scanf("%d", &dividend);
    printf("Enter second number: ");
    scanf("%d", &divisor);

    remainder = dividend;
    while (remainder >= divisor) {
        remainder = remainder - divisor;
    }

    printf("Remainder is = %d\n", remainder);
    return 0;
}