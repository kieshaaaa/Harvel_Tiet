#include <stdio.h>

int main() {
    int number, sum = 0, rem = 0, tempNumber, n;

    printf("Enter an integer number: ");
    scanf("%d", &number);

    for (tempNumber = number; tempNumber != 0; tempNumber /= 10) {
        rem = tempNumber % 10;
        sum += rem * rem * rem;
    }

    if (sum == number)
        printf("%d is an Armstrong number.\n", number);
    else
        printf("%d is not an Armstrong number.\n", number);

    return 0;
}