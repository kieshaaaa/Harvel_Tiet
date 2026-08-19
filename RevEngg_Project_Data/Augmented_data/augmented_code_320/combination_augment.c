#include <stdio.h>

int main() {
    int n, r, i;
    int factorial_n;
    int combination;
    int factorial_r;
    int factorial_nr;
    printf("Enter total number of items (n): ");
    scanf("%d", &n);
    printf("Enter number of items to be chosen (r): ");
    scanf("%d", &r);

    factorial_n = 1;
    factorial_r = 1;
    factorial_nr = 1;

    i = 1;
    // Calculate factorial of n
    while (i <= n) {
        factorial_n *= i;
        i++;
    }

    i = 1;
    // Calculate factorial of r
    while (i <= r) {
        factorial_r *= i;
        i++;
    }

    i = 1;
    // Calculate factorial of n-r
    while (i <= (n - r)) {
        factorial_nr *= i;
        i++;
    }

    // Calculate and display nCr
    combination = factorial_n / (factorial_r * factorial_nr);
    printf("Combination (nCr) of %d items chosen %d at a time is: %d\n", n, r, combination);

    return 0;
}