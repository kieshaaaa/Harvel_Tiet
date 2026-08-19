#include <stdio.h>

int main() {
    int a, b, mul = 0, i;
    int result;

    printf("Enter first number:: ");
    result = scanf("%d", &a);
    if (result != 1) {
        printf("Invalid input!\n");
        return 1; // Early exit due to invalid input
    }

    printf("\nEnter second number:: ");
    result = scanf("%d", &b);
    if (result != 1) {
        printf("Invalid input!\n");
        return 1; // Early exit due to invalid input
    }

    for (i = 0; i < b; i++) {
        mul += a;
    }

    printf("\nMultiplication of %d and %d is: %d\n", a, b, mul);
    return 0;
}