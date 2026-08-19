#include <stdio.h>

int main() {
    int num, isPrime = 1;
    printf("\nEnter A Number to Check Whether It is Prime or Not => ");
    scanf("%d", &num);

    if (num < 2) {
        printf("\n!!! Invalid Input, Please Enter Positive Non-Zero Number greater than 1...");
    } else {
        for (int i = 2; i * i <= num; ++i) {
            if (num % i == 0) {
                isPrime = 0;
                break;
            }
        }
        if (isPrime)
            printf("\n%d is a Prime Number", num);
        else
            printf("\n%d is Not a Prime Number", num);
    }
    printf("\n");
    return 0;
}