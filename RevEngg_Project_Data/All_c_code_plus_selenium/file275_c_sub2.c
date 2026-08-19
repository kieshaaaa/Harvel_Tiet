#include <stdio.h>

int main() {
    int n;
    int sum = 0;
    int counter = 1;
    printf("Enter a positive integer (n) to find the nth triangular number: ");
    scanf("%d", &n);

    if (n <= 0) {
        printf("Please enter a positive integer.\n");
        return 1;
    }

    while (counter <= n) {
        sum += counter;
        counter++;
    }

    printf("The %dth triangular number is: %d\n", n, sum);

    return 0;
}