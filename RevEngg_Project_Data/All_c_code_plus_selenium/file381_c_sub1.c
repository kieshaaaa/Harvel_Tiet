#include <stdio.h>

int main() {
    int number, index = 0;
    char hex[32];
    char hexDigits[] = "0123456789ABCDEF";

    printf("Enter decimal number: ");
    scanf("%d", &number);

    while (number > 0) {
        int remainder = number % 16;
        hex[index] = hexDigits[remainder];
        number /= 16;
        index++;
    }

    printf("Hexadecimal value is: ");
    for (int i = index - 1; i >= 0; i--) {
        printf("%c", hex[i]);
    }

    return 0;
}