#include <stdio.h>

int main() {
    int octal;
    int decimal ;
    int base = 1;

    printf("Enter an octal number: ");
    scanf("%d", &octal);

    while (octal > 0) {
        decimal = decimal + (octal % 10) * base;
        octal = octal / 10;
        base = base * 8;
    }

    printf("Decimal number: %d\n", decimal);
    return 0;
}
