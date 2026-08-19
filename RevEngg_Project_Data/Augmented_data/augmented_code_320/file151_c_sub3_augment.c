#include <stdio.h>

int main() {
    int num, total = 0, remainder = 0, temp;

    printf("Enter an integer number: ");
    scanf("%d", &num);

    temp = num;
    while (temp != 0) {
        remainder = temp % 10;
        total = total + (remainder * remainder * remainder);
        temp /= 10;
    }

    if (total == num)
        printf("%d is an Armstrong number.\n", num);
    else
        printf("%d is not an Armstrong number.\n", num);

    return 0;
}