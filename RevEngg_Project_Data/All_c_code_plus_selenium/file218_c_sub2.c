#include <stdio.h>

int main() {
    int a, b;
    int mul = 0;
    int loop;

    printf("Enter first number: ");
    scanf("%d", &a);
    printf("Enter second number: ");
    scanf("%d", &b);

    if (b < 0) {
        b = -b;
        a = -a;
    }

    for (loop = 1; loop <= b; loop++) {
        mul += a;
    }

    printf("Multiplication of %d and %d is: %d\n", a, b, mul);

    return 0;
}