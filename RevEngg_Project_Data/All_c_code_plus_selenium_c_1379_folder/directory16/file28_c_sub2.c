#include <stdio.h>

int main() {
    int a, result;

    printf("Enter an integer (a): ");
    scanf("%d", &a);

    result = ~a;
    result = result & 0xFF; // Modifies the result by applying a mask

    printf("The result is %d\n", result);

    return 0;
}