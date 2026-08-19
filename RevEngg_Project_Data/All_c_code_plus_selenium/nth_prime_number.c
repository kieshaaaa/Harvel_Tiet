#include <stdio.h>

// Function to check if a number is prime
int isPrime(int num) {
    if (num <= 1) return 0; // 0 and 1 are not prime numbers
    for (int i = 2; i * i <= num; i++) {
        if (num % i == 0) return 0; // Not a prime number
    }
    return 1; // Is a prime number
}

int main() {
    int n, count = 0;
    printf("Enter the value of n to find the nth prime number: ");
    scanf("%d", &n);

    int num = 2; // Starting from the first prime number
    int nthPrime = 2; // To store the nth prime number

    while (count < n) {
        if (isPrime(num)) {
            nthPrime = num;
            count++;
        }
        num++;
    }

    printf("The %dth prime number is: %d\n", n, nthPrime);

    return 0;
}
