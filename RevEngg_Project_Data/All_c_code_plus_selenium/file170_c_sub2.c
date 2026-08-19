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
    num = lower;
    while (num <= upper) {
        if (num > 1) {
            isPrime = true;
            i = 2;
            while (i * i <= num) {
                if (num % i == 0) {
                    isPrime = false;
                    break;
                }
                i++;
            }
            if (isPrime) {
                printf("%d\n", num);
            }
        }
        num++;
    }

    return 0;
}