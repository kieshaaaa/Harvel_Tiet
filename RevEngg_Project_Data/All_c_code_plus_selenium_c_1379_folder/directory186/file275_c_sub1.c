#include <stdio.h>

int main() {
    int n, i;
    int sum = 0;
    printf("Enter a positive integer (n) to find the nth triangular number: ");
    scanf("%d", &n);

    if (n <= 0) {
        printf("Please enter a positive integer.\n");
        return 1;
    }

    for (i = 1; i <= n; i++) {
        sum += i;
    }

    printf("The %dth triangular number is: %d\n", n, sum);

    return 0;
}