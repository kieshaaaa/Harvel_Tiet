#include <stdio.h>

int main() {
    int a, b, mul = 0, count = 0;

    printf("Enter first number:: ");
    scanf("%d", &a);
    printf("\nEnter second number:: ");
    scanf("%d", &b);

    while (count < b) {
        mul += a;
        count++;
    }

    printf("\nMultiplication of %d and %d is: %d\n", a, b, mul);
    return 0;
}