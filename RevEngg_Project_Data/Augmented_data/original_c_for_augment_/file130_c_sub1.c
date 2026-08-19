#include <stdio.h>

int main() {
    int octal, decimal = 0, base = 1;
    printf("Enter an octal number: ");
    scanf("%d", &octal);

    for (; octal; octal /= 10) {
        decimal += (octal % 10) * base;
        base *= 8;
    }

    printf("Decimal number: %d\n", decimal);
    return 0;
}