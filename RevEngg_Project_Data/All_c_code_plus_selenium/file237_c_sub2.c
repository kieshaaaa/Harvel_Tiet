#include <stdio.h>
#include <math.h>

int main() {
    int number;
    unsigned char isPrime = 1;
    float limit;

    printf("Enter an integer number : ");
    scanf("%d", &number);

    limit = sqrt(number);

    for (int i = 2; i <= limit; i++) {
        if (number % i == 0) {
            isPrime = 0;
            break;
        }
    }

    if (isPrime && number > 1)
        printf("\n%d is a prime number.", number);
    else
        printf("\n%d is not a prime number.", number);

    return 0;
}