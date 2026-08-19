#include <stdio.h>
#include <math.h>

int main() {
    int num, flag = 1;
    printf("\nEnter A Number to Check Whether It is Prime or Not => ");
    scanf("%d", &num);

    if (num < 2) {
        printf("\n!!! Invalid Input, Please Enter Positive Non-Zero Number greater than 1...");
    } else {
        for (int i = 2; i <= (int)sqrt((float)num); ++i) {
            if (num % i == 0) {
                flag = 0;
                break;
            }
        }
        if (flag == 1)
            printf("\n%d is a Prime Number", num);
        else
            printf("\n%d is Not a Prime Number", num);
    }
    printf("\n");
    return 0;
}