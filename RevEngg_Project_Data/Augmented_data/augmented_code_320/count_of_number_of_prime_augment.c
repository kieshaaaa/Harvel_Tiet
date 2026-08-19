#include <stdio.h>

// Function to check if a number is prime
// Returns 1 if prime, 0 if not
int isPrimeNumber(int num) {
    int k;
    if (num <= 1) return 0; // 0 and 1 are not prime numbers
    k = 2;
    while (k * k <= num) {
        if (num % k == 0) return 0;
        k++;
    }
    return 1;
}

int main() {
    int n, count = 0;
    int i;
    printf("Enter a number: ");
    scanf("%d", &n);

    // Check for composite numbers up to n
    i = 2;
    while (i <= n) {
        // If a number is not prime, then it's composite (except for 1)
        if (!isPrimeNumber(i)) {
            count++;
        }
        i++;
    }

    printf("Number of composite numbers till %d: %d\n", n, count);

    return 0;
}