#include <stdio.h>

int main() {
    char letter = 'D';
    int number = 912;
    float decimal = 1011.12f;
    float largeDecimal = 5678.91f; // Replacing double with float
    char phrase[] = "C Programming";

    int sizeOfLetter = sizeof(letter);
    int sizeOfNumber = sizeof(number);
    int sizeOfDecimal = sizeof(decimal);
    int sizeOfLargeDecimal = sizeof(largeDecimal);
    int sizeOfPhrase = sizeof(phrase);

    printf("\nSize of letter variable: %d", sizeOfLetter);
    printf("\nSize of number variable: %d", sizeOfNumber);
    printf("\nSize of decimal variable: %d", sizeOfDecimal);
    printf("\nSize of large decimal variable: %d", sizeOfLargeDecimal);
    printf("\nSize of phrase variable: %d", sizeOfPhrase);

    return 0;
}