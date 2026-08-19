#include <stdio.h>

int main() {
    int n;
    printf("Enter the value of n to find the nth Fibonacci number: ");
    scanf("%d", &n);

    if (n < 0) {
        printf("Please enter a non-negative integer.\n");
        return 1;
    }

    if (n == 0) {
        printf("The 0th Fibonacci number is: 0\n");
        return 0;
    }

    int fib[n+1]; // Allocate an array of size n+1
    fib[0] = 0; // F_0
    fib[1] = 1; // F_1

    for (int i = 2; i <= n; i++) {
        fib[i] = fib[i-1] + fib[i-2]; // Compute Fibonacci number
    }

    printf("Fibonacci number is: %d\n", fib[n]);
    return 0;
}