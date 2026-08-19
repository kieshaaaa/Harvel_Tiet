#include <stdio.h>
#include <math.h>

int main() {
    int number;
    unsigned char isPrime = 1; // Assuming the number is prime

    printf("\nEnter any integer number :: ");
    scanf("%d", &number);

    for (int i = 2; i <= sqrt(number); i++) {
        if (number % i == 0) {
            isPrime = 0; // Number is not prime
            break;
        }
    }

    if (isPrime == 1 && number > 1)
        printf("\nThe Entered Number [ %d ] is a Prime Number.\n", number);
    else
        printf("\nThe Entered Number [ %d ] is not a Prime Number.\n", number);

    return 0;
}