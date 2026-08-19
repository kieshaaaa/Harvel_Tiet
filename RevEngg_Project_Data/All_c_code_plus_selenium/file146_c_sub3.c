#include <stdio.h>

int main() {
    int num, prime = 1;
    printf("\nEnter A Number to Check Whether It is Prime or Not => ");
    scanf("%d", &num);

    if (num < 2) {
        printf("\n!!! Invalid Input, Please Enter Positive Non-Zero Number greater than 1...");
    } else if (num != 2 && num % 2 == 0) {
        printf("\n%d is Not a Prime Number", num);
    } else {
        for (int i = 3; i * i <= num; i += 2) {
            if (num % i == 0) {
                prime = 0;
                break;
            }
        }
        if (prime)
            printf("\n%d is a Prime Number", num);
        else
            printf("\n%d is Not a Prime Number", num);
    }
    printf("\n");
    return 0;
}