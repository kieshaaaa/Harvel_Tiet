#include <stdio.h>

int main() {
    int num;
    int isPositive, isNegative;
    printf("\nEnter a number => ");
    scanf("%d", &num);

    isPositive = num > 0;
    isNegative = num < 0;

    if (isPositive) {
        printf("\n1 is Positive");
    } else if (isNegative) {
        printf("\n-1 is Negative");
    } else {
        printf("\nEntered Number is 0");
    }
    printf("\n");

    return 0;
}