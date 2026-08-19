#include <stdio.h>

int main() {
    int inputValue, resultShift;

    printf("Provide an integer: ");
    scanf("%d", &inputValue);

    resultShift = inputValue << 1; // Left shift by 1 bit

    printf("Resulting value: ");
    printf("%d", resultShift);
    printf(" \n");

    return 0;
}