#include <stdio.h>

int main() {
    int number;
    unsigned char isPrime = 1; // Assuming the number is prime

    printf("\nEnter any integer number :: ");
    scanf("%d", &number);

    if (number == 2) // Explicitly handling the case for 2
        isPrime = 1;
    else if (number < 2 || number % 2 == 0) // Check if number is less than 2 or even
        isPrime = 0;
    else {
        for (int i = 3; i <= number / 2; i += 2) {
            if (number % i == 0) {
                isPrime = 0; // Number is not prime
                break;
            }
        }
    }

    if (isPrime == 1)
        printf("\nThe Entered Number [ %d ] is a Prime Number.\n", number);
    else
        printf("\nThe Entered Number [ %d ] is not a Prime Number.\n", number);

    return 0;
}