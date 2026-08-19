#include <stdio.h>

int main() {
    int dividend, divisor, tempDividend, remainder;
    printf("Enter first number: ");
    scanf("%d", &dividend);
    printf("Enter second number: ");
    scanf("%d", &divisor);

    tempDividend = dividend;
    while (tempDividend >= divisor) {
        tempDividend -= divisor;
    }
    remainder = tempDividend;

    printf("Remainder is = %d\n", remainder);
    return 0;
}