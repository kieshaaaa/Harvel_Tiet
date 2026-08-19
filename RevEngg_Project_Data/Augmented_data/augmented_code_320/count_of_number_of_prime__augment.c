#include <stdio.h>

int main() {
    int num, x, y;
    int isPrime;
    int compositeCount = 0;

    printf("Enter a number: ");
    scanf("%d", &num);

    // Iterate through all numbers from 2 to num
    x = 2;
    while (x <= num) {
        isPrime = 1; // Assume the current number is prime

        // Check if x is divisible by any number other than 1 and itself
        y = 2;
        while (y * y <= x) {
            if (x % y == 0) {
                isPrime = 0; // x is not prime
                break;
            }
            y++;
        }

        // If isPrime is still 1, then x is prime, otherwise it's composite
        if (!isPrime) {
            compositeCount++; // Increment count for a composite number
        }
        x++;
    }

    printf("Number of composite numbers till %d: %d\n", num, compositeCount);

    return 0;
}