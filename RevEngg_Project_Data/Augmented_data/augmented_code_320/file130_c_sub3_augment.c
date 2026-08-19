#include <stdio.h>

int main() {
    int num, dec = 0, base = 1, rem;
    printf("Enter an octal number: ");
    scanf("%d", &num);

    for (; num != 0; num /= 10) {
        rem = num % 10;
        dec += rem * base;
        base *= 8;
    }

    printf("Decimal number: %d\n", dec);
    return 0;
}