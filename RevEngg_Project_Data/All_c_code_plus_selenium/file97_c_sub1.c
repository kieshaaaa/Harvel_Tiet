#include <stdio.h>

int main() {
    int number, tempNumber;
    int digit, totalSum = 0, totalProduct = 1;

    printf("\nEnter any integer number :: ");
    scanf("%d", &number);

    tempNumber = number;

    while(tempNumber != 0) {
        digit = tempNumber % 10;
        totalSum = totalSum + digit;
        totalProduct = totalProduct * digit;
        tempNumber = tempNumber / 10;
    }

    printf("\nSUM of Digits of Number [ %d ] : [ %d ].\n", number, totalSum);
    printf("\nPRODUCT of digits of Number [ %d ] : [ %d ].\n", number, totalProduct);

    return 0;
}