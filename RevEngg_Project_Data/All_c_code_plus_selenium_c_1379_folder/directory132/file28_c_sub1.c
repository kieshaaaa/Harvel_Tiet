#include <stdio.h>

int main() {
    char a, result;

    printf("Enter a character value (a): ");
    scanf(" %c", &a);

    result = ~a;

    printf("The result is %d\n", result);

    return 0;
}