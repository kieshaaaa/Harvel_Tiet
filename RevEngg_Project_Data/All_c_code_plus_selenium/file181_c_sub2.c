#include <stdio.h>

int main() {
    int n, pentagonalNumber;

    do {
        printf("Enter a positive integer: ");
        scanf("%d", &n);
        if (n <= 0) {
            printf("Invalid input. ");
        }
    } while (n <= 0);

    pentagonalNumber = (3 * n * n - n) / 2;

    printf("The %dth pentagonal number is: ", n);
    printf("%d\n", pentagonalNumber);

    return 0;
}