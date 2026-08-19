#include <stdio.h>

int main() {
    int num, sum = 0, remainder = 0, tempNum, n;

    printf("Enter an integer number: ");
    scanf("%d", &num);

    tempNum = num;
    while (tempNum != 0) {
        remainder = tempNum % 10;
        sum += remainder * remainder * remainder;
        tempNum /= 10;
    }

    if (sum == num)
        printf("%d is an Armstrong number.\n", num);
    else
        printf("%d is not an Armstrong number.\n", num);

    return 0;
}