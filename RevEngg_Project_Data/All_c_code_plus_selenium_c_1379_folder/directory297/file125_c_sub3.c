#include <stdio.h>

int main() {
    int a, shift, result;
    printf("Enter an integer (a): ");
    scanf("%d", &a);

    printf("Enter number of positions to shift left: ");
    scanf("%d", &shift);

    result = a << shift; // Shift by a user-defined number of bits.

    printf("The result is ");
    printf("%d", result);
    printf(" \n");

    return 0;
}