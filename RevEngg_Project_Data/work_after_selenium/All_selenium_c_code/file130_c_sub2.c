#include <stdio.h>

int main() {
    int octal, reverse = 0, decimal = 0, base = 1;
    printf("Enter an octal number: ");
    scanf("%d", &octal);

    // Reverse the octal number
    while (octal != 0) {
        reverse = reverse * 10 + (octal % 10);
        octal /= 10;
    }

    // Convert to decimal
    while (reverse != 0) {
        decimal += (reverse % 10) * base;
        base *= 8;
        reverse /= 10;
    }

    printf("Decimal number: %d\n", decimal);
    return 0;
}