#include <stdio.h>

int main() {
    int number;
    unsigned char isPrime = 1; // Assume number is prime

    printf("Enter an integer number : ");
    scanf("%d", &number);

    if (number == 2) {
        isPrime = 1;
    } else if (number < 2 || number % 2 == 0) {
        isPrime = 0;
    } else {
        for (int i = 3; i <= number / 2; i += 2) {
            if (number % i == 0) {
                isPrime = 0;
                break;
            }
        }
    }

    if (isPrime)
        printf("\n%d is a prime number.", number);
    else
        printf("\n%d is not a prime number.", number);

    return 0;
}