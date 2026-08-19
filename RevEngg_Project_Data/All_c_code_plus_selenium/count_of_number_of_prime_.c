#include <stdio.h>

int main() {
    int n, i, j;
    int isPrime;
    int count = 0;

    printf("Enter a number: ");
    scanf("%d", &n);

    // Iterate through all numbers from 2 to n
    for (i = 2; i <= n; i++) {
        isPrime = 1; // Assume the current number is prime

        // Check if i is divisible by any number other than 1 and itself
        for (j = 2; j*j <= i; j++) {
            if (i % j == 0) {
                isPrime = 0; // i is not prime
                break;
            }
        }

        // If isPrime is still 1, then i is prime, otherwise it's composite
        if (!isPrime) {
            count++; // Increment count for a composite number
        }
    }

    printf("Number of composite numbers till %d: %d\n", n, count);

    return 0;
}
