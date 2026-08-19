#include <stdio.h>

int main() {
    int n;
    int i;
    printf("Enter the value of n to find the nth Fibonacci number: ");
    scanf("%d", &n);

    if (n < 0) {
        printf("Please enter a non-negative integer.\n");
        return 1; // Exit with an error code
    }

    // Handling the first two Fibonacci numbers separately
    if (n == 0) {
        printf("The 0th Fibonacci number is: 0\n");
        return 0;
    } else if (n == 1) {
        printf("The 1st Fibonacci number is: 1\n");
        return 0;
    }

    int prev = 0; // F_0
    int curr = 1; // F_1
    int next;

    for (i = 2; i <= n; i++) {
        next = prev + curr; // F_n = F_{n-1} + F_{n-2}
        prev = curr; // Update F_{n-2}
        curr = next; // Update F_{n-1}
    }

    printf(" Fibonacci number is: %d \n", curr);

    return 0;
}
