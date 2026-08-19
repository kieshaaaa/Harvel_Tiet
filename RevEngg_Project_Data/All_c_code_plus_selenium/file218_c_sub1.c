#include <stdio.h>

int main() {
    int a, b;
    int mul = 0;
    int count = 0;

    printf("Enter first number: ");
    scanf("%d", &a);
    printf("Enter second number: ");
    scanf("%d", &b);

    while (count < b) {
        mul += a;
        count++;
    }

    printf("Multiplication of %d and %d is: %d\n", a, b, mul);

    return 0;
}