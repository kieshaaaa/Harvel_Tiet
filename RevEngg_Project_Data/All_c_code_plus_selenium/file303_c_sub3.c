#include <stdio.h>

int main() {
    int n;
    int factorial = 1;

    printf("Enter an integer: ");
    scanf("%d", &n);

    if (n < 0) {
        printf("Error! Factorial of a negative number doesn't exist.\n");
        return -1; // Using an error code to indicate failure.
    } 

    for (int i = 1; i <= n; ++i) {
        factorial *= i;
    }
    printf("Factorial of %d = %d\n", n, factorial);

    return 0;
}