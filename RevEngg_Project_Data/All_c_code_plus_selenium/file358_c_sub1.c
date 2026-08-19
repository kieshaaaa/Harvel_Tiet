#include <stdio.h>

int main() {
    int n, i = 2, prev = 0, curr = 1, next;
    printf("Enter the value of n to find the nth Fibonacci number: ");
    scanf("%d", &n);

    if (n < 0) {
        printf("Please enter a non-negative integer.\n");
        return 1;
    }

    if (n == 0) {
        printf("The 0th Fibonacci number is: 0\n");
        return 0;
    } else if (n == 1) {
        printf("The 1st Fibonacci number is: 1\n");
        return 0;
    }

    while (i <= n) {
        next = prev + curr;
        prev = curr;
        curr = next;
        i++;
    }

    printf("Fibonacci number is: %d\n", curr);
    return 0;
}