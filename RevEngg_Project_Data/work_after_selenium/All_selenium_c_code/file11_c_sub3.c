#include <stdio.h>

int main() {
    int number1, number2, i, j, count = 0, isPrime;
    
    printf("Enter the value of Number1 and Number2: ");
    scanf("%d %d", &number1, &number2);

    if(number1 <= 2) {
        printf("2\n");
        count = 1;
        number1 = 3;
    }

    for(i = number1; i <= number2; i += (i % 2 == 0) ? 1 : 2) { // Skip even numbers after 2
        isPrime = 1; // Assume number is prime until proven otherwise
        for(j = 3; j*j <= i; j += 2) { // Only check odd divisors
            if(i % j == 0) {
                isPrime = 0; // Not a prime number
                break;
            }
        }
        if(isPrime) {
            printf("%d\n", i);
            count++;
        }
    }

    printf("Number of primes between %d & %d = %d\n", number1, number2, count);
    return 0;
}