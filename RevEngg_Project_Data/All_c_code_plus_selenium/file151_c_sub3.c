#include <stdio.h>

int main() {
    int number, sum = 0, rem = 0, tempNumber;

    printf("Enter an integer number: ");
    scanf("%d", &number);

    tempNumber = number;
    do {
        rem = tempNumber % 10;
        sum = sum + (rem * rem * rem);
        tempNumber /= 10;
    } while (tempNumber != 0);

    if (sum == number)
        printf("%d is an Armstrong number.\n", number);
    else
        printf("%d is not an Armstrong number.\n", number);

    return 0;
}