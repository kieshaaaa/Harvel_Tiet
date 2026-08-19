#include <stdio.h>

int main() {
    int lower, upper, num, reversed, digit, temp;

    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    for (num = lower; num <= upper; num++) {
        temp = num;
        reversed = 0;
        while (temp > 0) {
            digit = temp % 10;
            reversed = reversed * 10 + digit;
            temp /= 10;
        }
        if (num == reversed) {
            printf("%d\n", num);
        }
    }

    return 0;
}