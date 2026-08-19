#include <stdio.h>

int main() {
    int start, end, i, j, primeFlag, primeCount = 0;

    printf("Enter two numbers (intervals): ");
    scanf("%d %d", &start, &end);

    printf("Prime numbers between %d and %d are: ", start, end);

    for(i = start; i <= end; i++) {
        if (i <= 1) continue; // 0 and 1 are not prime numbers

        primeFlag = 1; // Assuming i is prime
        for(j = 2; j*j <= i; j++) {
            if(i % j == 0) {
                primeFlag = 0; // i is not prime
                break;
            }
        }

        if(primeFlag == 1) {
            printf("%d ", i);
            primeCount++;
        }
    }

    printf("\nTotal: %d prime numbers found.\n", primeCount);
    return 0;
}