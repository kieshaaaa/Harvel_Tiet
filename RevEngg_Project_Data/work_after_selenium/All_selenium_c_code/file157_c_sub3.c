#include <stdio.h>

int main() {
    int target, primeCount = 0, currentNumber = 2, latestPrime = 2, divisor, primeFlag;

    printf("Enter the value of n to find the nth prime number: ");
    scanf("%d", &target);

    while (primeCount < target) {
        primeFlag = 1; // Assume the number is prime
        for (divisor = 2; divisor <= currentNumber / 2; divisor++) {
            if (currentNumber % divisor == 0) {
                primeFlag = 0; // Found a divisor, not prime
                break;
            }
        }
        if (primeFlag) {
            latestPrime = currentNumber; // Update the latest prime found
            primeCount++;
        }
        currentNumber++;
    }

    printf("The %dth prime number is: %d\n", target, latestPrime);

    return 0;
}