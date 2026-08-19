#include <stdio.h>

int main() {
    int a, result;
    printf("Enter an integer (a): ");
    scanf("%d", &a);
    result = a | 1; // Bitwise OR with the number 1
    printf("The result is ");
    printf("%d\n", result);
    return 0;
}