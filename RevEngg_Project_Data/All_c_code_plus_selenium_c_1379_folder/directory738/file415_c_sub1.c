#include <stdio.h>

int main() {
    int decimal;
    int octal = 0;
    int placeValue = 1;

    printf("Enter a decimal number: ");
    scanf("%d", &decimal);

    while (decimal != 0) {
        octal += (decimal % 8) * placeValue;
        decimal /= 8;
        placeValue *= 10;
    }

    int result = octal;
    printf("Octal number: ");
    printf("%d\n", result);
    return 0;
}