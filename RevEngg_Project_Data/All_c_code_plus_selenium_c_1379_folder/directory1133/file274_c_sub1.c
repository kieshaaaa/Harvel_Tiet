#include <stdio.h>

int main() {
    int b;
    int shiftResult;

    printf("Enter an integer (b): ");
    scanf("%d", &b);

    shiftResult = b >> 2; // Performing a right shift operation

    printf("Shifted Result: %d \n", shiftResult);

    return 0;
}