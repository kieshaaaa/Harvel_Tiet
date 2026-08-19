#include <stdio.h>

int main() {
    int decimal, tempDecimal;
    int octal ;
    int placeValue = 1;

    printf("Enter a decimal number: ");
    scanf("%d", &decimal);

    tempDecimal = decimal;

    while (tempDecimal > 0) {
        octal = octal + (tempDecimal % 8) * placeValue;
        tempDecimal = tempDecimal / 8;
        placeValue = placeValue * 10;
    }

    printf("Octal number: %d\n", octal);
    return 0;
}
