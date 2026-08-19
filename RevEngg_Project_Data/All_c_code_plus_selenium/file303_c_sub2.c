#include <stdio.h>

int main() {
    int n;
    int factorial = 1;

    printf("Enter an integer: ");
    scanf("%d", &n);

    if (n < 0) {
        printf("Error! Factorial of a negative number doesn't exist.\n");
    } else {
        int i = 1;
        do {
            factorial *= i;
            i++;
        } while (i <= n);
        printf("Factorial of %d = %d\n", n, factorial);
    }

    return 0;
}