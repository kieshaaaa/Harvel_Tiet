#include <stdio.h>

int main() {
    int decimal;
    int octal = 0;
    int placeValue = 1;

    printf("Enter a decimal number: ");
    scanf("%d", &decimal);

    do {
        int lastDigit = decimal % 8;
        octal += lastDigit * placeValue;
        placeValue *= 10;
        decimal /= 8;
    } while (decimal > 0);

    printf("Octal number: ");
    printf("%d\n", octal);
    return 0;
}