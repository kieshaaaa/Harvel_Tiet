#include <stdio.h>

int main() {
    int a, result;
    printf("Enter an integer (a): ");
    scanf("%d", &a);

    result = a * 16; // Multiplying by 16 as an alternative to left shift by 4

    printf("The result is ");
    printf("%d", result);
    printf(" \n");

    return 0;
}