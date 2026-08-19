#include <stdio.h>

int main() {
    int lower, upper;
    int fib1 = 0, fib2 = 1, fibNext = fib1 + fib2;

    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    if (lower <= 0) {
        printf("%d\n", fib1);
        if (upper == 0) return 0;
    }
    if (lower <= 1 && upper != 0) printf("%d\n", fib2);

    do {
        if (fibNext >= lower) {
            printf("%d\n", fibNext);
        }
        fib1 = fib2;
        fib2 = fibNext;
        fibNext = fib1 + fib2;
    } while (fibNext <= upper);

    return 0;
}