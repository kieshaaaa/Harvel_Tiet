#include <stdio.h>

int main() {
    int num, sum = 0, remainder, temp, pwr;

    printf("Enter an integer number: ");
    scanf("%d", &num);

    temp = num;
    for(; temp != 0; temp /= 10) {
        remainder = temp % 10;
        pwr = remainder * remainder * remainder;
        sum += pwr;
    }

    if (sum == num)
        printf("%d is an Armstrong number.\n", num);
    else
        printf("%d is not an Armstrong number.\n", num);

    return 0;
}