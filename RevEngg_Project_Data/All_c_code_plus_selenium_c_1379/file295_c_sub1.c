#include <stdio.h>

int main() {
    int number;
    int i = 2;
    unsigned char isPrime = 1; // Assuming the number is prime until proven otherwise

    printf("\nEnter any integer number :: ");
    scanf("%d", &number);

    while (i <= number / 2) {
        if (number % i == 0) {
            isPrime = 0; // Number is not prime
            break;
        }
        i++;
    }

    if (isPrime == 1 && number > 1)
        printf("\nThe Entered Number [ %d ] is a Prime Number.\n", number);
    else
        printf("\nThe Entered Number [ %d ] is not a Prime Number.\n", number);

    return 0;
}