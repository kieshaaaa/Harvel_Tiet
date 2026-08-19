#include <stdio.h>

int main() {
    int lower, upper;
    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    for (int num = lower; num <= upper; num++) {
        int temp = num, reversed = 0, digit;
        for (; temp > 0; temp /= 10) {
            digit = temp % 10;
            reversed = reversed * 10 + digit;
        }
        if (num == reversed) {
            printf("%d\n", num);
        }
    }

    return 0;
}