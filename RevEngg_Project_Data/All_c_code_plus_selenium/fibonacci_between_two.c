#include <stdio.h>

int main() {
    int lower, upper;
    int fib1 = 0;
    int fib2 = 1;
    int fibNext = 0;

    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    // Handle special case where the lower bound is 0 or 1
    if (lower == 0) {
        printf("%d\n", fib1);
        if (upper == 0) return 0;  // If the upper limit is also 0, just print 0 and exit
        printf("%d\n", fib2);
    } else if (lower == 1) {
        printf("%d\n", fib2);
    }

    fibNext = fib1 + fib2;
    while (fibNext <= upper) {
        if (fibNext >= lower) {
            printf("%d\n", fibNext);
        }
        fib1 = fib2;
        fib2 = fibNext;
        fibNext = fib1 + fib2;
    }

    return 0;
}
