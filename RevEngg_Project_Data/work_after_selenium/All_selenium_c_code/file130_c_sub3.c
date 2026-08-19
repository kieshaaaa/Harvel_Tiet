#include <stdio.h>

int main() {
    int octal, decimal = 0, base = 1, last_digit;
    printf("Enter an octal number: ");
    scanf("%d", &octal);

    while (octal != 0) {
        last_digit = octal % 10;
        octal /= 10;
        decimal += last_digit * base;
        base *= 8;
    }

    printf("Decimal number: %d\n", decimal);
    return 0;
}