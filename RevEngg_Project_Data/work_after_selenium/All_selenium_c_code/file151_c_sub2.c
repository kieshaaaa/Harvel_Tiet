#include <stdio.h>

int main() {
    int number, sum = 0, rem = 0, tempNumber, power;

    printf("Enter an integer number: ");
    scanf("%d", &number);

    tempNumber = number;
    while (tempNumber != 0) {
        rem = tempNumber % 10;
        power = rem * rem * rem;
        sum += power;
        tempNumber /= 10;
    }

    if (sum == number)
        printf("%d is an Armstrong number.\n", number);
    else
        printf("%d is not an Armstrong number.\n", number);

    return 0;
}