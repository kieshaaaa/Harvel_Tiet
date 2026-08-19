#include <stdio.h>

int main() {
    int num, decimal = 0, base = 1;
    printf("Enter an octal number: ");
    scanf("%d", &num);

    while (num) {
        decimal += (num % 10) * base;
        base *= 8;
        num /= 10;
    }

    printf("Decimal number: %d\n", decimal);
    return 0;
}