#include <stdio.h>

int main() {
    int d;
    int orResult;

    printf("Enter an integer (d): ");
    scanf("%d", &d);

    orResult = d | 2; // Performing a bitwise OR with 2

    printf("OR Operation Result: %d \n", orResult);

    return 0;
}