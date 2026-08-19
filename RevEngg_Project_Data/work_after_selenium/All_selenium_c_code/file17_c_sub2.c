#include <stdio.h>

int main() {
    int lower, upper, fib1 = 0, fib2 = 1;

    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    if (lower <= 0) printf("%d\n", fib1);
    if (lower <= 1 && upper >= 1) printf("%d\n", fib2);

    for (int fibNext = fib1 + fib2; fibNext <= upper; fib1 = fib2, fib2 = fibNext, fibNext = fib1 + fib2) {
        if (fibNext >= lower) {
            printf("%d\n", fibNext);
        }
    }

    return 0;
}