#include <stdio.h>

int main() {
    int decimal;
    int octal = 0;
    int placeValue = 1;

    printf("Enter a decimal number: ");
    scanf("%d", &decimal);

    for (; decimal > 0; decimal /= 8) {
        octal += (decimal % 8) * placeValue;
        placeValue *= 10;
    }

    int result = octal;
    printf("Octal number: ");
    printf("%d\n", result);
    return 0;
}