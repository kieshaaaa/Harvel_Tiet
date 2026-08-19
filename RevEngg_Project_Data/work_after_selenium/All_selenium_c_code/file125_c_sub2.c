#include <stdio.h>

int main() {
    int a, result, shifted;
    printf("Enter an integer (a): ");
    scanf("%d", &a);

    shifted = a << 4;
    result = shifted | 0; // Using bitwise OR operation with 0, which essentially changes nothing but shows a different operation.

    printf("The result is ");
    printf("%d", result);
    printf(" \n");

    return 0;
}