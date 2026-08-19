#include <stdio.h>

int main() {
    int a, b;

    printf("Enter first number: ");
    scanf("%d", &a);
    printf("Enter second number: ");
    scanf("%d", &b);

    printf("Before swapping: a = %d, b = %d\n", a, b);

    if (b != 0 && a != 0) {
        // Swapping logic using multiplication and division
        a = a * b;
        b = a / b;
        a = a / b;
    }

    printf("After swapping: a = %d, b = %d\n", a, b);

    return 0;
}