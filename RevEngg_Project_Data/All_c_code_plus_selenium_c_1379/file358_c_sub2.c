#include <stdio.h>

int main() {
    int n, prev = 0, curr = 1, next, i;
    printf("Enter the value of n to find the nth Fibonacci number: ");
    scanf("%d", &n);

    if (n < 0) {
        printf("Please enter a non-negative integer.\n");
        return 1;
    }

    for (i = 0; i < n; i++) {
        if (i == 0) {
            next = 0;
        } else if (i == 1) {
            next = curr;
        } else {
            next = prev + curr;
            prev = curr;
            curr = next;
        }
    }

    printf("Fibonacci number is: %d\n", next);
    return 0;
}