#include <stdio.h>

int main() {
    int i = 2;
    int number;
    unsigned char isPrime = 1; // Assume number is prime initially

    printf("Enter an integer number : ");
    scanf("%d", &number);

    while (i <= number / 2) {
        if (number % i == 0) {
            isPrime = 0; // Number is not prime
            break;
        }
        i++;
    }

    if (isPrime)
        printf("\n%d is a prime number.", number);
    else
        printf("\n%d is not a prime number.", number);

    return 0;
}