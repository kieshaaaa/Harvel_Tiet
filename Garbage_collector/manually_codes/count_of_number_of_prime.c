#include <stdio.h>

// Function to check if a number is prime
// Returns 1 if prime, 0 if not
int isPrime(int n) {
    int j;
    if (n <= 1) return 0; // 0 and 1 are not prime numbers
    for (j = 2; j*j <= n; j++) {
        if (n % j == 0) return 0;
    }
    return 1;
}

int main() {
    int n, count = 0;
    int i;
    printf("Enter a number: ");
    scanf("%d", &n);

    // Check for composite numbers up to n
    for (i = 2; i <= n; i++) {
        // If a number is not prime, then it's composite (except for 1)
        if (!isPrime(i)) {
            count++;
        }
    }

    printf("Number of composite numbers till %d: %d\n", n, count);

    return 0;
}
