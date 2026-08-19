#include <stdio.h>

int main() {
    int n, num = 2, nthPrime, count = 0, i;

    printf("Enter the value of n to find the nth prime number: ");
    scanf("%d", &n);

    while (count < n) {
        for (i = 2; i <= num / 2; i++) {
            if (num % i == 0) {
                break;
            }
        }
        if (i > num / 2) {
            nthPrime = num;
            count++;
        }
        num++;
    }

    printf("The %dth prime number is: %d\n", n, nthPrime);

    return 0;
}