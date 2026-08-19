#include <stdio.h>
#include <stdbool.h>

int main() {
    int lower, upper, num, i;
    bool isPrime;

    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    printf("Prime numbers between %d and %d are:\n", lower, upper);
    for (num = lower; num <= upper; num++) {
        if (num <= 1) continue;
        isPrime = true;
        for (i = 2; i * i <= num; i++) {
            if (num % i == 0) {
                isPrime = false;
                break;
            }
        }
        if (isPrime) {
            printf("%d\n", num);
        }
    }

    return 0;
}