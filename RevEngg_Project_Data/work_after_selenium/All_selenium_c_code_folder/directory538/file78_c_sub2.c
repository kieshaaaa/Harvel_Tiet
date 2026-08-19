#include <stdio.h>

int main() {
    int start, end, i, j, isPrime, count = 0;

    printf("Enter two numbers(intervals): ");
    scanf("%d %d", &start, &end);

    printf("Prime numbers between %d and %d are: ", start, end);

    if (start <= 2) {
        printf("2 ");
        start = 3;
        count++;
    }
    if (start % 2 == 0) start++;

    for(i = start; i <= end; i += 2) {
        isPrime = 1; // Assume i is prime

        for(j = 3; j*j <= i; j += 2) {
            if(i % j == 0) {
                isPrime = 0;
                break;
            }
        }

        if(isPrime == 1) {
            printf("%d ", i);
            count++;
        }
    }

    printf("\nTotal: %d primes found.\n", count);
    return 0;
}