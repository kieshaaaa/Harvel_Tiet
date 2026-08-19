#include <stdio.h>

int main() {
    int a, b, mul = 0, i, sign = 1;

    printf("Enter first number:: ");
    scanf("%d", &a);
    printf("\nEnter second number:: ");
    scanf("%d", &b);

    if (a < 0 && b < 0) {
        a = -a;
        b = -b;
    } else if (a < 0 || b < 0) {
        sign = -1;
        if (a < 0) a = -a;
        else b = -b;
    }

    for (i = 0; i < b; i++) {
        mul += a;
    }
    mul *= sign;

    printf("\nMultiplication of entered numbers is: %d\n", mul);
    return 0;
}