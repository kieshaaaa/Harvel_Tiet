#include <stdio.h>

int main() {
    int start, end, i, j, isPrime;

    printf("Enter two numbers(intervals): ");
    scanf("%d %d", &start, &end);

    printf("Prime numbers between %d and %d are: ", start, end);

    for(i = start; i <= end; i++) {
        if (i == 1 || i == 0) continue; // Skip 0 and 1 as they are not prime
        isPrime = 1; // Assume current number is prime

        // Only check for divisors up to sqrt(i) for efficiency
        for(j = 2; j*j <= i; j++) {
            if(i % j == 0) {
                isPrime = 0; // i is not prime
                break;
            }
        }

        if(isPrime == 1) {
            printf("%d ", i);
        }
    }

    printf("\n");
    return 0;
}