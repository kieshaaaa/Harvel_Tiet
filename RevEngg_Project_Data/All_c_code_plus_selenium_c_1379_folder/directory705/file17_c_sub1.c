#include <stdio.h>

int main() {
    int lower, upper, fib1 = 0, fib2 = 1, fibNext;

    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    for (fibNext = fib1 + fib2; fibNext <= upper; fibNext = fib1 + fib2) {
        if (fibNext >= lower) {
            printf("%d\n", fibNext);
        }
        fib1 = fib2;
        fib2 = fibNext;
    }

    return 0;
}