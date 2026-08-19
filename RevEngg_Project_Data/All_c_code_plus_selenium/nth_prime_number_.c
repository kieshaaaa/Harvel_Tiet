#include <stdio.h>

int main() {
    int n, count = 0;
    int i;
    printf("Enter the value of n to find the nth prime number: ");
    scanf("%d", &n);

    int num = 2; // Starting from the first prime number
    int nthPrime = 2; // To store the nth prime number

    while (count < n) {
        int isPrime = 1; // Assume num is prime
        for (i = 2; i * i <= num; i++) {
            if (num % i == 0) {
                isPrime = 0; // num is not prime
                break; // No need to check further
            }
        }
        if (isPrime) {
            nthPrime = num; // Update nthPrime with the latest found prime number
            count = count + 1; // Increment the count of prime numbers found
        }
        num = num + 1; // Check the next number
    }

    printf("The prime number is: %d\n", nthPrime);

    return 0;
}
