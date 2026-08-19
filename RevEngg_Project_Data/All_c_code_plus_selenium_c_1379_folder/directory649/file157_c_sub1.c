#include <stdio.h>

int main() {
    int n, count = 0, num = 2, nthPrime = 2, i, isPrime;

    printf("Enter the value of n to find the nth prime number: ");
    scanf("%d", &n);

    while (count < n) {
        isPrime = 1;
        for (i = 2; i * i <= num; i++) {
            if (num % i == 0) {
                isPrime = 0;
                break;
            }
        }
        if (isPrime) {
            nthPrime = num;
            count++;
        }
        num++;
    }

    printf("The %dth prime number is: %d\n", n, nthPrime);

    return 0;
}