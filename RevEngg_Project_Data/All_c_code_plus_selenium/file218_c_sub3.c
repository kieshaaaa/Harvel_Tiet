#include <stdio.h>
#include <stdlib.h> // For abs() function

int main() {
    int a, b;
    int mul = 0;
    int loop;
    int positiveResult = 1;

    printf("Enter first number: ");
    scanf("%d", &a);
    printf("Enter second number: ");
    scanf("%d", &b);

    if (a < 0) {
        a = abs(a);
        positiveResult = !positiveResult;
    }
    if (b < 0) {
        b = abs(b);
        positiveResult = !positiveResult;
    }

    for (loop = 1; loop <= b; loop++) {
        mul += a;
    }

    if (!positiveResult) {
        mul = -mul;
    }

    printf("Multiplication of %d and %d is: %d\n", a, b, mul);

    return 0;
}