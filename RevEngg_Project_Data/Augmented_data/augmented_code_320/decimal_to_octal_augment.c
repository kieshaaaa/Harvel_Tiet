#include <stdio.h>

int main() {
    int decimal, tempDec;
    int octal = 0;
    int pv = 1;

    printf("Enter a decimal number: ");
    scanf("%d", &decimal);

    tempDec = decimal;

    for(; tempDec > 0; tempDec /= 8, pv *= 10) {
        octal = octal + (tempDec % 8) * pv;
    }

    printf("Octal number: %d\n", octal);
    return 0;
}