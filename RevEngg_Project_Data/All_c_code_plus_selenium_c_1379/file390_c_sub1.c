#include <stdio.h>

int main() {
    int a, result;
    printf("Enter an integer (a): ");
    scanf("%d", &a);
    result = a & 3; // Bitwise AND with the number 3
    printf("The result is ");
    printf("%d\n", result);
    return 0;
}