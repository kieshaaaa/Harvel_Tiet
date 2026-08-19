#include <stdio.h>

int main() {
    int num, reversed = 0, dec = 0, power = 1;
    printf("Enter an octal number: ");
    scanf("%d", &num);

    // Reverse the octal number
    int temp = num;
    while (temp != 0) {
        reversed = reversed * 10 + (temp % 10);
        temp /= 10;
    }

    // Convert to decimal
    temp = reversed;
    while (temp != 0) {
        dec += (temp % 10) * power;
        power *= 8;
        temp /= 10;
    }

    printf("Decimal number: %d\n", dec);
    return 0;
}