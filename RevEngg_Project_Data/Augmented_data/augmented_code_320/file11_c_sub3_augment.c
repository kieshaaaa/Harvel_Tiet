#include <stdio.h>

int main() {
    int num1, num2, i, j, count = 0, isPrime;
    
    printf("Enter the value of Number1 and Number2: ");
    scanf("%d %d", &num1, &num2);

    if(num1 <= 2) {
        printf("2\n");
        count = 1;
        num1 = 3;
    }

    i = num1;
    while(i <= num2) { // Skip even numbers after 2
        isPrime = 1; // Assume number is prime until proven otherwise
        j = 3;
        while(j*j <= i) { // Only check odd divisors
            if(i % j == 0) {
                isPrime = 0; // Not a prime number
                break;
            }
            j += 2;
        }
        if(isPrime) {
            printf("%d\n", i);
            count++;
        }
        i += (i % 2 == 0) ? 1 : 2;
    }

    printf("Number of primes between %d & %d = %d\n", num1, num2, count);
    return 0;
}