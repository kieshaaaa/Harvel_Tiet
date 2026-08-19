#include <stdio.h>
#include <stdbool.h>

// Function to check if a number is prime
bool isPrime(int num) {
    if (num <= 1) {
        return false;
    }
    for (int i = 2; i * i <= num; i++) {
        if (num % i == 0) {
            return false;
        }
    }
    return true;
}

int main() {
    int lower, upper;
    int num;
    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    printf("Prime numbers between %d and %d are:\n", lower, upper);
    for (num = lower; num <= upper; num++) {
        if (isPrime(num)) {
            printf("%d\n", num);
        }
    }

    return 0;
}
